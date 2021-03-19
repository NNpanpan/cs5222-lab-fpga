#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void mmult_hw (AXI_VAL in_stream[IS_SIZE], AXI_VAL out_stream[OS_SIZE])
{
#pragma HLS INTERFACE s_axilite port=return     bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=in_stream
#pragma HLS INTERFACE axis      port=out_stream

	// Assertions (to avoid out of array bound writes)
	assert(BATCH%TILING==0);
	assert(FEAT%W_WIDTH_RATIO==0);
	assert(FEAT%IN_WIDTH_RATIO==0);
	assert((BATCH*CLASSES)%OUT_WIDTH_RATIO==0);

	// Hardware memory buffers
	out_T offset_buf[CLASSES];
	w_T weight_buf[CLASSES][FEAT];
	in_T in_buf[TILING][FEAT];
	out_T out_buf[TILING][CLASSES];

	// Input and output AXI stream indices
	int is_idx = 0;
	int os_idx = 0;
	
	// Mask
	// Last 32, 8, 8 bits
	axi_T mask_lsb_32 = ((axi_T) -1) >> 32;
	axi_T mask_lsb_8 = ((axi_T) -1) >> 56;
	
	#pragma HLS ARRAY_PARTITION variable=in_buf block factor=32 dim=2
	#pragma HLS ARRAY_PARTITION variable=weight_buf block factor=32 dim=2

	// Stream in offset vector
	LOAD_OFF_1: for (int i = 0; i < CLASSES; i+=OUT_WIDTH_RATIO) {
		#pragma HLS PIPELINE II=1
		
		axi_T raw = pop_stream(in_stream[is_idx++]);
		
		offset_buf[i+1] = raw >> OUT_WIDTH;
		offset_buf[i+0] = raw & mask_lsb_32;
	}

	// Stream in weight matrix
	LOAD_W_1: for (int i = 0; i < CLASSES; i++) {
		LOAD_W_2: for (int j = 0; j < FEAT; j+=W_WIDTH_RATIO) {
			#pragma HLS PIPELINE II=1
			
			// Pop AXI data packet
			axi_T raw = pop_stream(in_stream[is_idx++]);
			
			for (int w = 0; w < W_WIDTH; w++) {
				int shift = w * W_WIDTH;
				weight_buf[i][j+w] = (raw >> shift) & mask_lsb_8;
			}
			
			/*
			weight_buf[i][j+7] = raw >> 56;
			weight_buf[i][j+6] = (raw >> 48) & mask_lsb_8;
			weight_buf[i][j+5] = (raw >> 40) & mask_lsb_8;
			weight_buf[i][j+4] = (raw >> 32) & mask_lsb_8;
			weight_buf[i][j+3] = (raw >> 24) & mask_lsb_8;
			weight_buf[i][j+2] = (raw >> 16) & mask_lsb_8;
			weight_buf[i][j+1] = (raw >> 8) & mask_lsb_8;
			weight_buf[i][j+0] = raw & mask_lsb_8;
			*/
		}
	}

	// Iterate over tiles
	LT: for (int t = 0; t < BATCH; t+=TILING) {

		// Stream in input tile
		LOAD_I_1: for (int i = 0; i < TILING; i++) {
			LOAD_I_2: for (int j = 0; j < FEAT; j+=IN_WIDTH_RATIO) {
				#pragma HLS PIPELINE II=1
				
				// Pop AXI data packet
				axi_T raw = pop_stream(in_stream[is_idx++]);
			
				for (int w = 0; w < IN_WIDTH; w++) {
					int shift = w * IN_WIDTH;
					in_buf[i][j+w] = (raw >> shift) & mask_lsb_8;
				}
				/*
				in_buf[i][j+7] = raw >> 56;
				in_buf[i][j+6] = (raw >> 48) & mask_lsb_8;
				in_buf[i][j+5] = (raw >> 40) & mask_lsb_8;
				in_buf[i][j+4] = (raw >> 32) & mask_lsb_8;
				in_buf[i][j+3] = (raw >> 24) & mask_lsb_8;
				in_buf[i][j+2] = (raw >> 16) & mask_lsb_8;
				in_buf[i][j+1] = (raw >> 8) & mask_lsb_8;
				in_buf[i][j+0] = raw & mask_lsb_8;
				*/
			}
		}

		// Perform matrix multiplication
		L1: for (int i = 0; i < TILING; i++) {
			// Iterate over output classes
			L2: for (int j = 0; j < CLASSES; j++) {
				#pragma HLS PIPELINE II=1
				
				// Perform the dot product
				out_T tmp = offset_buf[j];
				L3: for(int k = 0; k < FEAT; k++) {
					out_T mult = in_buf[i][k] * weight_buf[j][k];
					tmp += mult;
				}
				out_buf[i][j] = tmp;
			}
		}

		// Stream out output matrix
		STORE_O_1: for (int i = 0; i < TILING; i++) {
			STORE_O_2: for (int j = 0; j < CLASSES; j+=OUT_WIDTH_RATIO) {
				#pragma HLS PIPELINE II=1
				
				// Push output element into AXI stream
				axi_T out_packet = (axi_T) out_buf[i][j+1] << OUT_WIDTH;
				out_packet += out_buf[i][j+0] & mask_lsb_32;
				
				out_stream[os_idx++] = push_stream(out_packet, os_idx == (OS_SIZE));
			}
		}
	}
}


// --------------------------------------------------------
// functions to insert and extract elements from an axi stream
// includes conversion to correct data type
axi_T pop_stream(AXI_VAL const &e)
{
#pragma HLS INLINE

	axi_T ret = e.data;

	volatile ap_uint<sizeof(axi_T)> strb = e.strb;
	volatile ap_uint<sizeof(axi_T)> keep = e.keep;
	volatile ap_uint<AXI_U> user = e.user;
	volatile ap_uint<1> last = e.last;
	volatile ap_uint<AXI_TI> id = e.id;
	volatile ap_uint<AXI_TD> dest = e.dest;

	return ret;
}

AXI_VAL push_stream(axi_T const &v, bool last = false)
{
#pragma HLS INLINE

	AXI_VAL e;

	e.data = v;
	e.strb = (1<<sizeof(axi_T))-1;
	e.keep = (1<<sizeof(axi_T))-1;
	e.user = 0;
	e.last = last ? 1 : 0;
	e.id = 0;
	e.dest = 0;
	return e;
}


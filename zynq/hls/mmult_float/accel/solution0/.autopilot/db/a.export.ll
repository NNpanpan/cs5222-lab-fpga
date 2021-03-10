; ModuleID = '/home/nhat/Desktop/code/cs5222-lab-fpga/zynq/hls/mmult_float/accel/solution0/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmult_hw_str = internal unnamed_addr constant [9 x i8] c"mmult_hw\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@L1_L2_str = internal unnamed_addr constant [6 x i8] c"L1_L2\00"
@p_str9 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@p_str8 = private unnamed_addr constant [9 x i8] c"LOAD_W_2\00", align 1
@p_str7 = private unnamed_addr constant [9 x i8] c"LOAD_W_1\00", align 1
@p_str6 = private unnamed_addr constant [11 x i8] c"LOAD_OFF_1\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str18 = private unnamed_addr constant [10 x i8] c"STORE_O_2\00", align 1
@p_str17 = private unnamed_addr constant [10 x i8] c"STORE_O_1\00", align 1
@p_str15 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@p_str13 = private unnamed_addr constant [9 x i8] c"LOAD_I_2\00", align 1
@p_str12 = private unnamed_addr constant [9 x i8] c"LOAD_I_1\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @mmult_hw(i64* %in_stream_data_V, i8* %in_stream_keep_V, i8* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V, i64* %out_stream_data_V, i8* %out_stream_keep_V, i8* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %in_stream_data_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_stream_keep_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_stream_strb_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_user_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_stream_last_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_id_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_dest_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %out_stream_data_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_stream_keep_V), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_stream_strb_V), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_user_V), !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_stream_last_V), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_id_V), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_dest_V), !map !105
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @mmult_hw_str) nounwind
  %offset_buf = alloca [10 x float], align 16
  %weight_buf_0 = alloca [320 x float], align 4
  %weight_buf_1 = alloca [320 x float], align 4
  %weight_buf_2 = alloca [320 x float], align 4
  %weight_buf_3 = alloca [320 x float], align 4
  %weight_buf_4 = alloca [320 x float], align 4
  %weight_buf_5 = alloca [320 x float], align 4
  %weight_buf_6 = alloca [320 x float], align 4
  %weight_buf_7 = alloca [320 x float], align 4
  %in_buf_0 = alloca [4096 x float], align 4
  %in_buf_1 = alloca [4096 x float], align 4
  %in_buf_2 = alloca [4096 x float], align 4
  %in_buf_3 = alloca [4096 x float], align 4
  %in_buf_4 = alloca [4096 x float], align 4
  %in_buf_5 = alloca [4096 x float], align 4
  %in_buf_6 = alloca [4096 x float], align 4
  %in_buf_7 = alloca [4096 x float], align 4
  %out_buf = alloca [1280 x float], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [12 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %in_stream_data_V, i8* %in_stream_keep_V, i8* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* %out_stream_data_V, i8* %out_stream_keep_V, i8* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %is_idx = phi i3 [ 0, %0 ], [ %tmp_2, %2 ]
  %exitcond5 = icmp eq i3 %is_idx, -3
  %tmp_2 = add i3 %is_idx, 1
  br i1 %exitcond5, label %.preheader17.preheader, label %2

.preheader17.preheader:                           ; preds = %1
  br label %.preheader17

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str6) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_7 = call { i64, i8, i8, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64* %in_stream_data_V, i8* %in_stream_keep_V, i8* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V)
  %ret = extractvalue { i64, i8, i8, i4, i1, i5, i5 } %empty_7, 0
  %tmp_5 = trunc i64 %ret to i32
  %bitcast1 = bitcast i32 %tmp_5 to float
  %tmp_4 = zext i4 %i to i64
  %offset_buf_addr = getelementptr inbounds [10 x float]* %offset_buf, i64 0, i64 %tmp_4
  store float %bitcast1, float* %offset_buf_addr, align 8
  %tmp_6 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret, i32 32, i32 63)
  %tmp_7 = bitcast i32 %tmp_6 to float
  %tmp_8 = or i4 %i, 1
  %tmp_9 = zext i4 %tmp_8 to i64
  %offset_buf_addr_1 = getelementptr inbounds [10 x float]* %offset_buf, i64 0, i64 %tmp_9
  store float %tmp_7, float* %offset_buf_addr_1, align 4
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str6, i32 %tmp_3)
  %i_1 = add i4 2, %i
  br label %1

.preheader17:                                     ; preds = %.preheader17.preheader, %7
  %indvars_iv1 = phi i11 [ %indvars_iv_next1, %7 ], [ 133, %.preheader17.preheader ]
  %i1 = phi i4 [ %i_2, %7 ], [ 0, %.preheader17.preheader ]
  %is_idx_1 = phi i11 [ %tmp_s, %7 ], [ 5, %.preheader17.preheader ]
  %exitcond6 = icmp eq i4 %i1, -6
  %i_2 = add i4 %i1, 1
  br i1 %exitcond6, label %.preheader16.preheader, label %3

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

; <label>:3                                       ; preds = %.preheader17
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str7) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str7)
  %tmp_s = add i11 %is_idx_1, 128
  br label %4

; <label>:4                                       ; preds = %6, %3
  %j = phi i9 [ 0, %3 ], [ %j_1, %6 ]
  %is_idx_2 = phi i11 [ %is_idx_1, %3 ], [ %tmp_11, %6 ]
  %exitcond9 = icmp eq i11 %is_idx_2, %indvars_iv1
  br i1 %exitcond9, label %7, label %5

; <label>:5                                       ; preds = %4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str8) nounwind
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_11 = add i11 1, %is_idx_2
  %empty_11 = call { i64, i8, i8, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64* %in_stream_data_V, i8* %in_stream_keep_V, i8* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V)
  %ret_1 = extractvalue { i64, i8, i8, i4, i1, i5, i5 } %empty_11, 0
  %tmp_32 = trunc i64 %ret_1 to i32
  %bitcast2 = bitcast i32 %tmp_32 to float
  %arrayNo_cast_cast = call i4 @_ssdm_op_PartSelect.i4.i9.i32.i32(i9 %j, i32 5, i32 8)
  %tmp_36 = trunc i9 %j to i5
  %tmp_13 = call i9 @_ssdm_op_BitConcatenate.i9.i4.i5(i4 %i1, i5 %tmp_36)
  %tmp_14 = zext i9 %tmp_13 to i64
  %weight_buf_0_addr = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_14
  %weight_buf_1_addr = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_14
  %weight_buf_2_addr = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_14
  %weight_buf_3_addr = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_14
  %weight_buf_4_addr = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_14
  %weight_buf_5_addr = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_14
  %weight_buf_6_addr = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_14
  %weight_buf_7_addr = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_14
  %tmp_15 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret_1, i32 32, i32 63)
  %tmp_16 = bitcast i32 %tmp_15 to float
  %newIndex3 = or i5 %tmp_36, 1
  %tmp_17 = call i9 @_ssdm_op_BitConcatenate.i9.i4.i5(i4 %i1, i5 %newIndex3)
  %tmp_19 = zext i9 %tmp_17 to i64
  %weight_buf_0_addr_1 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_19
  %weight_buf_1_addr_1 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_19
  %weight_buf_2_addr_1 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_19
  %weight_buf_3_addr_1 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_19
  %weight_buf_4_addr_1 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_19
  %weight_buf_5_addr_1 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_19
  %weight_buf_6_addr_1 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_19
  %weight_buf_7_addr_1 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_19
  switch i4 %arrayNo_cast_cast, label %branch31 [
    i4 0, label %branch24
    i4 1, label %branch25
    i4 2, label %branch26
    i4 3, label %branch27
    i4 4, label %branch28
    i4 5, label %branch29
    i4 6, label %branch30
  ]

; <label>:6                                       ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str8, i32 %tmp_12)
  %j_1 = add i9 %j, 2
  br label %4

; <label>:7                                       ; preds = %4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str7, i32 %tmp_1)
  %indvars_iv_next1 = add i11 %indvars_iv1, 128
  br label %.preheader17

.preheader16:                                     ; preds = %.preheader16.preheader, %21
  %t = phi i12 [ %t_1, %21 ], [ 0, %.preheader16.preheader ]
  %os_idx = phi i14 [ %os_idx_3, %21 ], [ 0, %.preheader16.preheader ]
  %is_idx_3 = phi i19 [ %is_idx_4, %21 ], [ 1285, %.preheader16.preheader ]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %t, i32 11)
  br i1 %tmp_22, label %22, label %8

; <label>:8                                       ; preds = %.preheader16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str9) nounwind
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str9)
  %is_idx_4 = add i19 %is_idx_3, 16384
  br label %9

; <label>:9                                       ; preds = %14, %8
  %indvars_iv5_in = phi i19 [ %is_idx_3, %8 ], [ %is_idx_6, %14 ]
  %i2 = phi i8 [ 0, %8 ], [ %i_3, %14 ]
  %exitcond8 = icmp eq i8 %i2, -128
  %i_3 = add i8 %i2, 1
  br i1 %exitcond8, label %.preheader.preheader.preheader, label %10

.preheader.preheader.preheader:                   ; preds = %9
  br label %.preheader.preheader

; <label>:10                                      ; preds = %9
  %is_idx_6 = add i19 %indvars_iv5_in, 128
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str12) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str12)
  br label %11

; <label>:11                                      ; preds = %13, %10
  %j3 = phi i9 [ 0, %10 ], [ %j_2, %13 ]
  %is_idx_5 = phi i19 [ %indvars_iv5_in, %10 ], [ %is_idx_7, %13 ]
  %exitcond7 = icmp eq i19 %is_idx_5, %is_idx_6
  br i1 %exitcond7, label %14, label %12

; <label>:12                                      ; preds = %11
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str13) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %is_idx_7 = add i19 1, %is_idx_5
  %empty_17 = call { i64, i8, i8, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64* %in_stream_data_V, i8* %in_stream_keep_V, i8* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V)
  %ret_2 = extractvalue { i64, i8, i8, i4, i1, i5, i5 } %empty_17, 0
  %tmp_232 = trunc i64 %ret_2 to i32
  %bitcast = bitcast i32 %tmp_232 to float
  %arrayNo1_cast_cast = call i4 @_ssdm_op_PartSelect.i4.i9.i32.i32(i9 %j3, i32 5, i32 8)
  %tmp_242 = trunc i9 %j3 to i5
  %tmp_233 = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %i2, i5 %tmp_242)
  %tmp_234 = zext i13 %tmp_233 to i64
  %in_buf_0_addr = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %tmp_234
  %in_buf_1_addr = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %tmp_234
  %in_buf_2_addr = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %tmp_234
  %in_buf_3_addr = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %tmp_234
  %in_buf_4_addr = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %tmp_234
  %in_buf_5_addr = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %tmp_234
  %in_buf_6_addr = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %tmp_234
  %in_buf_7_addr = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %tmp_234
  %tmp_25 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %ret_2, i32 32, i32 63)
  %tmp_26 = bitcast i32 %tmp_25 to float
  %newIndex = or i5 %tmp_242, 1
  %tmp_235 = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %i2, i5 %newIndex)
  %tmp_236 = zext i13 %tmp_235 to i64
  %in_buf_0_addr_1 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %tmp_236
  %in_buf_1_addr_1 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %tmp_236
  %in_buf_2_addr_1 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %tmp_236
  %in_buf_3_addr_1 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %tmp_236
  %in_buf_4_addr_1 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %tmp_236
  %in_buf_5_addr_1 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %tmp_236
  %in_buf_6_addr_1 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %tmp_236
  %in_buf_7_addr_1 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %tmp_236
  switch i4 %arrayNo1_cast_cast, label %branch15 [
    i4 0, label %branch8
    i4 1, label %branch9
    i4 2, label %branch10
    i4 3, label %branch11
    i4 4, label %branch12
    i4 5, label %branch13
    i4 6, label %branch14
  ]

; <label>:13                                      ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str13, i32 %tmp_23)
  %j_2 = add i9 %j3, 2
  br label %11

; <label>:14                                      ; preds = %11
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str12, i32 %tmp_18)
  br label %9

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader
  %indvar_flatten = phi i11 [ %indvar_flatten_next, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %i4 = phi i8 [ %tmp_21_mid2_v, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %j5 = phi i4 [ %j_4, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %tmp_21 = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %i4, i5 0)
  %tmp_24 = or i13 %tmp_21, 1
  %tmp_29 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_24)
  %tmp_41 = or i13 %tmp_21, 2
  %tmp_42 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_41)
  %tmp_43 = or i13 %tmp_21, 3
  %tmp_44 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_43)
  %tmp_45 = or i13 %tmp_21, 4
  %tmp_46 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_45)
  %tmp_47 = or i13 %tmp_21, 5
  %tmp_48 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_47)
  %tmp_49 = or i13 %tmp_21, 6
  %tmp_50 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_49)
  %tmp_51 = or i13 %tmp_21, 7
  %tmp_52 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_51)
  %tmp_53 = or i13 %tmp_21, 8
  %tmp_54 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_53)
  %tmp_55 = or i13 %tmp_21, 9
  %tmp_56 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_55)
  %tmp_57 = or i13 %tmp_21, 10
  %tmp_58 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_57)
  %tmp_59 = or i13 %tmp_21, 11
  %tmp_60 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_59)
  %tmp_61 = or i13 %tmp_21, 12
  %tmp_62 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_61)
  %tmp_63 = or i13 %tmp_21, 13
  %tmp_64 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_63)
  %tmp_65 = or i13 %tmp_21, 14
  %tmp_66 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_65)
  %tmp_67 = or i13 %tmp_21, 15
  %tmp_68 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_67)
  %tmp_69 = or i13 %tmp_21, 16
  %tmp_70 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_69)
  %tmp_71 = or i13 %tmp_21, 17
  %tmp_72 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_71)
  %tmp_73 = or i13 %tmp_21, 18
  %tmp_74 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_73)
  %tmp_75 = or i13 %tmp_21, 19
  %tmp_76 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_75)
  %tmp_77 = or i13 %tmp_21, 20
  %tmp_78 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_77)
  %tmp_79 = or i13 %tmp_21, 21
  %tmp_80 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_79)
  %tmp_81 = or i13 %tmp_21, 22
  %tmp_82 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_81)
  %tmp_83 = or i13 %tmp_21, 23
  %tmp_84 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_83)
  %tmp_85 = or i13 %tmp_21, 24
  %tmp_86 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_85)
  %tmp_87 = or i13 %tmp_21, 25
  %tmp_88 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_87)
  %tmp_89 = or i13 %tmp_21, 26
  %tmp_90 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_89)
  %tmp_91 = or i13 %tmp_21, 27
  %tmp_92 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_91)
  %tmp_93 = or i13 %tmp_21, 28
  %tmp_94 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_93)
  %tmp_95 = or i13 %tmp_21, 29
  %tmp_96 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_95)
  %tmp_97 = or i13 %tmp_21, 30
  %tmp_98 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_97)
  %tmp_99 = or i13 %tmp_21, 31
  %tmp_100 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_99)
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -768
  %indvar_flatten_next = add i11 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %15, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %i_4 = add i8 %i4, 1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @L1_L2_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %exitcond2 = icmp eq i4 %j5, -6
  %j5_mid2 = select i1 %exitcond2, i4 0, i4 %j5
  %tmp_101 = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %i_4, i5 0)
  %tmp_102 = or i13 %tmp_101, 1
  %tmp_103 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_102)
  %tmp_104 = or i13 %tmp_101, 2
  %tmp_105 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_104)
  %tmp_106 = or i13 %tmp_101, 3
  %tmp_107 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_106)
  %tmp_108 = or i13 %tmp_101, 4
  %tmp_109 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_108)
  %tmp_110 = or i13 %tmp_101, 5
  %tmp_111 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_110)
  %tmp_112 = or i13 %tmp_101, 6
  %tmp_113 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_112)
  %tmp_114 = or i13 %tmp_101, 7
  %tmp_115 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_114)
  %tmp_116 = or i13 %tmp_101, 8
  %tmp_117 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_116)
  %tmp_118 = or i13 %tmp_101, 9
  %tmp_119 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_118)
  %tmp_120 = or i13 %tmp_101, 10
  %tmp_121 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_120)
  %tmp_122 = or i13 %tmp_101, 11
  %tmp_123 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_122)
  %tmp_124 = or i13 %tmp_101, 12
  %tmp_125 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_124)
  %tmp_126 = or i13 %tmp_101, 13
  %tmp_127 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_126)
  %tmp_128 = or i13 %tmp_101, 14
  %tmp_129 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_128)
  %tmp_130 = or i13 %tmp_101, 15
  %tmp_131 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_130)
  %tmp_132 = or i13 %tmp_101, 16
  %tmp_133 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_132)
  %tmp_134 = or i13 %tmp_101, 17
  %tmp_135 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_134)
  %tmp_136 = or i13 %tmp_101, 18
  %tmp_137 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_136)
  %tmp_138 = or i13 %tmp_101, 19
  %tmp_139 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_138)
  %tmp_140 = or i13 %tmp_101, 20
  %tmp_141 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_140)
  %tmp_142 = or i13 %tmp_101, 21
  %tmp_143 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_142)
  %tmp_144 = or i13 %tmp_101, 22
  %tmp_145 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_144)
  %tmp_146 = or i13 %tmp_101, 23
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_146)
  %tmp_148 = or i13 %tmp_101, 24
  %tmp_149 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_148)
  %tmp_150 = or i13 %tmp_101, 25
  %tmp_151 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_150)
  %tmp_152 = or i13 %tmp_101, 26
  %tmp_153 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_152)
  %tmp_154 = or i13 %tmp_101, 27
  %tmp_155 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_154)
  %tmp_156 = or i13 %tmp_101, 28
  %tmp_157 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_156)
  %tmp_158 = or i13 %tmp_101, 29
  %tmp_159 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_158)
  %tmp_160 = or i13 %tmp_101, 30
  %tmp_161 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_160)
  %tmp_162 = or i13 %tmp_101, 31
  %tmp_163 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %tmp_162)
  %tmp_21_mid2_v = select i1 %exitcond2, i8 %i_4, i8 %i4
  %tmp_164 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_21_mid2_v, i3 0)
  %p_shl_cast = zext i11 %tmp_164 to i12
  %tmp_165 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_21_mid2_v, i1 false)
  %p_shl1_cast = zext i9 %tmp_165 to i12
  %tmp_166 = add i12 %p_shl1_cast, %p_shl_cast
  %in_buf_0_load_mid2_s = select i1 %exitcond2, i13 %tmp_101, i13 %tmp_21
  %in_buf_0_load_mid2 = zext i13 %in_buf_0_load_mid2_s to i64
  %in_buf_0_addr_2 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_0_load = load float* %in_buf_0_addr_2, align 4
  %in_buf_0_load_1_mid = select i1 %exitcond2, i64 %tmp_103, i64 %tmp_29
  %in_buf_0_addr_3 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_0_load_1 = load float* %in_buf_0_addr_3, align 4
  %in_buf_0_load_2_mid = select i1 %exitcond2, i64 %tmp_105, i64 %tmp_42
  %in_buf_0_addr_4 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_0_load_2 = load float* %in_buf_0_addr_4, align 4
  %in_buf_0_load_3_mid = select i1 %exitcond2, i64 %tmp_107, i64 %tmp_44
  %in_buf_0_addr_5 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_0_load_3 = load float* %in_buf_0_addr_5, align 4
  %in_buf_0_load_4_mid = select i1 %exitcond2, i64 %tmp_109, i64 %tmp_46
  %in_buf_0_addr_6 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_0_load_4 = load float* %in_buf_0_addr_6, align 4
  %in_buf_0_load_5_mid = select i1 %exitcond2, i64 %tmp_111, i64 %tmp_48
  %in_buf_0_addr_7 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_0_load_5 = load float* %in_buf_0_addr_7, align 4
  %in_buf_0_load_6_mid = select i1 %exitcond2, i64 %tmp_113, i64 %tmp_50
  %in_buf_0_addr_8 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_0_load_6 = load float* %in_buf_0_addr_8, align 4
  %in_buf_0_load_7_mid = select i1 %exitcond2, i64 %tmp_115, i64 %tmp_52
  %in_buf_0_addr_9 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_0_load_7 = load float* %in_buf_0_addr_9, align 4
  %in_buf_0_load_8_mid = select i1 %exitcond2, i64 %tmp_117, i64 %tmp_54
  %in_buf_0_addr_10 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_0_load_8 = load float* %in_buf_0_addr_10, align 4
  %in_buf_0_load_9_mid = select i1 %exitcond2, i64 %tmp_119, i64 %tmp_56
  %in_buf_0_addr_11 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_0_load_9 = load float* %in_buf_0_addr_11, align 4
  %in_buf_0_load_10_mi = select i1 %exitcond2, i64 %tmp_121, i64 %tmp_58
  %in_buf_0_addr_12 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_0_load_10 = load float* %in_buf_0_addr_12, align 4
  %in_buf_0_load_11_mi = select i1 %exitcond2, i64 %tmp_123, i64 %tmp_60
  %in_buf_0_addr_13 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_0_load_11 = load float* %in_buf_0_addr_13, align 4
  %in_buf_0_load_12_mi = select i1 %exitcond2, i64 %tmp_125, i64 %tmp_62
  %in_buf_0_addr_14 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_0_load_12 = load float* %in_buf_0_addr_14, align 4
  %in_buf_0_load_13_mi = select i1 %exitcond2, i64 %tmp_127, i64 %tmp_64
  %in_buf_0_addr_15 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_0_load_13 = load float* %in_buf_0_addr_15, align 4
  %in_buf_0_load_14_mi = select i1 %exitcond2, i64 %tmp_129, i64 %tmp_66
  %in_buf_0_addr_16 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_0_load_14 = load float* %in_buf_0_addr_16, align 4
  %in_buf_0_load_15_mi = select i1 %exitcond2, i64 %tmp_131, i64 %tmp_68
  %in_buf_0_addr_17 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_0_load_15 = load float* %in_buf_0_addr_17, align 4
  %in_buf_0_load_16_mi = select i1 %exitcond2, i64 %tmp_133, i64 %tmp_70
  %in_buf_0_addr_18 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_0_load_16 = load float* %in_buf_0_addr_18, align 4
  %in_buf_0_load_17_mi = select i1 %exitcond2, i64 %tmp_135, i64 %tmp_72
  %in_buf_0_addr_19 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_0_load_17 = load float* %in_buf_0_addr_19, align 4
  %in_buf_0_load_18_mi = select i1 %exitcond2, i64 %tmp_137, i64 %tmp_74
  %in_buf_0_addr_20 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_0_load_18 = load float* %in_buf_0_addr_20, align 4
  %in_buf_0_load_19_mi = select i1 %exitcond2, i64 %tmp_139, i64 %tmp_76
  %in_buf_0_addr_21 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_0_load_19 = load float* %in_buf_0_addr_21, align 4
  %in_buf_0_load_20_mi = select i1 %exitcond2, i64 %tmp_141, i64 %tmp_78
  %in_buf_0_addr_22 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_0_load_20 = load float* %in_buf_0_addr_22, align 4
  %in_buf_0_load_21_mi = select i1 %exitcond2, i64 %tmp_143, i64 %tmp_80
  %in_buf_0_addr_23 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_0_load_21 = load float* %in_buf_0_addr_23, align 4
  %in_buf_0_load_22_mi = select i1 %exitcond2, i64 %tmp_145, i64 %tmp_82
  %in_buf_0_addr_24 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_0_load_22 = load float* %in_buf_0_addr_24, align 4
  %in_buf_0_load_23_mi = select i1 %exitcond2, i64 %tmp_147, i64 %tmp_84
  %in_buf_0_addr_25 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_0_load_23 = load float* %in_buf_0_addr_25, align 4
  %in_buf_0_load_24_mi = select i1 %exitcond2, i64 %tmp_149, i64 %tmp_86
  %in_buf_0_addr_26 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_0_load_24 = load float* %in_buf_0_addr_26, align 4
  %in_buf_0_load_25_mi = select i1 %exitcond2, i64 %tmp_151, i64 %tmp_88
  %in_buf_0_addr_27 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_0_load_25 = load float* %in_buf_0_addr_27, align 4
  %in_buf_0_load_26_mi = select i1 %exitcond2, i64 %tmp_153, i64 %tmp_90
  %in_buf_0_addr_28 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_0_load_26 = load float* %in_buf_0_addr_28, align 4
  %in_buf_0_load_27_mi = select i1 %exitcond2, i64 %tmp_155, i64 %tmp_92
  %in_buf_0_addr_29 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_0_load_27 = load float* %in_buf_0_addr_29, align 4
  %in_buf_0_load_28_mi = select i1 %exitcond2, i64 %tmp_157, i64 %tmp_94
  %in_buf_0_addr_30 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_0_load_28 = load float* %in_buf_0_addr_30, align 4
  %in_buf_0_load_29_mi = select i1 %exitcond2, i64 %tmp_159, i64 %tmp_96
  %in_buf_0_addr_31 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_0_load_29 = load float* %in_buf_0_addr_31, align 4
  %in_buf_0_load_30_mi = select i1 %exitcond2, i64 %tmp_161, i64 %tmp_98
  %in_buf_0_addr_32 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_0_load_30 = load float* %in_buf_0_addr_32, align 4
  %in_buf_0_load_31_mi = select i1 %exitcond2, i64 %tmp_163, i64 %tmp_100
  %in_buf_0_addr_33 = getelementptr [4096 x float]* %in_buf_0, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_0_load_31 = load float* %in_buf_0_addr_33, align 4
  %in_buf_1_addr_2 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_1_load = load float* %in_buf_1_addr_2, align 4
  %in_buf_1_addr_3 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_1_load_1 = load float* %in_buf_1_addr_3, align 4
  %in_buf_1_addr_4 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_1_load_2 = load float* %in_buf_1_addr_4, align 4
  %in_buf_1_addr_5 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_1_load_3 = load float* %in_buf_1_addr_5, align 4
  %in_buf_1_addr_6 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_1_load_4 = load float* %in_buf_1_addr_6, align 4
  %in_buf_1_addr_7 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_1_load_5 = load float* %in_buf_1_addr_7, align 4
  %in_buf_1_addr_8 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_1_load_6 = load float* %in_buf_1_addr_8, align 4
  %in_buf_1_addr_9 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_1_load_7 = load float* %in_buf_1_addr_9, align 4
  %in_buf_1_addr_10 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_1_load_8 = load float* %in_buf_1_addr_10, align 4
  %in_buf_1_addr_11 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_1_load_9 = load float* %in_buf_1_addr_11, align 4
  %in_buf_1_addr_12 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_1_load_10 = load float* %in_buf_1_addr_12, align 4
  %in_buf_1_addr_13 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_1_load_11 = load float* %in_buf_1_addr_13, align 4
  %in_buf_1_addr_14 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_1_load_12 = load float* %in_buf_1_addr_14, align 4
  %in_buf_1_addr_15 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_1_load_13 = load float* %in_buf_1_addr_15, align 4
  %in_buf_1_addr_16 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_1_load_14 = load float* %in_buf_1_addr_16, align 4
  %in_buf_1_addr_17 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_1_load_15 = load float* %in_buf_1_addr_17, align 4
  %in_buf_1_addr_18 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_1_load_16 = load float* %in_buf_1_addr_18, align 4
  %in_buf_1_addr_19 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_1_load_17 = load float* %in_buf_1_addr_19, align 4
  %in_buf_1_addr_20 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_1_load_18 = load float* %in_buf_1_addr_20, align 4
  %in_buf_1_addr_21 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_1_load_19 = load float* %in_buf_1_addr_21, align 4
  %in_buf_1_addr_22 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_1_load_20 = load float* %in_buf_1_addr_22, align 4
  %in_buf_1_addr_23 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_1_load_21 = load float* %in_buf_1_addr_23, align 4
  %in_buf_1_addr_24 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_1_load_22 = load float* %in_buf_1_addr_24, align 4
  %in_buf_1_addr_25 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_1_load_23 = load float* %in_buf_1_addr_25, align 4
  %in_buf_1_addr_26 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_1_load_24 = load float* %in_buf_1_addr_26, align 4
  %in_buf_1_addr_27 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_1_load_25 = load float* %in_buf_1_addr_27, align 4
  %in_buf_1_addr_28 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_1_load_26 = load float* %in_buf_1_addr_28, align 4
  %in_buf_1_addr_29 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_1_load_27 = load float* %in_buf_1_addr_29, align 4
  %in_buf_1_addr_30 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_1_load_28 = load float* %in_buf_1_addr_30, align 4
  %in_buf_1_addr_31 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_1_load_29 = load float* %in_buf_1_addr_31, align 4
  %in_buf_1_addr_32 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_1_load_30 = load float* %in_buf_1_addr_32, align 4
  %in_buf_1_addr_33 = getelementptr [4096 x float]* %in_buf_1, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_1_load_31 = load float* %in_buf_1_addr_33, align 4
  %in_buf_2_addr_2 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_2_load = load float* %in_buf_2_addr_2, align 4
  %in_buf_2_addr_3 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_2_load_1 = load float* %in_buf_2_addr_3, align 4
  %in_buf_2_addr_4 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_2_load_2 = load float* %in_buf_2_addr_4, align 4
  %in_buf_2_addr_5 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_2_load_3 = load float* %in_buf_2_addr_5, align 4
  %in_buf_2_addr_6 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_2_load_4 = load float* %in_buf_2_addr_6, align 4
  %in_buf_2_addr_7 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_2_load_5 = load float* %in_buf_2_addr_7, align 4
  %in_buf_2_addr_8 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_2_load_6 = load float* %in_buf_2_addr_8, align 4
  %in_buf_2_addr_9 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_2_load_7 = load float* %in_buf_2_addr_9, align 4
  %in_buf_2_addr_10 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_2_load_8 = load float* %in_buf_2_addr_10, align 4
  %in_buf_2_addr_11 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_2_load_9 = load float* %in_buf_2_addr_11, align 4
  %in_buf_2_addr_12 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_2_load_10 = load float* %in_buf_2_addr_12, align 4
  %in_buf_2_addr_13 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_2_load_11 = load float* %in_buf_2_addr_13, align 4
  %in_buf_2_addr_14 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_2_load_12 = load float* %in_buf_2_addr_14, align 4
  %in_buf_2_addr_15 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_2_load_13 = load float* %in_buf_2_addr_15, align 4
  %in_buf_2_addr_16 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_2_load_14 = load float* %in_buf_2_addr_16, align 4
  %in_buf_2_addr_17 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_2_load_15 = load float* %in_buf_2_addr_17, align 4
  %in_buf_2_addr_18 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_2_load_16 = load float* %in_buf_2_addr_18, align 4
  %in_buf_2_addr_19 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_2_load_17 = load float* %in_buf_2_addr_19, align 4
  %in_buf_2_addr_20 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_2_load_18 = load float* %in_buf_2_addr_20, align 4
  %in_buf_2_addr_21 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_2_load_19 = load float* %in_buf_2_addr_21, align 4
  %in_buf_2_addr_22 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_2_load_20 = load float* %in_buf_2_addr_22, align 4
  %in_buf_2_addr_23 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_2_load_21 = load float* %in_buf_2_addr_23, align 4
  %in_buf_2_addr_24 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_2_load_22 = load float* %in_buf_2_addr_24, align 4
  %in_buf_2_addr_25 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_2_load_23 = load float* %in_buf_2_addr_25, align 4
  %in_buf_2_addr_26 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_2_load_24 = load float* %in_buf_2_addr_26, align 4
  %in_buf_2_addr_27 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_2_load_25 = load float* %in_buf_2_addr_27, align 4
  %in_buf_2_addr_28 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_2_load_26 = load float* %in_buf_2_addr_28, align 4
  %in_buf_2_addr_29 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_2_load_27 = load float* %in_buf_2_addr_29, align 4
  %in_buf_2_addr_30 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_2_load_28 = load float* %in_buf_2_addr_30, align 4
  %in_buf_2_addr_31 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_2_load_29 = load float* %in_buf_2_addr_31, align 4
  %in_buf_2_addr_32 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_2_load_30 = load float* %in_buf_2_addr_32, align 4
  %in_buf_2_addr_33 = getelementptr [4096 x float]* %in_buf_2, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_2_load_31 = load float* %in_buf_2_addr_33, align 4
  %in_buf_3_addr_2 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_3_load = load float* %in_buf_3_addr_2, align 4
  %in_buf_3_addr_3 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_3_load_1 = load float* %in_buf_3_addr_3, align 4
  %in_buf_3_addr_4 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_3_load_2 = load float* %in_buf_3_addr_4, align 4
  %in_buf_3_addr_5 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_3_load_3 = load float* %in_buf_3_addr_5, align 4
  %in_buf_3_addr_6 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_3_load_4 = load float* %in_buf_3_addr_6, align 4
  %in_buf_3_addr_7 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_3_load_5 = load float* %in_buf_3_addr_7, align 4
  %in_buf_3_addr_8 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_3_load_6 = load float* %in_buf_3_addr_8, align 4
  %in_buf_3_addr_9 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_3_load_7 = load float* %in_buf_3_addr_9, align 4
  %in_buf_3_addr_10 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_3_load_8 = load float* %in_buf_3_addr_10, align 4
  %in_buf_3_addr_11 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_3_load_9 = load float* %in_buf_3_addr_11, align 4
  %in_buf_3_addr_12 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_3_load_10 = load float* %in_buf_3_addr_12, align 4
  %in_buf_3_addr_13 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_3_load_11 = load float* %in_buf_3_addr_13, align 4
  %in_buf_3_addr_14 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_3_load_12 = load float* %in_buf_3_addr_14, align 4
  %in_buf_3_addr_15 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_3_load_13 = load float* %in_buf_3_addr_15, align 4
  %in_buf_3_addr_16 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_3_load_14 = load float* %in_buf_3_addr_16, align 4
  %in_buf_3_addr_17 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_3_load_15 = load float* %in_buf_3_addr_17, align 4
  %in_buf_3_addr_18 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_3_load_16 = load float* %in_buf_3_addr_18, align 4
  %in_buf_3_addr_19 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_3_load_17 = load float* %in_buf_3_addr_19, align 4
  %in_buf_3_addr_20 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_3_load_18 = load float* %in_buf_3_addr_20, align 4
  %in_buf_3_addr_21 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_3_load_19 = load float* %in_buf_3_addr_21, align 4
  %in_buf_3_addr_22 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_3_load_20 = load float* %in_buf_3_addr_22, align 4
  %in_buf_3_addr_23 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_3_load_21 = load float* %in_buf_3_addr_23, align 4
  %in_buf_3_addr_24 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_3_load_22 = load float* %in_buf_3_addr_24, align 4
  %in_buf_3_addr_25 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_3_load_23 = load float* %in_buf_3_addr_25, align 4
  %in_buf_3_addr_26 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_3_load_24 = load float* %in_buf_3_addr_26, align 4
  %in_buf_3_addr_27 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_3_load_25 = load float* %in_buf_3_addr_27, align 4
  %in_buf_3_addr_28 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_3_load_26 = load float* %in_buf_3_addr_28, align 4
  %in_buf_3_addr_29 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_3_load_27 = load float* %in_buf_3_addr_29, align 4
  %in_buf_3_addr_30 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_3_load_28 = load float* %in_buf_3_addr_30, align 4
  %in_buf_3_addr_31 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_3_load_29 = load float* %in_buf_3_addr_31, align 4
  %in_buf_3_addr_32 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_3_load_30 = load float* %in_buf_3_addr_32, align 4
  %in_buf_3_addr_33 = getelementptr [4096 x float]* %in_buf_3, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_3_load_31 = load float* %in_buf_3_addr_33, align 4
  %in_buf_4_addr_2 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_4_load = load float* %in_buf_4_addr_2, align 4
  %in_buf_4_addr_3 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_4_load_1 = load float* %in_buf_4_addr_3, align 4
  %in_buf_4_addr_4 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_4_load_2 = load float* %in_buf_4_addr_4, align 4
  %in_buf_4_addr_5 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_4_load_3 = load float* %in_buf_4_addr_5, align 4
  %in_buf_4_addr_6 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_4_load_4 = load float* %in_buf_4_addr_6, align 4
  %in_buf_4_addr_7 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_4_load_5 = load float* %in_buf_4_addr_7, align 4
  %in_buf_4_addr_8 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_4_load_6 = load float* %in_buf_4_addr_8, align 4
  %in_buf_4_addr_9 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_4_load_7 = load float* %in_buf_4_addr_9, align 4
  %in_buf_4_addr_10 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_4_load_8 = load float* %in_buf_4_addr_10, align 4
  %in_buf_4_addr_11 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_4_load_9 = load float* %in_buf_4_addr_11, align 4
  %in_buf_4_addr_12 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_4_load_10 = load float* %in_buf_4_addr_12, align 4
  %in_buf_4_addr_13 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_4_load_11 = load float* %in_buf_4_addr_13, align 4
  %in_buf_4_addr_14 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_4_load_12 = load float* %in_buf_4_addr_14, align 4
  %in_buf_4_addr_15 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_4_load_13 = load float* %in_buf_4_addr_15, align 4
  %in_buf_4_addr_16 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_4_load_14 = load float* %in_buf_4_addr_16, align 4
  %in_buf_4_addr_17 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_4_load_15 = load float* %in_buf_4_addr_17, align 4
  %in_buf_4_addr_18 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_4_load_16 = load float* %in_buf_4_addr_18, align 4
  %in_buf_4_addr_19 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_4_load_17 = load float* %in_buf_4_addr_19, align 4
  %in_buf_4_addr_20 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_4_load_18 = load float* %in_buf_4_addr_20, align 4
  %in_buf_4_addr_21 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_4_load_19 = load float* %in_buf_4_addr_21, align 4
  %in_buf_4_addr_22 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_4_load_20 = load float* %in_buf_4_addr_22, align 4
  %in_buf_4_addr_23 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_4_load_21 = load float* %in_buf_4_addr_23, align 4
  %in_buf_4_addr_24 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_4_load_22 = load float* %in_buf_4_addr_24, align 4
  %in_buf_4_addr_25 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_4_load_23 = load float* %in_buf_4_addr_25, align 4
  %in_buf_4_addr_26 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_4_load_24 = load float* %in_buf_4_addr_26, align 4
  %in_buf_4_addr_27 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_4_load_25 = load float* %in_buf_4_addr_27, align 4
  %in_buf_4_addr_28 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_4_load_26 = load float* %in_buf_4_addr_28, align 4
  %in_buf_4_addr_29 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_4_load_27 = load float* %in_buf_4_addr_29, align 4
  %in_buf_4_addr_30 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_4_load_28 = load float* %in_buf_4_addr_30, align 4
  %in_buf_4_addr_31 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_4_load_29 = load float* %in_buf_4_addr_31, align 4
  %in_buf_4_addr_32 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_4_load_30 = load float* %in_buf_4_addr_32, align 4
  %in_buf_4_addr_33 = getelementptr [4096 x float]* %in_buf_4, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_4_load_31 = load float* %in_buf_4_addr_33, align 4
  %in_buf_5_addr_2 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_5_load = load float* %in_buf_5_addr_2, align 4
  %in_buf_5_addr_3 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_5_load_1 = load float* %in_buf_5_addr_3, align 4
  %in_buf_5_addr_4 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_5_load_2 = load float* %in_buf_5_addr_4, align 4
  %in_buf_5_addr_5 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_5_load_3 = load float* %in_buf_5_addr_5, align 4
  %in_buf_5_addr_6 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_5_load_4 = load float* %in_buf_5_addr_6, align 4
  %in_buf_5_addr_7 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_5_load_5 = load float* %in_buf_5_addr_7, align 4
  %in_buf_5_addr_8 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_5_load_6 = load float* %in_buf_5_addr_8, align 4
  %in_buf_5_addr_9 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_5_load_7 = load float* %in_buf_5_addr_9, align 4
  %in_buf_5_addr_10 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_5_load_8 = load float* %in_buf_5_addr_10, align 4
  %in_buf_5_addr_11 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_5_load_9 = load float* %in_buf_5_addr_11, align 4
  %in_buf_5_addr_12 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_5_load_10 = load float* %in_buf_5_addr_12, align 4
  %in_buf_5_addr_13 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_5_load_11 = load float* %in_buf_5_addr_13, align 4
  %in_buf_5_addr_14 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_5_load_12 = load float* %in_buf_5_addr_14, align 4
  %in_buf_5_addr_15 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_5_load_13 = load float* %in_buf_5_addr_15, align 4
  %in_buf_5_addr_16 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_5_load_14 = load float* %in_buf_5_addr_16, align 4
  %in_buf_5_addr_17 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_5_load_15 = load float* %in_buf_5_addr_17, align 4
  %in_buf_5_addr_18 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_5_load_16 = load float* %in_buf_5_addr_18, align 4
  %in_buf_5_addr_19 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_5_load_17 = load float* %in_buf_5_addr_19, align 4
  %in_buf_5_addr_20 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_5_load_18 = load float* %in_buf_5_addr_20, align 4
  %in_buf_5_addr_21 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_5_load_19 = load float* %in_buf_5_addr_21, align 4
  %in_buf_5_addr_22 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_5_load_20 = load float* %in_buf_5_addr_22, align 4
  %in_buf_5_addr_23 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_5_load_21 = load float* %in_buf_5_addr_23, align 4
  %in_buf_5_addr_24 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_5_load_22 = load float* %in_buf_5_addr_24, align 4
  %in_buf_5_addr_25 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_5_load_23 = load float* %in_buf_5_addr_25, align 4
  %in_buf_5_addr_26 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_5_load_24 = load float* %in_buf_5_addr_26, align 4
  %in_buf_5_addr_27 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_5_load_25 = load float* %in_buf_5_addr_27, align 4
  %in_buf_5_addr_28 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_5_load_26 = load float* %in_buf_5_addr_28, align 4
  %in_buf_5_addr_29 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_5_load_27 = load float* %in_buf_5_addr_29, align 4
  %in_buf_5_addr_30 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_5_load_28 = load float* %in_buf_5_addr_30, align 4
  %in_buf_5_addr_31 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_5_load_29 = load float* %in_buf_5_addr_31, align 4
  %in_buf_5_addr_32 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_5_load_30 = load float* %in_buf_5_addr_32, align 4
  %in_buf_5_addr_33 = getelementptr [4096 x float]* %in_buf_5, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_5_load_31 = load float* %in_buf_5_addr_33, align 4
  %in_buf_6_addr_2 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_6_load = load float* %in_buf_6_addr_2, align 4
  %in_buf_6_addr_3 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_6_load_1 = load float* %in_buf_6_addr_3, align 4
  %in_buf_6_addr_4 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_6_load_2 = load float* %in_buf_6_addr_4, align 4
  %in_buf_6_addr_5 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_6_load_3 = load float* %in_buf_6_addr_5, align 4
  %in_buf_6_addr_6 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_6_load_4 = load float* %in_buf_6_addr_6, align 4
  %in_buf_6_addr_7 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_6_load_5 = load float* %in_buf_6_addr_7, align 4
  %in_buf_6_addr_8 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_6_load_6 = load float* %in_buf_6_addr_8, align 4
  %in_buf_6_addr_9 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_6_load_7 = load float* %in_buf_6_addr_9, align 4
  %in_buf_6_addr_10 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_6_load_8 = load float* %in_buf_6_addr_10, align 4
  %in_buf_6_addr_11 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_6_load_9 = load float* %in_buf_6_addr_11, align 4
  %in_buf_6_addr_12 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_6_load_10 = load float* %in_buf_6_addr_12, align 4
  %in_buf_6_addr_13 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_6_load_11 = load float* %in_buf_6_addr_13, align 4
  %in_buf_6_addr_14 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_6_load_12 = load float* %in_buf_6_addr_14, align 4
  %in_buf_6_addr_15 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_6_load_13 = load float* %in_buf_6_addr_15, align 4
  %in_buf_6_addr_16 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_6_load_14 = load float* %in_buf_6_addr_16, align 4
  %in_buf_6_addr_17 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_6_load_15 = load float* %in_buf_6_addr_17, align 4
  %in_buf_6_addr_18 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_6_load_16 = load float* %in_buf_6_addr_18, align 4
  %in_buf_6_addr_19 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_6_load_17 = load float* %in_buf_6_addr_19, align 4
  %in_buf_6_addr_20 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_6_load_18 = load float* %in_buf_6_addr_20, align 4
  %in_buf_6_addr_21 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_6_load_19 = load float* %in_buf_6_addr_21, align 4
  %in_buf_6_addr_22 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_6_load_20 = load float* %in_buf_6_addr_22, align 4
  %in_buf_6_addr_23 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_6_load_21 = load float* %in_buf_6_addr_23, align 4
  %in_buf_6_addr_24 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_6_load_22 = load float* %in_buf_6_addr_24, align 4
  %in_buf_6_addr_25 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_6_load_23 = load float* %in_buf_6_addr_25, align 4
  %in_buf_6_addr_26 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_6_load_24 = load float* %in_buf_6_addr_26, align 4
  %in_buf_6_addr_27 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_6_load_25 = load float* %in_buf_6_addr_27, align 4
  %in_buf_6_addr_28 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_6_load_26 = load float* %in_buf_6_addr_28, align 4
  %in_buf_6_addr_29 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_6_load_27 = load float* %in_buf_6_addr_29, align 4
  %in_buf_6_addr_30 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_6_load_28 = load float* %in_buf_6_addr_30, align 4
  %in_buf_6_addr_31 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_6_load_29 = load float* %in_buf_6_addr_31, align 4
  %in_buf_6_addr_32 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_6_load_30 = load float* %in_buf_6_addr_32, align 4
  %in_buf_6_addr_33 = getelementptr [4096 x float]* %in_buf_6, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_6_load_31 = load float* %in_buf_6_addr_33, align 4
  %in_buf_7_addr_2 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_mid2
  %in_buf_7_load = load float* %in_buf_7_addr_2, align 4
  %in_buf_7_addr_3 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_1_mid
  %in_buf_7_load_1 = load float* %in_buf_7_addr_3, align 4
  %in_buf_7_addr_4 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_2_mid
  %in_buf_7_load_2 = load float* %in_buf_7_addr_4, align 4
  %in_buf_7_addr_5 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_3_mid
  %in_buf_7_load_3 = load float* %in_buf_7_addr_5, align 4
  %in_buf_7_addr_6 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_4_mid
  %in_buf_7_load_4 = load float* %in_buf_7_addr_6, align 4
  %in_buf_7_addr_7 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_5_mid
  %in_buf_7_load_5 = load float* %in_buf_7_addr_7, align 4
  %in_buf_7_addr_8 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_6_mid
  %in_buf_7_load_6 = load float* %in_buf_7_addr_8, align 4
  %in_buf_7_addr_9 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_7_mid
  %in_buf_7_load_7 = load float* %in_buf_7_addr_9, align 4
  %in_buf_7_addr_10 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_8_mid
  %in_buf_7_load_8 = load float* %in_buf_7_addr_10, align 4
  %in_buf_7_addr_11 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_9_mid
  %in_buf_7_load_9 = load float* %in_buf_7_addr_11, align 4
  %in_buf_7_addr_12 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_10_mi
  %in_buf_7_load_10 = load float* %in_buf_7_addr_12, align 4
  %in_buf_7_addr_13 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_11_mi
  %in_buf_7_load_11 = load float* %in_buf_7_addr_13, align 4
  %in_buf_7_addr_14 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_12_mi
  %in_buf_7_load_12 = load float* %in_buf_7_addr_14, align 4
  %in_buf_7_addr_15 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_13_mi
  %in_buf_7_load_13 = load float* %in_buf_7_addr_15, align 4
  %in_buf_7_addr_16 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_14_mi
  %in_buf_7_load_14 = load float* %in_buf_7_addr_16, align 4
  %in_buf_7_addr_17 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_15_mi
  %in_buf_7_load_15 = load float* %in_buf_7_addr_17, align 4
  %in_buf_7_addr_18 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_16_mi
  %in_buf_7_load_16 = load float* %in_buf_7_addr_18, align 4
  %in_buf_7_addr_19 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_17_mi
  %in_buf_7_load_17 = load float* %in_buf_7_addr_19, align 4
  %in_buf_7_addr_20 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_18_mi
  %in_buf_7_load_18 = load float* %in_buf_7_addr_20, align 4
  %in_buf_7_addr_21 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_19_mi
  %in_buf_7_load_19 = load float* %in_buf_7_addr_21, align 4
  %in_buf_7_addr_22 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_20_mi
  %in_buf_7_load_20 = load float* %in_buf_7_addr_22, align 4
  %in_buf_7_addr_23 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_21_mi
  %in_buf_7_load_21 = load float* %in_buf_7_addr_23, align 4
  %in_buf_7_addr_24 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_22_mi
  %in_buf_7_load_22 = load float* %in_buf_7_addr_24, align 4
  %in_buf_7_addr_25 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_23_mi
  %in_buf_7_load_23 = load float* %in_buf_7_addr_25, align 4
  %in_buf_7_addr_26 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_24_mi
  %in_buf_7_load_24 = load float* %in_buf_7_addr_26, align 4
  %in_buf_7_addr_27 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_25_mi
  %in_buf_7_load_25 = load float* %in_buf_7_addr_27, align 4
  %in_buf_7_addr_28 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_26_mi
  %in_buf_7_load_26 = load float* %in_buf_7_addr_28, align 4
  %in_buf_7_addr_29 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_27_mi
  %in_buf_7_load_27 = load float* %in_buf_7_addr_29, align 4
  %in_buf_7_addr_30 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_28_mi
  %in_buf_7_load_28 = load float* %in_buf_7_addr_30, align 4
  %in_buf_7_addr_31 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_29_mi
  %in_buf_7_load_29 = load float* %in_buf_7_addr_31, align 4
  %in_buf_7_addr_32 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_30_mi
  %in_buf_7_load_30 = load float* %in_buf_7_addr_32, align 4
  %in_buf_7_addr_33 = getelementptr [4096 x float]* %in_buf_7, i64 0, i64 %in_buf_0_load_31_mi
  %in_buf_7_load_31 = load float* %in_buf_7_addr_33, align 4
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str15) nounwind
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_31 = zext i4 %j5_mid2 to i64
  %tmp_31_cast = zext i4 %j5_mid2 to i12
  %tmp_167 = call i9 @_ssdm_op_BitConcatenate.i9.i4.i5(i4 %j5_mid2, i5 0)
  %tmp_168 = zext i9 %tmp_167 to i64
  %weight_buf_0_addr_2 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_168
  %tmp_169 = or i9 %tmp_167, 1
  %tmp_170 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_169)
  %weight_buf_0_addr_3 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_170
  %tmp_171 = or i9 %tmp_167, 2
  %tmp_172 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_171)
  %weight_buf_0_addr_4 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_172
  %tmp_173 = or i9 %tmp_167, 3
  %tmp_174 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_173)
  %weight_buf_0_addr_5 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_174
  %tmp_175 = or i9 %tmp_167, 4
  %tmp_176 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_175)
  %weight_buf_0_addr_6 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_176
  %tmp_177 = or i9 %tmp_167, 5
  %tmp_178 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_177)
  %weight_buf_0_addr_7 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_178
  %tmp_179 = or i9 %tmp_167, 6
  %tmp_180 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_179)
  %weight_buf_0_addr_8 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_180
  %tmp_181 = or i9 %tmp_167, 7
  %tmp_182 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_181)
  %weight_buf_0_addr_9 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_182
  %tmp_183 = or i9 %tmp_167, 8
  %tmp_184 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_183)
  %weight_buf_0_addr_10 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_184
  %tmp_185 = or i9 %tmp_167, 9
  %tmp_186 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_185)
  %weight_buf_0_addr_11 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_186
  %tmp_187 = or i9 %tmp_167, 10
  %tmp_188 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_187)
  %weight_buf_0_addr_12 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_188
  %tmp_189 = or i9 %tmp_167, 11
  %tmp_190 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_189)
  %weight_buf_0_addr_13 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_190
  %tmp_191 = or i9 %tmp_167, 12
  %tmp_192 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_191)
  %weight_buf_0_addr_14 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_192
  %tmp_193 = or i9 %tmp_167, 13
  %tmp_194 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_193)
  %weight_buf_0_addr_15 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_194
  %tmp_195 = or i9 %tmp_167, 14
  %tmp_196 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_195)
  %weight_buf_0_addr_16 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_196
  %tmp_197 = or i9 %tmp_167, 15
  %tmp_198 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_197)
  %weight_buf_0_addr_17 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_198
  %tmp_199 = or i9 %tmp_167, 16
  %tmp_200 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_199)
  %weight_buf_0_addr_18 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_200
  %tmp_201 = or i9 %tmp_167, 17
  %tmp_202 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_201)
  %weight_buf_0_addr_19 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_202
  %tmp_203 = or i9 %tmp_167, 18
  %tmp_204 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_203)
  %weight_buf_0_addr_20 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_204
  %tmp_205 = or i9 %tmp_167, 19
  %tmp_206 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_205)
  %weight_buf_0_addr_21 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_206
  %tmp_207 = or i9 %tmp_167, 20
  %tmp_208 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_207)
  %weight_buf_0_addr_22 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_208
  %tmp_209 = or i9 %tmp_167, 21
  %tmp_210 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_209)
  %weight_buf_0_addr_23 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_210
  %tmp_211 = or i9 %tmp_167, 22
  %tmp_212 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_211)
  %weight_buf_0_addr_24 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_212
  %tmp_213 = or i9 %tmp_167, 23
  %tmp_214 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_213)
  %weight_buf_0_addr_25 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_214
  %tmp_215 = or i9 %tmp_167, 24
  %tmp_216 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_215)
  %weight_buf_0_addr_26 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_216
  %tmp_217 = or i9 %tmp_167, 25
  %tmp_218 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_217)
  %weight_buf_0_addr_27 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_218
  %tmp_219 = or i9 %tmp_167, 26
  %tmp_220 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_219)
  %weight_buf_0_addr_28 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_220
  %tmp_221 = or i9 %tmp_167, 27
  %tmp_222 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_221)
  %weight_buf_0_addr_29 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_222
  %tmp_223 = or i9 %tmp_167, 28
  %tmp_224 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_223)
  %weight_buf_0_addr_30 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_224
  %tmp_225 = or i9 %tmp_167, 29
  %tmp_226 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_225)
  %weight_buf_0_addr_31 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_226
  %tmp_227 = or i9 %tmp_167, 30
  %tmp_228 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_227)
  %weight_buf_0_addr_32 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_228
  %tmp_229 = or i9 %tmp_167, 31
  %tmp_230 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55 0, i9 %tmp_229)
  %weight_buf_0_addr_33 = getelementptr [320 x float]* %weight_buf_0, i64 0, i64 %tmp_230
  %weight_buf_1_addr_2 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_168
  %weight_buf_1_addr_3 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_170
  %weight_buf_1_addr_4 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_172
  %weight_buf_1_addr_5 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_174
  %weight_buf_1_addr_6 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_176
  %weight_buf_1_addr_7 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_178
  %weight_buf_1_addr_8 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_180
  %weight_buf_1_addr_9 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_182
  %weight_buf_1_addr_10 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_184
  %weight_buf_1_addr_11 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_186
  %weight_buf_1_addr_12 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_188
  %weight_buf_1_addr_13 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_190
  %weight_buf_1_addr_14 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_192
  %weight_buf_1_addr_15 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_194
  %weight_buf_1_addr_16 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_196
  %weight_buf_1_addr_17 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_198
  %weight_buf_1_addr_18 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_200
  %weight_buf_1_addr_19 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_202
  %weight_buf_1_addr_20 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_204
  %weight_buf_1_addr_21 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_206
  %weight_buf_1_addr_22 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_208
  %weight_buf_1_addr_23 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_210
  %weight_buf_1_addr_24 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_212
  %weight_buf_1_addr_25 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_214
  %weight_buf_1_addr_26 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_216
  %weight_buf_1_addr_27 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_218
  %weight_buf_1_addr_28 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_220
  %weight_buf_1_addr_29 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_222
  %weight_buf_1_addr_30 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_224
  %weight_buf_1_addr_31 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_226
  %weight_buf_1_addr_32 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_228
  %weight_buf_1_addr_33 = getelementptr [320 x float]* %weight_buf_1, i64 0, i64 %tmp_230
  %weight_buf_2_addr_2 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_168
  %weight_buf_2_addr_3 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_170
  %weight_buf_2_addr_4 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_172
  %weight_buf_2_addr_5 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_174
  %weight_buf_2_addr_6 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_176
  %weight_buf_2_addr_7 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_178
  %weight_buf_2_addr_8 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_180
  %weight_buf_2_addr_9 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_182
  %weight_buf_2_addr_10 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_184
  %weight_buf_2_addr_11 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_186
  %weight_buf_2_addr_12 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_188
  %weight_buf_2_addr_13 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_190
  %weight_buf_2_addr_14 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_192
  %weight_buf_2_addr_15 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_194
  %weight_buf_2_addr_16 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_196
  %weight_buf_2_addr_17 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_198
  %weight_buf_2_addr_18 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_200
  %weight_buf_2_addr_19 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_202
  %weight_buf_2_addr_20 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_204
  %weight_buf_2_addr_21 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_206
  %weight_buf_2_addr_22 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_208
  %weight_buf_2_addr_23 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_210
  %weight_buf_2_addr_24 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_212
  %weight_buf_2_addr_25 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_214
  %weight_buf_2_addr_26 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_216
  %weight_buf_2_addr_27 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_218
  %weight_buf_2_addr_28 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_220
  %weight_buf_2_addr_29 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_222
  %weight_buf_2_addr_30 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_224
  %weight_buf_2_addr_31 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_226
  %weight_buf_2_addr_32 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_228
  %weight_buf_2_addr_33 = getelementptr [320 x float]* %weight_buf_2, i64 0, i64 %tmp_230
  %weight_buf_3_addr_2 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_168
  %weight_buf_3_addr_3 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_170
  %weight_buf_3_addr_4 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_172
  %weight_buf_3_addr_5 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_174
  %weight_buf_3_addr_6 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_176
  %weight_buf_3_addr_7 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_178
  %weight_buf_3_addr_8 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_180
  %weight_buf_3_addr_9 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_182
  %weight_buf_3_addr_10 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_184
  %weight_buf_3_addr_11 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_186
  %weight_buf_3_addr_12 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_188
  %weight_buf_3_addr_13 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_190
  %weight_buf_3_addr_14 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_192
  %weight_buf_3_addr_15 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_194
  %weight_buf_3_addr_16 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_196
  %weight_buf_3_addr_17 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_198
  %weight_buf_3_addr_18 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_200
  %weight_buf_3_addr_19 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_202
  %weight_buf_3_addr_20 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_204
  %weight_buf_3_addr_21 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_206
  %weight_buf_3_addr_22 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_208
  %weight_buf_3_addr_23 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_210
  %weight_buf_3_addr_24 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_212
  %weight_buf_3_addr_25 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_214
  %weight_buf_3_addr_26 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_216
  %weight_buf_3_addr_27 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_218
  %weight_buf_3_addr_28 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_220
  %weight_buf_3_addr_29 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_222
  %weight_buf_3_addr_30 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_224
  %weight_buf_3_addr_31 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_226
  %weight_buf_3_addr_32 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_228
  %weight_buf_3_addr_33 = getelementptr [320 x float]* %weight_buf_3, i64 0, i64 %tmp_230
  %weight_buf_4_addr_2 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_168
  %weight_buf_4_addr_3 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_170
  %weight_buf_4_addr_4 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_172
  %weight_buf_4_addr_5 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_174
  %weight_buf_4_addr_6 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_176
  %weight_buf_4_addr_7 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_178
  %weight_buf_4_addr_8 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_180
  %weight_buf_4_addr_9 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_182
  %weight_buf_4_addr_10 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_184
  %weight_buf_4_addr_11 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_186
  %weight_buf_4_addr_12 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_188
  %weight_buf_4_addr_13 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_190
  %weight_buf_4_addr_14 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_192
  %weight_buf_4_addr_15 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_194
  %weight_buf_4_addr_16 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_196
  %weight_buf_4_addr_17 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_198
  %weight_buf_4_addr_18 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_200
  %weight_buf_4_addr_19 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_202
  %weight_buf_4_addr_20 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_204
  %weight_buf_4_addr_21 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_206
  %weight_buf_4_addr_22 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_208
  %weight_buf_4_addr_23 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_210
  %weight_buf_4_addr_24 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_212
  %weight_buf_4_addr_25 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_214
  %weight_buf_4_addr_26 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_216
  %weight_buf_4_addr_27 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_218
  %weight_buf_4_addr_28 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_220
  %weight_buf_4_addr_29 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_222
  %weight_buf_4_addr_30 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_224
  %weight_buf_4_addr_31 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_226
  %weight_buf_4_addr_32 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_228
  %weight_buf_4_addr_33 = getelementptr [320 x float]* %weight_buf_4, i64 0, i64 %tmp_230
  %weight_buf_5_addr_2 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_168
  %weight_buf_5_addr_3 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_170
  %weight_buf_5_addr_4 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_172
  %weight_buf_5_addr_5 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_174
  %weight_buf_5_addr_6 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_176
  %weight_buf_5_addr_7 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_178
  %weight_buf_5_addr_8 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_180
  %weight_buf_5_addr_9 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_182
  %weight_buf_5_addr_10 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_184
  %weight_buf_5_addr_11 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_186
  %weight_buf_5_addr_12 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_188
  %weight_buf_5_addr_13 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_190
  %weight_buf_5_addr_14 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_192
  %weight_buf_5_addr_15 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_194
  %weight_buf_5_addr_16 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_196
  %weight_buf_5_addr_17 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_198
  %weight_buf_5_addr_18 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_200
  %weight_buf_5_addr_19 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_202
  %weight_buf_5_addr_20 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_204
  %weight_buf_5_addr_21 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_206
  %weight_buf_5_addr_22 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_208
  %weight_buf_5_addr_23 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_210
  %weight_buf_5_addr_24 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_212
  %weight_buf_5_addr_25 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_214
  %weight_buf_5_addr_26 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_216
  %weight_buf_5_addr_27 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_218
  %weight_buf_5_addr_28 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_220
  %weight_buf_5_addr_29 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_222
  %weight_buf_5_addr_30 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_224
  %weight_buf_5_addr_31 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_226
  %weight_buf_5_addr_32 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_228
  %weight_buf_5_addr_33 = getelementptr [320 x float]* %weight_buf_5, i64 0, i64 %tmp_230
  %weight_buf_6_addr_2 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_168
  %weight_buf_6_addr_3 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_170
  %weight_buf_6_addr_4 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_172
  %weight_buf_6_addr_5 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_174
  %weight_buf_6_addr_6 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_176
  %weight_buf_6_addr_7 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_178
  %weight_buf_6_addr_8 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_180
  %weight_buf_6_addr_9 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_182
  %weight_buf_6_addr_10 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_184
  %weight_buf_6_addr_11 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_186
  %weight_buf_6_addr_12 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_188
  %weight_buf_6_addr_13 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_190
  %weight_buf_6_addr_14 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_192
  %weight_buf_6_addr_15 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_194
  %weight_buf_6_addr_16 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_196
  %weight_buf_6_addr_17 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_198
  %weight_buf_6_addr_18 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_200
  %weight_buf_6_addr_19 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_202
  %weight_buf_6_addr_20 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_204
  %weight_buf_6_addr_21 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_206
  %weight_buf_6_addr_22 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_208
  %weight_buf_6_addr_23 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_210
  %weight_buf_6_addr_24 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_212
  %weight_buf_6_addr_25 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_214
  %weight_buf_6_addr_26 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_216
  %weight_buf_6_addr_27 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_218
  %weight_buf_6_addr_28 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_220
  %weight_buf_6_addr_29 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_222
  %weight_buf_6_addr_30 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_224
  %weight_buf_6_addr_31 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_226
  %weight_buf_6_addr_32 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_228
  %weight_buf_6_addr_33 = getelementptr [320 x float]* %weight_buf_6, i64 0, i64 %tmp_230
  %weight_buf_7_addr_2 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_168
  %weight_buf_7_addr_3 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_170
  %weight_buf_7_addr_4 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_172
  %weight_buf_7_addr_5 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_174
  %weight_buf_7_addr_6 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_176
  %weight_buf_7_addr_7 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_178
  %weight_buf_7_addr_8 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_180
  %weight_buf_7_addr_9 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_182
  %weight_buf_7_addr_10 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_184
  %weight_buf_7_addr_11 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_186
  %weight_buf_7_addr_12 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_188
  %weight_buf_7_addr_13 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_190
  %weight_buf_7_addr_14 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_192
  %weight_buf_7_addr_15 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_194
  %weight_buf_7_addr_16 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_196
  %weight_buf_7_addr_17 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_198
  %weight_buf_7_addr_18 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_200
  %weight_buf_7_addr_19 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_202
  %weight_buf_7_addr_20 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_204
  %weight_buf_7_addr_21 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_206
  %weight_buf_7_addr_22 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_208
  %weight_buf_7_addr_23 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_210
  %weight_buf_7_addr_24 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_212
  %weight_buf_7_addr_25 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_214
  %weight_buf_7_addr_26 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_216
  %weight_buf_7_addr_27 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_218
  %weight_buf_7_addr_28 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_220
  %weight_buf_7_addr_29 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_222
  %weight_buf_7_addr_30 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_224
  %weight_buf_7_addr_31 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_226
  %weight_buf_7_addr_32 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_228
  %weight_buf_7_addr_33 = getelementptr [320 x float]* %weight_buf_7, i64 0, i64 %tmp_230
  %tmp_231 = add i12 %tmp_166, %tmp_31_cast
  %tmp_232_cast = zext i12 %tmp_231 to i64
  %out_buf_addr_2 = getelementptr [1280 x float]* %out_buf, i64 0, i64 %tmp_232_cast
  %offset_buf_addr_2 = getelementptr inbounds [10 x float]* %offset_buf, i64 0, i64 %tmp_31
  %tmp = load float* %offset_buf_addr_2, align 4
  %weight_buf_0_load = load float* %weight_buf_0_addr_2, align 16
  %tmp_34 = fmul float %in_buf_0_load, %weight_buf_0_load
  %tmp_38 = fadd float %tmp, %tmp_34
  %weight_buf_0_load_1 = load float* %weight_buf_0_addr_3, align 4
  %tmp_43_1 = fmul float %in_buf_0_load_1, %weight_buf_0_load_1
  %tmp_44_1 = fadd float %tmp_38, %tmp_43_1
  %weight_buf_0_load_2 = load float* %weight_buf_0_addr_4, align 8
  %tmp_43_2 = fmul float %in_buf_0_load_2, %weight_buf_0_load_2
  %tmp_44_2 = fadd float %tmp_44_1, %tmp_43_2
  %weight_buf_0_load_3 = load float* %weight_buf_0_addr_5, align 4
  %tmp_43_3 = fmul float %in_buf_0_load_3, %weight_buf_0_load_3
  %tmp_44_3 = fadd float %tmp_44_2, %tmp_43_3
  %weight_buf_0_load_4 = load float* %weight_buf_0_addr_6, align 16
  %tmp_43_4 = fmul float %in_buf_0_load_4, %weight_buf_0_load_4
  %tmp_44_4 = fadd float %tmp_44_3, %tmp_43_4
  %weight_buf_0_load_5 = load float* %weight_buf_0_addr_7, align 4
  %tmp_43_5 = fmul float %in_buf_0_load_5, %weight_buf_0_load_5
  %tmp_44_5 = fadd float %tmp_44_4, %tmp_43_5
  %weight_buf_0_load_6 = load float* %weight_buf_0_addr_8, align 8
  %tmp_43_6 = fmul float %in_buf_0_load_6, %weight_buf_0_load_6
  %tmp_44_6 = fadd float %tmp_44_5, %tmp_43_6
  %weight_buf_0_load_7 = load float* %weight_buf_0_addr_9, align 4
  %tmp_43_7 = fmul float %in_buf_0_load_7, %weight_buf_0_load_7
  %tmp_44_7 = fadd float %tmp_44_6, %tmp_43_7
  %weight_buf_0_load_8 = load float* %weight_buf_0_addr_10, align 16
  %tmp_43_8 = fmul float %in_buf_0_load_8, %weight_buf_0_load_8
  %tmp_44_8 = fadd float %tmp_44_7, %tmp_43_8
  %weight_buf_0_load_9 = load float* %weight_buf_0_addr_11, align 4
  %tmp_43_9 = fmul float %in_buf_0_load_9, %weight_buf_0_load_9
  %tmp_44_9 = fadd float %tmp_44_8, %tmp_43_9
  %weight_buf_0_load_10 = load float* %weight_buf_0_addr_12, align 8
  %tmp_43_s = fmul float %in_buf_0_load_10, %weight_buf_0_load_10
  %tmp_44_s = fadd float %tmp_44_9, %tmp_43_s
  %weight_buf_0_load_11 = load float* %weight_buf_0_addr_13, align 4
  %tmp_43_10 = fmul float %in_buf_0_load_11, %weight_buf_0_load_11
  %tmp_44_10 = fadd float %tmp_44_s, %tmp_43_10
  %weight_buf_0_load_12 = load float* %weight_buf_0_addr_14, align 16
  %tmp_43_11 = fmul float %in_buf_0_load_12, %weight_buf_0_load_12
  %tmp_44_11 = fadd float %tmp_44_10, %tmp_43_11
  %weight_buf_0_load_13 = load float* %weight_buf_0_addr_15, align 4
  %tmp_43_12 = fmul float %in_buf_0_load_13, %weight_buf_0_load_13
  %tmp_44_12 = fadd float %tmp_44_11, %tmp_43_12
  %weight_buf_0_load_14 = load float* %weight_buf_0_addr_16, align 8
  %tmp_43_13 = fmul float %in_buf_0_load_14, %weight_buf_0_load_14
  %tmp_44_13 = fadd float %tmp_44_12, %tmp_43_13
  %weight_buf_0_load_15 = load float* %weight_buf_0_addr_17, align 4
  %tmp_43_14 = fmul float %in_buf_0_load_15, %weight_buf_0_load_15
  %tmp_44_14 = fadd float %tmp_44_13, %tmp_43_14
  %weight_buf_0_load_16 = load float* %weight_buf_0_addr_18, align 16
  %tmp_43_15 = fmul float %in_buf_0_load_16, %weight_buf_0_load_16
  %tmp_44_15 = fadd float %tmp_44_14, %tmp_43_15
  %weight_buf_0_load_17 = load float* %weight_buf_0_addr_19, align 4
  %tmp_43_16 = fmul float %in_buf_0_load_17, %weight_buf_0_load_17
  %tmp_44_16 = fadd float %tmp_44_15, %tmp_43_16
  %weight_buf_0_load_18 = load float* %weight_buf_0_addr_20, align 8
  %tmp_43_17 = fmul float %in_buf_0_load_18, %weight_buf_0_load_18
  %tmp_44_17 = fadd float %tmp_44_16, %tmp_43_17
  %weight_buf_0_load_19 = load float* %weight_buf_0_addr_21, align 4
  %tmp_43_18 = fmul float %in_buf_0_load_19, %weight_buf_0_load_19
  %tmp_44_18 = fadd float %tmp_44_17, %tmp_43_18
  %weight_buf_0_load_20 = load float* %weight_buf_0_addr_22, align 16
  %tmp_43_19 = fmul float %in_buf_0_load_20, %weight_buf_0_load_20
  %tmp_44_19 = fadd float %tmp_44_18, %tmp_43_19
  %weight_buf_0_load_21 = load float* %weight_buf_0_addr_23, align 4
  %tmp_43_20 = fmul float %in_buf_0_load_21, %weight_buf_0_load_21
  %tmp_44_20 = fadd float %tmp_44_19, %tmp_43_20
  %weight_buf_0_load_22 = load float* %weight_buf_0_addr_24, align 8
  %tmp_43_21 = fmul float %in_buf_0_load_22, %weight_buf_0_load_22
  %tmp_44_21 = fadd float %tmp_44_20, %tmp_43_21
  %weight_buf_0_load_23 = load float* %weight_buf_0_addr_25, align 4
  %tmp_43_22 = fmul float %in_buf_0_load_23, %weight_buf_0_load_23
  %tmp_44_22 = fadd float %tmp_44_21, %tmp_43_22
  %weight_buf_0_load_24 = load float* %weight_buf_0_addr_26, align 16
  %tmp_43_23 = fmul float %in_buf_0_load_24, %weight_buf_0_load_24
  %tmp_44_23 = fadd float %tmp_44_22, %tmp_43_23
  %weight_buf_0_load_25 = load float* %weight_buf_0_addr_27, align 4
  %tmp_43_24 = fmul float %in_buf_0_load_25, %weight_buf_0_load_25
  %tmp_44_24 = fadd float %tmp_44_23, %tmp_43_24
  %weight_buf_0_load_26 = load float* %weight_buf_0_addr_28, align 8
  %tmp_43_25 = fmul float %in_buf_0_load_26, %weight_buf_0_load_26
  %tmp_44_25 = fadd float %tmp_44_24, %tmp_43_25
  %weight_buf_0_load_27 = load float* %weight_buf_0_addr_29, align 4
  %tmp_43_26 = fmul float %in_buf_0_load_27, %weight_buf_0_load_27
  %tmp_44_26 = fadd float %tmp_44_25, %tmp_43_26
  %weight_buf_0_load_28 = load float* %weight_buf_0_addr_30, align 16
  %tmp_43_27 = fmul float %in_buf_0_load_28, %weight_buf_0_load_28
  %tmp_44_27 = fadd float %tmp_44_26, %tmp_43_27
  %weight_buf_0_load_29 = load float* %weight_buf_0_addr_31, align 4
  %tmp_43_28 = fmul float %in_buf_0_load_29, %weight_buf_0_load_29
  %tmp_44_28 = fadd float %tmp_44_27, %tmp_43_28
  %weight_buf_0_load_30 = load float* %weight_buf_0_addr_32, align 8
  %tmp_43_29 = fmul float %in_buf_0_load_30, %weight_buf_0_load_30
  %tmp_44_29 = fadd float %tmp_44_28, %tmp_43_29
  %weight_buf_0_load_31 = load float* %weight_buf_0_addr_33, align 4
  %tmp_43_30 = fmul float %in_buf_0_load_31, %weight_buf_0_load_31
  %tmp_44_30 = fadd float %tmp_44_29, %tmp_43_30
  %weight_buf_1_load = load float* %weight_buf_1_addr_2, align 16
  %tmp_43_31 = fmul float %in_buf_1_load, %weight_buf_1_load
  %tmp_44_31 = fadd float %tmp_44_30, %tmp_43_31
  %weight_buf_1_load_1 = load float* %weight_buf_1_addr_3, align 4
  %tmp_43_32 = fmul float %in_buf_1_load_1, %weight_buf_1_load_1
  %tmp_44_32 = fadd float %tmp_44_31, %tmp_43_32
  %weight_buf_1_load_2 = load float* %weight_buf_1_addr_4, align 8
  %tmp_43_33 = fmul float %in_buf_1_load_2, %weight_buf_1_load_2
  %tmp_44_33 = fadd float %tmp_44_32, %tmp_43_33
  %weight_buf_1_load_3 = load float* %weight_buf_1_addr_5, align 4
  %tmp_43_34 = fmul float %in_buf_1_load_3, %weight_buf_1_load_3
  %tmp_44_34 = fadd float %tmp_44_33, %tmp_43_34
  %weight_buf_1_load_4 = load float* %weight_buf_1_addr_6, align 16
  %tmp_43_35 = fmul float %in_buf_1_load_4, %weight_buf_1_load_4
  %tmp_44_35 = fadd float %tmp_44_34, %tmp_43_35
  %weight_buf_1_load_5 = load float* %weight_buf_1_addr_7, align 4
  %tmp_43_36 = fmul float %in_buf_1_load_5, %weight_buf_1_load_5
  %tmp_44_36 = fadd float %tmp_44_35, %tmp_43_36
  %weight_buf_1_load_6 = load float* %weight_buf_1_addr_8, align 8
  %tmp_43_37 = fmul float %in_buf_1_load_6, %weight_buf_1_load_6
  %tmp_44_37 = fadd float %tmp_44_36, %tmp_43_37
  %weight_buf_1_load_7 = load float* %weight_buf_1_addr_9, align 4
  %tmp_43_38 = fmul float %in_buf_1_load_7, %weight_buf_1_load_7
  %tmp_44_38 = fadd float %tmp_44_37, %tmp_43_38
  %weight_buf_1_load_8 = load float* %weight_buf_1_addr_10, align 16
  %tmp_43_39 = fmul float %in_buf_1_load_8, %weight_buf_1_load_8
  %tmp_44_39 = fadd float %tmp_44_38, %tmp_43_39
  %weight_buf_1_load_9 = load float* %weight_buf_1_addr_11, align 4
  %tmp_43_40 = fmul float %in_buf_1_load_9, %weight_buf_1_load_9
  %tmp_44_40 = fadd float %tmp_44_39, %tmp_43_40
  %weight_buf_1_load_10 = load float* %weight_buf_1_addr_12, align 8
  %tmp_43_41 = fmul float %in_buf_1_load_10, %weight_buf_1_load_10
  %tmp_44_41 = fadd float %tmp_44_40, %tmp_43_41
  %weight_buf_1_load_11 = load float* %weight_buf_1_addr_13, align 4
  %tmp_43_42 = fmul float %in_buf_1_load_11, %weight_buf_1_load_11
  %tmp_44_42 = fadd float %tmp_44_41, %tmp_43_42
  %weight_buf_1_load_12 = load float* %weight_buf_1_addr_14, align 16
  %tmp_43_43 = fmul float %in_buf_1_load_12, %weight_buf_1_load_12
  %tmp_44_43 = fadd float %tmp_44_42, %tmp_43_43
  %weight_buf_1_load_13 = load float* %weight_buf_1_addr_15, align 4
  %tmp_43_44 = fmul float %in_buf_1_load_13, %weight_buf_1_load_13
  %tmp_44_44 = fadd float %tmp_44_43, %tmp_43_44
  %weight_buf_1_load_14 = load float* %weight_buf_1_addr_16, align 8
  %tmp_43_45 = fmul float %in_buf_1_load_14, %weight_buf_1_load_14
  %tmp_44_45 = fadd float %tmp_44_44, %tmp_43_45
  %weight_buf_1_load_15 = load float* %weight_buf_1_addr_17, align 4
  %tmp_43_46 = fmul float %in_buf_1_load_15, %weight_buf_1_load_15
  %tmp_44_46 = fadd float %tmp_44_45, %tmp_43_46
  %weight_buf_1_load_16 = load float* %weight_buf_1_addr_18, align 16
  %tmp_43_47 = fmul float %in_buf_1_load_16, %weight_buf_1_load_16
  %tmp_44_47 = fadd float %tmp_44_46, %tmp_43_47
  %weight_buf_1_load_17 = load float* %weight_buf_1_addr_19, align 4
  %tmp_43_48 = fmul float %in_buf_1_load_17, %weight_buf_1_load_17
  %tmp_44_48 = fadd float %tmp_44_47, %tmp_43_48
  %weight_buf_1_load_18 = load float* %weight_buf_1_addr_20, align 8
  %tmp_43_49 = fmul float %in_buf_1_load_18, %weight_buf_1_load_18
  %tmp_44_49 = fadd float %tmp_44_48, %tmp_43_49
  %weight_buf_1_load_19 = load float* %weight_buf_1_addr_21, align 4
  %tmp_43_50 = fmul float %in_buf_1_load_19, %weight_buf_1_load_19
  %tmp_44_50 = fadd float %tmp_44_49, %tmp_43_50
  %weight_buf_1_load_20 = load float* %weight_buf_1_addr_22, align 16
  %tmp_43_51 = fmul float %in_buf_1_load_20, %weight_buf_1_load_20
  %tmp_44_51 = fadd float %tmp_44_50, %tmp_43_51
  %weight_buf_1_load_21 = load float* %weight_buf_1_addr_23, align 4
  %tmp_43_52 = fmul float %in_buf_1_load_21, %weight_buf_1_load_21
  %tmp_44_52 = fadd float %tmp_44_51, %tmp_43_52
  %weight_buf_1_load_22 = load float* %weight_buf_1_addr_24, align 8
  %tmp_43_53 = fmul float %in_buf_1_load_22, %weight_buf_1_load_22
  %tmp_44_53 = fadd float %tmp_44_52, %tmp_43_53
  %weight_buf_1_load_23 = load float* %weight_buf_1_addr_25, align 4
  %tmp_43_54 = fmul float %in_buf_1_load_23, %weight_buf_1_load_23
  %tmp_44_54 = fadd float %tmp_44_53, %tmp_43_54
  %weight_buf_1_load_24 = load float* %weight_buf_1_addr_26, align 16
  %tmp_43_55 = fmul float %in_buf_1_load_24, %weight_buf_1_load_24
  %tmp_44_55 = fadd float %tmp_44_54, %tmp_43_55
  %weight_buf_1_load_25 = load float* %weight_buf_1_addr_27, align 4
  %tmp_43_56 = fmul float %in_buf_1_load_25, %weight_buf_1_load_25
  %tmp_44_56 = fadd float %tmp_44_55, %tmp_43_56
  %weight_buf_1_load_26 = load float* %weight_buf_1_addr_28, align 8
  %tmp_43_57 = fmul float %in_buf_1_load_26, %weight_buf_1_load_26
  %tmp_44_57 = fadd float %tmp_44_56, %tmp_43_57
  %weight_buf_1_load_27 = load float* %weight_buf_1_addr_29, align 4
  %tmp_43_58 = fmul float %in_buf_1_load_27, %weight_buf_1_load_27
  %tmp_44_58 = fadd float %tmp_44_57, %tmp_43_58
  %weight_buf_1_load_28 = load float* %weight_buf_1_addr_30, align 16
  %tmp_43_59 = fmul float %in_buf_1_load_28, %weight_buf_1_load_28
  %tmp_44_59 = fadd float %tmp_44_58, %tmp_43_59
  %weight_buf_1_load_29 = load float* %weight_buf_1_addr_31, align 4
  %tmp_43_60 = fmul float %in_buf_1_load_29, %weight_buf_1_load_29
  %tmp_44_60 = fadd float %tmp_44_59, %tmp_43_60
  %weight_buf_1_load_30 = load float* %weight_buf_1_addr_32, align 8
  %tmp_43_61 = fmul float %in_buf_1_load_30, %weight_buf_1_load_30
  %tmp_44_61 = fadd float %tmp_44_60, %tmp_43_61
  %weight_buf_1_load_31 = load float* %weight_buf_1_addr_33, align 4
  %tmp_43_62 = fmul float %in_buf_1_load_31, %weight_buf_1_load_31
  %tmp_44_62 = fadd float %tmp_44_61, %tmp_43_62
  %weight_buf_2_load = load float* %weight_buf_2_addr_2, align 16
  %tmp_43_63 = fmul float %in_buf_2_load, %weight_buf_2_load
  %tmp_44_63 = fadd float %tmp_44_62, %tmp_43_63
  %weight_buf_2_load_1 = load float* %weight_buf_2_addr_3, align 4
  %tmp_43_64 = fmul float %in_buf_2_load_1, %weight_buf_2_load_1
  %tmp_44_64 = fadd float %tmp_44_63, %tmp_43_64
  %weight_buf_2_load_2 = load float* %weight_buf_2_addr_4, align 8
  %tmp_43_65 = fmul float %in_buf_2_load_2, %weight_buf_2_load_2
  %tmp_44_65 = fadd float %tmp_44_64, %tmp_43_65
  %weight_buf_2_load_3 = load float* %weight_buf_2_addr_5, align 4
  %tmp_43_66 = fmul float %in_buf_2_load_3, %weight_buf_2_load_3
  %tmp_44_66 = fadd float %tmp_44_65, %tmp_43_66
  %weight_buf_2_load_4 = load float* %weight_buf_2_addr_6, align 16
  %tmp_43_67 = fmul float %in_buf_2_load_4, %weight_buf_2_load_4
  %tmp_44_67 = fadd float %tmp_44_66, %tmp_43_67
  %weight_buf_2_load_5 = load float* %weight_buf_2_addr_7, align 4
  %tmp_43_68 = fmul float %in_buf_2_load_5, %weight_buf_2_load_5
  %tmp_44_68 = fadd float %tmp_44_67, %tmp_43_68
  %weight_buf_2_load_6 = load float* %weight_buf_2_addr_8, align 8
  %tmp_43_69 = fmul float %in_buf_2_load_6, %weight_buf_2_load_6
  %tmp_44_69 = fadd float %tmp_44_68, %tmp_43_69
  %weight_buf_2_load_7 = load float* %weight_buf_2_addr_9, align 4
  %tmp_43_70 = fmul float %in_buf_2_load_7, %weight_buf_2_load_7
  %tmp_44_70 = fadd float %tmp_44_69, %tmp_43_70
  %weight_buf_2_load_8 = load float* %weight_buf_2_addr_10, align 16
  %tmp_43_71 = fmul float %in_buf_2_load_8, %weight_buf_2_load_8
  %tmp_44_71 = fadd float %tmp_44_70, %tmp_43_71
  %weight_buf_2_load_9 = load float* %weight_buf_2_addr_11, align 4
  %tmp_43_72 = fmul float %in_buf_2_load_9, %weight_buf_2_load_9
  %tmp_44_72 = fadd float %tmp_44_71, %tmp_43_72
  %weight_buf_2_load_10 = load float* %weight_buf_2_addr_12, align 8
  %tmp_43_73 = fmul float %in_buf_2_load_10, %weight_buf_2_load_10
  %tmp_44_73 = fadd float %tmp_44_72, %tmp_43_73
  %weight_buf_2_load_11 = load float* %weight_buf_2_addr_13, align 4
  %tmp_43_74 = fmul float %in_buf_2_load_11, %weight_buf_2_load_11
  %tmp_44_74 = fadd float %tmp_44_73, %tmp_43_74
  %weight_buf_2_load_12 = load float* %weight_buf_2_addr_14, align 16
  %tmp_43_75 = fmul float %in_buf_2_load_12, %weight_buf_2_load_12
  %tmp_44_75 = fadd float %tmp_44_74, %tmp_43_75
  %weight_buf_2_load_13 = load float* %weight_buf_2_addr_15, align 4
  %tmp_43_76 = fmul float %in_buf_2_load_13, %weight_buf_2_load_13
  %tmp_44_76 = fadd float %tmp_44_75, %tmp_43_76
  %weight_buf_2_load_14 = load float* %weight_buf_2_addr_16, align 8
  %tmp_43_77 = fmul float %in_buf_2_load_14, %weight_buf_2_load_14
  %tmp_44_77 = fadd float %tmp_44_76, %tmp_43_77
  %weight_buf_2_load_15 = load float* %weight_buf_2_addr_17, align 4
  %tmp_43_78 = fmul float %in_buf_2_load_15, %weight_buf_2_load_15
  %tmp_44_78 = fadd float %tmp_44_77, %tmp_43_78
  %weight_buf_2_load_16 = load float* %weight_buf_2_addr_18, align 16
  %tmp_43_79 = fmul float %in_buf_2_load_16, %weight_buf_2_load_16
  %tmp_44_79 = fadd float %tmp_44_78, %tmp_43_79
  %weight_buf_2_load_17 = load float* %weight_buf_2_addr_19, align 4
  %tmp_43_80 = fmul float %in_buf_2_load_17, %weight_buf_2_load_17
  %tmp_44_80 = fadd float %tmp_44_79, %tmp_43_80
  %weight_buf_2_load_18 = load float* %weight_buf_2_addr_20, align 8
  %tmp_43_81 = fmul float %in_buf_2_load_18, %weight_buf_2_load_18
  %tmp_44_81 = fadd float %tmp_44_80, %tmp_43_81
  %weight_buf_2_load_19 = load float* %weight_buf_2_addr_21, align 4
  %tmp_43_82 = fmul float %in_buf_2_load_19, %weight_buf_2_load_19
  %tmp_44_82 = fadd float %tmp_44_81, %tmp_43_82
  %weight_buf_2_load_20 = load float* %weight_buf_2_addr_22, align 16
  %tmp_43_83 = fmul float %in_buf_2_load_20, %weight_buf_2_load_20
  %tmp_44_83 = fadd float %tmp_44_82, %tmp_43_83
  %weight_buf_2_load_21 = load float* %weight_buf_2_addr_23, align 4
  %tmp_43_84 = fmul float %in_buf_2_load_21, %weight_buf_2_load_21
  %tmp_44_84 = fadd float %tmp_44_83, %tmp_43_84
  %weight_buf_2_load_22 = load float* %weight_buf_2_addr_24, align 8
  %tmp_43_85 = fmul float %in_buf_2_load_22, %weight_buf_2_load_22
  %tmp_44_85 = fadd float %tmp_44_84, %tmp_43_85
  %weight_buf_2_load_23 = load float* %weight_buf_2_addr_25, align 4
  %tmp_43_86 = fmul float %in_buf_2_load_23, %weight_buf_2_load_23
  %tmp_44_86 = fadd float %tmp_44_85, %tmp_43_86
  %weight_buf_2_load_24 = load float* %weight_buf_2_addr_26, align 16
  %tmp_43_87 = fmul float %in_buf_2_load_24, %weight_buf_2_load_24
  %tmp_44_87 = fadd float %tmp_44_86, %tmp_43_87
  %weight_buf_2_load_25 = load float* %weight_buf_2_addr_27, align 4
  %tmp_43_88 = fmul float %in_buf_2_load_25, %weight_buf_2_load_25
  %tmp_44_88 = fadd float %tmp_44_87, %tmp_43_88
  %weight_buf_2_load_26 = load float* %weight_buf_2_addr_28, align 8
  %tmp_43_89 = fmul float %in_buf_2_load_26, %weight_buf_2_load_26
  %tmp_44_89 = fadd float %tmp_44_88, %tmp_43_89
  %weight_buf_2_load_27 = load float* %weight_buf_2_addr_29, align 4
  %tmp_43_90 = fmul float %in_buf_2_load_27, %weight_buf_2_load_27
  %tmp_44_90 = fadd float %tmp_44_89, %tmp_43_90
  %weight_buf_2_load_28 = load float* %weight_buf_2_addr_30, align 16
  %tmp_43_91 = fmul float %in_buf_2_load_28, %weight_buf_2_load_28
  %tmp_44_91 = fadd float %tmp_44_90, %tmp_43_91
  %weight_buf_2_load_29 = load float* %weight_buf_2_addr_31, align 4
  %tmp_43_92 = fmul float %in_buf_2_load_29, %weight_buf_2_load_29
  %tmp_44_92 = fadd float %tmp_44_91, %tmp_43_92
  %weight_buf_2_load_30 = load float* %weight_buf_2_addr_32, align 8
  %tmp_43_93 = fmul float %in_buf_2_load_30, %weight_buf_2_load_30
  %tmp_44_93 = fadd float %tmp_44_92, %tmp_43_93
  %weight_buf_2_load_31 = load float* %weight_buf_2_addr_33, align 4
  %tmp_43_94 = fmul float %in_buf_2_load_31, %weight_buf_2_load_31
  %tmp_44_94 = fadd float %tmp_44_93, %tmp_43_94
  %weight_buf_3_load = load float* %weight_buf_3_addr_2, align 16
  %tmp_43_95 = fmul float %in_buf_3_load, %weight_buf_3_load
  %tmp_44_95 = fadd float %tmp_44_94, %tmp_43_95
  %weight_buf_3_load_1 = load float* %weight_buf_3_addr_3, align 4
  %tmp_43_96 = fmul float %in_buf_3_load_1, %weight_buf_3_load_1
  %tmp_44_96 = fadd float %tmp_44_95, %tmp_43_96
  %weight_buf_3_load_2 = load float* %weight_buf_3_addr_4, align 8
  %tmp_43_97 = fmul float %in_buf_3_load_2, %weight_buf_3_load_2
  %tmp_44_97 = fadd float %tmp_44_96, %tmp_43_97
  %weight_buf_3_load_3 = load float* %weight_buf_3_addr_5, align 4
  %tmp_43_98 = fmul float %in_buf_3_load_3, %weight_buf_3_load_3
  %tmp_44_98 = fadd float %tmp_44_97, %tmp_43_98
  %weight_buf_3_load_4 = load float* %weight_buf_3_addr_6, align 16
  %tmp_43_99 = fmul float %in_buf_3_load_4, %weight_buf_3_load_4
  %tmp_44_99 = fadd float %tmp_44_98, %tmp_43_99
  %weight_buf_3_load_5 = load float* %weight_buf_3_addr_7, align 4
  %tmp_43_100 = fmul float %in_buf_3_load_5, %weight_buf_3_load_5
  %tmp_44_100 = fadd float %tmp_44_99, %tmp_43_100
  %weight_buf_3_load_6 = load float* %weight_buf_3_addr_8, align 8
  %tmp_43_101 = fmul float %in_buf_3_load_6, %weight_buf_3_load_6
  %tmp_44_101 = fadd float %tmp_44_100, %tmp_43_101
  %weight_buf_3_load_7 = load float* %weight_buf_3_addr_9, align 4
  %tmp_43_102 = fmul float %in_buf_3_load_7, %weight_buf_3_load_7
  %tmp_44_102 = fadd float %tmp_44_101, %tmp_43_102
  %weight_buf_3_load_8 = load float* %weight_buf_3_addr_10, align 16
  %tmp_43_103 = fmul float %in_buf_3_load_8, %weight_buf_3_load_8
  %tmp_44_103 = fadd float %tmp_44_102, %tmp_43_103
  %weight_buf_3_load_9 = load float* %weight_buf_3_addr_11, align 4
  %tmp_43_104 = fmul float %in_buf_3_load_9, %weight_buf_3_load_9
  %tmp_44_104 = fadd float %tmp_44_103, %tmp_43_104
  %weight_buf_3_load_10 = load float* %weight_buf_3_addr_12, align 8
  %tmp_43_105 = fmul float %in_buf_3_load_10, %weight_buf_3_load_10
  %tmp_44_105 = fadd float %tmp_44_104, %tmp_43_105
  %weight_buf_3_load_11 = load float* %weight_buf_3_addr_13, align 4
  %tmp_43_106 = fmul float %in_buf_3_load_11, %weight_buf_3_load_11
  %tmp_44_106 = fadd float %tmp_44_105, %tmp_43_106
  %weight_buf_3_load_12 = load float* %weight_buf_3_addr_14, align 16
  %tmp_43_107 = fmul float %in_buf_3_load_12, %weight_buf_3_load_12
  %tmp_44_107 = fadd float %tmp_44_106, %tmp_43_107
  %weight_buf_3_load_13 = load float* %weight_buf_3_addr_15, align 4
  %tmp_43_108 = fmul float %in_buf_3_load_13, %weight_buf_3_load_13
  %tmp_44_108 = fadd float %tmp_44_107, %tmp_43_108
  %weight_buf_3_load_14 = load float* %weight_buf_3_addr_16, align 8
  %tmp_43_109 = fmul float %in_buf_3_load_14, %weight_buf_3_load_14
  %tmp_44_109 = fadd float %tmp_44_108, %tmp_43_109
  %weight_buf_3_load_15 = load float* %weight_buf_3_addr_17, align 4
  %tmp_43_110 = fmul float %in_buf_3_load_15, %weight_buf_3_load_15
  %tmp_44_110 = fadd float %tmp_44_109, %tmp_43_110
  %weight_buf_3_load_16 = load float* %weight_buf_3_addr_18, align 16
  %tmp_43_111 = fmul float %in_buf_3_load_16, %weight_buf_3_load_16
  %tmp_44_111 = fadd float %tmp_44_110, %tmp_43_111
  %weight_buf_3_load_17 = load float* %weight_buf_3_addr_19, align 4
  %tmp_43_112 = fmul float %in_buf_3_load_17, %weight_buf_3_load_17
  %tmp_44_112 = fadd float %tmp_44_111, %tmp_43_112
  %weight_buf_3_load_18 = load float* %weight_buf_3_addr_20, align 8
  %tmp_43_113 = fmul float %in_buf_3_load_18, %weight_buf_3_load_18
  %tmp_44_113 = fadd float %tmp_44_112, %tmp_43_113
  %weight_buf_3_load_19 = load float* %weight_buf_3_addr_21, align 4
  %tmp_43_114 = fmul float %in_buf_3_load_19, %weight_buf_3_load_19
  %tmp_44_114 = fadd float %tmp_44_113, %tmp_43_114
  %weight_buf_3_load_20 = load float* %weight_buf_3_addr_22, align 16
  %tmp_43_115 = fmul float %in_buf_3_load_20, %weight_buf_3_load_20
  %tmp_44_115 = fadd float %tmp_44_114, %tmp_43_115
  %weight_buf_3_load_21 = load float* %weight_buf_3_addr_23, align 4
  %tmp_43_116 = fmul float %in_buf_3_load_21, %weight_buf_3_load_21
  %tmp_44_116 = fadd float %tmp_44_115, %tmp_43_116
  %weight_buf_3_load_22 = load float* %weight_buf_3_addr_24, align 8
  %tmp_43_117 = fmul float %in_buf_3_load_22, %weight_buf_3_load_22
  %tmp_44_117 = fadd float %tmp_44_116, %tmp_43_117
  %weight_buf_3_load_23 = load float* %weight_buf_3_addr_25, align 4
  %tmp_43_118 = fmul float %in_buf_3_load_23, %weight_buf_3_load_23
  %tmp_44_118 = fadd float %tmp_44_117, %tmp_43_118
  %weight_buf_3_load_24 = load float* %weight_buf_3_addr_26, align 16
  %tmp_43_119 = fmul float %in_buf_3_load_24, %weight_buf_3_load_24
  %tmp_44_119 = fadd float %tmp_44_118, %tmp_43_119
  %weight_buf_3_load_25 = load float* %weight_buf_3_addr_27, align 4
  %tmp_43_120 = fmul float %in_buf_3_load_25, %weight_buf_3_load_25
  %tmp_44_120 = fadd float %tmp_44_119, %tmp_43_120
  %weight_buf_3_load_26 = load float* %weight_buf_3_addr_28, align 8
  %tmp_43_121 = fmul float %in_buf_3_load_26, %weight_buf_3_load_26
  %tmp_44_121 = fadd float %tmp_44_120, %tmp_43_121
  %weight_buf_3_load_27 = load float* %weight_buf_3_addr_29, align 4
  %tmp_43_122 = fmul float %in_buf_3_load_27, %weight_buf_3_load_27
  %tmp_44_122 = fadd float %tmp_44_121, %tmp_43_122
  %weight_buf_3_load_28 = load float* %weight_buf_3_addr_30, align 16
  %tmp_43_123 = fmul float %in_buf_3_load_28, %weight_buf_3_load_28
  %tmp_44_123 = fadd float %tmp_44_122, %tmp_43_123
  %weight_buf_3_load_29 = load float* %weight_buf_3_addr_31, align 4
  %tmp_43_124 = fmul float %in_buf_3_load_29, %weight_buf_3_load_29
  %tmp_44_124 = fadd float %tmp_44_123, %tmp_43_124
  %weight_buf_3_load_30 = load float* %weight_buf_3_addr_32, align 8
  %tmp_43_125 = fmul float %in_buf_3_load_30, %weight_buf_3_load_30
  %tmp_44_125 = fadd float %tmp_44_124, %tmp_43_125
  %weight_buf_3_load_31 = load float* %weight_buf_3_addr_33, align 4
  %tmp_43_126 = fmul float %in_buf_3_load_31, %weight_buf_3_load_31
  %tmp_44_126 = fadd float %tmp_44_125, %tmp_43_126
  %weight_buf_4_load = load float* %weight_buf_4_addr_2, align 16
  %tmp_43_127 = fmul float %in_buf_4_load, %weight_buf_4_load
  %tmp_44_127 = fadd float %tmp_44_126, %tmp_43_127
  %weight_buf_4_load_1 = load float* %weight_buf_4_addr_3, align 4
  %tmp_43_128 = fmul float %in_buf_4_load_1, %weight_buf_4_load_1
  %tmp_44_128 = fadd float %tmp_44_127, %tmp_43_128
  %weight_buf_4_load_2 = load float* %weight_buf_4_addr_4, align 8
  %tmp_43_129 = fmul float %in_buf_4_load_2, %weight_buf_4_load_2
  %tmp_44_129 = fadd float %tmp_44_128, %tmp_43_129
  %weight_buf_4_load_3 = load float* %weight_buf_4_addr_5, align 4
  %tmp_43_130 = fmul float %in_buf_4_load_3, %weight_buf_4_load_3
  %tmp_44_130 = fadd float %tmp_44_129, %tmp_43_130
  %weight_buf_4_load_4 = load float* %weight_buf_4_addr_6, align 16
  %tmp_43_131 = fmul float %in_buf_4_load_4, %weight_buf_4_load_4
  %tmp_44_131 = fadd float %tmp_44_130, %tmp_43_131
  %weight_buf_4_load_5 = load float* %weight_buf_4_addr_7, align 4
  %tmp_43_132 = fmul float %in_buf_4_load_5, %weight_buf_4_load_5
  %tmp_44_132 = fadd float %tmp_44_131, %tmp_43_132
  %weight_buf_4_load_6 = load float* %weight_buf_4_addr_8, align 8
  %tmp_43_133 = fmul float %in_buf_4_load_6, %weight_buf_4_load_6
  %tmp_44_133 = fadd float %tmp_44_132, %tmp_43_133
  %weight_buf_4_load_7 = load float* %weight_buf_4_addr_9, align 4
  %tmp_43_134 = fmul float %in_buf_4_load_7, %weight_buf_4_load_7
  %tmp_44_134 = fadd float %tmp_44_133, %tmp_43_134
  %weight_buf_4_load_8 = load float* %weight_buf_4_addr_10, align 16
  %tmp_43_135 = fmul float %in_buf_4_load_8, %weight_buf_4_load_8
  %tmp_44_135 = fadd float %tmp_44_134, %tmp_43_135
  %weight_buf_4_load_9 = load float* %weight_buf_4_addr_11, align 4
  %tmp_43_136 = fmul float %in_buf_4_load_9, %weight_buf_4_load_9
  %tmp_44_136 = fadd float %tmp_44_135, %tmp_43_136
  %weight_buf_4_load_10 = load float* %weight_buf_4_addr_12, align 8
  %tmp_43_137 = fmul float %in_buf_4_load_10, %weight_buf_4_load_10
  %tmp_44_137 = fadd float %tmp_44_136, %tmp_43_137
  %weight_buf_4_load_11 = load float* %weight_buf_4_addr_13, align 4
  %tmp_43_138 = fmul float %in_buf_4_load_11, %weight_buf_4_load_11
  %tmp_44_138 = fadd float %tmp_44_137, %tmp_43_138
  %weight_buf_4_load_12 = load float* %weight_buf_4_addr_14, align 16
  %tmp_43_139 = fmul float %in_buf_4_load_12, %weight_buf_4_load_12
  %tmp_44_139 = fadd float %tmp_44_138, %tmp_43_139
  %weight_buf_4_load_13 = load float* %weight_buf_4_addr_15, align 4
  %tmp_43_140 = fmul float %in_buf_4_load_13, %weight_buf_4_load_13
  %tmp_44_140 = fadd float %tmp_44_139, %tmp_43_140
  %weight_buf_4_load_14 = load float* %weight_buf_4_addr_16, align 8
  %tmp_43_141 = fmul float %in_buf_4_load_14, %weight_buf_4_load_14
  %tmp_44_141 = fadd float %tmp_44_140, %tmp_43_141
  %weight_buf_4_load_15 = load float* %weight_buf_4_addr_17, align 4
  %tmp_43_142 = fmul float %in_buf_4_load_15, %weight_buf_4_load_15
  %tmp_44_142 = fadd float %tmp_44_141, %tmp_43_142
  %weight_buf_4_load_16 = load float* %weight_buf_4_addr_18, align 16
  %tmp_43_143 = fmul float %in_buf_4_load_16, %weight_buf_4_load_16
  %tmp_44_143 = fadd float %tmp_44_142, %tmp_43_143
  %weight_buf_4_load_17 = load float* %weight_buf_4_addr_19, align 4
  %tmp_43_144 = fmul float %in_buf_4_load_17, %weight_buf_4_load_17
  %tmp_44_144 = fadd float %tmp_44_143, %tmp_43_144
  %weight_buf_4_load_18 = load float* %weight_buf_4_addr_20, align 8
  %tmp_43_145 = fmul float %in_buf_4_load_18, %weight_buf_4_load_18
  %tmp_44_145 = fadd float %tmp_44_144, %tmp_43_145
  %weight_buf_4_load_19 = load float* %weight_buf_4_addr_21, align 4
  %tmp_43_146 = fmul float %in_buf_4_load_19, %weight_buf_4_load_19
  %tmp_44_146 = fadd float %tmp_44_145, %tmp_43_146
  %weight_buf_4_load_20 = load float* %weight_buf_4_addr_22, align 16
  %tmp_43_147 = fmul float %in_buf_4_load_20, %weight_buf_4_load_20
  %tmp_44_147 = fadd float %tmp_44_146, %tmp_43_147
  %weight_buf_4_load_21 = load float* %weight_buf_4_addr_23, align 4
  %tmp_43_148 = fmul float %in_buf_4_load_21, %weight_buf_4_load_21
  %tmp_44_148 = fadd float %tmp_44_147, %tmp_43_148
  %weight_buf_4_load_22 = load float* %weight_buf_4_addr_24, align 8
  %tmp_43_149 = fmul float %in_buf_4_load_22, %weight_buf_4_load_22
  %tmp_44_149 = fadd float %tmp_44_148, %tmp_43_149
  %weight_buf_4_load_23 = load float* %weight_buf_4_addr_25, align 4
  %tmp_43_150 = fmul float %in_buf_4_load_23, %weight_buf_4_load_23
  %tmp_44_150 = fadd float %tmp_44_149, %tmp_43_150
  %weight_buf_4_load_24 = load float* %weight_buf_4_addr_26, align 16
  %tmp_43_151 = fmul float %in_buf_4_load_24, %weight_buf_4_load_24
  %tmp_44_151 = fadd float %tmp_44_150, %tmp_43_151
  %weight_buf_4_load_25 = load float* %weight_buf_4_addr_27, align 4
  %tmp_43_152 = fmul float %in_buf_4_load_25, %weight_buf_4_load_25
  %tmp_44_152 = fadd float %tmp_44_151, %tmp_43_152
  %weight_buf_4_load_26 = load float* %weight_buf_4_addr_28, align 8
  %tmp_43_153 = fmul float %in_buf_4_load_26, %weight_buf_4_load_26
  %tmp_44_153 = fadd float %tmp_44_152, %tmp_43_153
  %weight_buf_4_load_27 = load float* %weight_buf_4_addr_29, align 4
  %tmp_43_154 = fmul float %in_buf_4_load_27, %weight_buf_4_load_27
  %tmp_44_154 = fadd float %tmp_44_153, %tmp_43_154
  %weight_buf_4_load_28 = load float* %weight_buf_4_addr_30, align 16
  %tmp_43_155 = fmul float %in_buf_4_load_28, %weight_buf_4_load_28
  %tmp_44_155 = fadd float %tmp_44_154, %tmp_43_155
  %weight_buf_4_load_29 = load float* %weight_buf_4_addr_31, align 4
  %tmp_43_156 = fmul float %in_buf_4_load_29, %weight_buf_4_load_29
  %tmp_44_156 = fadd float %tmp_44_155, %tmp_43_156
  %weight_buf_4_load_30 = load float* %weight_buf_4_addr_32, align 8
  %tmp_43_157 = fmul float %in_buf_4_load_30, %weight_buf_4_load_30
  %tmp_44_157 = fadd float %tmp_44_156, %tmp_43_157
  %weight_buf_4_load_31 = load float* %weight_buf_4_addr_33, align 4
  %tmp_43_158 = fmul float %in_buf_4_load_31, %weight_buf_4_load_31
  %tmp_44_158 = fadd float %tmp_44_157, %tmp_43_158
  %weight_buf_5_load = load float* %weight_buf_5_addr_2, align 16
  %tmp_43_159 = fmul float %in_buf_5_load, %weight_buf_5_load
  %tmp_44_159 = fadd float %tmp_44_158, %tmp_43_159
  %weight_buf_5_load_1 = load float* %weight_buf_5_addr_3, align 4
  %tmp_43_160 = fmul float %in_buf_5_load_1, %weight_buf_5_load_1
  %tmp_44_160 = fadd float %tmp_44_159, %tmp_43_160
  %weight_buf_5_load_2 = load float* %weight_buf_5_addr_4, align 8
  %tmp_43_161 = fmul float %in_buf_5_load_2, %weight_buf_5_load_2
  %tmp_44_161 = fadd float %tmp_44_160, %tmp_43_161
  %weight_buf_5_load_3 = load float* %weight_buf_5_addr_5, align 4
  %tmp_43_162 = fmul float %in_buf_5_load_3, %weight_buf_5_load_3
  %tmp_44_162 = fadd float %tmp_44_161, %tmp_43_162
  %weight_buf_5_load_4 = load float* %weight_buf_5_addr_6, align 16
  %tmp_43_163 = fmul float %in_buf_5_load_4, %weight_buf_5_load_4
  %tmp_44_163 = fadd float %tmp_44_162, %tmp_43_163
  %weight_buf_5_load_5 = load float* %weight_buf_5_addr_7, align 4
  %tmp_43_164 = fmul float %in_buf_5_load_5, %weight_buf_5_load_5
  %tmp_44_164 = fadd float %tmp_44_163, %tmp_43_164
  %weight_buf_5_load_6 = load float* %weight_buf_5_addr_8, align 8
  %tmp_43_165 = fmul float %in_buf_5_load_6, %weight_buf_5_load_6
  %tmp_44_165 = fadd float %tmp_44_164, %tmp_43_165
  %weight_buf_5_load_7 = load float* %weight_buf_5_addr_9, align 4
  %tmp_43_166 = fmul float %in_buf_5_load_7, %weight_buf_5_load_7
  %tmp_44_166 = fadd float %tmp_44_165, %tmp_43_166
  %weight_buf_5_load_8 = load float* %weight_buf_5_addr_10, align 16
  %tmp_43_167 = fmul float %in_buf_5_load_8, %weight_buf_5_load_8
  %tmp_44_167 = fadd float %tmp_44_166, %tmp_43_167
  %weight_buf_5_load_9 = load float* %weight_buf_5_addr_11, align 4
  %tmp_43_168 = fmul float %in_buf_5_load_9, %weight_buf_5_load_9
  %tmp_44_168 = fadd float %tmp_44_167, %tmp_43_168
  %weight_buf_5_load_10 = load float* %weight_buf_5_addr_12, align 8
  %tmp_43_169 = fmul float %in_buf_5_load_10, %weight_buf_5_load_10
  %tmp_44_169 = fadd float %tmp_44_168, %tmp_43_169
  %weight_buf_5_load_11 = load float* %weight_buf_5_addr_13, align 4
  %tmp_43_170 = fmul float %in_buf_5_load_11, %weight_buf_5_load_11
  %tmp_44_170 = fadd float %tmp_44_169, %tmp_43_170
  %weight_buf_5_load_12 = load float* %weight_buf_5_addr_14, align 16
  %tmp_43_171 = fmul float %in_buf_5_load_12, %weight_buf_5_load_12
  %tmp_44_171 = fadd float %tmp_44_170, %tmp_43_171
  %weight_buf_5_load_13 = load float* %weight_buf_5_addr_15, align 4
  %tmp_43_172 = fmul float %in_buf_5_load_13, %weight_buf_5_load_13
  %tmp_44_172 = fadd float %tmp_44_171, %tmp_43_172
  %weight_buf_5_load_14 = load float* %weight_buf_5_addr_16, align 8
  %tmp_43_173 = fmul float %in_buf_5_load_14, %weight_buf_5_load_14
  %tmp_44_173 = fadd float %tmp_44_172, %tmp_43_173
  %weight_buf_5_load_15 = load float* %weight_buf_5_addr_17, align 4
  %tmp_43_174 = fmul float %in_buf_5_load_15, %weight_buf_5_load_15
  %tmp_44_174 = fadd float %tmp_44_173, %tmp_43_174
  %weight_buf_5_load_16 = load float* %weight_buf_5_addr_18, align 16
  %tmp_43_175 = fmul float %in_buf_5_load_16, %weight_buf_5_load_16
  %tmp_44_175 = fadd float %tmp_44_174, %tmp_43_175
  %weight_buf_5_load_17 = load float* %weight_buf_5_addr_19, align 4
  %tmp_43_176 = fmul float %in_buf_5_load_17, %weight_buf_5_load_17
  %tmp_44_176 = fadd float %tmp_44_175, %tmp_43_176
  %weight_buf_5_load_18 = load float* %weight_buf_5_addr_20, align 8
  %tmp_43_177 = fmul float %in_buf_5_load_18, %weight_buf_5_load_18
  %tmp_44_177 = fadd float %tmp_44_176, %tmp_43_177
  %weight_buf_5_load_19 = load float* %weight_buf_5_addr_21, align 4
  %tmp_43_178 = fmul float %in_buf_5_load_19, %weight_buf_5_load_19
  %tmp_44_178 = fadd float %tmp_44_177, %tmp_43_178
  %weight_buf_5_load_20 = load float* %weight_buf_5_addr_22, align 16
  %tmp_43_179 = fmul float %in_buf_5_load_20, %weight_buf_5_load_20
  %tmp_44_179 = fadd float %tmp_44_178, %tmp_43_179
  %weight_buf_5_load_21 = load float* %weight_buf_5_addr_23, align 4
  %tmp_43_180 = fmul float %in_buf_5_load_21, %weight_buf_5_load_21
  %tmp_44_180 = fadd float %tmp_44_179, %tmp_43_180
  %weight_buf_5_load_22 = load float* %weight_buf_5_addr_24, align 8
  %tmp_43_181 = fmul float %in_buf_5_load_22, %weight_buf_5_load_22
  %tmp_44_181 = fadd float %tmp_44_180, %tmp_43_181
  %weight_buf_5_load_23 = load float* %weight_buf_5_addr_25, align 4
  %tmp_43_182 = fmul float %in_buf_5_load_23, %weight_buf_5_load_23
  %tmp_44_182 = fadd float %tmp_44_181, %tmp_43_182
  %weight_buf_5_load_24 = load float* %weight_buf_5_addr_26, align 16
  %tmp_43_183 = fmul float %in_buf_5_load_24, %weight_buf_5_load_24
  %tmp_44_183 = fadd float %tmp_44_182, %tmp_43_183
  %weight_buf_5_load_25 = load float* %weight_buf_5_addr_27, align 4
  %tmp_43_184 = fmul float %in_buf_5_load_25, %weight_buf_5_load_25
  %tmp_44_184 = fadd float %tmp_44_183, %tmp_43_184
  %weight_buf_5_load_26 = load float* %weight_buf_5_addr_28, align 8
  %tmp_43_185 = fmul float %in_buf_5_load_26, %weight_buf_5_load_26
  %tmp_44_185 = fadd float %tmp_44_184, %tmp_43_185
  %weight_buf_5_load_27 = load float* %weight_buf_5_addr_29, align 4
  %tmp_43_186 = fmul float %in_buf_5_load_27, %weight_buf_5_load_27
  %tmp_44_186 = fadd float %tmp_44_185, %tmp_43_186
  %weight_buf_5_load_28 = load float* %weight_buf_5_addr_30, align 16
  %tmp_43_187 = fmul float %in_buf_5_load_28, %weight_buf_5_load_28
  %tmp_44_187 = fadd float %tmp_44_186, %tmp_43_187
  %weight_buf_5_load_29 = load float* %weight_buf_5_addr_31, align 4
  %tmp_43_188 = fmul float %in_buf_5_load_29, %weight_buf_5_load_29
  %tmp_44_188 = fadd float %tmp_44_187, %tmp_43_188
  %weight_buf_5_load_30 = load float* %weight_buf_5_addr_32, align 8
  %tmp_43_189 = fmul float %in_buf_5_load_30, %weight_buf_5_load_30
  %tmp_44_189 = fadd float %tmp_44_188, %tmp_43_189
  %weight_buf_5_load_31 = load float* %weight_buf_5_addr_33, align 4
  %tmp_43_190 = fmul float %in_buf_5_load_31, %weight_buf_5_load_31
  %tmp_44_190 = fadd float %tmp_44_189, %tmp_43_190
  %weight_buf_6_load = load float* %weight_buf_6_addr_2, align 16
  %tmp_43_191 = fmul float %in_buf_6_load, %weight_buf_6_load
  %tmp_44_191 = fadd float %tmp_44_190, %tmp_43_191
  %weight_buf_6_load_1 = load float* %weight_buf_6_addr_3, align 4
  %tmp_43_192 = fmul float %in_buf_6_load_1, %weight_buf_6_load_1
  %tmp_44_192 = fadd float %tmp_44_191, %tmp_43_192
  %weight_buf_6_load_2 = load float* %weight_buf_6_addr_4, align 8
  %tmp_43_193 = fmul float %in_buf_6_load_2, %weight_buf_6_load_2
  %tmp_44_193 = fadd float %tmp_44_192, %tmp_43_193
  %weight_buf_6_load_3 = load float* %weight_buf_6_addr_5, align 4
  %tmp_43_194 = fmul float %in_buf_6_load_3, %weight_buf_6_load_3
  %tmp_44_194 = fadd float %tmp_44_193, %tmp_43_194
  %weight_buf_6_load_4 = load float* %weight_buf_6_addr_6, align 16
  %tmp_43_195 = fmul float %in_buf_6_load_4, %weight_buf_6_load_4
  %tmp_44_195 = fadd float %tmp_44_194, %tmp_43_195
  %weight_buf_6_load_5 = load float* %weight_buf_6_addr_7, align 4
  %tmp_43_196 = fmul float %in_buf_6_load_5, %weight_buf_6_load_5
  %tmp_44_196 = fadd float %tmp_44_195, %tmp_43_196
  %weight_buf_6_load_6 = load float* %weight_buf_6_addr_8, align 8
  %tmp_43_197 = fmul float %in_buf_6_load_6, %weight_buf_6_load_6
  %tmp_44_197 = fadd float %tmp_44_196, %tmp_43_197
  %weight_buf_6_load_7 = load float* %weight_buf_6_addr_9, align 4
  %tmp_43_198 = fmul float %in_buf_6_load_7, %weight_buf_6_load_7
  %tmp_44_198 = fadd float %tmp_44_197, %tmp_43_198
  %weight_buf_6_load_8 = load float* %weight_buf_6_addr_10, align 16
  %tmp_43_199 = fmul float %in_buf_6_load_8, %weight_buf_6_load_8
  %tmp_44_199 = fadd float %tmp_44_198, %tmp_43_199
  %weight_buf_6_load_9 = load float* %weight_buf_6_addr_11, align 4
  %tmp_43_200 = fmul float %in_buf_6_load_9, %weight_buf_6_load_9
  %tmp_44_200 = fadd float %tmp_44_199, %tmp_43_200
  %weight_buf_6_load_10 = load float* %weight_buf_6_addr_12, align 8
  %tmp_43_201 = fmul float %in_buf_6_load_10, %weight_buf_6_load_10
  %tmp_44_201 = fadd float %tmp_44_200, %tmp_43_201
  %weight_buf_6_load_11 = load float* %weight_buf_6_addr_13, align 4
  %tmp_43_202 = fmul float %in_buf_6_load_11, %weight_buf_6_load_11
  %tmp_44_202 = fadd float %tmp_44_201, %tmp_43_202
  %weight_buf_6_load_12 = load float* %weight_buf_6_addr_14, align 16
  %tmp_43_203 = fmul float %in_buf_6_load_12, %weight_buf_6_load_12
  %tmp_44_203 = fadd float %tmp_44_202, %tmp_43_203
  %weight_buf_6_load_13 = load float* %weight_buf_6_addr_15, align 4
  %tmp_43_204 = fmul float %in_buf_6_load_13, %weight_buf_6_load_13
  %tmp_44_204 = fadd float %tmp_44_203, %tmp_43_204
  %weight_buf_6_load_14 = load float* %weight_buf_6_addr_16, align 8
  %tmp_43_205 = fmul float %in_buf_6_load_14, %weight_buf_6_load_14
  %tmp_44_205 = fadd float %tmp_44_204, %tmp_43_205
  %weight_buf_6_load_15 = load float* %weight_buf_6_addr_17, align 4
  %tmp_43_206 = fmul float %in_buf_6_load_15, %weight_buf_6_load_15
  %tmp_44_206 = fadd float %tmp_44_205, %tmp_43_206
  %weight_buf_6_load_16 = load float* %weight_buf_6_addr_18, align 16
  %tmp_43_207 = fmul float %in_buf_6_load_16, %weight_buf_6_load_16
  %tmp_44_207 = fadd float %tmp_44_206, %tmp_43_207
  %weight_buf_6_load_17 = load float* %weight_buf_6_addr_19, align 4
  %tmp_43_208 = fmul float %in_buf_6_load_17, %weight_buf_6_load_17
  %tmp_44_208 = fadd float %tmp_44_207, %tmp_43_208
  %weight_buf_6_load_18 = load float* %weight_buf_6_addr_20, align 8
  %tmp_43_209 = fmul float %in_buf_6_load_18, %weight_buf_6_load_18
  %tmp_44_209 = fadd float %tmp_44_208, %tmp_43_209
  %weight_buf_6_load_19 = load float* %weight_buf_6_addr_21, align 4
  %tmp_43_210 = fmul float %in_buf_6_load_19, %weight_buf_6_load_19
  %tmp_44_210 = fadd float %tmp_44_209, %tmp_43_210
  %weight_buf_6_load_20 = load float* %weight_buf_6_addr_22, align 16
  %tmp_43_211 = fmul float %in_buf_6_load_20, %weight_buf_6_load_20
  %tmp_44_211 = fadd float %tmp_44_210, %tmp_43_211
  %weight_buf_6_load_21 = load float* %weight_buf_6_addr_23, align 4
  %tmp_43_212 = fmul float %in_buf_6_load_21, %weight_buf_6_load_21
  %tmp_44_212 = fadd float %tmp_44_211, %tmp_43_212
  %weight_buf_6_load_22 = load float* %weight_buf_6_addr_24, align 8
  %tmp_43_213 = fmul float %in_buf_6_load_22, %weight_buf_6_load_22
  %tmp_44_213 = fadd float %tmp_44_212, %tmp_43_213
  %weight_buf_6_load_23 = load float* %weight_buf_6_addr_25, align 4
  %tmp_43_214 = fmul float %in_buf_6_load_23, %weight_buf_6_load_23
  %tmp_44_214 = fadd float %tmp_44_213, %tmp_43_214
  %weight_buf_6_load_24 = load float* %weight_buf_6_addr_26, align 16
  %tmp_43_215 = fmul float %in_buf_6_load_24, %weight_buf_6_load_24
  %tmp_44_215 = fadd float %tmp_44_214, %tmp_43_215
  %weight_buf_6_load_25 = load float* %weight_buf_6_addr_27, align 4
  %tmp_43_216 = fmul float %in_buf_6_load_25, %weight_buf_6_load_25
  %tmp_44_216 = fadd float %tmp_44_215, %tmp_43_216
  %weight_buf_6_load_26 = load float* %weight_buf_6_addr_28, align 8
  %tmp_43_217 = fmul float %in_buf_6_load_26, %weight_buf_6_load_26
  %tmp_44_217 = fadd float %tmp_44_216, %tmp_43_217
  %weight_buf_6_load_27 = load float* %weight_buf_6_addr_29, align 4
  %tmp_43_218 = fmul float %in_buf_6_load_27, %weight_buf_6_load_27
  %tmp_44_218 = fadd float %tmp_44_217, %tmp_43_218
  %weight_buf_6_load_28 = load float* %weight_buf_6_addr_30, align 16
  %tmp_43_219 = fmul float %in_buf_6_load_28, %weight_buf_6_load_28
  %tmp_44_219 = fadd float %tmp_44_218, %tmp_43_219
  %weight_buf_6_load_29 = load float* %weight_buf_6_addr_31, align 4
  %tmp_43_220 = fmul float %in_buf_6_load_29, %weight_buf_6_load_29
  %tmp_44_220 = fadd float %tmp_44_219, %tmp_43_220
  %weight_buf_6_load_30 = load float* %weight_buf_6_addr_32, align 8
  %tmp_43_221 = fmul float %in_buf_6_load_30, %weight_buf_6_load_30
  %tmp_44_221 = fadd float %tmp_44_220, %tmp_43_221
  %weight_buf_6_load_31 = load float* %weight_buf_6_addr_33, align 4
  %tmp_43_222 = fmul float %in_buf_6_load_31, %weight_buf_6_load_31
  %tmp_44_222 = fadd float %tmp_44_221, %tmp_43_222
  %weight_buf_7_load = load float* %weight_buf_7_addr_2, align 16
  %tmp_43_223 = fmul float %in_buf_7_load, %weight_buf_7_load
  %tmp_44_223 = fadd float %tmp_44_222, %tmp_43_223
  %weight_buf_7_load_1 = load float* %weight_buf_7_addr_3, align 4
  %tmp_43_224 = fmul float %in_buf_7_load_1, %weight_buf_7_load_1
  %tmp_44_224 = fadd float %tmp_44_223, %tmp_43_224
  %weight_buf_7_load_2 = load float* %weight_buf_7_addr_4, align 8
  %tmp_43_225 = fmul float %in_buf_7_load_2, %weight_buf_7_load_2
  %tmp_44_225 = fadd float %tmp_44_224, %tmp_43_225
  %weight_buf_7_load_3 = load float* %weight_buf_7_addr_5, align 4
  %tmp_43_226 = fmul float %in_buf_7_load_3, %weight_buf_7_load_3
  %tmp_44_226 = fadd float %tmp_44_225, %tmp_43_226
  %weight_buf_7_load_4 = load float* %weight_buf_7_addr_6, align 16
  %tmp_43_227 = fmul float %in_buf_7_load_4, %weight_buf_7_load_4
  %tmp_44_227 = fadd float %tmp_44_226, %tmp_43_227
  %weight_buf_7_load_5 = load float* %weight_buf_7_addr_7, align 4
  %tmp_43_228 = fmul float %in_buf_7_load_5, %weight_buf_7_load_5
  %tmp_44_228 = fadd float %tmp_44_227, %tmp_43_228
  %weight_buf_7_load_6 = load float* %weight_buf_7_addr_8, align 8
  %tmp_43_229 = fmul float %in_buf_7_load_6, %weight_buf_7_load_6
  %tmp_44_229 = fadd float %tmp_44_228, %tmp_43_229
  %weight_buf_7_load_7 = load float* %weight_buf_7_addr_9, align 4
  %tmp_43_230 = fmul float %in_buf_7_load_7, %weight_buf_7_load_7
  %tmp_44_230 = fadd float %tmp_44_229, %tmp_43_230
  %weight_buf_7_load_8 = load float* %weight_buf_7_addr_10, align 16
  %tmp_43_231 = fmul float %in_buf_7_load_8, %weight_buf_7_load_8
  %tmp_44_231 = fadd float %tmp_44_230, %tmp_43_231
  %weight_buf_7_load_9 = load float* %weight_buf_7_addr_11, align 4
  %tmp_43_232 = fmul float %in_buf_7_load_9, %weight_buf_7_load_9
  %tmp_44_232 = fadd float %tmp_44_231, %tmp_43_232
  %weight_buf_7_load_10 = load float* %weight_buf_7_addr_12, align 8
  %tmp_43_233 = fmul float %in_buf_7_load_10, %weight_buf_7_load_10
  %tmp_44_233 = fadd float %tmp_44_232, %tmp_43_233
  %weight_buf_7_load_11 = load float* %weight_buf_7_addr_13, align 4
  %tmp_43_234 = fmul float %in_buf_7_load_11, %weight_buf_7_load_11
  %tmp_44_234 = fadd float %tmp_44_233, %tmp_43_234
  %weight_buf_7_load_12 = load float* %weight_buf_7_addr_14, align 16
  %tmp_43_235 = fmul float %in_buf_7_load_12, %weight_buf_7_load_12
  %tmp_44_235 = fadd float %tmp_44_234, %tmp_43_235
  %weight_buf_7_load_13 = load float* %weight_buf_7_addr_15, align 4
  %tmp_43_236 = fmul float %in_buf_7_load_13, %weight_buf_7_load_13
  %tmp_44_236 = fadd float %tmp_44_235, %tmp_43_236
  %weight_buf_7_load_14 = load float* %weight_buf_7_addr_16, align 8
  %tmp_43_237 = fmul float %in_buf_7_load_14, %weight_buf_7_load_14
  %tmp_44_237 = fadd float %tmp_44_236, %tmp_43_237
  %weight_buf_7_load_15 = load float* %weight_buf_7_addr_17, align 4
  %tmp_43_238 = fmul float %in_buf_7_load_15, %weight_buf_7_load_15
  %tmp_44_238 = fadd float %tmp_44_237, %tmp_43_238
  %weight_buf_7_load_16 = load float* %weight_buf_7_addr_18, align 16
  %tmp_43_239 = fmul float %in_buf_7_load_16, %weight_buf_7_load_16
  %tmp_44_239 = fadd float %tmp_44_238, %tmp_43_239
  %weight_buf_7_load_17 = load float* %weight_buf_7_addr_19, align 4
  %tmp_43_240 = fmul float %in_buf_7_load_17, %weight_buf_7_load_17
  %tmp_44_240 = fadd float %tmp_44_239, %tmp_43_240
  %weight_buf_7_load_18 = load float* %weight_buf_7_addr_20, align 8
  %tmp_43_241 = fmul float %in_buf_7_load_18, %weight_buf_7_load_18
  %tmp_44_241 = fadd float %tmp_44_240, %tmp_43_241
  %weight_buf_7_load_19 = load float* %weight_buf_7_addr_21, align 4
  %tmp_43_242 = fmul float %in_buf_7_load_19, %weight_buf_7_load_19
  %tmp_44_242 = fadd float %tmp_44_241, %tmp_43_242
  %weight_buf_7_load_20 = load float* %weight_buf_7_addr_22, align 16
  %tmp_43_243 = fmul float %in_buf_7_load_20, %weight_buf_7_load_20
  %tmp_44_243 = fadd float %tmp_44_242, %tmp_43_243
  %weight_buf_7_load_21 = load float* %weight_buf_7_addr_23, align 4
  %tmp_43_244 = fmul float %in_buf_7_load_21, %weight_buf_7_load_21
  %tmp_44_244 = fadd float %tmp_44_243, %tmp_43_244
  %weight_buf_7_load_22 = load float* %weight_buf_7_addr_24, align 8
  %tmp_43_245 = fmul float %in_buf_7_load_22, %weight_buf_7_load_22
  %tmp_44_245 = fadd float %tmp_44_244, %tmp_43_245
  %weight_buf_7_load_23 = load float* %weight_buf_7_addr_25, align 4
  %tmp_43_246 = fmul float %in_buf_7_load_23, %weight_buf_7_load_23
  %tmp_44_246 = fadd float %tmp_44_245, %tmp_43_246
  %weight_buf_7_load_24 = load float* %weight_buf_7_addr_26, align 16
  %tmp_43_247 = fmul float %in_buf_7_load_24, %weight_buf_7_load_24
  %tmp_44_247 = fadd float %tmp_44_246, %tmp_43_247
  %weight_buf_7_load_25 = load float* %weight_buf_7_addr_27, align 4
  %tmp_43_248 = fmul float %in_buf_7_load_25, %weight_buf_7_load_25
  %tmp_44_248 = fadd float %tmp_44_247, %tmp_43_248
  %weight_buf_7_load_26 = load float* %weight_buf_7_addr_28, align 8
  %tmp_43_249 = fmul float %in_buf_7_load_26, %weight_buf_7_load_26
  %tmp_44_249 = fadd float %tmp_44_248, %tmp_43_249
  %weight_buf_7_load_27 = load float* %weight_buf_7_addr_29, align 4
  %tmp_43_250 = fmul float %in_buf_7_load_27, %weight_buf_7_load_27
  %tmp_44_250 = fadd float %tmp_44_249, %tmp_43_250
  %weight_buf_7_load_28 = load float* %weight_buf_7_addr_30, align 16
  %tmp_43_251 = fmul float %in_buf_7_load_28, %weight_buf_7_load_28
  %tmp_44_251 = fadd float %tmp_44_250, %tmp_43_251
  %weight_buf_7_load_29 = load float* %weight_buf_7_addr_31, align 4
  %tmp_43_252 = fmul float %in_buf_7_load_29, %weight_buf_7_load_29
  %tmp_44_252 = fadd float %tmp_44_251, %tmp_43_252
  %weight_buf_7_load_30 = load float* %weight_buf_7_addr_32, align 8
  %tmp_43_253 = fmul float %in_buf_7_load_30, %weight_buf_7_load_30
  %tmp_44_253 = fadd float %tmp_44_252, %tmp_43_253
  %weight_buf_7_load_31 = load float* %weight_buf_7_addr_33, align 4
  %tmp_43_254 = fmul float %in_buf_7_load_31, %weight_buf_7_load_31
  %tmp_44_254 = fadd float %tmp_44_253, %tmp_43_254
  store float %tmp_44_254, float* %out_buf_addr_2, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str15, i32 %tmp_30)
  %j_4 = add i4 %j5_mid2, 1
  br label %.preheader.preheader

; <label>:15                                      ; preds = %.preheader.preheader
  %tmp_20 = or i14 %os_idx, 5
  %os_idx_3 = add i14 %os_idx, 640
  br label %16

; <label>:16                                      ; preds = %20, %15
  %indvars_iv = phi i14 [ %tmp_20, %15 ], [ %indvars_iv_next, %20 ]
  %os_idx_1 = phi i14 [ %os_idx, %15 ], [ %tmp_28, %20 ]
  %i6 = phi i8 [ 0, %15 ], [ %i_5, %20 ]
  %exitcond1 = icmp eq i8 %i6, -128
  %i_5 = add i8 %i6, 1
  br i1 %exitcond1, label %21, label %17

; <label>:17                                      ; preds = %16
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str17) nounwind
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str17)
  %tmp_28 = add i14 %os_idx_1, 5
  %tmp_237 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i6, i3 0)
  %p_shl2_cast = zext i11 %tmp_237 to i12
  %tmp_238 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %i6, i1 false)
  %p_shl3_cast = zext i9 %tmp_238 to i12
  %tmp_239 = add i12 %p_shl3_cast, %p_shl2_cast
  br label %18

; <label>:18                                      ; preds = %19, %17
  %os_idx_2 = phi i14 [ %os_idx_1, %17 ], [ %tmp_40, %19 ]
  %j7 = phi i4 [ 0, %17 ], [ %j_3, %19 ]
  %exitcond = icmp eq i14 %os_idx_2, %indvars_iv
  br i1 %exitcond, label %20, label %19

; <label>:19                                      ; preds = %18
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str18) nounwind
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str18)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_32_cast = zext i4 %j7 to i12
  %tmp_240 = add i12 %tmp_239, %tmp_32_cast
  %tmp_240_cast = zext i12 %tmp_240 to i64
  %out_buf_addr = getelementptr [1280 x float]* %out_buf, i64 0, i64 %tmp_240_cast
  %out_buf_load = load float* %out_buf_addr, align 8
  %tmp_33 = bitcast float %out_buf_load to i32
  %tmp_35 = or i4 %j7, 1
  %tmp_36_cast = zext i4 %tmp_35 to i12
  %tmp_241 = add i12 %tmp_239, %tmp_36_cast
  %tmp_241_cast = zext i12 %tmp_241 to i64
  %out_buf_addr_1 = getelementptr [1280 x float]* %out_buf, i64 0, i64 %tmp_241_cast
  %out_buf_load_1 = load float* %out_buf_addr_1, align 4
  %tmp_37 = bitcast float %out_buf_load_1 to i32
  %converter = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_37, i32 %tmp_33)
  %tmp_40 = add i14 %os_idx_2, 1
  %last_assign = icmp eq i14 %tmp_40, -6144
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64* %out_stream_data_V, i8* %out_stream_keep_V, i8* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V, i64 %converter, i8 -1, i8 -1, i4 0, i1 %last_assign, i5 0, i5 0)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str18, i32 %tmp_39)
  %j_3 = add i4 %j7, 2
  br label %18

; <label>:20                                      ; preds = %18
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str17, i32 %tmp_27)
  %indvars_iv_next = add i14 %indvars_iv, 5
  br label %16

; <label>:21                                      ; preds = %16
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str9, i32 %tmp_10)
  %t_1 = add i12 %t, 128
  br label %.preheader16

; <label>:22                                      ; preds = %.preheader16
  ret void

branch8:                                          ; preds = %12
  store float %bitcast, float* %in_buf_0_addr, align 8
  store float %tmp_26, float* %in_buf_0_addr_1, align 4
  br label %13

branch9:                                          ; preds = %12
  store float %bitcast, float* %in_buf_1_addr, align 8
  store float %tmp_26, float* %in_buf_1_addr_1, align 4
  br label %13

branch10:                                         ; preds = %12
  store float %bitcast, float* %in_buf_2_addr, align 8
  store float %tmp_26, float* %in_buf_2_addr_1, align 4
  br label %13

branch11:                                         ; preds = %12
  store float %bitcast, float* %in_buf_3_addr, align 8
  store float %tmp_26, float* %in_buf_3_addr_1, align 4
  br label %13

branch12:                                         ; preds = %12
  store float %bitcast, float* %in_buf_4_addr, align 8
  store float %tmp_26, float* %in_buf_4_addr_1, align 4
  br label %13

branch13:                                         ; preds = %12
  store float %bitcast, float* %in_buf_5_addr, align 8
  store float %tmp_26, float* %in_buf_5_addr_1, align 4
  br label %13

branch14:                                         ; preds = %12
  store float %bitcast, float* %in_buf_6_addr, align 8
  store float %tmp_26, float* %in_buf_6_addr_1, align 4
  br label %13

branch15:                                         ; preds = %12
  store float %bitcast, float* %in_buf_7_addr, align 8
  store float %tmp_26, float* %in_buf_7_addr_1, align 4
  br label %13

branch24:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_0_addr, align 8
  store float %tmp_16, float* %weight_buf_0_addr_1, align 4
  br label %6

branch25:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_1_addr, align 8
  store float %tmp_16, float* %weight_buf_1_addr_1, align 4
  br label %6

branch26:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_2_addr, align 8
  store float %tmp_16, float* %weight_buf_2_addr_1, align 4
  br label %6

branch27:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_3_addr, align 8
  store float %tmp_16, float* %weight_buf_3_addr_1, align 4
  br label %6

branch28:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_4_addr, align 8
  store float %tmp_16, float* %weight_buf_4_addr_1, align 4
  br label %6

branch29:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_5_addr, align 8
  store float %tmp_16, float* %weight_buf_5_addr_1, align 4
  br label %6

branch30:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_6_addr, align 8
  store float %tmp_16, float* %weight_buf_6_addr_1, align 4
  br label %6

branch31:                                         ; preds = %5
  store float %bitcast2, float* %weight_buf_7_addr, align 8
  store float %tmp_16, float* %weight_buf_7_addr_1, align 4
  br label %6
}

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64*, i8*, i8*, i4*, i1*, i5*, i5*, i64, i8, i8, i4, i1, i5, i5) {
entry:
  store i64 %7, i64* %0
  store i8 %8, i8* %1
  store i8 %9, i8* %2
  store i4 %10, i4* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i5 %13, i5* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i64, i8, i8, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i8P.i4P.i1P.i5P.i5P(i64*, i8*, i8*, i4*, i1*, i5*, i5*) {
entry:
  %empty = load i64* %0
  %empty_27 = load i8* %1
  %empty_28 = load i8* %2
  %empty_29 = load i4* %3
  %empty_30 = load i1* %4
  %empty_31 = load i5* %5
  %empty_32 = load i5* %6
  %mrv_0 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv_0, i8 %empty_27, 1
  %mrv2 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv1, i8 %empty_28, 2
  %mrv3 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv2, i4 %empty_29, 3
  %mrv4 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv3, i1 %empty_30, 4
  %mrv5 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv4, i5 %empty_31, 5
  %mrv6 = insertvalue { i64, i8, i8, i4, i1, i5, i5 } %mrv5, i5 %empty_32, 6
  ret { i64, i8, i8, i4, i1, i5, i5 } %mrv6
}

declare i5 @_ssdm_op_PartSelect.i5.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_33 = trunc i9 %empty to i4
  ret i4 %empty_33
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_34 = trunc i64 %empty to i32
  ret i32 %empty_34
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_35 = shl i12 1, %empty
  %empty_36 = and i12 %0, %empty_35
  %empty_37 = icmp ne i12 %empty_36, 0
  ret i1 %empty_37
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_38 = zext i1 %1 to i9
  %empty_39 = shl i9 %empty, 1
  %empty_40 = or i9 %empty_39, %empty_38
  ret i9 %empty_40
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i4.i5(i4, i5) nounwind readnone {
entry:
  %empty = zext i4 %0 to i9
  %empty_41 = zext i5 %1 to i9
  %empty_42 = shl i9 %empty, 5
  %empty_43 = or i9 %empty_42, %empty_41
  ret i9 %empty_43
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i55.i9(i55, i9) nounwind readnone {
entry:
  %empty = zext i55 %0 to i64
  %empty_44 = zext i9 %1 to i64
  %empty_45 = shl i64 %empty, 9
  %empty_46 = or i64 %empty_45, %empty_44
  ret i64 %empty_46
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51, i13) nounwind readnone {
entry:
  %empty = zext i51 %0 to i64
  %empty_47 = zext i13 %1 to i64
  %empty_48 = shl i64 %empty, 13
  %empty_49 = or i64 %empty_48, %empty_47
  ret i64 %empty_49
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_50 = zext i32 %1 to i64
  %empty_51 = shl i64 %empty, 32
  %empty_52 = or i64 %empty_51, %empty_50
  ret i64 %empty_52
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %0 to i13
  %empty_53 = zext i5 %1 to i13
  %empty_54 = shl i13 %empty, 5
  %empty_55 = or i13 %empty_54, %empty_53
  ret i13 %empty_55
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_56 = zext i3 %1 to i11
  %empty_57 = shl i11 %empty, 3
  %empty_58 = or i11 %empty_57, %empty_56
  ret i11 %empty_58
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !17, !17, !20, !20, !17, !17, !20, !20, !17, !17, !20, !20, !17, !17, !20, !20, !26, !26, !20, !20, !20, !28, !31, !33, !35, !37, !20, !20, !20, !20, !20, !20, !20, !20, !20, !20, !20, !20, !39}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!42}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const AXI_VAL &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"e"}
!13 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"const axi_T &", metadata !"_Bool"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"v", metadata !"last"}
!17 = metadata !{null, metadata !8, metadata !9, metadata !18, metadata !11, metadata !19, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!20 = metadata !{null, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space"}
!22 = metadata !{metadata !"kernel_arg_access_qual"}
!23 = metadata !{metadata !"kernel_arg_type"}
!24 = metadata !{metadata !"kernel_arg_type_qual"}
!25 = metadata !{metadata !"kernel_arg_name"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !19, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !30, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !30, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !30, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !30, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<64, 4, 5, 5> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !""}
!42 = metadata !{metadata !43, [1 x i32]* @llvm_global_ctors_0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"llvm.global_ctors.0", metadata !47, metadata !"", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, i32 1}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 63, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"in_stream.data.V", metadata !53, metadata !"uint64", i32 0, i32 63}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 263428, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"in_stream.keep.V", metadata !53, metadata !"uint8", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 7, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"in_stream.strb.V", metadata !53, metadata !"uint8", i32 0, i32 7}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 3, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"in_stream.user.V", metadata !53, metadata !"uint4", i32 0, i32 3}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"in_stream.last.V", metadata !53, metadata !"uint1", i32 0, i32 0}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 4, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"in_stream.id.V", metadata !53, metadata !"uint5", i32 0, i32 4}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 4, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"in_stream.dest.V", metadata !53, metadata !"uint5", i32 0, i32 4}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 63, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"out_stream.data.V", metadata !83, metadata !"uint64", i32 0, i32 63}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 10239, i32 1}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 7, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"out_stream.keep.V", metadata !83, metadata !"uint8", i32 0, i32 7}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 7, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"out_stream.strb.V", metadata !83, metadata !"uint8", i32 0, i32 7}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 3, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"out_stream.user.V", metadata !83, metadata !"uint4", i32 0, i32 3}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 0, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"out_stream.last.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 4, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"out_stream.id.V", metadata !83, metadata !"uint5", i32 0, i32 4}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 4, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"out_stream.dest.V", metadata !83, metadata !"uint5", i32 0, i32 4}

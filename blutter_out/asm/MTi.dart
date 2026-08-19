// lib: , url: MTi

// class id: 1049876, size: 0x8
class :: {
}

// class id: 3995, size: 0x10, field offset: 0xc
//   const constructor, 
class ycb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7bf318, size: 0x100
    // 0x7bf318: EnterFrame
    //     0x7bf318: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf31c: mov             fp, SP
    // 0x7bf320: AllocStack(0x28)
    //     0x7bf320: sub             SP, SP, #0x28
    // 0x7bf324: SetupParameters(ycb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7bf324: stur            NULL, [fp, #-8]
    //     0x7bf328: movz            x0, #0
    //     0x7bf32c: add             x1, fp, w0, sxtw #2
    //     0x7bf330: ldr             x1, [x1, #0x18]
    //     0x7bf334: add             x2, fp, w0, sxtw #2
    //     0x7bf338: ldr             x2, [x2, #0x10]
    //     0x7bf33c: stur            x2, [fp, #-0x18]
    //     0x7bf340: ldur            w3, [x1, #0x17]
    //     0x7bf344: add             x3, x3, HEAP, lsl #32
    //     0x7bf348: stur            x3, [fp, #-0x10]
    // 0x7bf34c: CheckStackOverflow
    //     0x7bf34c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf350: cmp             SP, x16
    //     0x7bf354: b.ls            #0x7bf410
    // 0x7bf358: InitAsync() -> Future<void?>
    //     0x7bf358: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bf35c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bf360: r0 = call 0x44df3c
    //     0x7bf360: bl              #0x44df3c
    // 0x7bf364: ldur            x3, [fp, #-0x10]
    // 0x7bf368: LoadField: r4 = r3->field_f
    //     0x7bf368: ldur            w4, [x3, #0xf]
    // 0x7bf36c: DecompressPointer r4
    //     0x7bf36c: add             x4, x4, HEAP, lsl #32
    // 0x7bf370: mov             x0, x4
    // 0x7bf374: stur            x4, [fp, #-0x20]
    // 0x7bf378: r2 = Null
    //     0x7bf378: mov             x2, NULL
    // 0x7bf37c: r1 = Null
    //     0x7bf37c: mov             x1, NULL
    // 0x7bf380: branchIfSmi(r0, 0x7bf3a8)
    //     0x7bf380: tbz             w0, #0, #0x7bf3a8
    // 0x7bf384: r4 = LoadClassIdInstr(r0)
    //     0x7bf384: ldur            x4, [x0, #-1]
    //     0x7bf388: ubfx            x4, x4, #0xc, #0x14
    // 0x7bf38c: sub             x4, x4, #0x3c
    // 0x7bf390: cmp             x4, #1
    // 0x7bf394: b.ls            #0x7bf3a8
    // 0x7bf398: r8 = int
    //     0x7bf398: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bf39c: r3 = Null
    //     0x7bf39c: add             x3, PP, #0x39, lsl #12  ; [pp+0x39620] Null
    //     0x7bf3a0: ldr             x3, [x3, #0x620]
    // 0x7bf3a4: r0 = int()
    //     0x7bf3a4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bf3a8: ldur            x0, [fp, #-0x10]
    // 0x7bf3ac: LoadField: r1 = r0->field_13
    //     0x7bf3ac: ldur            w1, [x0, #0x13]
    // 0x7bf3b0: DecompressPointer r1
    //     0x7bf3b0: add             x1, x1, HEAP, lsl #32
    // 0x7bf3b4: ldur            x2, [fp, #-0x20]
    // 0x7bf3b8: r3 = LoadInt32Instr(r2)
    //     0x7bf3b8: sbfx            x3, x2, #1, #0x1f
    //     0x7bf3bc: tbz             w2, #0, #0x7bf3c4
    //     0x7bf3c0: ldur            x3, [x2, #7]
    // 0x7bf3c4: mov             x2, x3
    // 0x7bf3c8: r0 = __unknown_function__()
    //     0x7bf3c8: bl              #0x7bf418  ; [] ::__unknown_function__
    // 0x7bf3cc: mov             x1, x0
    // 0x7bf3d0: stur            x1, [fp, #-0x20]
    // 0x7bf3d4: r0 = Await()
    //     0x7bf3d4: bl              #0x74ab64  ; AwaitStub
    // 0x7bf3d8: r1 = "35adffde4ac61dba5b6af45af7af"
    //     0x7bf3d8: add             x1, PP, #0x39, lsl #12  ; [pp+0x39630] "35adffde4ac61dba5b6af45af7af"
    //     0x7bf3dc: ldr             x1, [x1, #0x630]
    // 0x7bf3e0: r0 = call 0x626128
    //     0x7bf3e0: bl              #0x626128
    // 0x7bf3e4: mov             x1, x0
    // 0x7bf3e8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bf3e8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bf3ec: r0 = call 0x3a5cc4
    //     0x7bf3ec: bl              #0x3a5cc4
    // 0x7bf3f0: ldur            x16, [fp, #-0x18]
    // 0x7bf3f4: str             x16, [SP]
    // 0x7bf3f8: ldur            x0, [fp, #-0x18]
    // 0x7bf3fc: ClosureCall
    //     0x7bf3fc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7bf400: ldur            x2, [x0, #0x1f]
    //     0x7bf404: blr             x2
    // 0x7bf408: r0 = Null
    //     0x7bf408: mov             x0, NULL
    // 0x7bf40c: r0 = ReturnAsyncNotFuture()
    //     0x7bf40c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bf410: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf410: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf414: b               #0x7bf358
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7bf60c, size: 0x100
    // 0x7bf60c: EnterFrame
    //     0x7bf60c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf610: mov             fp, SP
    // 0x7bf614: AllocStack(0x28)
    //     0x7bf614: sub             SP, SP, #0x28
    // 0x7bf618: SetupParameters(ycb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7bf618: stur            NULL, [fp, #-8]
    //     0x7bf61c: movz            x0, #0
    //     0x7bf620: add             x1, fp, w0, sxtw #2
    //     0x7bf624: ldr             x1, [x1, #0x18]
    //     0x7bf628: add             x2, fp, w0, sxtw #2
    //     0x7bf62c: ldr             x2, [x2, #0x10]
    //     0x7bf630: stur            x2, [fp, #-0x18]
    //     0x7bf634: ldur            w3, [x1, #0x17]
    //     0x7bf638: add             x3, x3, HEAP, lsl #32
    //     0x7bf63c: stur            x3, [fp, #-0x10]
    // 0x7bf640: CheckStackOverflow
    //     0x7bf640: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf644: cmp             SP, x16
    //     0x7bf648: b.ls            #0x7bf704
    // 0x7bf64c: InitAsync() -> Future<void?>
    //     0x7bf64c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bf650: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bf654: r0 = call 0x44df3c
    //     0x7bf654: bl              #0x44df3c
    // 0x7bf658: ldur            x3, [fp, #-0x10]
    // 0x7bf65c: LoadField: r4 = r3->field_f
    //     0x7bf65c: ldur            w4, [x3, #0xf]
    // 0x7bf660: DecompressPointer r4
    //     0x7bf660: add             x4, x4, HEAP, lsl #32
    // 0x7bf664: mov             x0, x4
    // 0x7bf668: stur            x4, [fp, #-0x20]
    // 0x7bf66c: r2 = Null
    //     0x7bf66c: mov             x2, NULL
    // 0x7bf670: r1 = Null
    //     0x7bf670: mov             x1, NULL
    // 0x7bf674: branchIfSmi(r0, 0x7bf69c)
    //     0x7bf674: tbz             w0, #0, #0x7bf69c
    // 0x7bf678: r4 = LoadClassIdInstr(r0)
    //     0x7bf678: ldur            x4, [x0, #-1]
    //     0x7bf67c: ubfx            x4, x4, #0xc, #0x14
    // 0x7bf680: sub             x4, x4, #0x3c
    // 0x7bf684: cmp             x4, #1
    // 0x7bf688: b.ls            #0x7bf69c
    // 0x7bf68c: r8 = int
    //     0x7bf68c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bf690: r3 = Null
    //     0x7bf690: add             x3, PP, #0x39, lsl #12  ; [pp+0x396f0] Null
    //     0x7bf694: ldr             x3, [x3, #0x6f0]
    // 0x7bf698: r0 = int()
    //     0x7bf698: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bf69c: ldur            x0, [fp, #-0x10]
    // 0x7bf6a0: LoadField: r1 = r0->field_13
    //     0x7bf6a0: ldur            w1, [x0, #0x13]
    // 0x7bf6a4: DecompressPointer r1
    //     0x7bf6a4: add             x1, x1, HEAP, lsl #32
    // 0x7bf6a8: ldur            x2, [fp, #-0x20]
    // 0x7bf6ac: r3 = LoadInt32Instr(r2)
    //     0x7bf6ac: sbfx            x3, x2, #1, #0x1f
    //     0x7bf6b0: tbz             w2, #0, #0x7bf6b8
    //     0x7bf6b4: ldur            x3, [x2, #7]
    // 0x7bf6b8: mov             x2, x3
    // 0x7bf6bc: r0 = __unknown_function__()
    //     0x7bf6bc: bl              #0x7bf70c  ; [] ::__unknown_function__
    // 0x7bf6c0: mov             x1, x0
    // 0x7bf6c4: stur            x1, [fp, #-0x20]
    // 0x7bf6c8: r0 = Await()
    //     0x7bf6c8: bl              #0x74ab64  ; AwaitStub
    // 0x7bf6cc: r1 = "3ea2ac1703fb2682a5f3b7822ee5"
    //     0x7bf6cc: add             x1, PP, #0x39, lsl #12  ; [pp+0x39700] "3ea2ac1703fb2682a5f3b7822ee5"
    //     0x7bf6d0: ldr             x1, [x1, #0x700]
    // 0x7bf6d4: r0 = call 0x626128
    //     0x7bf6d4: bl              #0x626128
    // 0x7bf6d8: mov             x1, x0
    // 0x7bf6dc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bf6dc: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bf6e0: r0 = call 0x3a5cc4
    //     0x7bf6e0: bl              #0x3a5cc4
    // 0x7bf6e4: ldur            x16, [fp, #-0x18]
    // 0x7bf6e8: str             x16, [SP]
    // 0x7bf6ec: ldur            x0, [fp, #-0x18]
    // 0x7bf6f0: ClosureCall
    //     0x7bf6f0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7bf6f4: ldur            x2, [x0, #0x1f]
    //     0x7bf6f8: blr             x2
    // 0x7bf6fc: r0 = Null
    //     0x7bf6fc: mov             x0, NULL
    // 0x7bf700: r0 = ReturnAsyncNotFuture()
    //     0x7bf700: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bf704: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf704: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf708: b               #0x7bf64c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x626a60, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x62655c, size: -0x1
  }
}

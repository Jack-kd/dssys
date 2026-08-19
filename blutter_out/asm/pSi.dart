// lib: , url: pSi

// class id: 1049797, size: 0x8
class :: {
}

// class id: 4015, size: 0x20, field offset: 0xc
//   const constructor, 
class wab extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, Tna) async {
    // ** addr: 0x7bc728, size: 0x110
    // 0x7bc728: EnterFrame
    //     0x7bc728: stp             fp, lr, [SP, #-0x10]!
    //     0x7bc72c: mov             fp, SP
    // 0x7bc730: AllocStack(0x20)
    //     0x7bc730: sub             SP, SP, #0x20
    // 0x7bc734: SetupParameters(wab this /* r1 */)
    //     0x7bc734: stur            NULL, [fp, #-8]
    //     0x7bc738: movz            x0, #0
    //     0x7bc73c: add             x1, fp, w0, sxtw #2
    //     0x7bc740: ldr             x1, [x1, #0x18]
    //     0x7bc744: ldur            w2, [x1, #0x17]
    //     0x7bc748: add             x2, x2, HEAP, lsl #32
    //     0x7bc74c: stur            x2, [fp, #-0x10]
    // 0x7bc750: CheckStackOverflow
    //     0x7bc750: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bc754: cmp             SP, x16
    //     0x7bc758: b.ls            #0x7bc830
    // 0x7bc75c: InitAsync() -> Future<void?>
    //     0x7bc75c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bc760: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bc764: ldur            x0, [fp, #-0x10]
    // 0x7bc768: LoadField: r2 = r0->field_13
    //     0x7bc768: ldur            w2, [x0, #0x13]
    // 0x7bc76c: DecompressPointer r2
    //     0x7bc76c: add             x2, x2, HEAP, lsl #32
    // 0x7bc770: stur            x2, [fp, #-0x20]
    // 0x7bc774: LoadField: r1 = r0->field_f
    //     0x7bc774: ldur            w1, [x0, #0xf]
    // 0x7bc778: DecompressPointer r1
    //     0x7bc778: add             x1, x1, HEAP, lsl #32
    // 0x7bc77c: LoadField: r3 = r1->field_f
    //     0x7bc77c: ldur            w3, [x1, #0xf]
    // 0x7bc780: DecompressPointer r3
    //     0x7bc780: add             x3, x3, HEAP, lsl #32
    // 0x7bc784: stur            x3, [fp, #-0x18]
    // 0x7bc788: r1 = "054a2e03"
    //     0x7bc788: add             x1, PP, #0x21, lsl #12  ; [pp+0x21880] "054a2e03"
    //     0x7bc78c: ldr             x1, [x1, #0x880]
    // 0x7bc790: r0 = call 0x615908
    //     0x7bc790: bl              #0x615908
    // 0x7bc794: ldur            x1, [fp, #-0x18]
    // 0x7bc798: r2 = LoadClassIdInstr(r1)
    //     0x7bc798: ldur            x2, [x1, #-1]
    //     0x7bc79c: ubfx            x2, x2, #0xc, #0x14
    // 0x7bc7a0: mov             x16, x0
    // 0x7bc7a4: mov             x0, x2
    // 0x7bc7a8: mov             x2, x16
    // 0x7bc7ac: mov             lr, x0
    // 0x7bc7b0: ldr             lr, [x21, lr, lsl #3]
    // 0x7bc7b4: blr             lr
    // 0x7bc7b8: mov             x3, x0
    // 0x7bc7bc: r2 = Null
    //     0x7bc7bc: mov             x2, NULL
    // 0x7bc7c0: r1 = Null
    //     0x7bc7c0: mov             x1, NULL
    // 0x7bc7c4: stur            x3, [fp, #-0x18]
    // 0x7bc7c8: branchIfSmi(r0, 0x7bc7f0)
    //     0x7bc7c8: tbz             w0, #0, #0x7bc7f0
    // 0x7bc7cc: r4 = LoadClassIdInstr(r0)
    //     0x7bc7cc: ldur            x4, [x0, #-1]
    //     0x7bc7d0: ubfx            x4, x4, #0xc, #0x14
    // 0x7bc7d4: sub             x4, x4, #0x3c
    // 0x7bc7d8: cmp             x4, #1
    // 0x7bc7dc: b.ls            #0x7bc7f0
    // 0x7bc7e0: r8 = int
    //     0x7bc7e0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bc7e4: r3 = Null
    //     0x7bc7e4: add             x3, PP, #0x21, lsl #12  ; [pp+0x21888] Null
    //     0x7bc7e8: ldr             x3, [x3, #0x888]
    // 0x7bc7ec: r0 = int()
    //     0x7bc7ec: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bc7f0: ldur            x0, [fp, #-0x18]
    // 0x7bc7f4: r2 = LoadInt32Instr(r0)
    //     0x7bc7f4: sbfx            x2, x0, #1, #0x1f
    //     0x7bc7f8: tbz             w0, #0, #0x7bc800
    //     0x7bc7fc: ldur            x2, [x0, #7]
    // 0x7bc800: ldur            x1, [fp, #-0x20]
    // 0x7bc804: r0 = __unknown_function__()
    //     0x7bc804: bl              #0x791134  ; [] ::__unknown_function__
    // 0x7bc808: mov             x1, x0
    // 0x7bc80c: stur            x1, [fp, #-0x18]
    // 0x7bc810: r0 = Await()
    //     0x7bc810: bl              #0x74ab64  ; AwaitStub
    // 0x7bc814: ldur            x1, [fp, #-0x20]
    // 0x7bc818: r0 = __unknown_function__()
    //     0x7bc818: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7bc81c: mov             x1, x0
    // 0x7bc820: stur            x1, [fp, #-0x18]
    // 0x7bc824: r0 = Await()
    //     0x7bc824: bl              #0x74ab64  ; AwaitStub
    // 0x7bc828: r0 = Null
    //     0x7bc828: mov             x0, NULL
    // 0x7bc82c: r0 = ReturnAsyncNotFuture()
    //     0x7bc82c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bc830: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bc830: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bc834: b               #0x7bc75c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x615d3c, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x615648, size: -0x1
  }
  [closure] dynamic <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x6155e4, size: -0x1
  }
  [closure] dynamic <anonymous closure>(dynamic, dynamic, dynamic) {
    // ** addr: 0x615594, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x615808, size: -0x1
  }
}

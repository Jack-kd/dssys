// lib: , url: cWi

// class id: 1050000, size: 0x8
class :: {
}

// class id: 4187, size: 0x10, field offset: 0xc
//   const constructor, 
class Geb extends qI {

  [closure] Future<void> <anonymous closure>(dynamic, Tna, Mna<lr<oI>>, int) async {
    // ** addr: 0x7773f8, size: 0xe8
    // 0x7773f8: EnterFrame
    //     0x7773f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7773fc: mov             fp, SP
    // 0x777400: AllocStack(0x50)
    //     0x777400: sub             SP, SP, #0x50
    // 0x777404: SetupParameters(Geb this /* r1 */, dynamic _ /* r2, fp-0x28 */, dynamic _ /* r3, fp-0x20 */, dynamic _ /* r4, fp-0x18 */)
    //     0x777404: stur            NULL, [fp, #-8]
    //     0x777408: movz            x0, #0
    //     0x77740c: add             x1, fp, w0, sxtw #2
    //     0x777410: ldr             x1, [x1, #0x28]
    //     0x777414: add             x2, fp, w0, sxtw #2
    //     0x777418: ldr             x2, [x2, #0x20]
    //     0x77741c: stur            x2, [fp, #-0x28]
    //     0x777420: add             x3, fp, w0, sxtw #2
    //     0x777424: ldr             x3, [x3, #0x18]
    //     0x777428: stur            x3, [fp, #-0x20]
    //     0x77742c: add             x4, fp, w0, sxtw #2
    //     0x777430: ldr             x4, [x4, #0x10]
    //     0x777434: stur            x4, [fp, #-0x18]
    //     0x777438: ldur            w5, [x1, #0x17]
    //     0x77743c: add             x5, x5, HEAP, lsl #32
    //     0x777440: stur            x5, [fp, #-0x10]
    // 0x777444: CheckStackOverflow
    //     0x777444: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x777448: cmp             SP, x16
    //     0x77744c: b.ls            #0x7774d8
    // 0x777450: InitAsync() -> Future<void?>
    //     0x777450: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x777454: bl              #0x74ada8  ; InitAsyncStub
    // 0x777458: ldur            x0, [fp, #-0x18]
    // 0x77745c: r1 = LoadInt32Instr(r0)
    //     0x77745c: sbfx            x1, x0, #1, #0x1f
    //     0x777460: tbz             w0, #0, #0x777468
    //     0x777464: ldur            x1, [x0, #7]
    // 0x777468: stur            x1, [fp, #-0x30]
    // 0x77746c: r0 = Ucb()
    //     0x77746c: bl              #0x77724c  ; AllocateUcbStub -> Ucb (size=0x1c)
    // 0x777470: mov             x3, x0
    // 0x777474: ldur            x0, [fp, #-0x30]
    // 0x777478: stur            x3, [fp, #-0x10]
    // 0x77747c: StoreField: r3->field_b = r0
    //     0x77747c: stur            x0, [x3, #0xb]
    // 0x777480: r1 = Function '<anonymous closure>':.
    //     0x777480: add             x1, PP, #0x20, lsl #12  ; [pp+0x20948] AnonymousClosure: (0x3be460), in [cWi] Geb::<anonymous closure> (0x3be37c)
    //     0x777484: ldr             x1, [x1, #0x948]
    // 0x777488: r2 = Null
    //     0x777488: mov             x2, NULL
    // 0x77748c: r0 = AllocateClosure()
    //     0x77748c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x777490: mov             x1, x0
    // 0x777494: ldur            x0, [fp, #-0x10]
    // 0x777498: StoreField: r0->field_13 = r1
    //     0x777498: stur            w1, [x0, #0x13]
    // 0x77749c: r1 = Function '<anonymous closure>':.
    //     0x77749c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20950] AnonymousClosure: (0x3be3e4), of [cWi] Geb
    //     0x7774a0: ldr             x1, [x1, #0x950]
    // 0x7774a4: r2 = Null
    //     0x7774a4: mov             x2, NULL
    // 0x7774a8: r0 = AllocateClosure()
    //     0x7774a8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7774ac: mov             x1, x0
    // 0x7774b0: ldur            x0, [fp, #-0x10]
    // 0x7774b4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7774b4: stur            w1, [x0, #0x17]
    // 0x7774b8: stp             x0, NULL, [SP, #0x10]
    // 0x7774bc: ldur            x16, [fp, #-0x28]
    // 0x7774c0: ldur            lr, [fp, #-0x20]
    // 0x7774c4: stp             lr, x16, [SP]
    // 0x7774c8: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x7774c8: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x7774cc: r0 = __unknown_function__()
    //     0x7774cc: bl              #0x776ec8  ; [] ::__unknown_function__
    // 0x7774d0: r0 = Null
    //     0x7774d0: mov             x0, NULL
    // 0x7774d4: r0 = ReturnAsyncNotFuture()
    //     0x7774d4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7774d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7774d8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7774dc: b               #0x777450
  }
  [closure] Ieb <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3be3e4, size: -0x1
  }
  [closure] la <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3be5b0, size: -0x1
  }
  [closure] nB <anonymous closure>(dynamic, nbb) {
    // ** addr: 0x3be37c, size: -0x1
  }
  [closure] nbb? <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3be460, size: -0x1
  }
}

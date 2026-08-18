// lib: , url: tRi

// class id: 1049747, size: 0x8
class :: {

  static late final tSa<uZa> Krg; // offset: 0x138c

  [closure] static uZa <anonymous closure>(dynamic, URa) {
    // ** addr: 0x44f1f8, size: -0x1
  }
  static tSa<uZa> Krg() {
    // ** addr: 0x44f180, size: -0x1
  }
}

// class id: 242, size: 0x1c, field offset: 0x8
class uZa extends Object {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x77d750, size: 0xd4
    // 0x77d750: EnterFrame
    //     0x77d750: stp             fp, lr, [SP, #-0x10]!
    //     0x77d754: mov             fp, SP
    // 0x77d758: AllocStack(0x28)
    //     0x77d758: sub             SP, SP, #0x28
    // 0x77d75c: SetupParameters(uZa this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x77d75c: stur            NULL, [fp, #-8]
    //     0x77d760: movz            x0, #0
    //     0x77d764: add             x1, fp, w0, sxtw #2
    //     0x77d768: ldr             x1, [x1, #0x18]
    //     0x77d76c: add             x2, fp, w0, sxtw #2
    //     0x77d770: ldr             x2, [x2, #0x10]
    //     0x77d774: stur            x2, [fp, #-0x18]
    //     0x77d778: ldur            w3, [x1, #0x17]
    //     0x77d77c: add             x3, x3, HEAP, lsl #32
    //     0x77d780: stur            x3, [fp, #-0x10]
    // 0x77d784: CheckStackOverflow
    //     0x77d784: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77d788: cmp             SP, x16
    //     0x77d78c: b.ls            #0x77d81c
    // 0x77d790: InitAsync() -> Future<void?>
    //     0x77d790: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x77d794: bl              #0x74ada8  ; InitAsyncStub
    // 0x77d798: ldur            x0, [fp, #-0x10]
    // 0x77d79c: LoadField: r1 = r0->field_f
    //     0x77d79c: ldur            w1, [x0, #0xf]
    // 0x77d7a0: DecompressPointer r1
    //     0x77d7a0: add             x1, x1, HEAP, lsl #32
    // 0x77d7a4: stur            x1, [fp, #-0x20]
    // 0x77d7a8: r0 = vha()
    //     0x77d7a8: bl              #0x76a59c  ; AllocatevhaStub -> vha (size=0xc)
    // 0x77d7ac: mov             x1, x0
    // 0x77d7b0: ldur            x0, [fp, #-0x20]
    // 0x77d7b4: StoreField: r1->field_7 = r0
    //     0x77d7b4: stur            w0, [x1, #7]
    // 0x77d7b8: r0 = __unknown_function__()
    //     0x77d7b8: bl              #0x76a5a8  ; [] ::__unknown_function__
    // 0x77d7bc: r1 = "aa3ddfd4f8e3dcc54ff8d03368c1bf65b083a9242f9110d33939639074fb98f5fb58648f5d29fff4d93fdce91b5849933cf4273c18173894bb5834b36da0"
    //     0x77d7bc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11a60] "aa3ddfd4f8e3dcc54ff8d03368c1bf65b083a9242f9110d33939639074fb98f5fb58648f5d29fff4d93fdce91b5849933cf4273c18173894bb5834b36da0"
    //     0x77d7c0: ldr             x1, [x1, #0xa60]
    // 0x77d7c4: r0 = call 0x403b2c
    //     0x77d7c4: bl              #0x403b2c
    // 0x77d7c8: r16 = Instance_la
    //     0x77d7c8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11a68] Obj!la@4551a1
    //     0x77d7cc: ldr             x16, [x16, #0xa68]
    // 0x77d7d0: str             x16, [SP]
    // 0x77d7d4: mov             x1, x0
    // 0x77d7d8: r4 = const [0, 0x2, 0x1, 0x1, tpb, 0x1, null]
    //     0x77d7d8: ldr             x4, [PP, #0x7928]  ; [pp+0x7928] List(7) [0, 0x2, 0x1, 0x1, "tpb", 0x1, Null]
    // 0x77d7dc: r0 = call 0x3a5cc4
    //     0x77d7dc: bl              #0x3a5cc4
    // 0x77d7e0: ldur            x0, [fp, #-0x10]
    // 0x77d7e4: LoadField: r1 = r0->field_f
    //     0x77d7e4: ldur            w1, [x0, #0xf]
    // 0x77d7e8: DecompressPointer r1
    //     0x77d7e8: add             x1, x1, HEAP, lsl #32
    // 0x77d7ec: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x77d7ec: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x77d7f0: r0 = call 0x243498
    //     0x77d7f0: bl              #0x243498
    // 0x77d7f4: mov             x1, x0
    // 0x77d7f8: r0 = __unknown_function__()
    //     0x77d7f8: bl              #0x776668  ; [] ::__unknown_function__
    // 0x77d7fc: ldur            x16, [fp, #-0x18]
    // 0x77d800: str             x16, [SP]
    // 0x77d804: ldur            x0, [fp, #-0x18]
    // 0x77d808: ClosureCall
    //     0x77d808: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x77d80c: ldur            x2, [x0, #0x1f]
    //     0x77d810: blr             x2
    // 0x77d814: r0 = Null
    //     0x77d814: mov             x0, NULL
    // 0x77d818: r0 = ReturnAsyncNotFuture()
    //     0x77d818: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77d81c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77d81c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77d820: b               #0x77d790
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x77d844, size: 0x70
    // 0x77d844: EnterFrame
    //     0x77d844: stp             fp, lr, [SP, #-0x10]!
    //     0x77d848: mov             fp, SP
    // 0x77d84c: AllocStack(0x20)
    //     0x77d84c: sub             SP, SP, #0x20
    // 0x77d850: SetupParameters(uZa this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x77d850: stur            NULL, [fp, #-8]
    //     0x77d854: movz            x0, #0
    //     0x77d858: add             x1, fp, w0, sxtw #2
    //     0x77d85c: ldr             x1, [x1, #0x18]
    //     0x77d860: add             x2, fp, w0, sxtw #2
    //     0x77d864: ldr             x2, [x2, #0x10]
    //     0x77d868: stur            x2, [fp, #-0x18]
    //     0x77d86c: ldur            w3, [x1, #0x17]
    //     0x77d870: add             x3, x3, HEAP, lsl #32
    //     0x77d874: stur            x3, [fp, #-0x10]
    // 0x77d878: CheckStackOverflow
    //     0x77d878: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77d87c: cmp             SP, x16
    //     0x77d880: b.ls            #0x77d8ac
    // 0x77d884: InitAsync() -> Future<void?>
    //     0x77d884: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x77d888: bl              #0x74ada8  ; InitAsyncStub
    // 0x77d88c: ldur            x16, [fp, #-0x18]
    // 0x77d890: str             x16, [SP]
    // 0x77d894: ldur            x0, [fp, #-0x18]
    // 0x77d898: ClosureCall
    //     0x77d898: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x77d89c: ldur            x2, [x0, #0x1f]
    //     0x77d8a0: blr             x2
    // 0x77d8a4: r0 = Null
    //     0x77d8a4: mov             x0, NULL
    // 0x77d8a8: r0 = ReturnAsyncNotFuture()
    //     0x77d8a8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77d8ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77d8ac: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77d8b0: b               #0x77d884
  }
  [closure] bool <anonymous closure>(dynamic, PG) {
    // ** addr: 0x66988c, size: -0x1
  }
}

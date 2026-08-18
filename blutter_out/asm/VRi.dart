// lib: , url: VRi

// class id: 1049776, size: 0x8
class :: {
}

// class id: 3663, size: 0x24, field offset: 0x18
class _XZa extends Vt<dynamic> {

  late final tZa _zmg; // offset: 0x20

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78c82c, size: 0x234
    // 0x78c82c: EnterFrame
    //     0x78c82c: stp             fp, lr, [SP, #-0x10]!
    //     0x78c830: mov             fp, SP
    // 0x78c834: AllocStack(0x38)
    //     0x78c834: sub             SP, SP, #0x38
    // 0x78c838: SetupParameters(_XZa this /* r1 */)
    //     0x78c838: stur            NULL, [fp, #-8]
    //     0x78c83c: movz            x0, #0
    //     0x78c840: add             x1, fp, w0, sxtw #2
    //     0x78c844: ldr             x1, [x1, #0x10]
    //     0x78c848: ldur            w2, [x1, #0x17]
    //     0x78c84c: add             x2, x2, HEAP, lsl #32
    //     0x78c850: stur            x2, [fp, #-0x10]
    // 0x78c854: CheckStackOverflow
    //     0x78c854: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78c858: cmp             SP, x16
    //     0x78c85c: b.ls            #0x78ca58
    // 0x78c860: InitAsync() -> Future<void?>
    //     0x78c860: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78c864: bl              #0x74ada8  ; InitAsyncStub
    // 0x78c868: str             NULL, [SP]
    // 0x78c86c: r4 = const [0x1, 0, 0, 0, null]
    //     0x78c86c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0, 0, 0, Null]
    // 0x78c870: r0 = __unknown_function__()
    //     0x78c870: bl              #0x78e2f8  ; [] ::__unknown_function__
    // 0x78c874: mov             x1, x0
    // 0x78c878: stur            x1, [fp, #-0x18]
    // 0x78c87c: r0 = Await()
    //     0x78c87c: bl              #0x74ab64  ; AwaitStub
    // 0x78c880: stur            x0, [fp, #-0x18]
    // 0x78c884: cmp             w0, NULL
    // 0x78c888: b.eq            #0x78c8f4
    // 0x78c88c: r1 = "6ef0c6501218e12b00a4"
    //     0x78c88c: add             x1, PP, #0x2e, lsl #12  ; [pp+0x2e3a0] "6ef0c6501218e12b00a4"
    //     0x78c890: ldr             x1, [x1, #0x3a0]
    // 0x78c894: r0 = call 0x464818
    //     0x78c894: bl              #0x464818
    // 0x78c898: ldur            x16, [fp, #-0x18]
    // 0x78c89c: stp             x0, x16, [SP]
    // 0x78c8a0: r4 = 0
    //     0x78c8a0: movz            x4, #0
    // 0x78c8a4: ldr             x0, [SP, #8]
    // 0x78c8a8: r16 = 140563490515876
    //     0x78c8a8: add             x16, PP, #0x2e, lsl #12  ; [pp+0x2e3a8] IMM: 0x7fd77cebaba4
    //     0x78c8ac: add             x16, x16, #0x3a8
    // 0x78c8b0: ldp             lr, x5, [x16]
    // 0x78c8b4: blr             lr
    // 0x78c8b8: cmp             w0, NULL
    // 0x78c8bc: b.eq            #0x78c8f4
    // 0x78c8c0: r1 = "69ef051e33be3fd2a504"
    //     0x78c8c0: add             x1, PP, #0x2e, lsl #12  ; [pp+0x2e3b8] "69ef051e33be3fd2a504"
    //     0x78c8c4: ldr             x1, [x1, #0x3b8]
    // 0x78c8c8: r0 = call 0x464818
    //     0x78c8c8: bl              #0x464818
    // 0x78c8cc: ldur            x16, [fp, #-0x18]
    // 0x78c8d0: stp             x0, x16, [SP]
    // 0x78c8d4: r4 = 0
    //     0x78c8d4: movz            x4, #0
    // 0x78c8d8: ldr             x0, [SP, #8]
    // 0x78c8dc: r16 = 140563490515876
    //     0x78c8dc: add             x16, PP, #0x2e, lsl #12  ; [pp+0x2e3c0] IMM: 0x7fd77cebaba4
    //     0x78c8e0: add             x16, x16, #0x3c0
    // 0x78c8e4: ldp             lr, x5, [x16]
    // 0x78c8e8: blr             lr
    // 0x78c8ec: cmp             w0, NULL
    // 0x78c8f0: b.ne            #0x78c8fc
    // 0x78c8f4: r0 = Null
    //     0x78c8f4: mov             x0, NULL
    // 0x78c8f8: r0 = ReturnAsyncNotFuture()
    //     0x78c8f8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78c8fc: ldur            x0, [fp, #-0x10]
    // 0x78c900: LoadField: r1 = r0->field_f
    //     0x78c900: ldur            w1, [x0, #0xf]
    // 0x78c904: DecompressPointer r1
    //     0x78c904: add             x1, x1, HEAP, lsl #32
    // 0x78c908: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x78c908: ldur            w2, [x1, #0x17]
    // 0x78c90c: DecompressPointer r2
    //     0x78c90c: add             x2, x2, HEAP, lsl #32
    // 0x78c910: stur            x2, [fp, #-0x20]
    // 0x78c914: r1 = "acb945c0ae88c8b1de08"
    //     0x78c914: add             x1, PP, #0x2e, lsl #12  ; [pp+0x2e3d0] "acb945c0ae88c8b1de08"
    //     0x78c918: ldr             x1, [x1, #0x3d0]
    // 0x78c91c: r0 = call 0x464818
    //     0x78c91c: bl              #0x464818
    // 0x78c920: ldur            x16, [fp, #-0x18]
    // 0x78c924: stp             x0, x16, [SP]
    // 0x78c928: r4 = 0
    //     0x78c928: movz            x4, #0
    // 0x78c92c: ldr             x0, [SP, #8]
    // 0x78c930: r16 = 140563490515876
    //     0x78c930: add             x16, PP, #0x2e, lsl #12  ; [pp+0x2e3d8] IMM: 0x7fd77cebaba4
    //     0x78c934: add             x16, x16, #0x3d8
    // 0x78c938: ldp             lr, x5, [x16]
    // 0x78c93c: blr             lr
    // 0x78c940: mov             x3, x0
    // 0x78c944: r2 = Null
    //     0x78c944: mov             x2, NULL
    // 0x78c948: r1 = Null
    //     0x78c948: mov             x1, NULL
    // 0x78c94c: stur            x3, [fp, #-0x28]
    // 0x78c950: r4 = 60
    //     0x78c950: movz            x4, #0x3c
    // 0x78c954: branchIfSmi(r0, 0x78c960)
    //     0x78c954: tbz             w0, #0, #0x78c960
    // 0x78c958: r4 = LoadClassIdInstr(r0)
    //     0x78c958: ldur            x4, [x0, #-1]
    //     0x78c95c: ubfx            x4, x4, #0xc, #0x14
    // 0x78c960: sub             x4, x4, #0x5e
    // 0x78c964: cmp             x4, #1
    // 0x78c968: b.ls            #0x78c97c
    // 0x78c96c: r8 = String
    //     0x78c96c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x78c970: r3 = Null
    //     0x78c970: add             x3, PP, #0x2e, lsl #12  ; [pp+0x2e3e8] Null
    //     0x78c974: ldr             x3, [x3, #0x3e8]
    // 0x78c978: r0 = String()
    //     0x78c978: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x78c97c: ldur            x1, [fp, #-0x20]
    // 0x78c980: ldur            x2, [fp, #-0x28]
    // 0x78c984: r0 = call 0x468718
    //     0x78c984: bl              #0x468718
    // 0x78c988: ldur            x0, [fp, #-0x10]
    // 0x78c98c: LoadField: r1 = r0->field_f
    //     0x78c98c: ldur            w1, [x0, #0xf]
    // 0x78c990: DecompressPointer r1
    //     0x78c990: add             x1, x1, HEAP, lsl #32
    // 0x78c994: LoadField: r2 = r1->field_1b
    //     0x78c994: ldur            w2, [x1, #0x1b]
    // 0x78c998: DecompressPointer r2
    //     0x78c998: add             x2, x2, HEAP, lsl #32
    // 0x78c99c: stur            x2, [fp, #-0x20]
    // 0x78c9a0: r1 = "70eedacf292d3d21887a"
    //     0x78c9a0: add             x1, PP, #0x2e, lsl #12  ; [pp+0x2e3f8] "70eedacf292d3d21887a"
    //     0x78c9a4: ldr             x1, [x1, #0x3f8]
    // 0x78c9a8: r0 = call 0x464818
    //     0x78c9a8: bl              #0x464818
    // 0x78c9ac: ldur            x16, [fp, #-0x18]
    // 0x78c9b0: stp             x0, x16, [SP]
    // 0x78c9b4: r4 = 0
    //     0x78c9b4: movz            x4, #0
    // 0x78c9b8: ldr             x0, [SP, #8]
    // 0x78c9bc: r16 = 140563490515876
    //     0x78c9bc: add             x16, PP, #0x2e, lsl #12  ; [pp+0x2e400] IMM: 0x7fd77cebaba4
    //     0x78c9c0: add             x16, x16, #0x400
    // 0x78c9c4: ldp             lr, x5, [x16]
    // 0x78c9c8: blr             lr
    // 0x78c9cc: mov             x3, x0
    // 0x78c9d0: r2 = Null
    //     0x78c9d0: mov             x2, NULL
    // 0x78c9d4: r1 = Null
    //     0x78c9d4: mov             x1, NULL
    // 0x78c9d8: stur            x3, [fp, #-0x18]
    // 0x78c9dc: r4 = 60
    //     0x78c9dc: movz            x4, #0x3c
    // 0x78c9e0: branchIfSmi(r0, 0x78c9ec)
    //     0x78c9e0: tbz             w0, #0, #0x78c9ec
    // 0x78c9e4: r4 = LoadClassIdInstr(r0)
    //     0x78c9e4: ldur            x4, [x0, #-1]
    //     0x78c9e8: ubfx            x4, x4, #0xc, #0x14
    // 0x78c9ec: sub             x4, x4, #0x5e
    // 0x78c9f0: cmp             x4, #1
    // 0x78c9f4: b.ls            #0x78ca08
    // 0x78c9f8: r8 = String
    //     0x78c9f8: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x78c9fc: r3 = Null
    //     0x78c9fc: add             x3, PP, #0x2e, lsl #12  ; [pp+0x2e410] Null
    //     0x78ca00: ldr             x3, [x3, #0x410]
    // 0x78ca04: r0 = String()
    //     0x78ca04: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x78ca08: ldur            x1, [fp, #-0x20]
    // 0x78ca0c: ldur            x2, [fp, #-0x18]
    // 0x78ca10: r0 = call 0x468718
    //     0x78ca10: bl              #0x468718
    // 0x78ca14: ldur            x0, [fp, #-0x10]
    // 0x78ca18: LoadField: r3 = r0->field_f
    //     0x78ca18: ldur            w3, [x0, #0xf]
    // 0x78ca1c: DecompressPointer r3
    //     0x78ca1c: add             x3, x3, HEAP, lsl #32
    // 0x78ca20: stur            x3, [fp, #-0x18]
    // 0x78ca24: r1 = Function '<anonymous closure>':.
    //     0x78ca24: add             x1, PP, #0x2e, lsl #12  ; [pp+0x2e420] Function: [dart:ui] _NativeScene::_NativeScene._ (0x735d04)
    //     0x78ca28: ldr             x1, [x1, #0x420]
    // 0x78ca2c: r2 = Null
    //     0x78ca2c: mov             x2, NULL
    // 0x78ca30: r0 = AllocateClosure()
    //     0x78ca30: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78ca34: ldur            x1, [fp, #-0x18]
    // 0x78ca38: mov             x2, x0
    // 0x78ca3c: r0 = call 0x227fe4
    //     0x78ca3c: bl              #0x227fe4
    // 0x78ca40: ldur            x0, [fp, #-0x10]
    // 0x78ca44: LoadField: r1 = r0->field_f
    //     0x78ca44: ldur            w1, [x0, #0xf]
    // 0x78ca48: DecompressPointer r1
    //     0x78ca48: add             x1, x1, HEAP, lsl #32
    // 0x78ca4c: r0 = __unknown_function__()
    //     0x78ca4c: bl              #0x78ca60  ; [] ::__unknown_function__
    // 0x78ca50: r0 = Null
    //     0x78ca50: mov             x0, NULL
    // 0x78ca54: r0 = ReturnAsyncNotFuture()
    //     0x78ca54: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78ca58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78ca58: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78ca5c: b               #0x78c860
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x46879c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x464c4c, size: -0x1
  }
}

// class id: 3937, size: 0xc, field offset: 0xc
//   const constructor, 
class WZa extends REa {
}

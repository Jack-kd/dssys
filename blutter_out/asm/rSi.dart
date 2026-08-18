// lib: , url: rSi

// class id: 1049799, size: 0x8
class :: {
}

// class id: 4013, size: 0x1c, field offset: 0xc
//   const constructor, 
class yab extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7bc8bc, size: 0x16c
    // 0x7bc8bc: EnterFrame
    //     0x7bc8bc: stp             fp, lr, [SP, #-0x10]!
    //     0x7bc8c0: mov             fp, SP
    // 0x7bc8c4: AllocStack(0x30)
    //     0x7bc8c4: sub             SP, SP, #0x30
    // 0x7bc8c8: SetupParameters(yab this /* r1 */)
    //     0x7bc8c8: stur            NULL, [fp, #-8]
    //     0x7bc8cc: movz            x0, #0
    //     0x7bc8d0: add             x1, fp, w0, sxtw #2
    //     0x7bc8d4: ldr             x1, [x1, #0x10]
    //     0x7bc8d8: ldur            w2, [x1, #0x17]
    //     0x7bc8dc: add             x2, x2, HEAP, lsl #32
    //     0x7bc8e0: stur            x2, [fp, #-0x10]
    // 0x7bc8e4: CheckStackOverflow
    //     0x7bc8e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bc8e8: cmp             SP, x16
    //     0x7bc8ec: b.ls            #0x7bca20
    // 0x7bc8f0: InitAsync() -> Future<void?>
    //     0x7bc8f0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bc8f4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bc8f8: ldur            x0, [fp, #-0x10]
    // 0x7bc8fc: LoadField: r1 = r0->field_f
    //     0x7bc8fc: ldur            w1, [x0, #0xf]
    // 0x7bc900: DecompressPointer r1
    //     0x7bc900: add             x1, x1, HEAP, lsl #32
    // 0x7bc904: LoadField: r2 = r1->field_b
    //     0x7bc904: ldur            w2, [x1, #0xb]
    // 0x7bc908: DecompressPointer r2
    //     0x7bc908: add             x2, x2, HEAP, lsl #32
    // 0x7bc90c: stur            x2, [fp, #-0x18]
    // 0x7bc910: r1 = "827e37cd6bc1937563198749"
    //     0x7bc910: add             x1, PP, #0x21, lsl #12  ; [pp+0x21790] "827e37cd6bc1937563198749"
    //     0x7bc914: ldr             x1, [x1, #0x790]
    // 0x7bc918: r0 = call 0x6189ec
    //     0x7bc918: bl              #0x6189ec
    // 0x7bc91c: ldur            x3, [fp, #-0x18]
    // 0x7bc920: r1 = LoadClassIdInstr(r3)
    //     0x7bc920: ldur            x1, [x3, #-1]
    //     0x7bc924: ubfx            x1, x1, #0xc, #0x14
    // 0x7bc928: mov             x2, x0
    // 0x7bc92c: mov             x0, x1
    // 0x7bc930: mov             x1, x3
    // 0x7bc934: mov             lr, x0
    // 0x7bc938: ldr             lr, [x21, lr, lsl #3]
    // 0x7bc93c: blr             lr
    // 0x7bc940: mov             x3, x0
    // 0x7bc944: r2 = Null
    //     0x7bc944: mov             x2, NULL
    // 0x7bc948: r1 = Null
    //     0x7bc948: mov             x1, NULL
    // 0x7bc94c: stur            x3, [fp, #-0x20]
    // 0x7bc950: r4 = 60
    //     0x7bc950: movz            x4, #0x3c
    // 0x7bc954: branchIfSmi(r0, 0x7bc960)
    //     0x7bc954: tbz             w0, #0, #0x7bc960
    // 0x7bc958: r4 = LoadClassIdInstr(r0)
    //     0x7bc958: ldur            x4, [x0, #-1]
    //     0x7bc95c: ubfx            x4, x4, #0xc, #0x14
    // 0x7bc960: sub             x4, x4, #0x5e
    // 0x7bc964: cmp             x4, #1
    // 0x7bc968: b.ls            #0x7bc97c
    // 0x7bc96c: r8 = String?
    //     0x7bc96c: ldr             x8, [PP, #0x3738]  ; [pp+0x3738] Type: String?
    // 0x7bc970: r3 = Null
    //     0x7bc970: add             x3, PP, #0x21, lsl #12  ; [pp+0x21798] Null
    //     0x7bc974: ldr             x3, [x3, #0x798]
    // 0x7bc978: r0 = String?()
    //     0x7bc978: bl              #0x746e44  ; IsType_String?_Stub
    // 0x7bc97c: ldur            x0, [fp, #-0x10]
    // 0x7bc980: LoadField: r1 = r0->field_f
    //     0x7bc980: ldur            w1, [x0, #0xf]
    // 0x7bc984: DecompressPointer r1
    //     0x7bc984: add             x1, x1, HEAP, lsl #32
    // 0x7bc988: LoadField: r0 = r1->field_b
    //     0x7bc988: ldur            w0, [x1, #0xb]
    // 0x7bc98c: DecompressPointer r0
    //     0x7bc98c: add             x0, x0, HEAP, lsl #32
    // 0x7bc990: stur            x0, [fp, #-0x10]
    // 0x7bc994: r1 = "e49ccd987c790c590d8edd48dc79"
    //     0x7bc994: add             x1, PP, #0x21, lsl #12  ; [pp+0x217a8] "e49ccd987c790c590d8edd48dc79"
    //     0x7bc998: ldr             x1, [x1, #0x7a8]
    // 0x7bc99c: r0 = call 0x6189ec
    //     0x7bc99c: bl              #0x6189ec
    // 0x7bc9a0: ldur            x1, [fp, #-0x10]
    // 0x7bc9a4: r2 = LoadClassIdInstr(r1)
    //     0x7bc9a4: ldur            x2, [x1, #-1]
    //     0x7bc9a8: ubfx            x2, x2, #0xc, #0x14
    // 0x7bc9ac: mov             x16, x0
    // 0x7bc9b0: mov             x0, x2
    // 0x7bc9b4: mov             x2, x16
    // 0x7bc9b8: mov             lr, x0
    // 0x7bc9bc: ldr             lr, [x21, lr, lsl #3]
    // 0x7bc9c0: blr             lr
    // 0x7bc9c4: mov             x3, x0
    // 0x7bc9c8: r2 = Null
    //     0x7bc9c8: mov             x2, NULL
    // 0x7bc9cc: r1 = Null
    //     0x7bc9cc: mov             x1, NULL
    // 0x7bc9d0: stur            x3, [fp, #-0x10]
    // 0x7bc9d4: branchIfSmi(r0, 0x7bc9fc)
    //     0x7bc9d4: tbz             w0, #0, #0x7bc9fc
    // 0x7bc9d8: r4 = LoadClassIdInstr(r0)
    //     0x7bc9d8: ldur            x4, [x0, #-1]
    //     0x7bc9dc: ubfx            x4, x4, #0xc, #0x14
    // 0x7bc9e0: sub             x4, x4, #0x3c
    // 0x7bc9e4: cmp             x4, #1
    // 0x7bc9e8: b.ls            #0x7bc9fc
    // 0x7bc9ec: r8 = int?
    //     0x7bc9ec: ldr             x8, [PP, #0x3628]  ; [pp+0x3628] Type: int?
    // 0x7bc9f0: r3 = Null
    //     0x7bc9f0: add             x3, PP, #0x21, lsl #12  ; [pp+0x217b0] Null
    //     0x7bc9f4: ldr             x3, [x3, #0x7b0]
    // 0x7bc9f8: r0 = int?()
    //     0x7bc9f8: bl              #0x7f179c  ; IsType_int?_Stub
    // 0x7bc9fc: ldur            x16, [fp, #-0x20]
    // 0x7bca00: ldur            lr, [fp, #-0x10]
    // 0x7bca04: stp             lr, x16, [SP]
    // 0x7bca08: ldur            x1, [fp, #-0x18]
    // 0x7bca0c: r4 = const [0, 0x3, 0x2, 0x1, Cog, 0x1, Dog, 0x2, null]
    //     0x7bca0c: add             x4, PP, #0x21, lsl #12  ; [pp+0x217c0] List(9) [0, 0x3, 0x2, 0x1, "Cog", 0x1, "Dog", 0x2, Null]
    //     0x7bca10: ldr             x4, [x4, #0x7c0]
    // 0x7bca14: r0 = call 0x3c0224
    //     0x7bca14: bl              #0x3c0224
    // 0x7bca18: r0 = Null
    //     0x7bca18: mov             x0, NULL
    // 0x7bca1c: r0 = ReturnAsyncNotFuture()
    //     0x7bca1c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bca20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bca20: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bca24: b               #0x7bc8f0
  }
  [closure] Future<void> <anonymous closure>(dynamic, Tna) async {
    // ** addr: 0x7bca28, size: 0x114
    // 0x7bca28: EnterFrame
    //     0x7bca28: stp             fp, lr, [SP, #-0x10]!
    //     0x7bca2c: mov             fp, SP
    // 0x7bca30: AllocStack(0x20)
    //     0x7bca30: sub             SP, SP, #0x20
    // 0x7bca34: SetupParameters(yab this /* r1 */)
    //     0x7bca34: stur            NULL, [fp, #-8]
    //     0x7bca38: movz            x0, #0
    //     0x7bca3c: add             x1, fp, w0, sxtw #2
    //     0x7bca40: ldr             x1, [x1, #0x18]
    //     0x7bca44: ldur            w2, [x1, #0x17]
    //     0x7bca48: add             x2, x2, HEAP, lsl #32
    //     0x7bca4c: stur            x2, [fp, #-0x10]
    // 0x7bca50: CheckStackOverflow
    //     0x7bca50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bca54: cmp             SP, x16
    //     0x7bca58: b.ls            #0x7bcb34
    // 0x7bca5c: InitAsync() -> Future<void?>
    //     0x7bca5c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bca60: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bca64: ldur            x0, [fp, #-0x10]
    // 0x7bca68: LoadField: r1 = r0->field_f
    //     0x7bca68: ldur            w1, [x0, #0xf]
    // 0x7bca6c: DecompressPointer r1
    //     0x7bca6c: add             x1, x1, HEAP, lsl #32
    // 0x7bca70: LoadField: r2 = r1->field_b
    //     0x7bca70: ldur            w2, [x1, #0xb]
    // 0x7bca74: DecompressPointer r2
    //     0x7bca74: add             x2, x2, HEAP, lsl #32
    // 0x7bca78: stur            x2, [fp, #-0x18]
    // 0x7bca7c: r1 = "9fcc07a9"
    //     0x7bca7c: add             x1, PP, #0x21, lsl #12  ; [pp+0x217c8] "9fcc07a9"
    //     0x7bca80: ldr             x1, [x1, #0x7c8]
    // 0x7bca84: r0 = call 0x6189ec
    //     0x7bca84: bl              #0x6189ec
    // 0x7bca88: ldur            x1, [fp, #-0x18]
    // 0x7bca8c: r2 = LoadClassIdInstr(r1)
    //     0x7bca8c: ldur            x2, [x1, #-1]
    //     0x7bca90: ubfx            x2, x2, #0xc, #0x14
    // 0x7bca94: mov             x16, x0
    // 0x7bca98: mov             x0, x2
    // 0x7bca9c: mov             x2, x16
    // 0x7bcaa0: mov             lr, x0
    // 0x7bcaa4: ldr             lr, [x21, lr, lsl #3]
    // 0x7bcaa8: blr             lr
    // 0x7bcaac: mov             x3, x0
    // 0x7bcab0: r2 = Null
    //     0x7bcab0: mov             x2, NULL
    // 0x7bcab4: r1 = Null
    //     0x7bcab4: mov             x1, NULL
    // 0x7bcab8: stur            x3, [fp, #-0x18]
    // 0x7bcabc: branchIfSmi(r0, 0x7bcae4)
    //     0x7bcabc: tbz             w0, #0, #0x7bcae4
    // 0x7bcac0: r4 = LoadClassIdInstr(r0)
    //     0x7bcac0: ldur            x4, [x0, #-1]
    //     0x7bcac4: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcac8: sub             x4, x4, #0x3c
    // 0x7bcacc: cmp             x4, #1
    // 0x7bcad0: b.ls            #0x7bcae4
    // 0x7bcad4: r8 = int
    //     0x7bcad4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bcad8: r3 = Null
    //     0x7bcad8: add             x3, PP, #0x21, lsl #12  ; [pp+0x217d0] Null
    //     0x7bcadc: ldr             x3, [x3, #0x7d0]
    // 0x7bcae0: r0 = int()
    //     0x7bcae0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bcae4: ldur            x0, [fp, #-0x10]
    // 0x7bcae8: LoadField: r3 = r0->field_13
    //     0x7bcae8: ldur            w3, [x0, #0x13]
    // 0x7bcaec: DecompressPointer r3
    //     0x7bcaec: add             x3, x3, HEAP, lsl #32
    // 0x7bcaf0: ldur            x1, [fp, #-0x18]
    // 0x7bcaf4: stur            x3, [fp, #-0x20]
    // 0x7bcaf8: r2 = LoadInt32Instr(r1)
    //     0x7bcaf8: sbfx            x2, x1, #1, #0x1f
    //     0x7bcafc: tbz             w1, #0, #0x7bcb04
    //     0x7bcb00: ldur            x2, [x1, #7]
    // 0x7bcb04: mov             x1, x3
    // 0x7bcb08: r0 = __unknown_function__()
    //     0x7bcb08: bl              #0x792234  ; [] ::__unknown_function__
    // 0x7bcb0c: mov             x1, x0
    // 0x7bcb10: stur            x1, [fp, #-0x18]
    // 0x7bcb14: r0 = Await()
    //     0x7bcb14: bl              #0x74ab64  ; AwaitStub
    // 0x7bcb18: ldur            x1, [fp, #-0x20]
    // 0x7bcb1c: r0 = __unknown_function__()
    //     0x7bcb1c: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7bcb20: mov             x1, x0
    // 0x7bcb24: stur            x1, [fp, #-0x18]
    // 0x7bcb28: r0 = Await()
    //     0x7bcb28: bl              #0x74ab64  ; AwaitStub
    // 0x7bcb2c: r0 = Null
    //     0x7bcb2c: mov             x0, NULL
    // 0x7bcb30: r0 = ReturnAsyncNotFuture()
    //     0x7bcb30: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bcb34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bcb34: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bcb38: b               #0x7bca5c
  }
}

// lib: , url: mGi

// class id: 1049195, size: 0x8
class :: {
}

// class id: 2287, size: 0xc, field offset: 0x8
class Lxa extends Kxa {

  [closure] Future<Null> <anonymous closure>(dynamic, MethodCall) async {
    // ** addr: 0x7b6a44, size: 0x114
    // 0x7b6a44: EnterFrame
    //     0x7b6a44: stp             fp, lr, [SP, #-0x10]!
    //     0x7b6a48: mov             fp, SP
    // 0x7b6a4c: AllocStack(0x30)
    //     0x7b6a4c: sub             SP, SP, #0x30
    // 0x7b6a50: SetupParameters(Lxa this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7b6a50: stur            NULL, [fp, #-8]
    //     0x7b6a54: movz            x0, #0
    //     0x7b6a58: add             x1, fp, w0, sxtw #2
    //     0x7b6a5c: ldr             x1, [x1, #0x18]
    //     0x7b6a60: add             x2, fp, w0, sxtw #2
    //     0x7b6a64: ldr             x2, [x2, #0x10]
    //     0x7b6a68: stur            x2, [fp, #-0x18]
    //     0x7b6a6c: ldur            w3, [x1, #0x17]
    //     0x7b6a70: add             x3, x3, HEAP, lsl #32
    //     0x7b6a74: stur            x3, [fp, #-0x10]
    // 0x7b6a78: CheckStackOverflow
    //     0x7b6a78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b6a7c: cmp             SP, x16
    //     0x7b6a80: b.ls            #0x7b6b50
    // 0x7b6a84: InitAsync() -> Future<Null?>
    //     0x7b6a84: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7b6a88: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b6a8c: ldur            x0, [fp, #-0x18]
    // 0x7b6a90: LoadField: r2 = r0->field_7
    //     0x7b6a90: ldur            w2, [x0, #7]
    // 0x7b6a94: DecompressPointer r2
    //     0x7b6a94: add             x2, x2, HEAP, lsl #32
    // 0x7b6a98: stur            x2, [fp, #-0x20]
    // 0x7b6a9c: r1 = "166dbc0fc2337c0f40cf024c3cbb800d3d7300737d"
    //     0x7b6a9c: add             x1, PP, #0x29, lsl #12  ; [pp+0x298e8] "166dbc0fc2337c0f40cf024c3cbb800d3d7300737d"
    //     0x7b6aa0: ldr             x1, [x1, #0x8e8]
    // 0x7b6aa4: r0 = call 0x5b68a8
    //     0x7b6aa4: bl              #0x5b68a8
    // 0x7b6aa8: mov             x1, x0
    // 0x7b6aac: ldur            x0, [fp, #-0x20]
    // 0x7b6ab0: r2 = LoadClassIdInstr(r0)
    //     0x7b6ab0: ldur            x2, [x0, #-1]
    //     0x7b6ab4: ubfx            x2, x2, #0xc, #0x14
    // 0x7b6ab8: stp             x1, x0, [SP]
    // 0x7b6abc: mov             x0, x2
    // 0x7b6ac0: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7b6ac0: movz            x17, #0x245b
    //     0x7b6ac4: add             lr, x0, x17
    //     0x7b6ac8: ldr             lr, [x21, lr, lsl #3]
    //     0x7b6acc: blr             lr
    // 0x7b6ad0: tbnz            w0, #4, #0x7b6b48
    // 0x7b6ad4: ldur            x0, [fp, #-0x18]
    // 0x7b6ad8: ldur            x1, [fp, #-0x10]
    // 0x7b6adc: LoadField: r3 = r1->field_f
    //     0x7b6adc: ldur            w3, [x1, #0xf]
    // 0x7b6ae0: DecompressPointer r3
    //     0x7b6ae0: add             x3, x3, HEAP, lsl #32
    // 0x7b6ae4: stur            x3, [fp, #-0x20]
    // 0x7b6ae8: LoadField: r4 = r0->field_b
    //     0x7b6ae8: ldur            w4, [x0, #0xb]
    // 0x7b6aec: DecompressPointer r4
    //     0x7b6aec: add             x4, x4, HEAP, lsl #32
    // 0x7b6af0: mov             x0, x4
    // 0x7b6af4: stur            x4, [fp, #-0x10]
    // 0x7b6af8: r2 = Null
    //     0x7b6af8: mov             x2, NULL
    // 0x7b6afc: r1 = Null
    //     0x7b6afc: mov             x1, NULL
    // 0x7b6b00: r4 = 60
    //     0x7b6b00: movz            x4, #0x3c
    // 0x7b6b04: branchIfSmi(r0, 0x7b6b10)
    //     0x7b6b04: tbz             w0, #0, #0x7b6b10
    // 0x7b6b08: r4 = LoadClassIdInstr(r0)
    //     0x7b6b08: ldur            x4, [x0, #-1]
    //     0x7b6b0c: ubfx            x4, x4, #0xc, #0x14
    // 0x7b6b10: sub             x4, x4, #0x5e
    // 0x7b6b14: cmp             x4, #1
    // 0x7b6b18: b.ls            #0x7b6b2c
    // 0x7b6b1c: r8 = String
    //     0x7b6b1c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7b6b20: r3 = Null
    //     0x7b6b20: add             x3, PP, #0x29, lsl #12  ; [pp+0x298f0] Null
    //     0x7b6b24: ldr             x3, [x3, #0x8f0]
    // 0x7b6b28: r0 = String()
    //     0x7b6b28: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7b6b2c: ldur            x16, [fp, #-0x20]
    // 0x7b6b30: ldur            lr, [fp, #-0x10]
    // 0x7b6b34: stp             lr, x16, [SP]
    // 0x7b6b38: ldur            x0, [fp, #-0x20]
    // 0x7b6b3c: ClosureCall
    //     0x7b6b3c: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7b6b40: ldur            x2, [x0, #0x1f]
    //     0x7b6b44: blr             x2
    // 0x7b6b48: r0 = Null
    //     0x7b6b48: mov             x0, NULL
    // 0x7b6b4c: r0 = ReturnAsyncNotFuture()
    //     0x7b6b4c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b6b50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b6b50: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b6b54: b               #0x7b6a84
  }
}

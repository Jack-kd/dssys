// lib: , url: xSi

// class id: 1049805, size: 0x8
class :: {
}

// class id: 4010, size: 0xc, field offset: 0xc
//   const constructor, 
class Hab extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, Map<String, dynamic>) async {
    // ** addr: 0x7bde64, size: 0x190
    // 0x7bde64: EnterFrame
    //     0x7bde64: stp             fp, lr, [SP, #-0x10]!
    //     0x7bde68: mov             fp, SP
    // 0x7bde6c: AllocStack(0x88)
    //     0x7bde6c: sub             SP, SP, #0x88
    // 0x7bde70: SetupParameters(Hab this /* r1 */, dynamic _ /* r2, fp-0x60 */)
    //     0x7bde70: stur            NULL, [fp, #-8]
    //     0x7bde74: movz            x0, #0
    //     0x7bde78: add             x1, fp, w0, sxtw #2
    //     0x7bde7c: ldr             x1, [x1, #0x18]
    //     0x7bde80: add             x2, fp, w0, sxtw #2
    //     0x7bde84: ldr             x2, [x2, #0x10]
    //     0x7bde88: stur            x2, [fp, #-0x60]
    //     0x7bde8c: ldur            w3, [x1, #0x17]
    //     0x7bde90: add             x3, x3, HEAP, lsl #32
    //     0x7bde94: stur            x3, [fp, #-0x58]
    // 0x7bde98: CheckStackOverflow
    //     0x7bde98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bde9c: cmp             SP, x16
    //     0x7bdea0: b.ls            #0x7bdfec
    // 0x7bdea4: InitAsync() -> Future<void?>
    //     0x7bdea4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bdea8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bdeac: r0 = call 0x44df3c
    //     0x7bdeac: bl              #0x44df3c
    // 0x7bdeb0: ldur            x1, [fp, #-0x60]
    // 0x7bdeb4: ldur            x0, [fp, #-0x58]
    // 0x7bdeb8: LoadField: r2 = r0->field_13
    //     0x7bdeb8: ldur            w2, [x0, #0x13]
    // 0x7bdebc: DecompressPointer r2
    //     0x7bdebc: add             x2, x2, HEAP, lsl #32
    // 0x7bdec0: stur            x2, [fp, #-0x68]
    // 0x7bdec4: r0 = LoadStaticField(0x1394)
    //     0x7bdec4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7bdec8: ldr             x0, [x0, #0x2728]
    // 0x7bdecc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7bded0: cmp             w0, w16
    // 0x7bded4: b.ne            #0x7bdee4
    // 0x7bded8: r2 = Vrg
    //     0x7bded8: add             x2, PP, #0x17, lsl #12  ; [pp+0x173d8] Field <::.Vrg>: static late final (offset: 0x1394)
    //     0x7bdedc: ldr             x2, [x2, #0x3d8]
    // 0x7bdee0: r0 = InitLateFinalStaticField()
    //     0x7bdee0: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7bdee4: r16 = <FZa>
    //     0x7bdee4: add             x16, PP, #0x17, lsl #12  ; [pp+0x173e0] TypeArguments: <FZa>
    //     0x7bdee8: ldr             x16, [x16, #0x3e0]
    // 0x7bdeec: ldur            lr, [fp, #-0x68]
    // 0x7bdef0: stp             lr, x16, [SP, #8]
    // 0x7bdef4: str             x0, [SP]
    // 0x7bdef8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7bdef8: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7bdefc: r0 = call 0x263414
    //     0x7bdefc: bl              #0x263414
    // 0x7bdf00: r1 = "68e4ca7398a345e8"
    //     0x7bdf00: add             x1, PP, #0x17, lsl #12  ; [pp+0x176d0] "68e4ca7398a345e8"
    //     0x7bdf04: ldr             x1, [x1, #0x6d0]
    // 0x7bdf08: stur            x0, [fp, #-0x68]
    // 0x7bdf0c: r0 = call 0x61ae40
    //     0x7bdf0c: bl              #0x61ae40
    // 0x7bdf10: ldur            x3, [fp, #-0x60]
    // 0x7bdf14: r1 = LoadClassIdInstr(r3)
    //     0x7bdf14: ldur            x1, [x3, #-1]
    //     0x7bdf18: ubfx            x1, x1, #0xc, #0x14
    // 0x7bdf1c: mov             x2, x0
    // 0x7bdf20: mov             x0, x1
    // 0x7bdf24: mov             x1, x3
    // 0x7bdf28: mov             lr, x0
    // 0x7bdf2c: ldr             lr, [x21, lr, lsl #3]
    // 0x7bdf30: blr             lr
    // 0x7bdf34: mov             x3, x0
    // 0x7bdf38: r2 = Null
    //     0x7bdf38: mov             x2, NULL
    // 0x7bdf3c: r1 = Null
    //     0x7bdf3c: mov             x1, NULL
    // 0x7bdf40: stur            x3, [fp, #-0x70]
    // 0x7bdf44: branchIfSmi(r0, 0x7bdf6c)
    //     0x7bdf44: tbz             w0, #0, #0x7bdf6c
    // 0x7bdf48: r4 = LoadClassIdInstr(r0)
    //     0x7bdf48: ldur            x4, [x0, #-1]
    //     0x7bdf4c: ubfx            x4, x4, #0xc, #0x14
    // 0x7bdf50: sub             x4, x4, #0x3c
    // 0x7bdf54: cmp             x4, #1
    // 0x7bdf58: b.ls            #0x7bdf6c
    // 0x7bdf5c: r8 = int
    //     0x7bdf5c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bdf60: r3 = Null
    //     0x7bdf60: add             x3, PP, #0x17, lsl #12  ; [pp+0x176d8] Null
    //     0x7bdf64: ldr             x3, [x3, #0x6d8]
    // 0x7bdf68: r0 = int()
    //     0x7bdf68: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bdf6c: ldur            x0, [fp, #-0x70]
    // 0x7bdf70: r2 = LoadInt32Instr(r0)
    //     0x7bdf70: sbfx            x2, x0, #1, #0x1f
    //     0x7bdf74: tbz             w0, #0, #0x7bdf7c
    //     0x7bdf78: ldur            x2, [x0, #7]
    // 0x7bdf7c: ldur            x1, [fp, #-0x68]
    // 0x7bdf80: r0 = __unknown_function__()
    //     0x7bdf80: bl              #0x7bdff4  ; [] ::__unknown_function__
    // 0x7bdf84: mov             x1, x0
    // 0x7bdf88: stur            x1, [fp, #-0x68]
    // 0x7bdf8c: r0 = Await()
    //     0x7bdf8c: bl              #0x74ab64  ; AwaitStub
    // 0x7bdf90: ldur            x0, [fp, #-0x58]
    // 0x7bdf94: r0 = call 0x44ccec
    //     0x7bdf94: bl              #0x44ccec
    // 0x7bdf98: ldur            x0, [fp, #-0x58]
    // 0x7bdf9c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7bdf9c: ldur            w1, [x0, #0x17]
    // 0x7bdfa0: DecompressPointer r1
    //     0x7bdfa0: add             x1, x1, HEAP, lsl #32
    // 0x7bdfa4: LoadField: r2 = r1->field_f
    //     0x7bdfa4: ldur            w2, [x1, #0xf]
    // 0x7bdfa8: DecompressPointer r2
    //     0x7bdfa8: add             x2, x2, HEAP, lsl #32
    // 0x7bdfac: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x7bdfac: ldur            w1, [x2, #0x17]
    // 0x7bdfb0: DecompressPointer r1
    //     0x7bdfb0: add             x1, x1, HEAP, lsl #32
    // 0x7bdfb4: r0 = __unknown_function__()
    //     0x7bdfb4: bl              #0x77c444  ; [] ::__unknown_function__
    // 0x7bdfb8: mov             x1, x0
    // 0x7bdfbc: stur            x1, [fp, #-0x60]
    // 0x7bdfc0: r0 = Await()
    //     0x7bdfc0: bl              #0x74ab64  ; AwaitStub
    // 0x7bdfc4: r0 = Null
    //     0x7bdfc4: mov             x0, NULL
    // 0x7bdfc8: r0 = ReturnAsyncNotFuture()
    //     0x7bdfc8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bdfcc: sub             SP, fp, #0x88
    // 0x7bdfd0: stur            x0, [fp, #-0x58]
    // 0x7bdfd4: stur            x1, [fp, #-0x60]
    // 0x7bdfd8: r0 = call 0x44ccec
    //     0x7bdfd8: bl              #0x44ccec
    // 0x7bdfdc: ldur            x0, [fp, #-0x58]
    // 0x7bdfe0: ldur            x1, [fp, #-0x60]
    // 0x7bdfe4: r0 = ReThrow()
    //     0x7bdfe4: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7bdfe8: brk             #0
    // 0x7bdfec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bdfec: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bdff0: b               #0x7bdea4
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7be230, size: 0x11c
    // 0x7be230: EnterFrame
    //     0x7be230: stp             fp, lr, [SP, #-0x10]!
    //     0x7be234: mov             fp, SP
    // 0x7be238: AllocStack(0x80)
    //     0x7be238: sub             SP, SP, #0x80
    // 0x7be23c: SetupParameters(Hab this /* r1 */, dynamic _ /* r2, fp-0x60 */)
    //     0x7be23c: stur            NULL, [fp, #-8]
    //     0x7be240: movz            x0, #0
    //     0x7be244: add             x1, fp, w0, sxtw #2
    //     0x7be248: ldr             x1, [x1, #0x18]
    //     0x7be24c: add             x2, fp, w0, sxtw #2
    //     0x7be250: ldr             x2, [x2, #0x10]
    //     0x7be254: stur            x2, [fp, #-0x60]
    //     0x7be258: ldur            w3, [x1, #0x17]
    //     0x7be25c: add             x3, x3, HEAP, lsl #32
    //     0x7be260: stur            x3, [fp, #-0x58]
    // 0x7be264: CheckStackOverflow
    //     0x7be264: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7be268: cmp             SP, x16
    //     0x7be26c: b.ls            #0x7be344
    // 0x7be270: InitAsync() -> Future<void?>
    //     0x7be270: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7be274: bl              #0x74ada8  ; InitAsyncStub
    // 0x7be278: r0 = call 0x44df3c
    //     0x7be278: bl              #0x44df3c
    // 0x7be27c: ldur            x0, [fp, #-0x58]
    // 0x7be280: LoadField: r1 = r0->field_13
    //     0x7be280: ldur            w1, [x0, #0x13]
    // 0x7be284: DecompressPointer r1
    //     0x7be284: add             x1, x1, HEAP, lsl #32
    // 0x7be288: stur            x1, [fp, #-0x68]
    // 0x7be28c: r0 = LoadStaticField(0x1394)
    //     0x7be28c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7be290: ldr             x0, [x0, #0x2728]
    // 0x7be294: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7be298: cmp             w0, w16
    // 0x7be29c: b.ne            #0x7be2ac
    // 0x7be2a0: r2 = Vrg
    //     0x7be2a0: add             x2, PP, #0x17, lsl #12  ; [pp+0x173d8] Field <::.Vrg>: static late final (offset: 0x1394)
    //     0x7be2a4: ldr             x2, [x2, #0x3d8]
    // 0x7be2a8: r0 = InitLateFinalStaticField()
    //     0x7be2a8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7be2ac: r16 = <FZa>
    //     0x7be2ac: add             x16, PP, #0x17, lsl #12  ; [pp+0x173e0] TypeArguments: <FZa>
    //     0x7be2b0: ldr             x16, [x16, #0x3e0]
    // 0x7be2b4: ldur            lr, [fp, #-0x68]
    // 0x7be2b8: stp             lr, x16, [SP, #8]
    // 0x7be2bc: str             x0, [SP]
    // 0x7be2c0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7be2c0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7be2c4: r0 = call 0x263414
    //     0x7be2c4: bl              #0x263414
    // 0x7be2c8: mov             x1, x0
    // 0x7be2cc: r0 = __unknown_function__()
    //     0x7be2cc: bl              #0x7be34c  ; [] ::__unknown_function__
    // 0x7be2d0: mov             x1, x0
    // 0x7be2d4: stur            x1, [fp, #-0x68]
    // 0x7be2d8: r0 = Await()
    //     0x7be2d8: bl              #0x74ab64  ; AwaitStub
    // 0x7be2dc: ldur            x0, [fp, #-0x58]
    // 0x7be2e0: r0 = call 0x44ccec
    //     0x7be2e0: bl              #0x44ccec
    // 0x7be2e4: ldur            x0, [fp, #-0x58]
    // 0x7be2e8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7be2e8: ldur            w1, [x0, #0x17]
    // 0x7be2ec: DecompressPointer r1
    //     0x7be2ec: add             x1, x1, HEAP, lsl #32
    // 0x7be2f0: LoadField: r0 = r1->field_13
    //     0x7be2f0: ldur            w0, [x1, #0x13]
    // 0x7be2f4: DecompressPointer r0
    //     0x7be2f4: add             x0, x0, HEAP, lsl #32
    // 0x7be2f8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7be2f8: ldur            w1, [x0, #0x17]
    // 0x7be2fc: DecompressPointer r1
    //     0x7be2fc: add             x1, x1, HEAP, lsl #32
    // 0x7be300: r0 = call 0x4504b4
    //     0x7be300: bl              #0x4504b4
    // 0x7be304: ldur            x16, [fp, #-0x60]
    // 0x7be308: str             x16, [SP]
    // 0x7be30c: ldur            x0, [fp, #-0x60]
    // 0x7be310: ClosureCall
    //     0x7be310: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7be314: ldur            x2, [x0, #0x1f]
    //     0x7be318: blr             x2
    // 0x7be31c: r0 = Null
    //     0x7be31c: mov             x0, NULL
    // 0x7be320: r0 = ReturnAsyncNotFuture()
    //     0x7be320: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7be324: sub             SP, fp, #0x80
    // 0x7be328: stur            x0, [fp, #-0x58]
    // 0x7be32c: stur            x1, [fp, #-0x60]
    // 0x7be330: r0 = call 0x44ccec
    //     0x7be330: bl              #0x44ccec
    // 0x7be334: ldur            x0, [fp, #-0x58]
    // 0x7be338: ldur            x1, [fp, #-0x60]
    // 0x7be33c: r0 = ReThrow()
    //     0x7be33c: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7be340: brk             #0
    // 0x7be344: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7be344: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7be348: b               #0x7be270
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x61b5b8, size: -0x1
  }
  [closure] List<KX> <anonymous closure>(dynamic, Tna, pHa<int, dynamic>, (dynamic) => void) {
    // ** addr: 0x61b274, size: -0x1
  }
  [closure] DHa<int, dynamic> <anonymous closure>(dynamic, {required fHa<dynamic> mWf, required (dynamic) => void lWf, required pHa<int, dynamic> state}) {
    // ** addr: 0x44f324, size: -0x1
  }
  [closure] bla <anonymous closure>(dynamic, Tna, dynamic, int) {
    // ** addr: 0x61b40c, size: -0x1
  }
  [closure] fYa <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x61b3b8, size: -0x1
  }
  [closure] bYa <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x461314, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Map<String, dynamic>) {
    // ** addr: 0x456548, size: -0x1
  }
}

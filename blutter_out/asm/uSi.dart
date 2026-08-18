// lib: , url: uSi

// class id: 1049802, size: 0x8
class :: {
}

// class id: 4012, size: 0x1c, field offset: 0xc
//   const constructor, 
class Dab extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7bcb3c, size: 0x3d4
    // 0x7bcb3c: EnterFrame
    //     0x7bcb3c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bcb40: mov             fp, SP
    // 0x7bcb44: AllocStack(0x30)
    //     0x7bcb44: sub             SP, SP, #0x30
    // 0x7bcb48: SetupParameters(Dab this /* r1 */)
    //     0x7bcb48: stur            NULL, [fp, #-8]
    //     0x7bcb4c: movz            x0, #0
    //     0x7bcb50: add             x1, fp, w0, sxtw #2
    //     0x7bcb54: ldr             x1, [x1, #0x10]
    //     0x7bcb58: ldur            w2, [x1, #0x17]
    //     0x7bcb5c: add             x2, x2, HEAP, lsl #32
    //     0x7bcb60: stur            x2, [fp, #-0x10]
    // 0x7bcb64: CheckStackOverflow
    //     0x7bcb64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bcb68: cmp             SP, x16
    //     0x7bcb6c: b.ls            #0x7bcf08
    // 0x7bcb70: InitAsync() -> Future<void?>
    //     0x7bcb70: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bcb74: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bcb78: ldur            x0, [fp, #-0x10]
    // 0x7bcb7c: LoadField: r1 = r0->field_f
    //     0x7bcb7c: ldur            w1, [x0, #0xf]
    // 0x7bcb80: DecompressPointer r1
    //     0x7bcb80: add             x1, x1, HEAP, lsl #32
    // 0x7bcb84: LoadField: r2 = r1->field_b
    //     0x7bcb84: ldur            w2, [x1, #0xb]
    // 0x7bcb88: DecompressPointer r2
    //     0x7bcb88: add             x2, x2, HEAP, lsl #32
    // 0x7bcb8c: stur            x2, [fp, #-0x18]
    // 0x7bcb90: r1 = "3559d540c6445d58"
    //     0x7bcb90: add             x1, PP, #0x21, lsl #12  ; [pp+0x21518] "3559d540c6445d58"
    //     0x7bcb94: ldr             x1, [x1, #0x518]
    // 0x7bcb98: r0 = call 0x61a2f4
    //     0x7bcb98: bl              #0x61a2f4
    // 0x7bcb9c: ldur            x1, [fp, #-0x18]
    // 0x7bcba0: r2 = LoadClassIdInstr(r1)
    //     0x7bcba0: ldur            x2, [x1, #-1]
    //     0x7bcba4: ubfx            x2, x2, #0xc, #0x14
    // 0x7bcba8: mov             x16, x0
    // 0x7bcbac: mov             x0, x2
    // 0x7bcbb0: mov             x2, x16
    // 0x7bcbb4: mov             lr, x0
    // 0x7bcbb8: ldr             lr, [x21, lr, lsl #3]
    // 0x7bcbbc: blr             lr
    // 0x7bcbc0: mov             x3, x0
    // 0x7bcbc4: r2 = Null
    //     0x7bcbc4: mov             x2, NULL
    // 0x7bcbc8: r1 = Null
    //     0x7bcbc8: mov             x1, NULL
    // 0x7bcbcc: stur            x3, [fp, #-0x18]
    // 0x7bcbd0: branchIfSmi(r0, 0x7bcbf8)
    //     0x7bcbd0: tbz             w0, #0, #0x7bcbf8
    // 0x7bcbd4: r4 = LoadClassIdInstr(r0)
    //     0x7bcbd4: ldur            x4, [x0, #-1]
    //     0x7bcbd8: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcbdc: sub             x4, x4, #0x3c
    // 0x7bcbe0: cmp             x4, #2
    // 0x7bcbe4: b.ls            #0x7bcbf8
    // 0x7bcbe8: r8 = num
    //     0x7bcbe8: ldr             x8, [PP, #0xe50]  ; [pp+0xe50] Type: num
    // 0x7bcbec: r3 = Null
    //     0x7bcbec: add             x3, PP, #0x21, lsl #12  ; [pp+0x21520] Null
    //     0x7bcbf0: ldr             x3, [x3, #0x520]
    // 0x7bcbf4: r0 = DefaultTypeTest()
    //     0x7bcbf4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7bcbf8: ldur            x0, [fp, #-0x18]
    // 0x7bcbfc: r1 = 60
    //     0x7bcbfc: movz            x1, #0x3c
    // 0x7bcc00: branchIfSmi(r0, 0x7bcc0c)
    //     0x7bcc00: tbz             w0, #0, #0x7bcc0c
    // 0x7bcc04: r1 = LoadClassIdInstr(r0)
    //     0x7bcc04: ldur            x1, [x0, #-1]
    //     0x7bcc08: ubfx            x1, x1, #0xc, #0x14
    // 0x7bcc0c: str             x0, [SP]
    // 0x7bcc10: mov             x0, x1
    // 0x7bcc14: r0 = GDT[cid_x0 + -0xffd]()
    //     0x7bcc14: sub             lr, x0, #0xffd
    //     0x7bcc18: ldr             lr, [x21, lr, lsl #3]
    //     0x7bcc1c: blr             lr
    // 0x7bcc20: mov             x2, x0
    // 0x7bcc24: ldur            x0, [fp, #-0x10]
    // 0x7bcc28: stur            x2, [fp, #-0x20]
    // 0x7bcc2c: LoadField: r1 = r0->field_f
    //     0x7bcc2c: ldur            w1, [x0, #0xf]
    // 0x7bcc30: DecompressPointer r1
    //     0x7bcc30: add             x1, x1, HEAP, lsl #32
    // 0x7bcc34: LoadField: r3 = r1->field_b
    //     0x7bcc34: ldur            w3, [x1, #0xb]
    // 0x7bcc38: DecompressPointer r3
    //     0x7bcc38: add             x3, x3, HEAP, lsl #32
    // 0x7bcc3c: stur            x3, [fp, #-0x18]
    // 0x7bcc40: r1 = "14a907162f6e8a36"
    //     0x7bcc40: add             x1, PP, #0x21, lsl #12  ; [pp+0x21530] "14a907162f6e8a36"
    //     0x7bcc44: ldr             x1, [x1, #0x530]
    // 0x7bcc48: r0 = call 0x61a2f4
    //     0x7bcc48: bl              #0x61a2f4
    // 0x7bcc4c: ldur            x1, [fp, #-0x18]
    // 0x7bcc50: r2 = LoadClassIdInstr(r1)
    //     0x7bcc50: ldur            x2, [x1, #-1]
    //     0x7bcc54: ubfx            x2, x2, #0xc, #0x14
    // 0x7bcc58: mov             x16, x0
    // 0x7bcc5c: mov             x0, x2
    // 0x7bcc60: mov             x2, x16
    // 0x7bcc64: mov             lr, x0
    // 0x7bcc68: ldr             lr, [x21, lr, lsl #3]
    // 0x7bcc6c: blr             lr
    // 0x7bcc70: mov             x2, x0
    // 0x7bcc74: ldur            x0, [fp, #-0x10]
    // 0x7bcc78: stur            x2, [fp, #-0x28]
    // 0x7bcc7c: LoadField: r1 = r0->field_f
    //     0x7bcc7c: ldur            w1, [x0, #0xf]
    // 0x7bcc80: DecompressPointer r1
    //     0x7bcc80: add             x1, x1, HEAP, lsl #32
    // 0x7bcc84: LoadField: r3 = r1->field_b
    //     0x7bcc84: ldur            w3, [x1, #0xb]
    // 0x7bcc88: DecompressPointer r3
    //     0x7bcc88: add             x3, x3, HEAP, lsl #32
    // 0x7bcc8c: stur            x3, [fp, #-0x18]
    // 0x7bcc90: r1 = "8296ebd5"
    //     0x7bcc90: add             x1, PP, #0x21, lsl #12  ; [pp+0x21538] "8296ebd5"
    //     0x7bcc94: ldr             x1, [x1, #0x538]
    // 0x7bcc98: r0 = call 0x61a2f4
    //     0x7bcc98: bl              #0x61a2f4
    // 0x7bcc9c: ldur            x1, [fp, #-0x18]
    // 0x7bcca0: r2 = LoadClassIdInstr(r1)
    //     0x7bcca0: ldur            x2, [x1, #-1]
    //     0x7bcca4: ubfx            x2, x2, #0xc, #0x14
    // 0x7bcca8: mov             x16, x0
    // 0x7bccac: mov             x0, x2
    // 0x7bccb0: mov             x2, x16
    // 0x7bccb4: mov             lr, x0
    // 0x7bccb8: ldr             lr, [x21, lr, lsl #3]
    // 0x7bccbc: blr             lr
    // 0x7bccc0: mov             x3, x0
    // 0x7bccc4: ldur            x0, [fp, #-0x20]
    // 0x7bccc8: stur            x3, [fp, #-0x18]
    // 0x7bcccc: r1 = LoadInt32Instr(r0)
    //     0x7bcccc: sbfx            x1, x0, #1, #0x1f
    //     0x7bccd0: tbz             w0, #0, #0x7bccd8
    //     0x7bccd4: ldur            x1, [x0, #7]
    // 0x7bccd8: cmp             x1, #6
    // 0x7bccdc: b.ne            #0x7bcd84
    // 0x7bcce0: ldur            x4, [fp, #-0x10]
    // 0x7bcce4: ldur            x0, [fp, #-0x28]
    // 0x7bcce8: r2 = Null
    //     0x7bcce8: mov             x2, NULL
    // 0x7bccec: r1 = Null
    //     0x7bccec: mov             x1, NULL
    // 0x7bccf0: r4 = 60
    //     0x7bccf0: movz            x4, #0x3c
    // 0x7bccf4: branchIfSmi(r0, 0x7bcd00)
    //     0x7bccf4: tbz             w0, #0, #0x7bcd00
    // 0x7bccf8: r4 = LoadClassIdInstr(r0)
    //     0x7bccf8: ldur            x4, [x0, #-1]
    //     0x7bccfc: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcd00: sub             x4, x4, #0x5e
    // 0x7bcd04: cmp             x4, #1
    // 0x7bcd08: b.ls            #0x7bcd1c
    // 0x7bcd0c: r8 = String
    //     0x7bcd0c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7bcd10: r3 = Null
    //     0x7bcd10: add             x3, PP, #0x21, lsl #12  ; [pp+0x21540] Null
    //     0x7bcd14: ldr             x3, [x3, #0x540]
    // 0x7bcd18: r0 = String()
    //     0x7bcd18: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7bcd1c: ldur            x0, [fp, #-0x18]
    // 0x7bcd20: r2 = Null
    //     0x7bcd20: mov             x2, NULL
    // 0x7bcd24: r1 = Null
    //     0x7bcd24: mov             x1, NULL
    // 0x7bcd28: branchIfSmi(r0, 0x7bcd50)
    //     0x7bcd28: tbz             w0, #0, #0x7bcd50
    // 0x7bcd2c: r4 = LoadClassIdInstr(r0)
    //     0x7bcd2c: ldur            x4, [x0, #-1]
    //     0x7bcd30: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcd34: sub             x4, x4, #0x3c
    // 0x7bcd38: cmp             x4, #1
    // 0x7bcd3c: b.ls            #0x7bcd50
    // 0x7bcd40: r8 = int
    //     0x7bcd40: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bcd44: r3 = Null
    //     0x7bcd44: add             x3, PP, #0x21, lsl #12  ; [pp+0x21550] Null
    //     0x7bcd48: ldr             x3, [x3, #0x550]
    // 0x7bcd4c: r0 = int()
    //     0x7bcd4c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bcd50: ldur            x0, [fp, #-0x10]
    // 0x7bcd54: LoadField: r1 = r0->field_13
    //     0x7bcd54: ldur            w1, [x0, #0x13]
    // 0x7bcd58: DecompressPointer r1
    //     0x7bcd58: add             x1, x1, HEAP, lsl #32
    // 0x7bcd5c: ldur            x3, [fp, #-0x18]
    // 0x7bcd60: r2 = LoadInt32Instr(r3)
    //     0x7bcd60: sbfx            x2, x3, #1, #0x1f
    //     0x7bcd64: tbz             w3, #0, #0x7bcd6c
    //     0x7bcd68: ldur            x2, [x3, #7]
    // 0x7bcd6c: ldur            x3, [fp, #-0x28]
    // 0x7bcd70: r0 = __unknown_function__()
    //     0x7bcd70: bl              #0x7bdb38  ; [] ::__unknown_function__
    // 0x7bcd74: mov             x1, x0
    // 0x7bcd78: stur            x1, [fp, #-0x20]
    // 0x7bcd7c: r0 = Await()
    //     0x7bcd7c: bl              #0x74ab64  ; AwaitStub
    // 0x7bcd80: b               #0x7bcee4
    // 0x7bcd84: cmp             x1, #4
    // 0x7bcd88: b.eq            #0x7bcd94
    // 0x7bcd8c: cmp             x1, #5
    // 0x7bcd90: b.ne            #0x7bce38
    // 0x7bcd94: ldur            x4, [fp, #-0x10]
    // 0x7bcd98: ldur            x0, [fp, #-0x28]
    // 0x7bcd9c: r2 = Null
    //     0x7bcd9c: mov             x2, NULL
    // 0x7bcda0: r1 = Null
    //     0x7bcda0: mov             x1, NULL
    // 0x7bcda4: r4 = 60
    //     0x7bcda4: movz            x4, #0x3c
    // 0x7bcda8: branchIfSmi(r0, 0x7bcdb4)
    //     0x7bcda8: tbz             w0, #0, #0x7bcdb4
    // 0x7bcdac: r4 = LoadClassIdInstr(r0)
    //     0x7bcdac: ldur            x4, [x0, #-1]
    //     0x7bcdb0: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcdb4: sub             x4, x4, #0x5e
    // 0x7bcdb8: cmp             x4, #1
    // 0x7bcdbc: b.ls            #0x7bcdd0
    // 0x7bcdc0: r8 = String
    //     0x7bcdc0: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7bcdc4: r3 = Null
    //     0x7bcdc4: add             x3, PP, #0x21, lsl #12  ; [pp+0x21560] Null
    //     0x7bcdc8: ldr             x3, [x3, #0x560]
    // 0x7bcdcc: r0 = String()
    //     0x7bcdcc: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7bcdd0: ldur            x0, [fp, #-0x18]
    // 0x7bcdd4: r2 = Null
    //     0x7bcdd4: mov             x2, NULL
    // 0x7bcdd8: r1 = Null
    //     0x7bcdd8: mov             x1, NULL
    // 0x7bcddc: branchIfSmi(r0, 0x7bce04)
    //     0x7bcddc: tbz             w0, #0, #0x7bce04
    // 0x7bcde0: r4 = LoadClassIdInstr(r0)
    //     0x7bcde0: ldur            x4, [x0, #-1]
    //     0x7bcde4: ubfx            x4, x4, #0xc, #0x14
    // 0x7bcde8: sub             x4, x4, #0x3c
    // 0x7bcdec: cmp             x4, #1
    // 0x7bcdf0: b.ls            #0x7bce04
    // 0x7bcdf4: r8 = int
    //     0x7bcdf4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bcdf8: r3 = Null
    //     0x7bcdf8: add             x3, PP, #0x21, lsl #12  ; [pp+0x21570] Null
    //     0x7bcdfc: ldr             x3, [x3, #0x570]
    // 0x7bce00: r0 = int()
    //     0x7bce00: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bce04: ldur            x0, [fp, #-0x10]
    // 0x7bce08: LoadField: r1 = r0->field_13
    //     0x7bce08: ldur            w1, [x0, #0x13]
    // 0x7bce0c: DecompressPointer r1
    //     0x7bce0c: add             x1, x1, HEAP, lsl #32
    // 0x7bce10: ldur            x3, [fp, #-0x18]
    // 0x7bce14: r2 = LoadInt32Instr(r3)
    //     0x7bce14: sbfx            x2, x3, #1, #0x1f
    //     0x7bce18: tbz             w3, #0, #0x7bce20
    //     0x7bce1c: ldur            x2, [x3, #7]
    // 0x7bce20: ldur            x3, [fp, #-0x28]
    // 0x7bce24: r0 = __unknown_function__()
    //     0x7bce24: bl              #0x7bd2a0  ; [] ::__unknown_function__
    // 0x7bce28: mov             x1, x0
    // 0x7bce2c: stur            x1, [fp, #-0x20]
    // 0x7bce30: r0 = Await()
    //     0x7bce30: bl              #0x74ab64  ; AwaitStub
    // 0x7bce34: b               #0x7bcee4
    // 0x7bce38: cmp             x1, #2
    // 0x7bce3c: b.ne            #0x7bcee4
    // 0x7bce40: ldur            x4, [fp, #-0x10]
    // 0x7bce44: ldur            x0, [fp, #-0x28]
    // 0x7bce48: r2 = Null
    //     0x7bce48: mov             x2, NULL
    // 0x7bce4c: r1 = Null
    //     0x7bce4c: mov             x1, NULL
    // 0x7bce50: r4 = 60
    //     0x7bce50: movz            x4, #0x3c
    // 0x7bce54: branchIfSmi(r0, 0x7bce60)
    //     0x7bce54: tbz             w0, #0, #0x7bce60
    // 0x7bce58: r4 = LoadClassIdInstr(r0)
    //     0x7bce58: ldur            x4, [x0, #-1]
    //     0x7bce5c: ubfx            x4, x4, #0xc, #0x14
    // 0x7bce60: sub             x4, x4, #0x5e
    // 0x7bce64: cmp             x4, #1
    // 0x7bce68: b.ls            #0x7bce7c
    // 0x7bce6c: r8 = String
    //     0x7bce6c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7bce70: r3 = Null
    //     0x7bce70: add             x3, PP, #0x21, lsl #12  ; [pp+0x21580] Null
    //     0x7bce74: ldr             x3, [x3, #0x580]
    // 0x7bce78: r0 = String()
    //     0x7bce78: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7bce7c: ldur            x0, [fp, #-0x18]
    // 0x7bce80: r2 = Null
    //     0x7bce80: mov             x2, NULL
    // 0x7bce84: r1 = Null
    //     0x7bce84: mov             x1, NULL
    // 0x7bce88: branchIfSmi(r0, 0x7bceb0)
    //     0x7bce88: tbz             w0, #0, #0x7bceb0
    // 0x7bce8c: r4 = LoadClassIdInstr(r0)
    //     0x7bce8c: ldur            x4, [x0, #-1]
    //     0x7bce90: ubfx            x4, x4, #0xc, #0x14
    // 0x7bce94: sub             x4, x4, #0x3c
    // 0x7bce98: cmp             x4, #1
    // 0x7bce9c: b.ls            #0x7bceb0
    // 0x7bcea0: r8 = int
    //     0x7bcea0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bcea4: r3 = Null
    //     0x7bcea4: add             x3, PP, #0x21, lsl #12  ; [pp+0x21590] Null
    //     0x7bcea8: ldr             x3, [x3, #0x590]
    // 0x7bceac: r0 = int()
    //     0x7bceac: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bceb0: ldur            x0, [fp, #-0x10]
    // 0x7bceb4: LoadField: r1 = r0->field_13
    //     0x7bceb4: ldur            w1, [x0, #0x13]
    // 0x7bceb8: DecompressPointer r1
    //     0x7bceb8: add             x1, x1, HEAP, lsl #32
    // 0x7bcebc: ldur            x2, [fp, #-0x18]
    // 0x7bcec0: r3 = LoadInt32Instr(r2)
    //     0x7bcec0: sbfx            x3, x2, #1, #0x1f
    //     0x7bcec4: tbz             w2, #0, #0x7bcecc
    //     0x7bcec8: ldur            x3, [x2, #7]
    // 0x7bcecc: mov             x2, x3
    // 0x7bced0: ldur            x3, [fp, #-0x28]
    // 0x7bced4: r0 = __unknown_function__()
    //     0x7bced4: bl              #0x7bcf10  ; [] ::__unknown_function__
    // 0x7bced8: mov             x1, x0
    // 0x7bcedc: stur            x1, [fp, #-0x18]
    // 0x7bcee0: r0 = Await()
    //     0x7bcee0: bl              #0x74ab64  ; AwaitStub
    // 0x7bcee4: ldur            x0, [fp, #-0x10]
    // 0x7bcee8: LoadField: r1 = r0->field_13
    //     0x7bcee8: ldur            w1, [x0, #0x13]
    // 0x7bceec: DecompressPointer r1
    //     0x7bceec: add             x1, x1, HEAP, lsl #32
    // 0x7bcef0: r0 = __unknown_function__()
    //     0x7bcef0: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7bcef4: mov             x1, x0
    // 0x7bcef8: stur            x1, [fp, #-0x18]
    // 0x7bcefc: r0 = Await()
    //     0x7bcefc: bl              #0x74ab64  ; AwaitStub
    // 0x7bcf00: r0 = Null
    //     0x7bcf00: mov             x0, NULL
    // 0x7bcf04: r0 = ReturnAsyncNotFuture()
    //     0x7bcf04: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bcf08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bcf08: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bcf0c: b               #0x7bcb70
  }
  [closure] Future<void> <anonymous closure>(dynamic, Tna) async {
    // ** addr: 0x7bdd38, size: 0x114
    // 0x7bdd38: EnterFrame
    //     0x7bdd38: stp             fp, lr, [SP, #-0x10]!
    //     0x7bdd3c: mov             fp, SP
    // 0x7bdd40: AllocStack(0x20)
    //     0x7bdd40: sub             SP, SP, #0x20
    // 0x7bdd44: SetupParameters(Dab this /* r1 */)
    //     0x7bdd44: stur            NULL, [fp, #-8]
    //     0x7bdd48: movz            x0, #0
    //     0x7bdd4c: add             x1, fp, w0, sxtw #2
    //     0x7bdd50: ldr             x1, [x1, #0x18]
    //     0x7bdd54: ldur            w2, [x1, #0x17]
    //     0x7bdd58: add             x2, x2, HEAP, lsl #32
    //     0x7bdd5c: stur            x2, [fp, #-0x10]
    // 0x7bdd60: CheckStackOverflow
    //     0x7bdd60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bdd64: cmp             SP, x16
    //     0x7bdd68: b.ls            #0x7bde44
    // 0x7bdd6c: InitAsync() -> Future<void?>
    //     0x7bdd6c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bdd70: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bdd74: ldur            x0, [fp, #-0x10]
    // 0x7bdd78: LoadField: r1 = r0->field_f
    //     0x7bdd78: ldur            w1, [x0, #0xf]
    // 0x7bdd7c: DecompressPointer r1
    //     0x7bdd7c: add             x1, x1, HEAP, lsl #32
    // 0x7bdd80: LoadField: r2 = r1->field_b
    //     0x7bdd80: ldur            w2, [x1, #0xb]
    // 0x7bdd84: DecompressPointer r2
    //     0x7bdd84: add             x2, x2, HEAP, lsl #32
    // 0x7bdd88: stur            x2, [fp, #-0x18]
    // 0x7bdd8c: r1 = "6b1de44f"
    //     0x7bdd8c: add             x1, PP, #0x21, lsl #12  ; [pp+0x21678] "6b1de44f"
    //     0x7bdd90: ldr             x1, [x1, #0x678]
    // 0x7bdd94: r0 = call 0x61a2f4
    //     0x7bdd94: bl              #0x61a2f4
    // 0x7bdd98: ldur            x1, [fp, #-0x18]
    // 0x7bdd9c: r2 = LoadClassIdInstr(r1)
    //     0x7bdd9c: ldur            x2, [x1, #-1]
    //     0x7bdda0: ubfx            x2, x2, #0xc, #0x14
    // 0x7bdda4: mov             x16, x0
    // 0x7bdda8: mov             x0, x2
    // 0x7bddac: mov             x2, x16
    // 0x7bddb0: mov             lr, x0
    // 0x7bddb4: ldr             lr, [x21, lr, lsl #3]
    // 0x7bddb8: blr             lr
    // 0x7bddbc: mov             x3, x0
    // 0x7bddc0: r2 = Null
    //     0x7bddc0: mov             x2, NULL
    // 0x7bddc4: r1 = Null
    //     0x7bddc4: mov             x1, NULL
    // 0x7bddc8: stur            x3, [fp, #-0x18]
    // 0x7bddcc: branchIfSmi(r0, 0x7bddf4)
    //     0x7bddcc: tbz             w0, #0, #0x7bddf4
    // 0x7bddd0: r4 = LoadClassIdInstr(r0)
    //     0x7bddd0: ldur            x4, [x0, #-1]
    //     0x7bddd4: ubfx            x4, x4, #0xc, #0x14
    // 0x7bddd8: sub             x4, x4, #0x3c
    // 0x7bdddc: cmp             x4, #1
    // 0x7bdde0: b.ls            #0x7bddf4
    // 0x7bdde4: r8 = int
    //     0x7bdde4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bdde8: r3 = Null
    //     0x7bdde8: add             x3, PP, #0x21, lsl #12  ; [pp+0x21680] Null
    //     0x7bddec: ldr             x3, [x3, #0x680]
    // 0x7bddf0: r0 = int()
    //     0x7bddf0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bddf4: ldur            x0, [fp, #-0x10]
    // 0x7bddf8: LoadField: r3 = r0->field_13
    //     0x7bddf8: ldur            w3, [x0, #0x13]
    // 0x7bddfc: DecompressPointer r3
    //     0x7bddfc: add             x3, x3, HEAP, lsl #32
    // 0x7bde00: ldur            x1, [fp, #-0x18]
    // 0x7bde04: stur            x3, [fp, #-0x20]
    // 0x7bde08: r2 = LoadInt32Instr(r1)
    //     0x7bde08: sbfx            x2, x1, #1, #0x1f
    //     0x7bde0c: tbz             w1, #0, #0x7bde14
    //     0x7bde10: ldur            x2, [x1, #7]
    // 0x7bde14: mov             x1, x3
    // 0x7bde18: r0 = __unknown_function__()
    //     0x7bde18: bl              #0x792234  ; [] ::__unknown_function__
    // 0x7bde1c: mov             x1, x0
    // 0x7bde20: stur            x1, [fp, #-0x18]
    // 0x7bde24: r0 = Await()
    //     0x7bde24: bl              #0x74ab64  ; AwaitStub
    // 0x7bde28: ldur            x1, [fp, #-0x20]
    // 0x7bde2c: r0 = __unknown_function__()
    //     0x7bde2c: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7bde30: mov             x1, x0
    // 0x7bde34: stur            x1, [fp, #-0x18]
    // 0x7bde38: r0 = Await()
    //     0x7bde38: bl              #0x74ab64  ; AwaitStub
    // 0x7bde3c: r0 = Null
    //     0x7bde3c: mov             x0, NULL
    // 0x7bde40: r0 = ReturnAsyncNotFuture()
    //     0x7bde40: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bde44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bde44: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bde48: b               #0x7bdd6c
  }
}

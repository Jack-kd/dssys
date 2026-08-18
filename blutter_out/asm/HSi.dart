// lib: , url: HSi

// class id: 1049816, size: 0x8
class :: {

  static late final vSa<UYa<dynamic>, Kab> Awg; // offset: 0x1434

  [closure] static Future<VYa<dynamic>> JWb(dynamic, int) async {
    // ** addr: 0x78be0c, size: 0x6a4
    // 0x78be0c: EnterFrame
    //     0x78be0c: stp             fp, lr, [SP, #-0x10]!
    //     0x78be10: mov             fp, SP
    // 0x78be14: AllocStack(0x60)
    //     0x78be14: sub             SP, SP, #0x60
    // 0x78be18: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x78be18: stur            NULL, [fp, #-8]
    //     0x78be1c: movz            x0, #0
    //     0x78be20: add             x1, fp, w0, sxtw #2
    //     0x78be24: ldr             x1, [x1, #0x18]
    //     0x78be28: add             x2, fp, w0, sxtw #2
    //     0x78be2c: ldr             x2, [x2, #0x10]
    //     0x78be30: stur            x2, [fp, #-0x18]
    //     0x78be34: ldur            w3, [x1, #0x17]
    //     0x78be38: add             x3, x3, HEAP, lsl #32
    //     0x78be3c: stur            x3, [fp, #-0x10]
    // 0x78be40: CheckStackOverflow
    //     0x78be40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78be44: cmp             SP, x16
    //     0x78be48: b.ls            #0x78c494
    // 0x78be4c: InitAsync() -> Future<VYa>
    //     0x78be4c: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a30] TypeArguments: <VYa>
    //     0x78be50: ldr             x0, [x0, #0xa30]
    //     0x78be54: bl              #0x74ada8  ; InitAsyncStub
    // 0x78be58: ldur            x0, [fp, #-0x10]
    // 0x78be5c: LoadField: r1 = r0->field_f
    //     0x78be5c: ldur            w1, [x0, #0xf]
    // 0x78be60: DecompressPointer r1
    //     0x78be60: add             x1, x1, HEAP, lsl #32
    // 0x78be64: stur            x1, [fp, #-0x20]
    // 0x78be68: r0 = LoadStaticField(0x1438)
    //     0x78be68: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x78be6c: ldr             x0, [x0, #0x2870]
    // 0x78be70: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78be74: cmp             w0, w16
    // 0x78be78: b.ne            #0x78be88
    // 0x78be7c: r2 = Ewg
    //     0x78be7c: add             x2, PP, #0x32, lsl #12  ; [pp+0x329f8] Field <::.Ewg>: static late final (offset: 0x1438)
    //     0x78be80: ldr             x2, [x2, #0x9f8]
    // 0x78be84: r0 = InitLateFinalStaticField()
    //     0x78be84: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x78be88: mov             x1, x0
    // 0x78be8c: ldur            x0, [fp, #-0x10]
    // 0x78be90: LoadField: r2 = r0->field_13
    //     0x78be90: ldur            w2, [x0, #0x13]
    // 0x78be94: DecompressPointer r2
    //     0x78be94: add             x2, x2, HEAP, lsl #32
    // 0x78be98: r0 = call 0x402158
    //     0x78be98: bl              #0x402158
    // 0x78be9c: r16 = <List<Vab>>
    //     0x78be9c: add             x16, PP, #0x32, lsl #12  ; [pp+0x32a08] TypeArguments: <List<Vab>>
    //     0x78bea0: ldr             x16, [x16, #0xa08]
    // 0x78bea4: ldur            lr, [fp, #-0x20]
    // 0x78bea8: stp             lr, x16, [SP, #8]
    // 0x78beac: str             x0, [SP]
    // 0x78beb0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78beb0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78beb4: r0 = call 0x259250
    //     0x78beb4: bl              #0x259250
    // 0x78beb8: r1 = Function '<anonymous closure>': static.
    //     0x78beb8: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a18] AnonymousClosure: static (0x4629c0), in [HSi] ::Awg (0x4615c0)
    //     0x78bebc: ldr             x1, [x1, #0xa18]
    // 0x78bec0: r2 = Null
    //     0x78bec0: mov             x2, NULL
    // 0x78bec4: stur            x0, [fp, #-0x20]
    // 0x78bec8: r0 = AllocateClosure()
    //     0x78bec8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78becc: r16 = <Vab>
    //     0x78becc: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2ac50] TypeArguments: <Vab>
    //     0x78bed0: ldr             x16, [x16, #0xc50]
    // 0x78bed4: ldur            lr, [fp, #-0x20]
    // 0x78bed8: stp             lr, x16, [SP, #8]
    // 0x78bedc: str             x0, [SP]
    // 0x78bee0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78bee0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78bee4: r0 = call 0x42aef8
    //     0x78bee4: bl              #0x42aef8
    // 0x78bee8: r1 = Function '<anonymous closure>': static.
    //     0x78bee8: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a20] AnonymousClosure: static (0x462950), in [HSi] ::Awg (0x4615c0)
    //     0x78beec: ldr             x1, [x1, #0xa20]
    // 0x78bef0: r2 = Null
    //     0x78bef0: mov             x2, NULL
    // 0x78bef4: stur            x0, [fp, #-0x28]
    // 0x78bef8: r0 = AllocateClosure()
    //     0x78bef8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78befc: r16 = <Vab>
    //     0x78befc: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2ac50] TypeArguments: <Vab>
    //     0x78bf00: ldr             x16, [x16, #0xc50]
    // 0x78bf04: ldur            lr, [fp, #-0x20]
    // 0x78bf08: stp             lr, x16, [SP, #8]
    // 0x78bf0c: str             x0, [SP]
    // 0x78bf10: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78bf10: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78bf14: r0 = call 0x42aef8
    //     0x78bf14: bl              #0x42aef8
    // 0x78bf18: r1 = Function '<anonymous closure>': static.
    //     0x78bf18: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a28] AnonymousClosure: static (0x4628e0), in [HSi] ::Awg (0x4615c0)
    //     0x78bf1c: ldr             x1, [x1, #0xa28]
    // 0x78bf20: r2 = Null
    //     0x78bf20: mov             x2, NULL
    // 0x78bf24: stur            x0, [fp, #-0x30]
    // 0x78bf28: r0 = AllocateClosure()
    //     0x78bf28: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78bf2c: r16 = <Vab>
    //     0x78bf2c: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2ac50] TypeArguments: <Vab>
    //     0x78bf30: ldr             x16, [x16, #0xc50]
    // 0x78bf34: ldur            lr, [fp, #-0x20]
    // 0x78bf38: stp             lr, x16, [SP, #8]
    // 0x78bf3c: str             x0, [SP]
    // 0x78bf40: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78bf40: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78bf44: r0 = call 0x42aef8
    //     0x78bf44: bl              #0x42aef8
    // 0x78bf48: r1 = Function '<anonymous closure>': static.
    //     0x78bf48: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a30] AnonymousClosure: static (0x462870), in [HSi] ::Awg (0x4615c0)
    //     0x78bf4c: ldr             x1, [x1, #0xa30]
    // 0x78bf50: r2 = Null
    //     0x78bf50: mov             x2, NULL
    // 0x78bf54: stur            x0, [fp, #-0x38]
    // 0x78bf58: r0 = AllocateClosure()
    //     0x78bf58: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78bf5c: r16 = <Vab>
    //     0x78bf5c: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2ac50] TypeArguments: <Vab>
    //     0x78bf60: ldr             x16, [x16, #0xc50]
    // 0x78bf64: ldur            lr, [fp, #-0x20]
    // 0x78bf68: stp             lr, x16, [SP, #8]
    // 0x78bf6c: str             x0, [SP]
    // 0x78bf70: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78bf70: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78bf74: r0 = call 0x42aef8
    //     0x78bf74: bl              #0x42aef8
    // 0x78bf78: r1 = Function '<anonymous closure>': static.
    //     0x78bf78: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a38] AnonymousClosure: static (0x462800), in [HSi] ::Awg (0x4615c0)
    //     0x78bf7c: ldr             x1, [x1, #0xa38]
    // 0x78bf80: r2 = Null
    //     0x78bf80: mov             x2, NULL
    // 0x78bf84: stur            x0, [fp, #-0x40]
    // 0x78bf88: r0 = AllocateClosure()
    //     0x78bf88: bl              #0x7dd600  ; AllocateClosureStub
    // 0x78bf8c: r16 = <Vab>
    //     0x78bf8c: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2ac50] TypeArguments: <Vab>
    //     0x78bf90: ldr             x16, [x16, #0xc50]
    // 0x78bf94: ldur            lr, [fp, #-0x20]
    // 0x78bf98: stp             lr, x16, [SP, #8]
    // 0x78bf9c: str             x0, [SP]
    // 0x78bfa0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78bfa0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78bfa4: r0 = call 0x42aef8
    //     0x78bfa4: bl              #0x42aef8
    // 0x78bfa8: mov             x2, x0
    // 0x78bfac: ldur            x4, [fp, #-0x10]
    // 0x78bfb0: LoadField: r0 = r4->field_13
    //     0x78bfb0: ldur            w0, [x4, #0x13]
    // 0x78bfb4: DecompressPointer r0
    //     0x78bfb4: add             x0, x0, HEAP, lsl #32
    // 0x78bfb8: LoadField: r3 = r0->field_7
    //     0x78bfb8: ldur            x3, [x0, #7]
    // 0x78bfbc: ldur            x0, [fp, #-0x28]
    // 0x78bfc0: cmp             w0, NULL
    // 0x78bfc4: b.ne            #0x78bfd0
    // 0x78bfc8: r5 = ""
    //     0x78bfc8: ldr             x5, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78bfcc: b               #0x78c02c
    // 0x78bfd0: LoadField: r5 = r0->field_13
    //     0x78bfd0: ldur            w5, [x0, #0x13]
    // 0x78bfd4: DecompressPointer r5
    //     0x78bfd4: add             x5, x5, HEAP, lsl #32
    // 0x78bfd8: LoadField: r6 = r0->field_b
    //     0x78bfd8: ldur            x6, [x0, #0xb]
    // 0x78bfdc: LoadField: r0 = r5->field_b
    //     0x78bfdc: ldur            w0, [x5, #0xb]
    // 0x78bfe0: r1 = LoadInt32Instr(r0)
    //     0x78bfe0: sbfx            x1, x0, #1, #0x1f
    // 0x78bfe4: cbnz            x1, #0x78bff0
    // 0x78bfe8: r5 = ""
    //     0x78bfe8: ldr             x5, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78bfec: b               #0x78c02c
    // 0x78bff0: tbnz            x6, #0x3f, #0x78bffc
    // 0x78bff4: cmp             x6, x1
    // 0x78bff8: b.lt            #0x78c004
    // 0x78bffc: r5 = ""
    //     0x78bffc: ldr             x5, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c000: b               #0x78c02c
    // 0x78c004: mov             x0, x1
    // 0x78c008: mov             x1, x6
    // 0x78c00c: cmp             x1, x0
    // 0x78c010: b.hs            #0x78c49c
    // 0x78c014: LoadField: r0 = r5->field_f
    //     0x78c014: ldur            w0, [x5, #0xf]
    // 0x78c018: DecompressPointer r0
    //     0x78c018: add             x0, x0, HEAP, lsl #32
    // 0x78c01c: ArrayLoad: r1 = r0[r6]  ; Unknown_4
    //     0x78c01c: add             x16, x0, x6, lsl #2
    //     0x78c020: ldur            w1, [x16, #0xf]
    // 0x78c024: DecompressPointer r1
    //     0x78c024: add             x1, x1, HEAP, lsl #32
    // 0x78c028: mov             x5, x1
    // 0x78c02c: ldur            x0, [fp, #-0x30]
    // 0x78c030: cmp             w0, NULL
    // 0x78c034: b.ne            #0x78c040
    // 0x78c038: r6 = ""
    //     0x78c038: ldr             x6, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c03c: b               #0x78c09c
    // 0x78c040: LoadField: r6 = r0->field_13
    //     0x78c040: ldur            w6, [x0, #0x13]
    // 0x78c044: DecompressPointer r6
    //     0x78c044: add             x6, x6, HEAP, lsl #32
    // 0x78c048: LoadField: r7 = r0->field_b
    //     0x78c048: ldur            x7, [x0, #0xb]
    // 0x78c04c: LoadField: r0 = r6->field_b
    //     0x78c04c: ldur            w0, [x6, #0xb]
    // 0x78c050: r1 = LoadInt32Instr(r0)
    //     0x78c050: sbfx            x1, x0, #1, #0x1f
    // 0x78c054: cbnz            x1, #0x78c060
    // 0x78c058: r6 = ""
    //     0x78c058: ldr             x6, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c05c: b               #0x78c09c
    // 0x78c060: tbnz            x7, #0x3f, #0x78c06c
    // 0x78c064: cmp             x7, x1
    // 0x78c068: b.lt            #0x78c074
    // 0x78c06c: r6 = ""
    //     0x78c06c: ldr             x6, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c070: b               #0x78c09c
    // 0x78c074: mov             x0, x1
    // 0x78c078: mov             x1, x7
    // 0x78c07c: cmp             x1, x0
    // 0x78c080: b.hs            #0x78c4a0
    // 0x78c084: LoadField: r0 = r6->field_f
    //     0x78c084: ldur            w0, [x6, #0xf]
    // 0x78c088: DecompressPointer r0
    //     0x78c088: add             x0, x0, HEAP, lsl #32
    // 0x78c08c: ArrayLoad: r1 = r0[r7]  ; Unknown_4
    //     0x78c08c: add             x16, x0, x7, lsl #2
    //     0x78c090: ldur            w1, [x16, #0xf]
    // 0x78c094: DecompressPointer r1
    //     0x78c094: add             x1, x1, HEAP, lsl #32
    // 0x78c098: mov             x6, x1
    // 0x78c09c: ldur            x0, [fp, #-0x38]
    // 0x78c0a0: cmp             w0, NULL
    // 0x78c0a4: b.ne            #0x78c0b0
    // 0x78c0a8: r7 = ""
    //     0x78c0a8: ldr             x7, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c0ac: b               #0x78c10c
    // 0x78c0b0: LoadField: r7 = r0->field_13
    //     0x78c0b0: ldur            w7, [x0, #0x13]
    // 0x78c0b4: DecompressPointer r7
    //     0x78c0b4: add             x7, x7, HEAP, lsl #32
    // 0x78c0b8: LoadField: r8 = r0->field_b
    //     0x78c0b8: ldur            x8, [x0, #0xb]
    // 0x78c0bc: LoadField: r0 = r7->field_b
    //     0x78c0bc: ldur            w0, [x7, #0xb]
    // 0x78c0c0: r1 = LoadInt32Instr(r0)
    //     0x78c0c0: sbfx            x1, x0, #1, #0x1f
    // 0x78c0c4: cbnz            x1, #0x78c0d0
    // 0x78c0c8: r7 = ""
    //     0x78c0c8: ldr             x7, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c0cc: b               #0x78c10c
    // 0x78c0d0: tbnz            x8, #0x3f, #0x78c0dc
    // 0x78c0d4: cmp             x8, x1
    // 0x78c0d8: b.lt            #0x78c0e4
    // 0x78c0dc: r7 = ""
    //     0x78c0dc: ldr             x7, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c0e0: b               #0x78c10c
    // 0x78c0e4: mov             x0, x1
    // 0x78c0e8: mov             x1, x8
    // 0x78c0ec: cmp             x1, x0
    // 0x78c0f0: b.hs            #0x78c4a4
    // 0x78c0f4: LoadField: r0 = r7->field_f
    //     0x78c0f4: ldur            w0, [x7, #0xf]
    // 0x78c0f8: DecompressPointer r0
    //     0x78c0f8: add             x0, x0, HEAP, lsl #32
    // 0x78c0fc: ArrayLoad: r1 = r0[r8]  ; Unknown_4
    //     0x78c0fc: add             x16, x0, x8, lsl #2
    //     0x78c100: ldur            w1, [x16, #0xf]
    // 0x78c104: DecompressPointer r1
    //     0x78c104: add             x1, x1, HEAP, lsl #32
    // 0x78c108: mov             x7, x1
    // 0x78c10c: ldur            x0, [fp, #-0x40]
    // 0x78c110: cmp             w0, NULL
    // 0x78c114: b.ne            #0x78c120
    // 0x78c118: r8 = ""
    //     0x78c118: ldr             x8, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c11c: b               #0x78c17c
    // 0x78c120: LoadField: r8 = r0->field_13
    //     0x78c120: ldur            w8, [x0, #0x13]
    // 0x78c124: DecompressPointer r8
    //     0x78c124: add             x8, x8, HEAP, lsl #32
    // 0x78c128: LoadField: r9 = r0->field_b
    //     0x78c128: ldur            x9, [x0, #0xb]
    // 0x78c12c: LoadField: r0 = r8->field_b
    //     0x78c12c: ldur            w0, [x8, #0xb]
    // 0x78c130: r1 = LoadInt32Instr(r0)
    //     0x78c130: sbfx            x1, x0, #1, #0x1f
    // 0x78c134: cbnz            x1, #0x78c140
    // 0x78c138: r8 = ""
    //     0x78c138: ldr             x8, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c13c: b               #0x78c17c
    // 0x78c140: tbnz            x9, #0x3f, #0x78c14c
    // 0x78c144: cmp             x9, x1
    // 0x78c148: b.lt            #0x78c154
    // 0x78c14c: r8 = ""
    //     0x78c14c: ldr             x8, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c150: b               #0x78c17c
    // 0x78c154: mov             x0, x1
    // 0x78c158: mov             x1, x9
    // 0x78c15c: cmp             x1, x0
    // 0x78c160: b.hs            #0x78c4a8
    // 0x78c164: LoadField: r0 = r8->field_f
    //     0x78c164: ldur            w0, [x8, #0xf]
    // 0x78c168: DecompressPointer r0
    //     0x78c168: add             x0, x0, HEAP, lsl #32
    // 0x78c16c: ArrayLoad: r1 = r0[r9]  ; Unknown_4
    //     0x78c16c: add             x16, x0, x9, lsl #2
    //     0x78c170: ldur            w1, [x16, #0xf]
    // 0x78c174: DecompressPointer r1
    //     0x78c174: add             x1, x1, HEAP, lsl #32
    // 0x78c178: mov             x8, x1
    // 0x78c17c: cmp             w2, NULL
    // 0x78c180: b.ne            #0x78c18c
    // 0x78c184: r1 = ""
    //     0x78c184: ldr             x1, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c188: b               #0x78c1e4
    // 0x78c18c: LoadField: r9 = r2->field_13
    //     0x78c18c: ldur            w9, [x2, #0x13]
    // 0x78c190: DecompressPointer r9
    //     0x78c190: add             x9, x9, HEAP, lsl #32
    // 0x78c194: LoadField: r10 = r2->field_b
    //     0x78c194: ldur            x10, [x2, #0xb]
    // 0x78c198: LoadField: r0 = r9->field_b
    //     0x78c198: ldur            w0, [x9, #0xb]
    // 0x78c19c: r1 = LoadInt32Instr(r0)
    //     0x78c19c: sbfx            x1, x0, #1, #0x1f
    // 0x78c1a0: cbnz            x1, #0x78c1ac
    // 0x78c1a4: r1 = ""
    //     0x78c1a4: ldr             x1, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c1a8: b               #0x78c1e4
    // 0x78c1ac: tbnz            x10, #0x3f, #0x78c1b8
    // 0x78c1b0: cmp             x10, x1
    // 0x78c1b4: b.lt            #0x78c1c0
    // 0x78c1b8: r1 = ""
    //     0x78c1b8: ldr             x1, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x78c1bc: b               #0x78c1e4
    // 0x78c1c0: mov             x0, x1
    // 0x78c1c4: mov             x1, x10
    // 0x78c1c8: cmp             x1, x0
    // 0x78c1cc: b.hs            #0x78c4ac
    // 0x78c1d0: LoadField: r0 = r9->field_f
    //     0x78c1d0: ldur            w0, [x9, #0xf]
    // 0x78c1d4: DecompressPointer r0
    //     0x78c1d4: add             x0, x0, HEAP, lsl #32
    // 0x78c1d8: ArrayLoad: r1 = r0[r10]  ; Unknown_4
    //     0x78c1d8: add             x16, x0, x10, lsl #2
    //     0x78c1dc: ldur            w1, [x16, #0xf]
    // 0x78c1e0: DecompressPointer r1
    //     0x78c1e0: add             x1, x1, HEAP, lsl #32
    // 0x78c1e4: ldur            x0, [fp, #-0x18]
    // 0x78c1e8: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x78c1e8: ldur            w2, [x4, #0x17]
    // 0x78c1ec: DecompressPointer r2
    //     0x78c1ec: add             x2, x2, HEAP, lsl #32
    // 0x78c1f0: r9 = LoadInt32Instr(r0)
    //     0x78c1f0: sbfx            x9, x0, #1, #0x1f
    //     0x78c1f4: tbz             w0, #0, #0x78c1fc
    //     0x78c1f8: ldur            x9, [x0, #7]
    // 0x78c1fc: stur            x9, [fp, #-0x48]
    // 0x78c200: stp             x8, x3, [SP]
    // 0x78c204: mov             x16, x6
    // 0x78c208: mov             x6, x2
    // 0x78c20c: mov             x2, x16
    // 0x78c210: mov             x16, x1
    // 0x78c214: mov             x1, x6
    // 0x78c218: mov             x6, x16
    // 0x78c21c: mov             x3, x5
    // 0x78c220: mov             x5, x7
    // 0x78c224: mov             x7, x9
    // 0x78c228: r0 = __unknown_function__()
    //     0x78c228: bl              #0x78c4b0  ; [] ::__unknown_function__
    // 0x78c22c: mov             x1, x0
    // 0x78c230: stur            x1, [fp, #-0x20]
    // 0x78c234: r0 = Await()
    //     0x78c234: bl              #0x74ab64  ; AwaitStub
    // 0x78c238: mov             x1, x0
    // 0x78c23c: stur            x0, [fp, #-0x10]
    // 0x78c240: r0 = call 0x3b4da8
    //     0x78c240: bl              #0x3b4da8
    // 0x78c244: tbz             w0, #4, #0x78c288
    // 0x78c248: ldur            x0, [fp, #-0x10]
    // 0x78c24c: r1 = "cfd2dc0688d2"
    //     0x78c24c: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a40] "cfd2dc0688d2"
    //     0x78c250: ldr             x1, [x1, #0xa40]
    // 0x78c254: r0 = call 0x4623cc
    //     0x78c254: bl              #0x4623cc
    // 0x78c258: ldur            x3, [fp, #-0x10]
    // 0x78c25c: r1 = LoadClassIdInstr(r3)
    //     0x78c25c: ldur            x1, [x3, #-1]
    //     0x78c260: ubfx            x1, x1, #0xc, #0x14
    // 0x78c264: mov             x2, x0
    // 0x78c268: mov             x0, x1
    // 0x78c26c: mov             x1, x3
    // 0x78c270: mov             lr, x0
    // 0x78c274: ldr             lr, [x21, lr, lsl #3]
    // 0x78c278: blr             lr
    // 0x78c27c: mov             x1, x0
    // 0x78c280: r0 = call 0x3b4da8
    //     0x78c280: bl              #0x3b4da8
    // 0x78c284: tbnz            w0, #4, #0x78c2b8
    // 0x78c288: ldur            x0, [fp, #-0x48]
    // 0x78c28c: r1 = Null
    //     0x78c28c: mov             x1, NULL
    // 0x78c290: r0 = VYa()
    //     0x78c290: bl              #0x788a9c  ; AllocateVYaStub -> VYa<X0> (size=0x20)
    // 0x78c294: mov             x1, x0
    // 0x78c298: r0 = const []
    //     0x78c298: add             x0, PP, #0x20, lsl #12  ; [pp+0x20a48] List(0) []
    //     0x78c29c: ldr             x0, [x0, #0xa48]
    // 0x78c2a0: StoreField: r1->field_b = r0
    //     0x78c2a0: stur            w0, [x1, #0xb]
    // 0x78c2a4: ldur            x0, [fp, #-0x48]
    // 0x78c2a8: StoreField: r1->field_f = r0
    //     0x78c2a8: stur            x0, [x1, #0xf]
    // 0x78c2ac: ArrayStore: r1[0] = r0  ; List_8
    //     0x78c2ac: stur            x0, [x1, #0x17]
    // 0x78c2b0: mov             x0, x1
    // 0x78c2b4: r0 = ReturnAsyncNotFuture()
    //     0x78c2b4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78c2b8: ldur            x0, [fp, #-0x10]
    // 0x78c2bc: r1 = "6dbba51ed869"
    //     0x78c2bc: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a48] "6dbba51ed869"
    //     0x78c2c0: ldr             x1, [x1, #0xa48]
    // 0x78c2c4: r0 = call 0x4623cc
    //     0x78c2c4: bl              #0x4623cc
    // 0x78c2c8: ldur            x3, [fp, #-0x10]
    // 0x78c2cc: r1 = LoadClassIdInstr(r3)
    //     0x78c2cc: ldur            x1, [x3, #-1]
    //     0x78c2d0: ubfx            x1, x1, #0xc, #0x14
    // 0x78c2d4: mov             x2, x0
    // 0x78c2d8: mov             x0, x1
    // 0x78c2dc: mov             x1, x3
    // 0x78c2e0: mov             lr, x0
    // 0x78c2e4: ldr             lr, [x21, lr, lsl #3]
    // 0x78c2e8: blr             lr
    // 0x78c2ec: cmp             w0, NULL
    // 0x78c2f0: b.ne            #0x78c2fc
    // 0x78c2f4: ldur            x4, [fp, #-0x18]
    // 0x78c2f8: b               #0x78c300
    // 0x78c2fc: mov             x4, x0
    // 0x78c300: ldur            x3, [fp, #-0x10]
    // 0x78c304: mov             x0, x4
    // 0x78c308: stur            x4, [fp, #-0x18]
    // 0x78c30c: r2 = Null
    //     0x78c30c: mov             x2, NULL
    // 0x78c310: r1 = Null
    //     0x78c310: mov             x1, NULL
    // 0x78c314: branchIfSmi(r0, 0x78c33c)
    //     0x78c314: tbz             w0, #0, #0x78c33c
    // 0x78c318: r4 = LoadClassIdInstr(r0)
    //     0x78c318: ldur            x4, [x0, #-1]
    //     0x78c31c: ubfx            x4, x4, #0xc, #0x14
    // 0x78c320: sub             x4, x4, #0x3c
    // 0x78c324: cmp             x4, #1
    // 0x78c328: b.ls            #0x78c33c
    // 0x78c32c: r8 = int
    //     0x78c32c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78c330: r3 = Null
    //     0x78c330: add             x3, PP, #0x32, lsl #12  ; [pp+0x32a50] Null
    //     0x78c334: ldr             x3, [x3, #0xa50]
    // 0x78c338: r0 = int()
    //     0x78c338: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78c33c: r1 = "0c4c370a97fb26cb982bb8"
    //     0x78c33c: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a60] "0c4c370a97fb26cb982bb8"
    //     0x78c340: ldr             x1, [x1, #0xa60]
    // 0x78c344: r0 = call 0x4623cc
    //     0x78c344: bl              #0x4623cc
    // 0x78c348: ldur            x3, [fp, #-0x10]
    // 0x78c34c: r1 = LoadClassIdInstr(r3)
    //     0x78c34c: ldur            x1, [x3, #-1]
    //     0x78c350: ubfx            x1, x1, #0xc, #0x14
    // 0x78c354: mov             x2, x0
    // 0x78c358: mov             x0, x1
    // 0x78c35c: mov             x1, x3
    // 0x78c360: mov             lr, x0
    // 0x78c364: ldr             lr, [x21, lr, lsl #3]
    // 0x78c368: blr             lr
    // 0x78c36c: cmp             w0, NULL
    // 0x78c370: b.ne            #0x78c37c
    // 0x78c374: ldur            x5, [fp, #-0x18]
    // 0x78c378: b               #0x78c380
    // 0x78c37c: mov             x5, x0
    // 0x78c380: ldur            x3, [fp, #-0x10]
    // 0x78c384: ldur            x4, [fp, #-0x18]
    // 0x78c388: mov             x0, x5
    // 0x78c38c: stur            x5, [fp, #-0x20]
    // 0x78c390: r2 = Null
    //     0x78c390: mov             x2, NULL
    // 0x78c394: r1 = Null
    //     0x78c394: mov             x1, NULL
    // 0x78c398: branchIfSmi(r0, 0x78c3c0)
    //     0x78c398: tbz             w0, #0, #0x78c3c0
    // 0x78c39c: r4 = LoadClassIdInstr(r0)
    //     0x78c39c: ldur            x4, [x0, #-1]
    //     0x78c3a0: ubfx            x4, x4, #0xc, #0x14
    // 0x78c3a4: sub             x4, x4, #0x3c
    // 0x78c3a8: cmp             x4, #1
    // 0x78c3ac: b.ls            #0x78c3c0
    // 0x78c3b0: r8 = int
    //     0x78c3b0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78c3b4: r3 = Null
    //     0x78c3b4: add             x3, PP, #0x32, lsl #12  ; [pp+0x32a68] Null
    //     0x78c3b8: ldr             x3, [x3, #0xa68]
    // 0x78c3bc: r0 = int()
    //     0x78c3bc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78c3c0: r1 = "56a117ec6b8c"
    //     0x78c3c0: add             x1, PP, #0x32, lsl #12  ; [pp+0x32a78] "56a117ec6b8c"
    //     0x78c3c4: ldr             x1, [x1, #0xa78]
    // 0x78c3c8: r0 = call 0x4623cc
    //     0x78c3c8: bl              #0x4623cc
    // 0x78c3cc: ldur            x1, [fp, #-0x10]
    // 0x78c3d0: r2 = LoadClassIdInstr(r1)
    //     0x78c3d0: ldur            x2, [x1, #-1]
    //     0x78c3d4: ubfx            x2, x2, #0xc, #0x14
    // 0x78c3d8: mov             x16, x0
    // 0x78c3dc: mov             x0, x2
    // 0x78c3e0: mov             x2, x16
    // 0x78c3e4: mov             lr, x0
    // 0x78c3e8: ldr             lr, [x21, lr, lsl #3]
    // 0x78c3ec: blr             lr
    // 0x78c3f0: mov             x3, x0
    // 0x78c3f4: r2 = Null
    //     0x78c3f4: mov             x2, NULL
    // 0x78c3f8: r1 = Null
    //     0x78c3f8: mov             x1, NULL
    // 0x78c3fc: stur            x3, [fp, #-0x10]
    // 0x78c400: r4 = 60
    //     0x78c400: movz            x4, #0x3c
    // 0x78c404: branchIfSmi(r0, 0x78c410)
    //     0x78c404: tbz             w0, #0, #0x78c410
    // 0x78c408: r4 = LoadClassIdInstr(r0)
    //     0x78c408: ldur            x4, [x0, #-1]
    //     0x78c40c: ubfx            x4, x4, #0xc, #0x14
    // 0x78c410: sub             x4, x4, #0x5a
    // 0x78c414: cmp             x4, #2
    // 0x78c418: b.ls            #0x78c42c
    // 0x78c41c: r8 = List
    //     0x78c41c: ldr             x8, [PP, #0x28a8]  ; [pp+0x28a8] Type: List
    // 0x78c420: r3 = Null
    //     0x78c420: add             x3, PP, #0x32, lsl #12  ; [pp+0x32a80] Null
    //     0x78c424: ldr             x3, [x3, #0xa80]
    // 0x78c428: r0 = List()
    //     0x78c428: bl              #0x7f27c4  ; IsType_List_Stub
    // 0x78c42c: ldur            x0, [fp, #-0x10]
    // 0x78c430: r1 = LoadClassIdInstr(r0)
    //     0x78c430: ldur            x1, [x0, #-1]
    //     0x78c434: ubfx            x1, x1, #0xc, #0x14
    // 0x78c438: stp             x0, NULL, [SP]
    // 0x78c43c: mov             x0, x1
    // 0x78c440: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x78c440: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x78c444: r0 = GDT[cid_x0 + 0xbfb1]()
    //     0x78c444: movz            x17, #0xbfb1
    //     0x78c448: add             lr, x0, x17
    //     0x78c44c: ldr             lr, [x21, lr, lsl #3]
    //     0x78c450: blr             lr
    // 0x78c454: r1 = Null
    //     0x78c454: mov             x1, NULL
    // 0x78c458: stur            x0, [fp, #-0x10]
    // 0x78c45c: r0 = VYa()
    //     0x78c45c: bl              #0x788a9c  ; AllocateVYaStub -> VYa<X0> (size=0x20)
    // 0x78c460: ldur            x1, [fp, #-0x10]
    // 0x78c464: StoreField: r0->field_b = r1
    //     0x78c464: stur            w1, [x0, #0xb]
    // 0x78c468: ldur            x1, [fp, #-0x18]
    // 0x78c46c: r2 = LoadInt32Instr(r1)
    //     0x78c46c: sbfx            x2, x1, #1, #0x1f
    //     0x78c470: tbz             w1, #0, #0x78c478
    //     0x78c474: ldur            x2, [x1, #7]
    // 0x78c478: StoreField: r0->field_f = r2
    //     0x78c478: stur            x2, [x0, #0xf]
    // 0x78c47c: ldur            x1, [fp, #-0x20]
    // 0x78c480: r2 = LoadInt32Instr(r1)
    //     0x78c480: sbfx            x2, x1, #1, #0x1f
    //     0x78c484: tbz             w1, #0, #0x78c48c
    //     0x78c488: ldur            x2, [x1, #7]
    // 0x78c48c: ArrayStore: r0[0] = r2  ; List_8
    //     0x78c48c: stur            x2, [x0, #0x17]
    // 0x78c490: r0 = ReturnAsyncNotFuture()
    //     0x78c490: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78c494: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78c494: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78c498: b               #0x78be4c
    // 0x78c49c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x78c49c: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x78c4a0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x78c4a0: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x78c4a4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x78c4a4: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x78c4a8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x78c4a8: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x78c4ac: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x78c4ac: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] static UYa<dynamic> <anonymous closure>(dynamic, URa, Kab) {
    // ** addr: 0x46169c, size: -0x1
  }
  [closure] static String tgi(dynamic, Vab?) {
    // ** addr: 0x462a30, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, List<Vab>?, List<Vab>) {
    // ** addr: 0x461d5c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x461d00, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Vab) {
    // ** addr: 0x4629c0, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Vab) {
    // ** addr: 0x462950, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Vab) {
    // ** addr: 0x4628e0, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Vab) {
    // ** addr: 0x462870, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Vab) {
    // ** addr: 0x462800, size: -0x1
  }
  static vSa<UYa<dynamic>, Kab> Awg() {
    // ** addr: 0x4615c0, size: -0x1
  }
}

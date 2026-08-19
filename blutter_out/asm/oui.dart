// lib: , url: oui

// class id: 1049095, size: 0x8
class :: {
}

// class id: 2693, size: 0xc, field offset: 0xc
abstract class Ov<X0, X1 bound Cr> extends _Jv<X0, X1 bound Cr> {
}

// class id: 3005, size: 0x5c, field offset: 0x5c
class _gpa extends _Nv {
}

// class id: 3777, size: 0x5c, field offset: 0x44
class _epa<X0> extends pO {

  late final Una _Tje; // offset: 0x4c

  [closure] void PQh(dynamic) {
    // ** addr: 0x765fd0, size: 0x590
    // 0x765fd0: EnterFrame
    //     0x765fd0: stp             fp, lr, [SP, #-0x10]!
    //     0x765fd4: mov             fp, SP
    // 0x765fd8: AllocStack(0xc0)
    //     0x765fd8: sub             SP, SP, #0xc0
    // 0x765fdc: SetupParameters([dynamic _ /* r0 */])
    //     0x765fdc: ldr             x0, [fp, #0x10]
    //     0x765fe0: ldur            w3, [x0, #0x17]
    //     0x765fe4: add             x3, x3, HEAP, lsl #32
    //     0x765fe8: stur            x3, [fp, #-0x90]
    // 0x765fec: CheckStackOverflow
    //     0x765fec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x765ff0: cmp             SP, x16
    //     0x765ff4: b.ls            #0x766548
    // 0x765ff8: LoadField: r4 = r3->field_f
    //     0x765ff8: ldur            w4, [x3, #0xf]
    // 0x765ffc: DecompressPointer r4
    //     0x765ffc: add             x4, x4, HEAP, lsl #32
    // 0x766000: stur            x4, [fp, #-0x88]
    // 0x766004: ArrayLoad: r5 = r4[0]  ; List_4
    //     0x766004: ldur            w5, [x4, #0x17]
    // 0x766008: DecompressPointer r5
    //     0x766008: add             x5, x5, HEAP, lsl #32
    // 0x76600c: stur            x5, [fp, #-0x80]
    // 0x766010: cmp             w5, NULL
    // 0x766014: b.eq            #0x766550
    // 0x766018: LoadField: r6 = r4->field_43
    //     0x766018: ldur            w6, [x4, #0x43]
    // 0x76601c: DecompressPointer r6
    //     0x76601c: add             x6, x6, HEAP, lsl #32
    // 0x766020: mov             x0, x5
    // 0x766024: mov             x2, x6
    // 0x766028: stur            x6, [fp, #-0x78]
    // 0x76602c: r1 = Null
    //     0x76602c: mov             x1, NULL
    // 0x766030: r8 = bpa<X0>
    //     0x766030: add             x8, PP, #0x27, lsl #12  ; [pp+0x274a8] Type: bpa<X0>
    //     0x766034: ldr             x8, [x8, #0x4a8]
    // 0x766038: LoadField: r9 = r8->field_7
    //     0x766038: ldur            x9, [x8, #7]
    // 0x76603c: r3 = Null
    //     0x76603c: add             x3, PP, #0x27, lsl #12  ; [pp+0x27520] Null
    //     0x766040: ldr             x3, [x3, #0x520]
    // 0x766044: blr             x9
    // 0x766048: ldur            x3, [fp, #-0x90]
    // 0x76604c: LoadField: r4 = r3->field_13
    //     0x76604c: ldur            w4, [x3, #0x13]
    // 0x766050: DecompressPointer r4
    //     0x766050: add             x4, x4, HEAP, lsl #32
    // 0x766054: ldur            x5, [fp, #-0x80]
    // 0x766058: stur            x4, [fp, #-0xa0]
    // 0x76605c: r0 = LoadClassIdInstr(r5)
    //     0x76605c: ldur            x0, [x5, #-1]
    //     0x766060: ubfx            x0, x0, #0xc, #0x14
    // 0x766064: r17 = 4396
    //     0x766064: movz            x17, #0x112c
    // 0x766068: cmp             x0, x17
    // 0x76606c: b.ne            #0x766080
    // 0x766070: LoadField: r0 = r5->field_f
    //     0x766070: ldur            w0, [x5, #0xf]
    // 0x766074: DecompressPointer r0
    //     0x766074: add             x0, x0, HEAP, lsl #32
    // 0x766078: mov             x6, x0
    // 0x76607c: b               #0x76608c
    // 0x766080: LoadField: r0 = r5->field_f
    //     0x766080: ldur            w0, [x5, #0xf]
    // 0x766084: DecompressPointer r0
    //     0x766084: add             x0, x0, HEAP, lsl #32
    // 0x766088: mov             x6, x0
    // 0x76608c: mov             x0, x6
    // 0x766090: ldur            x2, [fp, #-0x78]
    // 0x766094: stur            x6, [fp, #-0x98]
    // 0x766098: r1 = Null
    //     0x766098: mov             x1, NULL
    // 0x76609c: r8 = (dynamic this, Tna, X0) => KX
    //     0x76609c: add             x8, PP, #0x27, lsl #12  ; [pp+0x27530] FunctionType: (dynamic this, Tna, X0) => KX
    //     0x7660a0: ldr             x8, [x8, #0x530]
    // 0x7660a4: LoadField: r9 = r8->field_7
    //     0x7660a4: ldur            x9, [x8, #7]
    // 0x7660a8: r3 = Null
    //     0x7660a8: add             x3, PP, #0x27, lsl #12  ; [pp+0x27538] Null
    //     0x7660ac: ldr             x3, [x3, #0x538]
    // 0x7660b0: blr             x9
    // 0x7660b4: ldur            x16, [fp, #-0x98]
    // 0x7660b8: ldur            lr, [fp, #-0x88]
    // 0x7660bc: stp             lr, x16, [SP, #8]
    // 0x7660c0: ldur            x16, [fp, #-0xa0]
    // 0x7660c4: str             x16, [SP]
    // 0x7660c8: ldur            x0, [fp, #-0x98]
    // 0x7660cc: ClosureCall
    //     0x7660cc: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7660d0: ldur            x2, [x0, #0x1f]
    //     0x7660d4: blr             x2
    // 0x7660d8: ldur            x2, [fp, #-0x90]
    // 0x7660dc: LoadField: r1 = r2->field_f
    //     0x7660dc: ldur            w1, [x2, #0xf]
    // 0x7660e0: DecompressPointer r1
    //     0x7660e0: add             x1, x1, HEAP, lsl #32
    // 0x7660e4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7660e4: ldur            w3, [x1, #0x17]
    // 0x7660e8: DecompressPointer r3
    //     0x7660e8: add             x3, x3, HEAP, lsl #32
    // 0x7660ec: cmp             w3, NULL
    // 0x7660f0: b.eq            #0x766554
    // 0x7660f4: mov             x4, x0
    // 0x7660f8: r3 = Null
    //     0x7660f8: mov             x3, NULL
    // 0x7660fc: r0 = Null
    //     0x7660fc: mov             x0, NULL
    // 0x766100: b               #0x7661bc
    // 0x766104: sub             SP, fp, #0xc0
    // 0x766108: ldur            x2, [fp, #-0x90]
    // 0x76610c: stur            x0, [fp, #-0x78]
    // 0x766110: mov             x16, x1
    // 0x766114: mov             x1, x0
    // 0x766118: mov             x0, x16
    // 0x76611c: stur            x0, [fp, #-0x80]
    // 0x766120: r0 = LoadStaticField(0x4a4)
    //     0x766120: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x766124: ldr             x0, [x0, #0x948]
    // 0x766128: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x76612c: cmp             w0, w16
    // 0x766130: b.ne            #0x766140
    // 0x766134: r2 = cLb
    //     0x766134: add             x2, PP, #0xc, lsl #12  ; [pp+0xc488] Field <Yna.cLb>: static late (offset: 0x4a4)
    //     0x766138: ldr             x2, [x2, #0x488]
    // 0x76613c: r0 = InitLateStaticField()
    //     0x76613c: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x766140: r1 = Null
    //     0x766140: mov             x1, NULL
    // 0x766144: r2 = 4
    //     0x766144: movz            x2, #0x4
    // 0x766148: r0 = AllocateArray()
    //     0x766148: bl              #0x7de31c  ; AllocateArrayStub
    // 0x76614c: r16 = "building "
    //     0x76614c: add             x16, PP, #0xc, lsl #12  ; [pp+0xc490] "building "
    //     0x766150: ldr             x16, [x16, #0x490]
    // 0x766154: StoreField: r0->field_f = r16
    //     0x766154: stur            w16, [x0, #0xf]
    // 0x766158: ldur            x1, [fp, #-0x90]
    // 0x76615c: LoadField: r2 = r1->field_f
    //     0x76615c: ldur            w2, [x1, #0xf]
    // 0x766160: DecompressPointer r2
    //     0x766160: add             x2, x2, HEAP, lsl #32
    // 0x766164: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x766164: ldur            w3, [x2, #0x17]
    // 0x766168: DecompressPointer r3
    //     0x766168: add             x3, x3, HEAP, lsl #32
    // 0x76616c: cmp             w3, NULL
    // 0x766170: b.eq            #0x766558
    // 0x766174: StoreField: r0->field_13 = r3
    //     0x766174: stur            w3, [x0, #0x13]
    // 0x766178: str             x0, [SP]
    // 0x76617c: r0 = _interpolate()
    //     0x76617c: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x766180: r1 = <List<Object>>
    //     0x766180: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x766184: stur            x0, [fp, #-0x88]
    // 0x766188: r0 = OO()
    //     0x766188: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x76618c: mov             x1, x0
    // 0x766190: ldur            x2, [fp, #-0x88]
    // 0x766194: r3 = Instance_GO
    //     0x766194: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x766198: r0 = call 0x24e36c
    //     0x766198: bl              #0x24e36c
    // 0x76619c: ldur            x1, [fp, #-0x78]
    // 0x7661a0: ldur            x2, [fp, #-0x80]
    // 0x7661a4: r0 = call 0x29fa60
    //     0x7661a4: bl              #0x29fa60
    // 0x7661a8: mov             x1, x0
    // 0x7661ac: r0 = call 0x31644c
    //     0x7661ac: bl              #0x31644c
    // 0x7661b0: mov             x4, x0
    // 0x7661b4: ldur            x3, [fp, #-0x78]
    // 0x7661b8: ldur            x0, [fp, #-0x80]
    // 0x7661bc: stur            x4, [fp, #-0x80]
    // 0x7661c0: stur            x3, [fp, #-0x88]
    // 0x7661c4: stur            x0, [fp, #-0x98]
    // 0x7661c8: ldur            x5, [fp, #-0x90]
    // 0x7661cc: LoadField: r6 = r5->field_f
    //     0x7661cc: ldur            w6, [x5, #0xf]
    // 0x7661d0: DecompressPointer r6
    //     0x7661d0: add             x6, x6, HEAP, lsl #32
    // 0x7661d4: stur            x6, [fp, #-0x78]
    // 0x7661d8: LoadField: r2 = r6->field_47
    //     0x7661d8: ldur            w2, [x6, #0x47]
    // 0x7661dc: DecompressPointer r2
    //     0x7661dc: add             x2, x2, HEAP, lsl #32
    // 0x7661e0: stur            x2, [fp, #-0xa0]
    // 0x7661e4: cmp             w4, NULL
    // 0x7661e8: b.ne            #0x766204
    // 0x7661ec: cmp             w2, NULL
    // 0x7661f0: b.eq            #0x7661fc
    // 0x7661f4: mov             x1, x6
    // 0x7661f8: r0 = call 0x31619c
    //     0x7661f8: bl              #0x31619c
    // 0x7661fc: r0 = Null
    //     0x7661fc: mov             x0, NULL
    // 0x766200: b               #0x766368
    // 0x766204: cmp             w2, NULL
    // 0x766208: b.eq            #0x766358
    // 0x76620c: r0 = LoadClassIdInstr(r2)
    //     0x76620c: ldur            x0, [x2, #-1]
    //     0x766210: ubfx            x0, x0, #0xc, #0x14
    // 0x766214: mov             x1, x2
    // 0x766218: r0 = GDT[cid_x0 + -0xfad]()
    //     0x766218: sub             lr, x0, #0xfad
    //     0x76621c: ldr             lr, [x21, lr, lsl #3]
    //     0x766220: blr             lr
    // 0x766224: r1 = LoadClassIdInstr(r0)
    //     0x766224: ldur            x1, [x0, #-1]
    //     0x766228: ubfx            x1, x1, #0xc, #0x14
    // 0x76622c: ldur            x16, [fp, #-0x80]
    // 0x766230: stp             x16, x0, [SP]
    // 0x766234: mov             x0, x1
    // 0x766238: r0 = GDT[cid_x0 + 0x245b]()
    //     0x766238: movz            x17, #0x245b
    //     0x76623c: add             lr, x0, x17
    //     0x766240: ldr             lr, [x21, lr, lsl #3]
    //     0x766244: blr             lr
    // 0x766248: tbnz            w0, #4, #0x76629c
    // 0x76624c: ldur            x2, [fp, #-0xa0]
    // 0x766250: LoadField: r0 = r2->field_f
    //     0x766250: ldur            w0, [x2, #0xf]
    // 0x766254: DecompressPointer r0
    //     0x766254: add             x0, x0, HEAP, lsl #32
    // 0x766258: r1 = 60
    //     0x766258: movz            x1, #0x3c
    // 0x76625c: branchIfSmi(r0, 0x766268)
    //     0x76625c: tbz             w0, #0, #0x766268
    // 0x766260: r1 = LoadClassIdInstr(r0)
    //     0x766260: ldur            x1, [x0, #-1]
    //     0x766264: ubfx            x1, x1, #0xc, #0x14
    // 0x766268: stp             NULL, x0, [SP]
    // 0x76626c: mov             x0, x1
    // 0x766270: r0 = GDT[cid_x0 + 0x245b]()
    //     0x766270: movz            x17, #0x245b
    //     0x766274: add             lr, x0, x17
    //     0x766278: ldr             lr, [x21, lr, lsl #3]
    //     0x76627c: blr             lr
    // 0x766280: tbz             w0, #4, #0x766294
    // 0x766284: ldur            x1, [fp, #-0x78]
    // 0x766288: ldur            x2, [fp, #-0xa0]
    // 0x76628c: r3 = Null
    //     0x76628c: mov             x3, NULL
    // 0x766290: r0 = call 0x315f68
    //     0x766290: bl              #0x315f68
    // 0x766294: ldur            x0, [fp, #-0xa0]
    // 0x766298: b               #0x766368
    // 0x76629c: ldur            x2, [fp, #-0xa0]
    // 0x7662a0: r0 = LoadClassIdInstr(r2)
    //     0x7662a0: ldur            x0, [x2, #-1]
    //     0x7662a4: ubfx            x0, x0, #0xc, #0x14
    // 0x7662a8: mov             x1, x2
    // 0x7662ac: r0 = GDT[cid_x0 + -0xfad]()
    //     0x7662ac: sub             lr, x0, #0xfad
    //     0x7662b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7662b4: blr             lr
    // 0x7662b8: mov             x1, x0
    // 0x7662bc: ldur            x2, [fp, #-0x80]
    // 0x7662c0: r0 = call 0x315eec
    //     0x7662c0: bl              #0x315eec
    // 0x7662c4: tbnz            w0, #4, #0x766338
    // 0x7662c8: ldur            x2, [fp, #-0xa0]
    // 0x7662cc: LoadField: r0 = r2->field_f
    //     0x7662cc: ldur            w0, [x2, #0xf]
    // 0x7662d0: DecompressPointer r0
    //     0x7662d0: add             x0, x0, HEAP, lsl #32
    // 0x7662d4: r1 = 60
    //     0x7662d4: movz            x1, #0x3c
    // 0x7662d8: branchIfSmi(r0, 0x7662e4)
    //     0x7662d8: tbz             w0, #0, #0x7662e4
    // 0x7662dc: r1 = LoadClassIdInstr(r0)
    //     0x7662dc: ldur            x1, [x0, #-1]
    //     0x7662e0: ubfx            x1, x1, #0xc, #0x14
    // 0x7662e4: stp             NULL, x0, [SP]
    // 0x7662e8: mov             x0, x1
    // 0x7662ec: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7662ec: movz            x17, #0x245b
    //     0x7662f0: add             lr, x0, x17
    //     0x7662f4: ldr             lr, [x21, lr, lsl #3]
    //     0x7662f8: blr             lr
    // 0x7662fc: tbz             w0, #4, #0x766310
    // 0x766300: ldur            x1, [fp, #-0x78]
    // 0x766304: ldur            x2, [fp, #-0xa0]
    // 0x766308: r3 = Null
    //     0x766308: mov             x3, NULL
    // 0x76630c: r0 = call 0x315f68
    //     0x76630c: bl              #0x315f68
    // 0x766310: ldur            x3, [fp, #-0xa0]
    // 0x766314: r0 = LoadClassIdInstr(r3)
    //     0x766314: ldur            x0, [x3, #-1]
    //     0x766318: ubfx            x0, x0, #0xc, #0x14
    // 0x76631c: mov             x1, x3
    // 0x766320: ldur            x2, [fp, #-0x80]
    // 0x766324: r0 = GDT[cid_x0 + 0xfea]()
    //     0x766324: add             lr, x0, #0xfea
    //     0x766328: ldr             lr, [x21, lr, lsl #3]
    //     0x76632c: blr             lr
    // 0x766330: ldur            x0, [fp, #-0xa0]
    // 0x766334: b               #0x766368
    // 0x766338: ldur            x1, [fp, #-0x78]
    // 0x76633c: ldur            x2, [fp, #-0xa0]
    // 0x766340: r0 = call 0x31619c
    //     0x766340: bl              #0x31619c
    // 0x766344: ldur            x1, [fp, #-0x78]
    // 0x766348: ldur            x2, [fp, #-0x80]
    // 0x76634c: r3 = Null
    //     0x76634c: mov             x3, NULL
    // 0x766350: r0 = __unknown_function__()
    //     0x766350: bl              #0x7b8498  ; [] ::__unknown_function__
    // 0x766354: b               #0x766368
    // 0x766358: ldur            x1, [fp, #-0x78]
    // 0x76635c: ldur            x2, [fp, #-0x80]
    // 0x766360: r3 = Null
    //     0x766360: mov             x3, NULL
    // 0x766364: r0 = __unknown_function__()
    //     0x766364: bl              #0x7b8498  ; [] ::__unknown_function__
    // 0x766368: ldur            x1, [fp, #-0x78]
    // 0x76636c: StoreField: r1->field_47 = r0
    //     0x76636c: stur            w0, [x1, #0x47]
    //     0x766370: ldurb           w16, [x1, #-1]
    //     0x766374: ldurb           w17, [x0, #-1]
    //     0x766378: and             x16, x17, x16, lsr #2
    //     0x76637c: tst             x16, HEAP, lsr #32
    //     0x766380: b.eq            #0x766388
    //     0x766384: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x766388: b               #0x7664ac
    // 0x76638c: sub             SP, fp, #0xc0
    // 0x766390: ldur            x2, [fp, #-0x90]
    // 0x766394: stur            x0, [fp, #-0x78]
    // 0x766398: mov             x16, x1
    // 0x76639c: mov             x1, x0
    // 0x7663a0: mov             x0, x16
    // 0x7663a4: stur            x0, [fp, #-0x80]
    // 0x7663a8: r0 = LoadStaticField(0x4a4)
    //     0x7663a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7663ac: ldr             x0, [x0, #0x948]
    // 0x7663b0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7663b4: cmp             w0, w16
    // 0x7663b8: b.ne            #0x7663c8
    // 0x7663bc: r2 = cLb
    //     0x7663bc: add             x2, PP, #0xc, lsl #12  ; [pp+0xc488] Field <Yna.cLb>: static late (offset: 0x4a4)
    //     0x7663c0: ldr             x2, [x2, #0x488]
    // 0x7663c4: r0 = InitLateStaticField()
    //     0x7663c4: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7663c8: r1 = <List<Object>>
    //     0x7663c8: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x7663cc: r0 = OO()
    //     0x7663cc: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x7663d0: r1 = Null
    //     0x7663d0: mov             x1, NULL
    // 0x7663d4: r2 = 4
    //     0x7663d4: movz            x2, #0x4
    // 0x7663d8: stur            x0, [fp, #-0x88]
    // 0x7663dc: r0 = AllocateArray()
    //     0x7663dc: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7663e0: r16 = "building "
    //     0x7663e0: add             x16, PP, #0xc, lsl #12  ; [pp+0xc490] "building "
    //     0x7663e4: ldr             x16, [x16, #0x490]
    // 0x7663e8: StoreField: r0->field_f = r16
    //     0x7663e8: stur            w16, [x0, #0xf]
    // 0x7663ec: ldur            x1, [fp, #-0x90]
    // 0x7663f0: LoadField: r2 = r1->field_f
    //     0x7663f0: ldur            w2, [x1, #0xf]
    // 0x7663f4: DecompressPointer r2
    //     0x7663f4: add             x2, x2, HEAP, lsl #32
    // 0x7663f8: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x7663f8: ldur            w3, [x2, #0x17]
    // 0x7663fc: DecompressPointer r3
    //     0x7663fc: add             x3, x3, HEAP, lsl #32
    // 0x766400: cmp             w3, NULL
    // 0x766404: b.eq            #0x76655c
    // 0x766408: StoreField: r0->field_13 = r3
    //     0x766408: stur            w3, [x0, #0x13]
    // 0x76640c: str             x0, [SP]
    // 0x766410: r0 = _interpolate()
    //     0x766410: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x766414: ldur            x1, [fp, #-0x88]
    // 0x766418: mov             x2, x0
    // 0x76641c: r3 = Instance_GO
    //     0x76641c: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x766420: r0 = call 0x24e36c
    //     0x766420: bl              #0x24e36c
    // 0x766424: r1 = Function '<anonymous closure>':.
    //     0x766424: add             x1, PP, #0x27, lsl #12  ; [pp+0x27548] AnonymousClosure: (0x316488), of [aui] Zna
    //     0x766428: ldr             x1, [x1, #0x548]
    // 0x76642c: r2 = Null
    //     0x76642c: mov             x2, NULL
    // 0x766430: r0 = AllocateClosure()
    //     0x766430: bl              #0x7dd600  ; AllocateClosureStub
    // 0x766434: ldur            x1, [fp, #-0x78]
    // 0x766438: ldur            x2, [fp, #-0x80]
    // 0x76643c: stur            x0, [fp, #-0x98]
    // 0x766440: r0 = call 0x29fa60
    //     0x766440: bl              #0x29fa60
    // 0x766444: mov             x1, x0
    // 0x766448: r0 = Closure: (SO) => KX from Function '_Dxc@21042623': static.
    //     0x766448: add             x0, PP, #0xc, lsl #12  ; [pp+0xc4a0] Closure: (SO) => KX from Function '_Dxc@21042623': static. (0x7fd77cfad4bc)
    //     0x76644c: ldr             x0, [x0, #0x4a0]
    // 0x766450: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x766450: ldur            w2, [x0, #0x17]
    // 0x766454: DecompressPointer r2
    //     0x766454: add             x2, x2, HEAP, lsl #32
    // 0x766458: stur            x2, [fp, #-0xa0]
    // 0x76645c: r0 = call 0x31644c
    //     0x76645c: bl              #0x31644c
    // 0x766460: mov             x4, x0
    // 0x766464: ldur            x0, [fp, #-0x90]
    // 0x766468: stur            x4, [fp, #-0xa8]
    // 0x76646c: LoadField: r5 = r0->field_f
    //     0x76646c: ldur            w5, [x0, #0xf]
    // 0x766470: DecompressPointer r5
    //     0x766470: add             x5, x5, HEAP, lsl #32
    // 0x766474: stur            x5, [fp, #-0xa0]
    // 0x766478: LoadField: r3 = r5->field_f
    //     0x766478: ldur            w3, [x5, #0xf]
    // 0x76647c: DecompressPointer r3
    //     0x76647c: add             x3, x3, HEAP, lsl #32
    // 0x766480: mov             x1, x5
    // 0x766484: mov             x2, x4
    // 0x766488: r0 = __unknown_function__()
    //     0x766488: bl              #0x7b8498  ; [] ::__unknown_function__
    // 0x76648c: ldur            x1, [fp, #-0xa0]
    // 0x766490: StoreField: r1->field_47 = r0
    //     0x766490: stur            w0, [x1, #0x47]
    //     0x766494: ldurb           w16, [x1, #-1]
    //     0x766498: ldurb           w17, [x0, #-1]
    //     0x76649c: and             x16, x17, x16, lsr #2
    //     0x7664a0: tst             x16, HEAP, lsr #32
    //     0x7664a4: b.eq            #0x7664ac
    //     0x7664a8: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7664ac: ldur            x2, [fp, #-0x90]
    // 0x7664b0: r3 = false
    //     0x7664b0: add             x3, NULL, #0x30  ; false
    // 0x7664b4: LoadField: r1 = r2->field_f
    //     0x7664b4: ldur            w1, [x2, #0xf]
    // 0x7664b8: DecompressPointer r1
    //     0x7664b8: add             x1, x1, HEAP, lsl #32
    // 0x7664bc: StoreField: r1->field_57 = r3
    //     0x7664bc: stur            w3, [x1, #0x57]
    // 0x7664c0: LoadField: r0 = r2->field_13
    //     0x7664c0: ldur            w0, [x2, #0x13]
    // 0x7664c4: DecompressPointer r0
    //     0x7664c4: add             x0, x0, HEAP, lsl #32
    // 0x7664c8: StoreField: r1->field_53 = r0
    //     0x7664c8: stur            w0, [x1, #0x53]
    //     0x7664cc: tbz             w0, #0, #0x7664e8
    //     0x7664d0: ldurb           w16, [x1, #-1]
    //     0x7664d4: ldurb           w17, [x0, #-1]
    //     0x7664d8: and             x16, x17, x16, lsr #2
    //     0x7664dc: tst             x16, HEAP, lsr #32
    //     0x7664e0: b.eq            #0x7664e8
    //     0x7664e4: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7664e8: r0 = Null
    //     0x7664e8: mov             x0, NULL
    // 0x7664ec: LeaveFrame
    //     0x7664ec: mov             SP, fp
    //     0x7664f0: ldp             fp, lr, [SP], #0x10
    // 0x7664f4: ret
    //     0x7664f4: ret             
    // 0x7664f8: sub             SP, fp, #0xc0
    // 0x7664fc: ldur            x2, [fp, #-0x90]
    // 0x766500: r3 = false
    //     0x766500: add             x3, NULL, #0x30  ; false
    // 0x766504: mov             x4, x0
    // 0x766508: LoadField: r5 = r2->field_f
    //     0x766508: ldur            w5, [x2, #0xf]
    // 0x76650c: DecompressPointer r5
    //     0x76650c: add             x5, x5, HEAP, lsl #32
    // 0x766510: StoreField: r5->field_57 = r3
    //     0x766510: stur            w3, [x5, #0x57]
    // 0x766514: LoadField: r0 = r2->field_13
    //     0x766514: ldur            w0, [x2, #0x13]
    // 0x766518: DecompressPointer r0
    //     0x766518: add             x0, x0, HEAP, lsl #32
    // 0x76651c: StoreField: r5->field_53 = r0
    //     0x76651c: stur            w0, [x5, #0x53]
    //     0x766520: tbz             w0, #0, #0x76653c
    //     0x766524: ldurb           w16, [x5, #-1]
    //     0x766528: ldurb           w17, [x0, #-1]
    //     0x76652c: and             x16, x17, x16, lsr #2
    //     0x766530: tst             x16, HEAP, lsr #32
    //     0x766534: b.eq            #0x76653c
    //     0x766538: bl              #0x7dca08  ; WriteBarrierWrappersStub
    // 0x76653c: mov             x0, x4
    // 0x766540: r0 = ReThrow()
    //     0x766540: bl              #0x7dc4f4  ; ReThrowStub
    // 0x766544: brk             #0
    // 0x766548: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x766548: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76654c: b               #0x765ff8
    // 0x766550: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x766550: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x766554: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x766554: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x766558: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x766558: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76655c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76655c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _Yje(dynamic, la) {
    // ** addr: 0x52e678, size: -0x1
  }
  [closure] void _Zje(dynamic, Ica) {
    // ** addr: 0x5ce2d8, size: -0x1
  }
  [closure] void _Xje(dynamic) {
    // ** addr: 0x6c6118, size: -0x1
  }
}

// class id: 4395, size: 0x10, field offset: 0xc
//   const constructor, 
abstract class bpa<X0> extends Dr {
}

// class id: 4397, size: 0x14, field offset: 0x10
//   const constructor, 
abstract class cpa<X0 bound Ica> extends bpa<X0 bound Ica> {
}

// class id: 4398, size: 0x14, field offset: 0x14
//   const constructor, 
class fpa extends cpa<dynamic> {
}

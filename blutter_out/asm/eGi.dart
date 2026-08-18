// lib: kZi, url: eGi

// class id: 1049178, size: 0x8
class :: {
}

// class id: 1286, size: 0x8, field offset: 0x8
abstract class sxa extends Object {

  static late MethodChannel _LMf; // offset: 0xf34
  static late String MMf; // offset: 0xf38
  static late xxa _PMf; // offset: 0xf44
  static late xxa _OMf; // offset: 0xf40
  static late xxa _NMf; // offset: 0xf3c

  [closure] static Future<dynamic> <anonymous closure>(dynamic, MethodCall) async {
    // ** addr: 0x7a2290, size: 0x92c
    // 0x7a2290: EnterFrame
    //     0x7a2290: stp             fp, lr, [SP, #-0x10]!
    //     0x7a2294: mov             fp, SP
    // 0x7a2298: AllocStack(0x30)
    //     0x7a2298: sub             SP, SP, #0x30
    // 0x7a229c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a229c: stur            NULL, [fp, #-8]
    //     0x7a22a0: movz            x0, #0
    //     0x7a22a4: add             x1, fp, w0, sxtw #2
    //     0x7a22a8: ldr             x1, [x1, #0x18]
    //     0x7a22ac: add             x2, fp, w0, sxtw #2
    //     0x7a22b0: ldr             x2, [x2, #0x10]
    //     0x7a22b4: stur            x2, [fp, #-0x18]
    //     0x7a22b8: ldur            w3, [x1, #0x17]
    //     0x7a22bc: add             x3, x3, HEAP, lsl #32
    //     0x7a22c0: stur            x3, [fp, #-0x10]
    // 0x7a22c4: CheckStackOverflow
    //     0x7a22c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a22c8: cmp             SP, x16
    //     0x7a22cc: b.ls            #0x7a2bb4
    // 0x7a22d0: InitAsync() -> Future
    //     0x7a22d0: mov             x0, NULL
    //     0x7a22d4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a22d8: ldur            x3, [fp, #-0x18]
    // 0x7a22dc: LoadField: r4 = r3->field_b
    //     0x7a22dc: ldur            w4, [x3, #0xb]
    // 0x7a22e0: DecompressPointer r4
    //     0x7a22e0: add             x4, x4, HEAP, lsl #32
    // 0x7a22e4: mov             x0, x4
    // 0x7a22e8: stur            x4, [fp, #-0x10]
    // 0x7a22ec: r2 = Null
    //     0x7a22ec: mov             x2, NULL
    // 0x7a22f0: r1 = Null
    //     0x7a22f0: mov             x1, NULL
    // 0x7a22f4: cmp             w0, NULL
    // 0x7a22f8: b.eq            #0x7a2390
    // 0x7a22fc: branchIfSmi(r0, 0x7a2390)
    //     0x7a22fc: tbz             w0, #0, #0x7a2390
    // 0x7a2300: r3 = LoadClassIdInstr(r0)
    //     0x7a2300: ldur            x3, [x0, #-1]
    //     0x7a2304: ubfx            x3, x3, #0xc, #0x14
    // 0x7a2308: r17 = 5220
    //     0x7a2308: movz            x17, #0x1464
    // 0x7a230c: cmp             x3, x17
    // 0x7a2310: b.eq            #0x7a2398
    // 0x7a2314: r4 = LoadClassIdInstr(r0)
    //     0x7a2314: ldur            x4, [x0, #-1]
    //     0x7a2318: ubfx            x4, x4, #0xc, #0x14
    // 0x7a231c: ldr             x3, [THR, #0x680]  ; THR::isolate_group
    // 0x7a2320: ldr             x3, [x3, #0x18]
    // 0x7a2324: ldr             x3, [x3, x4, lsl #3]
    // 0x7a2328: LoadField: r3 = r3->field_2b
    //     0x7a2328: ldur            w3, [x3, #0x2b]
    // 0x7a232c: DecompressPointer r3
    //     0x7a232c: add             x3, x3, HEAP, lsl #32
    // 0x7a2330: cmp             w3, NULL
    // 0x7a2334: b.eq            #0x7a2390
    // 0x7a2338: LoadField: r3 = r3->field_f
    //     0x7a2338: ldur            w3, [x3, #0xf]
    // 0x7a233c: lsr             x3, x3, #3
    // 0x7a2340: r17 = 5220
    //     0x7a2340: movz            x17, #0x1464
    // 0x7a2344: cmp             x3, x17
    // 0x7a2348: b.eq            #0x7a2398
    // 0x7a234c: r3 = SubtypeTestCache
    //     0x7a234c: add             x3, PP, #0x10, lsl #12  ; [pp+0x10398] SubtypeTestCache
    //     0x7a2350: ldr             x3, [x3, #0x398]
    // 0x7a2354: r30 = Subtype1TestCacheStub
    //     0x7a2354: ldr             lr, [PP, #0x538]  ; [pp+0x538] Stub: Subtype1TestCache (0x222f78)
    // 0x7a2358: LoadField: r30 = r30->field_7
    //     0x7a2358: ldur            lr, [lr, #7]
    // 0x7a235c: blr             lr
    // 0x7a2360: cmp             w7, NULL
    // 0x7a2364: b.eq            #0x7a2370
    // 0x7a2368: tbnz            w7, #4, #0x7a2390
    // 0x7a236c: b               #0x7a2398
    // 0x7a2370: r8 = Map
    //     0x7a2370: add             x8, PP, #0x10, lsl #12  ; [pp+0x103a0] Type: Map
    //     0x7a2374: ldr             x8, [x8, #0x3a0]
    // 0x7a2378: r3 = SubtypeTestCache
    //     0x7a2378: add             x3, PP, #0x10, lsl #12  ; [pp+0x103a8] SubtypeTestCache
    //     0x7a237c: ldr             x3, [x3, #0x3a8]
    // 0x7a2380: r30 = InstanceOfStub
    //     0x7a2380: ldr             lr, [PP, #0x438]  ; [pp+0x438] Stub: InstanceOf (0x2112c8)
    // 0x7a2384: LoadField: r30 = r30->field_7
    //     0x7a2384: ldur            lr, [lr, #7]
    // 0x7a2388: blr             lr
    // 0x7a238c: b               #0x7a239c
    // 0x7a2390: r0 = false
    //     0x7a2390: add             x0, NULL, #0x30  ; false
    // 0x7a2394: b               #0x7a239c
    // 0x7a2398: r0 = true
    //     0x7a2398: add             x0, NULL, #0x20  ; true
    // 0x7a239c: tbnz            w0, #4, #0x7a2444
    // 0x7a23a0: ldur            x0, [fp, #-0x10]
    // 0x7a23a4: r1 = "b60407f6edfe"
    //     0x7a23a4: add             x1, PP, #0x10, lsl #12  ; [pp+0x103b0] "b60407f6edfe"
    //     0x7a23a8: ldr             x1, [x1, #0x3b0]
    // 0x7a23ac: r0 = call 0x49fdb0
    //     0x7a23ac: bl              #0x49fdb0
    // 0x7a23b0: ldur            x3, [fp, #-0x10]
    // 0x7a23b4: r1 = LoadClassIdInstr(r3)
    //     0x7a23b4: ldur            x1, [x3, #-1]
    //     0x7a23b8: ubfx            x1, x1, #0xc, #0x14
    // 0x7a23bc: mov             x2, x0
    // 0x7a23c0: mov             x0, x1
    // 0x7a23c4: mov             x1, x3
    // 0x7a23c8: mov             lr, x0
    // 0x7a23cc: ldr             lr, [x21, lr, lsl #3]
    // 0x7a23d0: blr             lr
    // 0x7a23d4: cmp             w0, NULL
    // 0x7a23d8: b.eq            #0x7a2444
    // 0x7a23dc: ldur            x0, [fp, #-0x10]
    // 0x7a23e0: r1 = "3a47e1d56931"
    //     0x7a23e0: add             x1, PP, #0x10, lsl #12  ; [pp+0x103b8] "3a47e1d56931"
    //     0x7a23e4: ldr             x1, [x1, #0x3b8]
    // 0x7a23e8: r0 = call 0x49fdb0
    //     0x7a23e8: bl              #0x49fdb0
    // 0x7a23ec: ldur            x1, [fp, #-0x10]
    // 0x7a23f0: r2 = LoadClassIdInstr(r1)
    //     0x7a23f0: ldur            x2, [x1, #-1]
    //     0x7a23f4: ubfx            x2, x2, #0xc, #0x14
    // 0x7a23f8: mov             x16, x0
    // 0x7a23fc: mov             x0, x2
    // 0x7a2400: mov             x2, x16
    // 0x7a2404: mov             lr, x0
    // 0x7a2408: ldr             lr, [x21, lr, lsl #3]
    // 0x7a240c: blr             lr
    // 0x7a2410: r1 = 60
    //     0x7a2410: movz            x1, #0x3c
    // 0x7a2414: branchIfSmi(r0, 0x7a2420)
    //     0x7a2414: tbz             w0, #0, #0x7a2420
    // 0x7a2418: r1 = LoadClassIdInstr(r0)
    //     0x7a2418: ldur            x1, [x0, #-1]
    //     0x7a241c: ubfx            x1, x1, #0xc, #0x14
    // 0x7a2420: str             x0, [SP]
    // 0x7a2424: mov             x0, x1
    // 0x7a2428: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7a2428: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7a242c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7a242c: movz            x17, #0x3a5d
    //     0x7a2430: add             lr, x0, x17
    //     0x7a2434: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2438: blr             lr
    // 0x7a243c: mov             x1, x0
    // 0x7a2440: b               #0x7a2448
    // 0x7a2444: r1 = ""
    //     0x7a2444: ldr             x1, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x7a2448: ldur            x0, [fp, #-0x18]
    // 0x7a244c: stur            x1, [fp, #-0x20]
    // 0x7a2450: LoadField: r2 = r0->field_7
    //     0x7a2450: ldur            w2, [x0, #7]
    // 0x7a2454: DecompressPointer r2
    //     0x7a2454: add             x2, x2, HEAP, lsl #32
    // 0x7a2458: stur            x2, [fp, #-0x10]
    // 0x7a245c: r0 = LoadStaticField(0xf64)
    //     0x7a245c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2460: ldr             x0, [x0, #0x1ec8]
    // 0x7a2464: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2468: cmp             w0, w16
    // 0x7a246c: b.ne            #0x7a247c
    // 0x7a2470: r2 = nNf
    //     0x7a2470: add             x2, PP, #0x10, lsl #12  ; [pp+0x10330] Field <yxa.nNf>: static late (offset: 0xf64)
    //     0x7a2474: ldr             x2, [x2, #0x330]
    // 0x7a2478: r0 = InitLateStaticField()
    //     0x7a2478: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a247c: stur            x0, [fp, #-0x18]
    // 0x7a2480: r0 = LoadStaticField(0xf74)
    //     0x7a2480: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2484: ldr             x0, [x0, #0x1ee8]
    // 0x7a2488: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a248c: cmp             w0, w16
    // 0x7a2490: b.ne            #0x7a24a0
    // 0x7a2494: r2 = rNf
    //     0x7a2494: add             x2, PP, #0x10, lsl #12  ; [pp+0x103c0] Field <yxa.rNf>: static late (offset: 0xf74)
    //     0x7a2498: ldr             x2, [x2, #0x3c0]
    // 0x7a249c: r0 = InitLateStaticField()
    //     0x7a249c: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a24a0: ldur            x16, [fp, #-0x18]
    // 0x7a24a4: stp             x0, x16, [SP]
    // 0x7a24a8: r0 = +()
    //     0x7a24a8: bl              #0x746514  ; [dart:core] _StringBase::+
    // 0x7a24ac: ldur            x1, [fp, #-0x10]
    // 0x7a24b0: r2 = LoadClassIdInstr(r1)
    //     0x7a24b0: ldur            x2, [x1, #-1]
    //     0x7a24b4: ubfx            x2, x2, #0xc, #0x14
    // 0x7a24b8: stp             x0, x1, [SP]
    // 0x7a24bc: mov             x0, x2
    // 0x7a24c0: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a24c0: movz            x17, #0x245b
    //     0x7a24c4: add             lr, x0, x17
    //     0x7a24c8: ldr             lr, [x21, lr, lsl #3]
    //     0x7a24cc: blr             lr
    // 0x7a24d0: tbnz            w0, #4, #0x7a2690
    // 0x7a24d4: ldur            x0, [fp, #-0x20]
    // 0x7a24d8: r0 = LoadStaticField(0xf78)
    //     0x7a24d8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a24dc: ldr             x0, [x0, #0x1ef0]
    // 0x7a24e0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a24e4: cmp             w0, w16
    // 0x7a24e8: b.ne            #0x7a24f8
    // 0x7a24ec: r2 = sNf
    //     0x7a24ec: add             x2, PP, #0x10, lsl #12  ; [pp+0x103c8] Field <yxa.sNf>: static late (offset: 0xf78)
    //     0x7a24f0: ldr             x2, [x2, #0x3c8]
    // 0x7a24f4: r0 = InitLateStaticField()
    //     0x7a24f4: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a24f8: ldur            x1, [fp, #-0x20]
    // 0x7a24fc: r2 = LoadClassIdInstr(r1)
    //     0x7a24fc: ldur            x2, [x1, #-1]
    //     0x7a2500: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2504: stp             x0, x1, [SP]
    // 0x7a2508: mov             x0, x2
    // 0x7a250c: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a250c: movz            x17, #0x245b
    //     0x7a2510: add             lr, x0, x17
    //     0x7a2514: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2518: blr             lr
    // 0x7a251c: tbnz            w0, #4, #0x7a25b0
    // 0x7a2520: r2 = false
    //     0x7a2520: add             x2, NULL, #0x30  ; false
    // 0x7a2524: StoreStaticField(0xf48, r2)
    //     0x7a2524: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2528: str             x2, [x0, #0x1e90]
    // 0x7a252c: r2 = true
    //     0x7a252c: add             x2, NULL, #0x20  ; true
    // 0x7a2530: StoreStaticField(0xf54, r2)
    //     0x7a2530: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2534: str             x2, [x0, #0x1ea8]
    // 0x7a2538: r0 = LoadStaticField(0xf60)
    //     0x7a2538: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a253c: ldr             x0, [x0, #0x1ec0]
    // 0x7a2540: stur            x0, [fp, #-0x18]
    // 0x7a2544: cmp             w0, NULL
    // 0x7a2548: b.eq            #0x7a2574
    // 0x7a254c: LoadField: r1 = r0->field_b
    //     0x7a254c: ldur            w1, [x0, #0xb]
    // 0x7a2550: DecompressPointer r1
    //     0x7a2550: add             x1, x1, HEAP, lsl #32
    // 0x7a2554: LoadField: r2 = r1->field_b
    //     0x7a2554: ldur            x2, [x1, #0xb]
    // 0x7a2558: tst             x2, #0x1e
    // 0x7a255c: b.ne            #0x7a2574
    // 0x7a2560: r16 = true
    //     0x7a2560: add             x16, NULL, #0x20  ; true
    // 0x7a2564: str             x16, [SP]
    // 0x7a2568: mov             x1, x0
    // 0x7a256c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7a256c: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7a2570: r0 = call 0x5ee7a4
    //     0x7a2570: bl              #0x5ee7a4
    // 0x7a2574: ldur            x0, [fp, #-0x18]
    // 0x7a2578: r1 = LoadStaticField(0xf60)
    //     0x7a2578: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7a257c: ldr             x1, [x1, #0x1ec0]
    // 0x7a2580: cmp             w1, w0
    // 0x7a2584: b.ne            #0x7a2594
    // 0x7a2588: r2 = Null
    //     0x7a2588: mov             x2, NULL
    // 0x7a258c: StoreStaticField(0xf60, r2)
    //     0x7a258c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2590: str             x2, [x0, #0x1ec0]
    // 0x7a2594: r1 = Function '<anonymous closure>': static.
    //     0x7a2594: add             x1, PP, #0x10, lsl #12  ; [pp+0x103d0] AnonymousClosure: static (0x4bee44), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2598: ldr             x1, [x1, #0x3d0]
    // 0x7a259c: r2 = Null
    //     0x7a259c: mov             x2, NULL
    // 0x7a25a0: r0 = AllocateClosure()
    //     0x7a25a0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a25a4: mov             x1, x0
    // 0x7a25a8: r0 = __unknown_function__()
    //     0x7a25a8: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a25ac: b               #0x7a2b68
    // 0x7a25b0: ldur            x0, [fp, #-0x20]
    // 0x7a25b4: r0 = LoadStaticField(0xf7c)
    //     0x7a25b4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a25b8: ldr             x0, [x0, #0x1ef8]
    // 0x7a25bc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a25c0: cmp             w0, w16
    // 0x7a25c4: b.ne            #0x7a25d4
    // 0x7a25c8: r2 = tNf
    //     0x7a25c8: add             x2, PP, #0x10, lsl #12  ; [pp+0x103d8] Field <yxa.tNf>: static late (offset: 0xf7c)
    //     0x7a25cc: ldr             x2, [x2, #0x3d8]
    // 0x7a25d0: r0 = InitLateStaticField()
    //     0x7a25d0: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a25d4: mov             x1, x0
    // 0x7a25d8: ldur            x0, [fp, #-0x20]
    // 0x7a25dc: r2 = LoadClassIdInstr(r0)
    //     0x7a25dc: ldur            x2, [x0, #-1]
    //     0x7a25e0: ubfx            x2, x2, #0xc, #0x14
    // 0x7a25e4: stp             x1, x0, [SP]
    // 0x7a25e8: mov             x0, x2
    // 0x7a25ec: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a25ec: movz            x17, #0x245b
    //     0x7a25f0: add             lr, x0, x17
    //     0x7a25f4: ldr             lr, [x21, lr, lsl #3]
    //     0x7a25f8: blr             lr
    // 0x7a25fc: tbnz            w0, #4, #0x7a2b68
    // 0x7a2600: r2 = true
    //     0x7a2600: add             x2, NULL, #0x20  ; true
    // 0x7a2604: StoreStaticField(0xf48, r2)
    //     0x7a2604: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2608: str             x2, [x0, #0x1e90]
    // 0x7a260c: r2 = false
    //     0x7a260c: add             x2, NULL, #0x30  ; false
    // 0x7a2610: StoreStaticField(0xf54, r2)
    //     0x7a2610: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2614: str             x2, [x0, #0x1ea8]
    // 0x7a2618: r0 = LoadStaticField(0xf60)
    //     0x7a2618: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a261c: ldr             x0, [x0, #0x1ec0]
    // 0x7a2620: stur            x0, [fp, #-0x18]
    // 0x7a2624: cmp             w0, NULL
    // 0x7a2628: b.eq            #0x7a2654
    // 0x7a262c: LoadField: r1 = r0->field_b
    //     0x7a262c: ldur            w1, [x0, #0xb]
    // 0x7a2630: DecompressPointer r1
    //     0x7a2630: add             x1, x1, HEAP, lsl #32
    // 0x7a2634: LoadField: r2 = r1->field_b
    //     0x7a2634: ldur            x2, [x1, #0xb]
    // 0x7a2638: tst             x2, #0x1e
    // 0x7a263c: b.ne            #0x7a2654
    // 0x7a2640: r16 = false
    //     0x7a2640: add             x16, NULL, #0x30  ; false
    // 0x7a2644: str             x16, [SP]
    // 0x7a2648: mov             x1, x0
    // 0x7a264c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7a264c: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7a2650: r0 = call 0x5ee7a4
    //     0x7a2650: bl              #0x5ee7a4
    // 0x7a2654: ldur            x0, [fp, #-0x18]
    // 0x7a2658: r1 = LoadStaticField(0xf60)
    //     0x7a2658: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7a265c: ldr             x1, [x1, #0x1ec0]
    // 0x7a2660: cmp             w1, w0
    // 0x7a2664: b.ne            #0x7a2674
    // 0x7a2668: r2 = Null
    //     0x7a2668: mov             x2, NULL
    // 0x7a266c: StoreStaticField(0xf60, r2)
    //     0x7a266c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2670: str             x2, [x0, #0x1ec0]
    // 0x7a2674: r1 = Function '<anonymous closure>': static.
    //     0x7a2674: add             x1, PP, #0x10, lsl #12  ; [pp+0x103e0] AnonymousClosure: static (0x4beda8), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2678: ldr             x1, [x1, #0x3e0]
    // 0x7a267c: r2 = Null
    //     0x7a267c: mov             x2, NULL
    // 0x7a2680: r0 = AllocateClosure()
    //     0x7a2680: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2684: mov             x1, x0
    // 0x7a2688: r0 = __unknown_function__()
    //     0x7a2688: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a268c: b               #0x7a2b68
    // 0x7a2690: ldur            x0, [fp, #-0x20]
    // 0x7a2694: ldur            x1, [fp, #-0x10]
    // 0x7a2698: r0 = LoadStaticField(0xf6c)
    //     0x7a2698: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a269c: ldr             x0, [x0, #0x1ed8]
    // 0x7a26a0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a26a4: cmp             w0, w16
    // 0x7a26a8: b.ne            #0x7a26b8
    // 0x7a26ac: r2 = pNf
    //     0x7a26ac: add             x2, PP, #0x10, lsl #12  ; [pp+0x103e8] Field <yxa.pNf>: static late (offset: 0xf6c)
    //     0x7a26b0: ldr             x2, [x2, #0x3e8]
    // 0x7a26b4: r0 = InitLateStaticField()
    //     0x7a26b4: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a26b8: r1 = LoadStaticField(0xf74)
    //     0x7a26b8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7a26bc: ldr             x1, [x1, #0x1ee8]
    // 0x7a26c0: stp             x1, x0, [SP]
    // 0x7a26c4: r0 = +()
    //     0x7a26c4: bl              #0x746514  ; [dart:core] _StringBase::+
    // 0x7a26c8: ldur            x1, [fp, #-0x10]
    // 0x7a26cc: r2 = LoadClassIdInstr(r1)
    //     0x7a26cc: ldur            x2, [x1, #-1]
    //     0x7a26d0: ubfx            x2, x2, #0xc, #0x14
    // 0x7a26d4: stp             x0, x1, [SP]
    // 0x7a26d8: mov             x0, x2
    // 0x7a26dc: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a26dc: movz            x17, #0x245b
    //     0x7a26e0: add             lr, x0, x17
    //     0x7a26e4: ldr             lr, [x21, lr, lsl #3]
    //     0x7a26e8: blr             lr
    // 0x7a26ec: tbnz            w0, #4, #0x7a2894
    // 0x7a26f0: ldur            x0, [fp, #-0x20]
    // 0x7a26f4: r0 = LoadStaticField(0xf80)
    //     0x7a26f4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a26f8: ldr             x0, [x0, #0x1f00]
    // 0x7a26fc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2700: cmp             w0, w16
    // 0x7a2704: b.ne            #0x7a2714
    // 0x7a2708: r2 = uNf
    //     0x7a2708: add             x2, PP, #0x10, lsl #12  ; [pp+0x103f0] Field <yxa.uNf>: static late (offset: 0xf80)
    //     0x7a270c: ldr             x2, [x2, #0x3f0]
    // 0x7a2710: r0 = InitLateStaticField()
    //     0x7a2710: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2714: ldur            x1, [fp, #-0x20]
    // 0x7a2718: r2 = LoadClassIdInstr(r1)
    //     0x7a2718: ldur            x2, [x1, #-1]
    //     0x7a271c: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2720: stp             x0, x1, [SP]
    // 0x7a2724: mov             x0, x2
    // 0x7a2728: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2728: movz            x17, #0x245b
    //     0x7a272c: add             lr, x0, x17
    //     0x7a2730: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2734: blr             lr
    // 0x7a2738: tbnz            w0, #4, #0x7a2758
    // 0x7a273c: r1 = Function '<anonymous closure>': static.
    //     0x7a273c: add             x1, PP, #0x10, lsl #12  ; [pp+0x103f8] AnonymousClosure: static (0x4bed0c), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2740: ldr             x1, [x1, #0x3f8]
    // 0x7a2744: r2 = Null
    //     0x7a2744: mov             x2, NULL
    // 0x7a2748: r0 = AllocateClosure()
    //     0x7a2748: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a274c: mov             x1, x0
    // 0x7a2750: r0 = __unknown_function__()
    //     0x7a2750: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2754: b               #0x7a2b68
    // 0x7a2758: ldur            x0, [fp, #-0x20]
    // 0x7a275c: r0 = LoadStaticField(0xf84)
    //     0x7a275c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2760: ldr             x0, [x0, #0x1f08]
    // 0x7a2764: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2768: cmp             w0, w16
    // 0x7a276c: b.ne            #0x7a277c
    // 0x7a2770: r2 = vNf
    //     0x7a2770: add             x2, PP, #0x10, lsl #12  ; [pp+0x10400] Field <yxa.vNf>: static late (offset: 0xf84)
    //     0x7a2774: ldr             x2, [x2, #0x400]
    // 0x7a2778: r0 = InitLateStaticField()
    //     0x7a2778: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a277c: ldur            x1, [fp, #-0x20]
    // 0x7a2780: r2 = LoadClassIdInstr(r1)
    //     0x7a2780: ldur            x2, [x1, #-1]
    //     0x7a2784: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2788: stp             x0, x1, [SP]
    // 0x7a278c: mov             x0, x2
    // 0x7a2790: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2790: movz            x17, #0x245b
    //     0x7a2794: add             lr, x0, x17
    //     0x7a2798: ldr             lr, [x21, lr, lsl #3]
    //     0x7a279c: blr             lr
    // 0x7a27a0: tbnz            w0, #4, #0x7a27c0
    // 0x7a27a4: r1 = Function '<anonymous closure>': static.
    //     0x7a27a4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10408] AnonymousClosure: static (0x4bec70), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a27a8: ldr             x1, [x1, #0x408]
    // 0x7a27ac: r2 = Null
    //     0x7a27ac: mov             x2, NULL
    // 0x7a27b0: r0 = AllocateClosure()
    //     0x7a27b0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a27b4: mov             x1, x0
    // 0x7a27b8: r0 = __unknown_function__()
    //     0x7a27b8: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a27bc: b               #0x7a2b68
    // 0x7a27c0: ldur            x0, [fp, #-0x20]
    // 0x7a27c4: r0 = LoadStaticField(0xf88)
    //     0x7a27c4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a27c8: ldr             x0, [x0, #0x1f10]
    // 0x7a27cc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a27d0: cmp             w0, w16
    // 0x7a27d4: b.ne            #0x7a27e4
    // 0x7a27d8: r2 = wNf
    //     0x7a27d8: add             x2, PP, #0x10, lsl #12  ; [pp+0x10410] Field <yxa.wNf>: static late (offset: 0xf88)
    //     0x7a27dc: ldr             x2, [x2, #0x410]
    // 0x7a27e0: r0 = InitLateStaticField()
    //     0x7a27e0: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a27e4: ldur            x1, [fp, #-0x20]
    // 0x7a27e8: r2 = LoadClassIdInstr(r1)
    //     0x7a27e8: ldur            x2, [x1, #-1]
    //     0x7a27ec: ubfx            x2, x2, #0xc, #0x14
    // 0x7a27f0: stp             x0, x1, [SP]
    // 0x7a27f4: mov             x0, x2
    // 0x7a27f8: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a27f8: movz            x17, #0x245b
    //     0x7a27fc: add             lr, x0, x17
    //     0x7a2800: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2804: blr             lr
    // 0x7a2808: tbnz            w0, #4, #0x7a2828
    // 0x7a280c: r1 = Function '<anonymous closure>': static.
    //     0x7a280c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10418] AnonymousClosure: static (0x4bebd0), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2810: ldr             x1, [x1, #0x418]
    // 0x7a2814: r2 = Null
    //     0x7a2814: mov             x2, NULL
    // 0x7a2818: r0 = AllocateClosure()
    //     0x7a2818: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a281c: mov             x1, x0
    // 0x7a2820: r0 = __unknown_function__()
    //     0x7a2820: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2824: b               #0x7a2b68
    // 0x7a2828: ldur            x0, [fp, #-0x20]
    // 0x7a282c: r0 = LoadStaticField(0xf7c)
    //     0x7a282c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2830: ldr             x0, [x0, #0x1ef8]
    // 0x7a2834: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2838: cmp             w0, w16
    // 0x7a283c: b.ne            #0x7a284c
    // 0x7a2840: r2 = tNf
    //     0x7a2840: add             x2, PP, #0x10, lsl #12  ; [pp+0x103d8] Field <yxa.tNf>: static late (offset: 0xf7c)
    //     0x7a2844: ldr             x2, [x2, #0x3d8]
    // 0x7a2848: r0 = InitLateStaticField()
    //     0x7a2848: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a284c: mov             x1, x0
    // 0x7a2850: ldur            x0, [fp, #-0x20]
    // 0x7a2854: r2 = LoadClassIdInstr(r0)
    //     0x7a2854: ldur            x2, [x0, #-1]
    //     0x7a2858: ubfx            x2, x2, #0xc, #0x14
    // 0x7a285c: stp             x1, x0, [SP]
    // 0x7a2860: mov             x0, x2
    // 0x7a2864: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2864: movz            x17, #0x245b
    //     0x7a2868: add             lr, x0, x17
    //     0x7a286c: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2870: blr             lr
    // 0x7a2874: tbnz            w0, #4, #0x7a2b68
    // 0x7a2878: r1 = Function '<anonymous closure>': static.
    //     0x7a2878: add             x1, PP, #0x10, lsl #12  ; [pp+0x10420] AnonymousClosure: static (0x4a064c), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a287c: ldr             x1, [x1, #0x420]
    // 0x7a2880: r2 = Null
    //     0x7a2880: mov             x2, NULL
    // 0x7a2884: r0 = AllocateClosure()
    //     0x7a2884: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2888: mov             x1, x0
    // 0x7a288c: r0 = __unknown_function__()
    //     0x7a288c: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2890: b               #0x7a2b68
    // 0x7a2894: ldur            x0, [fp, #-0x20]
    // 0x7a2898: ldur            x1, [fp, #-0x10]
    // 0x7a289c: r0 = LoadStaticField(0xf70)
    //     0x7a289c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a28a0: ldr             x0, [x0, #0x1ee0]
    // 0x7a28a4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a28a8: cmp             w0, w16
    // 0x7a28ac: b.ne            #0x7a28bc
    // 0x7a28b0: r2 = qNf
    //     0x7a28b0: add             x2, PP, #0x10, lsl #12  ; [pp+0x10428] Field <yxa.qNf>: static late (offset: 0xf70)
    //     0x7a28b4: ldr             x2, [x2, #0x428]
    // 0x7a28b8: r0 = InitLateStaticField()
    //     0x7a28b8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a28bc: r1 = LoadStaticField(0xf74)
    //     0x7a28bc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7a28c0: ldr             x1, [x1, #0x1ee8]
    // 0x7a28c4: stp             x1, x0, [SP]
    // 0x7a28c8: r0 = +()
    //     0x7a28c8: bl              #0x746514  ; [dart:core] _StringBase::+
    // 0x7a28cc: mov             x1, x0
    // 0x7a28d0: ldur            x0, [fp, #-0x10]
    // 0x7a28d4: r2 = LoadClassIdInstr(r0)
    //     0x7a28d4: ldur            x2, [x0, #-1]
    //     0x7a28d8: ubfx            x2, x2, #0xc, #0x14
    // 0x7a28dc: stp             x1, x0, [SP]
    // 0x7a28e0: mov             x0, x2
    // 0x7a28e4: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a28e4: movz            x17, #0x245b
    //     0x7a28e8: add             lr, x0, x17
    //     0x7a28ec: ldr             lr, [x21, lr, lsl #3]
    //     0x7a28f0: blr             lr
    // 0x7a28f4: tbnz            w0, #4, #0x7a2b68
    // 0x7a28f8: ldur            x0, [fp, #-0x20]
    // 0x7a28fc: r0 = LoadStaticField(0xf80)
    //     0x7a28fc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2900: ldr             x0, [x0, #0x1f00]
    // 0x7a2904: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2908: cmp             w0, w16
    // 0x7a290c: b.ne            #0x7a291c
    // 0x7a2910: r2 = uNf
    //     0x7a2910: add             x2, PP, #0x10, lsl #12  ; [pp+0x103f0] Field <yxa.uNf>: static late (offset: 0xf80)
    //     0x7a2914: ldr             x2, [x2, #0x3f0]
    // 0x7a2918: r0 = InitLateStaticField()
    //     0x7a2918: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a291c: ldur            x1, [fp, #-0x20]
    // 0x7a2920: r2 = LoadClassIdInstr(r1)
    //     0x7a2920: ldur            x2, [x1, #-1]
    //     0x7a2924: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2928: stp             x0, x1, [SP]
    // 0x7a292c: mov             x0, x2
    // 0x7a2930: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2930: movz            x17, #0x245b
    //     0x7a2934: add             lr, x0, x17
    //     0x7a2938: ldr             lr, [x21, lr, lsl #3]
    //     0x7a293c: blr             lr
    // 0x7a2940: tbnz            w0, #4, #0x7a2960
    // 0x7a2944: r1 = Function '<anonymous closure>': static.
    //     0x7a2944: add             x1, PP, #0x10, lsl #12  ; [pp+0x10430] AnonymousClosure: static (0x4beb34), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2948: ldr             x1, [x1, #0x430]
    // 0x7a294c: r2 = Null
    //     0x7a294c: mov             x2, NULL
    // 0x7a2950: r0 = AllocateClosure()
    //     0x7a2950: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2954: mov             x1, x0
    // 0x7a2958: r0 = __unknown_function__()
    //     0x7a2958: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a295c: b               #0x7a2b68
    // 0x7a2960: ldur            x0, [fp, #-0x20]
    // 0x7a2964: r0 = LoadStaticField(0xf98)
    //     0x7a2964: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2968: ldr             x0, [x0, #0x1f30]
    // 0x7a296c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2970: cmp             w0, w16
    // 0x7a2974: b.ne            #0x7a2984
    // 0x7a2978: r2 = ANf
    //     0x7a2978: add             x2, PP, #0x10, lsl #12  ; [pp+0x10438] Field <yxa.ANf>: static late (offset: 0xf98)
    //     0x7a297c: ldr             x2, [x2, #0x438]
    // 0x7a2980: r0 = InitLateStaticField()
    //     0x7a2980: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2984: ldur            x1, [fp, #-0x20]
    // 0x7a2988: r2 = LoadClassIdInstr(r1)
    //     0x7a2988: ldur            x2, [x1, #-1]
    //     0x7a298c: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2990: stp             x0, x1, [SP]
    // 0x7a2994: mov             x0, x2
    // 0x7a2998: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2998: movz            x17, #0x245b
    //     0x7a299c: add             lr, x0, x17
    //     0x7a29a0: ldr             lr, [x21, lr, lsl #3]
    //     0x7a29a4: blr             lr
    // 0x7a29a8: tbnz            w0, #4, #0x7a29c8
    // 0x7a29ac: r1 = Function '<anonymous closure>': static.
    //     0x7a29ac: add             x1, PP, #0x10, lsl #12  ; [pp+0x10440] AnonymousClosure: static (0x4bea94), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a29b0: ldr             x1, [x1, #0x440]
    // 0x7a29b4: r2 = Null
    //     0x7a29b4: mov             x2, NULL
    // 0x7a29b8: r0 = AllocateClosure()
    //     0x7a29b8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a29bc: mov             x1, x0
    // 0x7a29c0: r0 = __unknown_function__()
    //     0x7a29c0: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a29c4: b               #0x7a2b68
    // 0x7a29c8: ldur            x0, [fp, #-0x20]
    // 0x7a29cc: r0 = LoadStaticField(0xf9c)
    //     0x7a29cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a29d0: ldr             x0, [x0, #0x1f38]
    // 0x7a29d4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a29d8: cmp             w0, w16
    // 0x7a29dc: b.ne            #0x7a29ec
    // 0x7a29e0: r2 = BNf
    //     0x7a29e0: add             x2, PP, #0x10, lsl #12  ; [pp+0x10448] Field <yxa.BNf>: static late (offset: 0xf9c)
    //     0x7a29e4: ldr             x2, [x2, #0x448]
    // 0x7a29e8: r0 = InitLateStaticField()
    //     0x7a29e8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a29ec: ldur            x1, [fp, #-0x20]
    // 0x7a29f0: r2 = LoadClassIdInstr(r1)
    //     0x7a29f0: ldur            x2, [x1, #-1]
    //     0x7a29f4: ubfx            x2, x2, #0xc, #0x14
    // 0x7a29f8: stp             x0, x1, [SP]
    // 0x7a29fc: mov             x0, x2
    // 0x7a2a00: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2a00: movz            x17, #0x245b
    //     0x7a2a04: add             lr, x0, x17
    //     0x7a2a08: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2a0c: blr             lr
    // 0x7a2a10: tbnz            w0, #4, #0x7a2a30
    // 0x7a2a14: r1 = Function '<anonymous closure>': static.
    //     0x7a2a14: add             x1, PP, #0x10, lsl #12  ; [pp+0x10450] AnonymousClosure: static (0x4be9f4), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2a18: ldr             x1, [x1, #0x450]
    // 0x7a2a1c: r2 = Null
    //     0x7a2a1c: mov             x2, NULL
    // 0x7a2a20: r0 = AllocateClosure()
    //     0x7a2a20: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2a24: mov             x1, x0
    // 0x7a2a28: r0 = __unknown_function__()
    //     0x7a2a28: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2a2c: b               #0x7a2b68
    // 0x7a2a30: ldur            x0, [fp, #-0x20]
    // 0x7a2a34: r0 = LoadStaticField(0xf84)
    //     0x7a2a34: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2a38: ldr             x0, [x0, #0x1f08]
    // 0x7a2a3c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2a40: cmp             w0, w16
    // 0x7a2a44: b.ne            #0x7a2a54
    // 0x7a2a48: r2 = vNf
    //     0x7a2a48: add             x2, PP, #0x10, lsl #12  ; [pp+0x10400] Field <yxa.vNf>: static late (offset: 0xf84)
    //     0x7a2a4c: ldr             x2, [x2, #0x400]
    // 0x7a2a50: r0 = InitLateStaticField()
    //     0x7a2a50: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2a54: ldur            x1, [fp, #-0x20]
    // 0x7a2a58: r2 = LoadClassIdInstr(r1)
    //     0x7a2a58: ldur            x2, [x1, #-1]
    //     0x7a2a5c: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2a60: stp             x0, x1, [SP]
    // 0x7a2a64: mov             x0, x2
    // 0x7a2a68: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2a68: movz            x17, #0x245b
    //     0x7a2a6c: add             lr, x0, x17
    //     0x7a2a70: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2a74: blr             lr
    // 0x7a2a78: tbnz            w0, #4, #0x7a2a98
    // 0x7a2a7c: r1 = Function '<anonymous closure>': static.
    //     0x7a2a7c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10458] AnonymousClosure: static (0x4be98c), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2a80: ldr             x1, [x1, #0x458]
    // 0x7a2a84: r2 = Null
    //     0x7a2a84: mov             x2, NULL
    // 0x7a2a88: r0 = AllocateClosure()
    //     0x7a2a88: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2a8c: mov             x1, x0
    // 0x7a2a90: r0 = __unknown_function__()
    //     0x7a2a90: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2a94: b               #0x7a2b68
    // 0x7a2a98: ldur            x0, [fp, #-0x20]
    // 0x7a2a9c: r0 = LoadStaticField(0xf88)
    //     0x7a2a9c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2aa0: ldr             x0, [x0, #0x1f10]
    // 0x7a2aa4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2aa8: cmp             w0, w16
    // 0x7a2aac: b.ne            #0x7a2abc
    // 0x7a2ab0: r2 = wNf
    //     0x7a2ab0: add             x2, PP, #0x10, lsl #12  ; [pp+0x10410] Field <yxa.wNf>: static late (offset: 0xf88)
    //     0x7a2ab4: ldr             x2, [x2, #0x410]
    // 0x7a2ab8: r0 = InitLateStaticField()
    //     0x7a2ab8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2abc: ldur            x1, [fp, #-0x20]
    // 0x7a2ac0: r2 = LoadClassIdInstr(r1)
    //     0x7a2ac0: ldur            x2, [x1, #-1]
    //     0x7a2ac4: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2ac8: stp             x0, x1, [SP]
    // 0x7a2acc: mov             x0, x2
    // 0x7a2ad0: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2ad0: movz            x17, #0x245b
    //     0x7a2ad4: add             lr, x0, x17
    //     0x7a2ad8: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2adc: blr             lr
    // 0x7a2ae0: tbnz            w0, #4, #0x7a2b00
    // 0x7a2ae4: r1 = Function '<anonymous closure>': static.
    //     0x7a2ae4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10460] AnonymousClosure: static (0x4be924), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2ae8: ldr             x1, [x1, #0x460]
    // 0x7a2aec: r2 = Null
    //     0x7a2aec: mov             x2, NULL
    // 0x7a2af0: r0 = AllocateClosure()
    //     0x7a2af0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2af4: mov             x1, x0
    // 0x7a2af8: r0 = __unknown_function__()
    //     0x7a2af8: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2afc: b               #0x7a2b68
    // 0x7a2b00: ldur            x0, [fp, #-0x20]
    // 0x7a2b04: r0 = LoadStaticField(0xf7c)
    //     0x7a2b04: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2b08: ldr             x0, [x0, #0x1ef8]
    // 0x7a2b0c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2b10: cmp             w0, w16
    // 0x7a2b14: b.ne            #0x7a2b24
    // 0x7a2b18: r2 = tNf
    //     0x7a2b18: add             x2, PP, #0x10, lsl #12  ; [pp+0x103d8] Field <yxa.tNf>: static late (offset: 0xf7c)
    //     0x7a2b1c: ldr             x2, [x2, #0x3d8]
    // 0x7a2b20: r0 = InitLateStaticField()
    //     0x7a2b20: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2b24: mov             x1, x0
    // 0x7a2b28: ldur            x0, [fp, #-0x20]
    // 0x7a2b2c: r2 = LoadClassIdInstr(r0)
    //     0x7a2b2c: ldur            x2, [x0, #-1]
    //     0x7a2b30: ubfx            x2, x2, #0xc, #0x14
    // 0x7a2b34: stp             x1, x0, [SP]
    // 0x7a2b38: mov             x0, x2
    // 0x7a2b3c: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7a2b3c: movz            x17, #0x245b
    //     0x7a2b40: add             lr, x0, x17
    //     0x7a2b44: ldr             lr, [x21, lr, lsl #3]
    //     0x7a2b48: blr             lr
    // 0x7a2b4c: tbnz            w0, #4, #0x7a2b68
    // 0x7a2b50: r1 = Function '<anonymous closure>': static.
    //     0x7a2b50: add             x1, PP, #0x10, lsl #12  ; [pp+0x10468] AnonymousClosure: static (0x4be8bc), in [eGi] sxa::<anonymous closure> (0x7a2290)
    //     0x7a2b54: ldr             x1, [x1, #0x468]
    // 0x7a2b58: r2 = Null
    //     0x7a2b58: mov             x2, NULL
    // 0x7a2b5c: r0 = AllocateClosure()
    //     0x7a2b5c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a2b60: mov             x1, x0
    // 0x7a2b64: r0 = __unknown_function__()
    //     0x7a2b64: bl              #0x79e808  ; [] ::__unknown_function__
    // 0x7a2b68: r1 = Null
    //     0x7a2b68: mov             x1, NULL
    // 0x7a2b6c: r0 = _Future()
    //     0x7a2b6c: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x7a2b70: stur            x0, [fp, #-0x10]
    // 0x7a2b74: StoreField: r0->field_b = rZR
    //     0x7a2b74: stur            xzr, [x0, #0xb]
    // 0x7a2b78: r0 = LoadStaticField(0x3a8)
    //     0x7a2b78: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a2b7c: ldr             x0, [x0, #0x750]
    // 0x7a2b80: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a2b84: cmp             w0, w16
    // 0x7a2b88: b.ne            #0x7a2b94
    // 0x7a2b8c: r2 = _current
    //     0x7a2b8c: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x7a2b90: r0 = InitLateStaticField()
    //     0x7a2b90: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a2b94: mov             x1, x0
    // 0x7a2b98: ldur            x0, [fp, #-0x10]
    // 0x7a2b9c: StoreField: r0->field_13 = r1
    //     0x7a2b9c: stur            w1, [x0, #0x13]
    // 0x7a2ba0: mov             x1, x0
    // 0x7a2ba4: r2 = Null
    //     0x7a2ba4: mov             x2, NULL
    // 0x7a2ba8: r0 = call 0x23f18c
    //     0x7a2ba8: bl              #0x23f18c
    // 0x7a2bac: ldur            x0, [fp, #-0x10]
    // 0x7a2bb0: r0 = ReturnAsync()
    //     0x7a2bb0: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7a2bb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a2bb4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a2bb8: b               #0x7a22d0
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bef14, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bee44, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4beda8, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bed0c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bec70, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bebd0, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4a064c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4beb34, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bea94, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4be9f4, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4be98c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4be924, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4be8bc, size: -0x1
  }
}

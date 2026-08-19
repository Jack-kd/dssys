// lib: , url: ZVi

// class id: 1049997, size: 0x8
class :: {
}

// class id: 3954, size: 0x18, field offset: 0xc
//   const constructor, 
class veb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7c16d4, size: 0x80
    // 0x7c16d4: EnterFrame
    //     0x7c16d4: stp             fp, lr, [SP, #-0x10]!
    //     0x7c16d8: mov             fp, SP
    // 0x7c16dc: AllocStack(0x20)
    //     0x7c16dc: sub             SP, SP, #0x20
    // 0x7c16e0: SetupParameters(veb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c16e0: stur            NULL, [fp, #-8]
    //     0x7c16e4: movz            x0, #0
    //     0x7c16e8: add             x1, fp, w0, sxtw #2
    //     0x7c16ec: ldr             x1, [x1, #0x18]
    //     0x7c16f0: add             x2, fp, w0, sxtw #2
    //     0x7c16f4: ldr             x2, [x2, #0x10]
    //     0x7c16f8: stur            x2, [fp, #-0x18]
    //     0x7c16fc: ldur            w3, [x1, #0x17]
    //     0x7c1700: add             x3, x3, HEAP, lsl #32
    //     0x7c1704: stur            x3, [fp, #-0x10]
    // 0x7c1708: CheckStackOverflow
    //     0x7c1708: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c170c: cmp             SP, x16
    //     0x7c1710: b.ls            #0x7c174c
    // 0x7c1714: InitAsync() -> Future<void?>
    //     0x7c1714: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c1718: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c171c: ldur            x0, [fp, #-0x10]
    // 0x7c1720: LoadField: r1 = r0->field_f
    //     0x7c1720: ldur            w1, [x0, #0xf]
    // 0x7c1724: DecompressPointer r1
    //     0x7c1724: add             x1, x1, HEAP, lsl #32
    // 0x7c1728: r0 = __unknown_function__()
    //     0x7c1728: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c172c: ldur            x16, [fp, #-0x18]
    // 0x7c1730: str             x16, [SP]
    // 0x7c1734: ldur            x0, [fp, #-0x18]
    // 0x7c1738: ClosureCall
    //     0x7c1738: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7c173c: ldur            x2, [x0, #0x1f]
    //     0x7c1740: blr             x2
    // 0x7c1744: r0 = Null
    //     0x7c1744: mov             x0, NULL
    // 0x7c1748: r0 = ReturnAsyncNotFuture()
    //     0x7c1748: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c174c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c174c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c1750: b               #0x7c1714
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c22a8, size: 0x2cc
    // 0x7c22a8: EnterFrame
    //     0x7c22a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7c22ac: mov             fp, SP
    // 0x7c22b0: AllocStack(0x68)
    //     0x7c22b0: sub             SP, SP, #0x68
    // 0x7c22b4: SetupParameters(veb this /* r1 */)
    //     0x7c22b4: stur            NULL, [fp, #-8]
    //     0x7c22b8: movz            x0, #0
    //     0x7c22bc: add             x1, fp, w0, sxtw #2
    //     0x7c22c0: ldr             x1, [x1, #0x10]
    //     0x7c22c4: ldur            w2, [x1, #0x17]
    //     0x7c22c8: add             x2, x2, HEAP, lsl #32
    //     0x7c22cc: stur            x2, [fp, #-0x10]
    // 0x7c22d0: CheckStackOverflow
    //     0x7c22d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c22d4: cmp             SP, x16
    //     0x7c22d8: b.ls            #0x7c256c
    // 0x7c22dc: InitAsync() -> Future<void?>
    //     0x7c22dc: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c22e0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c22e4: r1 = 2
    //     0x7c22e4: movz            x1, #0x2
    // 0x7c22e8: r0 = AllocateContext()
    //     0x7c22e8: bl              #0x7dd22c  ; AllocateContextStub
    // 0x7c22ec: mov             x1, x0
    // 0x7c22f0: ldur            x0, [fp, #-0x10]
    // 0x7c22f4: stur            x1, [fp, #-0x20]
    // 0x7c22f8: StoreField: r1->field_b = r0
    //     0x7c22f8: stur            w0, [x1, #0xb]
    // 0x7c22fc: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7c22fc: ldur            w2, [x0, #0x17]
    // 0x7c2300: DecompressPointer r2
    //     0x7c2300: add             x2, x2, HEAP, lsl #32
    // 0x7c2304: stur            x2, [fp, #-0x18]
    // 0x7c2308: r0 = LoadStaticField(0x14ec)
    //     0x7c2308: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c230c: ldr             x0, [x0, #0x29d8]
    // 0x7c2310: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c2314: cmp             w0, w16
    // 0x7c2318: b.ne            #0x7c2328
    // 0x7c231c: r2 = gFg
    //     0x7c231c: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e680] Field <::.gFg>: static late final (offset: 0x14ec)
    //     0x7c2320: ldr             x2, [x2, #0x680]
    // 0x7c2324: r0 = InitLateFinalStaticField()
    //     0x7c2324: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c2328: mov             x2, x0
    // 0x7c232c: ldur            x3, [fp, #-0x10]
    // 0x7c2330: LoadField: r0 = r3->field_f
    //     0x7c2330: ldur            w0, [x3, #0xf]
    // 0x7c2334: DecompressPointer r0
    //     0x7c2334: add             x0, x0, HEAP, lsl #32
    // 0x7c2338: LoadField: r4 = r0->field_f
    //     0x7c2338: ldur            x4, [x0, #0xf]
    // 0x7c233c: r0 = BoxInt64Instr(r4)
    //     0x7c233c: sbfiz           x0, x4, #1, #0x1f
    //     0x7c2340: cmp             x4, x0, asr #1
    //     0x7c2344: b.eq            #0x7c2350
    //     0x7c2348: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c234c: stur            x4, [x0, #7]
    // 0x7c2350: mov             x1, x2
    // 0x7c2354: mov             x2, x0
    // 0x7c2358: r0 = call 0x26370c
    //     0x7c2358: bl              #0x26370c
    // 0x7c235c: mov             x1, x0
    // 0x7c2360: r0 = call 0x263610
    //     0x7c2360: bl              #0x263610
    // 0x7c2364: r16 = <Ieb>
    //     0x7c2364: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e688] TypeArguments: <Ieb>
    //     0x7c2368: ldr             x16, [x16, #0x688]
    // 0x7c236c: ldur            lr, [fp, #-0x18]
    // 0x7c2370: stp             lr, x16, [SP, #8]
    // 0x7c2374: str             x0, [SP]
    // 0x7c2378: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c2378: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c237c: r0 = call 0x263414
    //     0x7c237c: bl              #0x263414
    // 0x7c2380: ldur            x2, [fp, #-0x20]
    // 0x7c2384: StoreField: r2->field_f = r0
    //     0x7c2384: stur            w0, [x2, #0xf]
    //     0x7c2388: ldurb           w16, [x2, #-1]
    //     0x7c238c: ldurb           w17, [x0, #-1]
    //     0x7c2390: and             x16, x17, x16, lsr #2
    //     0x7c2394: tst             x16, HEAP, lsr #32
    //     0x7c2398: b.eq            #0x7c23a0
    //     0x7c239c: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7c23a0: ldur            x0, [fp, #-0x10]
    // 0x7c23a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c23a4: ldur            w1, [x0, #0x17]
    // 0x7c23a8: DecompressPointer r1
    //     0x7c23a8: add             x1, x1, HEAP, lsl #32
    // 0x7c23ac: stur            x1, [fp, #-0x18]
    // 0x7c23b0: r0 = LoadStaticField(0x1368)
    //     0x7c23b0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c23b4: ldr             x0, [x0, #0x26d0]
    // 0x7c23b8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c23bc: cmp             w0, w16
    // 0x7c23c0: b.ne            #0x7c23d0
    // 0x7c23c4: r2 = hqg
    //     0x7c23c4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x7c23c8: ldr             x2, [x2, #0x580]
    // 0x7c23cc: r0 = InitLateFinalStaticField()
    //     0x7c23cc: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c23d0: r16 = <tZa>
    //     0x7c23d0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x7c23d4: ldr             x16, [x16, #0x588]
    // 0x7c23d8: ldur            lr, [fp, #-0x18]
    // 0x7c23dc: stp             lr, x16, [SP, #8]
    // 0x7c23e0: str             x0, [SP]
    // 0x7c23e4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c23e4: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c23e8: r0 = call 0x263414
    //     0x7c23e8: bl              #0x263414
    // 0x7c23ec: ldur            x2, [fp, #-0x20]
    // 0x7c23f0: StoreField: r2->field_13 = r0
    //     0x7c23f0: stur            w0, [x2, #0x13]
    //     0x7c23f4: ldurb           w16, [x2, #-1]
    //     0x7c23f8: ldurb           w17, [x0, #-1]
    //     0x7c23fc: and             x16, x17, x16, lsr #2
    //     0x7c2400: tst             x16, HEAP, lsr #32
    //     0x7c2404: b.eq            #0x7c240c
    //     0x7c2408: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7c240c: ldur            x0, [fp, #-0x10]
    // 0x7c2410: LoadField: r1 = r0->field_13
    //     0x7c2410: ldur            w1, [x0, #0x13]
    // 0x7c2414: DecompressPointer r1
    //     0x7c2414: add             x1, x1, HEAP, lsl #32
    // 0x7c2418: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7c2418: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7c241c: r0 = call 0x368364
    //     0x7c241c: bl              #0x368364
    // 0x7c2420: r16 = <bool>
    //     0x7c2420: ldr             x16, [PP, #0x13c8]  ; [pp+0x13c8] TypeArguments: <bool>
    // 0x7c2424: stp             x0, x16, [SP, #8]
    // 0x7c2428: r16 = true
    //     0x7c2428: add             x16, NULL, #0x20  ; true
    // 0x7c242c: str             x16, [SP]
    // 0x7c2430: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c2430: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c2434: r0 = call 0x2bfdb0
    //     0x7c2434: bl              #0x2bfdb0
    // 0x7c2438: r1 = "80cc81103de91df920745aca8e29"
    //     0x7c2438: add             x1, PP, #0x24, lsl #12  ; [pp+0x24978] "80cc81103de91df920745aca8e29"
    //     0x7c243c: ldr             x1, [x1, #0x978]
    // 0x7c2440: r0 = call 0x64bd1c
    //     0x7c2440: bl              #0x64bd1c
    // 0x7c2444: r1 = "af3caaeb019e371a757669c2e930f4d56b"
    //     0x7c2444: add             x1, PP, #0x24, lsl #12  ; [pp+0x24980] "af3caaeb019e371a757669c2e930f4d56b"
    //     0x7c2448: ldr             x1, [x1, #0x980]
    // 0x7c244c: stur            x0, [fp, #-0x18]
    // 0x7c2450: r0 = call 0x64bd1c
    //     0x7c2450: bl              #0x64bd1c
    // 0x7c2454: mov             x2, x0
    // 0x7c2458: ldur            x0, [fp, #-0x10]
    // 0x7c245c: stur            x2, [fp, #-0x28]
    // 0x7c2460: LoadField: r1 = r0->field_f
    //     0x7c2460: ldur            w1, [x0, #0xf]
    // 0x7c2464: DecompressPointer r1
    //     0x7c2464: add             x1, x1, HEAP, lsl #32
    // 0x7c2468: LoadField: r0 = r1->field_b
    //     0x7c2468: ldur            w0, [x1, #0xb]
    // 0x7c246c: DecompressPointer r0
    //     0x7c246c: add             x0, x0, HEAP, lsl #32
    // 0x7c2470: stur            x0, [fp, #-0x10]
    // 0x7c2474: r1 = "a1863b9ad1a4471c8d"
    //     0x7c2474: add             x1, PP, #0x24, lsl #12  ; [pp+0x24988] "a1863b9ad1a4471c8d"
    //     0x7c2478: ldr             x1, [x1, #0x988]
    // 0x7c247c: r0 = call 0x64bd1c
    //     0x7c247c: bl              #0x64bd1c
    // 0x7c2480: ldur            x1, [fp, #-0x10]
    // 0x7c2484: r2 = LoadClassIdInstr(r1)
    //     0x7c2484: ldur            x2, [x1, #-1]
    //     0x7c2488: ubfx            x2, x2, #0xc, #0x14
    // 0x7c248c: mov             x16, x0
    // 0x7c2490: mov             x0, x2
    // 0x7c2494: mov             x2, x16
    // 0x7c2498: mov             lr, x0
    // 0x7c249c: ldr             lr, [x21, lr, lsl #3]
    // 0x7c24a0: blr             lr
    // 0x7c24a4: mov             x3, x0
    // 0x7c24a8: r2 = Null
    //     0x7c24a8: mov             x2, NULL
    // 0x7c24ac: r1 = Null
    //     0x7c24ac: mov             x1, NULL
    // 0x7c24b0: stur            x3, [fp, #-0x10]
    // 0x7c24b4: r4 = 60
    //     0x7c24b4: movz            x4, #0x3c
    // 0x7c24b8: branchIfSmi(r0, 0x7c24c4)
    //     0x7c24b8: tbz             w0, #0, #0x7c24c4
    // 0x7c24bc: r4 = LoadClassIdInstr(r0)
    //     0x7c24bc: ldur            x4, [x0, #-1]
    //     0x7c24c0: ubfx            x4, x4, #0xc, #0x14
    // 0x7c24c4: sub             x4, x4, #0x5e
    // 0x7c24c8: cmp             x4, #1
    // 0x7c24cc: b.ls            #0x7c24e0
    // 0x7c24d0: r8 = String
    //     0x7c24d0: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7c24d4: r3 = Null
    //     0x7c24d4: add             x3, PP, #0x24, lsl #12  ; [pp+0x24990] Null
    //     0x7c24d8: ldr             x3, [x3, #0x990]
    // 0x7c24dc: r0 = String()
    //     0x7c24dc: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7c24e0: ldur            x16, [fp, #-0x28]
    // 0x7c24e4: ldur            lr, [fp, #-0x10]
    // 0x7c24e8: stp             lr, x16, [SP]
    // 0x7c24ec: r0 = +()
    //     0x7c24ec: bl              #0x746514  ; [dart:core] _StringBase::+
    // 0x7c24f0: r1 = "7ef0962bb3b95319"
    //     0x7c24f0: add             x1, PP, #0x24, lsl #12  ; [pp+0x249a0] "7ef0962bb3b95319"
    //     0x7c24f4: ldr             x1, [x1, #0x9a0]
    // 0x7c24f8: stur            x0, [fp, #-0x10]
    // 0x7c24fc: r0 = call 0x64bd1c
    //     0x7c24fc: bl              #0x64bd1c
    // 0x7c2500: r1 = "8a8b12020a4afbb7"
    //     0x7c2500: add             x1, PP, #0x24, lsl #12  ; [pp+0x249a8] "8a8b12020a4afbb7"
    //     0x7c2504: ldr             x1, [x1, #0x9a8]
    // 0x7c2508: stur            x0, [fp, #-0x28]
    // 0x7c250c: r0 = call 0x64bd1c
    //     0x7c250c: bl              #0x64bd1c
    // 0x7c2510: ldur            x2, [fp, #-0x20]
    // 0x7c2514: r1 = Function '<anonymous closure>':.
    //     0x7c2514: add             x1, PP, #0x24, lsl #12  ; [pp+0x249b0] AnonymousClosure: (0x7c16d4), in [ZVi] veb::<anonymous closure> (0x7c22a8)
    //     0x7c2518: ldr             x1, [x1, #0x9b0]
    // 0x7c251c: stur            x0, [fp, #-0x30]
    // 0x7c2520: r0 = AllocateClosure()
    //     0x7c2520: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7c2524: ldur            x2, [fp, #-0x20]
    // 0x7c2528: r1 = Function '<anonymous closure>':.
    //     0x7c2528: add             x1, PP, #0x24, lsl #12  ; [pp+0x249b8] AnonymousClosure: (0x7c2574), in [ZVi] veb::<anonymous closure> (0x7c22a8)
    //     0x7c252c: ldr             x1, [x1, #0x9b8]
    // 0x7c2530: stur            x0, [fp, #-0x20]
    // 0x7c2534: r0 = AllocateClosure()
    //     0x7c2534: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7c2538: ldur            x16, [fp, #-0x28]
    // 0x7c253c: stp             x16, NULL, [SP, #0x28]
    // 0x7c2540: ldur            x16, [fp, #-0x10]
    // 0x7c2544: ldur            lr, [fp, #-0x20]
    // 0x7c2548: stp             lr, x16, [SP, #0x18]
    // 0x7c254c: ldur            x16, [fp, #-0x30]
    // 0x7c2550: stp             x16, x0, [SP, #8]
    // 0x7c2554: ldur            x16, [fp, #-0x18]
    // 0x7c2558: str             x16, [SP]
    // 0x7c255c: r4 = const [0x1, 0x6, 0x6, 0x6, null]
    //     0x7c255c: ldr             x4, [PP, #0x5480]  ; [pp+0x5480] List(5) [0x1, 0x6, 0x6, 0x6, Null]
    // 0x7c2560: r0 = call 0x402ab4
    //     0x7c2560: bl              #0x402ab4
    // 0x7c2564: r0 = Null
    //     0x7c2564: mov             x0, NULL
    // 0x7c2568: r0 = ReturnAsyncNotFuture()
    //     0x7c2568: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c256c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c256c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c2570: b               #0x7c22dc
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7c2574, size: 0x154
    // 0x7c2574: EnterFrame
    //     0x7c2574: stp             fp, lr, [SP, #-0x10]!
    //     0x7c2578: mov             fp, SP
    // 0x7c257c: AllocStack(0x28)
    //     0x7c257c: sub             SP, SP, #0x28
    // 0x7c2580: SetupParameters(veb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c2580: stur            NULL, [fp, #-8]
    //     0x7c2584: movz            x0, #0
    //     0x7c2588: add             x1, fp, w0, sxtw #2
    //     0x7c258c: ldr             x1, [x1, #0x18]
    //     0x7c2590: add             x2, fp, w0, sxtw #2
    //     0x7c2594: ldr             x2, [x2, #0x10]
    //     0x7c2598: stur            x2, [fp, #-0x18]
    //     0x7c259c: ldur            w3, [x1, #0x17]
    //     0x7c25a0: add             x3, x3, HEAP, lsl #32
    //     0x7c25a4: stur            x3, [fp, #-0x10]
    // 0x7c25a8: CheckStackOverflow
    //     0x7c25a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c25ac: cmp             SP, x16
    //     0x7c25b0: b.ls            #0x7c26c0
    // 0x7c25b4: InitAsync() -> Future<void?>
    //     0x7c25b4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c25b8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c25bc: r0 = call 0x44df3c
    //     0x7c25bc: bl              #0x44df3c
    // 0x7c25c0: ldur            x0, [fp, #-0x10]
    // 0x7c25c4: LoadField: r1 = r0->field_b
    //     0x7c25c4: ldur            w1, [x0, #0xb]
    // 0x7c25c8: DecompressPointer r1
    //     0x7c25c8: add             x1, x1, HEAP, lsl #32
    // 0x7c25cc: LoadField: r2 = r1->field_f
    //     0x7c25cc: ldur            w2, [x1, #0xf]
    // 0x7c25d0: DecompressPointer r2
    //     0x7c25d0: add             x2, x2, HEAP, lsl #32
    // 0x7c25d4: LoadField: r3 = r2->field_b
    //     0x7c25d4: ldur            w3, [x2, #0xb]
    // 0x7c25d8: DecompressPointer r3
    //     0x7c25d8: add             x3, x3, HEAP, lsl #32
    // 0x7c25dc: stur            x3, [fp, #-0x20]
    // 0x7c25e0: r1 = "9e5ffa4f"
    //     0x7c25e0: add             x1, PP, #0x24, lsl #12  ; [pp+0x249c0] "9e5ffa4f"
    //     0x7c25e4: ldr             x1, [x1, #0x9c0]
    // 0x7c25e8: r0 = call 0x64bd1c
    //     0x7c25e8: bl              #0x64bd1c
    // 0x7c25ec: ldur            x1, [fp, #-0x20]
    // 0x7c25f0: r2 = LoadClassIdInstr(r1)
    //     0x7c25f0: ldur            x2, [x1, #-1]
    //     0x7c25f4: ubfx            x2, x2, #0xc, #0x14
    // 0x7c25f8: mov             x16, x0
    // 0x7c25fc: mov             x0, x2
    // 0x7c2600: mov             x2, x16
    // 0x7c2604: mov             lr, x0
    // 0x7c2608: ldr             lr, [x21, lr, lsl #3]
    // 0x7c260c: blr             lr
    // 0x7c2610: mov             x3, x0
    // 0x7c2614: r2 = Null
    //     0x7c2614: mov             x2, NULL
    // 0x7c2618: r1 = Null
    //     0x7c2618: mov             x1, NULL
    // 0x7c261c: stur            x3, [fp, #-0x20]
    // 0x7c2620: branchIfSmi(r0, 0x7c2648)
    //     0x7c2620: tbz             w0, #0, #0x7c2648
    // 0x7c2624: r4 = LoadClassIdInstr(r0)
    //     0x7c2624: ldur            x4, [x0, #-1]
    //     0x7c2628: ubfx            x4, x4, #0xc, #0x14
    // 0x7c262c: sub             x4, x4, #0x3c
    // 0x7c2630: cmp             x4, #1
    // 0x7c2634: b.ls            #0x7c2648
    // 0x7c2638: r8 = int
    //     0x7c2638: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7c263c: r3 = Null
    //     0x7c263c: add             x3, PP, #0x24, lsl #12  ; [pp+0x249c8] Null
    //     0x7c2640: ldr             x3, [x3, #0x9c8]
    // 0x7c2644: r0 = int()
    //     0x7c2644: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7c2648: ldur            x0, [fp, #-0x10]
    // 0x7c264c: LoadField: r1 = r0->field_13
    //     0x7c264c: ldur            w1, [x0, #0x13]
    // 0x7c2650: DecompressPointer r1
    //     0x7c2650: add             x1, x1, HEAP, lsl #32
    // 0x7c2654: ldur            x2, [fp, #-0x20]
    // 0x7c2658: r3 = LoadInt32Instr(r2)
    //     0x7c2658: sbfx            x3, x2, #1, #0x1f
    //     0x7c265c: tbz             w2, #0, #0x7c2664
    //     0x7c2660: ldur            x3, [x2, #7]
    // 0x7c2664: mov             x2, x3
    // 0x7c2668: r0 = call 0x47d41c
    //     0x7c2668: bl              #0x47d41c
    // 0x7c266c: mov             x1, x0
    // 0x7c2670: stur            x1, [fp, #-0x20]
    // 0x7c2674: r0 = Await()
    //     0x7c2674: bl              #0x74ab64  ; AwaitStub
    // 0x7c2678: r1 = "b0ef694fcb89b78223775d12ff30"
    //     0x7c2678: add             x1, PP, #0x24, lsl #12  ; [pp+0x249d8] "b0ef694fcb89b78223775d12ff30"
    //     0x7c267c: ldr             x1, [x1, #0x9d8]
    // 0x7c2680: r0 = call 0x64bd1c
    //     0x7c2680: bl              #0x64bd1c
    // 0x7c2684: mov             x1, x0
    // 0x7c2688: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7c2688: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7c268c: r0 = call 0x3a5cc4
    //     0x7c268c: bl              #0x3a5cc4
    // 0x7c2690: ldur            x0, [fp, #-0x10]
    // 0x7c2694: LoadField: r1 = r0->field_f
    //     0x7c2694: ldur            w1, [x0, #0xf]
    // 0x7c2698: DecompressPointer r1
    //     0x7c2698: add             x1, x1, HEAP, lsl #32
    // 0x7c269c: r0 = __unknown_function__()
    //     0x7c269c: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c26a0: ldur            x16, [fp, #-0x18]
    // 0x7c26a4: str             x16, [SP]
    // 0x7c26a8: ldur            x0, [fp, #-0x18]
    // 0x7c26ac: ClosureCall
    //     0x7c26ac: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7c26b0: ldur            x2, [x0, #0x1f]
    //     0x7c26b4: blr             x2
    // 0x7c26b8: r0 = Null
    //     0x7c26b8: mov             x0, NULL
    // 0x7c26bc: r0 = ReturnAsyncNotFuture()
    //     0x7c26bc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c26c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c26c0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c26c4: b               #0x7c25b4
  }
}

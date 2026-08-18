// lib: , url: bWi

// class id: 1049999, size: 0x8
class :: {
}

// class id: 3952, size: 0x18, field offset: 0xc
//   const constructor, 
class web extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, Map<String, dynamic>) async {
    // ** addr: 0x7c26c8, size: 0x2fc
    // 0x7c26c8: EnterFrame
    //     0x7c26c8: stp             fp, lr, [SP, #-0x10]!
    //     0x7c26cc: mov             fp, SP
    // 0x7c26d0: AllocStack(0x60)
    //     0x7c26d0: sub             SP, SP, #0x60
    // 0x7c26d4: SetupParameters(web this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c26d4: stur            NULL, [fp, #-8]
    //     0x7c26d8: movz            x0, #0
    //     0x7c26dc: add             x1, fp, w0, sxtw #2
    //     0x7c26e0: ldr             x1, [x1, #0x18]
    //     0x7c26e4: add             x2, fp, w0, sxtw #2
    //     0x7c26e8: ldr             x2, [x2, #0x10]
    //     0x7c26ec: stur            x2, [fp, #-0x18]
    //     0x7c26f0: ldur            w3, [x1, #0x17]
    //     0x7c26f4: add             x3, x3, HEAP, lsl #32
    //     0x7c26f8: stur            x3, [fp, #-0x10]
    // 0x7c26fc: CheckStackOverflow
    //     0x7c26fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c2700: cmp             SP, x16
    //     0x7c2704: b.ls            #0x7c29bc
    // 0x7c2708: InitAsync() -> Future<void?>
    //     0x7c2708: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c270c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c2710: ldur            x0, [fp, #-0x10]
    // 0x7c2714: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c2714: ldur            w1, [x0, #0x17]
    // 0x7c2718: DecompressPointer r1
    //     0x7c2718: add             x1, x1, HEAP, lsl #32
    // 0x7c271c: stur            x1, [fp, #-0x20]
    // 0x7c2720: r0 = LoadStaticField(0x13a0)
    //     0x7c2720: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c2724: ldr             x0, [x0, #0x2740]
    // 0x7c2728: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c272c: cmp             w0, w16
    // 0x7c2730: b.ne            #0x7c2740
    // 0x7c2734: r2 = fsg
    //     0x7c2734: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7c2738: ldr             x2, [x2, #0x830]
    // 0x7c273c: r0 = InitLateFinalStaticField()
    //     0x7c273c: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c2740: r16 = <NZa>
    //     0x7c2740: add             x16, PP, #0x11, lsl #12  ; [pp+0x11838] TypeArguments: <NZa>
    //     0x7c2744: ldr             x16, [x16, #0x838]
    // 0x7c2748: ldur            lr, [fp, #-0x20]
    // 0x7c274c: stp             lr, x16, [SP, #8]
    // 0x7c2750: str             x0, [SP]
    // 0x7c2754: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c2754: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c2758: r0 = call 0x263414
    //     0x7c2758: bl              #0x263414
    // 0x7c275c: stur            x0, [fp, #-0x20]
    // 0x7c2760: LoadField: r1 = r0->field_b
    //     0x7c2760: ldur            w1, [x0, #0xb]
    // 0x7c2764: DecompressPointer r1
    //     0x7c2764: add             x1, x1, HEAP, lsl #32
    // 0x7c2768: tbz             w1, #4, #0x7c2774
    // 0x7c276c: r0 = Null
    //     0x7c276c: mov             x0, NULL
    // 0x7c2770: r0 = ReturnAsyncNotFuture()
    //     0x7c2770: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2774: ldur            x2, [fp, #-0x18]
    // 0x7c2778: r1 = "3039c255"
    //     0x7c2778: add             x1, PP, #0x20, lsl #12  ; [pp+0x20998] "3039c255"
    //     0x7c277c: ldr             x1, [x1, #0x998]
    // 0x7c2780: r0 = call 0x64cd64
    //     0x7c2780: bl              #0x64cd64
    // 0x7c2784: ldur            x3, [fp, #-0x18]
    // 0x7c2788: r1 = LoadClassIdInstr(r3)
    //     0x7c2788: ldur            x1, [x3, #-1]
    //     0x7c278c: ubfx            x1, x1, #0xc, #0x14
    // 0x7c2790: mov             x2, x0
    // 0x7c2794: mov             x0, x1
    // 0x7c2798: mov             x1, x3
    // 0x7c279c: mov             lr, x0
    // 0x7c27a0: ldr             lr, [x21, lr, lsl #3]
    // 0x7c27a4: blr             lr
    // 0x7c27a8: mov             x1, x0
    // 0x7c27ac: r0 = call 0x3b4da8
    //     0x7c27ac: bl              #0x3b4da8
    // 0x7c27b0: tbnz            w0, #4, #0x7c27bc
    // 0x7c27b4: r0 = Null
    //     0x7c27b4: mov             x0, NULL
    // 0x7c27b8: r0 = ReturnAsyncNotFuture()
    //     0x7c27b8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c27bc: ldur            x0, [fp, #-0x18]
    // 0x7c27c0: ldur            x1, [fp, #-0x20]
    // 0x7c27c4: LoadField: r2 = r1->field_f
    //     0x7c27c4: ldur            w2, [x1, #0xf]
    // 0x7c27c8: DecompressPointer r2
    //     0x7c27c8: add             x2, x2, HEAP, lsl #32
    // 0x7c27cc: stur            x2, [fp, #-0x28]
    // 0x7c27d0: r1 = "fb9232fda601eb0597"
    //     0x7c27d0: add             x1, PP, #0x20, lsl #12  ; [pp+0x209a0] "fb9232fda601eb0597"
    //     0x7c27d4: ldr             x1, [x1, #0x9a0]
    // 0x7c27d8: r0 = call 0x64cd64
    //     0x7c27d8: bl              #0x64cd64
    // 0x7c27dc: ldur            x1, [fp, #-0x28]
    // 0x7c27e0: r2 = LoadClassIdInstr(r1)
    //     0x7c27e0: ldur            x2, [x1, #-1]
    //     0x7c27e4: ubfx            x2, x2, #0xc, #0x14
    // 0x7c27e8: mov             x16, x0
    // 0x7c27ec: mov             x0, x2
    // 0x7c27f0: mov             x2, x16
    // 0x7c27f4: mov             lr, x0
    // 0x7c27f8: ldr             lr, [x21, lr, lsl #3]
    // 0x7c27fc: blr             lr
    // 0x7c2800: r1 = "2c01b540ced88730ee"
    //     0x7c2800: add             x1, PP, #0x20, lsl #12  ; [pp+0x209a8] "2c01b540ced88730ee"
    //     0x7c2804: ldr             x1, [x1, #0x9a8]
    // 0x7c2808: stur            x0, [fp, #-0x20]
    // 0x7c280c: r0 = call 0x64cd64
    //     0x7c280c: bl              #0x64cd64
    // 0x7c2810: ldur            x3, [fp, #-0x18]
    // 0x7c2814: r1 = LoadClassIdInstr(r3)
    //     0x7c2814: ldur            x1, [x3, #-1]
    //     0x7c2818: ubfx            x1, x1, #0xc, #0x14
    // 0x7c281c: mov             x2, x0
    // 0x7c2820: mov             x0, x1
    // 0x7c2824: mov             x1, x3
    // 0x7c2828: mov             lr, x0
    // 0x7c282c: ldr             lr, [x21, lr, lsl #3]
    // 0x7c2830: blr             lr
    // 0x7c2834: mov             x1, x0
    // 0x7c2838: ldur            x0, [fp, #-0x20]
    // 0x7c283c: r2 = 60
    //     0x7c283c: movz            x2, #0x3c
    // 0x7c2840: branchIfSmi(r0, 0x7c284c)
    //     0x7c2840: tbz             w0, #0, #0x7c284c
    // 0x7c2844: r2 = LoadClassIdInstr(r0)
    //     0x7c2844: ldur            x2, [x0, #-1]
    //     0x7c2848: ubfx            x2, x2, #0xc, #0x14
    // 0x7c284c: stp             x1, x0, [SP]
    // 0x7c2850: mov             x0, x2
    // 0x7c2854: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7c2854: movz            x17, #0x245b
    //     0x7c2858: add             lr, x0, x17
    //     0x7c285c: ldr             lr, [x21, lr, lsl #3]
    //     0x7c2860: blr             lr
    // 0x7c2864: tbnz            w0, #4, #0x7c2870
    // 0x7c2868: r0 = Null
    //     0x7c2868: mov             x0, NULL
    // 0x7c286c: r0 = ReturnAsyncNotFuture()
    //     0x7c286c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2870: ldur            x0, [fp, #-0x10]
    // 0x7c2874: LoadField: r2 = r0->field_1b
    //     0x7c2874: ldur            w2, [x0, #0x1b]
    // 0x7c2878: DecompressPointer r2
    //     0x7c2878: add             x2, x2, HEAP, lsl #32
    // 0x7c287c: mov             x1, x2
    // 0x7c2880: stur            x2, [fp, #-0x20]
    // 0x7c2884: r0 = __unknown_function__()
    //     0x7c2884: bl              #0x74cb58  ; [] ::__unknown_function__
    // 0x7c2888: ldur            x0, [fp, #-0x10]
    // 0x7c288c: LoadField: r1 = r0->field_f
    //     0x7c288c: ldur            w1, [x0, #0xf]
    // 0x7c2890: DecompressPointer r1
    //     0x7c2890: add             x1, x1, HEAP, lsl #32
    // 0x7c2894: LoadField: r2 = r1->field_13
    //     0x7c2894: ldur            w2, [x1, #0x13]
    // 0x7c2898: DecompressPointer r2
    //     0x7c2898: add             x2, x2, HEAP, lsl #32
    // 0x7c289c: tbnz            w2, #4, #0x7c28f0
    // 0x7c28a0: ldur            x1, [fp, #-0x18]
    // 0x7c28a4: r0 = Dbb()
    //     0x7c28a4: bl              #0x7c29d0  ; AllocateDbbStub -> Dbb (size=0x10)
    // 0x7c28a8: mov             x2, x0
    // 0x7c28ac: ldur            x0, [fp, #-0x18]
    // 0x7c28b0: stur            x2, [fp, #-0x28]
    // 0x7c28b4: StoreField: r2->field_b = r0
    //     0x7c28b4: stur            w0, [x2, #0xb]
    // 0x7c28b8: r1 = 656
    //     0x7c28b8: movz            x1, #0x290
    // 0x7c28bc: r0 = call 0x3010e4
    //     0x7c28bc: bl              #0x3010e4
    // 0x7c28c0: ldur            x16, [fp, #-0x28]
    // 0x7c28c4: stp             x16, NULL, [SP, #8]
    // 0x7c28c8: str             d0, [SP]
    // 0x7c28cc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c28cc: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c28d0: r0 = call 0x49de10
    //     0x7c28d0: bl              #0x49de10
    // 0x7c28d4: mov             x1, x0
    // 0x7c28d8: stur            x1, [fp, #-0x28]
    // 0x7c28dc: r0 = Await()
    //     0x7c28dc: bl              #0x74ab64  ; AwaitStub
    // 0x7c28e0: ldur            x1, [fp, #-0x20]
    // 0x7c28e4: r0 = __unknown_function__()
    //     0x7c28e4: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c28e8: r0 = Null
    //     0x7c28e8: mov             x0, NULL
    // 0x7c28ec: r0 = ReturnAsyncNotFuture()
    //     0x7c28ec: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c28f0: mov             x2, x0
    // 0x7c28f4: ldur            x0, [fp, #-0x18]
    // 0x7c28f8: LoadField: r3 = r2->field_13
    //     0x7c28f8: ldur            w3, [x2, #0x13]
    // 0x7c28fc: DecompressPointer r3
    //     0x7c28fc: add             x3, x3, HEAP, lsl #32
    // 0x7c2900: mov             x1, x3
    // 0x7c2904: stur            x3, [fp, #-0x28]
    // 0x7c2908: r0 = call 0x3982e4
    //     0x7c2908: bl              #0x3982e4
    // 0x7c290c: LoadField: r1 = r0->field_f
    //     0x7c290c: ldur            w1, [x0, #0xf]
    // 0x7c2910: DecompressPointer r1
    //     0x7c2910: add             x1, x1, HEAP, lsl #32
    // 0x7c2914: ldur            x0, [fp, #-0x10]
    // 0x7c2918: stur            x1, [fp, #-0x38]
    // 0x7c291c: LoadField: r2 = r0->field_f
    //     0x7c291c: ldur            w2, [x0, #0xf]
    // 0x7c2920: DecompressPointer r2
    //     0x7c2920: add             x2, x2, HEAP, lsl #32
    // 0x7c2924: LoadField: r3 = r2->field_b
    //     0x7c2924: ldur            x3, [x2, #0xb]
    // 0x7c2928: stur            x3, [fp, #-0x30]
    // 0x7c292c: r0 = veb()
    //     0x7c292c: bl              #0x7c29c4  ; AllocatevebStub -> veb (size=0x18)
    // 0x7c2930: mov             x1, x0
    // 0x7c2934: ldur            x0, [fp, #-0x18]
    // 0x7c2938: StoreField: r1->field_b = r0
    //     0x7c2938: stur            w0, [x1, #0xb]
    // 0x7c293c: ldur            x0, [fp, #-0x30]
    // 0x7c2940: StoreField: r1->field_f = r0
    //     0x7c2940: stur            x0, [x1, #0xf]
    // 0x7c2944: stp             x1, NULL, [SP, #0x18]
    // 0x7c2948: ldur            x16, [fp, #-0x28]
    // 0x7c294c: r30 = false
    //     0x7c294c: add             lr, NULL, #0x30  ; false
    // 0x7c2950: stp             lr, x16, [SP, #8]
    // 0x7c2954: ldur            x16, [fp, #-0x38]
    // 0x7c2958: str             x16, [SP]
    // 0x7c295c: r4 = const [0x1, 0x4, 0x4, 0x2, Jic, 0x3, jnf, 0x2, null]
    //     0x7c295c: add             x4, PP, #0x20, lsl #12  ; [pp+0x209b0] List(9) [0x1, 0x4, 0x4, 0x2, "Jic", 0x3, "jnf", 0x2, Null]
    //     0x7c2960: ldr             x4, [x4, #0x9b0]
    // 0x7c2964: r0 = call 0x45aa54
    //     0x7c2964: bl              #0x45aa54
    // 0x7c2968: mov             x1, x0
    // 0x7c296c: stur            x1, [fp, #-0x18]
    // 0x7c2970: r0 = Await()
    //     0x7c2970: bl              #0x74ab64  ; AwaitStub
    // 0x7c2974: r1 = 60
    //     0x7c2974: movz            x1, #0x3c
    // 0x7c2978: branchIfSmi(r0, 0x7c2984)
    //     0x7c2978: tbz             w0, #0, #0x7c2984
    // 0x7c297c: r1 = LoadClassIdInstr(r0)
    //     0x7c297c: ldur            x1, [x0, #-1]
    //     0x7c2980: ubfx            x1, x1, #0xc, #0x14
    // 0x7c2984: r16 = true
    //     0x7c2984: add             x16, NULL, #0x20  ; true
    // 0x7c2988: stp             x16, x0, [SP]
    // 0x7c298c: mov             x0, x1
    // 0x7c2990: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7c2990: movz            x17, #0x245b
    //     0x7c2994: add             lr, x0, x17
    //     0x7c2998: ldr             lr, [x21, lr, lsl #3]
    //     0x7c299c: blr             lr
    // 0x7c29a0: tbnz            w0, #4, #0x7c29ac
    // 0x7c29a4: r0 = Null
    //     0x7c29a4: mov             x0, NULL
    // 0x7c29a8: r0 = ReturnAsyncNotFuture()
    //     0x7c29a8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c29ac: ldur            x1, [fp, #-0x20]
    // 0x7c29b0: r0 = __unknown_function__()
    //     0x7c29b0: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c29b4: r0 = Null
    //     0x7c29b4: mov             x0, NULL
    // 0x7c29b8: r0 = ReturnAsyncNotFuture()
    //     0x7c29b8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c29bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c29bc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c29c0: b               #0x7c2708
  }
}

// lib: , url: yVi

// class id: 1049969, size: 0x8
class :: {
}

// class id: 3964, size: 0x18, field offset: 0xc
//   const constructor, 
class web extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, Map<String, dynamic>) async {
    // ** addr: 0x7c1760, size: 0x33c
    // 0x7c1760: EnterFrame
    //     0x7c1760: stp             fp, lr, [SP, #-0x10]!
    //     0x7c1764: mov             fp, SP
    // 0x7c1768: AllocStack(0x70)
    //     0x7c1768: sub             SP, SP, #0x70
    // 0x7c176c: SetupParameters(web this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c176c: stur            NULL, [fp, #-8]
    //     0x7c1770: movz            x0, #0
    //     0x7c1774: add             x1, fp, w0, sxtw #2
    //     0x7c1778: ldr             x1, [x1, #0x18]
    //     0x7c177c: add             x2, fp, w0, sxtw #2
    //     0x7c1780: ldr             x2, [x2, #0x10]
    //     0x7c1784: stur            x2, [fp, #-0x18]
    //     0x7c1788: ldur            w3, [x1, #0x17]
    //     0x7c178c: add             x3, x3, HEAP, lsl #32
    //     0x7c1790: stur            x3, [fp, #-0x10]
    // 0x7c1794: CheckStackOverflow
    //     0x7c1794: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c1798: cmp             SP, x16
    //     0x7c179c: b.ls            #0x7c1a94
    // 0x7c17a0: InitAsync() -> Future<void?>
    //     0x7c17a0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c17a4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c17a8: ldur            x0, [fp, #-0x10]
    // 0x7c17ac: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c17ac: ldur            w1, [x0, #0x17]
    // 0x7c17b0: DecompressPointer r1
    //     0x7c17b0: add             x1, x1, HEAP, lsl #32
    // 0x7c17b4: stur            x1, [fp, #-0x20]
    // 0x7c17b8: r0 = LoadStaticField(0x13a0)
    //     0x7c17b8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c17bc: ldr             x0, [x0, #0x2740]
    // 0x7c17c0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c17c4: cmp             w0, w16
    // 0x7c17c8: b.ne            #0x7c17d8
    // 0x7c17cc: r2 = fsg
    //     0x7c17cc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7c17d0: ldr             x2, [x2, #0x830]
    // 0x7c17d4: r0 = InitLateFinalStaticField()
    //     0x7c17d4: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c17d8: r16 = <NZa>
    //     0x7c17d8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11838] TypeArguments: <NZa>
    //     0x7c17dc: ldr             x16, [x16, #0x838]
    // 0x7c17e0: ldur            lr, [fp, #-0x20]
    // 0x7c17e4: stp             lr, x16, [SP, #8]
    // 0x7c17e8: str             x0, [SP]
    // 0x7c17ec: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c17ec: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c17f0: r0 = call 0x263414
    //     0x7c17f0: bl              #0x263414
    // 0x7c17f4: stur            x0, [fp, #-0x20]
    // 0x7c17f8: LoadField: r1 = r0->field_b
    //     0x7c17f8: ldur            w1, [x0, #0xb]
    // 0x7c17fc: DecompressPointer r1
    //     0x7c17fc: add             x1, x1, HEAP, lsl #32
    // 0x7c1800: tbz             w1, #4, #0x7c180c
    // 0x7c1804: r0 = Null
    //     0x7c1804: mov             x0, NULL
    // 0x7c1808: r0 = ReturnAsyncNotFuture()
    //     0x7c1808: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c180c: ldur            x2, [fp, #-0x18]
    // 0x7c1810: r1 = "e9ffc281"
    //     0x7c1810: add             x1, PP, #0x21, lsl #12  ; [pp+0x21310] "e9ffc281"
    //     0x7c1814: ldr             x1, [x1, #0x310]
    // 0x7c1818: r0 = call 0x641740
    //     0x7c1818: bl              #0x641740
    // 0x7c181c: ldur            x3, [fp, #-0x18]
    // 0x7c1820: r1 = LoadClassIdInstr(r3)
    //     0x7c1820: ldur            x1, [x3, #-1]
    //     0x7c1824: ubfx            x1, x1, #0xc, #0x14
    // 0x7c1828: mov             x2, x0
    // 0x7c182c: mov             x0, x1
    // 0x7c1830: mov             x1, x3
    // 0x7c1834: mov             lr, x0
    // 0x7c1838: ldr             lr, [x21, lr, lsl #3]
    // 0x7c183c: blr             lr
    // 0x7c1840: mov             x1, x0
    // 0x7c1844: r0 = call 0x3b4da8
    //     0x7c1844: bl              #0x3b4da8
    // 0x7c1848: tbnz            w0, #4, #0x7c1854
    // 0x7c184c: r0 = Null
    //     0x7c184c: mov             x0, NULL
    // 0x7c1850: r0 = ReturnAsyncNotFuture()
    //     0x7c1850: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1854: ldur            x0, [fp, #-0x18]
    // 0x7c1858: ldur            x1, [fp, #-0x20]
    // 0x7c185c: LoadField: r2 = r1->field_f
    //     0x7c185c: ldur            w2, [x1, #0xf]
    // 0x7c1860: DecompressPointer r2
    //     0x7c1860: add             x2, x2, HEAP, lsl #32
    // 0x7c1864: stur            x2, [fp, #-0x28]
    // 0x7c1868: r1 = "f219203c3028d82414"
    //     0x7c1868: add             x1, PP, #0x21, lsl #12  ; [pp+0x21318] "f219203c3028d82414"
    //     0x7c186c: ldr             x1, [x1, #0x318]
    // 0x7c1870: r0 = call 0x641740
    //     0x7c1870: bl              #0x641740
    // 0x7c1874: ldur            x1, [fp, #-0x28]
    // 0x7c1878: r2 = LoadClassIdInstr(r1)
    //     0x7c1878: ldur            x2, [x1, #-1]
    //     0x7c187c: ubfx            x2, x2, #0xc, #0x14
    // 0x7c1880: mov             x16, x0
    // 0x7c1884: mov             x0, x2
    // 0x7c1888: mov             x2, x16
    // 0x7c188c: mov             lr, x0
    // 0x7c1890: ldr             lr, [x21, lr, lsl #3]
    // 0x7c1894: blr             lr
    // 0x7c1898: r1 = "369d67372b37683aeb"
    //     0x7c1898: add             x1, PP, #0x21, lsl #12  ; [pp+0x21320] "369d67372b37683aeb"
    //     0x7c189c: ldr             x1, [x1, #0x320]
    // 0x7c18a0: stur            x0, [fp, #-0x20]
    // 0x7c18a4: r0 = call 0x641740
    //     0x7c18a4: bl              #0x641740
    // 0x7c18a8: ldur            x3, [fp, #-0x18]
    // 0x7c18ac: r1 = LoadClassIdInstr(r3)
    //     0x7c18ac: ldur            x1, [x3, #-1]
    //     0x7c18b0: ubfx            x1, x1, #0xc, #0x14
    // 0x7c18b4: mov             x2, x0
    // 0x7c18b8: mov             x0, x1
    // 0x7c18bc: mov             x1, x3
    // 0x7c18c0: mov             lr, x0
    // 0x7c18c4: ldr             lr, [x21, lr, lsl #3]
    // 0x7c18c8: blr             lr
    // 0x7c18cc: mov             x1, x0
    // 0x7c18d0: ldur            x0, [fp, #-0x20]
    // 0x7c18d4: r2 = 60
    //     0x7c18d4: movz            x2, #0x3c
    // 0x7c18d8: branchIfSmi(r0, 0x7c18e4)
    //     0x7c18d8: tbz             w0, #0, #0x7c18e4
    // 0x7c18dc: r2 = LoadClassIdInstr(r0)
    //     0x7c18dc: ldur            x2, [x0, #-1]
    //     0x7c18e0: ubfx            x2, x2, #0xc, #0x14
    // 0x7c18e4: stp             x1, x0, [SP]
    // 0x7c18e8: mov             x0, x2
    // 0x7c18ec: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7c18ec: movz            x17, #0x245b
    //     0x7c18f0: add             lr, x0, x17
    //     0x7c18f4: ldr             lr, [x21, lr, lsl #3]
    //     0x7c18f8: blr             lr
    // 0x7c18fc: tbnz            w0, #4, #0x7c1908
    // 0x7c1900: r0 = Null
    //     0x7c1900: mov             x0, NULL
    // 0x7c1904: r0 = ReturnAsyncNotFuture()
    //     0x7c1904: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1908: ldur            x0, [fp, #-0x10]
    // 0x7c190c: LoadField: r2 = r0->field_1b
    //     0x7c190c: ldur            w2, [x0, #0x1b]
    // 0x7c1910: DecompressPointer r2
    //     0x7c1910: add             x2, x2, HEAP, lsl #32
    // 0x7c1914: mov             x1, x2
    // 0x7c1918: stur            x2, [fp, #-0x20]
    // 0x7c191c: r0 = __unknown_function__()
    //     0x7c191c: bl              #0x74cb58  ; [] ::__unknown_function__
    // 0x7c1920: ldur            x0, [fp, #-0x10]
    // 0x7c1924: LoadField: r1 = r0->field_f
    //     0x7c1924: ldur            w1, [x0, #0xf]
    // 0x7c1928: DecompressPointer r1
    //     0x7c1928: add             x1, x1, HEAP, lsl #32
    // 0x7c192c: LoadField: r2 = r1->field_13
    //     0x7c192c: ldur            w2, [x1, #0x13]
    // 0x7c1930: DecompressPointer r2
    //     0x7c1930: add             x2, x2, HEAP, lsl #32
    // 0x7c1934: tbnz            w2, #4, #0x7c19c8
    // 0x7c1938: ldur            x2, [fp, #-0x18]
    // 0x7c193c: LoadField: r3 = r0->field_13
    //     0x7c193c: ldur            w3, [x0, #0x13]
    // 0x7c1940: DecompressPointer r3
    //     0x7c1940: add             x3, x3, HEAP, lsl #32
    // 0x7c1944: stur            x3, [fp, #-0x28]
    // 0x7c1948: r16 = 0.900000
    //     0x7c1948: add             x16, PP, #0x20, lsl #12  ; [pp+0x209f0] 0.9
    //     0x7c194c: ldr             x16, [x16, #0x9f0]
    // 0x7c1950: str             x16, [SP]
    // 0x7c1954: r1 = Instance_tu
    //     0x7c1954: add             x1, PP, #0xe, lsl #12  ; [pp+0xe6e8] Obj!tu@444d11
    //     0x7c1958: ldr             x1, [x1, #0x6e8]
    // 0x7c195c: r4 = const [0, 0x2, 0x1, 0x1, svc, 0x1, null]
    //     0x7c195c: add             x4, PP, #0x17, lsl #12  ; [pp+0x17b90] List(7) [0, 0x2, 0x1, 0x1, "svc", 0x1, Null]
    //     0x7c1960: ldr             x4, [x4, #0xb90]
    // 0x7c1964: r0 = call 0x6ccef8
    //     0x7c1964: bl              #0x6ccef8
    // 0x7c1968: stur            x0, [fp, #-0x30]
    // 0x7c196c: r0 = oeb()
    //     0x7c196c: bl              #0x7c1aa8  ; AllocateoebStub -> oeb (size=0x10)
    // 0x7c1970: mov             x1, x0
    // 0x7c1974: ldur            x0, [fp, #-0x18]
    // 0x7c1978: StoreField: r1->field_b = r0
    //     0x7c1978: stur            w0, [x1, #0xb]
    // 0x7c197c: stp             x1, NULL, [SP, #0x28]
    // 0x7c1980: ldur            x16, [fp, #-0x28]
    // 0x7c1984: r30 = false
    //     0x7c1984: add             lr, NULL, #0x30  ; false
    // 0x7c1988: stp             lr, x16, [SP, #0x18]
    // 0x7c198c: r16 = Instance_tu
    //     0x7c198c: ldr             x16, [PP, #0x6a40]  ; [pp+0x6a40] Obj!tu@445ca1
    // 0x7c1990: r30 = false
    //     0x7c1990: add             lr, NULL, #0x30  ; false
    // 0x7c1994: stp             lr, x16, [SP, #8]
    // 0x7c1998: ldur            x16, [fp, #-0x30]
    // 0x7c199c: str             x16, [SP]
    // 0x7c19a0: r4 = const [0x1, 0x6, 0x6, 0x2, Bbc, 0x3, Jic, 0x5, jnf, 0x4, nlg, 0x2, null]
    //     0x7c19a0: add             x4, PP, #0x21, lsl #12  ; [pp+0x21328] List(13) [0x1, 0x6, 0x6, 0x2, "Bbc", 0x3, "Jic", 0x5, "jnf", 0x4, "nlg", 0x2, Null]
    //     0x7c19a4: ldr             x4, [x4, #0x328]
    // 0x7c19a8: r0 = call 0x45aa54
    //     0x7c19a8: bl              #0x45aa54
    // 0x7c19ac: mov             x1, x0
    // 0x7c19b0: stur            x1, [fp, #-0x28]
    // 0x7c19b4: r0 = Await()
    //     0x7c19b4: bl              #0x74ab64  ; AwaitStub
    // 0x7c19b8: ldur            x1, [fp, #-0x20]
    // 0x7c19bc: r0 = __unknown_function__()
    //     0x7c19bc: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c19c0: r0 = Null
    //     0x7c19c0: mov             x0, NULL
    // 0x7c19c4: r0 = ReturnAsyncNotFuture()
    //     0x7c19c4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c19c8: mov             x2, x0
    // 0x7c19cc: ldur            x0, [fp, #-0x18]
    // 0x7c19d0: LoadField: r3 = r2->field_13
    //     0x7c19d0: ldur            w3, [x2, #0x13]
    // 0x7c19d4: DecompressPointer r3
    //     0x7c19d4: add             x3, x3, HEAP, lsl #32
    // 0x7c19d8: mov             x1, x3
    // 0x7c19dc: stur            x3, [fp, #-0x28]
    // 0x7c19e0: r0 = call 0x3982e4
    //     0x7c19e0: bl              #0x3982e4
    // 0x7c19e4: LoadField: r1 = r0->field_f
    //     0x7c19e4: ldur            w1, [x0, #0xf]
    // 0x7c19e8: DecompressPointer r1
    //     0x7c19e8: add             x1, x1, HEAP, lsl #32
    // 0x7c19ec: ldur            x0, [fp, #-0x10]
    // 0x7c19f0: stur            x1, [fp, #-0x30]
    // 0x7c19f4: LoadField: r2 = r0->field_f
    //     0x7c19f4: ldur            w2, [x0, #0xf]
    // 0x7c19f8: DecompressPointer r2
    //     0x7c19f8: add             x2, x2, HEAP, lsl #32
    // 0x7c19fc: LoadField: r3 = r2->field_b
    //     0x7c19fc: ldur            x3, [x2, #0xb]
    // 0x7c1a00: stur            x3, [fp, #-0x38]
    // 0x7c1a04: r0 = veb()
    //     0x7c1a04: bl              #0x7c1a9c  ; AllocatevebStub -> veb (size=0x18)
    // 0x7c1a08: mov             x1, x0
    // 0x7c1a0c: ldur            x0, [fp, #-0x18]
    // 0x7c1a10: StoreField: r1->field_b = r0
    //     0x7c1a10: stur            w0, [x1, #0xb]
    // 0x7c1a14: ldur            x0, [fp, #-0x38]
    // 0x7c1a18: StoreField: r1->field_f = r0
    //     0x7c1a18: stur            x0, [x1, #0xf]
    // 0x7c1a1c: stp             x1, NULL, [SP, #0x18]
    // 0x7c1a20: ldur            x16, [fp, #-0x28]
    // 0x7c1a24: r30 = false
    //     0x7c1a24: add             lr, NULL, #0x30  ; false
    // 0x7c1a28: stp             lr, x16, [SP, #8]
    // 0x7c1a2c: ldur            x16, [fp, #-0x30]
    // 0x7c1a30: str             x16, [SP]
    // 0x7c1a34: r4 = const [0x1, 0x4, 0x4, 0x2, Jic, 0x3, jnf, 0x2, null]
    //     0x7c1a34: add             x4, PP, #0x20, lsl #12  ; [pp+0x209b0] List(9) [0x1, 0x4, 0x4, 0x2, "Jic", 0x3, "jnf", 0x2, Null]
    //     0x7c1a38: ldr             x4, [x4, #0x9b0]
    // 0x7c1a3c: r0 = call 0x45aa54
    //     0x7c1a3c: bl              #0x45aa54
    // 0x7c1a40: mov             x1, x0
    // 0x7c1a44: stur            x1, [fp, #-0x18]
    // 0x7c1a48: r0 = Await()
    //     0x7c1a48: bl              #0x74ab64  ; AwaitStub
    // 0x7c1a4c: r1 = 60
    //     0x7c1a4c: movz            x1, #0x3c
    // 0x7c1a50: branchIfSmi(r0, 0x7c1a5c)
    //     0x7c1a50: tbz             w0, #0, #0x7c1a5c
    // 0x7c1a54: r1 = LoadClassIdInstr(r0)
    //     0x7c1a54: ldur            x1, [x0, #-1]
    //     0x7c1a58: ubfx            x1, x1, #0xc, #0x14
    // 0x7c1a5c: r16 = true
    //     0x7c1a5c: add             x16, NULL, #0x20  ; true
    // 0x7c1a60: stp             x16, x0, [SP]
    // 0x7c1a64: mov             x0, x1
    // 0x7c1a68: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7c1a68: movz            x17, #0x245b
    //     0x7c1a6c: add             lr, x0, x17
    //     0x7c1a70: ldr             lr, [x21, lr, lsl #3]
    //     0x7c1a74: blr             lr
    // 0x7c1a78: tbnz            w0, #4, #0x7c1a84
    // 0x7c1a7c: r0 = Null
    //     0x7c1a7c: mov             x0, NULL
    // 0x7c1a80: r0 = ReturnAsyncNotFuture()
    //     0x7c1a80: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1a84: ldur            x1, [fp, #-0x20]
    // 0x7c1a88: r0 = __unknown_function__()
    //     0x7c1a88: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c1a8c: r0 = Null
    //     0x7c1a8c: mov             x0, NULL
    // 0x7c1a90: r0 = ReturnAsyncNotFuture()
    //     0x7c1a90: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1a94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c1a94: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c1a98: b               #0x7c17a0
  }
}

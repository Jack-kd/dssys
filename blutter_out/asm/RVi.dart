// lib: , url: RVi

// class id: 1049989, size: 0x8
class :: {
}

// class id: 3958, size: 0x14, field offset: 0xc
//   const constructor, 
class teb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c1f64, size: 0x23c
    // 0x7c1f64: EnterFrame
    //     0x7c1f64: stp             fp, lr, [SP, #-0x10]!
    //     0x7c1f68: mov             fp, SP
    // 0x7c1f6c: AllocStack(0x50)
    //     0x7c1f6c: sub             SP, SP, #0x50
    // 0x7c1f70: SetupParameters(teb this /* r1 */)
    //     0x7c1f70: stur            NULL, [fp, #-8]
    //     0x7c1f74: movz            x0, #0
    //     0x7c1f78: add             x1, fp, w0, sxtw #2
    //     0x7c1f7c: ldr             x1, [x1, #0x10]
    //     0x7c1f80: ldur            w2, [x1, #0x17]
    //     0x7c1f84: add             x2, x2, HEAP, lsl #32
    //     0x7c1f88: stur            x2, [fp, #-0x10]
    // 0x7c1f8c: CheckStackOverflow
    //     0x7c1f8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c1f90: cmp             SP, x16
    //     0x7c1f94: b.ls            #0x7c2198
    // 0x7c1f98: InitAsync() -> Future<void?>
    //     0x7c1f98: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c1f9c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c1fa0: ldur            x0, [fp, #-0x10]
    // 0x7c1fa4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c1fa4: ldur            w1, [x0, #0x17]
    // 0x7c1fa8: DecompressPointer r1
    //     0x7c1fa8: add             x1, x1, HEAP, lsl #32
    // 0x7c1fac: stur            x1, [fp, #-0x18]
    // 0x7c1fb0: r0 = LoadStaticField(0x14ec)
    //     0x7c1fb0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c1fb4: ldr             x0, [x0, #0x29d8]
    // 0x7c1fb8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c1fbc: cmp             w0, w16
    // 0x7c1fc0: b.ne            #0x7c1fd0
    // 0x7c1fc4: r2 = gFg
    //     0x7c1fc4: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e680] Field <::.gFg>: static late final (offset: 0x14ec)
    //     0x7c1fc8: ldr             x2, [x2, #0x680]
    // 0x7c1fcc: r0 = InitLateFinalStaticField()
    //     0x7c1fcc: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c1fd0: mov             x2, x0
    // 0x7c1fd4: ldur            x3, [fp, #-0x10]
    // 0x7c1fd8: LoadField: r0 = r3->field_f
    //     0x7c1fd8: ldur            w0, [x3, #0xf]
    // 0x7c1fdc: DecompressPointer r0
    //     0x7c1fdc: add             x0, x0, HEAP, lsl #32
    // 0x7c1fe0: LoadField: r4 = r0->field_b
    //     0x7c1fe0: ldur            x4, [x0, #0xb]
    // 0x7c1fe4: r0 = BoxInt64Instr(r4)
    //     0x7c1fe4: sbfiz           x0, x4, #1, #0x1f
    //     0x7c1fe8: cmp             x4, x0, asr #1
    //     0x7c1fec: b.eq            #0x7c1ff8
    //     0x7c1ff0: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c1ff4: stur            x4, [x0, #7]
    // 0x7c1ff8: mov             x1, x2
    // 0x7c1ffc: mov             x2, x0
    // 0x7c2000: r0 = call 0x26370c
    //     0x7c2000: bl              #0x26370c
    // 0x7c2004: mov             x1, x0
    // 0x7c2008: r0 = call 0x263610
    //     0x7c2008: bl              #0x263610
    // 0x7c200c: r16 = <Ieb>
    //     0x7c200c: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e688] TypeArguments: <Ieb>
    //     0x7c2010: ldr             x16, [x16, #0x688]
    // 0x7c2014: ldur            lr, [fp, #-0x18]
    // 0x7c2018: stp             lr, x16, [SP, #8]
    // 0x7c201c: str             x0, [SP]
    // 0x7c2020: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c2020: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c2024: r0 = call 0x263414
    //     0x7c2024: bl              #0x263414
    // 0x7c2028: mov             x1, x0
    // 0x7c202c: stur            x0, [fp, #-0x18]
    // 0x7c2030: r0 = __unknown_function__()
    //     0x7c2030: bl              #0x74cb58  ; [] ::__unknown_function__
    // 0x7c2034: ldur            x0, [fp, #-0x10]
    // 0x7c2038: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c2038: ldur            w1, [x0, #0x17]
    // 0x7c203c: DecompressPointer r1
    //     0x7c203c: add             x1, x1, HEAP, lsl #32
    // 0x7c2040: stur            x1, [fp, #-0x20]
    // 0x7c2044: r0 = LoadStaticField(0x13a0)
    //     0x7c2044: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c2048: ldr             x0, [x0, #0x2740]
    // 0x7c204c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c2050: cmp             w0, w16
    // 0x7c2054: b.ne            #0x7c2064
    // 0x7c2058: r2 = fsg
    //     0x7c2058: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7c205c: ldr             x2, [x2, #0x830]
    // 0x7c2060: r0 = InitLateFinalStaticField()
    //     0x7c2060: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c2064: r16 = <NZa>
    //     0x7c2064: add             x16, PP, #0x11, lsl #12  ; [pp+0x11838] TypeArguments: <NZa>
    //     0x7c2068: ldr             x16, [x16, #0x838]
    // 0x7c206c: ldur            lr, [fp, #-0x20]
    // 0x7c2070: stp             lr, x16, [SP, #8]
    // 0x7c2074: str             x0, [SP]
    // 0x7c2078: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c2078: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c207c: r0 = call 0x263414
    //     0x7c207c: bl              #0x263414
    // 0x7c2080: LoadField: r1 = r0->field_b
    //     0x7c2080: ldur            w1, [x0, #0xb]
    // 0x7c2084: DecompressPointer r1
    //     0x7c2084: add             x1, x1, HEAP, lsl #32
    // 0x7c2088: tbz             w1, #4, #0x7c2124
    // 0x7c208c: ldur            x0, [fp, #-0x10]
    // 0x7c2090: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c2090: ldur            w1, [x0, #0x17]
    // 0x7c2094: DecompressPointer r1
    //     0x7c2094: add             x1, x1, HEAP, lsl #32
    // 0x7c2098: stur            x1, [fp, #-0x20]
    // 0x7c209c: r0 = LoadStaticField(0x14e8)
    //     0x7c209c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c20a0: ldr             x0, [x0, #0x29d0]
    // 0x7c20a4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c20a8: cmp             w0, w16
    // 0x7c20ac: b.ne            #0x7c20bc
    // 0x7c20b0: r2 = eFg
    //     0x7c20b0: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e468] Field <::.eFg>: static late final (offset: 0x14e8)
    //     0x7c20b4: ldr             x2, [x2, #0x468]
    // 0x7c20b8: r0 = InitLateFinalStaticField()
    //     0x7c20b8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c20bc: mov             x2, x0
    // 0x7c20c0: ldur            x0, [fp, #-0x10]
    // 0x7c20c4: LoadField: r1 = r0->field_f
    //     0x7c20c4: ldur            w1, [x0, #0xf]
    // 0x7c20c8: DecompressPointer r1
    //     0x7c20c8: add             x1, x1, HEAP, lsl #32
    // 0x7c20cc: LoadField: r3 = r1->field_b
    //     0x7c20cc: ldur            x3, [x1, #0xb]
    // 0x7c20d0: r0 = BoxInt64Instr(r3)
    //     0x7c20d0: sbfiz           x0, x3, #1, #0x1f
    //     0x7c20d4: cmp             x3, x0, asr #1
    //     0x7c20d8: b.eq            #0x7c20e4
    //     0x7c20dc: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c20e0: stur            x3, [x0, #7]
    // 0x7c20e4: mov             x1, x2
    // 0x7c20e8: mov             x2, x0
    // 0x7c20ec: r0 = call 0x26370c
    //     0x7c20ec: bl              #0x26370c
    // 0x7c20f0: mov             x1, x0
    // 0x7c20f4: r0 = call 0x263610
    //     0x7c20f4: bl              #0x263610
    // 0x7c20f8: r16 = <Ceb>
    //     0x7c20f8: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e4f8] TypeArguments: <Ceb>
    //     0x7c20fc: ldr             x16, [x16, #0x4f8]
    // 0x7c2100: ldur            lr, [fp, #-0x20]
    // 0x7c2104: stp             lr, x16, [SP, #8]
    // 0x7c2108: str             x0, [SP]
    // 0x7c210c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c210c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c2110: r0 = call 0x263414
    //     0x7c2110: bl              #0x263414
    // 0x7c2114: mov             x1, x0
    // 0x7c2118: r0 = call 0x649230
    //     0x7c2118: bl              #0x649230
    // 0x7c211c: r0 = Null
    //     0x7c211c: mov             x0, NULL
    // 0x7c2120: r0 = ReturnAsyncNotFuture()
    //     0x7c2120: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2124: ldur            x0, [fp, #-0x10]
    // 0x7c2128: LoadField: r1 = r0->field_13
    //     0x7c2128: ldur            w1, [x0, #0x13]
    // 0x7c212c: DecompressPointer r1
    //     0x7c212c: add             x1, x1, HEAP, lsl #32
    // 0x7c2130: stur            x1, [fp, #-0x20]
    // 0x7c2134: LoadField: r2 = r0->field_f
    //     0x7c2134: ldur            w2, [x0, #0xf]
    // 0x7c2138: DecompressPointer r2
    //     0x7c2138: add             x2, x2, HEAP, lsl #32
    // 0x7c213c: LoadField: r3 = r2->field_b
    //     0x7c213c: ldur            x3, [x2, #0xb]
    // 0x7c2140: stur            x3, [fp, #-0x28]
    // 0x7c2144: r0 = feb()
    //     0x7c2144: bl              #0x7c21a0  ; AllocatefebStub -> feb (size=0x14)
    // 0x7c2148: mov             x1, x0
    // 0x7c214c: ldur            x0, [fp, #-0x28]
    // 0x7c2150: StoreField: r1->field_b = r0
    //     0x7c2150: stur            x0, [x1, #0xb]
    // 0x7c2154: stp             x1, NULL, [SP, #0x18]
    // 0x7c2158: ldur            x16, [fp, #-0x20]
    // 0x7c215c: r30 = Instance_tu
    //     0x7c215c: add             lr, PP, #0xe, lsl #12  ; [pp+0xe6e8] Obj!tu@444d11
    //     0x7c2160: ldr             lr, [lr, #0x6e8]
    // 0x7c2164: stp             lr, x16, [SP, #8]
    // 0x7c2168: r16 = false
    //     0x7c2168: add             x16, NULL, #0x30  ; false
    // 0x7c216c: str             x16, [SP]
    // 0x7c2170: r4 = const [0x1, 0x4, 0x4, 0x2, Jic, 0x2, nlg, 0x3, null]
    //     0x7c2170: add             x4, PP, #0x33, lsl #12  ; [pp+0x33e00] List(9) [0x1, 0x4, 0x4, 0x2, "Jic", 0x2, "nlg", 0x3, Null]
    //     0x7c2174: ldr             x4, [x4, #0xe00]
    // 0x7c2178: r0 = call 0x45aa54
    //     0x7c2178: bl              #0x45aa54
    // 0x7c217c: mov             x1, x0
    // 0x7c2180: stur            x1, [fp, #-0x20]
    // 0x7c2184: r0 = Await()
    //     0x7c2184: bl              #0x74ab64  ; AwaitStub
    // 0x7c2188: ldur            x1, [fp, #-0x18]
    // 0x7c218c: r0 = __unknown_function__()
    //     0x7c218c: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c2190: r0 = Null
    //     0x7c2190: mov             x0, NULL
    // 0x7c2194: r0 = ReturnAsyncNotFuture()
    //     0x7c2194: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2198: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c2198: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c219c: b               #0x7c1f98
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x63bc24, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x649294, size: -0x1
  }
}

// lib: , url: EVi

// class id: 1049975, size: 0x8
class :: {

  static late final iSa<Ceb, nbb, int> eFg; // offset: 0x14e8
}

// class id: 2456, size: 0x18, field offset: 0x18
class Ceb extends mbb {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c21ac, size: 0xf0
    // 0x7c21ac: EnterFrame
    //     0x7c21ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7c21b0: mov             fp, SP
    // 0x7c21b4: AllocStack(0x30)
    //     0x7c21b4: sub             SP, SP, #0x30
    // 0x7c21b8: SetupParameters(Ceb this /* r1 */)
    //     0x7c21b8: stur            NULL, [fp, #-8]
    //     0x7c21bc: movz            x0, #0
    //     0x7c21c0: add             x1, fp, w0, sxtw #2
    //     0x7c21c4: ldr             x1, [x1, #0x10]
    //     0x7c21c8: ldur            w2, [x1, #0x17]
    //     0x7c21cc: add             x2, x2, HEAP, lsl #32
    //     0x7c21d0: stur            x2, [fp, #-0x10]
    // 0x7c21d4: CheckStackOverflow
    //     0x7c21d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c21d8: cmp             SP, x16
    //     0x7c21dc: b.ls            #0x7c2294
    // 0x7c21e0: InitAsync() -> Future<void?>
    //     0x7c21e0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c21e4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c21e8: ldur            x0, [fp, #-0x10]
    // 0x7c21ec: LoadField: r1 = r0->field_f
    //     0x7c21ec: ldur            w1, [x0, #0xf]
    // 0x7c21f0: DecompressPointer r1
    //     0x7c21f0: add             x1, x1, HEAP, lsl #32
    // 0x7c21f4: LoadField: r2 = r1->field_7
    //     0x7c21f4: ldur            w2, [x1, #7]
    // 0x7c21f8: DecompressPointer r2
    //     0x7c21f8: add             x2, x2, HEAP, lsl #32
    // 0x7c21fc: stp             x1, x2, [SP]
    // 0x7c2200: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7c2200: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7c2204: r0 = call 0x261258
    //     0x7c2204: bl              #0x261258
    // 0x7c2208: stur            x0, [fp, #-0x18]
    // 0x7c220c: r0 = LoadStaticField(0x14ec)
    //     0x7c220c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c2210: ldr             x0, [x0, #0x29d8]
    // 0x7c2214: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c2218: cmp             w0, w16
    // 0x7c221c: b.ne            #0x7c222c
    // 0x7c2220: r2 = gFg
    //     0x7c2220: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e680] Field <::.gFg>: static late final (offset: 0x14ec)
    //     0x7c2224: ldr             x2, [x2, #0x680]
    // 0x7c2228: r0 = InitLateFinalStaticField()
    //     0x7c2228: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c222c: mov             x2, x0
    // 0x7c2230: ldur            x0, [fp, #-0x10]
    // 0x7c2234: LoadField: r1 = r0->field_f
    //     0x7c2234: ldur            w1, [x0, #0xf]
    // 0x7c2238: DecompressPointer r1
    //     0x7c2238: add             x1, x1, HEAP, lsl #32
    // 0x7c223c: LoadField: r3 = r1->field_f
    //     0x7c223c: ldur            x3, [x1, #0xf]
    // 0x7c2240: r0 = BoxInt64Instr(r3)
    //     0x7c2240: sbfiz           x0, x3, #1, #0x1f
    //     0x7c2244: cmp             x3, x0, asr #1
    //     0x7c2248: b.eq            #0x7c2254
    //     0x7c224c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c2250: stur            x3, [x0, #7]
    // 0x7c2254: mov             x1, x2
    // 0x7c2258: mov             x2, x0
    // 0x7c225c: r0 = call 0x26370c
    //     0x7c225c: bl              #0x26370c
    // 0x7c2260: mov             x1, x0
    // 0x7c2264: r0 = call 0x263610
    //     0x7c2264: bl              #0x263610
    // 0x7c2268: r16 = <Ieb>
    //     0x7c2268: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e688] TypeArguments: <Ieb>
    //     0x7c226c: ldr             x16, [x16, #0x688]
    // 0x7c2270: ldur            lr, [fp, #-0x18]
    // 0x7c2274: stp             lr, x16, [SP, #8]
    // 0x7c2278: str             x0, [SP]
    // 0x7c227c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c227c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c2280: r0 = call 0x259250
    //     0x7c2280: bl              #0x259250
    // 0x7c2284: mov             x1, x0
    // 0x7c2288: r0 = __unknown_function__()
    //     0x7c2288: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c228c: r0 = Null
    //     0x7c228c: mov             x0, NULL
    // 0x7c2290: r0 = ReturnAsyncNotFuture()
    //     0x7c2290: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2294: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c2294: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c2298: b               #0x7c21e0
  }
  [closure] static Ceb Ceb(dynamic, int) {
    // ** addr: 0x3be548, size: -0x1
  }
}

// lib: , url: AVi

// class id: 1049971, size: 0x8
class :: {

  static late final iSa<yeb, nbb, int> jEg; // offset: 0x14d4
}

// class id: 2457, size: 0x18, field offset: 0x18
class yeb extends mbb {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c11b8, size: 0xf0
    // 0x7c11b8: EnterFrame
    //     0x7c11b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7c11bc: mov             fp, SP
    // 0x7c11c0: AllocStack(0x30)
    //     0x7c11c0: sub             SP, SP, #0x30
    // 0x7c11c4: SetupParameters(yeb this /* r1 */)
    //     0x7c11c4: stur            NULL, [fp, #-8]
    //     0x7c11c8: movz            x0, #0
    //     0x7c11cc: add             x1, fp, w0, sxtw #2
    //     0x7c11d0: ldr             x1, [x1, #0x10]
    //     0x7c11d4: ldur            w2, [x1, #0x17]
    //     0x7c11d8: add             x2, x2, HEAP, lsl #32
    //     0x7c11dc: stur            x2, [fp, #-0x10]
    // 0x7c11e0: CheckStackOverflow
    //     0x7c11e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c11e4: cmp             SP, x16
    //     0x7c11e8: b.ls            #0x7c12a0
    // 0x7c11ec: InitAsync() -> Future<void?>
    //     0x7c11ec: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c11f0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c11f4: ldur            x0, [fp, #-0x10]
    // 0x7c11f8: LoadField: r1 = r0->field_f
    //     0x7c11f8: ldur            w1, [x0, #0xf]
    // 0x7c11fc: DecompressPointer r1
    //     0x7c11fc: add             x1, x1, HEAP, lsl #32
    // 0x7c1200: LoadField: r2 = r1->field_7
    //     0x7c1200: ldur            w2, [x1, #7]
    // 0x7c1204: DecompressPointer r2
    //     0x7c1204: add             x2, x2, HEAP, lsl #32
    // 0x7c1208: stp             x1, x2, [SP]
    // 0x7c120c: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7c120c: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7c1210: r0 = call 0x261258
    //     0x7c1210: bl              #0x261258
    // 0x7c1214: stur            x0, [fp, #-0x18]
    // 0x7c1218: r0 = LoadStaticField(0x14cc)
    //     0x7c1218: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c121c: ldr             x0, [x0, #0x2998]
    // 0x7c1220: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c1224: cmp             w0, w16
    // 0x7c1228: b.ne            #0x7c1238
    // 0x7c122c: r2 = fEg
    //     0x7c122c: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1ee88] Field <::.fEg>: static late final (offset: 0x14cc)
    //     0x7c1230: ldr             x2, [x2, #0xe88]
    // 0x7c1234: r0 = InitLateFinalStaticField()
    //     0x7c1234: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c1238: mov             x2, x0
    // 0x7c123c: ldur            x0, [fp, #-0x10]
    // 0x7c1240: LoadField: r1 = r0->field_f
    //     0x7c1240: ldur            w1, [x0, #0xf]
    // 0x7c1244: DecompressPointer r1
    //     0x7c1244: add             x1, x1, HEAP, lsl #32
    // 0x7c1248: LoadField: r3 = r1->field_f
    //     0x7c1248: ldur            x3, [x1, #0xf]
    // 0x7c124c: r0 = BoxInt64Instr(r3)
    //     0x7c124c: sbfiz           x0, x3, #1, #0x1f
    //     0x7c1250: cmp             x3, x0, asr #1
    //     0x7c1254: b.eq            #0x7c1260
    //     0x7c1258: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c125c: stur            x3, [x0, #7]
    // 0x7c1260: mov             x1, x2
    // 0x7c1264: mov             x2, x0
    // 0x7c1268: r0 = call 0x26370c
    //     0x7c1268: bl              #0x26370c
    // 0x7c126c: mov             x1, x0
    // 0x7c1270: r0 = call 0x263610
    //     0x7c1270: bl              #0x263610
    // 0x7c1274: r16 = <Aeb>
    //     0x7c1274: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1ee90] TypeArguments: <Aeb>
    //     0x7c1278: ldr             x16, [x16, #0xe90]
    // 0x7c127c: ldur            lr, [fp, #-0x18]
    // 0x7c1280: stp             lr, x16, [SP, #8]
    // 0x7c1284: str             x0, [SP]
    // 0x7c1288: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c1288: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c128c: r0 = call 0x259250
    //     0x7c128c: bl              #0x259250
    // 0x7c1290: mov             x1, x0
    // 0x7c1294: r0 = __unknown_function__()
    //     0x7c1294: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c1298: r0 = Null
    //     0x7c1298: mov             x0, NULL
    // 0x7c129c: r0 = ReturnAsyncNotFuture()
    //     0x7c129c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c12a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c12a0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c12a4: b               #0x7c11ec
  }
  [closure] static yeb yeb(dynamic, int) {
    // ** addr: 0x3be150, size: -0x1
  }
}

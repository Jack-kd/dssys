// lib: , url: wVi

// class id: 1049967, size: 0x8
class :: {
}

// class id: 3966, size: 0x18, field offset: 0xc
//   const constructor, 
class veb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c12b4, size: 0x2cc
    // 0x7c12b4: EnterFrame
    //     0x7c12b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7c12b8: mov             fp, SP
    // 0x7c12bc: AllocStack(0x68)
    //     0x7c12bc: sub             SP, SP, #0x68
    // 0x7c12c0: SetupParameters(veb this /* r1 */)
    //     0x7c12c0: stur            NULL, [fp, #-8]
    //     0x7c12c4: movz            x0, #0
    //     0x7c12c8: add             x1, fp, w0, sxtw #2
    //     0x7c12cc: ldr             x1, [x1, #0x10]
    //     0x7c12d0: ldur            w2, [x1, #0x17]
    //     0x7c12d4: add             x2, x2, HEAP, lsl #32
    //     0x7c12d8: stur            x2, [fp, #-0x10]
    // 0x7c12dc: CheckStackOverflow
    //     0x7c12dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c12e0: cmp             SP, x16
    //     0x7c12e4: b.ls            #0x7c1578
    // 0x7c12e8: InitAsync() -> Future<void?>
    //     0x7c12e8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c12ec: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c12f0: r1 = 2
    //     0x7c12f0: movz            x1, #0x2
    // 0x7c12f4: r0 = AllocateContext()
    //     0x7c12f4: bl              #0x7dd22c  ; AllocateContextStub
    // 0x7c12f8: mov             x1, x0
    // 0x7c12fc: ldur            x0, [fp, #-0x10]
    // 0x7c1300: stur            x1, [fp, #-0x20]
    // 0x7c1304: StoreField: r1->field_b = r0
    //     0x7c1304: stur            w0, [x1, #0xb]
    // 0x7c1308: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7c1308: ldur            w2, [x0, #0x17]
    // 0x7c130c: DecompressPointer r2
    //     0x7c130c: add             x2, x2, HEAP, lsl #32
    // 0x7c1310: stur            x2, [fp, #-0x18]
    // 0x7c1314: r0 = LoadStaticField(0x14cc)
    //     0x7c1314: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c1318: ldr             x0, [x0, #0x2998]
    // 0x7c131c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c1320: cmp             w0, w16
    // 0x7c1324: b.ne            #0x7c1334
    // 0x7c1328: r2 = fEg
    //     0x7c1328: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1ee88] Field <::.fEg>: static late final (offset: 0x14cc)
    //     0x7c132c: ldr             x2, [x2, #0xe88]
    // 0x7c1330: r0 = InitLateFinalStaticField()
    //     0x7c1330: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c1334: mov             x2, x0
    // 0x7c1338: ldur            x3, [fp, #-0x10]
    // 0x7c133c: LoadField: r0 = r3->field_f
    //     0x7c133c: ldur            w0, [x3, #0xf]
    // 0x7c1340: DecompressPointer r0
    //     0x7c1340: add             x0, x0, HEAP, lsl #32
    // 0x7c1344: LoadField: r4 = r0->field_f
    //     0x7c1344: ldur            x4, [x0, #0xf]
    // 0x7c1348: r0 = BoxInt64Instr(r4)
    //     0x7c1348: sbfiz           x0, x4, #1, #0x1f
    //     0x7c134c: cmp             x4, x0, asr #1
    //     0x7c1350: b.eq            #0x7c135c
    //     0x7c1354: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c1358: stur            x4, [x0, #7]
    // 0x7c135c: mov             x1, x2
    // 0x7c1360: mov             x2, x0
    // 0x7c1364: r0 = call 0x26370c
    //     0x7c1364: bl              #0x26370c
    // 0x7c1368: mov             x1, x0
    // 0x7c136c: r0 = call 0x263610
    //     0x7c136c: bl              #0x263610
    // 0x7c1370: r16 = <Aeb>
    //     0x7c1370: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1ee90] TypeArguments: <Aeb>
    //     0x7c1374: ldr             x16, [x16, #0xe90]
    // 0x7c1378: ldur            lr, [fp, #-0x18]
    // 0x7c137c: stp             lr, x16, [SP, #8]
    // 0x7c1380: str             x0, [SP]
    // 0x7c1384: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c1384: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c1388: r0 = call 0x263414
    //     0x7c1388: bl              #0x263414
    // 0x7c138c: ldur            x2, [fp, #-0x20]
    // 0x7c1390: StoreField: r2->field_f = r0
    //     0x7c1390: stur            w0, [x2, #0xf]
    //     0x7c1394: ldurb           w16, [x2, #-1]
    //     0x7c1398: ldurb           w17, [x0, #-1]
    //     0x7c139c: and             x16, x17, x16, lsr #2
    //     0x7c13a0: tst             x16, HEAP, lsr #32
    //     0x7c13a4: b.eq            #0x7c13ac
    //     0x7c13a8: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7c13ac: ldur            x0, [fp, #-0x10]
    // 0x7c13b0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c13b0: ldur            w1, [x0, #0x17]
    // 0x7c13b4: DecompressPointer r1
    //     0x7c13b4: add             x1, x1, HEAP, lsl #32
    // 0x7c13b8: stur            x1, [fp, #-0x18]
    // 0x7c13bc: r0 = LoadStaticField(0x1368)
    //     0x7c13bc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c13c0: ldr             x0, [x0, #0x26d0]
    // 0x7c13c4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c13c8: cmp             w0, w16
    // 0x7c13cc: b.ne            #0x7c13dc
    // 0x7c13d0: r2 = hqg
    //     0x7c13d0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x7c13d4: ldr             x2, [x2, #0x580]
    // 0x7c13d8: r0 = InitLateFinalStaticField()
    //     0x7c13d8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c13dc: r16 = <tZa>
    //     0x7c13dc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x7c13e0: ldr             x16, [x16, #0x588]
    // 0x7c13e4: ldur            lr, [fp, #-0x18]
    // 0x7c13e8: stp             lr, x16, [SP, #8]
    // 0x7c13ec: str             x0, [SP]
    // 0x7c13f0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c13f0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c13f4: r0 = call 0x263414
    //     0x7c13f4: bl              #0x263414
    // 0x7c13f8: ldur            x2, [fp, #-0x20]
    // 0x7c13fc: StoreField: r2->field_13 = r0
    //     0x7c13fc: stur            w0, [x2, #0x13]
    //     0x7c1400: ldurb           w16, [x2, #-1]
    //     0x7c1404: ldurb           w17, [x0, #-1]
    //     0x7c1408: and             x16, x17, x16, lsr #2
    //     0x7c140c: tst             x16, HEAP, lsr #32
    //     0x7c1410: b.eq            #0x7c1418
    //     0x7c1414: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7c1418: ldur            x0, [fp, #-0x10]
    // 0x7c141c: LoadField: r1 = r0->field_13
    //     0x7c141c: ldur            w1, [x0, #0x13]
    // 0x7c1420: DecompressPointer r1
    //     0x7c1420: add             x1, x1, HEAP, lsl #32
    // 0x7c1424: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7c1424: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7c1428: r0 = call 0x368364
    //     0x7c1428: bl              #0x368364
    // 0x7c142c: r16 = <bool>
    //     0x7c142c: ldr             x16, [PP, #0x13c8]  ; [pp+0x13c8] TypeArguments: <bool>
    // 0x7c1430: stp             x0, x16, [SP, #8]
    // 0x7c1434: r16 = true
    //     0x7c1434: add             x16, NULL, #0x20  ; true
    // 0x7c1438: str             x16, [SP]
    // 0x7c143c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c143c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c1440: r0 = call 0x2bfdb0
    //     0x7c1440: bl              #0x2bfdb0
    // 0x7c1444: r1 = "3740f96573d6c7929e07fd427be6"
    //     0x7c1444: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b20] "3740f96573d6c7929e07fd427be6"
    //     0x7c1448: ldr             x1, [x1, #0xb20]
    // 0x7c144c: r0 = call 0x63f8bc
    //     0x7c144c: bl              #0x63f8bc
    // 0x7c1450: r1 = "e223d0a929403a1d7402d65c698d4cf91a"
    //     0x7c1450: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b28] "e223d0a929403a1d7402d65c698d4cf91a"
    //     0x7c1454: ldr             x1, [x1, #0xb28]
    // 0x7c1458: stur            x0, [fp, #-0x18]
    // 0x7c145c: r0 = call 0x63f8bc
    //     0x7c145c: bl              #0x63f8bc
    // 0x7c1460: mov             x2, x0
    // 0x7c1464: ldur            x0, [fp, #-0x10]
    // 0x7c1468: stur            x2, [fp, #-0x28]
    // 0x7c146c: LoadField: r1 = r0->field_f
    //     0x7c146c: ldur            w1, [x0, #0xf]
    // 0x7c1470: DecompressPointer r1
    //     0x7c1470: add             x1, x1, HEAP, lsl #32
    // 0x7c1474: LoadField: r0 = r1->field_b
    //     0x7c1474: ldur            w0, [x1, #0xb]
    // 0x7c1478: DecompressPointer r0
    //     0x7c1478: add             x0, x0, HEAP, lsl #32
    // 0x7c147c: stur            x0, [fp, #-0x10]
    // 0x7c1480: r1 = "926a070698427f72f0"
    //     0x7c1480: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b30] "926a070698427f72f0"
    //     0x7c1484: ldr             x1, [x1, #0xb30]
    // 0x7c1488: r0 = call 0x63f8bc
    //     0x7c1488: bl              #0x63f8bc
    // 0x7c148c: ldur            x1, [fp, #-0x10]
    // 0x7c1490: r2 = LoadClassIdInstr(r1)
    //     0x7c1490: ldur            x2, [x1, #-1]
    //     0x7c1494: ubfx            x2, x2, #0xc, #0x14
    // 0x7c1498: mov             x16, x0
    // 0x7c149c: mov             x0, x2
    // 0x7c14a0: mov             x2, x16
    // 0x7c14a4: mov             lr, x0
    // 0x7c14a8: ldr             lr, [x21, lr, lsl #3]
    // 0x7c14ac: blr             lr
    // 0x7c14b0: mov             x3, x0
    // 0x7c14b4: r2 = Null
    //     0x7c14b4: mov             x2, NULL
    // 0x7c14b8: r1 = Null
    //     0x7c14b8: mov             x1, NULL
    // 0x7c14bc: stur            x3, [fp, #-0x10]
    // 0x7c14c0: r4 = 60
    //     0x7c14c0: movz            x4, #0x3c
    // 0x7c14c4: branchIfSmi(r0, 0x7c14d0)
    //     0x7c14c4: tbz             w0, #0, #0x7c14d0
    // 0x7c14c8: r4 = LoadClassIdInstr(r0)
    //     0x7c14c8: ldur            x4, [x0, #-1]
    //     0x7c14cc: ubfx            x4, x4, #0xc, #0x14
    // 0x7c14d0: sub             x4, x4, #0x5e
    // 0x7c14d4: cmp             x4, #1
    // 0x7c14d8: b.ls            #0x7c14ec
    // 0x7c14dc: r8 = String
    //     0x7c14dc: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7c14e0: r3 = Null
    //     0x7c14e0: add             x3, PP, #0x24, lsl #12  ; [pp+0x24b38] Null
    //     0x7c14e4: ldr             x3, [x3, #0xb38]
    // 0x7c14e8: r0 = String()
    //     0x7c14e8: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7c14ec: ldur            x16, [fp, #-0x28]
    // 0x7c14f0: ldur            lr, [fp, #-0x10]
    // 0x7c14f4: stp             lr, x16, [SP]
    // 0x7c14f8: r0 = +()
    //     0x7c14f8: bl              #0x746514  ; [dart:core] _StringBase::+
    // 0x7c14fc: r1 = "3859dec675f79dd1"
    //     0x7c14fc: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b48] "3859dec675f79dd1"
    //     0x7c1500: ldr             x1, [x1, #0xb48]
    // 0x7c1504: stur            x0, [fp, #-0x10]
    // 0x7c1508: r0 = call 0x63f8bc
    //     0x7c1508: bl              #0x63f8bc
    // 0x7c150c: r1 = "62443784a6f56de0"
    //     0x7c150c: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b50] "62443784a6f56de0"
    //     0x7c1510: ldr             x1, [x1, #0xb50]
    // 0x7c1514: stur            x0, [fp, #-0x28]
    // 0x7c1518: r0 = call 0x63f8bc
    //     0x7c1518: bl              #0x63f8bc
    // 0x7c151c: ldur            x2, [fp, #-0x20]
    // 0x7c1520: r1 = Function '<anonymous closure>':.
    //     0x7c1520: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b58] AnonymousClosure: (0x7c16d4), in [ZVi] veb::<anonymous closure> (0x7c22a8)
    //     0x7c1524: ldr             x1, [x1, #0xb58]
    // 0x7c1528: stur            x0, [fp, #-0x30]
    // 0x7c152c: r0 = AllocateClosure()
    //     0x7c152c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7c1530: ldur            x2, [fp, #-0x20]
    // 0x7c1534: r1 = Function '<anonymous closure>':.
    //     0x7c1534: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b60] AnonymousClosure: (0x7c1580), in [wVi] veb::<anonymous closure> (0x7c12b4)
    //     0x7c1538: ldr             x1, [x1, #0xb60]
    // 0x7c153c: stur            x0, [fp, #-0x20]
    // 0x7c1540: r0 = AllocateClosure()
    //     0x7c1540: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7c1544: ldur            x16, [fp, #-0x28]
    // 0x7c1548: stp             x16, NULL, [SP, #0x28]
    // 0x7c154c: ldur            x16, [fp, #-0x10]
    // 0x7c1550: ldur            lr, [fp, #-0x20]
    // 0x7c1554: stp             lr, x16, [SP, #0x18]
    // 0x7c1558: ldur            x16, [fp, #-0x30]
    // 0x7c155c: stp             x16, x0, [SP, #8]
    // 0x7c1560: ldur            x16, [fp, #-0x18]
    // 0x7c1564: str             x16, [SP]
    // 0x7c1568: r4 = const [0x1, 0x6, 0x6, 0x6, null]
    //     0x7c1568: ldr             x4, [PP, #0x5480]  ; [pp+0x5480] List(5) [0x1, 0x6, 0x6, 0x6, Null]
    // 0x7c156c: r0 = call 0x402ab4
    //     0x7c156c: bl              #0x402ab4
    // 0x7c1570: r0 = Null
    //     0x7c1570: mov             x0, NULL
    // 0x7c1574: r0 = ReturnAsyncNotFuture()
    //     0x7c1574: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1578: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c1578: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c157c: b               #0x7c12e8
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7c1580, size: 0x154
    // 0x7c1580: EnterFrame
    //     0x7c1580: stp             fp, lr, [SP, #-0x10]!
    //     0x7c1584: mov             fp, SP
    // 0x7c1588: AllocStack(0x28)
    //     0x7c1588: sub             SP, SP, #0x28
    // 0x7c158c: SetupParameters(veb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c158c: stur            NULL, [fp, #-8]
    //     0x7c1590: movz            x0, #0
    //     0x7c1594: add             x1, fp, w0, sxtw #2
    //     0x7c1598: ldr             x1, [x1, #0x18]
    //     0x7c159c: add             x2, fp, w0, sxtw #2
    //     0x7c15a0: ldr             x2, [x2, #0x10]
    //     0x7c15a4: stur            x2, [fp, #-0x18]
    //     0x7c15a8: ldur            w3, [x1, #0x17]
    //     0x7c15ac: add             x3, x3, HEAP, lsl #32
    //     0x7c15b0: stur            x3, [fp, #-0x10]
    // 0x7c15b4: CheckStackOverflow
    //     0x7c15b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c15b8: cmp             SP, x16
    //     0x7c15bc: b.ls            #0x7c16cc
    // 0x7c15c0: InitAsync() -> Future<void?>
    //     0x7c15c0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c15c4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c15c8: r0 = call 0x44df3c
    //     0x7c15c8: bl              #0x44df3c
    // 0x7c15cc: ldur            x0, [fp, #-0x10]
    // 0x7c15d0: LoadField: r1 = r0->field_b
    //     0x7c15d0: ldur            w1, [x0, #0xb]
    // 0x7c15d4: DecompressPointer r1
    //     0x7c15d4: add             x1, x1, HEAP, lsl #32
    // 0x7c15d8: LoadField: r2 = r1->field_f
    //     0x7c15d8: ldur            w2, [x1, #0xf]
    // 0x7c15dc: DecompressPointer r2
    //     0x7c15dc: add             x2, x2, HEAP, lsl #32
    // 0x7c15e0: LoadField: r3 = r2->field_b
    //     0x7c15e0: ldur            w3, [x2, #0xb]
    // 0x7c15e4: DecompressPointer r3
    //     0x7c15e4: add             x3, x3, HEAP, lsl #32
    // 0x7c15e8: stur            x3, [fp, #-0x20]
    // 0x7c15ec: r1 = "e75b50ea"
    //     0x7c15ec: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b68] "e75b50ea"
    //     0x7c15f0: ldr             x1, [x1, #0xb68]
    // 0x7c15f4: r0 = call 0x63f8bc
    //     0x7c15f4: bl              #0x63f8bc
    // 0x7c15f8: ldur            x1, [fp, #-0x20]
    // 0x7c15fc: r2 = LoadClassIdInstr(r1)
    //     0x7c15fc: ldur            x2, [x1, #-1]
    //     0x7c1600: ubfx            x2, x2, #0xc, #0x14
    // 0x7c1604: mov             x16, x0
    // 0x7c1608: mov             x0, x2
    // 0x7c160c: mov             x2, x16
    // 0x7c1610: mov             lr, x0
    // 0x7c1614: ldr             lr, [x21, lr, lsl #3]
    // 0x7c1618: blr             lr
    // 0x7c161c: mov             x3, x0
    // 0x7c1620: r2 = Null
    //     0x7c1620: mov             x2, NULL
    // 0x7c1624: r1 = Null
    //     0x7c1624: mov             x1, NULL
    // 0x7c1628: stur            x3, [fp, #-0x20]
    // 0x7c162c: branchIfSmi(r0, 0x7c1654)
    //     0x7c162c: tbz             w0, #0, #0x7c1654
    // 0x7c1630: r4 = LoadClassIdInstr(r0)
    //     0x7c1630: ldur            x4, [x0, #-1]
    //     0x7c1634: ubfx            x4, x4, #0xc, #0x14
    // 0x7c1638: sub             x4, x4, #0x3c
    // 0x7c163c: cmp             x4, #1
    // 0x7c1640: b.ls            #0x7c1654
    // 0x7c1644: r8 = int
    //     0x7c1644: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7c1648: r3 = Null
    //     0x7c1648: add             x3, PP, #0x24, lsl #12  ; [pp+0x24b70] Null
    //     0x7c164c: ldr             x3, [x3, #0xb70]
    // 0x7c1650: r0 = int()
    //     0x7c1650: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7c1654: ldur            x0, [fp, #-0x10]
    // 0x7c1658: LoadField: r1 = r0->field_13
    //     0x7c1658: ldur            w1, [x0, #0x13]
    // 0x7c165c: DecompressPointer r1
    //     0x7c165c: add             x1, x1, HEAP, lsl #32
    // 0x7c1660: ldur            x2, [fp, #-0x20]
    // 0x7c1664: r3 = LoadInt32Instr(r2)
    //     0x7c1664: sbfx            x3, x2, #1, #0x1f
    //     0x7c1668: tbz             w2, #0, #0x7c1670
    //     0x7c166c: ldur            x3, [x2, #7]
    // 0x7c1670: mov             x2, x3
    // 0x7c1674: r0 = call 0x47d41c
    //     0x7c1674: bl              #0x47d41c
    // 0x7c1678: mov             x1, x0
    // 0x7c167c: stur            x1, [fp, #-0x20]
    // 0x7c1680: r0 = Await()
    //     0x7c1680: bl              #0x74ab64  ; AwaitStub
    // 0x7c1684: r1 = "257054bf4d593855283513d514d0"
    //     0x7c1684: add             x1, PP, #0x24, lsl #12  ; [pp+0x24b80] "257054bf4d593855283513d514d0"
    //     0x7c1688: ldr             x1, [x1, #0xb80]
    // 0x7c168c: r0 = call 0x63f8bc
    //     0x7c168c: bl              #0x63f8bc
    // 0x7c1690: mov             x1, x0
    // 0x7c1694: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7c1694: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7c1698: r0 = call 0x3a5cc4
    //     0x7c1698: bl              #0x3a5cc4
    // 0x7c169c: ldur            x0, [fp, #-0x10]
    // 0x7c16a0: LoadField: r1 = r0->field_f
    //     0x7c16a0: ldur            w1, [x0, #0xf]
    // 0x7c16a4: DecompressPointer r1
    //     0x7c16a4: add             x1, x1, HEAP, lsl #32
    // 0x7c16a8: r0 = __unknown_function__()
    //     0x7c16a8: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c16ac: ldur            x16, [fp, #-0x18]
    // 0x7c16b0: str             x16, [SP]
    // 0x7c16b4: ldur            x0, [fp, #-0x18]
    // 0x7c16b8: ClosureCall
    //     0x7c16b8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7c16bc: ldur            x2, [x0, #0x1f]
    //     0x7c16c0: blr             x2
    // 0x7c16c4: r0 = Null
    //     0x7c16c4: mov             x0, NULL
    // 0x7c16c8: r0 = ReturnAsyncNotFuture()
    //     0x7c16c8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c16cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c16cc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c16d0: b               #0x7c15c0
  }
}

// lib: , url: lWi

// class id: 1050009, size: 0x8
class :: {
}

// class id: 3613, size: 0x24, field offset: 0x18
class _Seb extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a0f40, size: 0x15c
    // 0x7a0f40: EnterFrame
    //     0x7a0f40: stp             fp, lr, [SP, #-0x10]!
    //     0x7a0f44: mov             fp, SP
    // 0x7a0f48: AllocStack(0x40)
    //     0x7a0f48: sub             SP, SP, #0x40
    // 0x7a0f4c: SetupParameters(_Seb this /* r1 */)
    //     0x7a0f4c: stur            NULL, [fp, #-8]
    //     0x7a0f50: movz            x0, #0
    //     0x7a0f54: add             x1, fp, w0, sxtw #2
    //     0x7a0f58: ldr             x1, [x1, #0x10]
    //     0x7a0f5c: ldur            w2, [x1, #0x17]
    //     0x7a0f60: add             x2, x2, HEAP, lsl #32
    //     0x7a0f64: stur            x2, [fp, #-0x10]
    // 0x7a0f68: CheckStackOverflow
    //     0x7a0f68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a0f6c: cmp             SP, x16
    //     0x7a0f70: b.ls            #0x7a1094
    // 0x7a0f74: InitAsync() -> Future<void?>
    //     0x7a0f74: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a0f78: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a0f7c: ldur            x0, [fp, #-0x10]
    // 0x7a0f80: LoadField: r1 = r0->field_f
    //     0x7a0f80: ldur            w1, [x0, #0xf]
    // 0x7a0f84: DecompressPointer r1
    //     0x7a0f84: add             x1, x1, HEAP, lsl #32
    // 0x7a0f88: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7a0f88: ldur            w2, [x1, #0x17]
    // 0x7a0f8c: DecompressPointer r2
    //     0x7a0f8c: add             x2, x2, HEAP, lsl #32
    // 0x7a0f90: LoadField: r1 = r2->field_27
    //     0x7a0f90: ldur            w1, [x2, #0x27]
    // 0x7a0f94: DecompressPointer r1
    //     0x7a0f94: add             x1, x1, HEAP, lsl #32
    // 0x7a0f98: LoadField: r2 = r1->field_7
    //     0x7a0f98: ldur            w2, [x1, #7]
    // 0x7a0f9c: DecompressPointer r2
    //     0x7a0f9c: add             x2, x2, HEAP, lsl #32
    // 0x7a0fa0: mov             x1, x2
    // 0x7a0fa4: r0 = call 0x22d880
    //     0x7a0fa4: bl              #0x22d880
    // 0x7a0fa8: stur            x0, [fp, #-0x18]
    // 0x7a0fac: r0 = call 0x44df3c
    //     0x7a0fac: bl              #0x44df3c
    // 0x7a0fb0: ldur            x0, [fp, #-0x10]
    // 0x7a0fb4: LoadField: r1 = r0->field_f
    //     0x7a0fb4: ldur            w1, [x0, #0xf]
    // 0x7a0fb8: DecompressPointer r1
    //     0x7a0fb8: add             x1, x1, HEAP, lsl #32
    // 0x7a0fbc: LoadField: r0 = r1->field_13
    //     0x7a0fbc: ldur            w0, [x1, #0x13]
    // 0x7a0fc0: DecompressPointer r0
    //     0x7a0fc0: add             x0, x0, HEAP, lsl #32
    // 0x7a0fc4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a0fc8: cmp             w0, w16
    // 0x7a0fcc: b.ne            #0x7a0fdc
    // 0x7a0fd0: r2 = nsb
    //     0x7a0fd0: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x7a0fd4: ldr             x2, [x2, #0xf28]
    // 0x7a0fd8: r0 = InitLateFinalInstanceField()
    //     0x7a0fd8: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7a0fdc: stur            x0, [fp, #-0x20]
    // 0x7a0fe0: r0 = LoadStaticField(0x13a0)
    //     0x7a0fe0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a0fe4: ldr             x0, [x0, #0x2740]
    // 0x7a0fe8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a0fec: cmp             w0, w16
    // 0x7a0ff0: b.ne            #0x7a1000
    // 0x7a0ff4: r2 = fsg
    //     0x7a0ff4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7a0ff8: ldr             x2, [x2, #0x830]
    // 0x7a0ffc: r0 = InitLateFinalStaticField()
    //     0x7a0ffc: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7a1000: mov             x1, x0
    // 0x7a1004: r0 = call 0x263610
    //     0x7a1004: bl              #0x263610
    // 0x7a1008: r16 = <OZa>
    //     0x7a1008: add             x16, PP, #0x11, lsl #12  ; [pp+0x11928] TypeArguments: <OZa>
    //     0x7a100c: ldr             x16, [x16, #0x928]
    // 0x7a1010: ldur            lr, [fp, #-0x20]
    // 0x7a1014: stp             lr, x16, [SP, #8]
    // 0x7a1018: str             x0, [SP]
    // 0x7a101c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7a101c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7a1020: r0 = call 0x263414
    //     0x7a1020: bl              #0x263414
    // 0x7a1024: mov             x4, x0
    // 0x7a1028: ldur            x0, [fp, #-0x10]
    // 0x7a102c: stur            x4, [fp, #-0x28]
    // 0x7a1030: LoadField: r1 = r0->field_f
    //     0x7a1030: ldur            w1, [x0, #0xf]
    // 0x7a1034: DecompressPointer r1
    //     0x7a1034: add             x1, x1, HEAP, lsl #32
    // 0x7a1038: LoadField: r6 = r1->field_1b
    //     0x7a1038: ldur            w6, [x1, #0x1b]
    // 0x7a103c: DecompressPointer r6
    //     0x7a103c: add             x6, x6, HEAP, lsl #32
    // 0x7a1040: stur            x6, [fp, #-0x20]
    // 0x7a1044: LoadField: r5 = r1->field_1f
    //     0x7a1044: ldur            w5, [x1, #0x1f]
    // 0x7a1048: DecompressPointer r5
    //     0x7a1048: add             x5, x5, HEAP, lsl #32
    // 0x7a104c: mov             x1, x4
    // 0x7a1050: ldur            x2, [fp, #-0x18]
    // 0x7a1054: mov             x3, x6
    // 0x7a1058: r0 = __unknown_function__()
    //     0x7a1058: bl              #0x7a1254  ; [] ::__unknown_function__
    // 0x7a105c: mov             x1, x0
    // 0x7a1060: stur            x1, [fp, #-0x18]
    // 0x7a1064: r0 = Await()
    //     0x7a1064: bl              #0x74ab64  ; AwaitStub
    // 0x7a1068: r0 = call 0x469ca8
    //     0x7a1068: bl              #0x469ca8
    // 0x7a106c: r1 = "4ba9bfcde5b0997a73a7a82c7c96"
    //     0x7a106c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1acf0] "4ba9bfcde5b0997a73a7a82c7c96"
    //     0x7a1070: ldr             x1, [x1, #0xcf0]
    // 0x7a1074: r0 = call 0x4bcca4
    //     0x7a1074: bl              #0x4bcca4
    // 0x7a1078: mov             x1, x0
    // 0x7a107c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7a107c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7a1080: r0 = __unknown_function__()
    //     0x7a1080: bl              #0x78a718  ; [] ::__unknown_function__
    // 0x7a1084: ldur            x1, [fp, #-0x28]
    // 0x7a1088: r0 = __unknown_function__()
    //     0x7a1088: bl              #0x7a109c  ; [] ::__unknown_function__
    // 0x7a108c: r0 = Null
    //     0x7a108c: mov             x0, NULL
    // 0x7a1090: r0 = ReturnAsyncNotFuture()
    //     0x7a1090: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a1094: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a1094: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a1098: b               #0x7a0f74
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a1508, size: 0x12c
    // 0x7a1508: EnterFrame
    //     0x7a1508: stp             fp, lr, [SP, #-0x10]!
    //     0x7a150c: mov             fp, SP
    // 0x7a1510: AllocStack(0x38)
    //     0x7a1510: sub             SP, SP, #0x38
    // 0x7a1514: SetupParameters(_Seb this /* r1 */)
    //     0x7a1514: stur            NULL, [fp, #-8]
    //     0x7a1518: movz            x0, #0
    //     0x7a151c: add             x1, fp, w0, sxtw #2
    //     0x7a1520: ldr             x1, [x1, #0x10]
    //     0x7a1524: ldur            w2, [x1, #0x17]
    //     0x7a1528: add             x2, x2, HEAP, lsl #32
    //     0x7a152c: stur            x2, [fp, #-0x10]
    // 0x7a1530: CheckStackOverflow
    //     0x7a1530: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a1534: cmp             SP, x16
    //     0x7a1538: b.ls            #0x7a162c
    // 0x7a153c: InitAsync() -> Future<void?>
    //     0x7a153c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a1540: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a1544: r1 = 1
    //     0x7a1544: movz            x1, #0x1
    // 0x7a1548: r0 = AllocateContext()
    //     0x7a1548: bl              #0x7dd22c  ; AllocateContextStub
    // 0x7a154c: mov             x1, x0
    // 0x7a1550: ldur            x0, [fp, #-0x10]
    // 0x7a1554: stur            x1, [fp, #-0x18]
    // 0x7a1558: StoreField: r1->field_b = r0
    //     0x7a1558: stur            w0, [x1, #0xb]
    // 0x7a155c: r0 = LoadStaticField(0x1270)
    //     0x7a155c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a1560: ldr             x0, [x0, #0x24e0]
    // 0x7a1564: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a1568: cmp             w0, w16
    // 0x7a156c: b.ne            #0x7a157c
    // 0x7a1570: r2 = Gkg
    //     0x7a1570: add             x2, PP, #0xe, lsl #12  ; [pp+0xe1c0] Field <::.Gkg>: static late final (offset: 0x1270)
    //     0x7a1574: ldr             x2, [x2, #0x1c0]
    // 0x7a1578: r0 = InitLateFinalStaticField()
    //     0x7a1578: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7a157c: stur            x0, [fp, #-0x20]
    // 0x7a1580: r0 = LoadStaticField(0x134c)
    //     0x7a1580: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a1584: ldr             x0, [x0, #0x2698]
    // 0x7a1588: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a158c: cmp             w0, w16
    // 0x7a1590: b.ne            #0x7a15a0
    // 0x7a1594: r2 = xog
    //     0x7a1594: add             x2, PP, #0xe, lsl #12  ; [pp+0xed80] Field <dgb.xog>: static late (offset: 0x134c)
    //     0x7a1598: ldr             x2, [x2, #0xd80]
    // 0x7a159c: r0 = InitLateStaticField()
    //     0x7a159c: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7a15a0: r16 = <Map<String, dynamic>>
    //     0x7a15a0: ldr             x16, [PP, #0x3350]  ; [pp+0x3350] TypeArguments: <Map<String, dynamic>>
    // 0x7a15a4: ldur            lr, [fp, #-0x20]
    // 0x7a15a8: stp             lr, x16, [SP, #8]
    // 0x7a15ac: str             x0, [SP]
    // 0x7a15b0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7a15b0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7a15b4: r0 = call 0x3aac08
    //     0x7a15b4: bl              #0x3aac08
    // 0x7a15b8: mov             x1, x0
    // 0x7a15bc: stur            x1, [fp, #-0x20]
    // 0x7a15c0: r0 = Await()
    //     0x7a15c0: bl              #0x74ab64  ; AwaitStub
    // 0x7a15c4: mov             x1, x0
    // 0x7a15c8: ldur            x2, [fp, #-0x18]
    // 0x7a15cc: StoreField: r2->field_f = r0
    //     0x7a15cc: stur            w0, [x2, #0xf]
    //     0x7a15d0: tbz             w0, #0, #0x7a15ec
    //     0x7a15d4: ldurb           w16, [x2, #-1]
    //     0x7a15d8: ldurb           w17, [x0, #-1]
    //     0x7a15dc: and             x16, x17, x16, lsr #2
    //     0x7a15e0: tst             x16, HEAP, lsr #32
    //     0x7a15e4: b.eq            #0x7a15ec
    //     0x7a15e8: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7a15ec: cmp             w1, NULL
    // 0x7a15f0: b.ne            #0x7a15fc
    // 0x7a15f4: r0 = Null
    //     0x7a15f4: mov             x0, NULL
    // 0x7a15f8: r0 = ReturnAsyncNotFuture()
    //     0x7a15f8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a15fc: ldur            x0, [fp, #-0x10]
    // 0x7a1600: LoadField: r3 = r0->field_f
    //     0x7a1600: ldur            w3, [x0, #0xf]
    // 0x7a1604: DecompressPointer r3
    //     0x7a1604: add             x3, x3, HEAP, lsl #32
    // 0x7a1608: stur            x3, [fp, #-0x20]
    // 0x7a160c: r1 = Function '<anonymous closure>':.
    //     0x7a160c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1af28] AnonymousClosure: (0x4bd0d8), in [lWi] _Seb::<anonymous closure> (0x7a1508)
    //     0x7a1610: ldr             x1, [x1, #0xf28]
    // 0x7a1614: r0 = AllocateClosure()
    //     0x7a1614: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a1618: ldur            x1, [fp, #-0x20]
    // 0x7a161c: mov             x2, x0
    // 0x7a1620: r0 = call 0x227fe4
    //     0x7a1620: bl              #0x227fe4
    // 0x7a1624: r0 = Null
    //     0x7a1624: mov             x0, NULL
    // 0x7a1628: r0 = ReturnAsyncNotFuture()
    //     0x7a1628: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a162c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a162c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a1630: b               #0x7a153c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4bd0d8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x509ac4, size: -0x1
  }
}

// class id: 3878, size: 0xc, field offset: 0xc
//   const constructor, 
class Reb extends REa {
}

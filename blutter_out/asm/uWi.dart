// lib: , url: uWi

// class id: 1050019, size: 0x8
class :: {
}

// class id: 3612, size: 0x24, field offset: 0x18
class _jfb extends Vt<dynamic> {

  [closure] Future<Null> <anonymous closure>(dynamic, String) async {
    // ** addr: 0x78eec4, size: 0xac
    // 0x78eec4: EnterFrame
    //     0x78eec4: stp             fp, lr, [SP, #-0x10]!
    //     0x78eec8: mov             fp, SP
    // 0x78eecc: AllocStack(0x18)
    //     0x78eecc: sub             SP, SP, #0x18
    // 0x78eed0: SetupParameters(_jfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x78eed0: stur            NULL, [fp, #-8]
    //     0x78eed4: movz            x0, #0
    //     0x78eed8: add             x1, fp, w0, sxtw #2
    //     0x78eedc: ldr             x1, [x1, #0x18]
    //     0x78eee0: add             x2, fp, w0, sxtw #2
    //     0x78eee4: ldr             x2, [x2, #0x10]
    //     0x78eee8: stur            x2, [fp, #-0x18]
    //     0x78eeec: ldur            w3, [x1, #0x17]
    //     0x78eef0: add             x3, x3, HEAP, lsl #32
    //     0x78eef4: stur            x3, [fp, #-0x10]
    // 0x78eef8: CheckStackOverflow
    //     0x78eef8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78eefc: cmp             SP, x16
    //     0x78ef00: b.ls            #0x78ef64
    // 0x78ef04: InitAsync() -> Future<Null?>
    //     0x78ef04: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x78ef08: bl              #0x74ada8  ; InitAsyncStub
    // 0x78ef0c: ldur            x0, [fp, #-0x10]
    // 0x78ef10: LoadField: r1 = r0->field_f
    //     0x78ef10: ldur            w1, [x0, #0xf]
    // 0x78ef14: DecompressPointer r1
    //     0x78ef14: add             x1, x1, HEAP, lsl #32
    // 0x78ef18: LoadField: r2 = r1->field_1b
    //     0x78ef18: ldur            w2, [x1, #0x1b]
    // 0x78ef1c: DecompressPointer r2
    //     0x78ef1c: add             x2, x2, HEAP, lsl #32
    // 0x78ef20: tbnz            w2, #4, #0x78ef2c
    // 0x78ef24: r0 = Null
    //     0x78ef24: mov             x0, NULL
    // 0x78ef28: r0 = ReturnAsyncNotFuture()
    //     0x78ef28: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78ef2c: r2 = true
    //     0x78ef2c: add             x2, NULL, #0x20  ; true
    // 0x78ef30: StoreField: r1->field_1b = r2
    //     0x78ef30: stur            w2, [x1, #0x1b]
    // 0x78ef34: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x78ef34: ldur            w2, [x1, #0x17]
    // 0x78ef38: DecompressPointer r2
    //     0x78ef38: add             x2, x2, HEAP, lsl #32
    // 0x78ef3c: cmp             w2, NULL
    // 0x78ef40: b.eq            #0x78ef6c
    // 0x78ef44: mov             x1, x2
    // 0x78ef48: ldur            x2, [fp, #-0x18]
    // 0x78ef4c: r0 = call 0x46c34c
    //     0x78ef4c: bl              #0x46c34c
    // 0x78ef50: mov             x1, x0
    // 0x78ef54: stur            x1, [fp, #-0x18]
    // 0x78ef58: r0 = Await()
    //     0x78ef58: bl              #0x74ab64  ; AwaitStub
    // 0x78ef5c: r0 = Null
    //     0x78ef5c: mov             x0, NULL
    // 0x78ef60: r0 = ReturnAsyncNotFuture()
    //     0x78ef60: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78ef64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78ef64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78ef68: b               #0x78ef04
    // 0x78ef6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x78ef6c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a1634, size: 0x124
    // 0x7a1634: EnterFrame
    //     0x7a1634: stp             fp, lr, [SP, #-0x10]!
    //     0x7a1638: mov             fp, SP
    // 0x7a163c: AllocStack(0x30)
    //     0x7a163c: sub             SP, SP, #0x30
    // 0x7a1640: SetupParameters(_jfb this /* r1 */)
    //     0x7a1640: stur            NULL, [fp, #-8]
    //     0x7a1644: movz            x0, #0
    //     0x7a1648: add             x1, fp, w0, sxtw #2
    //     0x7a164c: ldr             x1, [x1, #0x10]
    //     0x7a1650: ldur            w2, [x1, #0x17]
    //     0x7a1654: add             x2, x2, HEAP, lsl #32
    //     0x7a1658: stur            x2, [fp, #-0x10]
    // 0x7a165c: CheckStackOverflow
    //     0x7a165c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a1660: cmp             SP, x16
    //     0x7a1664: b.ls            #0x7a174c
    // 0x7a1668: InitAsync() -> Future<void?>
    //     0x7a1668: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a166c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a1670: ldur            x0, [fp, #-0x10]
    // 0x7a1674: LoadField: r1 = r0->field_f
    //     0x7a1674: ldur            w1, [x0, #0xf]
    // 0x7a1678: DecompressPointer r1
    //     0x7a1678: add             x1, x1, HEAP, lsl #32
    // 0x7a167c: r2 = false
    //     0x7a167c: add             x2, NULL, #0x30  ; false
    // 0x7a1680: StoreField: r1->field_1b = r2
    //     0x7a1680: stur            w2, [x1, #0x1b]
    // 0x7a1684: LoadField: r0 = r1->field_13
    //     0x7a1684: ldur            w0, [x1, #0x13]
    // 0x7a1688: DecompressPointer r0
    //     0x7a1688: add             x0, x0, HEAP, lsl #32
    // 0x7a168c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a1690: cmp             w0, w16
    // 0x7a1694: b.ne            #0x7a16a4
    // 0x7a1698: r2 = nsb
    //     0x7a1698: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x7a169c: ldr             x2, [x2, #0xf28]
    // 0x7a16a0: r0 = InitLateFinalInstanceField()
    //     0x7a16a0: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7a16a4: stur            x0, [fp, #-0x18]
    // 0x7a16a8: r0 = LoadStaticField(0x150c)
    //     0x7a16a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a16ac: ldr             x0, [x0, #0x2a18]
    // 0x7a16b0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a16b4: cmp             w0, w16
    // 0x7a16b8: b.ne            #0x7a16c8
    // 0x7a16bc: r2 = fGg
    //     0x7a16bc: add             x2, PP, #0x19, lsl #12  ; [pp+0x196f0] Field <::.fGg>: static late final (offset: 0x150c)
    //     0x7a16c0: ldr             x2, [x2, #0x6f0]
    // 0x7a16c4: r0 = InitLateFinalStaticField()
    //     0x7a16c4: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7a16c8: mov             x2, x0
    // 0x7a16cc: ldur            x3, [fp, #-0x10]
    // 0x7a16d0: LoadField: r0 = r3->field_f
    //     0x7a16d0: ldur            w0, [x3, #0xf]
    // 0x7a16d4: DecompressPointer r0
    //     0x7a16d4: add             x0, x0, HEAP, lsl #32
    // 0x7a16d8: LoadField: r1 = r0->field_b
    //     0x7a16d8: ldur            w1, [x0, #0xb]
    // 0x7a16dc: DecompressPointer r1
    //     0x7a16dc: add             x1, x1, HEAP, lsl #32
    // 0x7a16e0: cmp             w1, NULL
    // 0x7a16e4: b.eq            #0x7a1754
    // 0x7a16e8: LoadField: r4 = r1->field_b
    //     0x7a16e8: ldur            x4, [x1, #0xb]
    // 0x7a16ec: r0 = BoxInt64Instr(r4)
    //     0x7a16ec: sbfiz           x0, x4, #1, #0x1f
    //     0x7a16f0: cmp             x4, x0, asr #1
    //     0x7a16f4: b.eq            #0x7a1700
    //     0x7a16f8: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7a16fc: stur            x4, [x0, #7]
    // 0x7a1700: mov             x1, x2
    // 0x7a1704: mov             x2, x0
    // 0x7a1708: r0 = call 0x26370c
    //     0x7a1708: bl              #0x26370c
    // 0x7a170c: mov             x1, x0
    // 0x7a1710: r0 = call 0x263610
    //     0x7a1710: bl              #0x263610
    // 0x7a1714: r16 = <kfb>
    //     0x7a1714: add             x16, PP, #0x19, lsl #12  ; [pp+0x19728] TypeArguments: <kfb>
    //     0x7a1718: ldr             x16, [x16, #0x728]
    // 0x7a171c: ldur            lr, [fp, #-0x18]
    // 0x7a1720: stp             lr, x16, [SP, #8]
    // 0x7a1724: str             x0, [SP]
    // 0x7a1728: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7a1728: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7a172c: r0 = call 0x263414
    //     0x7a172c: bl              #0x263414
    // 0x7a1730: mov             x1, x0
    // 0x7a1734: r0 = __unknown_function__()
    //     0x7a1734: bl              #0x7a1758  ; [] ::__unknown_function__
    // 0x7a1738: mov             x1, x0
    // 0x7a173c: stur            x1, [fp, #-0x18]
    // 0x7a1740: r0 = Await()
    //     0x7a1740: bl              #0x74ab64  ; AwaitStub
    // 0x7a1744: r0 = Null
    //     0x7a1744: mov             x0, NULL
    // 0x7a1748: r0 = ReturnAsyncNotFuture()
    //     0x7a1748: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a174c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a174c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a1750: b               #0x7a1668
    // 0x7a1754: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7a1754: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<Null> <anonymous closure>(dynamic, String) async {
    // ** addr: 0x7aa988, size: 0xb0
    // 0x7aa988: EnterFrame
    //     0x7aa988: stp             fp, lr, [SP, #-0x10]!
    //     0x7aa98c: mov             fp, SP
    // 0x7aa990: AllocStack(0x18)
    //     0x7aa990: sub             SP, SP, #0x18
    // 0x7aa994: SetupParameters(_jfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7aa994: stur            NULL, [fp, #-8]
    //     0x7aa998: movz            x0, #0
    //     0x7aa99c: add             x1, fp, w0, sxtw #2
    //     0x7aa9a0: ldr             x1, [x1, #0x18]
    //     0x7aa9a4: add             x2, fp, w0, sxtw #2
    //     0x7aa9a8: ldr             x2, [x2, #0x10]
    //     0x7aa9ac: stur            x2, [fp, #-0x18]
    //     0x7aa9b0: ldur            w3, [x1, #0x17]
    //     0x7aa9b4: add             x3, x3, HEAP, lsl #32
    //     0x7aa9b8: stur            x3, [fp, #-0x10]
    // 0x7aa9bc: CheckStackOverflow
    //     0x7aa9bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7aa9c0: cmp             SP, x16
    //     0x7aa9c4: b.ls            #0x7aaa30
    // 0x7aa9c8: InitAsync() -> Future<Null?>
    //     0x7aa9c8: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7aa9cc: bl              #0x74ada8  ; InitAsyncStub
    // 0x7aa9d0: ldur            x0, [fp, #-0x10]
    // 0x7aa9d4: LoadField: r1 = r0->field_f
    //     0x7aa9d4: ldur            w1, [x0, #0xf]
    // 0x7aa9d8: DecompressPointer r1
    //     0x7aa9d8: add             x1, x1, HEAP, lsl #32
    // 0x7aa9dc: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7aa9dc: ldur            w2, [x1, #0x17]
    // 0x7aa9e0: DecompressPointer r2
    //     0x7aa9e0: add             x2, x2, HEAP, lsl #32
    // 0x7aa9e4: cmp             w2, NULL
    // 0x7aa9e8: b.ne            #0x7aa9f4
    // 0x7aa9ec: r0 = Null
    //     0x7aa9ec: mov             x0, NULL
    // 0x7aa9f0: r0 = ReturnAsyncNotFuture()
    //     0x7aa9f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7aa9f4: LoadField: r3 = r1->field_1b
    //     0x7aa9f4: ldur            w3, [x1, #0x1b]
    // 0x7aa9f8: DecompressPointer r3
    //     0x7aa9f8: add             x3, x3, HEAP, lsl #32
    // 0x7aa9fc: tbnz            w3, #4, #0x7aaa08
    // 0x7aaa00: r0 = Null
    //     0x7aaa00: mov             x0, NULL
    // 0x7aaa04: r0 = ReturnAsyncNotFuture()
    //     0x7aaa04: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7aaa08: r3 = true
    //     0x7aaa08: add             x3, NULL, #0x20  ; true
    // 0x7aaa0c: StoreField: r1->field_1b = r3
    //     0x7aaa0c: stur            w3, [x1, #0x1b]
    // 0x7aaa10: mov             x1, x2
    // 0x7aaa14: ldur            x2, [fp, #-0x18]
    // 0x7aaa18: r0 = call 0x46c34c
    //     0x7aaa18: bl              #0x46c34c
    // 0x7aaa1c: mov             x1, x0
    // 0x7aaa20: stur            x1, [fp, #-0x18]
    // 0x7aaa24: r0 = Await()
    //     0x7aaa24: bl              #0x74ab64  ; AwaitStub
    // 0x7aaa28: r0 = Null
    //     0x7aaa28: mov             x0, NULL
    // 0x7aaa2c: r0 = ReturnAsyncNotFuture()
    //     0x7aaa2c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7aaa30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7aaa30: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7aaa34: b               #0x7aa9c8
  }
  [closure] Future<void> <anonymous closure>(dynamic, YB<String>?, YB<String>) async {
    // ** addr: 0x7aaa38, size: 0x84
    // 0x7aaa38: EnterFrame
    //     0x7aaa38: stp             fp, lr, [SP, #-0x10]!
    //     0x7aaa3c: mov             fp, SP
    // 0x7aaa40: AllocStack(0x30)
    //     0x7aaa40: sub             SP, SP, #0x30
    // 0x7aaa44: SetupParameters(_jfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7aaa44: stur            NULL, [fp, #-8]
    //     0x7aaa48: movz            x0, #0
    //     0x7aaa4c: add             x1, fp, w0, sxtw #2
    //     0x7aaa50: ldr             x1, [x1, #0x20]
    //     0x7aaa54: add             x2, fp, w0, sxtw #2
    //     0x7aaa58: ldr             x2, [x2, #0x10]
    //     0x7aaa5c: stur            x2, [fp, #-0x18]
    //     0x7aaa60: ldur            w3, [x1, #0x17]
    //     0x7aaa64: add             x3, x3, HEAP, lsl #32
    //     0x7aaa68: stur            x3, [fp, #-0x10]
    // 0x7aaa6c: CheckStackOverflow
    //     0x7aaa6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7aaa70: cmp             SP, x16
    //     0x7aaa74: b.ls            #0x7aaab4
    // 0x7aaa78: InitAsync() -> Future<void?>
    //     0x7aaa78: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7aaa7c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7aaa80: ldur            x2, [fp, #-0x10]
    // 0x7aaa84: r1 = Function '<anonymous closure>':.
    //     0x7aaa84: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1ac20] AnonymousClosure: (0x7aa988), in [uWi] _jfb::<anonymous closure> (0x7aaa38)
    //     0x7aaa88: ldr             x1, [x1, #0xc20]
    // 0x7aaa8c: r0 = AllocateClosure()
    //     0x7aaa8c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7aaa90: r16 = <String, Future<Null?>>
    //     0x7aaa90: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1ab58] TypeArguments: <String, Future<Null?>>
    //     0x7aaa94: ldr             x16, [x16, #0xb58]
    // 0x7aaa98: ldur            lr, [fp, #-0x18]
    // 0x7aaa9c: stp             lr, x16, [SP, #8]
    // 0x7aaaa0: str             x0, [SP]
    // 0x7aaaa4: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7aaaa4: ldr             x4, [PP, #0x30c0]  ; [pp+0x30c0] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7aaaa8: r0 = call 0x46c270
    //     0x7aaaa8: bl              #0x46c270
    // 0x7aaaac: r0 = Null
    //     0x7aaaac: mov             x0, NULL
    // 0x7aaab0: r0 = ReturnAsyncNotFuture()
    //     0x7aaab0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7aaab4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7aaab4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7aaab8: b               #0x7aaa78
  }
  [closure] void _Fug(dynamic, IUa) {
    // ** addr: 0x4bdfa0, size: -0x1
  }
  [closure] void _Gug(dynamic, aVa) {
    // ** addr: 0x4bdf64, size: -0x1
  }
  [closure] dla <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x46bf7c, size: -0x1
  }
}

// class id: 3876, size: 0x14, field offset: 0xc
//   const constructor, 
class ifb extends REa {
}

// lib: , url: ZRi

// class id: 1049780, size: 0x8
class :: {
}

// class id: 3660, size: 0x24, field offset: 0x18
class _eab extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78ea20, size: 0x124
    // 0x78ea20: EnterFrame
    //     0x78ea20: stp             fp, lr, [SP, #-0x10]!
    //     0x78ea24: mov             fp, SP
    // 0x78ea28: AllocStack(0x30)
    //     0x78ea28: sub             SP, SP, #0x30
    // 0x78ea2c: SetupParameters(_eab this /* r1 */)
    //     0x78ea2c: stur            NULL, [fp, #-8]
    //     0x78ea30: movz            x0, #0
    //     0x78ea34: add             x1, fp, w0, sxtw #2
    //     0x78ea38: ldr             x1, [x1, #0x10]
    //     0x78ea3c: ldur            w2, [x1, #0x17]
    //     0x78ea40: add             x2, x2, HEAP, lsl #32
    //     0x78ea44: stur            x2, [fp, #-0x10]
    // 0x78ea48: CheckStackOverflow
    //     0x78ea48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78ea4c: cmp             SP, x16
    //     0x78ea50: b.ls            #0x78eb38
    // 0x78ea54: InitAsync() -> Future<void?>
    //     0x78ea54: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78ea58: bl              #0x74ada8  ; InitAsyncStub
    // 0x78ea5c: ldur            x0, [fp, #-0x10]
    // 0x78ea60: LoadField: r1 = r0->field_f
    //     0x78ea60: ldur            w1, [x0, #0xf]
    // 0x78ea64: DecompressPointer r1
    //     0x78ea64: add             x1, x1, HEAP, lsl #32
    // 0x78ea68: r2 = false
    //     0x78ea68: add             x2, NULL, #0x30  ; false
    // 0x78ea6c: StoreField: r1->field_1b = r2
    //     0x78ea6c: stur            w2, [x1, #0x1b]
    // 0x78ea70: LoadField: r0 = r1->field_13
    //     0x78ea70: ldur            w0, [x1, #0x13]
    // 0x78ea74: DecompressPointer r0
    //     0x78ea74: add             x0, x0, HEAP, lsl #32
    // 0x78ea78: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78ea7c: cmp             w0, w16
    // 0x78ea80: b.ne            #0x78ea90
    // 0x78ea84: r2 = nsb
    //     0x78ea84: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x78ea88: ldr             x2, [x2, #0xf28]
    // 0x78ea8c: r0 = InitLateFinalInstanceField()
    //     0x78ea8c: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x78ea90: stur            x0, [fp, #-0x18]
    // 0x78ea94: r0 = LoadStaticField(0x1410)
    //     0x78ea94: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x78ea98: ldr             x0, [x0, #0x2820]
    // 0x78ea9c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78eaa0: cmp             w0, w16
    // 0x78eaa4: b.ne            #0x78eab4
    // 0x78eaa8: r2 = Kug
    //     0x78eaa8: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c2d0] Field <::.Kug>: static late final (offset: 0x1410)
    //     0x78eaac: ldr             x2, [x2, #0x2d0]
    // 0x78eab0: r0 = InitLateFinalStaticField()
    //     0x78eab0: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x78eab4: mov             x2, x0
    // 0x78eab8: ldur            x3, [fp, #-0x10]
    // 0x78eabc: LoadField: r0 = r3->field_f
    //     0x78eabc: ldur            w0, [x3, #0xf]
    // 0x78eac0: DecompressPointer r0
    //     0x78eac0: add             x0, x0, HEAP, lsl #32
    // 0x78eac4: LoadField: r1 = r0->field_b
    //     0x78eac4: ldur            w1, [x0, #0xb]
    // 0x78eac8: DecompressPointer r1
    //     0x78eac8: add             x1, x1, HEAP, lsl #32
    // 0x78eacc: cmp             w1, NULL
    // 0x78ead0: b.eq            #0x78eb40
    // 0x78ead4: LoadField: r4 = r1->field_b
    //     0x78ead4: ldur            x4, [x1, #0xb]
    // 0x78ead8: r0 = BoxInt64Instr(r4)
    //     0x78ead8: sbfiz           x0, x4, #1, #0x1f
    //     0x78eadc: cmp             x4, x0, asr #1
    //     0x78eae0: b.eq            #0x78eaec
    //     0x78eae4: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x78eae8: stur            x4, [x0, #7]
    // 0x78eaec: mov             x1, x2
    // 0x78eaf0: mov             x2, x0
    // 0x78eaf4: r0 = call 0x26370c
    //     0x78eaf4: bl              #0x26370c
    // 0x78eaf8: mov             x1, x0
    // 0x78eafc: r0 = call 0x263610
    //     0x78eafc: bl              #0x263610
    // 0x78eb00: r16 = <fab>
    //     0x78eb00: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c300] TypeArguments: <fab>
    //     0x78eb04: ldr             x16, [x16, #0x300]
    // 0x78eb08: ldur            lr, [fp, #-0x18]
    // 0x78eb0c: stp             lr, x16, [SP, #8]
    // 0x78eb10: str             x0, [SP]
    // 0x78eb14: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78eb14: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78eb18: r0 = call 0x263414
    //     0x78eb18: bl              #0x263414
    // 0x78eb1c: mov             x1, x0
    // 0x78eb20: r0 = __unknown_function__()
    //     0x78eb20: bl              #0x78eb44  ; [] ::__unknown_function__
    // 0x78eb24: mov             x1, x0
    // 0x78eb28: stur            x1, [fp, #-0x18]
    // 0x78eb2c: r0 = Await()
    //     0x78eb2c: bl              #0x74ab64  ; AwaitStub
    // 0x78eb30: r0 = Null
    //     0x78eb30: mov             x0, NULL
    // 0x78eb34: r0 = ReturnAsyncNotFuture()
    //     0x78eb34: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78eb38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78eb38: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78eb3c: b               #0x78ea54
    // 0x78eb40: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x78eb40: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic, YB<String>?, YB<String>) async {
    // ** addr: 0x7aa904, size: 0x84
    // 0x7aa904: EnterFrame
    //     0x7aa904: stp             fp, lr, [SP, #-0x10]!
    //     0x7aa908: mov             fp, SP
    // 0x7aa90c: AllocStack(0x30)
    //     0x7aa90c: sub             SP, SP, #0x30
    // 0x7aa910: SetupParameters(_eab this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7aa910: stur            NULL, [fp, #-8]
    //     0x7aa914: movz            x0, #0
    //     0x7aa918: add             x1, fp, w0, sxtw #2
    //     0x7aa91c: ldr             x1, [x1, #0x20]
    //     0x7aa920: add             x2, fp, w0, sxtw #2
    //     0x7aa924: ldr             x2, [x2, #0x10]
    //     0x7aa928: stur            x2, [fp, #-0x18]
    //     0x7aa92c: ldur            w3, [x1, #0x17]
    //     0x7aa930: add             x3, x3, HEAP, lsl #32
    //     0x7aa934: stur            x3, [fp, #-0x10]
    // 0x7aa938: CheckStackOverflow
    //     0x7aa938: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7aa93c: cmp             SP, x16
    //     0x7aa940: b.ls            #0x7aa980
    // 0x7aa944: InitAsync() -> Future<void?>
    //     0x7aa944: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7aa948: bl              #0x74ada8  ; InitAsyncStub
    // 0x7aa94c: ldur            x2, [fp, #-0x10]
    // 0x7aa950: r1 = Function '<anonymous closure>':.
    //     0x7aa950: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c378] AnonymousClosure: (0x7aa988), in [uWi] _jfb::<anonymous closure> (0x7aaa38)
    //     0x7aa954: ldr             x1, [x1, #0x378]
    // 0x7aa958: r0 = AllocateClosure()
    //     0x7aa958: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7aa95c: r16 = <String, Future<Null?>>
    //     0x7aa95c: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1ab58] TypeArguments: <String, Future<Null?>>
    //     0x7aa960: ldr             x16, [x16, #0xb58]
    // 0x7aa964: ldur            lr, [fp, #-0x18]
    // 0x7aa968: stp             lr, x16, [SP, #8]
    // 0x7aa96c: str             x0, [SP]
    // 0x7aa970: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7aa970: ldr             x4, [PP, #0x30c0]  ; [pp+0x30c0] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7aa974: r0 = call 0x46c270
    //     0x7aa974: bl              #0x46c270
    // 0x7aa978: r0 = Null
    //     0x7aa978: mov             x0, NULL
    // 0x7aa97c: r0 = ReturnAsyncNotFuture()
    //     0x7aa97c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7aa980: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7aa980: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7aa984: b               #0x7aa944
  }
  [closure] void _Fug(dynamic, IUa) {
    // ** addr: 0x46c0ec, size: -0x1
  }
  [closure] void _Gug(dynamic, aVa) {
    // ** addr: 0x46bfcc, size: -0x1
  }
}

// class id: 3934, size: 0x14, field offset: 0xc
//   const constructor, 
class dab extends REa {
}

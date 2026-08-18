// lib: , url: iTi

// class id: 1049844, size: 0x8
class :: {
}

// class id: 3408, size: 0x34, field offset: 0x14
class _Jbb extends lr<dynamic> {

  late String _Lyg; // offset: 0x2c

  [closure] Future<void> <anonymous closure>(dynamic, gI) async {
    // ** addr: 0x7ae124, size: 0xec
    // 0x7ae124: EnterFrame
    //     0x7ae124: stp             fp, lr, [SP, #-0x10]!
    //     0x7ae128: mov             fp, SP
    // 0x7ae12c: AllocStack(0x20)
    //     0x7ae12c: sub             SP, SP, #0x20
    // 0x7ae130: SetupParameters(_Jbb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7ae130: stur            NULL, [fp, #-8]
    //     0x7ae134: movz            x0, #0
    //     0x7ae138: add             x1, fp, w0, sxtw #2
    //     0x7ae13c: ldr             x1, [x1, #0x18]
    //     0x7ae140: add             x2, fp, w0, sxtw #2
    //     0x7ae144: ldr             x2, [x2, #0x10]
    //     0x7ae148: stur            x2, [fp, #-0x18]
    //     0x7ae14c: ldur            w3, [x1, #0x17]
    //     0x7ae150: add             x3, x3, HEAP, lsl #32
    //     0x7ae154: stur            x3, [fp, #-0x10]
    // 0x7ae158: CheckStackOverflow
    //     0x7ae158: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ae15c: cmp             SP, x16
    //     0x7ae160: b.ls            #0x7ae208
    // 0x7ae164: InitAsync() -> Future<void?>
    //     0x7ae164: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7ae168: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ae16c: ldur            x2, [fp, #-0x10]
    // 0x7ae170: LoadField: r3 = r2->field_f
    //     0x7ae170: ldur            w3, [x2, #0xf]
    // 0x7ae174: DecompressPointer r3
    //     0x7ae174: add             x3, x3, HEAP, lsl #32
    // 0x7ae178: ldur            x0, [fp, #-0x18]
    // 0x7ae17c: stur            x3, [fp, #-0x20]
    // 0x7ae180: ArrayStore: r3[0] = r0  ; List_4
    //     0x7ae180: stur            w0, [x3, #0x17]
    //     0x7ae184: ldurb           w16, [x3, #-1]
    //     0x7ae188: ldurb           w17, [x0, #-1]
    //     0x7ae18c: and             x16, x17, x16, lsr #2
    //     0x7ae190: tst             x16, HEAP, lsr #32
    //     0x7ae194: b.eq            #0x7ae19c
    //     0x7ae198: bl              #0x7dc9c8  ; WriteBarrierWrappersStub
    // 0x7ae19c: mov             x1, x3
    // 0x7ae1a0: r0 = __unknown_function__()
    //     0x7ae1a0: bl              #0x7ae0c8  ; [] ::__unknown_function__
    // 0x7ae1a4: mov             x1, x0
    // 0x7ae1a8: stur            x1, [fp, #-0x18]
    // 0x7ae1ac: r0 = Await()
    //     0x7ae1ac: bl              #0x74ab64  ; AwaitStub
    // 0x7ae1b0: r1 = LoadInt32Instr(r0)
    //     0x7ae1b0: sbfx            x1, x0, #1, #0x1f
    //     0x7ae1b4: tbz             w0, #0, #0x7ae1bc
    //     0x7ae1b8: ldur            x1, [x0, #7]
    // 0x7ae1bc: ldur            x0, [fp, #-0x20]
    // 0x7ae1c0: StoreField: r0->field_1b = r1
    //     0x7ae1c0: stur            x1, [x0, #0x1b]
    // 0x7ae1c4: ldur            x0, [fp, #-0x10]
    // 0x7ae1c8: LoadField: r3 = r0->field_f
    //     0x7ae1c8: ldur            w3, [x0, #0xf]
    // 0x7ae1cc: DecompressPointer r3
    //     0x7ae1cc: add             x3, x3, HEAP, lsl #32
    // 0x7ae1d0: stur            x3, [fp, #-0x18]
    // 0x7ae1d4: LoadField: r0 = r3->field_f
    //     0x7ae1d4: ldur            w0, [x3, #0xf]
    // 0x7ae1d8: DecompressPointer r0
    //     0x7ae1d8: add             x0, x0, HEAP, lsl #32
    // 0x7ae1dc: cmp             w0, NULL
    // 0x7ae1e0: b.eq            #0x7ae200
    // 0x7ae1e4: r1 = Function '<anonymous closure>':.
    //     0x7ae1e4: add             x1, PP, #0x39, lsl #12  ; [pp+0x39950] Function: [dart:ui] _NativeScene::_NativeScene._ (0x735d04)
    //     0x7ae1e8: ldr             x1, [x1, #0x950]
    // 0x7ae1ec: r2 = Null
    //     0x7ae1ec: mov             x2, NULL
    // 0x7ae1f0: r0 = AllocateClosure()
    //     0x7ae1f0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7ae1f4: ldur            x1, [fp, #-0x18]
    // 0x7ae1f8: mov             x2, x0
    // 0x7ae1fc: r0 = call 0x227fe4
    //     0x7ae1fc: bl              #0x227fe4
    // 0x7ae200: r0 = Null
    //     0x7ae200: mov             x0, NULL
    // 0x7ae204: r0 = ReturnAsyncNotFuture()
    //     0x7ae204: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ae208: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ae208: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ae20c: b               #0x7ae164
  }
  [closure] Future<void> <anonymous closure>(dynamic, U) async {
    // ** addr: 0x7ae210, size: 0xfc
    // 0x7ae210: EnterFrame
    //     0x7ae210: stp             fp, lr, [SP, #-0x10]!
    //     0x7ae214: mov             fp, SP
    // 0x7ae218: AllocStack(0x20)
    //     0x7ae218: sub             SP, SP, #0x20
    // 0x7ae21c: SetupParameters(_Jbb this /* r1 */)
    //     0x7ae21c: stur            NULL, [fp, #-8]
    //     0x7ae220: movz            x0, #0
    //     0x7ae224: add             x1, fp, w0, sxtw #2
    //     0x7ae228: ldr             x1, [x1, #0x18]
    //     0x7ae22c: ldur            w2, [x1, #0x17]
    //     0x7ae230: add             x2, x2, HEAP, lsl #32
    //     0x7ae234: stur            x2, [fp, #-0x10]
    // 0x7ae238: CheckStackOverflow
    //     0x7ae238: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ae23c: cmp             SP, x16
    //     0x7ae240: b.ls            #0x7ae304
    // 0x7ae244: InitAsync() -> Future<void?>
    //     0x7ae244: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7ae248: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ae24c: r1 = 1
    //     0x7ae24c: movz            x1, #0x1
    // 0x7ae250: r0 = AllocateContext()
    //     0x7ae250: bl              #0x7dd22c  ; AllocateContextStub
    // 0x7ae254: mov             x2, x0
    // 0x7ae258: ldur            x0, [fp, #-0x10]
    // 0x7ae25c: stur            x2, [fp, #-0x18]
    // 0x7ae260: StoreField: r2->field_b = r0
    //     0x7ae260: stur            w0, [x2, #0xb]
    // 0x7ae264: LoadField: r1 = r0->field_f
    //     0x7ae264: ldur            w1, [x0, #0xf]
    // 0x7ae268: DecompressPointer r1
    //     0x7ae268: add             x1, x1, HEAP, lsl #32
    // 0x7ae26c: r0 = __unknown_function__()
    //     0x7ae26c: bl              #0x7ae0c8  ; [] ::__unknown_function__
    // 0x7ae270: mov             x1, x0
    // 0x7ae274: stur            x1, [fp, #-0x20]
    // 0x7ae278: r0 = Await()
    //     0x7ae278: bl              #0x74ab64  ; AwaitStub
    // 0x7ae27c: mov             x1, x0
    // 0x7ae280: ldur            x2, [fp, #-0x18]
    // 0x7ae284: StoreField: r2->field_f = r0
    //     0x7ae284: stur            w0, [x2, #0xf]
    //     0x7ae288: tbz             w0, #0, #0x7ae2a4
    //     0x7ae28c: ldurb           w16, [x2, #-1]
    //     0x7ae290: ldurb           w17, [x0, #-1]
    //     0x7ae294: and             x16, x17, x16, lsr #2
    //     0x7ae298: tst             x16, HEAP, lsr #32
    //     0x7ae29c: b.eq            #0x7ae2a4
    //     0x7ae2a0: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x7ae2a4: ldur            x0, [fp, #-0x10]
    // 0x7ae2a8: LoadField: r3 = r0->field_f
    //     0x7ae2a8: ldur            w3, [x0, #0xf]
    // 0x7ae2ac: DecompressPointer r3
    //     0x7ae2ac: add             x3, x3, HEAP, lsl #32
    // 0x7ae2b0: stur            x3, [fp, #-0x20]
    // 0x7ae2b4: LoadField: r0 = r3->field_f
    //     0x7ae2b4: ldur            w0, [x3, #0xf]
    // 0x7ae2b8: DecompressPointer r0
    //     0x7ae2b8: add             x0, x0, HEAP, lsl #32
    // 0x7ae2bc: cmp             w0, NULL
    // 0x7ae2c0: b.ne            #0x7ae2cc
    // 0x7ae2c4: r0 = Null
    //     0x7ae2c4: mov             x0, NULL
    // 0x7ae2c8: r0 = ReturnAsyncNotFuture()
    //     0x7ae2c8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ae2cc: LoadField: r0 = r3->field_1b
    //     0x7ae2cc: ldur            x0, [x3, #0x1b]
    // 0x7ae2d0: r4 = LoadInt32Instr(r1)
    //     0x7ae2d0: sbfx            x4, x1, #1, #0x1f
    //     0x7ae2d4: tbz             w1, #0, #0x7ae2dc
    //     0x7ae2d8: ldur            x4, [x1, #7]
    // 0x7ae2dc: cmp             x4, x0
    // 0x7ae2e0: b.eq            #0x7ae2fc
    // 0x7ae2e4: r1 = Function '<anonymous closure>':.
    //     0x7ae2e4: add             x1, PP, #0x39, lsl #12  ; [pp+0x39958] AnonymousClosure: (0x516128), in [iTi] _Jbb::<anonymous closure> (0x7ae210)
    //     0x7ae2e8: ldr             x1, [x1, #0x958]
    // 0x7ae2ec: r0 = AllocateClosure()
    //     0x7ae2ec: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7ae2f0: ldur            x1, [fp, #-0x20]
    // 0x7ae2f4: mov             x2, x0
    // 0x7ae2f8: r0 = call 0x227fe4
    //     0x7ae2f8: bl              #0x227fe4
    // 0x7ae2fc: r0 = Null
    //     0x7ae2fc: mov             x0, NULL
    // 0x7ae300: r0 = ReturnAsyncNotFuture()
    //     0x7ae300: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ae304: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ae304: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ae308: b               #0x7ae244
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x516128, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, U) {
    // ** addr: 0x5161ec, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x516330, size: -0x1
  }
}

// class id: 3821, size: 0xc, field offset: 0xc
//   const constructor, 
class Ibb extends oI {
}

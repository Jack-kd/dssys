// lib: , url: VIi

// class id: 1049335, size: 0x8
class :: {
}

// class id: 808, size: 0x10, field offset: 0x8
//   const constructor, 
class _tJa extends Object {
}

// class id: 809, size: 0x10, field offset: 0x8
//   const constructor, 
class _sJa extends Object {
}

// class id: 812, size: 0x20, field offset: 0x8
class qJa extends rJa {

  static late final W<String, _sJa> Rdc; // offset: 0x104c
  static late final W<String, int> nsb; // offset: 0x1050
  static late final Finalizer<_tJa> _yvf; // offset: 0x1048

  [closure] static Future<void> <anonymous closure>(dynamic, _tJa) async {
    // ** addr: 0x79b13c, size: 0x1e4
    // 0x79b13c: EnterFrame
    //     0x79b13c: stp             fp, lr, [SP, #-0x10]!
    //     0x79b140: mov             fp, SP
    // 0x79b144: AllocStack(0x88)
    //     0x79b144: sub             SP, SP, #0x88
    // 0x79b148: SetupParameters(dynamic _ /* r0 */, dynamic _ /* r1, fp-0x80 */)
    //     0x79b148: stur            NULL, [fp, #-8]
    //     0x79b14c: movz            x2, #0
    //     0x79b150: add             x0, fp, w2, sxtw #2
    //     0x79b154: ldr             x0, [x0, #0x18]
    //     0x79b158: add             x1, fp, w2, sxtw #2
    //     0x79b15c: ldr             x1, [x1, #0x10]
    //     0x79b160: stur            x1, [fp, #-0x80]
    //     0x79b164: ldur            w3, [x0, #0x17]
    //     0x79b168: add             x3, x3, HEAP, lsl #32
    //     0x79b16c: stur            x3, [fp, #-0x78]
    // 0x79b170: CheckStackOverflow
    //     0x79b170: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x79b174: cmp             SP, x16
    //     0x79b178: b.ls            #0x79b318
    // 0x79b17c: InitAsync() -> Future<void?>
    //     0x79b17c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79b180: bl              #0x74ada8  ; InitAsyncStub
    // 0x79b184: ldur            x0, [fp, #-0x80]
    // 0x79b188: LoadField: r2 = r0->field_7
    //     0x79b188: ldur            w2, [x0, #7]
    // 0x79b18c: DecompressPointer r2
    //     0x79b18c: add             x2, x2, HEAP, lsl #32
    // 0x79b190: stur            x2, [fp, #-0x88]
    // 0x79b194: r0 = LoadStaticField(0x1050)
    //     0x79b194: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x79b198: ldr             x0, [x0, #0x20a0]
    // 0x79b19c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79b1a0: cmp             w0, w16
    // 0x79b1a4: b.ne            #0x79b1b0
    // 0x79b1a8: r2 = nsb
    //     0x79b1a8: ldr             x2, [PP, #0x7d30]  ; [pp+0x7d30] Field <qJa.nsb>: static late final (offset: 0x1050)
    // 0x79b1ac: r0 = InitLateFinalStaticField()
    //     0x79b1ac: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x79b1b0: mov             x1, x0
    // 0x79b1b4: ldur            x2, [fp, #-0x88]
    // 0x79b1b8: stur            x0, [fp, #-0x80]
    // 0x79b1bc: r0 = call 0x5f0864
    //     0x79b1bc: bl              #0x5f0864
    // 0x79b1c0: cmp             w0, NULL
    // 0x79b1c4: b.ne            #0x79b1d0
    // 0x79b1c8: r0 = 0
    //     0x79b1c8: movz            x0, #0
    // 0x79b1cc: b               #0x79b1e0
    // 0x79b1d0: r1 = LoadInt32Instr(r0)
    //     0x79b1d0: sbfx            x1, x0, #1, #0x1f
    //     0x79b1d4: tbz             w0, #0, #0x79b1dc
    //     0x79b1d8: ldur            x1, [x0, #7]
    // 0x79b1dc: mov             x0, x1
    // 0x79b1e0: sub             x2, x0, #1
    // 0x79b1e4: r0 = BoxInt64Instr(r2)
    //     0x79b1e4: sbfiz           x0, x2, #1, #0x1f
    //     0x79b1e8: cmp             x2, x0, asr #1
    //     0x79b1ec: b.eq            #0x79b1f8
    //     0x79b1f0: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x79b1f4: stur            x2, [x0, #7]
    // 0x79b1f8: mov             x1, x0
    // 0x79b1fc: r2 = 0
    //     0x79b1fc: movz            x2, #0
    // 0x79b200: r3 = 4294967296
    //     0x79b200: ldr             x3, [PP, #0x7d38]  ; [pp+0x7d38] 0x100000000
    // 0x79b204: r0 = call 0x36fc50
    //     0x79b204: bl              #0x36fc50
    // 0x79b208: ldur            x1, [fp, #-0x80]
    // 0x79b20c: ldur            x2, [fp, #-0x88]
    // 0x79b210: mov             x3, x0
    // 0x79b214: r0 = call 0x69e1e8
    //     0x79b214: bl              #0x69e1e8
    // 0x79b218: ldur            x1, [fp, #-0x80]
    // 0x79b21c: ldur            x2, [fp, #-0x88]
    // 0x79b220: r0 = call 0x5f0864
    //     0x79b220: bl              #0x5f0864
    // 0x79b224: cbnz            w0, #0x79b250
    // 0x79b228: r0 = LoadStaticField(0x104c)
    //     0x79b228: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x79b22c: ldr             x0, [x0, #0x2098]
    // 0x79b230: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79b234: cmp             w0, w16
    // 0x79b238: b.ne            #0x79b244
    // 0x79b23c: r2 = Rdc
    //     0x79b23c: ldr             x2, [PP, #0x7d28]  ; [pp+0x7d28] Field <qJa.Rdc>: static late final (offset: 0x104c)
    // 0x79b240: r0 = InitLateFinalStaticField()
    //     0x79b240: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x79b244: mov             x1, x0
    // 0x79b248: ldur            x2, [fp, #-0x88]
    // 0x79b24c: r0 = call 0x693ae0
    //     0x79b24c: bl              #0x693ae0
    // 0x79b250: ldur            x1, [fp, #-0x88]
    // 0x79b254: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x79b254: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x79b258: r0 = call 0x243498
    //     0x79b258: bl              #0x243498
    // 0x79b25c: mov             x3, x0
    // 0x79b260: stur            x3, [fp, #-0x80]
    // 0x79b264: r0 = LoadClassIdInstr(r3)
    //     0x79b264: ldur            x0, [x3, #-1]
    //     0x79b268: ubfx            x0, x0, #0xc, #0x14
    // 0x79b26c: mov             x1, x3
    // 0x79b270: r2 = "FD"
    //     0x79b270: ldr             x2, [PP, #0x7d80]  ; [pp+0x7d80] "FD"
    // 0x79b274: r0 = GDT[cid_x0 + -0xf45]()
    //     0x79b274: sub             lr, x0, #0xf45
    //     0x79b278: ldr             lr, [x21, lr, lsl #3]
    //     0x79b27c: blr             lr
    // 0x79b280: tbnz            w0, #4, #0x79b310
    // 0x79b284: ldur            x2, [fp, #-0x80]
    // 0x79b288: r0 = LoadClassIdInstr(r2)
    //     0x79b288: ldur            x0, [x2, #-1]
    //     0x79b28c: ubfx            x0, x0, #0xc, #0x14
    // 0x79b290: mov             x1, x2
    // 0x79b294: r0 = GDT[cid_x0 + -0xce3]()
    //     0x79b294: sub             lr, x0, #0xce3
    //     0x79b298: ldr             lr, [x21, lr, lsl #3]
    //     0x79b29c: blr             lr
    // 0x79b2a0: mov             x1, x0
    // 0x79b2a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x79b2a4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x79b2a8: r0 = call 0x235164
    //     0x79b2a8: bl              #0x235164
    // 0x79b2ac: cmp             x0, #0
    // 0x79b2b0: b.le            #0x79b310
    // 0x79b2b4: ldur            x1, [fp, #-0x88]
    // 0x79b2b8: r0 = __unknown_function__()
    //     0x79b2b8: bl              #0x79b320  ; [] ::__unknown_function__
    // 0x79b2bc: mov             x1, x0
    // 0x79b2c0: stur            x1, [fp, #-0x80]
    // 0x79b2c4: r0 = Await()
    //     0x79b2c4: bl              #0x74ab64  ; AwaitStub
    // 0x79b2c8: b               #0x79b310
    // 0x79b2cc: sub             SP, fp, #0x88
    // 0x79b2d0: mov             x16, x1
    // 0x79b2d4: mov             x1, x0
    // 0x79b2d8: mov             x0, x16
    // 0x79b2dc: stur            x0, [fp, #-0x78]
    // 0x79b2e0: r0 = call 0x465480
    //     0x79b2e0: bl              #0x465480
    // 0x79b2e4: ldur            x1, [fp, #-0x78]
    // 0x79b2e8: r0 = call 0x465480
    //     0x79b2e8: bl              #0x465480
    // 0x79b2ec: b               #0x79b310
    // 0x79b2f0: sub             SP, fp, #0x88
    // 0x79b2f4: mov             x16, x1
    // 0x79b2f8: mov             x1, x0
    // 0x79b2fc: mov             x0, x16
    // 0x79b300: stur            x0, [fp, #-0x78]
    // 0x79b304: r0 = call 0x465480
    //     0x79b304: bl              #0x465480
    // 0x79b308: ldur            x1, [fp, #-0x78]
    // 0x79b30c: r0 = call 0x465480
    //     0x79b30c: bl              #0x465480
    // 0x79b310: r0 = Null
    //     0x79b310: mov             x0, NULL
    // 0x79b314: r0 = ReturnAsyncNotFuture()
    //     0x79b314: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x79b318: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x79b318: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x79b31c: b               #0x79b17c
  }
  static Finalizer<_tJa> _yvf() {
    // ** addr: 0x49b768, size: -0x1
  }
}

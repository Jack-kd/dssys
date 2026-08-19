// lib: , url: VWi

// class id: 1050049, size: 0x8
class :: {
}

// class id: 3608, size: 0x1c, field offset: 0x18
class _Tfb extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7a5f34, size: 0xec
    // 0x7a5f34: EnterFrame
    //     0x7a5f34: stp             fp, lr, [SP, #-0x10]!
    //     0x7a5f38: mov             fp, SP
    // 0x7a5f3c: AllocStack(0x30)
    //     0x7a5f3c: sub             SP, SP, #0x30
    // 0x7a5f40: SetupParameters(_Tfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a5f40: stur            NULL, [fp, #-8]
    //     0x7a5f44: movz            x0, #0
    //     0x7a5f48: add             x1, fp, w0, sxtw #2
    //     0x7a5f4c: ldr             x1, [x1, #0x18]
    //     0x7a5f50: add             x2, fp, w0, sxtw #2
    //     0x7a5f54: ldr             x2, [x2, #0x10]
    //     0x7a5f58: stur            x2, [fp, #-0x18]
    //     0x7a5f5c: ldur            w3, [x1, #0x17]
    //     0x7a5f60: add             x3, x3, HEAP, lsl #32
    //     0x7a5f64: stur            x3, [fp, #-0x10]
    // 0x7a5f68: CheckStackOverflow
    //     0x7a5f68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a5f6c: cmp             SP, x16
    //     0x7a5f70: b.ls            #0x7a6018
    // 0x7a5f74: InitAsync() -> Future<void?>
    //     0x7a5f74: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a5f78: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a5f7c: ldur            x0, [fp, #-0x10]
    // 0x7a5f80: LoadField: r1 = r0->field_f
    //     0x7a5f80: ldur            w1, [x0, #0xf]
    // 0x7a5f84: DecompressPointer r1
    //     0x7a5f84: add             x1, x1, HEAP, lsl #32
    // 0x7a5f88: LoadField: r0 = r1->field_13
    //     0x7a5f88: ldur            w0, [x1, #0x13]
    // 0x7a5f8c: DecompressPointer r0
    //     0x7a5f8c: add             x0, x0, HEAP, lsl #32
    // 0x7a5f90: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a5f94: cmp             w0, w16
    // 0x7a5f98: b.ne            #0x7a5fa8
    // 0x7a5f9c: r2 = nsb
    //     0x7a5f9c: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x7a5fa0: ldr             x2, [x2, #0xf28]
    // 0x7a5fa4: r0 = InitLateFinalInstanceField()
    //     0x7a5fa4: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7a5fa8: stur            x0, [fp, #-0x10]
    // 0x7a5fac: r0 = LoadStaticField(0x13a0)
    //     0x7a5fac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a5fb0: ldr             x0, [x0, #0x2740]
    // 0x7a5fb4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a5fb8: cmp             w0, w16
    // 0x7a5fbc: b.ne            #0x7a5fcc
    // 0x7a5fc0: r2 = fsg
    //     0x7a5fc0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7a5fc4: ldr             x2, [x2, #0x830]
    // 0x7a5fc8: r0 = InitLateFinalStaticField()
    //     0x7a5fc8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7a5fcc: mov             x1, x0
    // 0x7a5fd0: r0 = call 0x263610
    //     0x7a5fd0: bl              #0x263610
    // 0x7a5fd4: r16 = <OZa>
    //     0x7a5fd4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11928] TypeArguments: <OZa>
    //     0x7a5fd8: ldr             x16, [x16, #0x928]
    // 0x7a5fdc: ldur            lr, [fp, #-0x10]
    // 0x7a5fe0: stp             lr, x16, [SP, #8]
    // 0x7a5fe4: str             x0, [SP]
    // 0x7a5fe8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7a5fe8: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7a5fec: r0 = call 0x263414
    //     0x7a5fec: bl              #0x263414
    // 0x7a5ff0: mov             x1, x0
    // 0x7a5ff4: r0 = call 0x403f60
    //     0x7a5ff4: bl              #0x403f60
    // 0x7a5ff8: ldur            x16, [fp, #-0x18]
    // 0x7a5ffc: str             x16, [SP]
    // 0x7a6000: ldur            x0, [fp, #-0x18]
    // 0x7a6004: ClosureCall
    //     0x7a6004: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7a6008: ldur            x2, [x0, #0x1f]
    //     0x7a600c: blr             x2
    // 0x7a6010: r0 = Null
    //     0x7a6010: mov             x0, NULL
    // 0x7a6014: r0 = ReturnAsyncNotFuture()
    //     0x7a6014: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a6018: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a6018: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a601c: b               #0x7a5f74
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7a602c, size: 0x8c
    // 0x7a602c: EnterFrame
    //     0x7a602c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a6030: mov             fp, SP
    // 0x7a6034: AllocStack(0x28)
    //     0x7a6034: sub             SP, SP, #0x28
    // 0x7a6038: SetupParameters(_Tfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a6038: stur            NULL, [fp, #-8]
    //     0x7a603c: movz            x0, #0
    //     0x7a6040: add             x1, fp, w0, sxtw #2
    //     0x7a6044: ldr             x1, [x1, #0x18]
    //     0x7a6048: add             x2, fp, w0, sxtw #2
    //     0x7a604c: ldr             x2, [x2, #0x10]
    //     0x7a6050: stur            x2, [fp, #-0x18]
    //     0x7a6054: ldur            w3, [x1, #0x17]
    //     0x7a6058: add             x3, x3, HEAP, lsl #32
    //     0x7a605c: stur            x3, [fp, #-0x10]
    // 0x7a6060: CheckStackOverflow
    //     0x7a6060: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a6064: cmp             SP, x16
    //     0x7a6068: b.ls            #0x7a60b0
    // 0x7a606c: InitAsync() -> Future<void?>
    //     0x7a606c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a6070: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a6074: ldur            x0, [fp, #-0x10]
    // 0x7a6078: LoadField: r1 = r0->field_f
    //     0x7a6078: ldur            w1, [x0, #0xf]
    // 0x7a607c: DecompressPointer r1
    //     0x7a607c: add             x1, x1, HEAP, lsl #32
    // 0x7a6080: r0 = __unknown_function__()
    //     0x7a6080: bl              #0x7a60b8  ; [] ::__unknown_function__
    // 0x7a6084: mov             x1, x0
    // 0x7a6088: stur            x1, [fp, #-0x20]
    // 0x7a608c: r0 = Await()
    //     0x7a608c: bl              #0x74ab64  ; AwaitStub
    // 0x7a6090: ldur            x16, [fp, #-0x18]
    // 0x7a6094: str             x16, [SP]
    // 0x7a6098: ldur            x0, [fp, #-0x18]
    // 0x7a609c: ClosureCall
    //     0x7a609c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7a60a0: ldur            x2, [x0, #0x1f]
    //     0x7a60a4: blr             x2
    // 0x7a60a8: r0 = Null
    //     0x7a60a8: mov             x0, NULL
    // 0x7a60ac: r0 = ReturnAsyncNotFuture()
    //     0x7a60ac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a60b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a60b0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a60b4: b               #0x7a606c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d24cc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d2440, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d155c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4cb7b0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4cb6d4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d1534, size: -0x1
  }
  [closure] void _OGg(dynamic) {
    // ** addr: 0x4cb14c, size: -0x1
  }
}

// class id: 3869, size: 0xc, field offset: 0xc
//   const constructor, 
class Sfb extends REa {
}

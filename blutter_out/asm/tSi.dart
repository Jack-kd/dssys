// lib: , url: tSi

// class id: 1049801, size: 0x8
class :: {
}

// class id: 3656, size: 0x24, field offset: 0x18
class _Cab extends Vt<dynamic> {

  late final zZa rvg; // offset: 0x20

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78feac, size: 0xd4
    // 0x78feac: EnterFrame
    //     0x78feac: stp             fp, lr, [SP, #-0x10]!
    //     0x78feb0: mov             fp, SP
    // 0x78feb4: AllocStack(0x30)
    //     0x78feb4: sub             SP, SP, #0x30
    // 0x78feb8: SetupParameters(_Cab this /* r1 */)
    //     0x78feb8: stur            NULL, [fp, #-8]
    //     0x78febc: movz            x0, #0
    //     0x78fec0: add             x1, fp, w0, sxtw #2
    //     0x78fec4: ldr             x1, [x1, #0x10]
    //     0x78fec8: ldur            w2, [x1, #0x17]
    //     0x78fecc: add             x2, x2, HEAP, lsl #32
    //     0x78fed0: stur            x2, [fp, #-0x10]
    // 0x78fed4: CheckStackOverflow
    //     0x78fed4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78fed8: cmp             SP, x16
    //     0x78fedc: b.ls            #0x78ff78
    // 0x78fee0: InitAsync() -> Future<void?>
    //     0x78fee0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78fee4: bl              #0x74ada8  ; InitAsyncStub
    // 0x78fee8: ldur            x0, [fp, #-0x10]
    // 0x78feec: LoadField: r1 = r0->field_f
    //     0x78feec: ldur            w1, [x0, #0xf]
    // 0x78fef0: DecompressPointer r1
    //     0x78fef0: add             x1, x1, HEAP, lsl #32
    // 0x78fef4: LoadField: r0 = r1->field_13
    //     0x78fef4: ldur            w0, [x1, #0x13]
    // 0x78fef8: DecompressPointer r0
    //     0x78fef8: add             x0, x0, HEAP, lsl #32
    // 0x78fefc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78ff00: cmp             w0, w16
    // 0x78ff04: b.ne            #0x78ff14
    // 0x78ff08: r2 = nsb
    //     0x78ff08: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x78ff0c: ldr             x2, [x2, #0xf28]
    // 0x78ff10: r0 = InitLateFinalInstanceField()
    //     0x78ff10: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x78ff14: stur            x0, [fp, #-0x18]
    // 0x78ff18: r0 = LoadStaticField(0x1388)
    //     0x78ff18: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x78ff1c: ldr             x0, [x0, #0x2710]
    // 0x78ff20: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78ff24: cmp             w0, w16
    // 0x78ff28: b.ne            #0x78ff38
    // 0x78ff2c: r2 = zrg
    //     0x78ff2c: add             x2, PP, #0x17, lsl #12  ; [pp+0x173b8] Field <::.zrg>: static late final (offset: 0x1388)
    //     0x78ff30: ldr             x2, [x2, #0x3b8]
    // 0x78ff34: r0 = InitLateFinalStaticField()
    //     0x78ff34: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x78ff38: mov             x1, x0
    // 0x78ff3c: r0 = call 0x263610
    //     0x78ff3c: bl              #0x263610
    // 0x78ff40: r16 = <zZa>
    //     0x78ff40: add             x16, PP, #0x17, lsl #12  ; [pp+0x173c0] TypeArguments: <zZa>
    //     0x78ff44: ldr             x16, [x16, #0x3c0]
    // 0x78ff48: ldur            lr, [fp, #-0x18]
    // 0x78ff4c: stp             lr, x16, [SP, #8]
    // 0x78ff50: str             x0, [SP]
    // 0x78ff54: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78ff54: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78ff58: r0 = call 0x263414
    //     0x78ff58: bl              #0x263414
    // 0x78ff5c: mov             x1, x0
    // 0x78ff60: r0 = __unknown_function__()
    //     0x78ff60: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x78ff64: mov             x1, x0
    // 0x78ff68: stur            x1, [fp, #-0x18]
    // 0x78ff6c: r0 = Await()
    //     0x78ff6c: bl              #0x74ab64  ; AwaitStub
    // 0x78ff70: r0 = Null
    //     0x78ff70: mov             x0, NULL
    // 0x78ff74: r0 = ReturnAsyncNotFuture()
    //     0x78ff74: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78ff78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78ff78: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78ff7c: b               #0x78fee0
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x792508, size: 0x8c
    // 0x792508: EnterFrame
    //     0x792508: stp             fp, lr, [SP, #-0x10]!
    //     0x79250c: mov             fp, SP
    // 0x792510: AllocStack(0x28)
    //     0x792510: sub             SP, SP, #0x28
    // 0x792514: SetupParameters(_Cab this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x792514: stur            NULL, [fp, #-8]
    //     0x792518: movz            x0, #0
    //     0x79251c: add             x1, fp, w0, sxtw #2
    //     0x792520: ldr             x1, [x1, #0x18]
    //     0x792524: add             x2, fp, w0, sxtw #2
    //     0x792528: ldr             x2, [x2, #0x10]
    //     0x79252c: stur            x2, [fp, #-0x18]
    //     0x792530: ldur            w3, [x1, #0x17]
    //     0x792534: add             x3, x3, HEAP, lsl #32
    //     0x792538: stur            x3, [fp, #-0x10]
    // 0x79253c: CheckStackOverflow
    //     0x79253c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x792540: cmp             SP, x16
    //     0x792544: b.ls            #0x79258c
    // 0x792548: InitAsync() -> Future<void?>
    //     0x792548: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79254c: bl              #0x74ada8  ; InitAsyncStub
    // 0x792550: ldur            x0, [fp, #-0x10]
    // 0x792554: LoadField: r1 = r0->field_f
    //     0x792554: ldur            w1, [x0, #0xf]
    // 0x792558: DecompressPointer r1
    //     0x792558: add             x1, x1, HEAP, lsl #32
    // 0x79255c: r0 = __unknown_function__()
    //     0x79255c: bl              #0x792594  ; [] ::__unknown_function__
    // 0x792560: mov             x1, x0
    // 0x792564: stur            x1, [fp, #-0x20]
    // 0x792568: r0 = Await()
    //     0x792568: bl              #0x74ab64  ; AwaitStub
    // 0x79256c: ldur            x16, [fp, #-0x18]
    // 0x792570: str             x16, [SP]
    // 0x792574: ldur            x0, [fp, #-0x18]
    // 0x792578: ClosureCall
    //     0x792578: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x79257c: ldur            x2, [x0, #0x1f]
    //     0x792580: blr             x2
    // 0x792584: r0 = Null
    //     0x792584: mov             x0, NULL
    // 0x792588: r0 = ReturnAsyncNotFuture()
    //     0x792588: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x79258c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x79258c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x792590: b               #0x792548
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x476a3c, size: -0x1
  }
  [closure] Map<String, dynamic> <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x4767e0, size: -0x1
  }
  [closure] void _uvg(dynamic) {
    // ** addr: 0x476744, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x476480, size: -0x1
  }
  [closure] Future<void> _zvg(dynamic) {
    // ** addr: 0x4763ac, size: -0x1
  }
  [closure] List<KX> <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x475f18, size: -0x1
  }
  [closure] Dab <anonymous closure>(dynamic, Tna, int) {
    // ** addr: 0x4760e8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4762c0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4701c4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x472f2c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x476578, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x476628, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4732f0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4733d8, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Jxa) {
    // ** addr: 0x4769d0, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x475a2c, size: -0x1
  }
}

// class id: 3929, size: 0xc, field offset: 0xc
//   const constructor, 
class Bab extends REa {
}

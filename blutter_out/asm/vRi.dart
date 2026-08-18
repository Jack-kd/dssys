// lib: , url: vRi

// class id: 1049749, size: 0x8
class :: {

  static late final tSa<wZa> Nrg; // offset: 0x1390

  [closure] static wZa <anonymous closure>(dynamic, URa) {
    // ** addr: 0x4680a0, size: -0x1
  }
  static tSa<wZa> Nrg() {
    // ** addr: 0x468028, size: -0x1
  }
}

// class id: 240, size: 0xc, field offset: 0x8
class wZa extends Object {

  late kTa iFe; // offset: 0x8

  [closure] Future<void> <anonymous closure>(dynamic, kTa, int, int) async {
    // ** addr: 0x7c5510, size: 0x4c
    // 0x7c5510: EnterFrame
    //     0x7c5510: stp             fp, lr, [SP, #-0x10]!
    //     0x7c5514: mov             fp, SP
    // 0x7c5518: AllocStack(0x10)
    //     0x7c5518: sub             SP, SP, #0x10
    // 0x7c551c: SetupParameters(wZa this /* r1 */)
    //     0x7c551c: stur            NULL, [fp, #-8]
    //     0x7c5520: movz            x0, #0
    //     0x7c5524: add             x1, fp, w0, sxtw #2
    //     0x7c5528: ldr             x1, [x1, #0x28]
    //     0x7c552c: ldur            w2, [x1, #0x17]
    //     0x7c5530: add             x2, x2, HEAP, lsl #32
    //     0x7c5534: stur            x2, [fp, #-0x10]
    // 0x7c5538: CheckStackOverflow
    //     0x7c5538: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c553c: cmp             SP, x16
    //     0x7c5540: b.ls            #0x7c5554
    // 0x7c5544: InitAsync() -> Future<void?>
    //     0x7c5544: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c5548: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c554c: r0 = Null
    //     0x7c554c: mov             x0, NULL
    // 0x7c5550: r0 = ReturnAsyncNotFuture()
    //     0x7c5550: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c5554: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c5554: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c5558: b               #0x7c5544
  }
  [closure] Future<void> <anonymous closure>(dynamic, kTa, int) async {
    // ** addr: 0x7c555c, size: 0x90
    // 0x7c555c: EnterFrame
    //     0x7c555c: stp             fp, lr, [SP, #-0x10]!
    //     0x7c5560: mov             fp, SP
    // 0x7c5564: AllocStack(0x18)
    //     0x7c5564: sub             SP, SP, #0x18
    // 0x7c5568: SetupParameters(wZa this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c5568: stur            NULL, [fp, #-8]
    //     0x7c556c: movz            x0, #0
    //     0x7c5570: add             x1, fp, w0, sxtw #2
    //     0x7c5574: ldr             x1, [x1, #0x20]
    //     0x7c5578: add             x2, fp, w0, sxtw #2
    //     0x7c557c: ldr             x2, [x2, #0x18]
    //     0x7c5580: stur            x2, [fp, #-0x18]
    //     0x7c5584: ldur            w3, [x1, #0x17]
    //     0x7c5588: add             x3, x3, HEAP, lsl #32
    //     0x7c558c: stur            x3, [fp, #-0x10]
    // 0x7c5590: CheckStackOverflow
    //     0x7c5590: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c5594: cmp             SP, x16
    //     0x7c5598: b.ls            #0x7c55e4
    // 0x7c559c: InitAsync() -> Future<void?>
    //     0x7c559c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c55a0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c55a4: ldur            x1, [fp, #-0x18]
    // 0x7c55a8: r0 = call 0x655fec
    //     0x7c55a8: bl              #0x655fec
    // 0x7c55ac: mov             x3, x0
    // 0x7c55b0: ldur            x0, [fp, #-0x10]
    // 0x7c55b4: stur            x3, [fp, #-0x18]
    // 0x7c55b8: LoadField: r1 = r0->field_f
    //     0x7c55b8: ldur            w1, [x0, #0xf]
    // 0x7c55bc: DecompressPointer r1
    //     0x7c55bc: add             x1, x1, HEAP, lsl #32
    // 0x7c55c0: mov             x2, x3
    // 0x7c55c4: r0 = call 0x655c4c
    //     0x7c55c4: bl              #0x655c4c
    // 0x7c55c8: ldur            x1, [fp, #-0x18]
    // 0x7c55cc: r0 = call 0x655958
    //     0x7c55cc: bl              #0x655958
    // 0x7c55d0: mov             x1, x0
    // 0x7c55d4: stur            x1, [fp, #-0x18]
    // 0x7c55d8: r0 = Await()
    //     0x7c55d8: bl              #0x74ab64  ; AwaitStub
    // 0x7c55dc: r0 = Null
    //     0x7c55dc: mov             x0, NULL
    // 0x7c55e0: r0 = ReturnAsyncNotFuture()
    //     0x7c55e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c55e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c55e4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c55e8: b               #0x7c559c
  }
}

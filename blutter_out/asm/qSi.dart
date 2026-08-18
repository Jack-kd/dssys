// lib: , url: qSi

// class id: 1049798, size: 0x8
class :: {
}

// class id: 4014, size: 0x1c, field offset: 0xc
//   const constructor, 
class xab extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, Tna) async {
    // ** addr: 0x7bc838, size: 0x84
    // 0x7bc838: EnterFrame
    //     0x7bc838: stp             fp, lr, [SP, #-0x10]!
    //     0x7bc83c: mov             fp, SP
    // 0x7bc840: AllocStack(0x20)
    //     0x7bc840: sub             SP, SP, #0x20
    // 0x7bc844: SetupParameters(xab this /* r1 */)
    //     0x7bc844: stur            NULL, [fp, #-8]
    //     0x7bc848: movz            x0, #0
    //     0x7bc84c: add             x1, fp, w0, sxtw #2
    //     0x7bc850: ldr             x1, [x1, #0x18]
    //     0x7bc854: ldur            w2, [x1, #0x17]
    //     0x7bc858: add             x2, x2, HEAP, lsl #32
    //     0x7bc85c: stur            x2, [fp, #-0x10]
    // 0x7bc860: CheckStackOverflow
    //     0x7bc860: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bc864: cmp             SP, x16
    //     0x7bc868: b.ls            #0x7bc8b4
    // 0x7bc86c: InitAsync() -> Future<void?>
    //     0x7bc86c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bc870: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bc874: ldur            x0, [fp, #-0x10]
    // 0x7bc878: LoadField: r2 = r0->field_f
    //     0x7bc878: ldur            w2, [x0, #0xf]
    // 0x7bc87c: DecompressPointer r2
    //     0x7bc87c: add             x2, x2, HEAP, lsl #32
    // 0x7bc880: mov             x1, x2
    // 0x7bc884: stur            x2, [fp, #-0x18]
    // 0x7bc888: r0 = __unknown_function__()
    //     0x7bc888: bl              #0x791bcc  ; [] ::__unknown_function__
    // 0x7bc88c: mov             x1, x0
    // 0x7bc890: stur            x1, [fp, #-0x20]
    // 0x7bc894: r0 = Await()
    //     0x7bc894: bl              #0x74ab64  ; AwaitStub
    // 0x7bc898: ldur            x1, [fp, #-0x18]
    // 0x7bc89c: r0 = __unknown_function__()
    //     0x7bc89c: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7bc8a0: mov             x1, x0
    // 0x7bc8a4: stur            x1, [fp, #-0x18]
    // 0x7bc8a8: r0 = Await()
    //     0x7bc8a8: bl              #0x74ab64  ; AwaitStub
    // 0x7bc8ac: r0 = Null
    //     0x7bc8ac: mov             x0, NULL
    // 0x7bc8b0: r0 = ReturnAsyncNotFuture()
    //     0x7bc8b0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bc8b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bc8b4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bc8b8: b               #0x7bc86c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x617a14, size: -0x1
  }
}

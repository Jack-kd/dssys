// lib: , url: Hvi

// class id: 1049889, size: 0x8
class :: {
}

// class id: 3676, size: 0x24, field offset: 0x1c
class _Qcb extends _mB {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78a83c, size: 0xe8
    // 0x78a83c: EnterFrame
    //     0x78a83c: stp             fp, lr, [SP, #-0x10]!
    //     0x78a840: mov             fp, SP
    // 0x78a844: AllocStack(0x40)
    //     0x78a844: sub             SP, SP, #0x40
    // 0x78a848: SetupParameters(_Qcb this /* r1 */)
    //     0x78a848: stur            NULL, [fp, #-8]
    //     0x78a84c: movz            x0, #0
    //     0x78a850: add             x1, fp, w0, sxtw #2
    //     0x78a854: ldr             x1, [x1, #0x10]
    //     0x78a858: ldur            w2, [x1, #0x17]
    //     0x78a85c: add             x2, x2, HEAP, lsl #32
    //     0x78a860: stur            x2, [fp, #-0x10]
    // 0x78a864: CheckStackOverflow
    //     0x78a864: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78a868: cmp             SP, x16
    //     0x78a86c: b.ls            #0x78a914
    // 0x78a870: InitAsync() -> Future<void?>
    //     0x78a870: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78a874: bl              #0x74ada8  ; InitAsyncStub
    // 0x78a878: ldur            x0, [fp, #-0x10]
    // 0x78a87c: LoadField: r1 = r0->field_f
    //     0x78a87c: ldur            w1, [x0, #0xf]
    // 0x78a880: DecompressPointer r1
    //     0x78a880: add             x1, x1, HEAP, lsl #32
    // 0x78a884: LoadField: r2 = r1->field_b
    //     0x78a884: ldur            w2, [x1, #0xb]
    // 0x78a888: DecompressPointer r2
    //     0x78a888: add             x2, x2, HEAP, lsl #32
    // 0x78a88c: stur            x2, [fp, #-0x20]
    // 0x78a890: cmp             w2, NULL
    // 0x78a894: b.eq            #0x78a91c
    // 0x78a898: LoadField: r3 = r1->field_f
    //     0x78a898: ldur            w3, [x1, #0xf]
    // 0x78a89c: DecompressPointer r3
    //     0x78a89c: add             x3, x3, HEAP, lsl #32
    // 0x78a8a0: stur            x3, [fp, #-0x18]
    // 0x78a8a4: cmp             w3, NULL
    // 0x78a8a8: b.eq            #0x78a920
    // 0x78a8ac: r0 = LoadStaticField(0x1488)
    //     0x78a8ac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x78a8b0: ldr             x0, [x0, #0x2910]
    // 0x78a8b4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78a8b8: cmp             w0, w16
    // 0x78a8bc: b.ne            #0x78a8cc
    // 0x78a8c0: r2 = rAg
    //     0x78a8c0: add             x2, PP, #0x2a, lsl #12  ; [pp+0x2a560] Field <::.rAg>: static late final (offset: 0x1488)
    //     0x78a8c4: ldr             x2, [x2, #0x560]
    // 0x78a8c8: r0 = InitLateFinalStaticField()
    //     0x78a8c8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x78a8cc: ldur            x1, [fp, #-0x10]
    // 0x78a8d0: LoadField: r2 = r1->field_13
    //     0x78a8d0: ldur            w2, [x1, #0x13]
    // 0x78a8d4: DecompressPointer r2
    //     0x78a8d4: add             x2, x2, HEAP, lsl #32
    // 0x78a8d8: ldur            x3, [fp, #-0x20]
    // 0x78a8dc: LoadField: r4 = r3->field_f
    //     0x78a8dc: ldur            w4, [x3, #0xf]
    // 0x78a8e0: DecompressPointer r4
    //     0x78a8e0: add             x4, x4, HEAP, lsl #32
    // 0x78a8e4: ldur            x16, [fp, #-0x18]
    // 0x78a8e8: stp             x16, x4, [SP, #0x10]
    // 0x78a8ec: stp             x2, x0, [SP]
    // 0x78a8f0: mov             x0, x4
    // 0x78a8f4: ClosureCall
    //     0x78a8f4: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x78a8f8: ldur            x2, [x0, #0x1f]
    //     0x78a8fc: blr             x2
    // 0x78a900: mov             x1, x0
    // 0x78a904: stur            x1, [fp, #-0x18]
    // 0x78a908: r0 = Await()
    //     0x78a908: bl              #0x74ab64  ; AwaitStub
    // 0x78a90c: r0 = Null
    //     0x78a90c: mov             x0, NULL
    // 0x78a910: r0 = ReturnAsyncNotFuture()
    //     0x78a910: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78a914: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78a914: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78a918: b               #0x78a870
    // 0x78a91c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x78a91c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x78a920: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x78a920: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x459ce8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x45a85c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x45b490, size: -0x1
  }
}

// class id: 3913, size: 0x14, field offset: 0xc
//   const constructor, 
class nB extends REa {
}

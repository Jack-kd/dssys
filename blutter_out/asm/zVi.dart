// lib: , url: zVi

// class id: 1049970, size: 0x8
class :: {
}

// class id: 4189, size: 0x10, field offset: 0xc
//   const constructor, 
class xeb extends qI {

  [closure] Future<void> <anonymous closure>(dynamic, Tna, Mna<lr<oI>>, int) async {
    // ** addr: 0x776de0, size: 0xe8
    // 0x776de0: EnterFrame
    //     0x776de0: stp             fp, lr, [SP, #-0x10]!
    //     0x776de4: mov             fp, SP
    // 0x776de8: AllocStack(0x50)
    //     0x776de8: sub             SP, SP, #0x50
    // 0x776dec: SetupParameters(xeb this /* r1 */, dynamic _ /* r2, fp-0x28 */, dynamic _ /* r3, fp-0x20 */, dynamic _ /* r4, fp-0x18 */)
    //     0x776dec: stur            NULL, [fp, #-8]
    //     0x776df0: movz            x0, #0
    //     0x776df4: add             x1, fp, w0, sxtw #2
    //     0x776df8: ldr             x1, [x1, #0x28]
    //     0x776dfc: add             x2, fp, w0, sxtw #2
    //     0x776e00: ldr             x2, [x2, #0x20]
    //     0x776e04: stur            x2, [fp, #-0x28]
    //     0x776e08: add             x3, fp, w0, sxtw #2
    //     0x776e0c: ldr             x3, [x3, #0x18]
    //     0x776e10: stur            x3, [fp, #-0x20]
    //     0x776e14: add             x4, fp, w0, sxtw #2
    //     0x776e18: ldr             x4, [x4, #0x10]
    //     0x776e1c: stur            x4, [fp, #-0x18]
    //     0x776e20: ldur            w5, [x1, #0x17]
    //     0x776e24: add             x5, x5, HEAP, lsl #32
    //     0x776e28: stur            x5, [fp, #-0x10]
    // 0x776e2c: CheckStackOverflow
    //     0x776e2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x776e30: cmp             SP, x16
    //     0x776e34: b.ls            #0x776ec0
    // 0x776e38: InitAsync() -> Future<void?>
    //     0x776e38: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x776e3c: bl              #0x74ada8  ; InitAsyncStub
    // 0x776e40: ldur            x0, [fp, #-0x18]
    // 0x776e44: r1 = LoadInt32Instr(r0)
    //     0x776e44: sbfx            x1, x0, #1, #0x1f
    //     0x776e48: tbz             w0, #0, #0x776e50
    //     0x776e4c: ldur            x1, [x0, #7]
    // 0x776e50: stur            x1, [fp, #-0x30]
    // 0x776e54: r0 = Ucb()
    //     0x776e54: bl              #0x77724c  ; AllocateUcbStub -> Ucb (size=0x1c)
    // 0x776e58: mov             x3, x0
    // 0x776e5c: ldur            x0, [fp, #-0x30]
    // 0x776e60: stur            x3, [fp, #-0x10]
    // 0x776e64: StoreField: r3->field_b = r0
    //     0x776e64: stur            x0, [x3, #0xb]
    // 0x776e68: r1 = Function '<anonymous closure>':.
    //     0x776e68: add             x1, PP, #0x21, lsl #12  ; [pp+0x212f8] AnonymousClosure: (0x3bdbe8), in [zVi] xeb::<anonymous closure> (0x3bd658)
    //     0x776e6c: ldr             x1, [x1, #0x2f8]
    // 0x776e70: r2 = Null
    //     0x776e70: mov             x2, NULL
    // 0x776e74: r0 = AllocateClosure()
    //     0x776e74: bl              #0x7dd600  ; AllocateClosureStub
    // 0x776e78: mov             x1, x0
    // 0x776e7c: ldur            x0, [fp, #-0x10]
    // 0x776e80: StoreField: r0->field_13 = r1
    //     0x776e80: stur            w1, [x0, #0x13]
    // 0x776e84: r1 = Function '<anonymous closure>':.
    //     0x776e84: add             x1, PP, #0x21, lsl #12  ; [pp+0x21300] AnonymousClosure: (0x3bdb6c), of [zVi] xeb
    //     0x776e88: ldr             x1, [x1, #0x300]
    // 0x776e8c: r2 = Null
    //     0x776e8c: mov             x2, NULL
    // 0x776e90: r0 = AllocateClosure()
    //     0x776e90: bl              #0x7dd600  ; AllocateClosureStub
    // 0x776e94: mov             x1, x0
    // 0x776e98: ldur            x0, [fp, #-0x10]
    // 0x776e9c: ArrayStore: r0[0] = r1  ; List_4
    //     0x776e9c: stur            w1, [x0, #0x17]
    // 0x776ea0: stp             x0, NULL, [SP, #0x10]
    // 0x776ea4: ldur            x16, [fp, #-0x28]
    // 0x776ea8: ldur            lr, [fp, #-0x20]
    // 0x776eac: stp             lr, x16, [SP]
    // 0x776eb0: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x776eb0: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x776eb4: r0 = __unknown_function__()
    //     0x776eb4: bl              #0x776ec8  ; [] ::__unknown_function__
    // 0x776eb8: r0 = Null
    //     0x776eb8: mov             x0, NULL
    // 0x776ebc: r0 = ReturnAsyncNotFuture()
    //     0x776ebc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x776ec0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x776ec0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x776ec4: b               #0x776e38
  }
  [closure] Aeb <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3bdb6c, size: -0x1
  }
  [closure] la <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3be1b8, size: -0x1
  }
  [closure] nB <anonymous closure>(dynamic, nbb) {
    // ** addr: 0x3bd658, size: -0x1
  }
  [closure] nbb? <anonymous closure>(dynamic, VEa, int) {
    // ** addr: 0x3bdbe8, size: -0x1
  }
}

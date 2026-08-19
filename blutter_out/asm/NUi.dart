// lib: , url: NUi

// class id: 1049931, size: 0x8
class :: {
}

// class id: 4196, size: 0x10, field offset: 0xc
//   const constructor, 
class Vdb extends qI {

  [closure] Future<void> <anonymous closure>(dynamic, Tna, Mna<lr<oI>>, int) async {
    // ** addr: 0x776d40, size: 0x5c
    // 0x776d40: EnterFrame
    //     0x776d40: stp             fp, lr, [SP, #-0x10]!
    //     0x776d44: mov             fp, SP
    // 0x776d48: AllocStack(0x10)
    //     0x776d48: sub             SP, SP, #0x10
    // 0x776d4c: SetupParameters(Vdb this /* r1 */)
    //     0x776d4c: stur            NULL, [fp, #-8]
    //     0x776d50: movz            x0, #0
    //     0x776d54: add             x1, fp, w0, sxtw #2
    //     0x776d58: ldr             x1, [x1, #0x28]
    //     0x776d5c: ldur            w2, [x1, #0x17]
    //     0x776d60: add             x2, x2, HEAP, lsl #32
    //     0x776d64: stur            x2, [fp, #-0x10]
    // 0x776d68: CheckStackOverflow
    //     0x776d68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x776d6c: cmp             SP, x16
    //     0x776d70: b.ls            #0x776d94
    // 0x776d74: InitAsync() -> Future<void?>
    //     0x776d74: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x776d78: bl              #0x74ada8  ; InitAsyncStub
    // 0x776d7c: r0 = call 0x3ba280
    //     0x776d7c: bl              #0x3ba280
    // 0x776d80: mov             x1, x0
    // 0x776d84: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x776d84: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x776d88: r0 = call 0x3a5cc4
    //     0x776d88: bl              #0x3a5cc4
    // 0x776d8c: r0 = Null
    //     0x776d8c: mov             x0, NULL
    // 0x776d90: r0 = ReturnAsyncNotFuture()
    //     0x776d90: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x776d94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x776d94: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x776d98: b               #0x776d74
  }
  [closure] nB <anonymous closure>(dynamic, nbb) {
    // ** addr: 0x3ba218, size: -0x1
  }
}

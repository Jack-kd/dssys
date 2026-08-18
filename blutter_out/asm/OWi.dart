// lib: , url: OWi

// class id: 1050041, size: 0x8
class :: {
}

// class id: 3941, size: 0x10, field offset: 0xc
//   const constructor, 
class Ifb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c2cd8, size: 0x98
    // 0x7c2cd8: EnterFrame
    //     0x7c2cd8: stp             fp, lr, [SP, #-0x10]!
    //     0x7c2cdc: mov             fp, SP
    // 0x7c2ce0: AllocStack(0x20)
    //     0x7c2ce0: sub             SP, SP, #0x20
    // 0x7c2ce4: SetupParameters(Ifb this /* r1 */)
    //     0x7c2ce4: stur            NULL, [fp, #-8]
    //     0x7c2ce8: movz            x0, #0
    //     0x7c2cec: add             x1, fp, w0, sxtw #2
    //     0x7c2cf0: ldr             x1, [x1, #0x10]
    //     0x7c2cf4: ldur            w2, [x1, #0x17]
    //     0x7c2cf8: add             x2, x2, HEAP, lsl #32
    //     0x7c2cfc: stur            x2, [fp, #-0x10]
    // 0x7c2d00: CheckStackOverflow
    //     0x7c2d00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c2d04: cmp             SP, x16
    //     0x7c2d08: b.ls            #0x7c2d68
    // 0x7c2d0c: InitAsync() -> Future<void?>
    //     0x7c2d0c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c2d10: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c2d14: ldur            x0, [fp, #-0x10]
    // 0x7c2d18: LoadField: r3 = r0->field_13
    //     0x7c2d18: ldur            w3, [x0, #0x13]
    // 0x7c2d1c: DecompressPointer r3
    //     0x7c2d1c: add             x3, x3, HEAP, lsl #32
    // 0x7c2d20: stur            x3, [fp, #-0x20]
    // 0x7c2d24: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7c2d24: ldur            w2, [x0, #0x17]
    // 0x7c2d28: DecompressPointer r2
    //     0x7c2d28: add             x2, x2, HEAP, lsl #32
    // 0x7c2d2c: LoadField: r4 = r0->field_f
    //     0x7c2d2c: ldur            w4, [x0, #0xf]
    // 0x7c2d30: DecompressPointer r4
    //     0x7c2d30: add             x4, x4, HEAP, lsl #32
    // 0x7c2d34: stur            x4, [fp, #-0x18]
    // 0x7c2d38: r1 = Function 'EGg':.
    //     0x7c2d38: add             x1, PP, #0x24, lsl #12  ; [pp+0x24758] AnonymousClosure: (0x6532a0), of [PWi] Lfb
    //     0x7c2d3c: ldr             x1, [x1, #0x758]
    // 0x7c2d40: r0 = AllocateClosure()
    //     0x7c2d40: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7c2d44: ldur            x1, [fp, #-0x18]
    // 0x7c2d48: ldur            x2, [fp, #-0x20]
    // 0x7c2d4c: mov             x3, x0
    // 0x7c2d50: r0 = __unknown_function__()
    //     0x7c2d50: bl              #0x7c2d70  ; [] ::__unknown_function__
    // 0x7c2d54: mov             x1, x0
    // 0x7c2d58: stur            x1, [fp, #-0x18]
    // 0x7c2d5c: r0 = Await()
    //     0x7c2d5c: bl              #0x74ab64  ; AwaitStub
    // 0x7c2d60: r0 = Null
    //     0x7c2d60: mov             x0, NULL
    // 0x7c2d64: r0 = ReturnAsyncNotFuture()
    //     0x7c2d64: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2d68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c2d68: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c2d6c: b               #0x7c2d0c
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7c2e88, size: 0x8c
    // 0x7c2e88: EnterFrame
    //     0x7c2e88: stp             fp, lr, [SP, #-0x10]!
    //     0x7c2e8c: mov             fp, SP
    // 0x7c2e90: AllocStack(0x20)
    //     0x7c2e90: sub             SP, SP, #0x20
    // 0x7c2e94: SetupParameters(Ifb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c2e94: stur            NULL, [fp, #-8]
    //     0x7c2e98: movz            x0, #0
    //     0x7c2e9c: add             x1, fp, w0, sxtw #2
    //     0x7c2ea0: ldr             x1, [x1, #0x18]
    //     0x7c2ea4: add             x2, fp, w0, sxtw #2
    //     0x7c2ea8: ldr             x2, [x2, #0x10]
    //     0x7c2eac: stur            x2, [fp, #-0x18]
    //     0x7c2eb0: ldur            w3, [x1, #0x17]
    //     0x7c2eb4: add             x3, x3, HEAP, lsl #32
    //     0x7c2eb8: stur            x3, [fp, #-0x10]
    // 0x7c2ebc: CheckStackOverflow
    //     0x7c2ebc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c2ec0: cmp             SP, x16
    //     0x7c2ec4: b.ls            #0x7c2f0c
    // 0x7c2ec8: InitAsync() -> Future<void?>
    //     0x7c2ec8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c2ecc: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c2ed0: ldur            x0, [fp, #-0x10]
    // 0x7c2ed4: LoadField: r1 = r0->field_f
    //     0x7c2ed4: ldur            w1, [x0, #0xf]
    // 0x7c2ed8: DecompressPointer r1
    //     0x7c2ed8: add             x1, x1, HEAP, lsl #32
    // 0x7c2edc: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7c2edc: ldur            w0, [x1, #0x17]
    // 0x7c2ee0: DecompressPointer r0
    //     0x7c2ee0: add             x0, x0, HEAP, lsl #32
    // 0x7c2ee4: mov             x1, x0
    // 0x7c2ee8: r0 = __unknown_function__()
    //     0x7c2ee8: bl              #0x7c2f14  ; [] ::__unknown_function__
    // 0x7c2eec: ldur            x16, [fp, #-0x18]
    // 0x7c2ef0: str             x16, [SP]
    // 0x7c2ef4: ldur            x0, [fp, #-0x18]
    // 0x7c2ef8: ClosureCall
    //     0x7c2ef8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7c2efc: ldur            x2, [x0, #0x1f]
    //     0x7c2f00: blr             x2
    // 0x7c2f04: r0 = Null
    //     0x7c2f04: mov             x0, NULL
    // 0x7c2f08: r0 = ReturnAsyncNotFuture()
    //     0x7c2f08: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c2f0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c2f0c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c2f10: b               #0x7c2ec8
  }
  [closure] ila <anonymous closure>(dynamic) {
    // ** addr: 0x6532d8, size: -0x1
  }
  [closure] Dr <anonymous closure>(dynamic, List<String>) {
    // ** addr: 0x652d9c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x653150, size: -0x1
  }
}

// class id: 4176, size: 0x14, field offset: 0xc
//   const constructor, 
class _Kfb extends qI {
}

// class id: 4177, size: 0x10, field offset: 0xc
//   const constructor, 
class _Jfb extends qI {
}

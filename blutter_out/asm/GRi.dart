// lib: , url: GRi

// class id: 1049760, size: 0x8
class :: {

  static late final tSa<IZa> Itg; // offset: 0x13e4

  [closure] static IZa <anonymous closure>(dynamic, URa) {
    // ** addr: 0x4c7230, size: -0x1
  }
  static tSa<IZa> Itg() {
    // ** addr: 0x4c71b8, size: -0x1
  }
}

// class id: 230, size: 0x10, field offset: 0x8
class IZa extends Object {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7a4f78, size: 0x98
    // 0x7a4f78: EnterFrame
    //     0x7a4f78: stp             fp, lr, [SP, #-0x10]!
    //     0x7a4f7c: mov             fp, SP
    // 0x7a4f80: AllocStack(0x20)
    //     0x7a4f80: sub             SP, SP, #0x20
    // 0x7a4f84: SetupParameters(IZa this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a4f84: stur            NULL, [fp, #-8]
    //     0x7a4f88: movz            x0, #0
    //     0x7a4f8c: add             x1, fp, w0, sxtw #2
    //     0x7a4f90: ldr             x1, [x1, #0x18]
    //     0x7a4f94: add             x2, fp, w0, sxtw #2
    //     0x7a4f98: ldr             x2, [x2, #0x10]
    //     0x7a4f9c: stur            x2, [fp, #-0x18]
    //     0x7a4fa0: ldur            w3, [x1, #0x17]
    //     0x7a4fa4: add             x3, x3, HEAP, lsl #32
    //     0x7a4fa8: stur            x3, [fp, #-0x10]
    // 0x7a4fac: CheckStackOverflow
    //     0x7a4fac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a4fb0: cmp             SP, x16
    //     0x7a4fb4: b.ls            #0x7a5008
    // 0x7a4fb8: InitAsync() -> Future<void?>
    //     0x7a4fb8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a4fbc: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a4fc0: ldur            x16, [fp, #-0x18]
    // 0x7a4fc4: str             x16, [SP]
    // 0x7a4fc8: ldur            x0, [fp, #-0x18]
    // 0x7a4fcc: ClosureCall
    //     0x7a4fcc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7a4fd0: ldur            x2, [x0, #0x1f]
    //     0x7a4fd4: blr             x2
    // 0x7a4fd8: ldur            x0, [fp, #-0x10]
    // 0x7a4fdc: LoadField: r1 = r0->field_f
    //     0x7a4fdc: ldur            w1, [x0, #0xf]
    // 0x7a4fe0: DecompressPointer r1
    //     0x7a4fe0: add             x1, x1, HEAP, lsl #32
    // 0x7a4fe4: LoadField: r0 = r1->field_b
    //     0x7a4fe4: ldur            w0, [x1, #0xb]
    // 0x7a4fe8: DecompressPointer r0
    //     0x7a4fe8: add             x0, x0, HEAP, lsl #32
    // 0x7a4fec: LoadField: r2 = r0->field_b
    //     0x7a4fec: ldur            x2, [x0, #0xb]
    // 0x7a4ff0: tst             x2, #0x1e
    // 0x7a4ff4: b.ne            #0x7a5000
    // 0x7a4ff8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7a4ff8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7a4ffc: r0 = call 0x5ee7a4
    //     0x7a4ffc: bl              #0x5ee7a4
    // 0x7a5000: r0 = Null
    //     0x7a5000: mov             x0, NULL
    // 0x7a5004: r0 = ReturnAsyncNotFuture()
    //     0x7a5004: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a5008: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a5008: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a500c: b               #0x7a4fb8
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7a5010, size: 0x50
    // 0x7a5010: EnterFrame
    //     0x7a5010: stp             fp, lr, [SP, #-0x10]!
    //     0x7a5014: mov             fp, SP
    // 0x7a5018: AllocStack(0x10)
    //     0x7a5018: sub             SP, SP, #0x10
    // 0x7a501c: SetupParameters(IZa this /* r1 */)
    //     0x7a501c: stur            NULL, [fp, #-8]
    //     0x7a5020: movz            x0, #0
    //     0x7a5024: add             x1, fp, w0, sxtw #2
    //     0x7a5028: ldr             x1, [x1, #0x18]
    //     0x7a502c: ldur            w2, [x1, #0x17]
    //     0x7a5030: add             x2, x2, HEAP, lsl #32
    //     0x7a5034: stur            x2, [fp, #-0x10]
    // 0x7a5038: CheckStackOverflow
    //     0x7a5038: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a503c: cmp             SP, x16
    //     0x7a5040: b.ls            #0x7a5058
    // 0x7a5044: InitAsync() -> Future<void?>
    //     0x7a5044: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a5048: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a504c: r0 = call 0x4c637c
    //     0x7a504c: bl              #0x4c637c
    // 0x7a5050: r0 = Null
    //     0x7a5050: mov             x0, NULL
    // 0x7a5054: r0 = ReturnAsyncNotFuture()
    //     0x7a5054: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a5058: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a5058: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a505c: b               #0x7a5044
  }
  [closure] bool _Gtg(dynamic, List<wJ>) {
    // ** addr: 0x4c6340, size: -0x1
  }
}

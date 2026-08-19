// lib: , url: oSi

// class id: 1049796, size: 0x8
class :: {
}

// class id: 3658, size: 0x24, field offset: 0x18
class _vab extends Vt<dynamic> {

  late final zZa rvg; // offset: 0x20

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x790e60, size: 0x8c
    // 0x790e60: EnterFrame
    //     0x790e60: stp             fp, lr, [SP, #-0x10]!
    //     0x790e64: mov             fp, SP
    // 0x790e68: AllocStack(0x28)
    //     0x790e68: sub             SP, SP, #0x28
    // 0x790e6c: SetupParameters(_vab this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x790e6c: stur            NULL, [fp, #-8]
    //     0x790e70: movz            x0, #0
    //     0x790e74: add             x1, fp, w0, sxtw #2
    //     0x790e78: ldr             x1, [x1, #0x18]
    //     0x790e7c: add             x2, fp, w0, sxtw #2
    //     0x790e80: ldr             x2, [x2, #0x10]
    //     0x790e84: stur            x2, [fp, #-0x18]
    //     0x790e88: ldur            w3, [x1, #0x17]
    //     0x790e8c: add             x3, x3, HEAP, lsl #32
    //     0x790e90: stur            x3, [fp, #-0x10]
    // 0x790e94: CheckStackOverflow
    //     0x790e94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x790e98: cmp             SP, x16
    //     0x790e9c: b.ls            #0x790ee4
    // 0x790ea0: InitAsync() -> Future<void?>
    //     0x790ea0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x790ea4: bl              #0x74ada8  ; InitAsyncStub
    // 0x790ea8: ldur            x0, [fp, #-0x10]
    // 0x790eac: LoadField: r1 = r0->field_f
    //     0x790eac: ldur            w1, [x0, #0xf]
    // 0x790eb0: DecompressPointer r1
    //     0x790eb0: add             x1, x1, HEAP, lsl #32
    // 0x790eb4: r0 = __unknown_function__()
    //     0x790eb4: bl              #0x790eec  ; [] ::__unknown_function__
    // 0x790eb8: mov             x1, x0
    // 0x790ebc: stur            x1, [fp, #-0x20]
    // 0x790ec0: r0 = Await()
    //     0x790ec0: bl              #0x74ab64  ; AwaitStub
    // 0x790ec4: ldur            x16, [fp, #-0x18]
    // 0x790ec8: str             x16, [SP]
    // 0x790ecc: ldur            x0, [fp, #-0x18]
    // 0x790ed0: ClosureCall
    //     0x790ed0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x790ed4: ldur            x2, [x0, #0x1f]
    //     0x790ed8: blr             x2
    // 0x790edc: r0 = Null
    //     0x790edc: mov             x0, NULL
    // 0x790ee0: r0 = ReturnAsyncNotFuture()
    //     0x790ee0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x790ee4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x790ee4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x790ee8: b               #0x790ea0
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x4734c0, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x473434, size: -0x1
  }
  [closure] void _uvg(dynamic) {
    // ** addr: 0x47333c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x47302c, size: -0x1
  }
  [closure] Future<void> _zvg(dynamic) {
    // ** addr: 0x472ac8, size: -0x1
  }
  [closure] List<KX> <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x46fc58, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x470280, size: -0x1
  }
  [closure] wab <anonymous closure>(dynamic, Tna, int) {
    // ** addr: 0x46fed4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4700d8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x473124, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x4731d4, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x47355c, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x46f76c, size: -0x1
  }
}

// class id: 3931, size: 0xc, field offset: 0xc
//   const constructor, 
class uab extends REa {
}

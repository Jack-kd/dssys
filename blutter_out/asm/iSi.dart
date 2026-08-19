// lib: , url: iSi

// class id: 1049789, size: 0x8
class :: {

  static late final hSa<nab, List<oab>> evg; // offset: 0x141c
}

// class id: 2460, size: 0x10, field offset: 0x10
class nab extends pC<dynamic> {

  [closure] Future<List<oab>> <anonymous closure>(dynamic) async {
    // ** addr: 0x78f298, size: 0x5c
    // 0x78f298: EnterFrame
    //     0x78f298: stp             fp, lr, [SP, #-0x10]!
    //     0x78f29c: mov             fp, SP
    // 0x78f2a0: AllocStack(0x10)
    //     0x78f2a0: sub             SP, SP, #0x10
    // 0x78f2a4: SetupParameters(nab this /* r1 */)
    //     0x78f2a4: stur            NULL, [fp, #-8]
    //     0x78f2a8: movz            x0, #0
    //     0x78f2ac: add             x1, fp, w0, sxtw #2
    //     0x78f2b0: ldr             x1, [x1, #0x10]
    //     0x78f2b4: ldur            w2, [x1, #0x17]
    //     0x78f2b8: add             x2, x2, HEAP, lsl #32
    //     0x78f2bc: stur            x2, [fp, #-0x10]
    // 0x78f2c0: CheckStackOverflow
    //     0x78f2c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78f2c4: cmp             SP, x16
    //     0x78f2c8: b.ls            #0x78f2ec
    // 0x78f2cc: InitAsync() -> Future<List<oab>>
    //     0x78f2cc: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bee0] TypeArguments: <List<oab>>
    //     0x78f2d0: ldr             x0, [x0, #0xee0]
    //     0x78f2d4: bl              #0x74ada8  ; InitAsyncStub
    // 0x78f2d8: ldur            x0, [fp, #-0x10]
    // 0x78f2dc: LoadField: r1 = r0->field_f
    //     0x78f2dc: ldur            w1, [x0, #0xf]
    // 0x78f2e0: DecompressPointer r1
    //     0x78f2e0: add             x1, x1, HEAP, lsl #32
    // 0x78f2e4: r0 = __unknown_function__()
    //     0x78f2e4: bl              #0x78f2f4  ; [] ::__unknown_function__
    // 0x78f2e8: r0 = ReturnAsync()
    //     0x78f2e8: b               #0x74ce60  ; ReturnAsyncStub
    // 0x78f2ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78f2ec: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78f2f0: b               #0x78f2cc
  }
  [closure] oab <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x46d9c4, size: -0x1
  }
  [closure] static nab nab(dynamic) {
    // ** addr: 0x46ec64, size: -0x1
  }
  [closure] FutureOr<List<oab>> eac(dynamic) {
    // ** addr: 0x5c8f2c, size: -0x1
  }
}

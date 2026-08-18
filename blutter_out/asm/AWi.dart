// lib: , url: AWi

// class id: 1050025, size: 0x8
class :: {

  static late final hSa<qfb, List<nfb>> oGg; // offset: 0x1518
}

// class id: 2451, size: 0x10, field offset: 0x10
class qfb extends pC<dynamic> {

  [closure] Future<List<nfb>> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a5308, size: 0x5c
    // 0x7a5308: EnterFrame
    //     0x7a5308: stp             fp, lr, [SP, #-0x10]!
    //     0x7a530c: mov             fp, SP
    // 0x7a5310: AllocStack(0x10)
    //     0x7a5310: sub             SP, SP, #0x10
    // 0x7a5314: SetupParameters(qfb this /* r1 */)
    //     0x7a5314: stur            NULL, [fp, #-8]
    //     0x7a5318: movz            x0, #0
    //     0x7a531c: add             x1, fp, w0, sxtw #2
    //     0x7a5320: ldr             x1, [x1, #0x10]
    //     0x7a5324: ldur            w2, [x1, #0x17]
    //     0x7a5328: add             x2, x2, HEAP, lsl #32
    //     0x7a532c: stur            x2, [fp, #-0x10]
    // 0x7a5330: CheckStackOverflow
    //     0x7a5330: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a5334: cmp             SP, x16
    //     0x7a5338: b.ls            #0x7a535c
    // 0x7a533c: InitAsync() -> Future<List<nfb>>
    //     0x7a533c: add             x0, PP, #0x24, lsl #12  ; [pp+0x24ec0] TypeArguments: <List<nfb>>
    //     0x7a5340: ldr             x0, [x0, #0xec0]
    //     0x7a5344: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a5348: ldur            x0, [fp, #-0x10]
    // 0x7a534c: LoadField: r1 = r0->field_f
    //     0x7a534c: ldur            w1, [x0, #0xf]
    // 0x7a5350: DecompressPointer r1
    //     0x7a5350: add             x1, x1, HEAP, lsl #32
    // 0x7a5354: r0 = __unknown_function__()
    //     0x7a5354: bl              #0x7a5364  ; [] ::__unknown_function__
    // 0x7a5358: r0 = ReturnAsync()
    //     0x7a5358: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7a535c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a535c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a5360: b               #0x7a533c
  }
  [closure] nfb <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x4c7bc8, size: -0x1
  }
  [closure] static qfb qfb(dynamic) {
    // ** addr: 0x4c8a0c, size: -0x1
  }
  [closure] FutureOr<List<nfb>> eac(dynamic) {
    // ** addr: 0x5c9958, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5c9a38, size: -0x1
  }
}

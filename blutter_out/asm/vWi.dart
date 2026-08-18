// lib: , url: vWi

// class id: 1050020, size: 0x8
class :: {

  static late final iSa<kfb, String, int> fGg; // offset: 0x150c
}

// class id: 2452, size: 0x18, field offset: 0x10
class kfb extends pC<dynamic> {

  [closure] Future<String> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a17f0, size: 0x58
    // 0x7a17f0: EnterFrame
    //     0x7a17f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7a17f4: mov             fp, SP
    // 0x7a17f8: AllocStack(0x10)
    //     0x7a17f8: sub             SP, SP, #0x10
    // 0x7a17fc: SetupParameters(kfb this /* r1 */)
    //     0x7a17fc: stur            NULL, [fp, #-8]
    //     0x7a1800: movz            x0, #0
    //     0x7a1804: add             x1, fp, w0, sxtw #2
    //     0x7a1808: ldr             x1, [x1, #0x10]
    //     0x7a180c: ldur            w2, [x1, #0x17]
    //     0x7a1810: add             x2, x2, HEAP, lsl #32
    //     0x7a1814: stur            x2, [fp, #-0x10]
    // 0x7a1818: CheckStackOverflow
    //     0x7a1818: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a181c: cmp             SP, x16
    //     0x7a1820: b.ls            #0x7a1840
    // 0x7a1824: InitAsync() -> Future<String>
    //     0x7a1824: ldr             x0, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    //     0x7a1828: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a182c: ldur            x0, [fp, #-0x10]
    // 0x7a1830: LoadField: r1 = r0->field_f
    //     0x7a1830: ldur            w1, [x0, #0xf]
    // 0x7a1834: DecompressPointer r1
    //     0x7a1834: add             x1, x1, HEAP, lsl #32
    // 0x7a1838: r0 = __unknown_function__()
    //     0x7a1838: bl              #0x7a1848  ; [] ::__unknown_function__
    // 0x7a183c: r0 = ReturnAsync()
    //     0x7a183c: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7a1840: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a1840: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a1844: b               #0x7a1824
  }
  [closure] static kfb kfb(dynamic, int) {
    // ** addr: 0x4be178, size: -0x1
  }
  [closure] FutureOr<String> eac(dynamic) {
    // ** addr: 0x5c98fc, size: -0x1
  }
}

// lib: , url: FWi

// class id: 1050031, size: 0x8
class :: {

  static late final iSa<xfb, vfb, nfb> kGg; // offset: 0x1514
}

// class id: 2450, size: 0x14, field offset: 0x10
class xfb extends pC<dynamic> {

  [closure] Future<vfb> <anonymous closure>(dynamic) async {
    // ** addr: 0x78a270, size: 0x68
    // 0x78a270: EnterFrame
    //     0x78a270: stp             fp, lr, [SP, #-0x10]!
    //     0x78a274: mov             fp, SP
    // 0x78a278: AllocStack(0x18)
    //     0x78a278: sub             SP, SP, #0x18
    // 0x78a27c: SetupParameters(xfb this /* r1 */)
    //     0x78a27c: stur            NULL, [fp, #-8]
    //     0x78a280: movz            x0, #0
    //     0x78a284: add             x1, fp, w0, sxtw #2
    //     0x78a288: ldr             x1, [x1, #0x10]
    //     0x78a28c: ldur            w2, [x1, #0x17]
    //     0x78a290: add             x2, x2, HEAP, lsl #32
    //     0x78a294: stur            x2, [fp, #-0x10]
    // 0x78a298: CheckStackOverflow
    //     0x78a298: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78a29c: cmp             SP, x16
    //     0x78a2a0: b.ls            #0x78a2d0
    // 0x78a2a4: InitAsync() -> Future<vfb>
    //     0x78a2a4: add             x0, PP, #0x2d, lsl #12  ; [pp+0x2d990] TypeArguments: <vfb>
    //     0x78a2a8: ldr             x0, [x0, #0x990]
    //     0x78a2ac: bl              #0x74ada8  ; InitAsyncStub
    // 0x78a2b0: ldur            x0, [fp, #-0x10]
    // 0x78a2b4: LoadField: r1 = r0->field_f
    //     0x78a2b4: ldur            w1, [x0, #0xf]
    // 0x78a2b8: DecompressPointer r1
    //     0x78a2b8: add             x1, x1, HEAP, lsl #32
    // 0x78a2bc: r0 = __unknown_function__()
    //     0x78a2bc: bl              #0x78a2d8  ; [] ::__unknown_function__
    // 0x78a2c0: mov             x1, x0
    // 0x78a2c4: stur            x1, [fp, #-0x18]
    // 0x78a2c8: r0 = Await()
    //     0x78a2c8: bl              #0x74ab64  ; AwaitStub
    // 0x78a2cc: r0 = ReturnAsync()
    //     0x78a2cc: b               #0x74ce60  ; ReturnAsyncStub
    // 0x78a2d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78a2d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78a2d4: b               #0x78a2a4
  }
  [closure] static xfb xfb(dynamic, nfb) {
    // ** addr: 0x458e5c, size: -0x1
  }
  [closure] Future<vfb> eac(dynamic) {
    // ** addr: 0x5c9aa4, size: -0x1
  }
  [closure] Future<void> cXf(dynamic) {
    // ** addr: 0x458d44, size: -0x1
  }
}

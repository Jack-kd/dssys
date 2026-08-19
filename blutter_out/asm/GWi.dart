// lib: , url: GWi

// class id: 1050032, size: 0x8
class :: {

  static late final iSa<yfb, zfb, int> sGg; // offset: 0x151c
}

// class id: 2449, size: 0x18, field offset: 0x10
class yfb extends pC<dynamic> {

  [closure] Future<zfb> <anonymous closure>(dynamic) async {
    // ** addr: 0x789fd0, size: 0x5c
    // 0x789fd0: EnterFrame
    //     0x789fd0: stp             fp, lr, [SP, #-0x10]!
    //     0x789fd4: mov             fp, SP
    // 0x789fd8: AllocStack(0x10)
    //     0x789fd8: sub             SP, SP, #0x10
    // 0x789fdc: SetupParameters(yfb this /* r1 */)
    //     0x789fdc: stur            NULL, [fp, #-8]
    //     0x789fe0: movz            x0, #0
    //     0x789fe4: add             x1, fp, w0, sxtw #2
    //     0x789fe8: ldr             x1, [x1, #0x10]
    //     0x789fec: ldur            w2, [x1, #0x17]
    //     0x789ff0: add             x2, x2, HEAP, lsl #32
    //     0x789ff4: stur            x2, [fp, #-0x10]
    // 0x789ff8: CheckStackOverflow
    //     0x789ff8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x789ffc: cmp             SP, x16
    //     0x78a000: b.ls            #0x78a024
    // 0x78a004: InitAsync() -> Future<zfb>
    //     0x78a004: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1eca0] TypeArguments: <zfb>
    //     0x78a008: ldr             x0, [x0, #0xca0]
    //     0x78a00c: bl              #0x74ada8  ; InitAsyncStub
    // 0x78a010: ldur            x0, [fp, #-0x10]
    // 0x78a014: LoadField: r1 = r0->field_f
    //     0x78a014: ldur            w1, [x0, #0xf]
    // 0x78a018: DecompressPointer r1
    //     0x78a018: add             x1, x1, HEAP, lsl #32
    // 0x78a01c: r0 = __unknown_function__()
    //     0x78a01c: bl              #0x78a02c  ; [] ::__unknown_function__
    // 0x78a020: r0 = ReturnAsync()
    //     0x78a020: b               #0x74ce60  ; ReturnAsyncStub
    // 0x78a024: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78a024: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78a028: b               #0x78a004
  }
  [closure] Future<void> cXf(dynamic) {
    // ** addr: 0x456580, size: -0x1
  }
  [closure] static yfb yfb(dynamic, int) {
    // ** addr: 0x456b44, size: -0x1
  }
  [closure] Future<zfb> eac(dynamic) {
    // ** addr: 0x5c9b00, size: -0x1
  }
}

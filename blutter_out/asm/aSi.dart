// lib: , url: aSi

// class id: 1049781, size: 0x8
class :: {

  static late final iSa<fab, String, int> Kug; // offset: 0x1410
}

// class id: 2461, size: 0x1c, field offset: 0x10
class fab extends pC<dynamic> {

  late final tZa _zmg; // offset: 0x18

  [closure] Future<String> <anonymous closure>(dynamic) async {
    // ** addr: 0x78ebdc, size: 0x58
    // 0x78ebdc: EnterFrame
    //     0x78ebdc: stp             fp, lr, [SP, #-0x10]!
    //     0x78ebe0: mov             fp, SP
    // 0x78ebe4: AllocStack(0x10)
    //     0x78ebe4: sub             SP, SP, #0x10
    // 0x78ebe8: SetupParameters(fab this /* r1 */)
    //     0x78ebe8: stur            NULL, [fp, #-8]
    //     0x78ebec: movz            x0, #0
    //     0x78ebf0: add             x1, fp, w0, sxtw #2
    //     0x78ebf4: ldr             x1, [x1, #0x10]
    //     0x78ebf8: ldur            w2, [x1, #0x17]
    //     0x78ebfc: add             x2, x2, HEAP, lsl #32
    //     0x78ec00: stur            x2, [fp, #-0x10]
    // 0x78ec04: CheckStackOverflow
    //     0x78ec04: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78ec08: cmp             SP, x16
    //     0x78ec0c: b.ls            #0x78ec2c
    // 0x78ec10: InitAsync() -> Future<String>
    //     0x78ec10: ldr             x0, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    //     0x78ec14: bl              #0x74ada8  ; InitAsyncStub
    // 0x78ec18: ldur            x0, [fp, #-0x10]
    // 0x78ec1c: LoadField: r1 = r0->field_f
    //     0x78ec1c: ldur            w1, [x0, #0xf]
    // 0x78ec20: DecompressPointer r1
    //     0x78ec20: add             x1, x1, HEAP, lsl #32
    // 0x78ec24: r0 = __unknown_function__()
    //     0x78ec24: bl              #0x78ec34  ; [] ::__unknown_function__
    // 0x78ec28: r0 = ReturnAsync()
    //     0x78ec28: b               #0x74ce60  ; ReturnAsyncStub
    // 0x78ec2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78ec2c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78ec30: b               #0x78ec10
  }
  [closure] static fab fab(dynamic, int) {
    // ** addr: 0x46c438, size: -0x1
  }
  [closure] FutureOr<String> eac(dynamic) {
    // ** addr: 0x5c8ed0, size: -0x1
  }
}

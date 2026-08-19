// lib: , url: ASi

// class id: 1049808, size: 0x8
class :: {

  static late final hSa<Jab, List<Kab>> dwg; // offset: 0x1428
}

// class id: 2459, size: 0x10, field offset: 0x10
class Jab extends pC<dynamic> {

  [closure] Future<List<Kab>> <anonymous closure>(dynamic) async {
    // ** addr: 0x792a78, size: 0x5c
    // 0x792a78: EnterFrame
    //     0x792a78: stp             fp, lr, [SP, #-0x10]!
    //     0x792a7c: mov             fp, SP
    // 0x792a80: AllocStack(0x10)
    //     0x792a80: sub             SP, SP, #0x10
    // 0x792a84: SetupParameters(Jab this /* r1 */)
    //     0x792a84: stur            NULL, [fp, #-8]
    //     0x792a88: movz            x0, #0
    //     0x792a8c: add             x1, fp, w0, sxtw #2
    //     0x792a90: ldr             x1, [x1, #0x10]
    //     0x792a94: ldur            w2, [x1, #0x17]
    //     0x792a98: add             x2, x2, HEAP, lsl #32
    //     0x792a9c: stur            x2, [fp, #-0x10]
    // 0x792aa0: CheckStackOverflow
    //     0x792aa0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x792aa4: cmp             SP, x16
    //     0x792aa8: b.ls            #0x792acc
    // 0x792aac: InitAsync() -> Future<List<Kab>>
    //     0x792aac: add             x0, PP, #0x2a, lsl #12  ; [pp+0x2ac30] TypeArguments: <List<Kab>>
    //     0x792ab0: ldr             x0, [x0, #0xc30]
    //     0x792ab4: bl              #0x74ada8  ; InitAsyncStub
    // 0x792ab8: ldur            x0, [fp, #-0x10]
    // 0x792abc: LoadField: r1 = r0->field_f
    //     0x792abc: ldur            w1, [x0, #0xf]
    // 0x792ac0: DecompressPointer r1
    //     0x792ac0: add             x1, x1, HEAP, lsl #32
    // 0x792ac4: r0 = __unknown_function__()
    //     0x792ac4: bl              #0x792ad4  ; [] ::__unknown_function__
    // 0x792ac8: r0 = ReturnAsync()
    //     0x792ac8: b               #0x74ce60  ; ReturnAsyncStub
    // 0x792acc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x792acc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x792ad0: b               #0x792aac
  }
  [closure] Kab <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x4784d0, size: -0x1
  }
  [closure] static Jab Jab(dynamic) {
    // ** addr: 0x479068, size: -0x1
  }
  [closure] FutureOr<List<Kab>> eac(dynamic) {
    // ** addr: 0x5c8f88, size: -0x1
  }
}

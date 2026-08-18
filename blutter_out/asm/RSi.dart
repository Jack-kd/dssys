// lib: , url: RSi

// class id: 1049827, size: 0x8
class :: {
}

// class id: 2455, size: 0x18, field offset: 0x10
abstract class mbb extends pC<dynamic> {

  [closure] Future<nbb> <anonymous closure>(dynamic) async {
    // ** addr: 0x789114, size: 0x5c
    // 0x789114: EnterFrame
    //     0x789114: stp             fp, lr, [SP, #-0x10]!
    //     0x789118: mov             fp, SP
    // 0x78911c: AllocStack(0x10)
    //     0x78911c: sub             SP, SP, #0x10
    // 0x789120: SetupParameters(mbb this /* r1 */)
    //     0x789120: stur            NULL, [fp, #-8]
    //     0x789124: movz            x0, #0
    //     0x789128: add             x1, fp, w0, sxtw #2
    //     0x78912c: ldr             x1, [x1, #0x10]
    //     0x789130: ldur            w2, [x1, #0x17]
    //     0x789134: add             x2, x2, HEAP, lsl #32
    //     0x789138: stur            x2, [fp, #-0x10]
    // 0x78913c: CheckStackOverflow
    //     0x78913c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x789140: cmp             SP, x16
    //     0x789144: b.ls            #0x789168
    // 0x789148: InitAsync() -> Future<nbb>
    //     0x789148: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1e510] TypeArguments: <nbb>
    //     0x78914c: ldr             x0, [x0, #0x510]
    //     0x789150: bl              #0x74ada8  ; InitAsyncStub
    // 0x789154: ldur            x0, [fp, #-0x10]
    // 0x789158: LoadField: r1 = r0->field_f
    //     0x789158: ldur            w1, [x0, #0xf]
    // 0x78915c: DecompressPointer r1
    //     0x78915c: add             x1, x1, HEAP, lsl #32
    // 0x789160: r0 = __unknown_function__()
    //     0x789160: bl              #0x789170  ; [] ::__unknown_function__
    // 0x789164: r0 = ReturnAsync()
    //     0x789164: b               #0x74ce60  ; ReturnAsyncStub
    // 0x789168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x789168: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78916c: b               #0x789148
  }
  [closure] bool <anonymous closure>(dynamic, aZa) {
    // ** addr: 0x5055c0, size: -0x1
  }
  [closure] FutureOr<nbb> eac(dynamic) {
    // ** addr: 0x5c8fe4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, bool?, bool) {
    // ** addr: 0x5c9274, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5c91cc, size: -0x1
  }
}

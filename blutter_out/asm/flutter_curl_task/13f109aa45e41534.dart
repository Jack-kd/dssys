// lib: , url: package:flutter_curl_task/13f109aa45e41534.dart

// class id: 1049190, size: 0x8
class :: {

  static void callbackDispatcher() {
    // ** addr: 0x656138, size: -0x1
  }
  [closure] static Future<Null> <anonymous closure>(dynamic, MethodCall) async {
    // ** addr: 0x7c5b60, size: 0x138
    // 0x7c5b60: EnterFrame
    //     0x7c5b60: stp             fp, lr, [SP, #-0x10]!
    //     0x7c5b64: mov             fp, SP
    // 0x7c5b68: AllocStack(0x40)
    //     0x7c5b68: sub             SP, SP, #0x40
    // 0x7c5b6c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c5b6c: stur            NULL, [fp, #-8]
    //     0x7c5b70: movz            x0, #0
    //     0x7c5b74: add             x1, fp, w0, sxtw #2
    //     0x7c5b78: ldr             x1, [x1, #0x18]
    //     0x7c5b7c: add             x2, fp, w0, sxtw #2
    //     0x7c5b80: ldr             x2, [x2, #0x10]
    //     0x7c5b84: stur            x2, [fp, #-0x18]
    //     0x7c5b88: ldur            w3, [x1, #0x17]
    //     0x7c5b8c: add             x3, x3, HEAP, lsl #32
    //     0x7c5b90: stur            x3, [fp, #-0x10]
    // 0x7c5b94: CheckStackOverflow
    //     0x7c5b94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c5b98: cmp             SP, x16
    //     0x7c5b9c: b.ls            #0x7c5c90
    // 0x7c5ba0: InitAsync() -> Future<Null?>
    //     0x7c5ba0: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7c5ba4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c5ba8: ldur            x0, [fp, #-0x18]
    // 0x7c5bac: LoadField: r2 = r0->field_b
    //     0x7c5bac: ldur            w2, [x0, #0xb]
    // 0x7c5bb0: DecompressPointer r2
    //     0x7c5bb0: add             x2, x2, HEAP, lsl #32
    // 0x7c5bb4: stur            x2, [fp, #-0x10]
    // 0x7c5bb8: r1 = "d798bd285312fc2cde6b0e78a67eec9fa85c1a"
    //     0x7c5bb8: ldr             x1, [PP, #0x78]  ; [pp+0x78] "d798bd285312fc2cde6b0e78a67eec9fa85c1a"
    // 0x7c5bbc: r0 = call 0x6561c8
    //     0x7c5bbc: bl              #0x6561c8
    // 0x7c5bc0: mov             x1, x0
    // 0x7c5bc4: r0 = __unknown_function__()
    //     0x7c5bc4: bl              #0x7c5c98  ; [] ::__unknown_function__
    // 0x7c5bc8: stur            x0, [fp, #-0x20]
    // 0x7c5bcc: cmp             w0, NULL
    // 0x7c5bd0: b.eq            #0x7c5c88
    // 0x7c5bd4: ldur            x2, [fp, #-0x18]
    // 0x7c5bd8: r1 = "6fcd381bb3dee1f0"
    //     0x7c5bd8: ldr             x1, [PP, #0x80]  ; [pp+0x80] "6fcd381bb3dee1f0"
    // 0x7c5bdc: r0 = call 0x6561c8
    //     0x7c5bdc: bl              #0x6561c8
    // 0x7c5be0: r1 = Null
    //     0x7c5be0: mov             x1, NULL
    // 0x7c5be4: r2 = 8
    //     0x7c5be4: movz            x2, #0x8
    // 0x7c5be8: stur            x0, [fp, #-0x28]
    // 0x7c5bec: r0 = AllocateArray()
    //     0x7c5bec: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7c5bf0: mov             x2, x0
    // 0x7c5bf4: ldur            x0, [fp, #-0x28]
    // 0x7c5bf8: stur            x2, [fp, #-0x30]
    // 0x7c5bfc: StoreField: r2->field_f = r0
    //     0x7c5bfc: stur            w0, [x2, #0xf]
    // 0x7c5c00: ldur            x0, [fp, #-0x18]
    // 0x7c5c04: LoadField: r1 = r0->field_7
    //     0x7c5c04: ldur            w1, [x0, #7]
    // 0x7c5c08: DecompressPointer r1
    //     0x7c5c08: add             x1, x1, HEAP, lsl #32
    // 0x7c5c0c: StoreField: r2->field_13 = r1
    //     0x7c5c0c: stur            w1, [x2, #0x13]
    // 0x7c5c10: r1 = "c54ff6bdd3c0"
    //     0x7c5c10: ldr             x1, [PP, #0x88]  ; [pp+0x88] "c54ff6bdd3c0"
    // 0x7c5c14: r0 = call 0x6561c8
    //     0x7c5c14: bl              #0x6561c8
    // 0x7c5c18: ldur            x1, [fp, #-0x30]
    // 0x7c5c1c: ArrayStore: r1[2] = r0  ; List_4
    //     0x7c5c1c: add             x25, x1, #0x17
    //     0x7c5c20: str             w0, [x25]
    //     0x7c5c24: tbz             w0, #0, #0x7c5c40
    //     0x7c5c28: ldurb           w16, [x1, #-1]
    //     0x7c5c2c: ldurb           w17, [x0, #-1]
    //     0x7c5c30: and             x16, x17, x16, lsr #2
    //     0x7c5c34: tst             x16, HEAP, lsr #32
    //     0x7c5c38: b.eq            #0x7c5c40
    //     0x7c5c3c: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7c5c40: ldur            x1, [fp, #-0x30]
    // 0x7c5c44: ldur            x0, [fp, #-0x10]
    // 0x7c5c48: ArrayStore: r1[3] = r0  ; List_4
    //     0x7c5c48: add             x25, x1, #0x1b
    //     0x7c5c4c: str             w0, [x25]
    //     0x7c5c50: tbz             w0, #0, #0x7c5c6c
    //     0x7c5c54: ldurb           w16, [x1, #-1]
    //     0x7c5c58: ldurb           w17, [x0, #-1]
    //     0x7c5c5c: and             x16, x17, x16, lsr #2
    //     0x7c5c60: tst             x16, HEAP, lsr #32
    //     0x7c5c64: b.eq            #0x7c5c6c
    //     0x7c5c68: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7c5c6c: r16 = <String, dynamic>
    //     0x7c5c6c: ldr             x16, [PP, #0x90]  ; [pp+0x90] TypeArguments: <String, dynamic>
    // 0x7c5c70: ldur            lr, [fp, #-0x30]
    // 0x7c5c74: stp             lr, x16, [SP]
    // 0x7c5c78: r0 = Map._fromLiteral()
    //     0x7c5c78: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7c5c7c: ldur            x16, [fp, #-0x20]
    // 0x7c5c80: stp             x0, x16, [SP]
    // 0x7c5c84: r0 = _Unb()
    //     0x7c5c84: bl              #0x749508  ; [dart:isolate] _SendPort::_Unb
    // 0x7c5c88: r0 = Null
    //     0x7c5c88: mov             x0, NULL
    // 0x7c5c8c: r0 = ReturnAsyncNotFuture()
    //     0x7c5c8c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c5c90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c5c90: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c5c94: b               #0x7c5ba0
  }
  [closure] static void callbackDispatcher(dynamic) {
    // ** addr: 0x65610c, size: -0x1
  }
  [closure] static void RNf(dynamic, dynamic) {
    // ** addr: 0x6567bc, size: -0x1
  }
}

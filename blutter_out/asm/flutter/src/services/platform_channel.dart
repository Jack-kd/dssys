// lib: , url: package:flutter/src/services/platform_channel.dart

// class id: 1049027, size: 0x8
class :: {
}

// class id: 1486, size: 0x14, field offset: 0x8
//   const constructor, 
class fia extends Object {

  _OneByteString field_8;
  Sha field_c;

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a4aa0, size: 0x138
    // 0x7a4aa0: EnterFrame
    //     0x7a4aa0: stp             fp, lr, [SP, #-0x10]!
    //     0x7a4aa4: mov             fp, SP
    // 0x7a4aa8: AllocStack(0x98)
    //     0x7a4aa8: sub             SP, SP, #0x98
    // 0x7a4aac: SetupParameters(fia this /* r1 */)
    //     0x7a4aac: stur            NULL, [fp, #-8]
    //     0x7a4ab0: movz            x0, #0
    //     0x7a4ab4: add             x1, fp, w0, sxtw #2
    //     0x7a4ab8: ldr             x1, [x1, #0x10]
    //     0x7a4abc: ldur            w2, [x1, #0x17]
    //     0x7a4ac0: add             x2, x2, HEAP, lsl #32
    //     0x7a4ac4: stur            x2, [fp, #-0x68]
    // 0x7a4ac8: CheckStackOverflow
    //     0x7a4ac8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a4acc: cmp             SP, x16
    //     0x7a4ad0: b.ls            #0x7a4bd0
    // 0x7a4ad4: InitAsync() -> Future<void?>
    //     0x7a4ad4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a4ad8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a4adc: r0 = call 0x26a1d0
    //     0x7a4adc: bl              #0x26a1d0
    // 0x7a4ae0: ldur            x0, [fp, #-0x68]
    // 0x7a4ae4: LoadField: r1 = r0->field_f
    //     0x7a4ae4: ldur            w1, [x0, #0xf]
    // 0x7a4ae8: DecompressPointer r1
    //     0x7a4ae8: add             x1, x1, HEAP, lsl #32
    // 0x7a4aec: LoadField: r2 = r1->field_7
    //     0x7a4aec: ldur            w2, [x1, #7]
    // 0x7a4af0: DecompressPointer r2
    //     0x7a4af0: add             x2, x2, HEAP, lsl #32
    // 0x7a4af4: r1 = Instance__uha
    //     0x7a4af4: ldr             x1, [PP, #0xd8]  ; [pp+0xd8] Obj!_uha@441e71
    // 0x7a4af8: r3 = Null
    //     0x7a4af8: mov             x3, NULL
    // 0x7a4afc: r0 = call 0x269db4
    //     0x7a4afc: bl              #0x269db4
    // 0x7a4b00: ldur            x0, [fp, #-0x68]
    // 0x7a4b04: LoadField: r1 = r0->field_13
    //     0x7a4b04: ldur            w1, [x0, #0x13]
    // 0x7a4b08: DecompressPointer r1
    //     0x7a4b08: add             x1, x1, HEAP, lsl #32
    // 0x7a4b0c: r16 = <void?>
    //     0x7a4b0c: ldr             x16, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x7a4b10: stp             x1, x16, [SP, #0x10]
    // 0x7a4b14: r16 = "cancel"
    //     0x7a4b14: add             x16, PP, #0x16, lsl #12  ; [pp+0x16620] "cancel"
    //     0x7a4b18: ldr             x16, [x16, #0x620]
    // 0x7a4b1c: stp             NULL, x16, [SP]
    // 0x7a4b20: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x7a4b20: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x7a4b24: r0 = call 0x6a5e04
    //     0x7a4b24: bl              #0x6a5e04
    // 0x7a4b28: mov             x1, x0
    // 0x7a4b2c: stur            x1, [fp, #-0x70]
    // 0x7a4b30: r0 = Await()
    //     0x7a4b30: bl              #0x74ab64  ; AwaitStub
    // 0x7a4b34: b               #0x7a4bc8
    // 0x7a4b38: sub             SP, fp, #0x98
    // 0x7a4b3c: ldur            x3, [fp, #-0x68]
    // 0x7a4b40: mov             x4, x0
    // 0x7a4b44: stur            x0, [fp, #-0x70]
    // 0x7a4b48: mov             x0, x1
    // 0x7a4b4c: stur            x1, [fp, #-0x78]
    // 0x7a4b50: r1 = Null
    //     0x7a4b50: mov             x1, NULL
    // 0x7a4b54: r2 = 4
    //     0x7a4b54: movz            x2, #0x4
    // 0x7a4b58: r0 = AllocateArray()
    //     0x7a4b58: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7a4b5c: r16 = "while de-activating platform stream on channel "
    //     0x7a4b5c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16628] "while de-activating platform stream on channel "
    //     0x7a4b60: ldr             x16, [x16, #0x628]
    // 0x7a4b64: StoreField: r0->field_f = r16
    //     0x7a4b64: stur            w16, [x0, #0xf]
    // 0x7a4b68: ldur            x1, [fp, #-0x68]
    // 0x7a4b6c: LoadField: r2 = r1->field_f
    //     0x7a4b6c: ldur            w2, [x1, #0xf]
    // 0x7a4b70: DecompressPointer r2
    //     0x7a4b70: add             x2, x2, HEAP, lsl #32
    // 0x7a4b74: LoadField: r1 = r2->field_7
    //     0x7a4b74: ldur            w1, [x2, #7]
    // 0x7a4b78: DecompressPointer r1
    //     0x7a4b78: add             x1, x1, HEAP, lsl #32
    // 0x7a4b7c: StoreField: r0->field_13 = r1
    //     0x7a4b7c: stur            w1, [x0, #0x13]
    // 0x7a4b80: str             x0, [SP]
    // 0x7a4b84: r0 = _interpolate()
    //     0x7a4b84: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x7a4b88: r1 = <List<Object>>
    //     0x7a4b88: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x7a4b8c: stur            x0, [fp, #-0x68]
    // 0x7a4b90: r0 = OO()
    //     0x7a4b90: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x7a4b94: mov             x1, x0
    // 0x7a4b98: ldur            x2, [fp, #-0x68]
    // 0x7a4b9c: r3 = Instance_GO
    //     0x7a4b9c: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x7a4ba0: r0 = call 0x24e36c
    //     0x7a4ba0: bl              #0x24e36c
    // 0x7a4ba4: r0 = SO()
    //     0x7a4ba4: bl              #0x74f350  ; AllocateSOStub -> SO (size=0x14)
    // 0x7a4ba8: mov             x1, x0
    // 0x7a4bac: ldur            x0, [fp, #-0x70]
    // 0x7a4bb0: StoreField: r1->field_7 = r0
    //     0x7a4bb0: stur            w0, [x1, #7]
    // 0x7a4bb4: ldur            x0, [fp, #-0x78]
    // 0x7a4bb8: StoreField: r1->field_b = r0
    //     0x7a4bb8: stur            w0, [x1, #0xb]
    // 0x7a4bbc: r0 = false
    //     0x7a4bbc: add             x0, NULL, #0x30  ; false
    // 0x7a4bc0: StoreField: r1->field_f = r0
    //     0x7a4bc0: stur            w0, [x1, #0xf]
    // 0x7a4bc4: r0 = call 0x262b70
    //     0x7a4bc4: bl              #0x262b70
    // 0x7a4bc8: r0 = Null
    //     0x7a4bc8: mov             x0, NULL
    // 0x7a4bcc: r0 = ReturnAsyncNotFuture()
    //     0x7a4bcc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a4bd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a4bd0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a4bd4: b               #0x7a4ad4
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a4bd8, size: 0x150
    // 0x7a4bd8: EnterFrame
    //     0x7a4bd8: stp             fp, lr, [SP, #-0x10]!
    //     0x7a4bdc: mov             fp, SP
    // 0x7a4be0: AllocStack(0x98)
    //     0x7a4be0: sub             SP, SP, #0x98
    // 0x7a4be4: SetupParameters(fia this /* r1 */)
    //     0x7a4be4: stur            NULL, [fp, #-8]
    //     0x7a4be8: movz            x0, #0
    //     0x7a4bec: add             x1, fp, w0, sxtw #2
    //     0x7a4bf0: ldr             x1, [x1, #0x10]
    //     0x7a4bf4: ldur            w2, [x1, #0x17]
    //     0x7a4bf8: add             x2, x2, HEAP, lsl #32
    //     0x7a4bfc: stur            x2, [fp, #-0x68]
    // 0x7a4c00: CheckStackOverflow
    //     0x7a4c00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a4c04: cmp             SP, x16
    //     0x7a4c08: b.ls            #0x7a4d20
    // 0x7a4c0c: InitAsync() -> Future<void?>
    //     0x7a4c0c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a4c10: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a4c14: r0 = call 0x26a1d0
    //     0x7a4c14: bl              #0x26a1d0
    // 0x7a4c18: ldur            x0, [fp, #-0x68]
    // 0x7a4c1c: LoadField: r1 = r0->field_f
    //     0x7a4c1c: ldur            w1, [x0, #0xf]
    // 0x7a4c20: DecompressPointer r1
    //     0x7a4c20: add             x1, x1, HEAP, lsl #32
    // 0x7a4c24: LoadField: r3 = r1->field_7
    //     0x7a4c24: ldur            w3, [x1, #7]
    // 0x7a4c28: DecompressPointer r3
    //     0x7a4c28: add             x3, x3, HEAP, lsl #32
    // 0x7a4c2c: mov             x2, x0
    // 0x7a4c30: stur            x3, [fp, #-0x70]
    // 0x7a4c34: r1 = Function '<anonymous closure>':.
    //     0x7a4c34: add             x1, PP, #0x16, lsl #12  ; [pp+0x16630] AnonymousClosure: (0x7a4d28), in [package:flutter/src/services/platform_channel.dart] fia::<anonymous closure> (0x7a4bd8)
    //     0x7a4c38: ldr             x1, [x1, #0x630]
    // 0x7a4c3c: r0 = AllocateClosure()
    //     0x7a4c3c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a4c40: ldur            x2, [fp, #-0x70]
    // 0x7a4c44: mov             x3, x0
    // 0x7a4c48: r1 = Instance__uha
    //     0x7a4c48: ldr             x1, [PP, #0xd8]  ; [pp+0xd8] Obj!_uha@441e71
    // 0x7a4c4c: r0 = call 0x269db4
    //     0x7a4c4c: bl              #0x269db4
    // 0x7a4c50: ldur            x0, [fp, #-0x68]
    // 0x7a4c54: LoadField: r1 = r0->field_13
    //     0x7a4c54: ldur            w1, [x0, #0x13]
    // 0x7a4c58: DecompressPointer r1
    //     0x7a4c58: add             x1, x1, HEAP, lsl #32
    // 0x7a4c5c: r16 = <void?>
    //     0x7a4c5c: ldr             x16, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x7a4c60: stp             x1, x16, [SP, #0x10]
    // 0x7a4c64: r16 = "listen"
    //     0x7a4c64: add             x16, PP, #0x16, lsl #12  ; [pp+0x16638] "listen"
    //     0x7a4c68: ldr             x16, [x16, #0x638]
    // 0x7a4c6c: stp             NULL, x16, [SP]
    // 0x7a4c70: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x7a4c70: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x7a4c74: r0 = call 0x6a5e04
    //     0x7a4c74: bl              #0x6a5e04
    // 0x7a4c78: mov             x1, x0
    // 0x7a4c7c: stur            x1, [fp, #-0x70]
    // 0x7a4c80: r0 = Await()
    //     0x7a4c80: bl              #0x74ab64  ; AwaitStub
    // 0x7a4c84: b               #0x7a4d18
    // 0x7a4c88: sub             SP, fp, #0x98
    // 0x7a4c8c: ldur            x3, [fp, #-0x68]
    // 0x7a4c90: mov             x4, x0
    // 0x7a4c94: stur            x0, [fp, #-0x70]
    // 0x7a4c98: mov             x0, x1
    // 0x7a4c9c: stur            x1, [fp, #-0x78]
    // 0x7a4ca0: r1 = Null
    //     0x7a4ca0: mov             x1, NULL
    // 0x7a4ca4: r2 = 4
    //     0x7a4ca4: movz            x2, #0x4
    // 0x7a4ca8: r0 = AllocateArray()
    //     0x7a4ca8: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7a4cac: r16 = "while activating platform stream on channel "
    //     0x7a4cac: add             x16, PP, #0x16, lsl #12  ; [pp+0x16640] "while activating platform stream on channel "
    //     0x7a4cb0: ldr             x16, [x16, #0x640]
    // 0x7a4cb4: StoreField: r0->field_f = r16
    //     0x7a4cb4: stur            w16, [x0, #0xf]
    // 0x7a4cb8: ldur            x1, [fp, #-0x68]
    // 0x7a4cbc: LoadField: r2 = r1->field_f
    //     0x7a4cbc: ldur            w2, [x1, #0xf]
    // 0x7a4cc0: DecompressPointer r2
    //     0x7a4cc0: add             x2, x2, HEAP, lsl #32
    // 0x7a4cc4: LoadField: r1 = r2->field_7
    //     0x7a4cc4: ldur            w1, [x2, #7]
    // 0x7a4cc8: DecompressPointer r1
    //     0x7a4cc8: add             x1, x1, HEAP, lsl #32
    // 0x7a4ccc: StoreField: r0->field_13 = r1
    //     0x7a4ccc: stur            w1, [x0, #0x13]
    // 0x7a4cd0: str             x0, [SP]
    // 0x7a4cd4: r0 = _interpolate()
    //     0x7a4cd4: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x7a4cd8: r1 = <List<Object>>
    //     0x7a4cd8: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x7a4cdc: stur            x0, [fp, #-0x68]
    // 0x7a4ce0: r0 = OO()
    //     0x7a4ce0: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x7a4ce4: mov             x1, x0
    // 0x7a4ce8: ldur            x2, [fp, #-0x68]
    // 0x7a4cec: r3 = Instance_GO
    //     0x7a4cec: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x7a4cf0: r0 = call 0x24e36c
    //     0x7a4cf0: bl              #0x24e36c
    // 0x7a4cf4: r0 = SO()
    //     0x7a4cf4: bl              #0x74f350  ; AllocateSOStub -> SO (size=0x14)
    // 0x7a4cf8: mov             x1, x0
    // 0x7a4cfc: ldur            x0, [fp, #-0x70]
    // 0x7a4d00: StoreField: r1->field_7 = r0
    //     0x7a4d00: stur            w0, [x1, #7]
    // 0x7a4d04: ldur            x0, [fp, #-0x78]
    // 0x7a4d08: StoreField: r1->field_b = r0
    //     0x7a4d08: stur            w0, [x1, #0xb]
    // 0x7a4d0c: r0 = false
    //     0x7a4d0c: add             x0, NULL, #0x30  ; false
    // 0x7a4d10: StoreField: r1->field_f = r0
    //     0x7a4d10: stur            w0, [x1, #0xf]
    // 0x7a4d14: r0 = call 0x262b70
    //     0x7a4d14: bl              #0x262b70
    // 0x7a4d18: r0 = Null
    //     0x7a4d18: mov             x0, NULL
    // 0x7a4d1c: r0 = ReturnAsyncNotFuture()
    //     0x7a4d1c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a4d20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a4d20: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a4d24: b               #0x7a4c0c
  }
  [closure] Future<Null> <anonymous closure>(dynamic, ByteData?) async {
    // ** addr: 0x7a4d28, size: 0x13c
    // 0x7a4d28: EnterFrame
    //     0x7a4d28: stp             fp, lr, [SP, #-0x10]!
    //     0x7a4d2c: mov             fp, SP
    // 0x7a4d30: AllocStack(0x78)
    //     0x7a4d30: sub             SP, SP, #0x78
    // 0x7a4d34: SetupParameters(fia this /* r1 */, dynamic _ /* r2, fp-0x68 */)
    //     0x7a4d34: stur            NULL, [fp, #-8]
    //     0x7a4d38: movz            x0, #0
    //     0x7a4d3c: add             x1, fp, w0, sxtw #2
    //     0x7a4d40: ldr             x1, [x1, #0x18]
    //     0x7a4d44: add             x2, fp, w0, sxtw #2
    //     0x7a4d48: ldr             x2, [x2, #0x10]
    //     0x7a4d4c: stur            x2, [fp, #-0x68]
    //     0x7a4d50: ldur            w3, [x1, #0x17]
    //     0x7a4d54: add             x3, x3, HEAP, lsl #32
    //     0x7a4d58: stur            x3, [fp, #-0x60]
    // 0x7a4d5c: CheckStackOverflow
    //     0x7a4d5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a4d60: cmp             SP, x16
    //     0x7a4d64: b.ls            #0x7a4e5c
    // 0x7a4d68: InitAsync() -> Future<Null?>
    //     0x7a4d68: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7a4d6c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a4d70: ldur            x0, [fp, #-0x68]
    // 0x7a4d74: cmp             w0, NULL
    // 0x7a4d78: b.ne            #0x7a4d9c
    // 0x7a4d7c: ldur            x3, [fp, #-0x60]
    // 0x7a4d80: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x7a4d80: ldur            w1, [x3, #0x17]
    // 0x7a4d84: DecompressPointer r1
    //     0x7a4d84: add             x1, x1, HEAP, lsl #32
    // 0x7a4d88: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a4d8c: cmp             w1, w16
    // 0x7a4d90: b.eq            #0x7a4e1c
    // 0x7a4d94: r0 = call 0x5ddbc4
    //     0x7a4d94: bl              #0x5ddbc4
    // 0x7a4d98: b               #0x7a4e14
    // 0x7a4d9c: ldur            x3, [fp, #-0x60]
    // 0x7a4da0: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x7a4da0: ldur            w4, [x3, #0x17]
    // 0x7a4da4: DecompressPointer r4
    //     0x7a4da4: add             x4, x4, HEAP, lsl #32
    // 0x7a4da8: stur            x4, [fp, #-0x70]
    // 0x7a4dac: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a4db0: cmp             w4, w16
    // 0x7a4db4: b.eq            #0x7a4e2c
    // 0x7a4db8: mov             x2, x0
    // 0x7a4dbc: r1 = Instance_Sha
    //     0x7a4dbc: ldr             x1, [PP, #0x58]  ; [pp+0x58] Obj!Sha@441de1
    // 0x7a4dc0: r0 = call 0x7118d4
    //     0x7a4dc0: bl              #0x7118d4
    // 0x7a4dc4: ldur            x1, [fp, #-0x70]
    // 0x7a4dc8: mov             x2, x0
    // 0x7a4dcc: r0 = call 0x5ef1e0
    //     0x7a4dcc: bl              #0x5ef1e0
    // 0x7a4dd0: b               #0x7a4e14
    // 0x7a4dd4: sub             SP, fp, #0x78
    // 0x7a4dd8: mov             x2, x0
    // 0x7a4ddc: r0 = 60
    //     0x7a4ddc: movz            x0, #0x3c
    // 0x7a4de0: branchIfSmi(r2, 0x7a4dec)
    //     0x7a4de0: tbz             w2, #0, #0x7a4dec
    // 0x7a4de4: r0 = LoadClassIdInstr(r2)
    //     0x7a4de4: ldur            x0, [x2, #-1]
    //     0x7a4de8: ubfx            x0, x0, #0xc, #0x14
    // 0x7a4dec: cmp             x0, #0x5e5
    // 0x7a4df0: b.ne            #0x7a4e50
    // 0x7a4df4: ldur            x0, [fp, #-0x60]
    // 0x7a4df8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7a4df8: ldur            w1, [x0, #0x17]
    // 0x7a4dfc: DecompressPointer r1
    //     0x7a4dfc: add             x1, x1, HEAP, lsl #32
    // 0x7a4e00: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a4e04: cmp             w1, w16
    // 0x7a4e08: b.eq            #0x7a4e40
    // 0x7a4e0c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7a4e0c: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7a4e10: r0 = call 0x5ef024
    //     0x7a4e10: bl              #0x5ef024
    // 0x7a4e14: r0 = Null
    //     0x7a4e14: mov             x0, NULL
    // 0x7a4e18: r0 = ReturnAsyncNotFuture()
    //     0x7a4e18: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a4e1c: r16 = "controller"
    //     0x7a4e1c: ldr             x16, [PP, #0x2d00]  ; [pp+0x2d00] "controller"
    // 0x7a4e20: str             x16, [SP]
    // 0x7a4e24: r0 = _throwLocalNotInitialized()
    //     0x7a4e24: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7a4e28: brk             #0
    // 0x7a4e2c: mov             x0, x3
    // 0x7a4e30: r16 = "controller"
    //     0x7a4e30: ldr             x16, [PP, #0x2d00]  ; [pp+0x2d00] "controller"
    // 0x7a4e34: str             x16, [SP]
    // 0x7a4e38: r0 = _throwLocalNotInitialized()
    //     0x7a4e38: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7a4e3c: brk             #0
    // 0x7a4e40: r16 = "controller"
    //     0x7a4e40: ldr             x16, [PP, #0x2d00]  ; [pp+0x2d00] "controller"
    // 0x7a4e44: str             x16, [SP]
    // 0x7a4e48: r0 = _throwLocalNotInitialized()
    //     0x7a4e48: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7a4e4c: brk             #0
    // 0x7a4e50: mov             x0, x2
    // 0x7a4e54: r0 = ReThrow()
    //     0x7a4e54: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7a4e58: brk             #0
    // 0x7a4e5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a4e5c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a4e60: b               #0x7a4d68
  }
}

// class id: 1487, size: 0x14, field offset: 0x8
//   const constructor, 
class MethodChannel extends Object {

  _OneByteString field_8;
  Sha field_c;

  [closure] Future<ByteData?> <anonymous closure>(dynamic, ByteData?) {
    // ** addr: 0x26a364, size: -0x1
  }
}

// class id: 1488, size: 0x14, field offset: 0x14
//   const constructor, 
class eia extends MethodChannel {

  _OneByteString field_8;
  Qha field_c;
}

// class id: 1489, size: 0x18, field offset: 0x8
//   const constructor, 
class dia<X0> extends Object {

  _OneByteString field_c;
  Pha field_10;

  [closure] Future<ByteData?> <anonymous closure>(dynamic, ByteData?) async {
    // ** addr: 0x754144, size: 0xe8
    // 0x754144: EnterFrame
    //     0x754144: stp             fp, lr, [SP, #-0x10]!
    //     0x754148: mov             fp, SP
    // 0x75414c: AllocStack(0x38)
    //     0x75414c: sub             SP, SP, #0x38
    // 0x754150: SetupParameters(dia<X0> this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x754150: stur            NULL, [fp, #-8]
    //     0x754154: movz            x0, #0
    //     0x754158: add             x1, fp, w0, sxtw #2
    //     0x75415c: ldr             x1, [x1, #0x18]
    //     0x754160: add             x2, fp, w0, sxtw #2
    //     0x754164: ldr             x2, [x2, #0x10]
    //     0x754168: stur            x2, [fp, #-0x18]
    //     0x75416c: ldur            w3, [x1, #0x17]
    //     0x754170: add             x3, x3, HEAP, lsl #32
    //     0x754174: stur            x3, [fp, #-0x10]
    // 0x754178: CheckStackOverflow
    //     0x754178: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75417c: cmp             SP, x16
    //     0x754180: b.ls            #0x754220
    // 0x754184: InitAsync() -> Future<ByteData?>
    //     0x754184: ldr             x0, [PP, #0xe0]  ; [pp+0xe0] TypeArguments: <ByteData?>
    //     0x754188: bl              #0x74ada8  ; InitAsyncStub
    // 0x75418c: ldur            x3, [fp, #-0x10]
    // 0x754190: LoadField: r0 = r3->field_f
    //     0x754190: ldur            w0, [x3, #0xf]
    // 0x754194: DecompressPointer r0
    //     0x754194: add             x0, x0, HEAP, lsl #32
    // 0x754198: LoadField: r4 = r0->field_f
    //     0x754198: ldur            w4, [x0, #0xf]
    // 0x75419c: DecompressPointer r4
    //     0x75419c: add             x4, x4, HEAP, lsl #32
    // 0x7541a0: stur            x4, [fp, #-0x28]
    // 0x7541a4: LoadField: r5 = r3->field_13
    //     0x7541a4: ldur            w5, [x3, #0x13]
    // 0x7541a8: DecompressPointer r5
    //     0x7541a8: add             x5, x5, HEAP, lsl #32
    // 0x7541ac: stur            x5, [fp, #-0x20]
    // 0x7541b0: r0 = LoadClassIdInstr(r4)
    //     0x7541b0: ldur            x0, [x4, #-1]
    //     0x7541b4: ubfx            x0, x0, #0xc, #0x14
    // 0x7541b8: mov             x1, x4
    // 0x7541bc: ldur            x2, [fp, #-0x18]
    // 0x7541c0: r0 = GDT[cid_x0 + -0xca3]()
    //     0x7541c0: sub             lr, x0, #0xca3
    //     0x7541c4: ldr             lr, [x21, lr, lsl #3]
    //     0x7541c8: blr             lr
    // 0x7541cc: mov             x1, x0
    // 0x7541d0: ldur            x0, [fp, #-0x20]
    // 0x7541d4: cmp             w0, NULL
    // 0x7541d8: b.eq            #0x754228
    // 0x7541dc: stp             x1, x0, [SP]
    // 0x7541e0: ClosureCall
    //     0x7541e0: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7541e4: ldur            x2, [x0, #0x1f]
    //     0x7541e8: blr             x2
    // 0x7541ec: mov             x1, x0
    // 0x7541f0: stur            x1, [fp, #-0x18]
    // 0x7541f4: r0 = Await()
    //     0x7541f4: bl              #0x74ab64  ; AwaitStub
    // 0x7541f8: ldur            x1, [fp, #-0x28]
    // 0x7541fc: r2 = LoadClassIdInstr(r1)
    //     0x7541fc: ldur            x2, [x1, #-1]
    //     0x754200: ubfx            x2, x2, #0xc, #0x14
    // 0x754204: mov             x16, x0
    // 0x754208: mov             x0, x2
    // 0x75420c: mov             x2, x16
    // 0x754210: r0 = GDT[cid_x0 + -0xcae]()
    //     0x754210: sub             lr, x0, #0xcae
    //     0x754214: ldr             lr, [x21, lr, lsl #3]
    //     0x754218: blr             lr
    // 0x75421c: r0 = ReturnAsyncNotFuture()
    //     0x75421c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x754220: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754220: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754224: b               #0x754184
    // 0x754228: r0 = NullErrorSharedWithoutFPURegs()
    //     0x754228: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
}

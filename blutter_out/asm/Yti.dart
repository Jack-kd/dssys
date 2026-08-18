// lib: , url: Yti

// class id: 1049016, size: 0x8
class :: {
}

// class id: 1522, size: 0x8, field offset: 0x8
//   const constructor, 
class _uha extends pha {

  [closure] Future<void> <anonymous closure>(dynamic, ByteData?, (dynamic, ByteData?) => void) async {
    // ** addr: 0x752e34, size: 0x158
    // 0x752e34: EnterFrame
    //     0x752e34: stp             fp, lr, [SP, #-0x10]!
    //     0x752e38: mov             fp, SP
    // 0x752e3c: AllocStack(0xc0)
    //     0x752e3c: sub             SP, SP, #0xc0
    // 0x752e40: SetupParameters(_uha this /* r1 */, dynamic _ /* r2, fp-0xa0 */, dynamic _ /* r3, fp-0x98 */)
    //     0x752e40: stur            NULL, [fp, #-8]
    //     0x752e44: movz            x0, #0
    //     0x752e48: add             x1, fp, w0, sxtw #2
    //     0x752e4c: ldr             x1, [x1, #0x20]
    //     0x752e50: add             x2, fp, w0, sxtw #2
    //     0x752e54: ldr             x2, [x2, #0x18]
    //     0x752e58: stur            x2, [fp, #-0xa0]
    //     0x752e5c: add             x3, fp, w0, sxtw #2
    //     0x752e60: ldr             x3, [x3, #0x10]
    //     0x752e64: stur            x3, [fp, #-0x98]
    //     0x752e68: ldur            w4, [x1, #0x17]
    //     0x752e6c: add             x4, x4, HEAP, lsl #32
    //     0x752e70: stur            x4, [fp, #-0x90]
    // 0x752e74: CheckStackOverflow
    //     0x752e74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x752e78: cmp             SP, x16
    //     0x752e7c: b.ls            #0x752f80
    // 0x752e80: InitAsync() -> Future<void?>
    //     0x752e80: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x752e84: bl              #0x74ada8  ; InitAsyncStub
    // 0x752e88: ldur            x1, [fp, #-0x90]
    // 0x752e8c: LoadField: r2 = r1->field_f
    //     0x752e8c: ldur            w2, [x1, #0xf]
    // 0x752e90: DecompressPointer r2
    //     0x752e90: add             x2, x2, HEAP, lsl #32
    // 0x752e94: stur            x2, [fp, #-0xa8]
    // 0x752e98: cmp             w2, NULL
    // 0x752e9c: b.eq            #0x752f88
    // 0x752ea0: ldur            x16, [fp, #-0xa0]
    // 0x752ea4: stp             x16, x2, [SP]
    // 0x752ea8: mov             x0, x2
    // 0x752eac: ClosureCall
    //     0x752eac: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x752eb0: ldur            x2, [x0, #0x1f]
    //     0x752eb4: blr             x2
    // 0x752eb8: mov             x2, x0
    // 0x752ebc: r1 = <ByteData?>
    //     0x752ebc: ldr             x1, [PP, #0xe0]  ; [pp+0xe0] TypeArguments: <ByteData?>
    // 0x752ec0: stur            x2, [fp, #-0xa8]
    // 0x752ec4: r0 = AwaitWithTypeCheck()
    //     0x752ec4: bl              #0x752f8c  ; AwaitWithTypeCheckStub
    // 0x752ec8: b               #0x752f24
    // 0x752ecc: sub             SP, fp, #0xc0
    // 0x752ed0: mov             x2, x0
    // 0x752ed4: stur            x0, [fp, #-0xa0]
    // 0x752ed8: mov             x0, x1
    // 0x752edc: stur            x1, [fp, #-0xa8]
    // 0x752ee0: r1 = <List<Object>>
    //     0x752ee0: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x752ee4: r0 = OO()
    //     0x752ee4: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x752ee8: mov             x1, x0
    // 0x752eec: r2 = "during a platform message callback"
    //     0x752eec: ldr             x2, [PP, #0x11f8]  ; [pp+0x11f8] "during a platform message callback"
    // 0x752ef0: r3 = Instance_GO
    //     0x752ef0: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x752ef4: stur            x0, [fp, #-0xb0]
    // 0x752ef8: r0 = call 0x24e36c
    //     0x752ef8: bl              #0x24e36c
    // 0x752efc: r0 = SO()
    //     0x752efc: bl              #0x74f350  ; AllocateSOStub -> SO (size=0x14)
    // 0x752f00: mov             x1, x0
    // 0x752f04: ldur            x0, [fp, #-0xa0]
    // 0x752f08: StoreField: r1->field_7 = r0
    //     0x752f08: stur            w0, [x1, #7]
    // 0x752f0c: ldur            x2, [fp, #-0xa8]
    // 0x752f10: StoreField: r1->field_b = r2
    //     0x752f10: stur            w2, [x1, #0xb]
    // 0x752f14: r3 = false
    //     0x752f14: add             x3, NULL, #0x30  ; false
    // 0x752f18: StoreField: r1->field_f = r3
    //     0x752f18: stur            w3, [x1, #0xf]
    // 0x752f1c: r0 = call 0x262b70
    //     0x752f1c: bl              #0x262b70
    // 0x752f20: r0 = Null
    //     0x752f20: mov             x0, NULL
    // 0x752f24: ldur            x16, [fp, #-0x98]
    // 0x752f28: stp             x0, x16, [SP]
    // 0x752f2c: ldur            x0, [fp, #-0x98]
    // 0x752f30: ClosureCall
    //     0x752f30: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x752f34: ldur            x2, [x0, #0x1f]
    //     0x752f38: blr             x2
    // 0x752f3c: r0 = Null
    //     0x752f3c: mov             x0, NULL
    // 0x752f40: r0 = ReturnAsyncNotFuture()
    //     0x752f40: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x752f44: sub             SP, fp, #0xc0
    // 0x752f48: mov             x2, x0
    // 0x752f4c: stur            x0, [fp, #-0x90]
    // 0x752f50: stur            x1, [fp, #-0xa0]
    // 0x752f54: ldur            x16, [fp, #-0x98]
    // 0x752f58: ldur            lr, [fp, #-0x88]
    // 0x752f5c: stp             lr, x16, [SP]
    // 0x752f60: ldur            x0, [fp, #-0x98]
    // 0x752f64: ClosureCall
    //     0x752f64: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x752f68: ldur            x2, [x0, #0x1f]
    //     0x752f6c: blr             x2
    // 0x752f70: ldur            x0, [fp, #-0x90]
    // 0x752f74: ldur            x1, [fp, #-0xa0]
    // 0x752f78: r0 = ReThrow()
    //     0x752f78: bl              #0x7dc4f4  ; ReThrowStub
    // 0x752f7c: brk             #0
    // 0x752f80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x752f80: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x752f84: b               #0x752e80
    // 0x752f88: r0 = NullErrorSharedWithoutFPURegs()
    //     0x752f88: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, ByteData?) {
    // ** addr: 0x7552e8, size: 0xac
    // 0x7552e8: EnterFrame
    //     0x7552e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7552ec: mov             fp, SP
    // 0x7552f0: AllocStack(0x68)
    //     0x7552f0: sub             SP, SP, #0x68
    // 0x7552f4: SetupParameters([dynamic _ /* r0 */])
    //     0x7552f4: ldr             x0, [fp, #0x18]
    //     0x7552f8: ldur            w2, [x0, #0x17]
    //     0x7552fc: add             x2, x2, HEAP, lsl #32
    //     0x755300: stur            x2, [fp, #-0x58]
    // 0x755304: CheckStackOverflow
    //     0x755304: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x755308: cmp             SP, x16
    //     0x75530c: b.ls            #0x75538c
    // 0x755310: LoadField: r1 = r2->field_f
    //     0x755310: ldur            w1, [x2, #0xf]
    // 0x755314: DecompressPointer r1
    //     0x755314: add             x1, x1, HEAP, lsl #32
    // 0x755318: ldr             x16, [fp, #0x10]
    // 0x75531c: str             x16, [SP]
    // 0x755320: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x755320: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x755324: r0 = call 0x5ee7a4
    //     0x755324: bl              #0x5ee7a4
    // 0x755328: b               #0x75537c
    // 0x75532c: sub             SP, fp, #0x68
    // 0x755330: mov             x2, x0
    // 0x755334: stur            x0, [fp, #-0x58]
    // 0x755338: mov             x0, x1
    // 0x75533c: stur            x1, [fp, #-0x60]
    // 0x755340: r1 = <List<Object>>
    //     0x755340: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x755344: r0 = OO()
    //     0x755344: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x755348: mov             x1, x0
    // 0x75534c: r2 = "during a platform message response callback"
    //     0x75534c: ldr             x2, [PP, #0x138]  ; [pp+0x138] "during a platform message response callback"
    // 0x755350: r3 = Instance_GO
    //     0x755350: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x755354: r0 = call 0x24e36c
    //     0x755354: bl              #0x24e36c
    // 0x755358: r0 = SO()
    //     0x755358: bl              #0x74f350  ; AllocateSOStub -> SO (size=0x14)
    // 0x75535c: mov             x1, x0
    // 0x755360: ldur            x0, [fp, #-0x58]
    // 0x755364: StoreField: r1->field_7 = r0
    //     0x755364: stur            w0, [x1, #7]
    // 0x755368: ldur            x0, [fp, #-0x60]
    // 0x75536c: StoreField: r1->field_b = r0
    //     0x75536c: stur            w0, [x1, #0xb]
    // 0x755370: r0 = false
    //     0x755370: add             x0, NULL, #0x30  ; false
    // 0x755374: StoreField: r1->field_f = r0
    //     0x755374: stur            w0, [x1, #0xf]
    // 0x755378: r0 = call 0x262b70
    //     0x755378: bl              #0x262b70
    // 0x75537c: r0 = Null
    //     0x75537c: mov             x0, NULL
    // 0x755380: LeaveFrame
    //     0x755380: mov             SP, fp
    //     0x755384: ldp             fp, lr, [SP], #0x10
    // 0x755388: ret
    //     0x755388: ret             
    // 0x75538c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x75538c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x755390: b               #0x755310
  }
}

// class id: 2635, size: 0x8, field offset: 0x8
abstract class Qx extends Object {
}

// class id: 2796, size: 0x8, field offset: 0x8
abstract class Su extends _Ou {

  [closure] static List<BP> _zUd(dynamic, String) {
    // ** addr: 0x270184, size: -0x1
  }
}

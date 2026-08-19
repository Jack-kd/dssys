// lib: , url: iyi

// class id: 1048641, size: 0x8
class :: {
}

// class id: 2182, size: 0x8, field offset: 0x8
abstract class OI extends Object {

  static late final DI fCf; // offset: 0xc10
  static late final Map<String, List<(dynamic) => void>> eCf; // offset: 0xc0c

  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x776368, size: 0xcc
    // 0x776368: EnterFrame
    //     0x776368: stp             fp, lr, [SP, #-0x10]!
    //     0x77636c: mov             fp, SP
    // 0x776370: AllocStack(0x20)
    //     0x776370: sub             SP, SP, #0x20
    // 0x776374: SetupParameters(dynamic _ /* r1 */)
    //     0x776374: stur            NULL, [fp, #-8]
    //     0x776378: movz            x0, #0
    //     0x77637c: add             x1, fp, w0, sxtw #2
    //     0x776380: ldr             x1, [x1, #0x10]
    //     0x776384: ldur            w2, [x1, #0x17]
    //     0x776388: add             x2, x2, HEAP, lsl #32
    //     0x77638c: stur            x2, [fp, #-0x10]
    // 0x776390: CheckStackOverflow
    //     0x776390: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x776394: cmp             SP, x16
    //     0x776398: b.ls            #0x77642c
    // 0x77639c: InitAsync() -> Future<void?>
    //     0x77639c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7763a0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7763a4: ldur            x1, [fp, #-0x10]
    // 0x7763a8: LoadField: r0 = r1->field_1b
    //     0x7763a8: ldur            w0, [x1, #0x1b]
    // 0x7763ac: DecompressPointer r0
    //     0x7763ac: add             x0, x0, HEAP, lsl #32
    // 0x7763b0: cmp             w0, NULL
    // 0x7763b4: b.ne            #0x7763c0
    // 0x7763b8: r2 = Null
    //     0x7763b8: mov             x2, NULL
    // 0x7763bc: b               #0x7763d8
    // 0x7763c0: str             x0, [SP]
    // 0x7763c4: ClosureCall
    //     0x7763c4: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7763c8: ldur            x2, [x0, #0x1f]
    //     0x7763cc: blr             x2
    // 0x7763d0: mov             x2, x0
    // 0x7763d4: ldur            x1, [fp, #-0x10]
    // 0x7763d8: mov             x0, x2
    // 0x7763dc: stur            x2, [fp, #-0x18]
    // 0x7763e0: r0 = Await()
    //     0x7763e0: bl              #0x74ab64  ; AwaitStub
    // 0x7763e4: ldur            x0, [fp, #-0x10]
    // 0x7763e8: LoadField: r1 = r0->field_33
    //     0x7763e8: ldur            w1, [x0, #0x33]
    // 0x7763ec: DecompressPointer r1
    //     0x7763ec: add             x1, x1, HEAP, lsl #32
    // 0x7763f0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7763f4: cmp             w1, w16
    // 0x7763f8: b.eq            #0x776418
    // 0x7763fc: str             x1, [SP]
    // 0x776400: mov             x0, x1
    // 0x776404: ClosureCall
    //     0x776404: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x776408: ldur            x2, [x0, #0x1f]
    //     0x77640c: blr             x2
    // 0x776410: r0 = Null
    //     0x776410: mov             x0, NULL
    // 0x776414: r0 = ReturnAsyncNotFuture()
    //     0x776414: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x776418: r16 = "GTd"
    //     0x776418: add             x16, PP, #0x12, lsl #12  ; [pp+0x12268] "GTd"
    //     0x77641c: ldr             x16, [x16, #0x268]
    // 0x776420: str             x16, [SP]
    // 0x776424: r0 = _throwLocalNotInitialized()
    //     0x776424: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x776428: brk             #0
    // 0x77642c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77642c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x776430: b               #0x77639c
  }
  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x77644c, size: 0x80
    // 0x77644c: EnterFrame
    //     0x77644c: stp             fp, lr, [SP, #-0x10]!
    //     0x776450: mov             fp, SP
    // 0x776454: AllocStack(0x18)
    //     0x776454: sub             SP, SP, #0x18
    // 0x776458: SetupParameters(dynamic _ /* r1 */)
    //     0x776458: stur            NULL, [fp, #-8]
    //     0x77645c: movz            x0, #0
    //     0x776460: add             x1, fp, w0, sxtw #2
    //     0x776464: ldr             x1, [x1, #0x10]
    //     0x776468: ldur            w2, [x1, #0x17]
    //     0x77646c: add             x2, x2, HEAP, lsl #32
    //     0x776470: stur            x2, [fp, #-0x10]
    // 0x776474: CheckStackOverflow
    //     0x776474: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x776478: cmp             SP, x16
    //     0x77647c: b.ls            #0x7764c4
    // 0x776480: InitAsync() -> Future<void?>
    //     0x776480: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x776484: bl              #0x74ada8  ; InitAsyncStub
    // 0x776488: ldur            x0, [fp, #-0x10]
    // 0x77648c: LoadField: r1 = r0->field_1b
    //     0x77648c: ldur            w1, [x0, #0x1b]
    // 0x776490: DecompressPointer r1
    //     0x776490: add             x1, x1, HEAP, lsl #32
    // 0x776494: cmp             w1, NULL
    // 0x776498: b.ne            #0x7764a4
    // 0x77649c: r1 = Null
    //     0x77649c: mov             x1, NULL
    // 0x7764a0: b               #0x7764b0
    // 0x7764a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7764a4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7764a8: r0 = call 0x2bfd14
    //     0x7764a8: bl              #0x2bfd14
    // 0x7764ac: mov             x1, x0
    // 0x7764b0: mov             x0, x1
    // 0x7764b4: stur            x1, [fp, #-0x18]
    // 0x7764b8: r0 = Await()
    //     0x7764b8: bl              #0x74ab64  ; AwaitStub
    // 0x7764bc: r0 = Null
    //     0x7764bc: mov             x0, NULL
    // 0x7764c0: r0 = ReturnAsyncNotFuture()
    //     0x7764c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7764c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7764c4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7764c8: b               #0x776480
  }
  [closure] static UI <anonymous closure>(dynamic, (dynamic) => void) {
    // ** addr: 0x3a8fec, size: -0x1
  }
  [closure] static KX <anonymous closure>(dynamic, aM, (dynamic) => void, KX) {
    // ** addr: 0x3a8ce8, size: -0x1
  }
  [closure] static WI <anonymous closure>(dynamic, (dynamic) => void, KX) {
    // ** addr: 0x3a8b50, size: -0x1
  }
  [closure] static KX <anonymous closure>(dynamic, (dynamic) => void) {
    // ** addr: 0x3a8a8c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x3a8c88, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x3a8c30, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x3a86e4, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic) {
    // ** addr: 0x3a85cc, size: -0x1
  }
  [closure] static sI <anonymous closure>(dynamic, (dynamic) => void) {
    // ** addr: 0x3a8074, size: -0x1
  }
  [closure] static KX <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x3a8278, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x3a8154, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, xQ) {
    // ** addr: 0x3a857c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x3a7cb4, size: -0x1
  }
  [closure] static KX <anonymous closure>(dynamic, aM, (dynamic) => void, KX) {
    // ** addr: 0x44e5bc, size: -0x1
  }
}

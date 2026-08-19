// lib: , url: NEi

// class id: 1049191, size: 0x8
class :: {
}

// class id: 1278, size: 0x8, field offset: 0x8
abstract class Gxa extends Object {

  static late String VNf; // offset: 0xfbc
  static late String UNf; // offset: 0xfb8

  [closure] static Future<void> <anonymous closure>(dynamic, kTa, int) async {
    // ** addr: 0x7c6750, size: 0x80
    // 0x7c6750: EnterFrame
    //     0x7c6750: stp             fp, lr, [SP, #-0x10]!
    //     0x7c6754: mov             fp, SP
    // 0x7c6758: AllocStack(0x18)
    //     0x7c6758: sub             SP, SP, #0x18
    // 0x7c675c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7c675c: stur            NULL, [fp, #-8]
    //     0x7c6760: movz            x0, #0
    //     0x7c6764: add             x1, fp, w0, sxtw #2
    //     0x7c6768: ldr             x1, [x1, #0x20]
    //     0x7c676c: add             x2, fp, w0, sxtw #2
    //     0x7c6770: ldr             x2, [x2, #0x18]
    //     0x7c6774: stur            x2, [fp, #-0x18]
    //     0x7c6778: ldur            w3, [x1, #0x17]
    //     0x7c677c: add             x3, x3, HEAP, lsl #32
    //     0x7c6780: stur            x3, [fp, #-0x10]
    // 0x7c6784: CheckStackOverflow
    //     0x7c6784: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c6788: cmp             SP, x16
    //     0x7c678c: b.ls            #0x7c67c8
    // 0x7c6790: InitAsync() -> Future<void?>
    //     0x7c6790: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c6794: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c6798: ldur            x1, [fp, #-0x18]
    // 0x7c679c: r0 = call 0x655fec
    //     0x7c679c: bl              #0x655fec
    // 0x7c67a0: mov             x1, x0
    // 0x7c67a4: stur            x0, [fp, #-0x18]
    // 0x7c67a8: r0 = call 0x656b5c
    //     0x7c67a8: bl              #0x656b5c
    // 0x7c67ac: ldur            x1, [fp, #-0x18]
    // 0x7c67b0: r0 = call 0x655958
    //     0x7c67b0: bl              #0x655958
    // 0x7c67b4: mov             x1, x0
    // 0x7c67b8: stur            x1, [fp, #-0x18]
    // 0x7c67bc: r0 = Await()
    //     0x7c67bc: bl              #0x74ab64  ; AwaitStub
    // 0x7c67c0: r0 = Null
    //     0x7c67c0: mov             x0, NULL
    // 0x7c67c4: r0 = ReturnAsyncNotFuture()
    //     0x7c67c4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c67c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c67c8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c67cc: b               #0x7c6790
  }
  [closure] static Null <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x656b28, size: -0x1
  }
}

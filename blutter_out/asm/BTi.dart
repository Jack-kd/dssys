// lib: , url: BTi

// class id: 1049863, size: 0x8
class :: {

  static late final rSa<ecb, fcb> Vzg; // offset: 0x1484
}

// class id: 2477, size: 0x20, field offset: 0x10
class ecb extends Mq<dynamic> {

  late final lcb Qzg; // offset: 0x14
  late final tZa _zmg; // offset: 0x18

  void Rwb(ecb) {
    // ** addr: 0x74f3d4, size: 0x48
    // 0x74f3d4: EnterFrame
    //     0x74f3d4: stp             fp, lr, [SP, #-0x10]!
    //     0x74f3d8: mov             fp, SP
    // 0x74f3dc: CheckStackOverflow
    //     0x74f3dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74f3e0: cmp             SP, x16
    //     0x74f3e4: b.ls            #0x74f3fc
    // 0x74f3e8: ldr             x1, [fp, #0x10]
    // 0x74f3ec: r0 = call 0x2540e4
    //     0x74f3ec: bl              #0x2540e4
    // 0x74f3f0: LeaveFrame
    //     0x74f3f0: mov             SP, fp
    //     0x74f3f4: ldp             fp, lr, [SP], #0x10
    // 0x74f3f8: ret
    //     0x74f3f8: ret             
    // 0x74f3fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74f3fc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74f400: b               #0x74f3e8
  }
  [closure] static ecb ecb(dynamic) {
    // ** addr: 0x2633e0, size: -0x1
  }
  [closure] fcb eac(dynamic) {
    // ** addr: 0x5b04f8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5b0640, size: -0x1
  }
}

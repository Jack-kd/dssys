// lib: , url: ryi

// class id: 1048651, size: 0x8
class :: {
}

// class id: 2170, size: 0x18, field offset: 0x8
abstract class gJ<X0, X1, X2> extends Object
    implements Map<X0, X1> {

  X2? [](gJ<X0, X1, X2>, Object?) {
    // ** addr: 0x7809a8, size: 0x4c
    // 0x7809a8: EnterFrame
    //     0x7809a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7809ac: mov             fp, SP
    // 0x7809b0: CheckStackOverflow
    //     0x7809b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7809b4: cmp             SP, x16
    //     0x7809b8: b.ls            #0x7809d4
    // 0x7809bc: ldr             x1, [fp, #0x18]
    // 0x7809c0: ldr             x2, [fp, #0x10]
    // 0x7809c4: r0 = call 0x68ba04
    //     0x7809c4: bl              #0x68ba04
    // 0x7809c8: LeaveFrame
    //     0x7809c8: mov             SP, fp
    //     0x7809cc: ldp             fp, lr, [SP], #0x10
    // 0x7809d0: ret
    //     0x7809d0: ret             
    // 0x7809d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7809d4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7809d8: b               #0x7809bc
  }
  [closure] void <anonymous closure>(dynamic, X1, X2) {
    // ** addr: 0x6d06d0, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, X0, Da<X1, X2>) {
    // ** addr: 0x609cd4, size: -0x1
  }
  [closure] Da<X1, X2> <anonymous closure>(dynamic) {
    // ** addr: 0x6933e4, size: -0x1
  }
  [closure] Da<X1, X2> <anonymous closure>(dynamic, Da<X0, Da<X1, X2>>) {
    // ** addr: 0x6cb0f0, size: -0x1
  }
  [closure] Da<X0, Da<X1, X2>> <anonymous closure>(dynamic, Da<X1, X2>) {
    // ** addr: 0x6008fc, size: -0x1
  }
}

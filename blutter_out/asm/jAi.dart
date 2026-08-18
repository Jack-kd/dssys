// lib: , url: jAi

// class id: 1048778, size: 0x8
class :: {
}

// class id: 1887, size: 0x8, field offset: 0x8
abstract class _HP extends Object {
}

// class id: 1888, size: 0x14, field offset: 0x8
class _KP extends _HP {
}

// class id: 1889, size: 0x14, field offset: 0x8
class _JP extends _HP {

  static late final _JP Hj; // offset: 0x9ec
  static late final List<Object?> _OWe; // offset: 0x9f0
}

// class id: 1890, size: 0xc, field offset: 0x8
class _IP extends _HP {
}

// class id: 1891, size: 0x10, field offset: 0x8
//   const constructor, 
class GP<X0, X1> extends Object {

  X1? [](GP<X0, X1>, X0) {
    // ** addr: 0x7b8440, size: 0x4c
    // 0x7b8440: EnterFrame
    //     0x7b8440: stp             fp, lr, [SP, #-0x10]!
    //     0x7b8444: mov             fp, SP
    // 0x7b8448: CheckStackOverflow
    //     0x7b8448: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b844c: cmp             SP, x16
    //     0x7b8450: b.ls            #0x7b846c
    // 0x7b8454: ldr             x1, [fp, #0x18]
    // 0x7b8458: ldr             x2, [fp, #0x10]
    // 0x7b845c: r0 = call 0x2285e4
    //     0x7b845c: bl              #0x2285e4
    // 0x7b8460: LeaveFrame
    //     0x7b8460: mov             SP, fp
    //     0x7b8464: ldp             fp, lr, [SP], #0x10
    // 0x7b8468: ret
    //     0x7b8468: ret             
    // 0x7b846c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b846c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b8470: b               #0x7b8454
  }
}

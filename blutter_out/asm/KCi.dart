// lib: , url: KCi

// class id: 1048937, size: 0x8
class :: {
}

// class id: 1661, size: 0x28, field offset: 0x8
//   const constructor, 
class Xaa extends Object {
}

// class id: 2801, size: 0x34, field offset: 0x2c
//   const constructor, 
abstract class LT<X0> extends tu {

  tu? [](LT<X0>, X0) {
    // ** addr: 0x7b1cec, size: 0x4c
    // 0x7b1cec: EnterFrame
    //     0x7b1cec: stp             fp, lr, [SP, #-0x10]!
    //     0x7b1cf0: mov             fp, SP
    // 0x7b1cf4: CheckStackOverflow
    //     0x7b1cf4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b1cf8: cmp             SP, x16
    //     0x7b1cfc: b.ls            #0x7b1d18
    // 0x7b1d00: ldr             x1, [fp, #0x18]
    // 0x7b1d04: ldr             x2, [fp, #0x10]
    // 0x7b1d08: r0 = call 0x53fb1c
    //     0x7b1d08: bl              #0x53fb1c
    // 0x7b1d0c: LeaveFrame
    //     0x7b1d0c: mov             SP, fp
    //     0x7b1d10: ldp             fp, lr, [SP], #0x10
    // 0x7b1d14: ret
    //     0x7b1d14: ret             
    // 0x7b1d18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b1d18: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b1d1c: b               #0x7b1d00
  }
}

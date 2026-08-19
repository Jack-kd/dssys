// lib: , url: jKi

// class id: 1049400, size: 0x8
class :: {
}

// class id: 758, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class lg extends Object {

  String TTb(lg) {
    // ** addr: 0x7a7040, size: 0x48
    // 0x7a7040: EnterFrame
    //     0x7a7040: stp             fp, lr, [SP, #-0x10]!
    //     0x7a7044: mov             fp, SP
    // 0x7a7048: CheckStackOverflow
    //     0x7a7048: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a704c: cmp             SP, x16
    //     0x7a7050: b.ls            #0x7a7068
    // 0x7a7054: ldr             x1, [fp, #0x10]
    // 0x7a7058: r0 = call 0x4d02fc
    //     0x7a7058: bl              #0x4d02fc
    // 0x7a705c: LeaveFrame
    //     0x7a705c: mov             SP, fp
    //     0x7a7060: ldp             fp, lr, [SP], #0x10
    // 0x7a7064: ret
    //     0x7a7064: ret             
    // 0x7a7068: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a7068: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a706c: b               #0x7a7054
  }
}

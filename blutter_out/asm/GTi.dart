// lib: , url: GTi

// class id: 1049869, size: 0x8
class :: {
}

// class id: 199, size: 0x40, field offset: 0x8
class lcb extends Object {

  void Rwb(lcb) {
    // ** addr: 0x74f38c, size: 0x48
    // 0x74f38c: EnterFrame
    //     0x74f38c: stp             fp, lr, [SP, #-0x10]!
    //     0x74f390: mov             fp, SP
    // 0x74f394: CheckStackOverflow
    //     0x74f394: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74f398: cmp             SP, x16
    //     0x74f39c: b.ls            #0x74f3b4
    // 0x74f3a0: ldr             x1, [fp, #0x10]
    // 0x74f3a4: r0 = call 0x254138
    //     0x74f3a4: bl              #0x254138
    // 0x74f3a8: LeaveFrame
    //     0x74f3a8: mov             SP, fp
    //     0x74f3ac: ldp             fp, lr, [SP], #0x10
    // 0x74f3b0: ret
    //     0x74f3b0: ret             
    // 0x74f3b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74f3b4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74f3b8: b               #0x74f3a0
  }
}

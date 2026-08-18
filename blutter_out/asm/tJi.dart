// lib: , url: tJi

// class id: 1049359, size: 0x8
class :: {
}

// class id: 781, size: 0xc, field offset: 0x8
class VJa extends Object {

  Future<void> Rwb(VJa) {
    // ** addr: 0x74e478, size: 0x48
    // 0x74e478: EnterFrame
    //     0x74e478: stp             fp, lr, [SP, #-0x10]!
    //     0x74e47c: mov             fp, SP
    // 0x74e480: CheckStackOverflow
    //     0x74e480: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e484: cmp             SP, x16
    //     0x74e488: b.ls            #0x74e4a0
    // 0x74e48c: ldr             x1, [fp, #0x10]
    // 0x74e490: r0 = __unknown_function__()
    //     0x74e490: bl              #0x74cd70  ; [] ::__unknown_function__
    // 0x74e494: LeaveFrame
    //     0x74e494: mov             SP, fp
    //     0x74e498: ldp             fp, lr, [SP], #0x10
    // 0x74e49c: ret
    //     0x74e49c: ret             
    // 0x74e4a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e4a0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e4a4: b               #0x74e48c
  }
  Future<void> Aef(VJa) {
    // ** addr: 0x74e4c0, size: 0x48
    // 0x74e4c0: EnterFrame
    //     0x74e4c0: stp             fp, lr, [SP, #-0x10]!
    //     0x74e4c4: mov             fp, SP
    // 0x74e4c8: CheckStackOverflow
    //     0x74e4c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e4cc: cmp             SP, x16
    //     0x74e4d0: b.ls            #0x74e4e8
    // 0x74e4d4: ldr             x1, [fp, #0x10]
    // 0x74e4d8: r0 = __unknown_function__()
    //     0x74e4d8: bl              #0x74e4f0  ; [] ::__unknown_function__
    // 0x74e4dc: LeaveFrame
    //     0x74e4dc: mov             SP, fp
    //     0x74e4e0: ldp             fp, lr, [SP], #0x10
    // 0x74e4e4: ret
    //     0x74e4e4: ret             
    // 0x74e4e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e4e8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e4ec: b               #0x74e4d4
  }
}

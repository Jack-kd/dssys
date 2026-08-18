// lib: lZi, url: sMi

// class id: 1049486, size: 0x8
class :: {
}

// class id: 629, size: 0x18, field offset: 0x10
class FNa extends oPa {
}

// class id: 631, size: 0x18, field offset: 0x18
class ENa extends nPa {

  ENa? -(ENa, ENa) {
    // ** addr: 0x78796c, size: 0x4c
    // 0x78796c: EnterFrame
    //     0x78796c: stp             fp, lr, [SP, #-0x10]!
    //     0x787970: mov             fp, SP
    // 0x787974: CheckStackOverflow
    //     0x787974: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x787978: cmp             SP, x16
    //     0x78797c: b.ls            #0x787998
    // 0x787980: ldr             x1, [fp, #0x18]
    // 0x787984: ldr             x2, [fp, #0x10]
    // 0x787988: r0 = call 0x42c1d8
    //     0x787988: bl              #0x42c1d8
    // 0x78798c: LeaveFrame
    //     0x78798c: mov             SP, fp
    //     0x787990: ldp             fp, lr, [SP], #0x10
    // 0x787994: ret
    //     0x787994: ret             
    // 0x787998: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x787998: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78799c: b               #0x787980
  }
  ENa? +(ENa, ENa?) {
    // ** addr: 0x787e78, size: 0x4c
    // 0x787e78: EnterFrame
    //     0x787e78: stp             fp, lr, [SP, #-0x10]!
    //     0x787e7c: mov             fp, SP
    // 0x787e80: CheckStackOverflow
    //     0x787e80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x787e84: cmp             SP, x16
    //     0x787e88: b.ls            #0x787ea4
    // 0x787e8c: ldr             x1, [fp, #0x18]
    // 0x787e90: ldr             x2, [fp, #0x10]
    // 0x787e94: r0 = call 0x42c290
    //     0x787e94: bl              #0x42c290
    // 0x787e98: LeaveFrame
    //     0x787e98: mov             SP, fp
    //     0x787e9c: ldp             fp, lr, [SP], #0x10
    // 0x787ea0: ret
    //     0x787ea0: ret             
    // 0x787ea4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x787ea4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x787ea8: b               #0x787e8c
  }
}

// class id: 633, size: 0x10, field offset: 0x8
class DNa extends mPa {

  DNa -(DNa, DNa) {
    // ** addr: 0x7879c4, size: 0x4c
    // 0x7879c4: EnterFrame
    //     0x7879c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7879c8: mov             fp, SP
    // 0x7879cc: CheckStackOverflow
    //     0x7879cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7879d0: cmp             SP, x16
    //     0x7879d4: b.ls            #0x7879f0
    // 0x7879d8: ldr             x1, [fp, #0x18]
    // 0x7879dc: ldr             x2, [fp, #0x10]
    // 0x7879e0: r0 = call 0x434008
    //     0x7879e0: bl              #0x434008
    // 0x7879e4: LeaveFrame
    //     0x7879e4: mov             SP, fp
    //     0x7879e8: ldp             fp, lr, [SP], #0x10
    // 0x7879ec: ret
    //     0x7879ec: ret             
    // 0x7879f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7879f0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7879f4: b               #0x7879d8
  }
  DNa *(DNa, DNa) {
    // ** addr: 0x787a10, size: 0x4c
    // 0x787a10: EnterFrame
    //     0x787a10: stp             fp, lr, [SP, #-0x10]!
    //     0x787a14: mov             fp, SP
    // 0x787a18: CheckStackOverflow
    //     0x787a18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x787a1c: cmp             SP, x16
    //     0x787a20: b.ls            #0x787a3c
    // 0x787a24: ldr             x1, [fp, #0x18]
    // 0x787a28: ldr             x2, [fp, #0x10]
    // 0x787a2c: r0 = call 0x42c528
    //     0x787a2c: bl              #0x42c528
    // 0x787a30: LeaveFrame
    //     0x787a30: mov             SP, fp
    //     0x787a34: ldp             fp, lr, [SP], #0x10
    // 0x787a38: ret
    //     0x787a38: ret             
    // 0x787a3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x787a3c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x787a40: b               #0x787a24
  }
  DNa +(DNa, DNa) {
    // ** addr: 0x787a5c, size: 0x4c
    // 0x787a5c: EnterFrame
    //     0x787a5c: stp             fp, lr, [SP, #-0x10]!
    //     0x787a60: mov             fp, SP
    // 0x787a64: CheckStackOverflow
    //     0x787a64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x787a68: cmp             SP, x16
    //     0x787a6c: b.ls            #0x787a88
    // 0x787a70: ldr             x1, [fp, #0x18]
    // 0x787a74: ldr             x2, [fp, #0x10]
    // 0x787a78: r0 = call 0x42c6d8
    //     0x787a78: bl              #0x42c6d8
    // 0x787a7c: LeaveFrame
    //     0x787a7c: mov             SP, fp
    //     0x787a80: ldp             fp, lr, [SP], #0x10
    // 0x787a84: ret
    //     0x787a84: ret             
    // 0x787a88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x787a88: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x787a8c: b               #0x787a70
  }
}

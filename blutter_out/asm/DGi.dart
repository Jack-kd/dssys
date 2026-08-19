// lib: , url: DGi

// class id: 1049212, size: 0x8
class :: {
}

// class id: 909, size: 0x10, field offset: 0x8
class PEa extends Object
    implements NEa {

  late final VJa _sQf; // offset: 0x8
  late final TKa _Vwb; // offset: 0xc

  Future<void> Rwb(PEa) {
    // ** addr: 0x74e8f4, size: 0x48
    // 0x74e8f4: EnterFrame
    //     0x74e8f4: stp             fp, lr, [SP, #-0x10]!
    //     0x74e8f8: mov             fp, SP
    // 0x74e8fc: CheckStackOverflow
    //     0x74e8fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e900: cmp             SP, x16
    //     0x74e904: b.ls            #0x74e91c
    // 0x74e908: ldr             x1, [fp, #0x10]
    // 0x74e90c: r0 = call 0x251508
    //     0x74e90c: bl              #0x251508
    // 0x74e910: LeaveFrame
    //     0x74e910: mov             SP, fp
    //     0x74e914: ldp             fp, lr, [SP], #0x10
    // 0x74e918: ret
    //     0x74e918: ret             
    // 0x74e91c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e91c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e920: b               #0x74e908
  }
  Future<void> Aef(PEa) {
    // ** addr: 0x74e93c, size: 0x48
    // 0x74e93c: EnterFrame
    //     0x74e93c: stp             fp, lr, [SP, #-0x10]!
    //     0x74e940: mov             fp, SP
    // 0x74e944: CheckStackOverflow
    //     0x74e944: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e948: cmp             SP, x16
    //     0x74e94c: b.ls            #0x74e964
    // 0x74e950: ldr             x1, [fp, #0x10]
    // 0x74e954: r0 = call 0x253ad4
    //     0x74e954: bl              #0x253ad4
    // 0x74e958: LeaveFrame
    //     0x74e958: mov             SP, fp
    //     0x74e95c: ldp             fp, lr, [SP], #0x10
    // 0x74e960: ret
    //     0x74e960: ret             
    // 0x74e964: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e964: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e968: b               #0x74e950
  }
}

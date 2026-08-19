// lib: , url: Pyi

// class id: 1048679, size: 0x8
class :: {
}

// class id: 2133, size: 0xc, field offset: 0x8
class aK extends Object {

  List<String>? [](aK, String) {
    // ** addr: 0x77e860, size: 0x84
    // 0x77e860: EnterFrame
    //     0x77e860: stp             fp, lr, [SP, #-0x10]!
    //     0x77e864: mov             fp, SP
    // 0x77e868: CheckStackOverflow
    //     0x77e868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77e86c: cmp             SP, x16
    //     0x77e870: b.ls            #0x77e8c4
    // 0x77e874: ldr             x0, [fp, #0x10]
    // 0x77e878: r2 = Null
    //     0x77e878: mov             x2, NULL
    // 0x77e87c: r1 = Null
    //     0x77e87c: mov             x1, NULL
    // 0x77e880: r4 = 60
    //     0x77e880: movz            x4, #0x3c
    // 0x77e884: branchIfSmi(r0, 0x77e890)
    //     0x77e884: tbz             w0, #0, #0x77e890
    // 0x77e888: r4 = LoadClassIdInstr(r0)
    //     0x77e888: ldur            x4, [x0, #-1]
    //     0x77e88c: ubfx            x4, x4, #0xc, #0x14
    // 0x77e890: sub             x4, x4, #0x5e
    // 0x77e894: cmp             x4, #1
    // 0x77e898: b.ls            #0x77e8ac
    // 0x77e89c: r8 = String
    //     0x77e89c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x77e8a0: r3 = Null
    //     0x77e8a0: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dae8] Null
    //     0x77e8a4: ldr             x3, [x3, #0xae8]
    // 0x77e8a8: r0 = String()
    //     0x77e8a8: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x77e8ac: ldr             x1, [fp, #0x18]
    // 0x77e8b0: ldr             x2, [fp, #0x10]
    // 0x77e8b4: r0 = call 0x406be0
    //     0x77e8b4: bl              #0x406be0
    // 0x77e8b8: LeaveFrame
    //     0x77e8b8: mov             SP, fp
    //     0x77e8bc: ldp             fp, lr, [SP], #0x10
    // 0x77e8c0: ret
    //     0x77e8c0: ret             
    // 0x77e8c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77e8c4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77e8c8: b               #0x77e874
  }
  [closure] Da<String, List<String>> <anonymous closure>(dynamic, String, List<String>) {
    // ** addr: 0x406b90, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, String, List<String>) {
    // ** addr: 0x5762c0, size: -0x1
  }
}

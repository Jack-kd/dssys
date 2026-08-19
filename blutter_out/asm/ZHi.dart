// lib: , url: ZHi

// class id: 1049286, size: 0x8
class :: {

  [closure] static String cPf(dynamic, String?) {
    // ** addr: 0x33ff5c, size: -0x1
  }
  [closure] static String PXf(dynamic, String) {
    // ** addr: 0x33ff2c, size: -0x1
  }
  [closure] static String OXf(dynamic, String) {
    // ** addr: 0x33fefc, size: -0x1
  }
  [closure] static String <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x33fd58, size: -0x1
  }
  [closure] static String <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x33f85c, size: -0x1
  }
  [closure] static String <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x33f850, size: -0x1
  }
  [closure] static String _NXf(dynamic, String) {
    // ** addr: 0x33f79c, size: -0x1
  }
}

// class id: 858, size: 0xc, field offset: 0x8
class QHa extends Object
    implements sa {
}

// class id: 859, size: 0x8, field offset: 0x8
abstract class PHa extends Object {
}

// class id: 860, size: 0x14, field offset: 0x8
class NHa<X0> extends Object
    implements PHa {

  bool vl(NHa<X0>, String) {
    // ** addr: 0x7d4e24, size: 0x84
    // 0x7d4e24: EnterFrame
    //     0x7d4e24: stp             fp, lr, [SP, #-0x10]!
    //     0x7d4e28: mov             fp, SP
    // 0x7d4e2c: CheckStackOverflow
    //     0x7d4e2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d4e30: cmp             SP, x16
    //     0x7d4e34: b.ls            #0x7d4e88
    // 0x7d4e38: ldr             x0, [fp, #0x10]
    // 0x7d4e3c: r2 = Null
    //     0x7d4e3c: mov             x2, NULL
    // 0x7d4e40: r1 = Null
    //     0x7d4e40: mov             x1, NULL
    // 0x7d4e44: r4 = 60
    //     0x7d4e44: movz            x4, #0x3c
    // 0x7d4e48: branchIfSmi(r0, 0x7d4e54)
    //     0x7d4e48: tbz             w0, #0, #0x7d4e54
    // 0x7d4e4c: r4 = LoadClassIdInstr(r0)
    //     0x7d4e4c: ldur            x4, [x0, #-1]
    //     0x7d4e50: ubfx            x4, x4, #0xc, #0x14
    // 0x7d4e54: sub             x4, x4, #0x5e
    // 0x7d4e58: cmp             x4, #1
    // 0x7d4e5c: b.ls            #0x7d4e70
    // 0x7d4e60: r8 = String
    //     0x7d4e60: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7d4e64: r3 = Null
    //     0x7d4e64: add             x3, PP, #0x34, lsl #12  ; [pp+0x34690] Null
    //     0x7d4e68: ldr             x3, [x3, #0x690]
    // 0x7d4e6c: r0 = String()
    //     0x7d4e6c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7d4e70: ldr             x1, [fp, #0x18]
    // 0x7d4e74: ldr             x2, [fp, #0x10]
    // 0x7d4e78: r0 = call 0x6e2454
    //     0x7d4e78: bl              #0x6e2454
    // 0x7d4e7c: LeaveFrame
    //     0x7d4e7c: mov             SP, fp
    //     0x7d4e80: ldp             fp, lr, [SP], #0x10
    // 0x7d4e84: ret
    //     0x7d4e84: ret             
    // 0x7d4e88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d4e88: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d4e8c: b               #0x7d4e38
  }
  X0 [](NHa<X0>, String) {
    // ** addr: 0x7d4eb4, size: 0x84
    // 0x7d4eb4: EnterFrame
    //     0x7d4eb4: stp             fp, lr, [SP, #-0x10]!
    //     0x7d4eb8: mov             fp, SP
    // 0x7d4ebc: CheckStackOverflow
    //     0x7d4ebc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d4ec0: cmp             SP, x16
    //     0x7d4ec4: b.ls            #0x7d4f18
    // 0x7d4ec8: ldr             x0, [fp, #0x10]
    // 0x7d4ecc: r2 = Null
    //     0x7d4ecc: mov             x2, NULL
    // 0x7d4ed0: r1 = Null
    //     0x7d4ed0: mov             x1, NULL
    // 0x7d4ed4: r4 = 60
    //     0x7d4ed4: movz            x4, #0x3c
    // 0x7d4ed8: branchIfSmi(r0, 0x7d4ee4)
    //     0x7d4ed8: tbz             w0, #0, #0x7d4ee4
    // 0x7d4edc: r4 = LoadClassIdInstr(r0)
    //     0x7d4edc: ldur            x4, [x0, #-1]
    //     0x7d4ee0: ubfx            x4, x4, #0xc, #0x14
    // 0x7d4ee4: sub             x4, x4, #0x5e
    // 0x7d4ee8: cmp             x4, #1
    // 0x7d4eec: b.ls            #0x7d4f00
    // 0x7d4ef0: r8 = String
    //     0x7d4ef0: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7d4ef4: r3 = Null
    //     0x7d4ef4: add             x3, PP, #0x34, lsl #12  ; [pp+0x346a8] Null
    //     0x7d4ef8: ldr             x3, [x3, #0x6a8]
    // 0x7d4efc: r0 = String()
    //     0x7d4efc: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7d4f00: ldr             x1, [fp, #0x18]
    // 0x7d4f04: ldr             x2, [fp, #0x10]
    // 0x7d4f08: r0 = call 0x6e2580
    //     0x7d4f08: bl              #0x6e2580
    // 0x7d4f0c: LeaveFrame
    //     0x7d4f0c: mov             SP, fp
    //     0x7d4f10: ldp             fp, lr, [SP], #0x10
    // 0x7d4f14: ret
    //     0x7d4f14: ret             
    // 0x7d4f18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d4f18: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d4f1c: b               #0x7d4ec8
  }
}

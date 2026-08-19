// lib: , url: DCi

// class id: 1048930, size: 0x8
class :: {
}

// class id: 1729, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class pV extends Object {

  pV +(pV, pV) {
    // ** addr: 0x7686d0, size: 0x88
    // 0x7686d0: EnterFrame
    //     0x7686d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7686d4: mov             fp, SP
    // 0x7686d8: CheckStackOverflow
    //     0x7686d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7686dc: cmp             SP, x16
    //     0x7686e0: b.ls            #0x768738
    // 0x7686e4: ldr             x0, [fp, #0x10]
    // 0x7686e8: r2 = Null
    //     0x7686e8: mov             x2, NULL
    // 0x7686ec: r1 = Null
    //     0x7686ec: mov             x1, NULL
    // 0x7686f0: r4 = 60
    //     0x7686f0: movz            x4, #0x3c
    // 0x7686f4: branchIfSmi(r0, 0x768700)
    //     0x7686f4: tbz             w0, #0, #0x768700
    // 0x7686f8: r4 = LoadClassIdInstr(r0)
    //     0x7686f8: ldur            x4, [x0, #-1]
    //     0x7686fc: ubfx            x4, x4, #0xc, #0x14
    // 0x768700: sub             x4, x4, #0x6c3
    // 0x768704: cmp             x4, #0x10
    // 0x768708: b.ls            #0x768720
    // 0x76870c: r8 = pV
    //     0x76870c: add             x8, PP, #0x27, lsl #12  ; [pp+0x27180] Type: pV
    //     0x768710: ldr             x8, [x8, #0x180]
    // 0x768714: r3 = Null
    //     0x768714: add             x3, PP, #0x27, lsl #12  ; [pp+0x27188] Null
    //     0x768718: ldr             x3, [x3, #0x188]
    // 0x76871c: r0 = pV()
    //     0x76871c: bl              #0x76874c  ; IsType_pV_Stub
    // 0x768720: ldr             x1, [fp, #0x18]
    // 0x768724: ldr             x2, [fp, #0x10]
    // 0x768728: r0 = call 0x363744
    //     0x768728: bl              #0x363744
    // 0x76872c: LeaveFrame
    //     0x76872c: mov             SP, fp
    //     0x768730: ldp             fp, lr, [SP], #0x10
    // 0x768734: ret
    //     0x768734: ret             
    // 0x768738: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x768738: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76873c: b               #0x7686e4
  }
}

// class id: 1733, size: 0xc, field offset: 0x8
class _Laa extends pV {

  [closure] eba <anonymous closure>(dynamic, eba, pV) {
    // ** addr: 0x6f3b58, size: -0x1
  }
  [closure] pV <anonymous closure>(dynamic, pV) {
    // ** addr: 0x70e4d8, size: -0x1
  }
}

// class id: 1737, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class Lx extends pV {

  [closure] static Lx? ijc(dynamic, Lx?, Lx?, double) {
    // ** addr: 0x55ac28, size: -0x1
  }
}

// class id: 3136, size: 0x20, field offset: 0x8
//   const constructor, 
class Kaa extends _Hq {

  tu field_8;
  _Mint field_c;
  Jaa field_14;
  _Double field_18;
}

// class id: 5478, size: 0x14, field offset: 0x14
enum Jaa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

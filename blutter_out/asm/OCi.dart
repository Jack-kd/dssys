// lib: , url: OCi

// class id: 1048941, size: 0x8
class :: {
}

// class id: 1651, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class eba extends Object {

  [closure] static eba? ijc(dynamic, eba?, eba?, double) {
    // ** addr: 0x55ada0, size: -0x1
  }
}

// class id: 1652, size: 0x38, field offset: 0x8
//   const constructor, 
class _gba extends eba {

  _Double field_8;
  _Double field_10;
  _Double field_18;
  _Double field_20;
  _Double field_28;
  _Double field_30;

  _gba *(_gba, double) {
    // ** addr: 0x7b274c, size: 0x50
    // 0x7b274c: EnterFrame
    //     0x7b274c: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2750: mov             fp, SP
    // 0x7b2754: CheckStackOverflow
    //     0x7b2754: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2758: cmp             SP, x16
    //     0x7b275c: b.ls            #0x7b277c
    // 0x7b2760: ldr             x0, [fp, #0x10]
    // 0x7b2764: LoadField: d0 = r0->field_7
    //     0x7b2764: ldur            d0, [x0, #7]
    // 0x7b2768: ldr             x1, [fp, #0x18]
    // 0x7b276c: r0 = call 0x70db88
    //     0x7b276c: bl              #0x70db88
    // 0x7b2770: LeaveFrame
    //     0x7b2770: mov             SP, fp
    //     0x7b2774: ldp             fp, lr, [SP], #0x10
    // 0x7b2778: ret
    //     0x7b2778: ret             
    // 0x7b277c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b277c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2780: b               #0x7b2760
  }
}

// class id: 1653, size: 0x28, field offset: 0x8
//   const constructor, 
class fba extends eba {

  _Double field_8;
  _Mint field_10;
  _Double field_18;
  _Mint field_20;

  fba -(fba, fba) {
    // ** addr: 0x7667d4, size: 0x84
    // 0x7667d4: EnterFrame
    //     0x7667d4: stp             fp, lr, [SP, #-0x10]!
    //     0x7667d8: mov             fp, SP
    // 0x7667dc: CheckStackOverflow
    //     0x7667dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7667e0: cmp             SP, x16
    //     0x7667e4: b.ls            #0x766838
    // 0x7667e8: ldr             x0, [fp, #0x10]
    // 0x7667ec: r2 = Null
    //     0x7667ec: mov             x2, NULL
    // 0x7667f0: r1 = Null
    //     0x7667f0: mov             x1, NULL
    // 0x7667f4: r4 = 60
    //     0x7667f4: movz            x4, #0x3c
    // 0x7667f8: branchIfSmi(r0, 0x766804)
    //     0x7667f8: tbz             w0, #0, #0x766804
    // 0x7667fc: r4 = LoadClassIdInstr(r0)
    //     0x7667fc: ldur            x4, [x0, #-1]
    //     0x766800: ubfx            x4, x4, #0xc, #0x14
    // 0x766804: cmp             x4, #0x675
    // 0x766808: b.eq            #0x766820
    // 0x76680c: r8 = fba
    //     0x76680c: add             x8, PP, #0x28, lsl #12  ; [pp+0x28530] Type: fba
    //     0x766810: ldr             x8, [x8, #0x530]
    // 0x766814: r3 = Null
    //     0x766814: add             x3, PP, #0x28, lsl #12  ; [pp+0x28548] Null
    //     0x766818: ldr             x3, [x3, #0x548]
    // 0x76681c: r0 = DefaultTypeTest()
    //     0x76681c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x766820: ldr             x1, [fp, #0x18]
    // 0x766824: ldr             x2, [fp, #0x10]
    // 0x766828: r0 = call 0x31fcdc
    //     0x766828: bl              #0x31fcdc
    // 0x76682c: LeaveFrame
    //     0x76682c: mov             SP, fp
    //     0x766830: ldp             fp, lr, [SP], #0x10
    // 0x766834: ret
    //     0x766834: ret             
    // 0x766838: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x766838: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76683c: b               #0x7667e8
  }
  fba *(fba, double) {
    // ** addr: 0x766858, size: 0x50
    // 0x766858: EnterFrame
    //     0x766858: stp             fp, lr, [SP, #-0x10]!
    //     0x76685c: mov             fp, SP
    // 0x766860: CheckStackOverflow
    //     0x766860: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x766864: cmp             SP, x16
    //     0x766868: b.ls            #0x766888
    // 0x76686c: ldr             x0, [fp, #0x10]
    // 0x766870: LoadField: d0 = r0->field_7
    //     0x766870: ldur            d0, [x0, #7]
    // 0x766874: ldr             x1, [fp, #0x18]
    // 0x766878: r0 = call 0x70db1c
    //     0x766878: bl              #0x70db1c
    // 0x76687c: LeaveFrame
    //     0x76687c: mov             SP, fp
    //     0x766880: ldp             fp, lr, [SP], #0x10
    // 0x766884: ret
    //     0x766884: ret             
    // 0x766888: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x766888: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76688c: b               #0x76686c
  }
  fba +(fba, fba) {
    // ** addr: 0x7668a8, size: 0x84
    // 0x7668a8: EnterFrame
    //     0x7668a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7668ac: mov             fp, SP
    // 0x7668b0: CheckStackOverflow
    //     0x7668b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7668b4: cmp             SP, x16
    //     0x7668b8: b.ls            #0x76690c
    // 0x7668bc: ldr             x0, [fp, #0x10]
    // 0x7668c0: r2 = Null
    //     0x7668c0: mov             x2, NULL
    // 0x7668c4: r1 = Null
    //     0x7668c4: mov             x1, NULL
    // 0x7668c8: r4 = 60
    //     0x7668c8: movz            x4, #0x3c
    // 0x7668cc: branchIfSmi(r0, 0x7668d8)
    //     0x7668cc: tbz             w0, #0, #0x7668d8
    // 0x7668d0: r4 = LoadClassIdInstr(r0)
    //     0x7668d0: ldur            x4, [x0, #-1]
    //     0x7668d4: ubfx            x4, x4, #0xc, #0x14
    // 0x7668d8: cmp             x4, #0x675
    // 0x7668dc: b.eq            #0x7668f4
    // 0x7668e0: r8 = fba
    //     0x7668e0: add             x8, PP, #0x28, lsl #12  ; [pp+0x28530] Type: fba
    //     0x7668e4: ldr             x8, [x8, #0x530]
    // 0x7668e8: r3 = Null
    //     0x7668e8: add             x3, PP, #0x28, lsl #12  ; [pp+0x28538] Null
    //     0x7668ec: ldr             x3, [x3, #0x538]
    // 0x7668f0: r0 = DefaultTypeTest()
    //     0x7668f0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7668f4: ldr             x1, [fp, #0x18]
    // 0x7668f8: ldr             x2, [fp, #0x10]
    // 0x7668fc: r0 = call 0x31fd58
    //     0x7668fc: bl              #0x31fd58
    // 0x766900: LeaveFrame
    //     0x766900: mov             SP, fp
    //     0x766904: ldp             fp, lr, [SP], #0x10
    // 0x766908: ret
    //     0x766908: ret             
    // 0x76690c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76690c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x766910: b               #0x7668bc
  }
}

// class id: 1654, size: 0x28, field offset: 0x8
//   const constructor, 
class xu extends eba {

  _Double field_8;
  _Double field_10;
  _Double field_18;
  _Double field_20;

  xu -(xu, xu) {
    // ** addr: 0x759f68, size: 0x88
    // 0x759f68: EnterFrame
    //     0x759f68: stp             fp, lr, [SP, #-0x10]!
    //     0x759f6c: mov             fp, SP
    // 0x759f70: CheckStackOverflow
    //     0x759f70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759f74: cmp             SP, x16
    //     0x759f78: b.ls            #0x759fd0
    // 0x759f7c: ldr             x0, [fp, #0x10]
    // 0x759f80: r2 = Null
    //     0x759f80: mov             x2, NULL
    // 0x759f84: r1 = Null
    //     0x759f84: mov             x1, NULL
    // 0x759f88: r4 = 60
    //     0x759f88: movz            x4, #0x3c
    // 0x759f8c: branchIfSmi(r0, 0x759f98)
    //     0x759f8c: tbz             w0, #0, #0x759f98
    // 0x759f90: r4 = LoadClassIdInstr(r0)
    //     0x759f90: ldur            x4, [x0, #-1]
    //     0x759f94: ubfx            x4, x4, #0xc, #0x14
    // 0x759f98: sub             x4, x4, #0x676
    // 0x759f9c: cmp             x4, #2
    // 0x759fa0: b.ls            #0x759fb8
    // 0x759fa4: r8 = xu
    //     0x759fa4: add             x8, PP, #0x28, lsl #12  ; [pp+0x28558] Type: xu
    //     0x759fa8: ldr             x8, [x8, #0x558]
    // 0x759fac: r3 = Null
    //     0x759fac: add             x3, PP, #0x28, lsl #12  ; [pp+0x28570] Null
    //     0x759fb0: ldr             x3, [x3, #0x570]
    // 0x759fb4: r0 = xu()
    //     0x759fb4: bl              #0x75a0b0  ; IsType_xu_Stub
    // 0x759fb8: ldr             x1, [fp, #0x18]
    // 0x759fbc: ldr             x2, [fp, #0x10]
    // 0x759fc0: r0 = call 0x28a92c
    //     0x759fc0: bl              #0x28a92c
    // 0x759fc4: LeaveFrame
    //     0x759fc4: mov             SP, fp
    //     0x759fc8: ldp             fp, lr, [SP], #0x10
    // 0x759fcc: ret
    //     0x759fcc: ret             
    // 0x759fd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759fd0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759fd4: b               #0x759f7c
  }
  xu *(xu, double) {
    // ** addr: 0x759ff0, size: 0x50
    // 0x759ff0: EnterFrame
    //     0x759ff0: stp             fp, lr, [SP, #-0x10]!
    //     0x759ff4: mov             fp, SP
    // 0x759ff8: CheckStackOverflow
    //     0x759ff8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759ffc: cmp             SP, x16
    //     0x75a000: b.ls            #0x75a020
    // 0x75a004: ldr             x0, [fp, #0x10]
    // 0x75a008: LoadField: d0 = r0->field_7
    //     0x75a008: ldur            d0, [x0, #7]
    // 0x75a00c: ldr             x1, [fp, #0x18]
    // 0x75a010: r0 = call 0x70dab0
    //     0x75a010: bl              #0x70dab0
    // 0x75a014: LeaveFrame
    //     0x75a014: mov             SP, fp
    //     0x75a018: ldp             fp, lr, [SP], #0x10
    // 0x75a01c: ret
    //     0x75a01c: ret             
    // 0x75a020: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x75a020: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75a024: b               #0x75a004
  }
  xu +(xu, xu) {
    // ** addr: 0x75a040, size: 0x88
    // 0x75a040: EnterFrame
    //     0x75a040: stp             fp, lr, [SP, #-0x10]!
    //     0x75a044: mov             fp, SP
    // 0x75a048: CheckStackOverflow
    //     0x75a048: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75a04c: cmp             SP, x16
    //     0x75a050: b.ls            #0x75a0a8
    // 0x75a054: ldr             x0, [fp, #0x10]
    // 0x75a058: r2 = Null
    //     0x75a058: mov             x2, NULL
    // 0x75a05c: r1 = Null
    //     0x75a05c: mov             x1, NULL
    // 0x75a060: r4 = 60
    //     0x75a060: movz            x4, #0x3c
    // 0x75a064: branchIfSmi(r0, 0x75a070)
    //     0x75a064: tbz             w0, #0, #0x75a070
    // 0x75a068: r4 = LoadClassIdInstr(r0)
    //     0x75a068: ldur            x4, [x0, #-1]
    //     0x75a06c: ubfx            x4, x4, #0xc, #0x14
    // 0x75a070: sub             x4, x4, #0x676
    // 0x75a074: cmp             x4, #2
    // 0x75a078: b.ls            #0x75a090
    // 0x75a07c: r8 = xu
    //     0x75a07c: add             x8, PP, #0x28, lsl #12  ; [pp+0x28558] Type: xu
    //     0x75a080: ldr             x8, [x8, #0x558]
    // 0x75a084: r3 = Null
    //     0x75a084: add             x3, PP, #0x28, lsl #12  ; [pp+0x28560] Null
    //     0x75a088: ldr             x3, [x3, #0x560]
    // 0x75a08c: r0 = xu()
    //     0x75a08c: bl              #0x75a0b0  ; IsType_xu_Stub
    // 0x75a090: ldr             x1, [fp, #0x18]
    // 0x75a094: ldr             x2, [fp, #0x10]
    // 0x75a098: r0 = call 0x28a9a8
    //     0x75a098: bl              #0x28a9a8
    // 0x75a09c: LeaveFrame
    //     0x75a09c: mov             SP, fp
    //     0x75a0a0: ldp             fp, lr, [SP], #0x10
    // 0x75a0a4: ret
    //     0x75a0a4: ret             
    // 0x75a0a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x75a0a8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75a0ac: b               #0x75a054
  }
}

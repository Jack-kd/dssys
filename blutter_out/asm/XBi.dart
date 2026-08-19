// lib: , url: XBi

// class id: 1048926, size: 0x8
class :: {
}

// class id: 1670, size: 0x10, field offset: 0x8
//   const constructor, 
class yaa extends Object {

  _Mint field_8;
}

// class id: 1671, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class vaa extends Object {
}

// class id: 1672, size: 0x20, field offset: 0x8
//   const constructor, 
class _xaa extends vaa {

  _xaa *(_xaa, double) {
    // ** addr: 0x7b2878, size: 0x50
    // 0x7b2878: EnterFrame
    //     0x7b2878: stp             fp, lr, [SP, #-0x10]!
    //     0x7b287c: mov             fp, SP
    // 0x7b2880: CheckStackOverflow
    //     0x7b2880: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2884: cmp             SP, x16
    //     0x7b2888: b.ls            #0x7b28a8
    // 0x7b288c: ldr             x0, [fp, #0x10]
    // 0x7b2890: LoadField: d0 = r0->field_7
    //     0x7b2890: ldur            d0, [x0, #7]
    // 0x7b2894: ldr             x1, [fp, #0x18]
    // 0x7b2898: r0 = call 0x70e680
    //     0x7b2898: bl              #0x70e680
    // 0x7b289c: LeaveFrame
    //     0x7b289c: mov             SP, fp
    //     0x7b28a0: ldp             fp, lr, [SP], #0x10
    // 0x7b28a4: ret
    //     0x7b28a4: ret             
    // 0x7b28a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b28a8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b28ac: b               #0x7b288c
  }
}

// class id: 1673, size: 0x18, field offset: 0x8
//   const constructor, 
class waa extends vaa {

  _Double field_8;
  _Double field_10;

  waa -(waa, waa) {
    // ** addr: 0x765d00, size: 0x84
    // 0x765d00: EnterFrame
    //     0x765d00: stp             fp, lr, [SP, #-0x10]!
    //     0x765d04: mov             fp, SP
    // 0x765d08: CheckStackOverflow
    //     0x765d08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x765d0c: cmp             SP, x16
    //     0x765d10: b.ls            #0x765d64
    // 0x765d14: ldr             x0, [fp, #0x10]
    // 0x765d18: r2 = Null
    //     0x765d18: mov             x2, NULL
    // 0x765d1c: r1 = Null
    //     0x765d1c: mov             x1, NULL
    // 0x765d20: r4 = 60
    //     0x765d20: movz            x4, #0x3c
    // 0x765d24: branchIfSmi(r0, 0x765d30)
    //     0x765d24: tbz             w0, #0, #0x765d30
    // 0x765d28: r4 = LoadClassIdInstr(r0)
    //     0x765d28: ldur            x4, [x0, #-1]
    //     0x765d2c: ubfx            x4, x4, #0xc, #0x14
    // 0x765d30: cmp             x4, #0x689
    // 0x765d34: b.eq            #0x765d4c
    // 0x765d38: r8 = waa
    //     0x765d38: add             x8, PP, #0x27, lsl #12  ; [pp+0x27788] Type: waa
    //     0x765d3c: ldr             x8, [x8, #0x788]
    // 0x765d40: r3 = Null
    //     0x765d40: add             x3, PP, #0x27, lsl #12  ; [pp+0x277a0] Null
    //     0x765d44: ldr             x3, [x3, #0x7a0]
    // 0x765d48: r0 = DefaultTypeTest()
    //     0x765d48: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x765d4c: ldr             x1, [fp, #0x18]
    // 0x765d50: ldr             x2, [fp, #0x10]
    // 0x765d54: r0 = call 0x3158e4
    //     0x765d54: bl              #0x3158e4
    // 0x765d58: LeaveFrame
    //     0x765d58: mov             SP, fp
    //     0x765d5c: ldp             fp, lr, [SP], #0x10
    // 0x765d60: ret
    //     0x765d60: ret             
    // 0x765d64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x765d64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x765d68: b               #0x765d14
  }
  waa +(waa, waa) {
    // ** addr: 0x765d90, size: 0x84
    // 0x765d90: EnterFrame
    //     0x765d90: stp             fp, lr, [SP, #-0x10]!
    //     0x765d94: mov             fp, SP
    // 0x765d98: CheckStackOverflow
    //     0x765d98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x765d9c: cmp             SP, x16
    //     0x765da0: b.ls            #0x765df4
    // 0x765da4: ldr             x0, [fp, #0x10]
    // 0x765da8: r2 = Null
    //     0x765da8: mov             x2, NULL
    // 0x765dac: r1 = Null
    //     0x765dac: mov             x1, NULL
    // 0x765db0: r4 = 60
    //     0x765db0: movz            x4, #0x3c
    // 0x765db4: branchIfSmi(r0, 0x765dc0)
    //     0x765db4: tbz             w0, #0, #0x765dc0
    // 0x765db8: r4 = LoadClassIdInstr(r0)
    //     0x765db8: ldur            x4, [x0, #-1]
    //     0x765dbc: ubfx            x4, x4, #0xc, #0x14
    // 0x765dc0: cmp             x4, #0x689
    // 0x765dc4: b.eq            #0x765ddc
    // 0x765dc8: r8 = waa
    //     0x765dc8: add             x8, PP, #0x27, lsl #12  ; [pp+0x27788] Type: waa
    //     0x765dcc: ldr             x8, [x8, #0x788]
    // 0x765dd0: r3 = Null
    //     0x765dd0: add             x3, PP, #0x27, lsl #12  ; [pp+0x27790] Null
    //     0x765dd4: ldr             x3, [x3, #0x790]
    // 0x765dd8: r0 = DefaultTypeTest()
    //     0x765dd8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x765ddc: ldr             x1, [fp, #0x18]
    // 0x765de0: ldr             x2, [fp, #0x10]
    // 0x765de4: r0 = call 0x315930
    //     0x765de4: bl              #0x315930
    // 0x765de8: LeaveFrame
    //     0x765de8: mov             SP, fp
    //     0x765dec: ldp             fp, lr, [SP], #0x10
    // 0x765df0: ret
    //     0x765df0: ret             
    // 0x765df4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x765df4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x765df8: b               #0x765da4
  }
  waa *(waa, double) {
    // ** addr: 0x765e14, size: 0x50
    // 0x765e14: EnterFrame
    //     0x765e14: stp             fp, lr, [SP, #-0x10]!
    //     0x765e18: mov             fp, SP
    // 0x765e1c: CheckStackOverflow
    //     0x765e1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x765e20: cmp             SP, x16
    //     0x765e24: b.ls            #0x765e44
    // 0x765e28: ldr             x0, [fp, #0x10]
    // 0x765e2c: LoadField: d0 = r0->field_7
    //     0x765e2c: ldur            d0, [x0, #7]
    // 0x765e30: ldr             x1, [fp, #0x18]
    // 0x765e34: r0 = call 0x70e63c
    //     0x765e34: bl              #0x70e63c
    // 0x765e38: LeaveFrame
    //     0x765e38: mov             SP, fp
    //     0x765e3c: ldp             fp, lr, [SP], #0x10
    // 0x765e40: ret
    //     0x765e40: ret             
    // 0x765e44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x765e44: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x765e48: b               #0x765e28
  }
}

// class id: 1674, size: 0x18, field offset: 0x8
//   const constructor, 
class vu extends vaa {

  _Double field_8;
  _Double field_10;

  vu -(vu, vu) {
    // ** addr: 0x76226c, size: 0x88
    // 0x76226c: EnterFrame
    //     0x76226c: stp             fp, lr, [SP, #-0x10]!
    //     0x762270: mov             fp, SP
    // 0x762274: CheckStackOverflow
    //     0x762274: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x762278: cmp             SP, x16
    //     0x76227c: b.ls            #0x7622d4
    // 0x762280: ldr             x0, [fp, #0x10]
    // 0x762284: r2 = Null
    //     0x762284: mov             x2, NULL
    // 0x762288: r1 = Null
    //     0x762288: mov             x1, NULL
    // 0x76228c: r4 = 60
    //     0x76228c: movz            x4, #0x3c
    // 0x762290: branchIfSmi(r0, 0x76229c)
    //     0x762290: tbz             w0, #0, #0x76229c
    // 0x762294: r4 = LoadClassIdInstr(r0)
    //     0x762294: ldur            x4, [x0, #-1]
    //     0x762298: ubfx            x4, x4, #0xc, #0x14
    // 0x76229c: sub             x4, x4, #0x68a
    // 0x7622a0: cmp             x4, #2
    // 0x7622a4: b.ls            #0x7622bc
    // 0x7622a8: r8 = vu
    //     0x7622a8: add             x8, PP, #0x27, lsl #12  ; [pp+0x277b0] Type: vu
    //     0x7622ac: ldr             x8, [x8, #0x7b0]
    // 0x7622b0: r3 = Null
    //     0x7622b0: add             x3, PP, #0x27, lsl #12  ; [pp+0x277c8] Null
    //     0x7622b4: ldr             x3, [x3, #0x7c8]
    // 0x7622b8: r0 = vu()
    //     0x7622b8: bl              #0x7623c0  ; IsType_vu_Stub
    // 0x7622bc: ldr             x1, [fp, #0x18]
    // 0x7622c0: ldr             x2, [fp, #0x10]
    // 0x7622c4: r0 = call 0x2dc0d4
    //     0x7622c4: bl              #0x2dc0d4
    // 0x7622c8: LeaveFrame
    //     0x7622c8: mov             SP, fp
    //     0x7622cc: ldp             fp, lr, [SP], #0x10
    // 0x7622d0: ret
    //     0x7622d0: ret             
    // 0x7622d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7622d4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7622d8: b               #0x762280
  }
  vu *(vu, double) {
    // ** addr: 0x762300, size: 0x50
    // 0x762300: EnterFrame
    //     0x762300: stp             fp, lr, [SP, #-0x10]!
    //     0x762304: mov             fp, SP
    // 0x762308: CheckStackOverflow
    //     0x762308: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76230c: cmp             SP, x16
    //     0x762310: b.ls            #0x762330
    // 0x762314: ldr             x0, [fp, #0x10]
    // 0x762318: LoadField: d0 = r0->field_7
    //     0x762318: ldur            d0, [x0, #7]
    // 0x76231c: ldr             x1, [fp, #0x18]
    // 0x762320: r0 = call 0x70e5f8
    //     0x762320: bl              #0x70e5f8
    // 0x762324: LeaveFrame
    //     0x762324: mov             SP, fp
    //     0x762328: ldp             fp, lr, [SP], #0x10
    // 0x76232c: ret
    //     0x76232c: ret             
    // 0x762330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x762330: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x762334: b               #0x762314
  }
  vu +(vu, vu) {
    // ** addr: 0x762350, size: 0x88
    // 0x762350: EnterFrame
    //     0x762350: stp             fp, lr, [SP, #-0x10]!
    //     0x762354: mov             fp, SP
    // 0x762358: CheckStackOverflow
    //     0x762358: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76235c: cmp             SP, x16
    //     0x762360: b.ls            #0x7623b8
    // 0x762364: ldr             x0, [fp, #0x10]
    // 0x762368: r2 = Null
    //     0x762368: mov             x2, NULL
    // 0x76236c: r1 = Null
    //     0x76236c: mov             x1, NULL
    // 0x762370: r4 = 60
    //     0x762370: movz            x4, #0x3c
    // 0x762374: branchIfSmi(r0, 0x762380)
    //     0x762374: tbz             w0, #0, #0x762380
    // 0x762378: r4 = LoadClassIdInstr(r0)
    //     0x762378: ldur            x4, [x0, #-1]
    //     0x76237c: ubfx            x4, x4, #0xc, #0x14
    // 0x762380: sub             x4, x4, #0x68a
    // 0x762384: cmp             x4, #2
    // 0x762388: b.ls            #0x7623a0
    // 0x76238c: r8 = vu
    //     0x76238c: add             x8, PP, #0x27, lsl #12  ; [pp+0x277b0] Type: vu
    //     0x762390: ldr             x8, [x8, #0x7b0]
    // 0x762394: r3 = Null
    //     0x762394: add             x3, PP, #0x27, lsl #12  ; [pp+0x277b8] Null
    //     0x762398: ldr             x3, [x3, #0x7b8]
    // 0x76239c: r0 = vu()
    //     0x76239c: bl              #0x7623c0  ; IsType_vu_Stub
    // 0x7623a0: ldr             x1, [fp, #0x18]
    // 0x7623a4: ldr             x2, [fp, #0x10]
    // 0x7623a8: r0 = call 0x2dc120
    //     0x7623a8: bl              #0x2dc120
    // 0x7623ac: LeaveFrame
    //     0x7623ac: mov             SP, fp
    //     0x7623b0: ldp             fp, lr, [SP], #0x10
    // 0x7623b4: ret
    //     0x7623b4: ret             
    // 0x7623b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7623b8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7623bc: b               #0x762364
  }
}

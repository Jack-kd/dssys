// lib: , url: zAi

// class id: 1048796, size: 0x8
class :: {
}

// class id: 1858, size: 0x14, field offset: 0x8
class gR extends Object {
}

// class id: 1859, size: 0x10, field offset: 0x8
class fR extends Object {

  late double SMe; // offset: 0xc
}

// class id: 1860, size: 0x14, field offset: 0x8
class _eR extends Object {
}

// class id: 1861, size: 0x1c, field offset: 0x8
class _dR extends Object {

  double *(_dR, _dR) {
    // ** addr: 0x7d8c1c, size: 0xc0
    // 0x7d8c1c: EnterFrame
    //     0x7d8c1c: stp             fp, lr, [SP, #-0x10]!
    //     0x7d8c20: mov             fp, SP
    // 0x7d8c24: CheckStackOverflow
    //     0x7d8c24: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d8c28: cmp             SP, x16
    //     0x7d8c2c: b.ls            #0x7d8cac
    // 0x7d8c30: ldr             x0, [fp, #0x10]
    // 0x7d8c34: r2 = Null
    //     0x7d8c34: mov             x2, NULL
    // 0x7d8c38: r1 = Null
    //     0x7d8c38: mov             x1, NULL
    // 0x7d8c3c: r4 = 60
    //     0x7d8c3c: movz            x4, #0x3c
    // 0x7d8c40: branchIfSmi(r0, 0x7d8c4c)
    //     0x7d8c40: tbz             w0, #0, #0x7d8c4c
    // 0x7d8c44: r4 = LoadClassIdInstr(r0)
    //     0x7d8c44: ldur            x4, [x0, #-1]
    //     0x7d8c48: ubfx            x4, x4, #0xc, #0x14
    // 0x7d8c4c: cmp             x4, #0x745
    // 0x7d8c50: b.eq            #0x7d8c68
    // 0x7d8c54: r8 = _dR
    //     0x7d8c54: add             x8, PP, #0x22, lsl #12  ; [pp+0x22478] Type: _dR
    //     0x7d8c58: ldr             x8, [x8, #0x478]
    // 0x7d8c5c: r3 = Null
    //     0x7d8c5c: add             x3, PP, #0x22, lsl #12  ; [pp+0x22480] Null
    //     0x7d8c60: ldr             x3, [x3, #0x480]
    // 0x7d8c64: r0 = DefaultTypeTest()
    //     0x7d8c64: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7d8c68: ldr             x1, [fp, #0x18]
    // 0x7d8c6c: ldr             x2, [fp, #0x10]
    // 0x7d8c70: r0 = call 0x70d558
    //     0x7d8c70: bl              #0x70d558
    // 0x7d8c74: r0 = inline_Allocate_Double()
    //     0x7d8c74: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x7d8c78: add             x0, x0, #0x10
    //     0x7d8c7c: cmp             x1, x0
    //     0x7d8c80: b.ls            #0x7d8cb4
    //     0x7d8c84: str             x0, [THR, #0x60]  ; THR::top
    //     0x7d8c88: sub             x0, x0, #0xf
    //     0x7d8c8c: movz            x1, #0xe15c
    //     0x7d8c90: movk            x1, #0x3, lsl #16
    //     0x7d8c94: stur            x1, [x0, #-1]
    // 0x7d8c98: dmb             ishst
    // 0x7d8c9c: StoreField: r0->field_7 = d0
    //     0x7d8c9c: stur            d0, [x0, #7]
    // 0x7d8ca0: LeaveFrame
    //     0x7d8ca0: mov             SP, fp
    //     0x7d8ca4: ldp             fp, lr, [SP], #0x10
    // 0x7d8ca8: ret
    //     0x7d8ca8: ret             
    // 0x7d8cac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d8cac: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d8cb0: b               #0x7d8c30
    // 0x7d8cb4: SaveReg d0
    //     0x7d8cb4: str             q0, [SP, #-0x10]!
    // 0x7d8cb8: r0 = AllocateDouble()
    //     0x7d8cb8: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7d8cbc: RestoreReg d0
    //     0x7d8cbc: ldr             q0, [SP], #0x10
    // 0x7d8cc0: b               #0x7d8c9c
  }
  double [](_dR, int) {
    // ** addr: 0x7d8cdc, size: 0xe0
    // 0x7d8cdc: EnterFrame
    //     0x7d8cdc: stp             fp, lr, [SP, #-0x10]!
    //     0x7d8ce0: mov             fp, SP
    // 0x7d8ce4: ldr             x0, [fp, #0x10]
    // 0x7d8ce8: r2 = Null
    //     0x7d8ce8: mov             x2, NULL
    // 0x7d8cec: r1 = Null
    //     0x7d8cec: mov             x1, NULL
    // 0x7d8cf0: branchIfSmi(r0, 0x7d8d18)
    //     0x7d8cf0: tbz             w0, #0, #0x7d8d18
    // 0x7d8cf4: r4 = LoadClassIdInstr(r0)
    //     0x7d8cf4: ldur            x4, [x0, #-1]
    //     0x7d8cf8: ubfx            x4, x4, #0xc, #0x14
    // 0x7d8cfc: sub             x4, x4, #0x3c
    // 0x7d8d00: cmp             x4, #1
    // 0x7d8d04: b.ls            #0x7d8d18
    // 0x7d8d08: r8 = int
    //     0x7d8d08: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7d8d0c: r3 = Null
    //     0x7d8d0c: add             x3, PP, #0x22, lsl #12  ; [pp+0x22490] Null
    //     0x7d8d10: ldr             x3, [x3, #0x490]
    // 0x7d8d14: r0 = int()
    //     0x7d8d14: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7d8d18: ldr             x2, [fp, #0x18]
    // 0x7d8d1c: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x7d8d1c: ldur            w3, [x2, #0x17]
    // 0x7d8d20: DecompressPointer r3
    //     0x7d8d20: add             x3, x3, HEAP, lsl #32
    // 0x7d8d24: LoadField: r4 = r2->field_7
    //     0x7d8d24: ldur            x4, [x2, #7]
    // 0x7d8d28: ldr             x2, [fp, #0x10]
    // 0x7d8d2c: r5 = LoadInt32Instr(r2)
    //     0x7d8d2c: sbfx            x5, x2, #1, #0x1f
    //     0x7d8d30: tbz             w2, #0, #0x7d8d38
    //     0x7d8d34: ldur            x5, [x2, #7]
    // 0x7d8d38: add             x2, x5, x4
    // 0x7d8d3c: LoadField: r4 = r3->field_13
    //     0x7d8d3c: ldur            w4, [x3, #0x13]
    // 0x7d8d40: r0 = LoadInt32Instr(r4)
    //     0x7d8d40: sbfx            x0, x4, #1, #0x1f
    // 0x7d8d44: mov             x1, x2
    // 0x7d8d48: cmp             x1, x0
    // 0x7d8d4c: b.hs            #0x7d8d90
    // 0x7d8d50: ArrayLoad: d0 = r3[r2]  ; List_8
    //     0x7d8d50: add             x16, x3, x2, lsl #3
    //     0x7d8d54: ldur            d0, [x16, #0x17]
    // 0x7d8d58: r0 = inline_Allocate_Double()
    //     0x7d8d58: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x7d8d5c: add             x0, x0, #0x10
    //     0x7d8d60: cmp             x1, x0
    //     0x7d8d64: b.ls            #0x7d8d94
    //     0x7d8d68: str             x0, [THR, #0x60]  ; THR::top
    //     0x7d8d6c: sub             x0, x0, #0xf
    //     0x7d8d70: movz            x1, #0xe15c
    //     0x7d8d74: movk            x1, #0x3, lsl #16
    //     0x7d8d78: stur            x1, [x0, #-1]
    // 0x7d8d7c: dmb             ishst
    // 0x7d8d80: StoreField: r0->field_7 = d0
    //     0x7d8d80: stur            d0, [x0, #7]
    // 0x7d8d84: LeaveFrame
    //     0x7d8d84: mov             SP, fp
    //     0x7d8d88: ldp             fp, lr, [SP], #0x10
    // 0x7d8d8c: ret
    //     0x7d8d8c: ret             
    // 0x7d8d90: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7d8d90: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7d8d94: SaveReg d0
    //     0x7d8d94: str             q0, [SP, #-0x10]!
    // 0x7d8d98: r0 = AllocateDouble()
    //     0x7d8d98: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7d8d9c: RestoreReg d0
    //     0x7d8d9c: ldr             q0, [SP], #0x10
    // 0x7d8da0: b               #0x7d8d80
  }
}

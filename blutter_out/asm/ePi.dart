// lib: , url: ePi

// class id: 1049627, size: 0x8
class :: {
}

// class id: 414, size: 0xc, field offset: 0x8
class qda extends Object
    implements yUa {

  qda +(qda, qda) {
    // ** addr: 0x762030, size: 0x84
    // 0x762030: EnterFrame
    //     0x762030: stp             fp, lr, [SP, #-0x10]!
    //     0x762034: mov             fp, SP
    // 0x762038: CheckStackOverflow
    //     0x762038: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76203c: cmp             SP, x16
    //     0x762040: b.ls            #0x762094
    // 0x762044: ldr             x0, [fp, #0x10]
    // 0x762048: r2 = Null
    //     0x762048: mov             x2, NULL
    // 0x76204c: r1 = Null
    //     0x76204c: mov             x1, NULL
    // 0x762050: r4 = 60
    //     0x762050: movz            x4, #0x3c
    // 0x762054: branchIfSmi(r0, 0x762060)
    //     0x762054: tbz             w0, #0, #0x762060
    // 0x762058: r4 = LoadClassIdInstr(r0)
    //     0x762058: ldur            x4, [x0, #-1]
    //     0x76205c: ubfx            x4, x4, #0xc, #0x14
    // 0x762060: cmp             x4, #0x19e
    // 0x762064: b.eq            #0x76207c
    // 0x762068: r8 = qda
    //     0x762068: add             x8, PP, #0x28, lsl #12  ; [pp+0x284d0] Type: qda
    //     0x76206c: ldr             x8, [x8, #0x4d0]
    // 0x762070: r3 = Null
    //     0x762070: add             x3, PP, #0x28, lsl #12  ; [pp+0x284d8] Null
    //     0x762074: ldr             x3, [x3, #0x4d8]
    // 0x762078: r0 = DefaultTypeTest()
    //     0x762078: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76207c: ldr             x1, [fp, #0x18]
    // 0x762080: ldr             x2, [fp, #0x10]
    // 0x762084: r0 = call 0x2db314
    //     0x762084: bl              #0x2db314
    // 0x762088: LeaveFrame
    //     0x762088: mov             SP, fp
    //     0x76208c: ldp             fp, lr, [SP], #0x10
    // 0x762090: ret
    //     0x762090: ret             
    // 0x762094: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x762094: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x762098: b               #0x762044
  }
  qda *(qda, double) {
    // ** addr: 0x7620b4, size: 0x50
    // 0x7620b4: EnterFrame
    //     0x7620b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7620b8: mov             fp, SP
    // 0x7620bc: CheckStackOverflow
    //     0x7620bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7620c0: cmp             SP, x16
    //     0x7620c4: b.ls            #0x7620e4
    // 0x7620c8: ldr             x0, [fp, #0x10]
    // 0x7620cc: LoadField: d0 = r0->field_7
    //     0x7620cc: ldur            d0, [x0, #7]
    // 0x7620d0: ldr             x1, [fp, #0x18]
    // 0x7620d4: r0 = call 0x2db488
    //     0x7620d4: bl              #0x2db488
    // 0x7620d8: LeaveFrame
    //     0x7620d8: mov             SP, fp
    //     0x7620dc: ldp             fp, lr, [SP], #0x10
    // 0x7620e0: ret
    //     0x7620e0: ret             
    // 0x7620e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7620e4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7620e8: b               #0x7620c8
  }
  qda -(qda, qda) {
    // ** addr: 0x762104, size: 0x84
    // 0x762104: EnterFrame
    //     0x762104: stp             fp, lr, [SP, #-0x10]!
    //     0x762108: mov             fp, SP
    // 0x76210c: CheckStackOverflow
    //     0x76210c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x762110: cmp             SP, x16
    //     0x762114: b.ls            #0x762168
    // 0x762118: ldr             x0, [fp, #0x10]
    // 0x76211c: r2 = Null
    //     0x76211c: mov             x2, NULL
    // 0x762120: r1 = Null
    //     0x762120: mov             x1, NULL
    // 0x762124: r4 = 60
    //     0x762124: movz            x4, #0x3c
    // 0x762128: branchIfSmi(r0, 0x762134)
    //     0x762128: tbz             w0, #0, #0x762134
    // 0x76212c: r4 = LoadClassIdInstr(r0)
    //     0x76212c: ldur            x4, [x0, #-1]
    //     0x762130: ubfx            x4, x4, #0xc, #0x14
    // 0x762134: cmp             x4, #0x19e
    // 0x762138: b.eq            #0x762150
    // 0x76213c: r8 = qda
    //     0x76213c: add             x8, PP, #0x28, lsl #12  ; [pp+0x284d0] Type: qda
    //     0x762140: ldr             x8, [x8, #0x4d0]
    // 0x762144: r3 = Null
    //     0x762144: add             x3, PP, #0x28, lsl #12  ; [pp+0x284e8] Null
    //     0x762148: ldr             x3, [x3, #0x4e8]
    // 0x76214c: r0 = DefaultTypeTest()
    //     0x76214c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x762150: ldr             x1, [fp, #0x18]
    // 0x762154: ldr             x2, [fp, #0x10]
    // 0x762158: r0 = call 0x2db518
    //     0x762158: bl              #0x2db518
    // 0x76215c: LeaveFrame
    //     0x76215c: mov             SP, fp
    //     0x762160: ldp             fp, lr, [SP], #0x10
    // 0x762164: ret
    //     0x762164: ret             
    // 0x762168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x762168: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76216c: b               #0x762118
  }
  double [](qda, int) {
    // ** addr: 0x762188, size: 0xd8
    // 0x762188: EnterFrame
    //     0x762188: stp             fp, lr, [SP, #-0x10]!
    //     0x76218c: mov             fp, SP
    // 0x762190: ldr             x0, [fp, #0x10]
    // 0x762194: r2 = Null
    //     0x762194: mov             x2, NULL
    // 0x762198: r1 = Null
    //     0x762198: mov             x1, NULL
    // 0x76219c: branchIfSmi(r0, 0x7621c4)
    //     0x76219c: tbz             w0, #0, #0x7621c4
    // 0x7621a0: r4 = LoadClassIdInstr(r0)
    //     0x7621a0: ldur            x4, [x0, #-1]
    //     0x7621a4: ubfx            x4, x4, #0xc, #0x14
    // 0x7621a8: sub             x4, x4, #0x3c
    // 0x7621ac: cmp             x4, #1
    // 0x7621b0: b.ls            #0x7621c4
    // 0x7621b4: r8 = int
    //     0x7621b4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7621b8: r3 = Null
    //     0x7621b8: add             x3, PP, #0xc, lsl #12  ; [pp+0xc2c8] Null
    //     0x7621bc: ldr             x3, [x3, #0x2c8]
    // 0x7621c0: r0 = int()
    //     0x7621c0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7621c4: ldr             x2, [fp, #0x18]
    // 0x7621c8: LoadField: r3 = r2->field_7
    //     0x7621c8: ldur            w3, [x2, #7]
    // 0x7621cc: DecompressPointer r3
    //     0x7621cc: add             x3, x3, HEAP, lsl #32
    // 0x7621d0: LoadField: r2 = r3->field_13
    //     0x7621d0: ldur            w2, [x3, #0x13]
    // 0x7621d4: ldr             x4, [fp, #0x10]
    // 0x7621d8: r5 = LoadInt32Instr(r4)
    //     0x7621d8: sbfx            x5, x4, #1, #0x1f
    //     0x7621dc: tbz             w4, #0, #0x7621e4
    //     0x7621e0: ldur            x5, [x4, #7]
    // 0x7621e4: r0 = LoadInt32Instr(r2)
    //     0x7621e4: sbfx            x0, x2, #1, #0x1f
    // 0x7621e8: mov             x1, x5
    // 0x7621ec: cmp             x1, x0
    // 0x7621f0: b.hs            #0x762234
    // 0x7621f4: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x7621f4: add             x16, x3, x5, lsl #3
    //     0x7621f8: ldur            d0, [x16, #0x17]
    // 0x7621fc: r0 = inline_Allocate_Double()
    //     0x7621fc: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x762200: add             x0, x0, #0x10
    //     0x762204: cmp             x1, x0
    //     0x762208: b.ls            #0x762238
    //     0x76220c: str             x0, [THR, #0x60]  ; THR::top
    //     0x762210: sub             x0, x0, #0xf
    //     0x762214: movz            x1, #0xe15c
    //     0x762218: movk            x1, #0x3, lsl #16
    //     0x76221c: stur            x1, [x0, #-1]
    // 0x762220: dmb             ishst
    // 0x762224: StoreField: r0->field_7 = d0
    //     0x762224: stur            d0, [x0, #7]
    // 0x762228: LeaveFrame
    //     0x762228: mov             SP, fp
    //     0x76222c: ldp             fp, lr, [SP], #0x10
    // 0x762230: ret
    //     0x762230: ret             
    // 0x762234: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x762234: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x762238: SaveReg d0
    //     0x762238: str             q0, [SP, #-0x10]!
    // 0x76223c: r0 = AllocateDouble()
    //     0x76223c: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x762240: RestoreReg d0
    //     0x762240: ldr             q0, [SP], #0x10
    // 0x762244: b               #0x762224
  }
}

// class id: 415, size: 0xc, field offset: 0x8
class dT extends Object
    implements yUa {

  dT +(dT, dT) {
    // ** addr: 0x759d2c, size: 0x84
    // 0x759d2c: EnterFrame
    //     0x759d2c: stp             fp, lr, [SP, #-0x10]!
    //     0x759d30: mov             fp, SP
    // 0x759d34: CheckStackOverflow
    //     0x759d34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759d38: cmp             SP, x16
    //     0x759d3c: b.ls            #0x759d90
    // 0x759d40: ldr             x0, [fp, #0x10]
    // 0x759d44: r2 = Null
    //     0x759d44: mov             x2, NULL
    // 0x759d48: r1 = Null
    //     0x759d48: mov             x1, NULL
    // 0x759d4c: r4 = 60
    //     0x759d4c: movz            x4, #0x3c
    // 0x759d50: branchIfSmi(r0, 0x759d5c)
    //     0x759d50: tbz             w0, #0, #0x759d5c
    // 0x759d54: r4 = LoadClassIdInstr(r0)
    //     0x759d54: ldur            x4, [x0, #-1]
    //     0x759d58: ubfx            x4, x4, #0xc, #0x14
    // 0x759d5c: cmp             x4, #0x19f
    // 0x759d60: b.eq            #0x759d78
    // 0x759d64: r8 = dT
    //     0x759d64: add             x8, PP, #0x28, lsl #12  ; [pp+0x284a8] Type: dT
    //     0x759d68: ldr             x8, [x8, #0x4a8]
    // 0x759d6c: r3 = Null
    //     0x759d6c: add             x3, PP, #0x28, lsl #12  ; [pp+0x284b0] Null
    //     0x759d70: ldr             x3, [x3, #0x4b0]
    // 0x759d74: r0 = DefaultTypeTest()
    //     0x759d74: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x759d78: ldr             x1, [fp, #0x18]
    // 0x759d7c: ldr             x2, [fp, #0x10]
    // 0x759d80: r0 = call 0x28a124
    //     0x759d80: bl              #0x28a124
    // 0x759d84: LeaveFrame
    //     0x759d84: mov             SP, fp
    //     0x759d88: ldp             fp, lr, [SP], #0x10
    // 0x759d8c: ret
    //     0x759d8c: ret             
    // 0x759d90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759d90: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759d94: b               #0x759d40
  }
  dT *(dT, double) {
    // ** addr: 0x759db0, size: 0x50
    // 0x759db0: EnterFrame
    //     0x759db0: stp             fp, lr, [SP, #-0x10]!
    //     0x759db4: mov             fp, SP
    // 0x759db8: CheckStackOverflow
    //     0x759db8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759dbc: cmp             SP, x16
    //     0x759dc0: b.ls            #0x759de0
    // 0x759dc4: ldr             x0, [fp, #0x10]
    // 0x759dc8: LoadField: d0 = r0->field_7
    //     0x759dc8: ldur            d0, [x0, #7]
    // 0x759dcc: ldr             x1, [fp, #0x18]
    // 0x759dd0: r0 = call 0x289e24
    //     0x759dd0: bl              #0x289e24
    // 0x759dd4: LeaveFrame
    //     0x759dd4: mov             SP, fp
    //     0x759dd8: ldp             fp, lr, [SP], #0x10
    // 0x759ddc: ret
    //     0x759ddc: ret             
    // 0x759de0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759de0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759de4: b               #0x759dc4
  }
  dT -(dT, dT) {
    // ** addr: 0x759e00, size: 0x84
    // 0x759e00: EnterFrame
    //     0x759e00: stp             fp, lr, [SP, #-0x10]!
    //     0x759e04: mov             fp, SP
    // 0x759e08: CheckStackOverflow
    //     0x759e08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759e0c: cmp             SP, x16
    //     0x759e10: b.ls            #0x759e64
    // 0x759e14: ldr             x0, [fp, #0x10]
    // 0x759e18: r2 = Null
    //     0x759e18: mov             x2, NULL
    // 0x759e1c: r1 = Null
    //     0x759e1c: mov             x1, NULL
    // 0x759e20: r4 = 60
    //     0x759e20: movz            x4, #0x3c
    // 0x759e24: branchIfSmi(r0, 0x759e30)
    //     0x759e24: tbz             w0, #0, #0x759e30
    // 0x759e28: r4 = LoadClassIdInstr(r0)
    //     0x759e28: ldur            x4, [x0, #-1]
    //     0x759e2c: ubfx            x4, x4, #0xc, #0x14
    // 0x759e30: cmp             x4, #0x19f
    // 0x759e34: b.eq            #0x759e4c
    // 0x759e38: r8 = dT
    //     0x759e38: add             x8, PP, #0x28, lsl #12  ; [pp+0x284a8] Type: dT
    //     0x759e3c: ldr             x8, [x8, #0x4a8]
    // 0x759e40: r3 = Null
    //     0x759e40: add             x3, PP, #0x28, lsl #12  ; [pp+0x284c0] Null
    //     0x759e44: ldr             x3, [x3, #0x4c0]
    // 0x759e48: r0 = DefaultTypeTest()
    //     0x759e48: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x759e4c: ldr             x1, [fp, #0x18]
    // 0x759e50: ldr             x2, [fp, #0x10]
    // 0x759e54: r0 = call 0x289ea8
    //     0x759e54: bl              #0x289ea8
    // 0x759e58: LeaveFrame
    //     0x759e58: mov             SP, fp
    //     0x759e5c: ldp             fp, lr, [SP], #0x10
    // 0x759e60: ret
    //     0x759e60: ret             
    // 0x759e64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759e64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759e68: b               #0x759e14
  }
  double [](dT, int) {
    // ** addr: 0x759e84, size: 0xd8
    // 0x759e84: EnterFrame
    //     0x759e84: stp             fp, lr, [SP, #-0x10]!
    //     0x759e88: mov             fp, SP
    // 0x759e8c: ldr             x0, [fp, #0x10]
    // 0x759e90: r2 = Null
    //     0x759e90: mov             x2, NULL
    // 0x759e94: r1 = Null
    //     0x759e94: mov             x1, NULL
    // 0x759e98: branchIfSmi(r0, 0x759ec0)
    //     0x759e98: tbz             w0, #0, #0x759ec0
    // 0x759e9c: r4 = LoadClassIdInstr(r0)
    //     0x759e9c: ldur            x4, [x0, #-1]
    //     0x759ea0: ubfx            x4, x4, #0xc, #0x14
    // 0x759ea4: sub             x4, x4, #0x3c
    // 0x759ea8: cmp             x4, #1
    // 0x759eac: b.ls            #0x759ec0
    // 0x759eb0: r8 = int
    //     0x759eb0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x759eb4: r3 = Null
    //     0x759eb4: add             x3, PP, #9, lsl #12  ; [pp+0x9338] Null
    //     0x759eb8: ldr             x3, [x3, #0x338]
    // 0x759ebc: r0 = int()
    //     0x759ebc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x759ec0: ldr             x2, [fp, #0x18]
    // 0x759ec4: LoadField: r3 = r2->field_7
    //     0x759ec4: ldur            w3, [x2, #7]
    // 0x759ec8: DecompressPointer r3
    //     0x759ec8: add             x3, x3, HEAP, lsl #32
    // 0x759ecc: LoadField: r2 = r3->field_13
    //     0x759ecc: ldur            w2, [x3, #0x13]
    // 0x759ed0: ldr             x4, [fp, #0x10]
    // 0x759ed4: r5 = LoadInt32Instr(r4)
    //     0x759ed4: sbfx            x5, x4, #1, #0x1f
    //     0x759ed8: tbz             w4, #0, #0x759ee0
    //     0x759edc: ldur            x5, [x4, #7]
    // 0x759ee0: r0 = LoadInt32Instr(r2)
    //     0x759ee0: sbfx            x0, x2, #1, #0x1f
    // 0x759ee4: mov             x1, x5
    // 0x759ee8: cmp             x1, x0
    // 0x759eec: b.hs            #0x759f30
    // 0x759ef0: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x759ef0: add             x16, x3, x5, lsl #3
    //     0x759ef4: ldur            d0, [x16, #0x17]
    // 0x759ef8: r0 = inline_Allocate_Double()
    //     0x759ef8: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x759efc: add             x0, x0, #0x10
    //     0x759f00: cmp             x1, x0
    //     0x759f04: b.ls            #0x759f34
    //     0x759f08: str             x0, [THR, #0x60]  ; THR::top
    //     0x759f0c: sub             x0, x0, #0xf
    //     0x759f10: movz            x1, #0xe15c
    //     0x759f14: movk            x1, #0x3, lsl #16
    //     0x759f18: stur            x1, [x0, #-1]
    // 0x759f1c: dmb             ishst
    // 0x759f20: StoreField: r0->field_7 = d0
    //     0x759f20: stur            d0, [x0, #7]
    // 0x759f24: LeaveFrame
    //     0x759f24: mov             SP, fp
    //     0x759f28: ldp             fp, lr, [SP], #0x10
    // 0x759f2c: ret
    //     0x759f2c: ret             
    // 0x759f30: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x759f30: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x759f34: SaveReg d0
    //     0x759f34: str             q0, [SP, #-0x10]!
    // 0x759f38: r0 = AllocateDouble()
    //     0x759f38: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x759f3c: RestoreReg d0
    //     0x759f3c: ldr             q0, [SP], #0x10
    // 0x759f40: b               #0x759f20
  }
}

// class id: 416, size: 0xc, field offset: 0x8
class zUa extends Object
    implements yUa {

  zUa +(zUa, zUa) {
    // ** addr: 0x7ce158, size: 0x84
    // 0x7ce158: EnterFrame
    //     0x7ce158: stp             fp, lr, [SP, #-0x10]!
    //     0x7ce15c: mov             fp, SP
    // 0x7ce160: CheckStackOverflow
    //     0x7ce160: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ce164: cmp             SP, x16
    //     0x7ce168: b.ls            #0x7ce1bc
    // 0x7ce16c: ldr             x0, [fp, #0x10]
    // 0x7ce170: r2 = Null
    //     0x7ce170: mov             x2, NULL
    // 0x7ce174: r1 = Null
    //     0x7ce174: mov             x1, NULL
    // 0x7ce178: r4 = 60
    //     0x7ce178: movz            x4, #0x3c
    // 0x7ce17c: branchIfSmi(r0, 0x7ce188)
    //     0x7ce17c: tbz             w0, #0, #0x7ce188
    // 0x7ce180: r4 = LoadClassIdInstr(r0)
    //     0x7ce180: ldur            x4, [x0, #-1]
    //     0x7ce184: ubfx            x4, x4, #0xc, #0x14
    // 0x7ce188: cmp             x4, #0x1a0
    // 0x7ce18c: b.eq            #0x7ce1a4
    // 0x7ce190: r8 = zUa
    //     0x7ce190: add             x8, PP, #0x30, lsl #12  ; [pp+0x30320] Type: zUa
    //     0x7ce194: ldr             x8, [x8, #0x320]
    // 0x7ce198: r3 = Null
    //     0x7ce198: add             x3, PP, #0x30, lsl #12  ; [pp+0x30328] Null
    //     0x7ce19c: ldr             x3, [x3, #0x328]
    // 0x7ce1a0: r0 = zUa()
    //     0x7ce1a0: bl              #0x7ce370  ; IsType_zUa_Stub
    // 0x7ce1a4: ldr             x1, [fp, #0x18]
    // 0x7ce1a8: ldr             x2, [fp, #0x10]
    // 0x7ce1ac: r0 = call 0x696be8
    //     0x7ce1ac: bl              #0x696be8
    // 0x7ce1b0: LeaveFrame
    //     0x7ce1b0: mov             SP, fp
    //     0x7ce1b4: ldp             fp, lr, [SP], #0x10
    // 0x7ce1b8: ret
    //     0x7ce1b8: ret             
    // 0x7ce1bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ce1bc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ce1c0: b               #0x7ce16c
  }
  zUa *(zUa, double) {
    // ** addr: 0x7ce1dc, size: 0x50
    // 0x7ce1dc: EnterFrame
    //     0x7ce1dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7ce1e0: mov             fp, SP
    // 0x7ce1e4: CheckStackOverflow
    //     0x7ce1e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ce1e8: cmp             SP, x16
    //     0x7ce1ec: b.ls            #0x7ce20c
    // 0x7ce1f0: ldr             x0, [fp, #0x10]
    // 0x7ce1f4: LoadField: d0 = r0->field_7
    //     0x7ce1f4: ldur            d0, [x0, #7]
    // 0x7ce1f8: ldr             x1, [fp, #0x18]
    // 0x7ce1fc: r0 = call 0x696d2c
    //     0x7ce1fc: bl              #0x696d2c
    // 0x7ce200: LeaveFrame
    //     0x7ce200: mov             SP, fp
    //     0x7ce204: ldp             fp, lr, [SP], #0x10
    // 0x7ce208: ret
    //     0x7ce208: ret             
    // 0x7ce20c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ce20c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ce210: b               #0x7ce1f0
  }
  zUa -(zUa, zUa) {
    // ** addr: 0x7ce22c, size: 0x84
    // 0x7ce22c: EnterFrame
    //     0x7ce22c: stp             fp, lr, [SP, #-0x10]!
    //     0x7ce230: mov             fp, SP
    // 0x7ce234: CheckStackOverflow
    //     0x7ce234: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ce238: cmp             SP, x16
    //     0x7ce23c: b.ls            #0x7ce290
    // 0x7ce240: ldr             x0, [fp, #0x10]
    // 0x7ce244: r2 = Null
    //     0x7ce244: mov             x2, NULL
    // 0x7ce248: r1 = Null
    //     0x7ce248: mov             x1, NULL
    // 0x7ce24c: r4 = 60
    //     0x7ce24c: movz            x4, #0x3c
    // 0x7ce250: branchIfSmi(r0, 0x7ce25c)
    //     0x7ce250: tbz             w0, #0, #0x7ce25c
    // 0x7ce254: r4 = LoadClassIdInstr(r0)
    //     0x7ce254: ldur            x4, [x0, #-1]
    //     0x7ce258: ubfx            x4, x4, #0xc, #0x14
    // 0x7ce25c: cmp             x4, #0x1a0
    // 0x7ce260: b.eq            #0x7ce278
    // 0x7ce264: r8 = zUa
    //     0x7ce264: add             x8, PP, #0x30, lsl #12  ; [pp+0x30320] Type: zUa
    //     0x7ce268: ldr             x8, [x8, #0x320]
    // 0x7ce26c: r3 = Null
    //     0x7ce26c: add             x3, PP, #0x30, lsl #12  ; [pp+0x30338] Null
    //     0x7ce270: ldr             x3, [x3, #0x338]
    // 0x7ce274: r0 = zUa()
    //     0x7ce274: bl              #0x7ce370  ; IsType_zUa_Stub
    // 0x7ce278: ldr             x1, [fp, #0x18]
    // 0x7ce27c: ldr             x2, [fp, #0x10]
    // 0x7ce280: r0 = call 0x696da4
    //     0x7ce280: bl              #0x696da4
    // 0x7ce284: LeaveFrame
    //     0x7ce284: mov             SP, fp
    //     0x7ce288: ldp             fp, lr, [SP], #0x10
    // 0x7ce28c: ret
    //     0x7ce28c: ret             
    // 0x7ce290: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ce290: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ce294: b               #0x7ce240
  }
  double [](zUa, int) {
    // ** addr: 0x7ce2b0, size: 0xd8
    // 0x7ce2b0: EnterFrame
    //     0x7ce2b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7ce2b4: mov             fp, SP
    // 0x7ce2b8: ldr             x0, [fp, #0x10]
    // 0x7ce2bc: r2 = Null
    //     0x7ce2bc: mov             x2, NULL
    // 0x7ce2c0: r1 = Null
    //     0x7ce2c0: mov             x1, NULL
    // 0x7ce2c4: branchIfSmi(r0, 0x7ce2ec)
    //     0x7ce2c4: tbz             w0, #0, #0x7ce2ec
    // 0x7ce2c8: r4 = LoadClassIdInstr(r0)
    //     0x7ce2c8: ldur            x4, [x0, #-1]
    //     0x7ce2cc: ubfx            x4, x4, #0xc, #0x14
    // 0x7ce2d0: sub             x4, x4, #0x3c
    // 0x7ce2d4: cmp             x4, #1
    // 0x7ce2d8: b.ls            #0x7ce2ec
    // 0x7ce2dc: r8 = int
    //     0x7ce2dc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7ce2e0: r3 = Null
    //     0x7ce2e0: add             x3, PP, #0x30, lsl #12  ; [pp+0x30310] Null
    //     0x7ce2e4: ldr             x3, [x3, #0x310]
    // 0x7ce2e8: r0 = int()
    //     0x7ce2e8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7ce2ec: ldr             x2, [fp, #0x18]
    // 0x7ce2f0: LoadField: r3 = r2->field_7
    //     0x7ce2f0: ldur            w3, [x2, #7]
    // 0x7ce2f4: DecompressPointer r3
    //     0x7ce2f4: add             x3, x3, HEAP, lsl #32
    // 0x7ce2f8: LoadField: r2 = r3->field_13
    //     0x7ce2f8: ldur            w2, [x3, #0x13]
    // 0x7ce2fc: ldr             x4, [fp, #0x10]
    // 0x7ce300: r5 = LoadInt32Instr(r4)
    //     0x7ce300: sbfx            x5, x4, #1, #0x1f
    //     0x7ce304: tbz             w4, #0, #0x7ce30c
    //     0x7ce308: ldur            x5, [x4, #7]
    // 0x7ce30c: r0 = LoadInt32Instr(r2)
    //     0x7ce30c: sbfx            x0, x2, #1, #0x1f
    // 0x7ce310: mov             x1, x5
    // 0x7ce314: cmp             x1, x0
    // 0x7ce318: b.hs            #0x7ce35c
    // 0x7ce31c: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x7ce31c: add             x16, x3, x5, lsl #3
    //     0x7ce320: ldur            d0, [x16, #0x17]
    // 0x7ce324: r0 = inline_Allocate_Double()
    //     0x7ce324: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x7ce328: add             x0, x0, #0x10
    //     0x7ce32c: cmp             x1, x0
    //     0x7ce330: b.ls            #0x7ce360
    //     0x7ce334: str             x0, [THR, #0x60]  ; THR::top
    //     0x7ce338: sub             x0, x0, #0xf
    //     0x7ce33c: movz            x1, #0xe15c
    //     0x7ce340: movk            x1, #0x3, lsl #16
    //     0x7ce344: stur            x1, [x0, #-1]
    // 0x7ce348: dmb             ishst
    // 0x7ce34c: StoreField: r0->field_7 = d0
    //     0x7ce34c: stur            d0, [x0, #7]
    // 0x7ce350: LeaveFrame
    //     0x7ce350: mov             SP, fp
    //     0x7ce354: ldp             fp, lr, [SP], #0x10
    // 0x7ce358: ret
    //     0x7ce358: ret             
    // 0x7ce35c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7ce35c: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7ce360: SaveReg d0
    //     0x7ce360: str             q0, [SP, #-0x10]!
    // 0x7ce364: r0 = AllocateDouble()
    //     0x7ce364: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7ce368: RestoreReg d0
    //     0x7ce368: ldr             q0, [SP], #0x10
    // 0x7ce36c: b               #0x7ce34c
  }
}

// class id: 417, size: 0x8, field offset: 0x8
abstract class yUa extends Object {
}

// class id: 418, size: 0xc, field offset: 0x8
class xUa extends Object {

  xUa *(xUa, xUa) {
    // ** addr: 0x7b2afc, size: 0x84
    // 0x7b2afc: EnterFrame
    //     0x7b2afc: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2b00: mov             fp, SP
    // 0x7b2b04: ldr             x0, [fp, #0x10]
    // 0x7b2b08: r2 = Null
    //     0x7b2b08: mov             x2, NULL
    // 0x7b2b0c: r1 = Null
    //     0x7b2b0c: mov             x1, NULL
    // 0x7b2b10: r4 = LoadClassIdInstr(r0)
    //     0x7b2b10: ldur            x4, [x0, #-1]
    //     0x7b2b14: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2b18: cmp             x4, #0x1a2
    // 0x7b2b1c: b.eq            #0x7b2b34
    // 0x7b2b20: r8 = xUa
    //     0x7b2b20: add             x8, PP, #0x33, lsl #12  ; [pp+0x33810] Type: xUa
    //     0x7b2b24: ldr             x8, [x8, #0x810]
    // 0x7b2b28: r3 = Null
    //     0x7b2b28: add             x3, PP, #0x33, lsl #12  ; [pp+0x33838] Null
    //     0x7b2b2c: ldr             x3, [x3, #0x838]
    // 0x7b2b30: r0 = DefaultTypeTest()
    //     0x7b2b30: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b2b34: ldr             x0, [fp, #0x18]
    // 0x7b2b38: LoadField: r1 = r0->field_7
    //     0x7b2b38: ldur            w1, [x0, #7]
    // 0x7b2b3c: DecompressPointer r1
    //     0x7b2b3c: add             x1, x1, HEAP, lsl #32
    // 0x7b2b40: LoadField: r0 = r1->field_13
    //     0x7b2b40: ldur            w0, [x1, #0x13]
    // 0x7b2b44: r1 = LoadInt32Instr(r0)
    //     0x7b2b44: sbfx            x1, x0, #1, #0x1f
    // 0x7b2b48: mov             x0, x1
    // 0x7b2b4c: r1 = 3
    //     0x7b2b4c: movz            x1, #0x3
    // 0x7b2b50: cmp             x1, x0
    // 0x7b2b54: b.hs            #0x7b2b64
    // 0x7b2b58: r0 = "Attempt to execute code removed by Dart AOT compiler (TFA)"
    //     0x7b2b58: ldr             x0, [PP, #0x6e0]  ; [pp+0x6e0] "Attempt to execute code removed by Dart AOT compiler (TFA)"
    // 0x7b2b5c: r0 = Throw()
    //     0x7b2b5c: bl              #0x7dc520  ; ThrowStub
    // 0x7b2b60: brk             #0
    // 0x7b2b64: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7b2b64: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
  xUa -(xUa, xUa) {
    // ** addr: 0x7b2b80, size: 0x84
    // 0x7b2b80: EnterFrame
    //     0x7b2b80: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2b84: mov             fp, SP
    // 0x7b2b88: CheckStackOverflow
    //     0x7b2b88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2b8c: cmp             SP, x16
    //     0x7b2b90: b.ls            #0x7b2be4
    // 0x7b2b94: ldr             x0, [fp, #0x10]
    // 0x7b2b98: r2 = Null
    //     0x7b2b98: mov             x2, NULL
    // 0x7b2b9c: r1 = Null
    //     0x7b2b9c: mov             x1, NULL
    // 0x7b2ba0: r4 = 60
    //     0x7b2ba0: movz            x4, #0x3c
    // 0x7b2ba4: branchIfSmi(r0, 0x7b2bb0)
    //     0x7b2ba4: tbz             w0, #0, #0x7b2bb0
    // 0x7b2ba8: r4 = LoadClassIdInstr(r0)
    //     0x7b2ba8: ldur            x4, [x0, #-1]
    //     0x7b2bac: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2bb0: cmp             x4, #0x1a2
    // 0x7b2bb4: b.eq            #0x7b2bcc
    // 0x7b2bb8: r8 = xUa
    //     0x7b2bb8: add             x8, PP, #0x33, lsl #12  ; [pp+0x33810] Type: xUa
    //     0x7b2bbc: ldr             x8, [x8, #0x810]
    // 0x7b2bc0: r3 = Null
    //     0x7b2bc0: add             x3, PP, #0x33, lsl #12  ; [pp+0x33818] Null
    //     0x7b2bc4: ldr             x3, [x3, #0x818]
    // 0x7b2bc8: r0 = DefaultTypeTest()
    //     0x7b2bc8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b2bcc: ldr             x1, [fp, #0x18]
    // 0x7b2bd0: ldr             x2, [fp, #0x10]
    // 0x7b2bd4: r0 = call 0x562ad4
    //     0x7b2bd4: bl              #0x562ad4
    // 0x7b2bd8: LeaveFrame
    //     0x7b2bd8: mov             SP, fp
    //     0x7b2bdc: ldp             fp, lr, [SP], #0x10
    // 0x7b2be0: ret
    //     0x7b2be0: ret             
    // 0x7b2be4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2be4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2be8: b               #0x7b2b94
  }
  xUa +(xUa, xUa) {
    // ** addr: 0x7b2c04, size: 0x84
    // 0x7b2c04: EnterFrame
    //     0x7b2c04: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2c08: mov             fp, SP
    // 0x7b2c0c: CheckStackOverflow
    //     0x7b2c0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2c10: cmp             SP, x16
    //     0x7b2c14: b.ls            #0x7b2c68
    // 0x7b2c18: ldr             x0, [fp, #0x10]
    // 0x7b2c1c: r2 = Null
    //     0x7b2c1c: mov             x2, NULL
    // 0x7b2c20: r1 = Null
    //     0x7b2c20: mov             x1, NULL
    // 0x7b2c24: r4 = 60
    //     0x7b2c24: movz            x4, #0x3c
    // 0x7b2c28: branchIfSmi(r0, 0x7b2c34)
    //     0x7b2c28: tbz             w0, #0, #0x7b2c34
    // 0x7b2c2c: r4 = LoadClassIdInstr(r0)
    //     0x7b2c2c: ldur            x4, [x0, #-1]
    //     0x7b2c30: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2c34: cmp             x4, #0x1a2
    // 0x7b2c38: b.eq            #0x7b2c50
    // 0x7b2c3c: r8 = xUa
    //     0x7b2c3c: add             x8, PP, #0x33, lsl #12  ; [pp+0x33810] Type: xUa
    //     0x7b2c40: ldr             x8, [x8, #0x810]
    // 0x7b2c44: r3 = Null
    //     0x7b2c44: add             x3, PP, #0x33, lsl #12  ; [pp+0x33828] Null
    //     0x7b2c48: ldr             x3, [x3, #0x828]
    // 0x7b2c4c: r0 = DefaultTypeTest()
    //     0x7b2c4c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b2c50: ldr             x1, [fp, #0x18]
    // 0x7b2c54: ldr             x2, [fp, #0x10]
    // 0x7b2c58: r0 = call 0x562c14
    //     0x7b2c58: bl              #0x562c14
    // 0x7b2c5c: LeaveFrame
    //     0x7b2c5c: mov             SP, fp
    //     0x7b2c60: ldp             fp, lr, [SP], #0x10
    // 0x7b2c64: ret
    //     0x7b2c64: ret             
    // 0x7b2c68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2c68: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2c6c: b               #0x7b2c18
  }
  double [](xUa, int) {
    // ** addr: 0x7b2c88, size: 0xd8
    // 0x7b2c88: EnterFrame
    //     0x7b2c88: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2c8c: mov             fp, SP
    // 0x7b2c90: ldr             x0, [fp, #0x10]
    // 0x7b2c94: r2 = Null
    //     0x7b2c94: mov             x2, NULL
    // 0x7b2c98: r1 = Null
    //     0x7b2c98: mov             x1, NULL
    // 0x7b2c9c: branchIfSmi(r0, 0x7b2cc4)
    //     0x7b2c9c: tbz             w0, #0, #0x7b2cc4
    // 0x7b2ca0: r4 = LoadClassIdInstr(r0)
    //     0x7b2ca0: ldur            x4, [x0, #-1]
    //     0x7b2ca4: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2ca8: sub             x4, x4, #0x3c
    // 0x7b2cac: cmp             x4, #1
    // 0x7b2cb0: b.ls            #0x7b2cc4
    // 0x7b2cb4: r8 = int
    //     0x7b2cb4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7b2cb8: r3 = Null
    //     0x7b2cb8: add             x3, PP, #0x33, lsl #12  ; [pp+0x33800] Null
    //     0x7b2cbc: ldr             x3, [x3, #0x800]
    // 0x7b2cc0: r0 = int()
    //     0x7b2cc0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7b2cc4: ldr             x2, [fp, #0x18]
    // 0x7b2cc8: LoadField: r3 = r2->field_7
    //     0x7b2cc8: ldur            w3, [x2, #7]
    // 0x7b2ccc: DecompressPointer r3
    //     0x7b2ccc: add             x3, x3, HEAP, lsl #32
    // 0x7b2cd0: LoadField: r2 = r3->field_13
    //     0x7b2cd0: ldur            w2, [x3, #0x13]
    // 0x7b2cd4: ldr             x4, [fp, #0x10]
    // 0x7b2cd8: r5 = LoadInt32Instr(r4)
    //     0x7b2cd8: sbfx            x5, x4, #1, #0x1f
    //     0x7b2cdc: tbz             w4, #0, #0x7b2ce4
    //     0x7b2ce0: ldur            x5, [x4, #7]
    // 0x7b2ce4: r0 = LoadInt32Instr(r2)
    //     0x7b2ce4: sbfx            x0, x2, #1, #0x1f
    // 0x7b2ce8: mov             x1, x5
    // 0x7b2cec: cmp             x1, x0
    // 0x7b2cf0: b.hs            #0x7b2d34
    // 0x7b2cf4: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x7b2cf4: add             x16, x3, x5, lsl #3
    //     0x7b2cf8: ldur            d0, [x16, #0x17]
    // 0x7b2cfc: r0 = inline_Allocate_Double()
    //     0x7b2cfc: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x7b2d00: add             x0, x0, #0x10
    //     0x7b2d04: cmp             x1, x0
    //     0x7b2d08: b.ls            #0x7b2d38
    //     0x7b2d0c: str             x0, [THR, #0x60]  ; THR::top
    //     0x7b2d10: sub             x0, x0, #0xf
    //     0x7b2d14: movz            x1, #0xe15c
    //     0x7b2d18: movk            x1, #0x3, lsl #16
    //     0x7b2d1c: stur            x1, [x0, #-1]
    // 0x7b2d20: dmb             ishst
    // 0x7b2d24: StoreField: r0->field_7 = d0
    //     0x7b2d24: stur            d0, [x0, #7]
    // 0x7b2d28: LeaveFrame
    //     0x7b2d28: mov             SP, fp
    //     0x7b2d2c: ldp             fp, lr, [SP], #0x10
    // 0x7b2d30: ret
    //     0x7b2d30: ret             
    // 0x7b2d34: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7b2d34: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7b2d38: SaveReg d0
    //     0x7b2d38: str             q0, [SP, #-0x10]!
    // 0x7b2d3c: r0 = AllocateDouble()
    //     0x7b2d3c: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7b2d40: RestoreReg d0
    //     0x7b2d40: ldr             q0, [SP], #0x10
    // 0x7b2d44: b               #0x7b2d24
  }
}

// class id: 419, size: 0xc, field offset: 0x8
class wUa extends Object {

  wUa +(wUa, wUa) {
    // ** addr: 0x7b2d6c, size: 0x84
    // 0x7b2d6c: EnterFrame
    //     0x7b2d6c: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2d70: mov             fp, SP
    // 0x7b2d74: CheckStackOverflow
    //     0x7b2d74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2d78: cmp             SP, x16
    //     0x7b2d7c: b.ls            #0x7b2dd0
    // 0x7b2d80: ldr             x0, [fp, #0x10]
    // 0x7b2d84: r2 = Null
    //     0x7b2d84: mov             x2, NULL
    // 0x7b2d88: r1 = Null
    //     0x7b2d88: mov             x1, NULL
    // 0x7b2d8c: r4 = 60
    //     0x7b2d8c: movz            x4, #0x3c
    // 0x7b2d90: branchIfSmi(r0, 0x7b2d9c)
    //     0x7b2d90: tbz             w0, #0, #0x7b2d9c
    // 0x7b2d94: r4 = LoadClassIdInstr(r0)
    //     0x7b2d94: ldur            x4, [x0, #-1]
    //     0x7b2d98: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2d9c: cmp             x4, #0x1a3
    // 0x7b2da0: b.eq            #0x7b2db8
    // 0x7b2da4: r8 = wUa
    //     0x7b2da4: add             x8, PP, #0x33, lsl #12  ; [pp+0x33848] Type: wUa
    //     0x7b2da8: ldr             x8, [x8, #0x848]
    // 0x7b2dac: r3 = Null
    //     0x7b2dac: add             x3, PP, #0x33, lsl #12  ; [pp+0x33860] Null
    //     0x7b2db0: ldr             x3, [x3, #0x860]
    // 0x7b2db4: r0 = DefaultTypeTest()
    //     0x7b2db4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b2db8: ldr             x1, [fp, #0x18]
    // 0x7b2dbc: ldr             x2, [fp, #0x10]
    // 0x7b2dc0: r0 = call 0x5637d8
    //     0x7b2dc0: bl              #0x5637d8
    // 0x7b2dc4: LeaveFrame
    //     0x7b2dc4: mov             SP, fp
    //     0x7b2dc8: ldp             fp, lr, [SP], #0x10
    // 0x7b2dcc: ret
    //     0x7b2dcc: ret             
    // 0x7b2dd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2dd0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2dd4: b               #0x7b2d80
  }
  dynamic *(wUa, dynamic) {
    // ** addr: 0x7b2df0, size: 0x50
    // 0x7b2df0: EnterFrame
    //     0x7b2df0: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2df4: mov             fp, SP
    // 0x7b2df8: CheckStackOverflow
    //     0x7b2df8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2dfc: cmp             SP, x16
    //     0x7b2e00: b.ls            #0x7b2e20
    // 0x7b2e04: ldr             x0, [fp, #0x10]
    // 0x7b2e08: LoadField: d0 = r0->field_7
    //     0x7b2e08: ldur            d0, [x0, #7]
    // 0x7b2e0c: ldr             x1, [fp, #0x18]
    // 0x7b2e10: r0 = call 0x563b80
    //     0x7b2e10: bl              #0x563b80
    // 0x7b2e14: LeaveFrame
    //     0x7b2e14: mov             SP, fp
    //     0x7b2e18: ldp             fp, lr, [SP], #0x10
    // 0x7b2e1c: ret
    //     0x7b2e1c: ret             
    // 0x7b2e20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2e20: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2e24: b               #0x7b2e04
  }
  wUa -(wUa, wUa) {
    // ** addr: 0x7b2e40, size: 0x84
    // 0x7b2e40: EnterFrame
    //     0x7b2e40: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2e44: mov             fp, SP
    // 0x7b2e48: CheckStackOverflow
    //     0x7b2e48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b2e4c: cmp             SP, x16
    //     0x7b2e50: b.ls            #0x7b2ea4
    // 0x7b2e54: ldr             x0, [fp, #0x10]
    // 0x7b2e58: r2 = Null
    //     0x7b2e58: mov             x2, NULL
    // 0x7b2e5c: r1 = Null
    //     0x7b2e5c: mov             x1, NULL
    // 0x7b2e60: r4 = 60
    //     0x7b2e60: movz            x4, #0x3c
    // 0x7b2e64: branchIfSmi(r0, 0x7b2e70)
    //     0x7b2e64: tbz             w0, #0, #0x7b2e70
    // 0x7b2e68: r4 = LoadClassIdInstr(r0)
    //     0x7b2e68: ldur            x4, [x0, #-1]
    //     0x7b2e6c: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2e70: cmp             x4, #0x1a3
    // 0x7b2e74: b.eq            #0x7b2e8c
    // 0x7b2e78: r8 = wUa
    //     0x7b2e78: add             x8, PP, #0x33, lsl #12  ; [pp+0x33848] Type: wUa
    //     0x7b2e7c: ldr             x8, [x8, #0x848]
    // 0x7b2e80: r3 = Null
    //     0x7b2e80: add             x3, PP, #0x33, lsl #12  ; [pp+0x33850] Null
    //     0x7b2e84: ldr             x3, [x3, #0x850]
    // 0x7b2e88: r0 = DefaultTypeTest()
    //     0x7b2e88: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b2e8c: ldr             x1, [fp, #0x18]
    // 0x7b2e90: ldr             x2, [fp, #0x10]
    // 0x7b2e94: r0 = call 0x563d10
    //     0x7b2e94: bl              #0x563d10
    // 0x7b2e98: LeaveFrame
    //     0x7b2e98: mov             SP, fp
    //     0x7b2e9c: ldp             fp, lr, [SP], #0x10
    // 0x7b2ea0: ret
    //     0x7b2ea0: ret             
    // 0x7b2ea4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2ea4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2ea8: b               #0x7b2e54
  }
  double [](wUa, int) {
    // ** addr: 0x7b2ec4, size: 0xd8
    // 0x7b2ec4: EnterFrame
    //     0x7b2ec4: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2ec8: mov             fp, SP
    // 0x7b2ecc: ldr             x0, [fp, #0x10]
    // 0x7b2ed0: r2 = Null
    //     0x7b2ed0: mov             x2, NULL
    // 0x7b2ed4: r1 = Null
    //     0x7b2ed4: mov             x1, NULL
    // 0x7b2ed8: branchIfSmi(r0, 0x7b2f00)
    //     0x7b2ed8: tbz             w0, #0, #0x7b2f00
    // 0x7b2edc: r4 = LoadClassIdInstr(r0)
    //     0x7b2edc: ldur            x4, [x0, #-1]
    //     0x7b2ee0: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2ee4: sub             x4, x4, #0x3c
    // 0x7b2ee8: cmp             x4, #1
    // 0x7b2eec: b.ls            #0x7b2f00
    // 0x7b2ef0: r8 = int
    //     0x7b2ef0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7b2ef4: r3 = Null
    //     0x7b2ef4: add             x3, PP, #0x33, lsl #12  ; [pp+0x33870] Null
    //     0x7b2ef8: ldr             x3, [x3, #0x870]
    // 0x7b2efc: r0 = int()
    //     0x7b2efc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7b2f00: ldr             x2, [fp, #0x18]
    // 0x7b2f04: LoadField: r3 = r2->field_7
    //     0x7b2f04: ldur            w3, [x2, #7]
    // 0x7b2f08: DecompressPointer r3
    //     0x7b2f08: add             x3, x3, HEAP, lsl #32
    // 0x7b2f0c: LoadField: r2 = r3->field_13
    //     0x7b2f0c: ldur            w2, [x3, #0x13]
    // 0x7b2f10: ldr             x4, [fp, #0x10]
    // 0x7b2f14: r5 = LoadInt32Instr(r4)
    //     0x7b2f14: sbfx            x5, x4, #1, #0x1f
    //     0x7b2f18: tbz             w4, #0, #0x7b2f20
    //     0x7b2f1c: ldur            x5, [x4, #7]
    // 0x7b2f20: r0 = LoadInt32Instr(r2)
    //     0x7b2f20: sbfx            x0, x2, #1, #0x1f
    // 0x7b2f24: mov             x1, x5
    // 0x7b2f28: cmp             x1, x0
    // 0x7b2f2c: b.hs            #0x7b2f70
    // 0x7b2f30: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x7b2f30: add             x16, x3, x5, lsl #3
    //     0x7b2f34: ldur            d0, [x16, #0x17]
    // 0x7b2f38: r0 = inline_Allocate_Double()
    //     0x7b2f38: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x7b2f3c: add             x0, x0, #0x10
    //     0x7b2f40: cmp             x1, x0
    //     0x7b2f44: b.ls            #0x7b2f74
    //     0x7b2f48: str             x0, [THR, #0x60]  ; THR::top
    //     0x7b2f4c: sub             x0, x0, #0xf
    //     0x7b2f50: movz            x1, #0xe15c
    //     0x7b2f54: movk            x1, #0x3, lsl #16
    //     0x7b2f58: stur            x1, [x0, #-1]
    // 0x7b2f5c: dmb             ishst
    // 0x7b2f60: StoreField: r0->field_7 = d0
    //     0x7b2f60: stur            d0, [x0, #7]
    // 0x7b2f64: LeaveFrame
    //     0x7b2f64: mov             SP, fp
    //     0x7b2f68: ldp             fp, lr, [SP], #0x10
    // 0x7b2f6c: ret
    //     0x7b2f6c: ret             
    // 0x7b2f70: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7b2f70: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7b2f74: SaveReg d0
    //     0x7b2f74: str             q0, [SP, #-0x10]!
    // 0x7b2f78: r0 = AllocateDouble()
    //     0x7b2f78: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7b2f7c: RestoreReg d0
    //     0x7b2f7c: ldr             q0, [SP], #0x10
    // 0x7b2f80: b               #0x7b2f60
  }
}

// class id: 2665, size: 0xc, field offset: 0x8
class yw extends Object {

  yw +(yw, yw) {
    // ** addr: 0x74bf80, size: 0x84
    // 0x74bf80: EnterFrame
    //     0x74bf80: stp             fp, lr, [SP, #-0x10]!
    //     0x74bf84: mov             fp, SP
    // 0x74bf88: CheckStackOverflow
    //     0x74bf88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74bf8c: cmp             SP, x16
    //     0x74bf90: b.ls            #0x74bfe4
    // 0x74bf94: ldr             x0, [fp, #0x10]
    // 0x74bf98: r2 = Null
    //     0x74bf98: mov             x2, NULL
    // 0x74bf9c: r1 = Null
    //     0x74bf9c: mov             x1, NULL
    // 0x74bfa0: r4 = 60
    //     0x74bfa0: movz            x4, #0x3c
    // 0x74bfa4: branchIfSmi(r0, 0x74bfb0)
    //     0x74bfa4: tbz             w0, #0, #0x74bfb0
    // 0x74bfa8: r4 = LoadClassIdInstr(r0)
    //     0x74bfa8: ldur            x4, [x0, #-1]
    //     0x74bfac: ubfx            x4, x4, #0xc, #0x14
    // 0x74bfb0: cmp             x4, #0xa69
    // 0x74bfb4: b.eq            #0x74bfcc
    // 0x74bfb8: r8 = yw
    //     0x74bfb8: add             x8, PP, #0x28, lsl #12  ; [pp+0x28480] Type: yw
    //     0x74bfbc: ldr             x8, [x8, #0x480]
    // 0x74bfc0: r3 = Null
    //     0x74bfc0: add             x3, PP, #0x28, lsl #12  ; [pp+0x28498] Null
    //     0x74bfc4: ldr             x3, [x3, #0x498]
    // 0x74bfc8: r0 = yw()
    //     0x74bfc8: bl              #0x74c1bc  ; IsType_yw_Stub
    // 0x74bfcc: ldr             x1, [fp, #0x18]
    // 0x74bfd0: ldr             x2, [fp, #0x10]
    // 0x74bfd4: r0 = call 0x24f108
    //     0x74bfd4: bl              #0x24f108
    // 0x74bfd8: LeaveFrame
    //     0x74bfd8: mov             SP, fp
    //     0x74bfdc: ldp             fp, lr, [SP], #0x10
    // 0x74bfe0: ret
    //     0x74bfe0: ret             
    // 0x74bfe4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74bfe4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74bfe8: b               #0x74bf94
  }
  dynamic *(yw, dynamic) {
    // ** addr: 0x74c004, size: 0x74
    // 0x74c004: EnterFrame
    //     0x74c004: stp             fp, lr, [SP, #-0x10]!
    //     0x74c008: mov             fp, SP
    // 0x74c00c: AllocStack(0x10)
    //     0x74c00c: sub             SP, SP, #0x10
    // 0x74c010: CheckStackOverflow
    //     0x74c010: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c014: cmp             SP, x16
    //     0x74c018: b.ls            #0x74c058
    // 0x74c01c: ldr             x0, [fp, #0x10]
    // 0x74c020: LoadField: d2 = r0->field_7
    //     0x74c020: ldur            d2, [x0, #7]
    // 0x74c024: ldr             x1, [fp, #0x18]
    // 0x74c028: stur            d2, [fp, #-0x10]
    // 0x74c02c: r0 = call 0x24f508
    //     0x74c02c: bl              #0x24f508
    // 0x74c030: mov             x1, x0
    // 0x74c034: ldur            d0, [fp, #-0x10]
    // 0x74c038: ldur            d1, [fp, #-0x10]
    // 0x74c03c: ldur            d2, [fp, #-0x10]
    // 0x74c040: stur            x0, [fp, #-8]
    // 0x74c044: r0 = call 0x24f598
    //     0x74c044: bl              #0x24f598
    // 0x74c048: ldur            x0, [fp, #-8]
    // 0x74c04c: LeaveFrame
    //     0x74c04c: mov             SP, fp
    //     0x74c050: ldp             fp, lr, [SP], #0x10
    // 0x74c054: ret
    //     0x74c054: ret             
    // 0x74c058: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c058: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c05c: b               #0x74c01c
  }
  yw -(yw, yw) {
    // ** addr: 0x74c078, size: 0x84
    // 0x74c078: EnterFrame
    //     0x74c078: stp             fp, lr, [SP, #-0x10]!
    //     0x74c07c: mov             fp, SP
    // 0x74c080: CheckStackOverflow
    //     0x74c080: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c084: cmp             SP, x16
    //     0x74c088: b.ls            #0x74c0dc
    // 0x74c08c: ldr             x0, [fp, #0x10]
    // 0x74c090: r2 = Null
    //     0x74c090: mov             x2, NULL
    // 0x74c094: r1 = Null
    //     0x74c094: mov             x1, NULL
    // 0x74c098: r4 = 60
    //     0x74c098: movz            x4, #0x3c
    // 0x74c09c: branchIfSmi(r0, 0x74c0a8)
    //     0x74c09c: tbz             w0, #0, #0x74c0a8
    // 0x74c0a0: r4 = LoadClassIdInstr(r0)
    //     0x74c0a0: ldur            x4, [x0, #-1]
    //     0x74c0a4: ubfx            x4, x4, #0xc, #0x14
    // 0x74c0a8: cmp             x4, #0xa69
    // 0x74c0ac: b.eq            #0x74c0c4
    // 0x74c0b0: r8 = yw
    //     0x74c0b0: add             x8, PP, #0x28, lsl #12  ; [pp+0x28480] Type: yw
    //     0x74c0b4: ldr             x8, [x8, #0x480]
    // 0x74c0b8: r3 = Null
    //     0x74c0b8: add             x3, PP, #0x28, lsl #12  ; [pp+0x28488] Null
    //     0x74c0bc: ldr             x3, [x3, #0x488]
    // 0x74c0c0: r0 = yw()
    //     0x74c0c0: bl              #0x74c1bc  ; IsType_yw_Stub
    // 0x74c0c4: ldr             x1, [fp, #0x18]
    // 0x74c0c8: ldr             x2, [fp, #0x10]
    // 0x74c0cc: r0 = call 0x24f790
    //     0x74c0cc: bl              #0x24f790
    // 0x74c0d0: LeaveFrame
    //     0x74c0d0: mov             SP, fp
    //     0x74c0d4: ldp             fp, lr, [SP], #0x10
    // 0x74c0d8: ret
    //     0x74c0d8: ret             
    // 0x74c0dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c0dc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c0e0: b               #0x74c08c
  }
  double [](yw, int) {
    // ** addr: 0x74c0fc, size: 0xd8
    // 0x74c0fc: EnterFrame
    //     0x74c0fc: stp             fp, lr, [SP, #-0x10]!
    //     0x74c100: mov             fp, SP
    // 0x74c104: ldr             x0, [fp, #0x10]
    // 0x74c108: r2 = Null
    //     0x74c108: mov             x2, NULL
    // 0x74c10c: r1 = Null
    //     0x74c10c: mov             x1, NULL
    // 0x74c110: branchIfSmi(r0, 0x74c138)
    //     0x74c110: tbz             w0, #0, #0x74c138
    // 0x74c114: r4 = LoadClassIdInstr(r0)
    //     0x74c114: ldur            x4, [x0, #-1]
    //     0x74c118: ubfx            x4, x4, #0xc, #0x14
    // 0x74c11c: sub             x4, x4, #0x3c
    // 0x74c120: cmp             x4, #1
    // 0x74c124: b.ls            #0x74c138
    // 0x74c128: r8 = int
    //     0x74c128: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x74c12c: r3 = Null
    //     0x74c12c: add             x3, PP, #9, lsl #12  ; [pp+0x9308] Null
    //     0x74c130: ldr             x3, [x3, #0x308]
    // 0x74c134: r0 = int()
    //     0x74c134: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x74c138: ldr             x2, [fp, #0x18]
    // 0x74c13c: LoadField: r3 = r2->field_7
    //     0x74c13c: ldur            w3, [x2, #7]
    // 0x74c140: DecompressPointer r3
    //     0x74c140: add             x3, x3, HEAP, lsl #32
    // 0x74c144: LoadField: r2 = r3->field_13
    //     0x74c144: ldur            w2, [x3, #0x13]
    // 0x74c148: ldr             x4, [fp, #0x10]
    // 0x74c14c: r5 = LoadInt32Instr(r4)
    //     0x74c14c: sbfx            x5, x4, #1, #0x1f
    //     0x74c150: tbz             w4, #0, #0x74c158
    //     0x74c154: ldur            x5, [x4, #7]
    // 0x74c158: r0 = LoadInt32Instr(r2)
    //     0x74c158: sbfx            x0, x2, #1, #0x1f
    // 0x74c15c: mov             x1, x5
    // 0x74c160: cmp             x1, x0
    // 0x74c164: b.hs            #0x74c1a8
    // 0x74c168: ArrayLoad: d0 = r3[r5]  ; List_8
    //     0x74c168: add             x16, x3, x5, lsl #3
    //     0x74c16c: ldur            d0, [x16, #0x17]
    // 0x74c170: r0 = inline_Allocate_Double()
    //     0x74c170: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x74c174: add             x0, x0, #0x10
    //     0x74c178: cmp             x1, x0
    //     0x74c17c: b.ls            #0x74c1ac
    //     0x74c180: str             x0, [THR, #0x60]  ; THR::top
    //     0x74c184: sub             x0, x0, #0xf
    //     0x74c188: movz            x1, #0xe15c
    //     0x74c18c: movk            x1, #0x3, lsl #16
    //     0x74c190: stur            x1, [x0, #-1]
    // 0x74c194: dmb             ishst
    // 0x74c198: StoreField: r0->field_7 = d0
    //     0x74c198: stur            d0, [x0, #7]
    // 0x74c19c: LeaveFrame
    //     0x74c19c: mov             SP, fp
    //     0x74c1a0: ldp             fp, lr, [SP], #0x10
    // 0x74c1a4: ret
    //     0x74c1a4: ret             
    // 0x74c1a8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x74c1a8: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x74c1ac: SaveReg d0
    //     0x74c1ac: str             q0, [SP, #-0x10]!
    // 0x74c1b0: r0 = AllocateDouble()
    //     0x74c1b0: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x74c1b4: RestoreReg d0
    //     0x74c1b4: ldr             q0, [SP], #0x10
    // 0x74c1b8: b               #0x74c198
  }
}

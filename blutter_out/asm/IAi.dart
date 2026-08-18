// lib: , url: IAi

// class id: 1048807, size: 0x8
class :: {
}

// class id: 1841, size: 0x1c, field offset: 0x8
class mR extends Object {
}

// class id: 1844, size: 0x10, field offset: 0x8
//   const constructor, 
class _ZR extends Object {
}

// class id: 1845, size: 0x1c, field offset: 0x8
//   const constructor, 
class lR extends Object {

  dE field_8;
  _Double field_c;
  la field_14;
  dE field_18;
}

// class id: 1846, size: 0xc, field offset: 0x8
//   const constructor, 
class iQ extends Object {

  dE field_8;

  iQ -(iQ, iQ) {
    // ** addr: 0x7a873c, size: 0x84
    // 0x7a873c: EnterFrame
    //     0x7a873c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a8740: mov             fp, SP
    // 0x7a8744: CheckStackOverflow
    //     0x7a8744: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a8748: cmp             SP, x16
    //     0x7a874c: b.ls            #0x7a87a0
    // 0x7a8750: ldr             x0, [fp, #0x10]
    // 0x7a8754: r2 = Null
    //     0x7a8754: mov             x2, NULL
    // 0x7a8758: r1 = Null
    //     0x7a8758: mov             x1, NULL
    // 0x7a875c: r4 = 60
    //     0x7a875c: movz            x4, #0x3c
    // 0x7a8760: branchIfSmi(r0, 0x7a876c)
    //     0x7a8760: tbz             w0, #0, #0x7a876c
    // 0x7a8764: r4 = LoadClassIdInstr(r0)
    //     0x7a8764: ldur            x4, [x0, #-1]
    //     0x7a8768: ubfx            x4, x4, #0xc, #0x14
    // 0x7a876c: cmp             x4, #0x736
    // 0x7a8770: b.eq            #0x7a8788
    // 0x7a8774: r8 = iQ
    //     0x7a8774: add             x8, PP, #0x26, lsl #12  ; [pp+0x26ae0] Type: iQ
    //     0x7a8778: ldr             x8, [x8, #0xae0]
    // 0x7a877c: r3 = Null
    //     0x7a877c: add             x3, PP, #0x26, lsl #12  ; [pp+0x26af8] Null
    //     0x7a8780: ldr             x3, [x3, #0xaf8]
    // 0x7a8784: r0 = DefaultTypeTest()
    //     0x7a8784: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7a8788: ldr             x1, [fp, #0x18]
    // 0x7a878c: ldr             x2, [fp, #0x10]
    // 0x7a8790: r0 = call 0x4ee904
    //     0x7a8790: bl              #0x4ee904
    // 0x7a8794: LeaveFrame
    //     0x7a8794: mov             SP, fp
    //     0x7a8798: ldp             fp, lr, [SP], #0x10
    // 0x7a879c: ret
    //     0x7a879c: ret             
    // 0x7a87a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a87a0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a87a4: b               #0x7a8750
  }
  iQ +(iQ, iQ) {
    // ** addr: 0x7a87cc, size: 0x84
    // 0x7a87cc: EnterFrame
    //     0x7a87cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7a87d0: mov             fp, SP
    // 0x7a87d4: CheckStackOverflow
    //     0x7a87d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a87d8: cmp             SP, x16
    //     0x7a87dc: b.ls            #0x7a8830
    // 0x7a87e0: ldr             x0, [fp, #0x10]
    // 0x7a87e4: r2 = Null
    //     0x7a87e4: mov             x2, NULL
    // 0x7a87e8: r1 = Null
    //     0x7a87e8: mov             x1, NULL
    // 0x7a87ec: r4 = 60
    //     0x7a87ec: movz            x4, #0x3c
    // 0x7a87f0: branchIfSmi(r0, 0x7a87fc)
    //     0x7a87f0: tbz             w0, #0, #0x7a87fc
    // 0x7a87f4: r4 = LoadClassIdInstr(r0)
    //     0x7a87f4: ldur            x4, [x0, #-1]
    //     0x7a87f8: ubfx            x4, x4, #0xc, #0x14
    // 0x7a87fc: cmp             x4, #0x736
    // 0x7a8800: b.eq            #0x7a8818
    // 0x7a8804: r8 = iQ
    //     0x7a8804: add             x8, PP, #0x26, lsl #12  ; [pp+0x26ae0] Type: iQ
    //     0x7a8808: ldr             x8, [x8, #0xae0]
    // 0x7a880c: r3 = Null
    //     0x7a880c: add             x3, PP, #0x26, lsl #12  ; [pp+0x26ae8] Null
    //     0x7a8810: ldr             x3, [x3, #0xae8]
    // 0x7a8814: r0 = DefaultTypeTest()
    //     0x7a8814: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7a8818: ldr             x1, [fp, #0x18]
    // 0x7a881c: ldr             x2, [fp, #0x10]
    // 0x7a8820: r0 = call 0x4ee95c
    //     0x7a8820: bl              #0x4ee95c
    // 0x7a8824: LeaveFrame
    //     0x7a8824: mov             SP, fp
    //     0x7a8828: ldp             fp, lr, [SP], #0x10
    // 0x7a882c: ret
    //     0x7a882c: ret             
    // 0x7a8830: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a8830: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a8834: b               #0x7a87e0
  }
}

// lib: , url: nyi

// class id: 1048647, size: 0x8
class :: {
}

// class id: 2174, size: 0x20, field offset: 0x8
class dJ extends Object
    implements bJ {
}

// class id: 5228, size: 0x10, field offset: 0xc
//   const constructor, 
class cJ extends Iterable<dynamic>
    implements aJ {

  _OneByteString field_c;

  aJ +(cJ, aJ) {
    // ** addr: 0x759418, size: 0x88
    // 0x759418: EnterFrame
    //     0x759418: stp             fp, lr, [SP, #-0x10]!
    //     0x75941c: mov             fp, SP
    // 0x759420: CheckStackOverflow
    //     0x759420: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759424: cmp             SP, x16
    //     0x759428: b.ls            #0x759480
    // 0x75942c: ldr             x0, [fp, #0x10]
    // 0x759430: r2 = Null
    //     0x759430: mov             x2, NULL
    // 0x759434: r1 = Null
    //     0x759434: mov             x1, NULL
    // 0x759438: r4 = 60
    //     0x759438: movz            x4, #0x3c
    // 0x75943c: branchIfSmi(r0, 0x759448)
    //     0x75943c: tbz             w0, #0, #0x759448
    // 0x759440: r4 = LoadClassIdInstr(r0)
    //     0x759440: ldur            x4, [x0, #-1]
    //     0x759444: ubfx            x4, x4, #0xc, #0x14
    // 0x759448: r17 = 5228
    //     0x759448: movz            x17, #0x146c
    // 0x75944c: cmp             x4, x17
    // 0x759450: b.eq            #0x759468
    // 0x759454: r8 = aJ
    //     0x759454: add             x8, PP, #0x26, lsl #12  ; [pp+0x26828] Type: aJ
    //     0x759458: ldr             x8, [x8, #0x828]
    // 0x75945c: r3 = Null
    //     0x75945c: add             x3, PP, #0x26, lsl #12  ; [pp+0x26830] Null
    //     0x759460: ldr             x3, [x3, #0x830]
    // 0x759464: r0 = DefaultTypeTest()
    //     0x759464: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x759468: ldr             x1, [fp, #0x18]
    // 0x75946c: ldr             x2, [fp, #0x10]
    // 0x759470: r0 = call 0x2852b8
    //     0x759470: bl              #0x2852b8
    // 0x759474: LeaveFrame
    //     0x759474: mov             SP, fp
    //     0x759478: ldp             fp, lr, [SP], #0x10
    // 0x75947c: ret
    //     0x75947c: ret             
    // 0x759480: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759480: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759484: b               #0x75942c
  }
  [closure] bool rk(dynamic, Object?) {
    // ** addr: 0x3499e4, size: -0x1
  }
}

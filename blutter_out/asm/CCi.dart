// lib: , url: CCi

// class id: 1048929, size: 0x8
class :: {
}

// class id: 1665, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class Haa extends Object {
}

// class id: 1666, size: 0x28, field offset: 0x8
//   const constructor, 
class _Iaa extends Haa {

  _Iaa *(_Iaa, double) {
    // ** addr: 0x7d8b9c, size: 0x50
    // 0x7d8b9c: EnterFrame
    //     0x7d8b9c: stp             fp, lr, [SP, #-0x10]!
    //     0x7d8ba0: mov             fp, SP
    // 0x7d8ba4: CheckStackOverflow
    //     0x7d8ba4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d8ba8: cmp             SP, x16
    //     0x7d8bac: b.ls            #0x7d8bcc
    // 0x7d8bb0: ldr             x0, [fp, #0x10]
    // 0x7d8bb4: LoadField: d0 = r0->field_7
    //     0x7d8bb4: ldur            d0, [x0, #7]
    // 0x7d8bb8: ldr             x1, [fp, #0x18]
    // 0x7d8bbc: r0 = call 0x70f49c
    //     0x7d8bbc: bl              #0x70f49c
    // 0x7d8bc0: LeaveFrame
    //     0x7d8bc0: mov             SP, fp
    //     0x7d8bc4: ldp             fp, lr, [SP], #0x10
    // 0x7d8bc8: ret
    //     0x7d8bc8: ret             
    // 0x7d8bcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d8bcc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d8bd0: b               #0x7d8bb0
  }
}

// class id: 1667, size: 0x18, field offset: 0x8
//   const constructor, 
class zu extends Haa {

  fE field_8;
  fE field_c;
  fE field_10;
  fE field_14;

  zu +(zu, zu) {
    // ** addr: 0x7687b8, size: 0x88
    // 0x7687b8: EnterFrame
    //     0x7687b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7687bc: mov             fp, SP
    // 0x7687c0: CheckStackOverflow
    //     0x7687c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7687c4: cmp             SP, x16
    //     0x7687c8: b.ls            #0x768820
    // 0x7687cc: ldr             x0, [fp, #0x10]
    // 0x7687d0: r2 = Null
    //     0x7687d0: mov             x2, NULL
    // 0x7687d4: r1 = Null
    //     0x7687d4: mov             x1, NULL
    // 0x7687d8: r4 = 60
    //     0x7687d8: movz            x4, #0x3c
    // 0x7687dc: branchIfSmi(r0, 0x7687e8)
    //     0x7687dc: tbz             w0, #0, #0x7687e8
    // 0x7687e0: r4 = LoadClassIdInstr(r0)
    //     0x7687e0: ldur            x4, [x0, #-1]
    //     0x7687e4: ubfx            x4, x4, #0xc, #0x14
    // 0x7687e8: sub             x4, x4, #0x683
    // 0x7687ec: cmp             x4, #2
    // 0x7687f0: b.ls            #0x768808
    // 0x7687f4: r8 = zu
    //     0x7687f4: add             x8, PP, #0x22, lsl #12  ; [pp+0x22310] Type: zu
    //     0x7687f8: ldr             x8, [x8, #0x310]
    // 0x7687fc: r3 = Null
    //     0x7687fc: add             x3, PP, #0x27, lsl #12  ; [pp+0x27768] Null
    //     0x768800: ldr             x3, [x3, #0x768]
    // 0x768804: r0 = zu()
    //     0x768804: bl              #0x76890c  ; IsType_zu_Stub
    // 0x768808: ldr             x1, [fp, #0x18]
    // 0x76880c: ldr             x2, [fp, #0x10]
    // 0x768810: r0 = call 0x3639c0
    //     0x768810: bl              #0x3639c0
    // 0x768814: LeaveFrame
    //     0x768814: mov             SP, fp
    //     0x768818: ldp             fp, lr, [SP], #0x10
    // 0x76881c: ret
    //     0x76881c: ret             
    // 0x768820: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x768820: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x768824: b               #0x7687cc
  }
  zu -(zu, zu) {
    // ** addr: 0x76884c, size: 0x88
    // 0x76884c: EnterFrame
    //     0x76884c: stp             fp, lr, [SP, #-0x10]!
    //     0x768850: mov             fp, SP
    // 0x768854: CheckStackOverflow
    //     0x768854: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x768858: cmp             SP, x16
    //     0x76885c: b.ls            #0x7688b4
    // 0x768860: ldr             x0, [fp, #0x10]
    // 0x768864: r2 = Null
    //     0x768864: mov             x2, NULL
    // 0x768868: r1 = Null
    //     0x768868: mov             x1, NULL
    // 0x76886c: r4 = 60
    //     0x76886c: movz            x4, #0x3c
    // 0x768870: branchIfSmi(r0, 0x76887c)
    //     0x768870: tbz             w0, #0, #0x76887c
    // 0x768874: r4 = LoadClassIdInstr(r0)
    //     0x768874: ldur            x4, [x0, #-1]
    //     0x768878: ubfx            x4, x4, #0xc, #0x14
    // 0x76887c: sub             x4, x4, #0x683
    // 0x768880: cmp             x4, #2
    // 0x768884: b.ls            #0x76889c
    // 0x768888: r8 = zu
    //     0x768888: add             x8, PP, #0x22, lsl #12  ; [pp+0x22310] Type: zu
    //     0x76888c: ldr             x8, [x8, #0x310]
    // 0x768890: r3 = Null
    //     0x768890: add             x3, PP, #0x27, lsl #12  ; [pp+0x27778] Null
    //     0x768894: ldr             x3, [x3, #0x778]
    // 0x768898: r0 = zu()
    //     0x768898: bl              #0x76890c  ; IsType_zu_Stub
    // 0x76889c: ldr             x1, [fp, #0x18]
    // 0x7688a0: ldr             x2, [fp, #0x10]
    // 0x7688a4: r0 = call 0x363aa4
    //     0x7688a4: bl              #0x363aa4
    // 0x7688a8: LeaveFrame
    //     0x7688a8: mov             SP, fp
    //     0x7688ac: ldp             fp, lr, [SP], #0x10
    // 0x7688b0: ret
    //     0x7688b0: ret             
    // 0x7688b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7688b4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7688b8: b               #0x768860
  }
  zu *(zu, double) {
    // ** addr: 0x7688d4, size: 0x50
    // 0x7688d4: EnterFrame
    //     0x7688d4: stp             fp, lr, [SP, #-0x10]!
    //     0x7688d8: mov             fp, SP
    // 0x7688dc: CheckStackOverflow
    //     0x7688dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7688e0: cmp             SP, x16
    //     0x7688e4: b.ls            #0x768904
    // 0x7688e8: ldr             x0, [fp, #0x10]
    // 0x7688ec: LoadField: d0 = r0->field_7
    //     0x7688ec: ldur            d0, [x0, #7]
    // 0x7688f0: ldr             x1, [fp, #0x18]
    // 0x7688f4: r0 = call 0x70f3d4
    //     0x7688f4: bl              #0x70f3d4
    // 0x7688f8: LeaveFrame
    //     0x7688f8: mov             SP, fp
    //     0x7688fc: ldp             fp, lr, [SP], #0x10
    // 0x768900: ret
    //     0x768900: ret             
    // 0x768904: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x768904: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x768908: b               #0x7688e8
  }
}

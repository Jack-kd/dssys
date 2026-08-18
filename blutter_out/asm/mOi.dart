// lib: , url: mOi

// class id: 1049579, size: 0x8
class :: {
}

// class id: 5013, size: 0x14, field offset: 0xc
class uTa extends Z<dynamic, dynamic> {

  dynamic [](uTa, Object?) {
    // ** addr: 0x7ba878, size: 0x4c
    // 0x7ba878: EnterFrame
    //     0x7ba878: stp             fp, lr, [SP, #-0x10]!
    //     0x7ba87c: mov             fp, SP
    // 0x7ba880: CheckStackOverflow
    //     0x7ba880: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ba884: cmp             SP, x16
    //     0x7ba888: b.ls            #0x7ba8a4
    // 0x7ba88c: ldr             x1, [fp, #0x18]
    // 0x7ba890: ldr             x2, [fp, #0x10]
    // 0x7ba894: r0 = call 0x5f0a4c
    //     0x7ba894: bl              #0x5f0a4c
    // 0x7ba898: LeaveFrame
    //     0x7ba898: mov             SP, fp
    //     0x7ba89c: ldp             fp, lr, [SP], #0x10
    // 0x7ba8a0: ret
    //     0x7ba8a0: ret             
    // 0x7ba8a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ba8a4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ba8a8: b               #0x7ba88c
  }
}

// class id: 5181, size: 0x1c, field offset: 0xc
class tTa extends Y<dynamic> {

  late Map<String, int> _pFe; // offset: 0x18

  void []=(tTa, int, Map<String, Object?>) {
    // ** addr: 0x78d83c, size: 0x94
    // 0x78d83c: EnterFrame
    //     0x78d83c: stp             fp, lr, [SP, #-0x10]!
    //     0x78d840: mov             fp, SP
    // 0x78d844: AllocStack(0x18)
    //     0x78d844: sub             SP, SP, #0x18
    // 0x78d848: CheckStackOverflow
    //     0x78d848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78d84c: cmp             SP, x16
    //     0x78d850: b.ls            #0x78d8b0
    // 0x78d854: ldr             x0, [fp, #0x18]
    // 0x78d858: r2 = Null
    //     0x78d858: mov             x2, NULL
    // 0x78d85c: r1 = Null
    //     0x78d85c: mov             x1, NULL
    // 0x78d860: branchIfSmi(r0, 0x78d888)
    //     0x78d860: tbz             w0, #0, #0x78d888
    // 0x78d864: r4 = LoadClassIdInstr(r0)
    //     0x78d864: ldur            x4, [x0, #-1]
    //     0x78d868: ubfx            x4, x4, #0xc, #0x14
    // 0x78d86c: sub             x4, x4, #0x3c
    // 0x78d870: cmp             x4, #1
    // 0x78d874: b.ls            #0x78d888
    // 0x78d878: r8 = int
    //     0x78d878: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78d87c: r3 = Null
    //     0x78d87c: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dc10] Null
    //     0x78d880: ldr             x3, [x3, #0xc10]
    // 0x78d884: r0 = int()
    //     0x78d884: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78d888: ldr             x16, [fp, #0x20]
    // 0x78d88c: ldr             lr, [fp, #0x18]
    // 0x78d890: stp             lr, x16, [SP, #8]
    // 0x78d894: ldr             x16, [fp, #0x10]
    // 0x78d898: str             x16, [SP]
    // 0x78d89c: r0 = call 0x6aaccc
    //     0x78d89c: bl              #0x6aaccc
    // 0x78d8a0: r0 = Null
    //     0x78d8a0: mov             x0, NULL
    // 0x78d8a4: LeaveFrame
    //     0x78d8a4: mov             SP, fp
    //     0x78d8a8: ldp             fp, lr, [SP], #0x10
    // 0x78d8ac: ret
    //     0x78d8ac: ret             
    // 0x78d8b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78d8b0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78d8b4: b               #0x78d854
  }
  Map<String, Object?> [](tTa, int) {
    // ** addr: 0x78d8d0, size: 0x88
    // 0x78d8d0: EnterFrame
    //     0x78d8d0: stp             fp, lr, [SP, #-0x10]!
    //     0x78d8d4: mov             fp, SP
    // 0x78d8d8: AllocStack(0x10)
    //     0x78d8d8: sub             SP, SP, #0x10
    // 0x78d8dc: CheckStackOverflow
    //     0x78d8dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78d8e0: cmp             SP, x16
    //     0x78d8e4: b.ls            #0x78d938
    // 0x78d8e8: ldr             x0, [fp, #0x10]
    // 0x78d8ec: r2 = Null
    //     0x78d8ec: mov             x2, NULL
    // 0x78d8f0: r1 = Null
    //     0x78d8f0: mov             x1, NULL
    // 0x78d8f4: branchIfSmi(r0, 0x78d91c)
    //     0x78d8f4: tbz             w0, #0, #0x78d91c
    // 0x78d8f8: r4 = LoadClassIdInstr(r0)
    //     0x78d8f8: ldur            x4, [x0, #-1]
    //     0x78d8fc: ubfx            x4, x4, #0xc, #0x14
    // 0x78d900: sub             x4, x4, #0x3c
    // 0x78d904: cmp             x4, #1
    // 0x78d908: b.ls            #0x78d91c
    // 0x78d90c: r8 = int
    //     0x78d90c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78d910: r3 = Null
    //     0x78d910: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dc30] Null
    //     0x78d914: ldr             x3, [x3, #0xc30]
    // 0x78d918: r0 = int()
    //     0x78d918: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78d91c: ldr             x16, [fp, #0x18]
    // 0x78d920: ldr             lr, [fp, #0x10]
    // 0x78d924: stp             lr, x16, [SP]
    // 0x78d928: r0 = call 0x5ee204
    //     0x78d928: bl              #0x5ee204
    // 0x78d92c: LeaveFrame
    //     0x78d92c: mov             SP, fp
    //     0x78d930: ldp             fp, lr, [SP], #0x10
    // 0x78d934: ret
    //     0x78d934: ret             
    // 0x78d938: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78d938: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78d93c: b               #0x78d8e8
  }
}

// class id: 5182, size: 0x10, field offset: 0xc
abstract class sTa<X0> extends Y<X0> {

  void []=(sTa<X0>, int, X0) {
    // ** addr: 0x78d79c, size: 0x94
    // 0x78d79c: EnterFrame
    //     0x78d79c: stp             fp, lr, [SP, #-0x10]!
    //     0x78d7a0: mov             fp, SP
    // 0x78d7a4: AllocStack(0x18)
    //     0x78d7a4: sub             SP, SP, #0x18
    // 0x78d7a8: CheckStackOverflow
    //     0x78d7a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78d7ac: cmp             SP, x16
    //     0x78d7b0: b.ls            #0x78d810
    // 0x78d7b4: ldr             x0, [fp, #0x18]
    // 0x78d7b8: r2 = Null
    //     0x78d7b8: mov             x2, NULL
    // 0x78d7bc: r1 = Null
    //     0x78d7bc: mov             x1, NULL
    // 0x78d7c0: branchIfSmi(r0, 0x78d7e8)
    //     0x78d7c0: tbz             w0, #0, #0x78d7e8
    // 0x78d7c4: r4 = LoadClassIdInstr(r0)
    //     0x78d7c4: ldur            x4, [x0, #-1]
    //     0x78d7c8: ubfx            x4, x4, #0xc, #0x14
    // 0x78d7cc: sub             x4, x4, #0x3c
    // 0x78d7d0: cmp             x4, #1
    // 0x78d7d4: b.ls            #0x78d7e8
    // 0x78d7d8: r8 = int
    //     0x78d7d8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78d7dc: r3 = Null
    //     0x78d7dc: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dbd0] Null
    //     0x78d7e0: ldr             x3, [x3, #0xbd0]
    // 0x78d7e4: r0 = int()
    //     0x78d7e4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78d7e8: ldr             x16, [fp, #0x20]
    // 0x78d7ec: ldr             lr, [fp, #0x18]
    // 0x78d7f0: stp             lr, x16, [SP, #8]
    // 0x78d7f4: ldr             x16, [fp, #0x10]
    // 0x78d7f8: str             x16, [SP]
    // 0x78d7fc: r0 = call 0x6aac6c
    //     0x78d7fc: bl              #0x6aac6c
    // 0x78d800: r0 = Null
    //     0x78d800: mov             x0, NULL
    // 0x78d804: LeaveFrame
    //     0x78d804: mov             SP, fp
    //     0x78d808: ldp             fp, lr, [SP], #0x10
    // 0x78d80c: ret
    //     0x78d80c: ret             
    // 0x78d810: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78d810: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78d814: b               #0x78d7b4
  }
}

// class id: 5183, size: 0x10, field offset: 0x10
class vTa extends sTa<dynamic> {

  dynamic [](vTa, int) {
    // ** addr: 0x7c5754, size: 0x88
    // 0x7c5754: EnterFrame
    //     0x7c5754: stp             fp, lr, [SP, #-0x10]!
    //     0x7c5758: mov             fp, SP
    // 0x7c575c: AllocStack(0x10)
    //     0x7c575c: sub             SP, SP, #0x10
    // 0x7c5760: CheckStackOverflow
    //     0x7c5760: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c5764: cmp             SP, x16
    //     0x7c5768: b.ls            #0x7c57bc
    // 0x7c576c: ldr             x0, [fp, #0x10]
    // 0x7c5770: r2 = Null
    //     0x7c5770: mov             x2, NULL
    // 0x7c5774: r1 = Null
    //     0x7c5774: mov             x1, NULL
    // 0x7c5778: branchIfSmi(r0, 0x7c57a0)
    //     0x7c5778: tbz             w0, #0, #0x7c57a0
    // 0x7c577c: r4 = LoadClassIdInstr(r0)
    //     0x7c577c: ldur            x4, [x0, #-1]
    //     0x7c5780: ubfx            x4, x4, #0xc, #0x14
    // 0x7c5784: sub             x4, x4, #0x3c
    // 0x7c5788: cmp             x4, #1
    // 0x7c578c: b.ls            #0x7c57a0
    // 0x7c5790: r8 = int
    //     0x7c5790: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7c5794: r3 = Null
    //     0x7c5794: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1db40] Null
    //     0x7c5798: ldr             x3, [x3, #0xb40]
    // 0x7c579c: r0 = int()
    //     0x7c579c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7c57a0: ldr             x16, [fp, #0x18]
    // 0x7c57a4: ldr             lr, [fp, #0x10]
    // 0x7c57a8: stp             lr, x16, [SP]
    // 0x7c57ac: r0 = call 0x5ede0c
    //     0x7c57ac: bl              #0x5ede0c
    // 0x7c57b0: LeaveFrame
    //     0x7c57b0: mov             SP, fp
    //     0x7c57b4: ldp             fp, lr, [SP], #0x10
    // 0x7c57b8: ret
    //     0x7c57b8: ret             
    // 0x7c57bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c57bc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c57c0: b               #0x7c576c
  }
}

// class id: 5184, size: 0x10, field offset: 0x10
class rTa extends sTa<dynamic> {

  Map<String, Object?> [](rTa, int) {
    // ** addr: 0x78d714, size: 0x88
    // 0x78d714: EnterFrame
    //     0x78d714: stp             fp, lr, [SP, #-0x10]!
    //     0x78d718: mov             fp, SP
    // 0x78d71c: AllocStack(0x10)
    //     0x78d71c: sub             SP, SP, #0x10
    // 0x78d720: CheckStackOverflow
    //     0x78d720: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78d724: cmp             SP, x16
    //     0x78d728: b.ls            #0x78d77c
    // 0x78d72c: ldr             x0, [fp, #0x10]
    // 0x78d730: r2 = Null
    //     0x78d730: mov             x2, NULL
    // 0x78d734: r1 = Null
    //     0x78d734: mov             x1, NULL
    // 0x78d738: branchIfSmi(r0, 0x78d760)
    //     0x78d738: tbz             w0, #0, #0x78d760
    // 0x78d73c: r4 = LoadClassIdInstr(r0)
    //     0x78d73c: ldur            x4, [x0, #-1]
    //     0x78d740: ubfx            x4, x4, #0xc, #0x14
    // 0x78d744: sub             x4, x4, #0x3c
    // 0x78d748: cmp             x4, #1
    // 0x78d74c: b.ls            #0x78d760
    // 0x78d750: r8 = int
    //     0x78d750: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x78d754: r3 = Null
    //     0x78d754: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dbf0] Null
    //     0x78d758: ldr             x3, [x3, #0xbf0]
    // 0x78d75c: r0 = int()
    //     0x78d75c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x78d760: ldr             x16, [fp, #0x18]
    // 0x78d764: ldr             lr, [fp, #0x10]
    // 0x78d768: stp             lr, x16, [SP]
    // 0x78d76c: r0 = call 0x5edd6c
    //     0x78d76c: bl              #0x5edd6c
    // 0x78d770: LeaveFrame
    //     0x78d770: mov             SP, fp
    //     0x78d774: ldp             fp, lr, [SP], #0x10
    // 0x78d778: ret
    //     0x78d778: ret             
    // 0x78d77c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78d77c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78d780: b               #0x78d72c
  }
}

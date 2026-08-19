// lib: , url: txi

// class id: 1048620, size: 0x8
class :: {

  static late final List<int> _tAf; // offset: 0xbd8
}

// class id: 2227, size: 0x8, field offset: 0x8
abstract class yH extends Object
    implements xH {
}

// class id: 2228, size: 0x1c, field offset: 0x8
class zH extends yH {

  late List<List<int>> _Izf; // offset: 0x10
}

// class id: 2229, size: 0x8, field offset: 0x8
abstract class xH extends Object {
}

// class id: 2230, size: 0x10, field offset: 0x8
class tH extends Object {

  late int _lAf; // offset: 0xc
  late int _kAf; // offset: 0x8

  bool >(tH, tH) {
    // ** addr: 0x7b1d50, size: 0x84
    // 0x7b1d50: EnterFrame
    //     0x7b1d50: stp             fp, lr, [SP, #-0x10]!
    //     0x7b1d54: mov             fp, SP
    // 0x7b1d58: CheckStackOverflow
    //     0x7b1d58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b1d5c: cmp             SP, x16
    //     0x7b1d60: b.ls            #0x7b1db4
    // 0x7b1d64: ldr             x0, [fp, #0x10]
    // 0x7b1d68: r2 = Null
    //     0x7b1d68: mov             x2, NULL
    // 0x7b1d6c: r1 = Null
    //     0x7b1d6c: mov             x1, NULL
    // 0x7b1d70: r4 = 60
    //     0x7b1d70: movz            x4, #0x3c
    // 0x7b1d74: branchIfSmi(r0, 0x7b1d80)
    //     0x7b1d74: tbz             w0, #0, #0x7b1d80
    // 0x7b1d78: r4 = LoadClassIdInstr(r0)
    //     0x7b1d78: ldur            x4, [x0, #-1]
    //     0x7b1d7c: ubfx            x4, x4, #0xc, #0x14
    // 0x7b1d80: cmp             x4, #0x8b6
    // 0x7b1d84: b.eq            #0x7b1d9c
    // 0x7b1d88: r8 = tH
    //     0x7b1d88: add             x8, PP, #0x16, lsl #12  ; [pp+0x16ea0] Type: tH
    //     0x7b1d8c: ldr             x8, [x8, #0xea0]
    // 0x7b1d90: r3 = Null
    //     0x7b1d90: add             x3, PP, #0x3b, lsl #12  ; [pp+0x3b288] Null
    //     0x7b1d94: ldr             x3, [x3, #0x288]
    // 0x7b1d98: r0 = DefaultTypeTest()
    //     0x7b1d98: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b1d9c: ldr             x1, [fp, #0x18]
    // 0x7b1da0: ldr             x2, [fp, #0x10]
    // 0x7b1da4: r0 = call 0x54654c
    //     0x7b1da4: bl              #0x54654c
    // 0x7b1da8: LeaveFrame
    //     0x7b1da8: mov             SP, fp
    //     0x7b1dac: ldp             fp, lr, [SP], #0x10
    // 0x7b1db0: ret
    //     0x7b1db0: ret             
    // 0x7b1db4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b1db4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b1db8: b               #0x7b1d64
  }
}

// class id: 2231, size: 0x8, field offset: 0x8
abstract class sH extends Object {
}

// class id: 2232, size: 0x8, field offset: 0x8
abstract class rH extends Object
    implements sH {
}

// class id: 2233, size: 0x2c, field offset: 0x8
abstract class uH extends rH {

  late int _Wzf; // offset: 0x10
  late int Zzf; // offset: 0x28
}

// class id: 2234, size: 0x34, field offset: 0x2c
class vH extends uH
    implements sH {
}

// class id: 2235, size: 0x8, field offset: 0x8
abstract class qH extends Object
    implements nH {
}

// class id: 2236, size: 0x1c, field offset: 0x8
class wH extends qH {

  late int _pzf; // offset: 0xc
  late Uint8List _rzf; // offset: 0x14
  late Uint8List _szf; // offset: 0x18
  late int _qzf; // offset: 0x10
}

// class id: 2237, size: 0x8, field offset: 0x8
abstract class nH extends Object {
}

// class id: 2238, size: 0x8, field offset: 0x8
abstract class mH extends Object
    implements lH {
}

// class id: 2239, size: 0x14, field offset: 0x8
class pH extends mH {

  late kH _Bzf; // offset: 0x8
  late Uint8List _state; // offset: 0x10
}

// class id: 2240, size: 0x8, field offset: 0x8
abstract class lH extends Object {
}

// class id: 2241, size: 0x8, field offset: 0x8
abstract class jH extends Object {
}

// class id: 2242, size: 0xc, field offset: 0x8
class oH extends jH {

  late Uint8List key; // offset: 0x8
}

// class id: 2243, size: 0x1c, field offset: 0x8
class kH extends jH {
}

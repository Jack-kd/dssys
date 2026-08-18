// lib: , url: Rti

// class id: 1048639, size: 0x8
class :: {

  static late final Set<Object> ATd; // offset: 0x774

  [closure] static KX BTd(dynamic, aM, (dynamic) => void, KX) {
    // ** addr: 0x3a8fe0, size: -0x1
  }
  [closure] static Future<void> HTd(dynamic) {
    // ** addr: 0x3a8fb4, size: -0x1
  }
}

// class id: 1656, size: 0x28, field offset: 0x28
//   const constructor, 
class _BI extends _wu {

  _Mint field_8;
  _Mint field_10;
  _Mint field_18;
  _Mint field_20;
}

// class id: 1669, size: 0x18, field offset: 0x18
//   const constructor, 
class _CI extends _yu {

  fE field_8;
  fE field_c;
  fE field_10;
  fE field_14;
}

// class id: 1676, size: 0x18, field offset: 0x18
//   const constructor, 
class _AI extends _uu {

  _Mint field_8;
  _Mint field_10;
}

// class id: 2805, size: 0x2c, field offset: 0x2c
//   const constructor, 
class _zI extends _su {

  _Mint field_8;
  _Mint field_10;
  _Mint field_18;
  _Mint field_20;
  vE field_28;
}

// class id: 2808, size: 0x14, field offset: 0x14
//   const constructor, 
class _xI extends _ou {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 2811, size: 0x14, field offset: 0x14
//   const constructor, 
class _wI extends _mu {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 2812, size: 0x8, field offset: 0x8
abstract class iu extends Object {
}

// class id: 2814, size: 0xc, field offset: 0x8
//   const constructor, 
class _List<X0> extends _hu
    implements List<X0> {

  List<X0> +(_List<X0>, List<X0>) {
    // ** addr: 0x767bc8, size: 0x4c
    // 0x767bc8: EnterFrame
    //     0x767bc8: stp             fp, lr, [SP, #-0x10]!
    //     0x767bcc: mov             fp, SP
    // 0x767bd0: CheckStackOverflow
    //     0x767bd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x767bd4: cmp             SP, x16
    //     0x767bd8: b.ls            #0x767bf4
    // 0x767bdc: ldr             x1, [fp, #0x18]
    // 0x767be0: ldr             x2, [fp, #0x10]
    // 0x767be4: r0 = call 0x351d7c
    //     0x767be4: bl              #0x351d7c
    // 0x767be8: LeaveFrame
    //     0x767be8: mov             SP, fp
    //     0x767bec: ldp             fp, lr, [SP], #0x10
    // 0x767bf0: ret
    //     0x767bf0: ret             
    // 0x767bf4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x767bf4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x767bf8: b               #0x767bdc
  }
  void []=(_List<X0>, int, X0) {
    // ** addr: 0x767c14, size: 0x9c
    // 0x767c14: EnterFrame
    //     0x767c14: stp             fp, lr, [SP, #-0x10]!
    //     0x767c18: mov             fp, SP
    // 0x767c1c: ldr             x0, [fp, #0x18]
    // 0x767c20: r2 = Null
    //     0x767c20: mov             x2, NULL
    // 0x767c24: r1 = Null
    //     0x767c24: mov             x1, NULL
    // 0x767c28: branchIfSmi(r0, 0x767c50)
    //     0x767c28: tbz             w0, #0, #0x767c50
    // 0x767c2c: r4 = LoadClassIdInstr(r0)
    //     0x767c2c: ldur            x4, [x0, #-1]
    //     0x767c30: ubfx            x4, x4, #0xc, #0x14
    // 0x767c34: sub             x4, x4, #0x3c
    // 0x767c38: cmp             x4, #1
    // 0x767c3c: b.ls            #0x767c50
    // 0x767c40: r8 = int
    //     0x767c40: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x767c44: r3 = Null
    //     0x767c44: add             x3, PP, #0x1e, lsl #12  ; [pp+0x1e420] Null
    //     0x767c48: ldr             x3, [x3, #0x420]
    // 0x767c4c: r0 = int()
    //     0x767c4c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x767c50: ldr             x0, [fp, #0x20]
    // 0x767c54: LoadField: r2 = r0->field_7
    //     0x767c54: ldur            w2, [x0, #7]
    // 0x767c58: DecompressPointer r2
    //     0x767c58: add             x2, x2, HEAP, lsl #32
    // 0x767c5c: ldr             x0, [fp, #0x10]
    // 0x767c60: r1 = Null
    //     0x767c60: mov             x1, NULL
    // 0x767c64: cmp             w2, NULL
    // 0x767c68: b.eq            #0x767c88
    // 0x767c6c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x767c6c: ldur            w4, [x2, #0x17]
    // 0x767c70: DecompressPointer r4
    //     0x767c70: add             x4, x4, HEAP, lsl #32
    // 0x767c74: r8 = X0
    //     0x767c74: ldr             x8, [PP, #0x200]  ; [pp+0x200] TypeParameter: X0
    // 0x767c78: LoadField: r9 = r4->field_7
    //     0x767c78: ldur            x9, [x4, #7]
    // 0x767c7c: r3 = Null
    //     0x767c7c: add             x3, PP, #0x1e, lsl #12  ; [pp+0x1e430] Null
    //     0x767c80: ldr             x3, [x3, #0x430]
    // 0x767c84: blr             x9
    // 0x767c88: r0 = Null
    //     0x767c88: mov             x0, NULL
    // 0x767c8c: LeaveFrame
    //     0x767c8c: mov             SP, fp
    //     0x767c90: ldp             fp, lr, [SP], #0x10
    // 0x767c94: ret
    //     0x767c94: ret             
  }
  X0 [](_List<X0>, int) {
    // ** addr: 0x767cb0, size: 0x88
    // 0x767cb0: EnterFrame
    //     0x767cb0: stp             fp, lr, [SP, #-0x10]!
    //     0x767cb4: mov             fp, SP
    // 0x767cb8: AllocStack(0x10)
    //     0x767cb8: sub             SP, SP, #0x10
    // 0x767cbc: CheckStackOverflow
    //     0x767cbc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x767cc0: cmp             SP, x16
    //     0x767cc4: b.ls            #0x767d18
    // 0x767cc8: ldr             x0, [fp, #0x10]
    // 0x767ccc: r2 = Null
    //     0x767ccc: mov             x2, NULL
    // 0x767cd0: r1 = Null
    //     0x767cd0: mov             x1, NULL
    // 0x767cd4: branchIfSmi(r0, 0x767cfc)
    //     0x767cd4: tbz             w0, #0, #0x767cfc
    // 0x767cd8: r4 = LoadClassIdInstr(r0)
    //     0x767cd8: ldur            x4, [x0, #-1]
    //     0x767cdc: ubfx            x4, x4, #0xc, #0x14
    // 0x767ce0: sub             x4, x4, #0x3c
    // 0x767ce4: cmp             x4, #1
    // 0x767ce8: b.ls            #0x767cfc
    // 0x767cec: r8 = int
    //     0x767cec: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x767cf0: r3 = Null
    //     0x767cf0: add             x3, PP, #0x1e, lsl #12  ; [pp+0x1e450] Null
    //     0x767cf4: ldr             x3, [x3, #0x450]
    // 0x767cf8: r0 = int()
    //     0x767cf8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x767cfc: ldr             x16, [fp, #0x18]
    // 0x767d00: ldr             lr, [fp, #0x10]
    // 0x767d04: stp             lr, x16, [SP]
    // 0x767d08: r0 = <anonymous closure>()
    //     0x767d08: bl              #0x6a8a78  ; [ZGi] yGa::<anonymous closure>
    // 0x767d0c: LeaveFrame
    //     0x767d0c: mov             SP, fp
    //     0x767d10: ldp             fp, lr, [SP], #0x10
    // 0x767d14: ret
    //     0x767d14: ret             
    // 0x767d18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x767d18: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x767d1c: b               #0x767cc8
  }
  [closure] bool rk(dynamic, Object?) {
    // ** addr: 0x351d40, size: -0x1
  }
}

// class id: 2815, size: 0x8, field offset: 0x8
//   const constructor, 
class _tI extends _hu {
}

// class id: 3401, size: 0x70, field offset: 0x70
//   const constructor, 
class _yI extends _qu {

  bool field_8;
}

// class id: 4378, size: 0x40, field offset: 0x40
//   const constructor, 
class _uI extends _ju {
}

// class id: 5619, size: 0x10, field offset: 0x10
//   const constructor, 
class _vI extends _lu {

  _Mint field_8;
}

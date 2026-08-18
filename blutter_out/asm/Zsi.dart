// lib: , url: Zsi

// class id: 1048968, size: 0x8
class :: {
}

// class id: 1595, size: 0x18, field offset: 0x8
class _Sca extends Object {
}

// class id: 1596, size: 0x8, field offset: 0x8
//   const constructor, 
class _Qca extends Object
    implements _Mca<X0, X1> {
}

// class id: 1597, size: 0x8, field offset: 0x8
//   const constructor, 
class _Pca extends Object
    implements _Mca<X0, X1> {

  [closure] Fg <anonymous closure>(dynamic) {
    // ** addr: 0x70738c, size: -0x1
  }
}

// class id: 1598, size: 0xc, field offset: 0x8
abstract class _Mca<X0, X1> extends Object {
}

// class id: 1601, size: 0x28, field offset: 0x8
//   const constructor, 
class Pv extends Ica {

  _Double field_8;
  _Double field_10;
  _Double field_18;
  _Double field_20;

  Pv *(Pv, double) {
    // ** addr: 0x759354, size: 0x50
    // 0x759354: EnterFrame
    //     0x759354: stp             fp, lr, [SP, #-0x10]!
    //     0x759358: mov             fp, SP
    // 0x75935c: CheckStackOverflow
    //     0x75935c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x759360: cmp             SP, x16
    //     0x759364: b.ls            #0x759384
    // 0x759368: ldr             x0, [fp, #0x10]
    // 0x75936c: LoadField: d0 = r0->field_7
    //     0x75936c: ldur            d0, [x0, #7]
    // 0x759370: ldr             x1, [fp, #0x18]
    // 0x759374: r0 = call 0x284b90
    //     0x759374: bl              #0x284b90
    // 0x759378: LeaveFrame
    //     0x759378: mov             SP, fp
    //     0x75937c: ldp             fp, lr, [SP], #0x10
    // 0x759380: ret
    //     0x759380: ret             
    // 0x759384: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x759384: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x759388: b               #0x759368
  }
}

// class id: 1864, size: 0x14, field offset: 0x14
class Jca extends WP {
}

// class id: 1870, size: 0x14, field offset: 0x14
class Kca extends VP<dynamic> {
}

// class id: 2569, size: 0xc, field offset: 0x8
class Mr extends lz {
}

// class id: 2571, size: 0x18, field offset: 0x18
abstract class Lca<X0 bound Cr> extends _Lr<X0 bound Cr> {
}

// class id: 2836, size: 0xc, field offset: 0x8
abstract class hr<X0 bound Tq, X1 bound Lca> extends Object
    implements er<X0 bound Cr, X1 bound Nr> {
}

// class id: 2926, size: 0x50, field offset: 0x48
abstract class Tq extends Cr {

  [closure] Fg _bYb(dynamic, Pv) {
    // ** addr: 0x2e5fe8, size: -0x1
  }
  [closure] void pYb(dynamic) {
    // ** addr: 0x3570e0, size: -0x1
  }
  [closure] double? <anonymous closure>(dynamic, (Pv, hG)) {
    // ** addr: 0x2e0470, size: -0x1
  }
  [closure] double? _fYb(dynamic, (Pv, hG)) {
    // ** addr: 0x344750, size: -0x1
  }
}

// class id: 5468, size: 0x14, field offset: 0x14
enum _Rca extends _Enum
    implements _Mca<X0, X1> {

  _Mint field_8;
  _OneByteString field_10;

  [closure] double <anonymous closure>(dynamic) {
    // ** addr: 0x699c38, size: -0x1
  }
}

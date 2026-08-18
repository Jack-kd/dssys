// lib: , url: hui

// class id: 1049077, size: 0x8
class :: {
}

// class id: 1428, size: 0x18, field offset: 0x8
//   const constructor, 
class _yma extends Object {

  _Mint field_8;
  _Double field_10;
}

// class id: 1430, size: 0x18, field offset: 0x8
//   const constructor, 
class wma extends Object {

  bool field_8;
  bool field_c;
  bool field_10;
  bool field_14;
}

// class id: 1622, size: 0xc, field offset: 0x8
//   const constructor, 
class _Ima extends fca {
}

// class id: 2024, size: 0x20, field offset: 0xc
class _zma extends cM {
}

// class id: 2741, size: 0x2c, field offset: 0x2c
class YX extends Bv<dynamic> {
}

// class id: 3018, size: 0x60, field offset: 0x54
class _vma extends tw {
}

// class id: 3378, size: 0x18, field offset: 0x18
class _Oma<X0 bound Bu> extends Zja<X0 bound Bu> {
}

// class id: 3385, size: 0x14, field offset: 0x14
class _Xma extends Cu<dynamic> {
}

// class id: 3386, size: 0x14, field offset: 0x14
class _Vma extends Cu<dynamic> {
}

// class id: 3387, size: 0x18, field offset: 0x14
class _Tma extends Cu<dynamic> {
}

// class id: 3388, size: 0x18, field offset: 0x14
class _Rma extends Cu<dynamic> {
}

// class id: 3389, size: 0x18, field offset: 0x14
class _Pma extends Cu<dynamic> {
}

// class id: 3390, size: 0x20, field offset: 0x14
class _Nma<X0 bound Mma> extends Cu<X0 bound Mma> {
}

// class id: 3391, size: 0x2c, field offset: 0x14
class _Lma<X0 bound Mma> extends Cu<X0 bound Mma> {
}

// class id: 3392, size: 0x20, field offset: 0x14
class _Jma<X0 bound Kma> extends Cu<X0 bound Kma> {
}

// class id: 3475, size: 0x18, field offset: 0x14
class _Gma extends lr<dynamic>
    implements Fja {

  [closure] bool <anonymous closure>(dynamic, VP<XP>) {
    // ** addr: 0x29d7d4, size: -0x1
  }
}

// class id: 3598, size: 0xf8, field offset: 0x20
class Ama extends _yv
    implements DZ {

  late final ada sqd; // offset: 0xd0
  late final cM _hde; // offset: 0x28
  late Xua _ude; // offset: 0x6c
  late ru _dDc; // offset: 0x70
  late final _Nma<Mma> _Vde; // offset: 0xf0
  late final Map<Type, Yja<Bu>> _PYd; // offset: 0xf4
  late final Yja<Pva> _Tde; // offset: 0xe8
  late final Yja<Rva> _Ude; // offset: 0xec
  late final Yja<Sva> _Sde; // offset: 0xe4
  late double _Lde; // offset: 0xbc
  late final zka _Zkd; // offset: 0x84

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x76a1b4, size: 0x16c
    // 0x76a1b4: EnterFrame
    //     0x76a1b4: stp             fp, lr, [SP, #-0x10]!
    //     0x76a1b8: mov             fp, SP
    // 0x76a1bc: AllocStack(0x20)
    //     0x76a1bc: sub             SP, SP, #0x20
    // 0x76a1c0: SetupParameters(Ama this /* r1 */)
    //     0x76a1c0: stur            NULL, [fp, #-8]
    //     0x76a1c4: movz            x0, #0
    //     0x76a1c8: add             x1, fp, w0, sxtw #2
    //     0x76a1cc: ldr             x1, [x1, #0x10]
    //     0x76a1d0: ldur            w2, [x1, #0x17]
    //     0x76a1d4: add             x2, x2, HEAP, lsl #32
    //     0x76a1d8: stur            x2, [fp, #-0x10]
    // 0x76a1dc: CheckStackOverflow
    //     0x76a1dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76a1e0: cmp             SP, x16
    //     0x76a1e4: b.ls            #0x76a310
    // 0x76a1e8: InitAsync() -> Future<void?>
    //     0x76a1e8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x76a1ec: bl              #0x74ada8  ; InitAsyncStub
    // 0x76a1f0: ldur            x0, [fp, #-0x10]
    // 0x76a1f4: LoadField: r3 = r0->field_b
    //     0x76a1f4: ldur            w3, [x0, #0xb]
    // 0x76a1f8: DecompressPointer r3
    //     0x76a1f8: add             x3, x3, HEAP, lsl #32
    // 0x76a1fc: stur            x3, [fp, #-0x18]
    // 0x76a200: LoadField: r1 = r3->field_13
    //     0x76a200: ldur            w1, [x3, #0x13]
    // 0x76a204: DecompressPointer r1
    //     0x76a204: add             x1, x1, HEAP, lsl #32
    // 0x76a208: LoadField: r2 = r3->field_f
    //     0x76a208: ldur            w2, [x3, #0xf]
    // 0x76a20c: DecompressPointer r2
    //     0x76a20c: add             x2, x2, HEAP, lsl #32
    // 0x76a210: LoadField: r4 = r2->field_b
    //     0x76a210: ldur            w4, [x2, #0xb]
    // 0x76a214: DecompressPointer r4
    //     0x76a214: add             x4, x4, HEAP, lsl #32
    // 0x76a218: cmp             w4, NULL
    // 0x76a21c: b.eq            #0x76a318
    // 0x76a220: LoadField: r2 = r4->field_b
    //     0x76a220: ldur            w2, [x4, #0xb]
    // 0x76a224: DecompressPointer r2
    //     0x76a224: add             x2, x2, HEAP, lsl #32
    // 0x76a228: LoadField: r4 = r2->field_27
    //     0x76a228: ldur            w4, [x2, #0x27]
    // 0x76a22c: DecompressPointer r4
    //     0x76a22c: add             x4, x4, HEAP, lsl #32
    // 0x76a230: LoadField: r2 = r4->field_7
    //     0x76a230: ldur            w2, [x4, #7]
    // 0x76a234: DecompressPointer r2
    //     0x76a234: add             x2, x2, HEAP, lsl #32
    // 0x76a238: r0 = call 0x285310
    //     0x76a238: bl              #0x285310
    // 0x76a23c: LoadField: r1 = r0->field_7
    //     0x76a23c: ldur            w1, [x0, #7]
    // 0x76a240: cbz             w1, #0x76a308
    // 0x76a244: ldur            x4, [fp, #-0x10]
    // 0x76a248: ldur            x6, [fp, #-0x18]
    // 0x76a24c: LoadField: r1 = r6->field_f
    //     0x76a24c: ldur            w1, [x6, #0xf]
    // 0x76a250: DecompressPointer r1
    //     0x76a250: add             x1, x1, HEAP, lsl #32
    // 0x76a254: LoadField: r2 = r1->field_73
    //     0x76a254: ldur            w2, [x1, #0x73]
    // 0x76a258: DecompressPointer r2
    //     0x76a258: add             x2, x2, HEAP, lsl #32
    // 0x76a25c: LoadField: r3 = r4->field_f
    //     0x76a25c: ldur            w3, [x4, #0xf]
    // 0x76a260: DecompressPointer r3
    //     0x76a260: add             x3, x3, HEAP, lsl #32
    // 0x76a264: LoadField: r5 = r3->field_7
    //     0x76a264: ldur            w5, [x3, #7]
    // 0x76a268: DecompressPointer r5
    //     0x76a268: add             x5, x5, HEAP, lsl #32
    // 0x76a26c: LoadField: r3 = r1->field_b
    //     0x76a26c: ldur            w3, [x1, #0xb]
    // 0x76a270: DecompressPointer r3
    //     0x76a270: add             x3, x3, HEAP, lsl #32
    // 0x76a274: cmp             w3, NULL
    // 0x76a278: b.eq            #0x76a31c
    // 0x76a27c: LoadField: r1 = r3->field_23
    //     0x76a27c: ldur            w1, [x3, #0x23]
    // 0x76a280: DecompressPointer r1
    //     0x76a280: add             x1, x1, HEAP, lsl #32
    // 0x76a284: mov             x16, x5
    // 0x76a288: mov             x5, x2
    // 0x76a28c: mov             x2, x16
    // 0x76a290: mov             x16, x1
    // 0x76a294: mov             x1, x5
    // 0x76a298: mov             x5, x16
    // 0x76a29c: mov             x3, x0
    // 0x76a2a0: r0 = __unknown_function__()
    //     0x76a2a0: bl              #0x76a320  ; [] ::__unknown_function__
    // 0x76a2a4: mov             x1, x0
    // 0x76a2a8: stur            x1, [fp, #-0x20]
    // 0x76a2ac: r0 = Await()
    //     0x76a2ac: bl              #0x74ab64  ; AwaitStub
    // 0x76a2b0: stur            x0, [fp, #-0x10]
    // 0x76a2b4: cmp             w0, NULL
    // 0x76a2b8: b.eq            #0x76a2f4
    // 0x76a2bc: ldur            x2, [fp, #-0x18]
    // 0x76a2c0: LoadField: r1 = r2->field_f
    //     0x76a2c0: ldur            w1, [x2, #0xf]
    // 0x76a2c4: DecompressPointer r1
    //     0x76a2c4: add             x1, x1, HEAP, lsl #32
    // 0x76a2c8: r0 = call 0x38e3ec
    //     0x76a2c8: bl              #0x38e3ec
    // 0x76a2cc: tbnz            w0, #4, #0x76a2ec
    // 0x76a2d0: ldur            x0, [fp, #-0x18]
    // 0x76a2d4: LoadField: r1 = r0->field_f
    //     0x76a2d4: ldur            w1, [x0, #0xf]
    // 0x76a2d8: DecompressPointer r1
    //     0x76a2d8: add             x1, x1, HEAP, lsl #32
    // 0x76a2dc: ldur            x3, [fp, #-0x10]
    // 0x76a2e0: r2 = Instance_Eja
    //     0x76a2e0: ldr             x2, [PP, #0x4bb8]  ; [pp+0x4bb8] Obj!Eja@4514b1
    // 0x76a2e4: r0 = call 0x38dd28
    //     0x76a2e4: bl              #0x38dd28
    // 0x76a2e8: b               #0x76a308
    // 0x76a2ec: ldur            x0, [fp, #-0x18]
    // 0x76a2f0: b               #0x76a2f8
    // 0x76a2f4: ldur            x0, [fp, #-0x18]
    // 0x76a2f8: LoadField: r1 = r0->field_f
    //     0x76a2f8: ldur            w1, [x0, #0xf]
    // 0x76a2fc: DecompressPointer r1
    //     0x76a2fc: add             x1, x1, HEAP, lsl #32
    // 0x76a300: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x76a300: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x76a304: r0 = call 0x29a97c
    //     0x76a304: bl              #0x29a97c
    // 0x76a308: r0 = Null
    //     0x76a308: mov             x0, NULL
    // 0x76a30c: r0 = ReturnAsyncNotFuture()
    //     0x76a30c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76a310: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76a310: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76a314: b               #0x76a1e8
    // 0x76a318: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76a318: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76a31c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76a31c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void qyd(dynamic, String) {
    // ** addr: 0x29c5c4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x27bad4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x27bbb4, size: -0x1
  }
  [closure] void _ife(dynamic, Hsa) {
    // ** addr: 0x285784, size: -0x1
  }
  [closure] eE <anonymous closure>(dynamic, pG) {
    // ** addr: 0x287ca8, size: -0x1
  }
  [closure] eE <anonymous closure>(dynamic, eE, eE) {
    // ** addr: 0x287c74, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x286bf0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x28803c, size: -0x1
  }
  [closure] void _Oee(dynamic) {
    // ** addr: 0x297fec, size: -0x1
  }
  [closure] void _xfe(dynamic) {
    // ** addr: 0x28980c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, U) {
    // ** addr: 0x2894e4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x289760, size: -0x1
  }
  [closure] void _tfe(dynamic) {
    // ** addr: 0x28b560, size: -0x1
  }
  [closure] jha <anonymous closure>(dynamic, jha, sja) {
    // ** addr: 0x292164, size: -0x1
  }
  [closure] void _cfe(dynamic) {
    // ** addr: 0x292724, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x292930, size: -0x1
  }
  [closure] KX <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x295dc8, size: -0x1
  }
  [closure] void _Ffe(dynamic, [la?]) {
    // ** addr: 0x297520, size: -0x1
  }
  [closure] void _afe(dynamic) {
    // ** addr: 0x2983ec, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x38f348, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x38f578, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x390110, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x38f150, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x3900cc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x390088, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x390044, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x38ff40, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x38e354, size: -0x1
  }
  [closure] void _Bfe(dynamic) {
    // ** addr: 0x38ff08, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x38f2fc, size: -0x1
  }
  [closure] uva <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x4d4a6c, size: -0x1
  }
  [closure] void _Dfe(dynamic, tda) {
    // ** addr: 0x4d4a30, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, xQ) {
    // ** addr: 0x4d6c10, size: -0x1
  }
  [closure] Xka <anonymous closure>(dynamic, Tna, yr) {
    // ** addr: 0x4d5168, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Hsa) {
    // ** addr: 0x4d5100, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, jha?, jha) {
    // ** addr: 0x4d4fec, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, jha) {
    // ** addr: 0x4d4f98, size: -0x1
  }
  [closure] jha <anonymous closure>(dynamic, jha) {
    // ** addr: 0x4d4f58, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, BQ) {
    // ** addr: 0x4d4e2c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d6b9c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d68e4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d6a08, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4d6b2c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x2bec64, size: -0x1
  }
  [closure] void _SQd(dynamic) {
    // ** addr: 0x3d207c, size: -0x1
  }
  [closure] void _pee(dynamic) {
    // ** addr: 0x50a730, size: -0x1
  }
  [closure] void _oee(dynamic) {
    // ** addr: 0x50a6a4, size: -0x1
  }
  [closure] void _Jee(dynamic) {
    // ** addr: 0x2c8f20, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x3d2470, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x3d1fdc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x3d1f94, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x517c48, size: -0x1
  }
  [closure] void _Wzb(dynamic) {
    // ** addr: 0x50a66c, size: -0x1
  }
  [closure] Object? _dge(dynamic, nka) {
    // ** addr: 0x6c7bac, size: -0x1
  }
  [closure] void _cge(dynamic, Rva) {
    // ** addr: 0x6c7d00, size: -0x1
  }
  [closure] void _bge(dynamic, Nva) {
    // ** addr: 0x6c7de8, size: -0x1
  }
  [closure] void _age(dynamic, vta) {
    // ** addr: 0x6c7f70, size: -0x1
  }
  [closure] void _Zfe(dynamic, Mva) {
    // ** addr: 0x6c81fc, size: -0x1
  }
  [closure] void _Yfe(dynamic, Pva) {
    // ** addr: 0x6c830c, size: -0x1
  }
  [closure] void _Xfe(dynamic, Sva) {
    // ** addr: 0x6c836c, size: -0x1
  }
  [closure] fca _Vfe(dynamic) {
    // ** addr: 0x6c88a0, size: -0x1
  }
  [closure] fca _Ufe(dynamic) {
    // ** addr: 0x6c8950, size: -0x1
  }
  [closure] fca _Tfe(dynamic) {
    // ** addr: 0x6c8a5c, size: -0x1
  }
  [closure] fca _Sfe(dynamic) {
    // ** addr: 0x6c8b38, size: -0x1
  }
  [closure] fca _Rfe(dynamic) {
    // ** addr: 0x6c8a00, size: -0x1
  }
  [closure] rG _Gqd(dynamic, rG, bool, fca) {
    // ** addr: 0x6c9168, size: -0x1
  }
  [closure] rG _Qfe(dynamic, rG, bool, fca) {
    // ** addr: 0x6c933c, size: -0x1
  }
}

// class id: 3762, size: 0x1c, field offset: 0x18
//   const constructor, 
class _Hma extends wD {

  wG field_c;
  ila field_14;
  Fg field_18;
}

// class id: 4068, size: 0x20, field offset: 0xc
//   const constructor, 
class _Fma extends oI {
}

// class id: 4069, size: 0x13c, field offset: 0xc
class tv extends oI {
}

// class id: 4425, size: 0x18, field offset: 0x10
//   const constructor, 
class _uma extends oN {
}

// class id: 4484, size: 0xb0, field offset: 0x10
class _Bma extends qL {
}

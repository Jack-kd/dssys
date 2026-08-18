// lib: , url: yNi

// class id: 1049545, size: 0x8
class :: {

  [closure] static dSa<Y1> <anonymous closure>(dynamic, eSa<Y0>) {
    // ** addr: 0x7c2a18, size: 0x198
    // 0x7c2a18: EnterFrame
    //     0x7c2a18: stp             fp, lr, [SP, #-0x10]!
    //     0x7c2a1c: mov             fp, SP
    // 0x7c2a20: AllocStack(0x90)
    //     0x7c2a20: sub             SP, SP, #0x90
    // 0x7c2a24: SetupParameters([dynamic _ /* r0 */])
    //     0x7c2a24: ldr             x0, [fp, #0x18]
    //     0x7c2a28: ldur            w1, [x0, #0x17]
    //     0x7c2a2c: add             x1, x1, HEAP, lsl #32
    //     0x7c2a30: stur            x1, [fp, #-0x70]
    // 0x7c2a34: CheckStackOverflow
    //     0x7c2a34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c2a38: cmp             SP, x16
    //     0x7c2a3c: b.ls            #0x7c2ba8
    // 0x7c2a40: LoadField: r2 = r0->field_b
    //     0x7c2a40: ldur            w2, [x0, #0xb]
    // 0x7c2a44: DecompressPointer r2
    //     0x7c2a44: add             x2, x2, HEAP, lsl #32
    // 0x7c2a48: stur            x2, [fp, #-0x68]
    // 0x7c2a4c: ldr             x3, [fp, #0x10]
    // 0x7c2a50: LoadField: r4 = r1->field_13
    //     0x7c2a50: ldur            w4, [x1, #0x13]
    // 0x7c2a54: DecompressPointer r4
    //     0x7c2a54: add             x4, x4, HEAP, lsl #32
    // 0x7c2a58: stur            x4, [fp, #-0x60]
    // 0x7c2a5c: LoadField: r0 = r3->field_f
    //     0x7c2a5c: ldur            w0, [x3, #0xf]
    // 0x7c2a60: DecompressPointer r0
    //     0x7c2a60: add             x0, x0, HEAP, lsl #32
    // 0x7c2a64: LoadField: r5 = r0->field_f
    //     0x7c2a64: ldur            w5, [x0, #0xf]
    // 0x7c2a68: DecompressPointer r5
    //     0x7c2a68: add             x5, x5, HEAP, lsl #32
    // 0x7c2a6c: stp             x5, x4, [SP]
    // 0x7c2a70: mov             x0, x4
    // 0x7c2a74: ClosureCall
    //     0x7c2a74: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7c2a78: ldur            x2, [x0, #0x1f]
    //     0x7c2a7c: blr             x2
    // 0x7c2a80: mov             x2, x0
    // 0x7c2a84: r3 = Null
    //     0x7c2a84: mov             x3, NULL
    // 0x7c2a88: r4 = Null
    //     0x7c2a88: mov             x4, NULL
    // 0x7c2a8c: stur            x0, [fp, #-0x60]
    // 0x7c2a90: r1 = 1048582
    //     0x7c2a90: movz            x1, #0x6
    //     0x7c2a94: movk            x1, #0x10, lsl #16
    // 0x7c2a98: r0 = AllocateRecord3Named()
    //     0x7c2a98: bl              #0x7dcd28  ; AllocateRecord3NamedStub
    // 0x7c2a9c: mov             x4, x0
    // 0x7c2aa0: ldr             x0, [fp, #0x10]
    // 0x7c2aa4: stur            x4, [fp, #-0x78]
    // 0x7c2aa8: LoadField: r5 = r0->field_b
    //     0x7c2aa8: ldur            w5, [x0, #0xb]
    // 0x7c2aac: DecompressPointer r5
    //     0x7c2aac: add             x5, x5, HEAP, lsl #32
    // 0x7c2ab0: ldur            x1, [fp, #-0x68]
    // 0x7c2ab4: stur            x5, [fp, #-0x60]
    // 0x7c2ab8: r2 = Null
    //     0x7c2ab8: mov             x2, NULL
    // 0x7c2abc: r3 = <Y1>
    //     0x7c2abc: add             x3, PP, #0x17, lsl #12  ; [pp+0x17588] TypeArguments: <Y1>
    //     0x7c2ac0: ldr             x3, [x3, #0x588]
    // 0x7c2ac4: r0 = Null
    //     0x7c2ac4: mov             x0, NULL
    // 0x7c2ac8: cmp             x2, x0
    // 0x7c2acc: b.ne            #0x7c2ad8
    // 0x7c2ad0: cmp             x1, x0
    // 0x7c2ad4: b.eq            #0x7c2ae4
    // 0x7c2ad8: r30 = InstantiateTypeArgumentsStub
    //     0x7c2ad8: ldr             lr, [PP, #0x4f8]  ; [pp+0x4f8] Stub: InstantiateTypeArguments (0x210f98)
    // 0x7c2adc: LoadField: r30 = r30->field_7
    //     0x7c2adc: ldur            lr, [lr, #7]
    // 0x7c2ae0: blr             lr
    // 0x7c2ae4: mov             x1, x0
    // 0x7c2ae8: stur            x0, [fp, #-0x80]
    // 0x7c2aec: r0 = eSa()
    //     0x7c2aec: bl              #0x750298  ; AllocateeSaStub -> eSa<X0> (size=0x18)
    // 0x7c2af0: mov             x1, x0
    // 0x7c2af4: ldur            x0, [fp, #-0x78]
    // 0x7c2af8: StoreField: r1->field_f = r0
    //     0x7c2af8: stur            w0, [x1, #0xf]
    // 0x7c2afc: ldur            x0, [fp, #-0x60]
    // 0x7c2b00: StoreField: r1->field_b = r0
    //     0x7c2b00: stur            w0, [x1, #0xb]
    // 0x7c2b04: mov             x0, x1
    // 0x7c2b08: LeaveFrame
    //     0x7c2b08: mov             SP, fp
    //     0x7c2b0c: ldp             fp, lr, [SP], #0x10
    // 0x7c2b10: ret
    //     0x7c2b10: ret             
    // 0x7c2b14: sub             SP, fp, #0x90
    // 0x7c2b18: ldr             x2, [fp, #0x10]
    // 0x7c2b1c: mov             x4, x1
    // 0x7c2b20: stur            x0, [fp, #-0x70]
    // 0x7c2b24: stur            x1, [fp, #-0x78]
    // 0x7c2b28: LoadField: r5 = r2->field_b
    //     0x7c2b28: ldur            w5, [x2, #0xb]
    // 0x7c2b2c: DecompressPointer r5
    //     0x7c2b2c: add             x5, x5, HEAP, lsl #32
    // 0x7c2b30: ldur            x1, [fp, #-0x68]
    // 0x7c2b34: stur            x5, [fp, #-0x60]
    // 0x7c2b38: r2 = Null
    //     0x7c2b38: mov             x2, NULL
    // 0x7c2b3c: r3 = <Y1>
    //     0x7c2b3c: add             x3, PP, #0x17, lsl #12  ; [pp+0x17588] TypeArguments: <Y1>
    //     0x7c2b40: ldr             x3, [x3, #0x588]
    // 0x7c2b44: r0 = Null
    //     0x7c2b44: mov             x0, NULL
    // 0x7c2b48: cmp             x2, x0
    // 0x7c2b4c: b.ne            #0x7c2b58
    // 0x7c2b50: cmp             x1, x0
    // 0x7c2b54: b.eq            #0x7c2b64
    // 0x7c2b58: r30 = InstantiateTypeArgumentsStub
    //     0x7c2b58: ldr             lr, [PP, #0x4f8]  ; [pp+0x4f8] Stub: InstantiateTypeArguments (0x210f98)
    // 0x7c2b5c: LoadField: r30 = r30->field_7
    //     0x7c2b5c: ldur            lr, [lr, #7]
    // 0x7c2b60: blr             lr
    // 0x7c2b64: ldur            x2, [fp, #-0x70]
    // 0x7c2b68: ldur            x4, [fp, #-0x78]
    // 0x7c2b6c: r3 = Null
    //     0x7c2b6c: mov             x3, NULL
    // 0x7c2b70: stur            x0, [fp, #-0x68]
    // 0x7c2b74: r1 = 1179654
    //     0x7c2b74: movz            x1, #0x6
    //     0x7c2b78: movk            x1, #0x12, lsl #16
    // 0x7c2b7c: r0 = AllocateRecord3Named()
    //     0x7c2b7c: bl              #0x7dcd28  ; AllocateRecord3NamedStub
    // 0x7c2b80: ldur            x1, [fp, #-0x68]
    // 0x7c2b84: stur            x0, [fp, #-0x68]
    // 0x7c2b88: r0 = vb()
    //     0x7c2b88: bl              #0x74fbc8  ; AllocatevbStub -> vb<X0> (size=0x18)
    // 0x7c2b8c: ldur            x1, [fp, #-0x68]
    // 0x7c2b90: StoreField: r0->field_13 = r1
    //     0x7c2b90: stur            w1, [x0, #0x13]
    // 0x7c2b94: ldur            x1, [fp, #-0x60]
    // 0x7c2b98: StoreField: r0->field_b = r1
    //     0x7c2b98: stur            w1, [x0, #0xb]
    // 0x7c2b9c: LeaveFrame
    //     0x7c2b9c: mov             SP, fp
    //     0x7c2ba0: ldp             fp, lr, [SP], #0x10
    // 0x7c2ba4: ret
    //     0x7c2ba4: ret             
    // 0x7c2ba8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c2ba8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c2bac: b               #0x7c2a40
  }
  [closure] static void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x522134, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x521f4c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x5220ac, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, Object, Ja) {
    // ** addr: 0x2611ec, size: -0x1
  }
  [closure] static vb<Y1> <anonymous closure>(dynamic, vb<Y0>) {
    // ** addr: 0x64ecd0, size: -0x1
  }
  [closure] static fSa<Y1> <anonymous closure>(dynamic, fSa<Y0>) {
    // ** addr: 0x64ec04, size: -0x1
  }
  [closure] static Y1 <anonymous closure>(dynamic, Object, Ja) {
    // ** addr: 0x6522f4, size: -0x1
  }
  [closure] static Y1 <anonymous closure>(dynamic) {
    // ** addr: 0x6522a0, size: -0x1
  }
}

// class id: 490, size: 0xc, field offset: 0x8
class cSa extends Object
    implements sa {
}

// class id: 491, size: 0x2c, field offset: 0x8
class ZRa extends Object {

  [closure] static ((dynamic) => void)? _Fre(dynamic, cFa, XRa) {
    // ** addr: 0x25c38c, size: -0x1
  }
  [closure] void _hTd(dynamic) {
    // ** addr: 0x25baa4, size: -0x1
  }
  [closure] static ((dynamic) => void)? _Gre(dynamic, cFa, XRa) {
    // ** addr: 0x25ba34, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x25b8fc, size: -0x1
  }
}

// class id: 492, size: 0x8, field offset: 0x8
//   const constructor, 
class _YRa extends Object
    implements cFa {
}

// class id: 493, size: 0x10, field offset: 0x8
class XRa extends Object {

  [closure] void call(dynamic) {
    // ** addr: 0x735978, size: -0x1
  }
}

// class id: 494, size: 0xc, field offset: 0x8
class WRa extends Object {
}

// class id: 495, size: 0x28, field offset: 0x8
abstract class URa extends Object
    implements iRa, XEa {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x44f71c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Y0?, Y0) {
    // ** addr: 0x49cc88, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5affe0, size: -0x1
  }
}

// class id: 496, size: 0x38, field offset: 0x28
class VRa<X0, X1> extends URa {
}

// class id: 497, size: 0xc, field offset: 0x8
class TRa extends Object
    implements sa {
}

// class id: 500, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class LRa extends Object {
}

// class id: 502, size: 0x34, field offset: 0x8
class JRa extends Object
    implements XEa {

  late final ZRa _Qre; // offset: 0xc
  late final IRa _Rre; // offset: 0x28
}

// class id: 503, size: 0x14, field offset: 0x8
class IRa extends Object {

  [closure] bool <anonymous closure>(dynamic, GRa) {
    // ** addr: 0x521f10, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, HRa) {
    // ** addr: 0x521ed4, size: -0x1
  }
  [closure] Iterable<GRa> <anonymous closure>(dynamic, HRa) {
    // ** addr: 0x521e98, size: -0x1
  }
  [closure] Iterable<JRa> <anonymous closure>(dynamic, lRa) {
    // ** addr: 0x6d86c4, size: -0x1
  }
  [closure] JRa <anonymous closure>(dynamic, JRa?, JRa) {
    // ** addr: 0x6d8690, size: -0x1
  }
  [closure] HRa <anonymous closure>(dynamic, JRa) {
    // ** addr: 0x6d90c8, size: -0x1
  }
  [closure] HRa <anonymous closure>(dynamic, {ey? Qqe}) {
    // ** addr: 0x6d8bf0, size: -0x1
  }
}

// class id: 504, size: 0x14, field offset: 0x8
class HRa extends Object
    implements _FRa {

  [closure] GRa <anonymous closure>(dynamic, JRa) {
    // ** addr: 0x6d8a70, size: -0x1
  }
  [closure] GRa <anonymous closure>(dynamic, {CRa<Object?>? Qqe}) {
    // ** addr: 0x6d8980, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Da<CRa<Object?>, GRa>) {
    // ** addr: 0x6d8fc0, size: -0x1
  }
}

// class id: 505, size: 0x18, field offset: 0x8
class GRa extends Object
    implements _FRa {
}

// class id: 506, size: 0x8, field offset: 0x8
abstract class _FRa extends Object {
}

// class id: 507, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class le extends Object {
}

// class id: 508, size: 0xc, field offset: 0xc
//   const constructor, 
class ERa extends le {
}

// class id: 509, size: 0x10, field offset: 0xc
//   const constructor, 
class DRa extends le {
}

// class id: 510, size: 0xc, field offset: 0x8
class ARa extends Object
    implements zRa {
}

// class id: 511, size: 0x8, field offset: 0x8
abstract class zRa extends Object
    implements _mRa {
}

// class id: 512, size: 0xc, field offset: 0x8
class yRa extends Object
    implements xRa {
}

// class id: 513, size: 0x8, field offset: 0x8
abstract class xRa extends Object
    implements _wRa {
}

// class id: 514, size: 0x8, field offset: 0x8
abstract class _wRa extends Object
    implements vRa {
}

// class id: 515, size: 0x8, field offset: 0x8
abstract class vRa extends Object {
}

// class id: 516, size: 0x14, field offset: 0x8
class _sRa<X0, X1> extends Object
    implements kRa<X0> {

  [closure] void <anonymous closure>(dynamic, X0?, X0) {
    // ** addr: 0x734c48, size: -0x1
  }
  [closure] eRa<X1> <anonymous closure>(dynamic) {
    // ** addr: 0x734ae0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, eRa<X1>) {
    // ** addr: 0x3e9fd8, size: -0x1
  }
}

// class id: 517, size: 0xc, field offset: 0x8
abstract class qRa<X0> extends Object
    implements kRa<X0> {
}

// class id: 518, size: 0x8, field offset: 0x8
abstract class pRa extends Object {
}

// class id: 519, size: 0x8, field offset: 0x8
abstract class _mRa extends Object
    implements vRa {
}

// class id: 520, size: 0x1c, field offset: 0x8
abstract class lRa extends Object
    implements pRa {
}

// class id: 521, size: 0x28, field offset: 0x1c
abstract class CRa<X0> extends lRa
    implements kRa<X0>, jRa<X0>, _wRa {
}

// class id: 522, size: 0x28, field offset: 0x28
abstract class rRa<X0> extends CRa<X0> {
}

// class id: 523, size: 0x28, field offset: 0x28
abstract class dy<X0, X1, X2> extends rRa<X0> {
}

// class id: 532, size: 0x28, field offset: 0x28
abstract class rC<X0> extends rRa<X0> {
}

// class id: 533, size: 0x28, field offset: 0x28
abstract class kC<C1X0> extends rRa<C1X0>
    implements qRa<X0> {
}

// class id: 534, size: 0x28, field offset: 0x28
abstract class UB<C1X0 bound TB, C1X1, C1X2, C1X3> extends rRa<C1X0 bound TB> {

  [closure] cRa<C1X0> <anonymous closure>(dynamic, Yx<C1X1, Object?>) {
    // ** addr: 0x2636b0, size: -0x1
  }
}

// class id: 542, size: 0x1c, field offset: 0x1c
abstract class ey extends lRa
    implements _mRa {
}

// class id: 544, size: 0x28, field offset: 0x20
abstract class oRa<X0 bound TB, X1, X2, X3, X4, X5 bound UB> extends _RB<X0 bound TB, X1, X2, X3, X4, X5 bound UB> {

  [closure] X0 <anonymous closure>(dynamic) {
    // ** addr: 0x26382c, size: -0x1
  }
}

// class id: 547, size: 0x20, field offset: 0x1c
abstract class VB<X0 bound TB, X1, X2, X3, X4> extends ey {
}

// class id: 549, size: 0x28, field offset: 0x20
abstract class nRa<X0, X1, X2, X3, X4 bound dy> extends _ay<X0, X1, X2, X3, X4 bound dy> {

  [closure] X3 <anonymous closure>(dynamic, URa) {
    // ** addr: 0x402278, size: -0x1
  }
}

// class id: 553, size: 0x20, field offset: 0x1c
abstract class fy<X0, X1> extends ey {
}

// class id: 554, size: 0xc, field offset: 0x8
abstract class kRa<X0> extends Object
    implements pRa {
}

// class id: 555, size: 0xc, field offset: 0x8
abstract class jRa<X0> extends Object
    implements kRa<X0> {
}

// class id: 556, size: 0x8, field offset: 0x8
abstract class iRa extends Object {
}

// class id: 905, size: 0x8, field offset: 0x8
abstract class cFa extends Object {
}

// class id: 906, size: 0x8, field offset: 0x8
abstract class XEa extends Object {
}

// class id: 907, size: 0x8, field offset: 0x8
abstract class WEa extends Object {
}

// class id: 2426, size: 0xc, field offset: 0x8
abstract class _hC<X0, X1> extends Object
    implements jRa<X0> {
}

// class id: 2428, size: 0x14, field offset: 0xc
//   const constructor, 
class PRa<X0, X1> extends _fC<X0, X1> {

  [closure] void <anonymous closure>(dynamic, X0?, X0) {
    // ** addr: 0x6d9240, size: -0x1
  }
  [closure] eRa<X0> <anonymous closure>(dynamic) {
    // ** addr: 0x6d9158, size: -0x1
  }
}

// class id: 2429, size: 0x8, field offset: 0x8
abstract class _eC extends Object {
}

// class id: 2430, size: 0xc, field offset: 0x8
abstract class dC<X0> extends Object {
}

// class id: 2432, size: 0x2c, field offset: 0x1c
abstract class MRa<X0> extends _bC<X0> {

  void Rwb(MRa<X0>) {
    // ** addr: 0x74f730, size: 0x48
    // 0x74f730: EnterFrame
    //     0x74f730: stp             fp, lr, [SP, #-0x10]!
    //     0x74f734: mov             fp, SP
    // 0x74f738: CheckStackOverflow
    //     0x74f738: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74f73c: cmp             SP, x16
    //     0x74f740: b.ls            #0x74f758
    // 0x74f744: ldr             x1, [fp, #0x10]
    // 0x74f748: r0 = call 0x6d9c5c
    //     0x74f748: bl              #0x6d9c5c
    // 0x74f74c: LeaveFrame
    //     0x74f74c: mov             SP, fp
    //     0x74f750: ldp             fp, lr, [SP], #0x10
    // 0x74f754: ret
    //     0x74f754: ret             
    // 0x74f758: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74f758: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74f75c: b               #0x74f744
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x47f028, size: -0x1
  }
  [closure] void _Kqe(dynamic, Object?, Object?) {
    // ** addr: 0x25a380, size: -0x1
  }
  [closure] void _Mqe(dynamic, Object, Ja) {
    // ** addr: 0x25a154, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d953c, size: -0x1
  }
  [closure] void km(dynamic) {
    // ** addr: 0x5ae814, size: -0x1
  }
}

// class id: 2433, size: 0x40, field offset: 0x2c
class ORa<C1X0, C1X1> extends MRa<C1X0> {

  void Rwb(ORa<C1X0, C1X1>) {
    // ** addr: 0x7d2f2c, size: 0x48
    // 0x7d2f2c: EnterFrame
    //     0x7d2f2c: stp             fp, lr, [SP, #-0x10]!
    //     0x7d2f30: mov             fp, SP
    // 0x7d2f34: CheckStackOverflow
    //     0x7d2f34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d2f38: cmp             SP, x16
    //     0x7d2f3c: b.ls            #0x7d2f54
    // 0x7d2f40: ldr             x1, [fp, #0x10]
    // 0x7d2f44: r0 = call 0x6d9d9c
    //     0x7d2f44: bl              #0x6d9d9c
    // 0x7d2f48: LeaveFrame
    //     0x7d2f48: mov             SP, fp
    //     0x7d2f4c: ldp             fp, lr, [SP], #0x10
    // 0x7d2f50: ret
    //     0x7d2f50: ret             
    // 0x7d2f54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d2f54: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d2f58: b               #0x7d2f40
  }
}

// class id: 2434, size: 0x40, field offset: 0x2c
class NRa<X0> extends MRa<X0> {
}

// class id: 2435, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class YB<X0> extends Object {
}

// class id: 2436, size: 0x18, field offset: 0xc
//   const constructor, 
class fSa<X0> extends YB<X0> {

  _Record field_c;

  [closure] eSa<X0> <anonymous closure>(dynamic, eSa<X0>) {
    // ** addr: 0x6d9bf0, size: -0x1
  }
  [closure] vb<X0> <anonymous closure>(dynamic, vb<X0>) {
    // ** addr: 0x6d9b74, size: -0x1
  }
  [closure] fSa<X0> <anonymous closure>(dynamic, fSa<X0>) {
    // ** addr: 0x6d9ab8, size: -0x1
  }
}

// class id: 2437, size: 0xc, field offset: 0xc
//   const constructor, 
abstract class dSa<X0> extends YB<X0> {
}

// class id: 2438, size: 0x18, field offset: 0xc
//   const constructor, 
class vb<X0> extends dSa<X0> {
}

// class id: 2439, size: 0x18, field offset: 0xc
//   const constructor, 
class eSa<X0> extends dSa<X0> {

  _Record field_10;
}

// class id: 2441, size: 0xc, field offset: 0xc
abstract class nC<X0 bound TB, X1, X2> extends _XB<X0 bound TB, X1, X2> {
}

// class id: 2442, size: 0x10, field offset: 0x8
abstract class TB<X0, X1> extends Object {
}

// class id: 2443, size: 0x10, field offset: 0x10
abstract class Ey<C1X0, C1X1> extends TB<C1X0, C1X1> {
}

// class id: 2444, size: 0x10, field offset: 0x10
abstract class Dy<C1X0> extends TB<C1X0, dynamic> {
}

// class id: 2463, size: 0x10, field offset: 0x10
abstract class BRa<C1X0> extends TB<C1X0, dynamic> {
}

// class id: 2607, size: 0x58, field offset: 0x8
abstract class Yx<X0, X1> extends Object {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5360d4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, cRa<dynamic>) {
    // ** addr: 0x25ed70, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, cRa<dynamic>) {
    // ** addr: 0x25eca8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, (dynamic) => void) {
    // ** addr: 0x25ec64, size: -0x1
  }
  [closure] void _sfc(dynamic) {
    // ** addr: 0x25ebd8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x25ae44, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x25af3c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x25c49c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, cRa<dynamic>) {
    // ** addr: 0x25c3fc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x25c5b0, size: -0x1
  }
  [closure] void Qnb(dynamic, Iterable<dC<Object?>>) {
    // ** addr: 0x25b198, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Yx<dynamic, dynamic>) {
    // ** addr: 0x25f27c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x260274, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x26076c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x260b04, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, cRa<dynamic>) {
    // ** addr: 0x6bf204, size: -0x1
  }
  [closure] void _hfc(dynamic) {
    // ** addr: 0x6844a8, size: -0x1
  }
}

// class id: 2608, size: 0x58, field offset: 0x58
abstract class wC<C1X0> extends Yx<C1X0, dynamic> {
}

// class id: 2610, size: 0x74, field offset: 0x68
abstract class aC<C2X0 bound TB, C2X1, C2X2, C2X3> extends _WB<C2X0 bound TB, C2X1, C2X2, C2X3> {

  [closure] C2X0 <anonymous closure>(dynamic) {
    // ** addr: 0x686a1c, size: -0x1
  }
}

// class id: 2617, size: 0x6c, field offset: 0x68
abstract class vC<X0, X1, X2> extends _Ux<X0, X1, X2> {
}

// class id: 2623, size: 0x58, field offset: 0x58
abstract class Zx<X0, X1> extends Yx<X0, X1> {
}

// class id: 2624, size: 0x58, field offset: 0x58
abstract class ZB<C1X0> extends Zx<C1X0, dynamic> {
}

// class id: 5372, size: 0x14, field offset: 0x14
enum bSa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5373, size: 0x14, field offset: 0x14
enum aSa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

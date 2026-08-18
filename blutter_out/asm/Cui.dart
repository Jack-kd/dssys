// lib: , url: Cui

// class id: 1049121, size: 0x8
class :: {
}

// class id: 1329, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class bsa<X0> extends Object {
}

// class id: 1331, size: 0x10, field offset: 0x8
abstract class _Yra<X0> extends Object {
}

// class id: 1332, size: 0x14, field offset: 0x10
abstract class Nw extends _Yra<dynamic> {

  late final Ic<asa> _bgc; // offset: 0x10
}

// class id: 1333, size: 0x14, field offset: 0x14
abstract class asa extends Nw {
}

// class id: 1335, size: 0x14, field offset: 0x14
class Zra extends _Mw {
}

// class id: 1336, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class Ura<X0> extends Object {
}

// class id: 1337, size: 0x10, field offset: 0x8
//   const constructor, 
class Tra extends Object {
}

// class id: 2063, size: 0xc, field offset: 0x8
abstract class Ay<X0> extends UL {

  [closure] Future<void> Uqc(dynamic, Object?) {
    // ** addr: 0x519a30, size: -0x1
  }
  [closure] Future<void> Vqc(dynamic, Object?) {
    // ** addr: 0x519b74, size: -0x1
  }
}

// class id: 2095, size: 0xc, field offset: 0xc
abstract class Pw extends VL<dynamic> {
}

// class id: 2705, size: 0x38, field offset: 0x38
class _dsa extends Lra<dynamic> {
}

// class id: 3572, size: 0x38, field offset: 0x24
class _Wra<C1X0> extends _Kw<C1X0> {

  [closure] Future<void> <anonymous closure>(dynamic, C1X0) async {
    // ** addr: 0x779ae8, size: 0xf0
    // 0x779ae8: EnterFrame
    //     0x779ae8: stp             fp, lr, [SP, #-0x10]!
    //     0x779aec: mov             fp, SP
    // 0x779af0: AllocStack(0x28)
    //     0x779af0: sub             SP, SP, #0x28
    // 0x779af4: SetupParameters(_Wra<C1X0> this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x779af4: stur            NULL, [fp, #-8]
    //     0x779af8: movz            x0, #0
    //     0x779afc: add             x1, fp, w0, sxtw #2
    //     0x779b00: ldr             x1, [x1, #0x18]
    //     0x779b04: add             x2, fp, w0, sxtw #2
    //     0x779b08: ldr             x2, [x2, #0x10]
    //     0x779b0c: stur            x2, [fp, #-0x18]
    //     0x779b10: ldur            w3, [x1, #0x17]
    //     0x779b14: add             x3, x3, HEAP, lsl #32
    //     0x779b18: stur            x3, [fp, #-0x10]
    // 0x779b1c: CheckStackOverflow
    //     0x779b1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x779b20: cmp             SP, x16
    //     0x779b24: b.ls            #0x779bcc
    // 0x779b28: InitAsync() -> Future<void?>
    //     0x779b28: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x779b2c: bl              #0x74ada8  ; InitAsyncStub
    // 0x779b30: ldur            x1, [fp, #-0x10]
    // 0x779b34: LoadField: r0 = r1->field_f
    //     0x779b34: ldur            w0, [x1, #0xf]
    // 0x779b38: DecompressPointer r0
    //     0x779b38: add             x0, x0, HEAP, lsl #32
    // 0x779b3c: LoadField: r2 = r0->field_23
    //     0x779b3c: ldur            w2, [x0, #0x23]
    // 0x779b40: DecompressPointer r2
    //     0x779b40: add             x2, x2, HEAP, lsl #32
    // 0x779b44: LoadField: r0 = r1->field_13
    //     0x779b44: ldur            w0, [x1, #0x13]
    // 0x779b48: DecompressPointer r0
    //     0x779b48: add             x0, x0, HEAP, lsl #32
    // 0x779b4c: cmp             w2, w0
    // 0x779b50: b.eq            #0x779b5c
    // 0x779b54: r0 = Null
    //     0x779b54: mov             x0, NULL
    // 0x779b58: r0 = ReturnAsyncNotFuture()
    //     0x779b58: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x779b5c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x779b5c: ldur            w0, [x1, #0x17]
    // 0x779b60: DecompressPointer r0
    //     0x779b60: add             x0, x0, HEAP, lsl #32
    // 0x779b64: str             x0, [SP]
    // 0x779b68: ClosureCall
    //     0x779b68: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x779b6c: ldur            x2, [x0, #0x1f]
    //     0x779b70: blr             x2
    // 0x779b74: cmp             w0, NULL
    // 0x779b78: b.eq            #0x779bd4
    // 0x779b7c: ldur            x16, [fp, #-0x18]
    // 0x779b80: stp             x16, x0, [SP]
    // 0x779b84: ClosureCall
    //     0x779b84: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x779b88: ldur            x2, [x0, #0x1f]
    //     0x779b8c: blr             x2
    // 0x779b90: mov             x1, x0
    // 0x779b94: stur            x1, [fp, #-0x18]
    // 0x779b98: r0 = Await()
    //     0x779b98: bl              #0x74ab64  ; AwaitStub
    // 0x779b9c: ldur            x0, [fp, #-0x10]
    // 0x779ba0: LoadField: r1 = r0->field_f
    //     0x779ba0: ldur            w1, [x0, #0xf]
    // 0x779ba4: DecompressPointer r1
    //     0x779ba4: add             x1, x1, HEAP, lsl #32
    // 0x779ba8: LoadField: r2 = r1->field_23
    //     0x779ba8: ldur            w2, [x1, #0x23]
    // 0x779bac: DecompressPointer r2
    //     0x779bac: add             x2, x2, HEAP, lsl #32
    // 0x779bb0: LoadField: r3 = r0->field_13
    //     0x779bb0: ldur            w3, [x0, #0x13]
    // 0x779bb4: DecompressPointer r3
    //     0x779bb4: add             x3, x3, HEAP, lsl #32
    // 0x779bb8: cmp             w2, w3
    // 0x779bbc: b.ne            #0x779bc4
    // 0x779bc0: r0 = call 0x3dd5b0
    //     0x779bc0: bl              #0x3dd5b0
    // 0x779bc4: r0 = Null
    //     0x779bc4: mov             x0, NULL
    // 0x779bc8: r0 = ReturnAsyncNotFuture()
    //     0x779bc8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x779bcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x779bcc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x779bd0: b               #0x779b28
    // 0x779bd4: r0 = NullErrorSharedWithoutFPURegs()
    //     0x779bd4: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] void _oAc(dynamic) {
    // ** addr: 0x3de5a4, size: -0x1
  }
  [closure] Future<bool> _pAc(dynamic) {
    // ** addr: 0x3de408, size: -0x1
  }
  [closure] void _rAc(dynamic) {
    // ** addr: 0x3de374, size: -0x1
  }
  [closure] void _hAc(dynamic, la) {
    // ** addr: 0x3d96d4, size: -0x1
  }
  [closure] PP<bool> <anonymous closure>(dynamic, bool) {
    // ** addr: 0x3de510, size: -0x1
  }
  [closure] (dynamic, C1X0) => Future<void> <anonymous closure>(dynamic) {
    // ** addr: 0x3dd610, size: -0x1
  }
  [closure] (dynamic, C1X0) => Future<void> <anonymous closure>(dynamic) {
    // ** addr: 0x519c2c, size: -0x1
  }
  [closure] (dynamic, C1X0) => Future<void> <anonymous closure>(dynamic) {
    // ** addr: 0x519ae8, size: -0x1
  }
  [closure] (dynamic, C1X0) => Future<void> <anonymous closure>(dynamic) {
    // ** addr: 0x5199a4, size: -0x1
  }
}

// class id: 4045, size: 0x24, field offset: 0xc
//   const constructor, 
class Lw<X0> extends oI {
}

// class id: 4546, size: 0x24, field offset: 0x10
//   const constructor, 
class _Xra extends cN {
}

// class id: 5401, size: 0x14, field offset: 0x14
enum Vra extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

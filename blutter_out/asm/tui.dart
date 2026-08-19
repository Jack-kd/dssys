// lib: , url: tui

// class id: 1049102, size: 0x8
class :: {
}

// class id: 1351, size: 0x10, field offset: 0x8
abstract class _Ypa extends Object {
}

// class id: 1352, size: 0x10, field offset: 0x10
class _cqa extends _Ypa {

  [closure] void ccd(dynamic, RI) {
    // ** addr: 0x6a9b3c, size: -0x1
  }
}

// class id: 1353, size: 0x10, field offset: 0x10
class _bqa extends _Ypa {

  [closure] void ccd(dynamic, RI) {
    // ** addr: 0x6a9960, size: -0x1
  }
}

// class id: 1354, size: 0x10, field offset: 0x10
class _aqa extends _Ypa {

  [closure] void ccd(dynamic, RI) {
    // ** addr: 0x6a96d8, size: -0x1
  }
}

// class id: 1355, size: 0x10, field offset: 0x10
class _Zpa extends _Ypa {

  [closure] void ccd(dynamic, RI) {
    // ** addr: 0x6a8f64, size: -0x1
  }
}

// class id: 1356, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class Vpa<X0> extends Object {
}

// class id: 1357, size: 0xc, field offset: 0xc
//   const constructor, 
class Wpa<X0> extends Vpa<X0> {

  [closure] void Fni(dynamic, Upa?, bool) {
    // ** addr: 0x3d8750, size: -0x1
  }
}

// class id: 1358, size: 0x8, field offset: 0x8
abstract class Upa extends Object {
}

// class id: 1359, size: 0x34, field offset: 0x8
class _Zv extends Upa {

  [closure] Future<Null> <anonymous closure>(dynamic, dynamic) async {
    // ** addr: 0x7604d8, size: 0xac
    // 0x7604d8: EnterFrame
    //     0x7604d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7604dc: mov             fp, SP
    // 0x7604e0: AllocStack(0x28)
    //     0x7604e0: sub             SP, SP, #0x28
    // 0x7604e4: SetupParameters(_Zv this /* r1 */)
    //     0x7604e4: stur            NULL, [fp, #-8]
    //     0x7604e8: movz            x0, #0
    //     0x7604ec: add             x1, fp, w0, sxtw #2
    //     0x7604f0: ldr             x1, [x1, #0x18]
    //     0x7604f4: ldur            w2, [x1, #0x17]
    //     0x7604f8: add             x2, x2, HEAP, lsl #32
    //     0x7604fc: stur            x2, [fp, #-0x10]
    // 0x760500: CheckStackOverflow
    //     0x760500: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x760504: cmp             SP, x16
    //     0x760508: b.ls            #0x76057c
    // 0x76050c: InitAsync() -> Future<Null?>
    //     0x76050c: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x760510: bl              #0x74ada8  ; InitAsyncStub
    // 0x760514: ldur            x0, [fp, #-0x10]
    // 0x760518: LoadField: r1 = r0->field_f
    //     0x760518: ldur            w1, [x0, #0xf]
    // 0x76051c: DecompressPointer r1
    //     0x76051c: add             x1, x1, HEAP, lsl #32
    // 0x760520: LoadField: r3 = r1->field_1f
    //     0x760520: ldur            w3, [x1, #0x1f]
    // 0x760524: DecompressPointer r3
    //     0x760524: add             x3, x3, HEAP, lsl #32
    // 0x760528: stur            x3, [fp, #-0x18]
    // 0x76052c: r1 = <void?>
    //     0x76052c: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x760530: r2 = Instance_la
    //     0x760530: add             x2, PP, #0x11, lsl #12  ; [pp+0x11ae8] Obj!la@455071
    //     0x760534: ldr             x2, [x2, #0xae8]
    // 0x760538: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x760538: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x76053c: r0 = call 0x2c5350
    //     0x76053c: bl              #0x2c5350
    // 0x760540: mov             x1, x0
    // 0x760544: stur            x1, [fp, #-0x20]
    // 0x760548: r0 = Await()
    //     0x760548: bl              #0x74ab64  ; AwaitStub
    // 0x76054c: ldur            x16, [fp, #-0x18]
    // 0x760550: str             x16, [SP]
    // 0x760554: r1 = Instance_Yga
    //     0x760554: add             x1, PP, #0x11, lsl #12  ; [pp+0x11cf8] Obj!Yga@441ea1
    //     0x760558: ldr             x1, [x1, #0xcf8]
    // 0x76055c: r4 = const [0, 0x2, 0x1, 0x1, fDc, 0x1, null]
    //     0x76055c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11d00] List(7) [0, 0x2, 0x1, 0x1, "fDc", 0x1, Null]
    //     0x760560: ldr             x4, [x4, #0xd00]
    // 0x760564: r0 = call 0x2c51d8
    //     0x760564: bl              #0x2c51d8
    // 0x760568: mov             x2, x0
    // 0x76056c: r1 = Instance_dia
    //     0x76056c: ldr             x1, [PP, #0x2850]  ; [pp+0x2850] Obj!dia<Object?>@441da1
    // 0x760570: r0 = __unknown_function__()
    //     0x760570: bl              #0x760584  ; [] ::__unknown_function__
    // 0x760574: r0 = Null
    //     0x760574: mov             x0, NULL
    // 0x760578: r0 = ReturnAsyncNotFuture()
    //     0x760578: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76057c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76057c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x760580: b               #0x76050c
  }
  [closure] static bool Vcd(dynamic, _Zv) {
    // ** addr: 0x2c7bcc, size: -0x1
  }
  [closure] static bool Xcd(dynamic, _Zv) {
    // ** addr: 0x2c7b94, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, rqa) {
    // ** addr: 0x2c1dc0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x2c1c28, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x2c1d2c, size: -0x1
  }
  [closure] static bool Wcd(dynamic, _Zv) {
    // ** addr: 0x2c232c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x2c2f00, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, _Zv) {
    // ** addr: 0x2c79b8, size: -0x1
  }
}

// class id: 1360, size: 0x10, field offset: 0x8
//   const constructor, 
class Spa extends Object {
}

// class id: 1361, size: 0x20, field offset: 0x10
//   const constructor, 
abstract class HN<X0> extends Spa {
}

// class id: 1366, size: 0x8, field offset: 0x8
//   const constructor, 
class _Rpa extends Object {
}

// class id: 1367, size: 0x24, field offset: 0x8
abstract class Qpa<X0> extends _Rpa {

  [closure] Null <anonymous closure>(dynamic, void) {
    // ** addr: 0x2c58e8, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic, void) {
    // ** addr: 0x66d08c, size: -0x1
  }
}

// class id: 2177, size: 0x8, field offset: 0x8
abstract class RI extends Object {

  static late final Expando<eqa> _ocd; // offset: 0x600
}

// class id: 2710, size: 0x38, field offset: 0x34
class _jqa extends kqa<dynamic> {
}

// class id: 2756, size: 0xc, field offset: 0x8
//   const constructor, 
class lqa extends qv {

  bool field_8;
}

// class id: 3585, size: 0x6c, field offset: 0x2c
class eqa extends _cw {

  late Mna<uqa> _bbd; // offset: 0x2c
  late List<RI> _jbd; // offset: 0x4c

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x2c0544, size: -0x1
  }
  [closure] void _Ubd(dynamic, xQ) {
    // ** addr: 0x4d9ed0, size: -0x1
  }
  [closure] void _Vbd(dynamic, bA) {
    // ** addr: 0x4d9e18, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, lqa) {
    // ** addr: 0x4d9d90, size: -0x1
  }
  [closure] void _rbd(dynamic) {
    // ** addr: 0x50b0b4, size: -0x1
  }
  [closure] void _qbd(dynamic) {
    // ** addr: 0x50ade4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x50b040, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, _Zv) {
    // ** addr: 0x518e98, size: -0x1
  }
  [closure] List<_Zv> <anonymous closure>(dynamic) {
    // ** addr: 0x3d8cfc, size: -0x1
  }
  [closure] List<_Zv> <anonymous closure>(dynamic) {
    // ** addr: 0x3d8d34, size: -0x1
  }
  [closure] _Zv <anonymous closure>(dynamic, Qpa<dynamic>) {
    // ** addr: 0x518ff4, size: -0x1
  }
}

// class id: 4058, size: 0x44, field offset: 0xc
//   const constructor, 
class bw extends oI {

  [closure] static List<Qpa<dynamic>> ndd(dynamic, eqa, String) {
    // ** addr: 0x4f9714, size: -0x1
  }
  [closure] static bool <anonymous closure>(dynamic, Qpa<dynamic>?) {
    // ** addr: 0x4f9c38, size: -0x1
  }
}

// class id: 4550, size: 0x14, field offset: 0x10
//   const constructor, 
class Tpa extends cN {
}

// class id: 5231, size: 0x2c, field offset: 0x28
class _dqa extends _Yv {

  _Zv [](_dqa, int) {
    // ** addr: 0x7af390, size: 0xa8
    // 0x7af390: EnterFrame
    //     0x7af390: stp             fp, lr, [SP, #-0x10]!
    //     0x7af394: mov             fp, SP
    // 0x7af398: ldr             x0, [fp, #0x10]
    // 0x7af39c: r2 = Null
    //     0x7af39c: mov             x2, NULL
    // 0x7af3a0: r1 = Null
    //     0x7af3a0: mov             x1, NULL
    // 0x7af3a4: branchIfSmi(r0, 0x7af3cc)
    //     0x7af3a4: tbz             w0, #0, #0x7af3cc
    // 0x7af3a8: r4 = LoadClassIdInstr(r0)
    //     0x7af3a8: ldur            x4, [x0, #-1]
    //     0x7af3ac: ubfx            x4, x4, #0xc, #0x14
    // 0x7af3b0: sub             x4, x4, #0x3c
    // 0x7af3b4: cmp             x4, #1
    // 0x7af3b8: b.ls            #0x7af3cc
    // 0x7af3bc: r8 = int
    //     0x7af3bc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7af3c0: r3 = Null
    //     0x7af3c0: add             x3, PP, #0x3b, lsl #12  ; [pp+0x3b5b8] Null
    //     0x7af3c4: ldr             x3, [x3, #0x5b8]
    // 0x7af3c8: r0 = int()
    //     0x7af3c8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7af3cc: ldr             x2, [fp, #0x18]
    // 0x7af3d0: LoadField: r3 = r2->field_27
    //     0x7af3d0: ldur            w3, [x2, #0x27]
    // 0x7af3d4: DecompressPointer r3
    //     0x7af3d4: add             x3, x3, HEAP, lsl #32
    // 0x7af3d8: LoadField: r2 = r3->field_b
    //     0x7af3d8: ldur            w2, [x3, #0xb]
    // 0x7af3dc: ldr             x4, [fp, #0x10]
    // 0x7af3e0: r5 = LoadInt32Instr(r4)
    //     0x7af3e0: sbfx            x5, x4, #1, #0x1f
    //     0x7af3e4: tbz             w4, #0, #0x7af3ec
    //     0x7af3e8: ldur            x5, [x4, #7]
    // 0x7af3ec: r0 = LoadInt32Instr(r2)
    //     0x7af3ec: sbfx            x0, x2, #1, #0x1f
    // 0x7af3f0: mov             x1, x5
    // 0x7af3f4: cmp             x1, x0
    // 0x7af3f8: b.hs            #0x7af41c
    // 0x7af3fc: LoadField: r1 = r3->field_f
    //     0x7af3fc: ldur            w1, [x3, #0xf]
    // 0x7af400: DecompressPointer r1
    //     0x7af400: add             x1, x1, HEAP, lsl #32
    // 0x7af404: ArrayLoad: r0 = r1[r5]  ; Unknown_4
    //     0x7af404: add             x16, x1, x5, lsl #2
    //     0x7af408: ldur            w0, [x16, #0xf]
    // 0x7af40c: DecompressPointer r0
    //     0x7af40c: add             x0, x0, HEAP, lsl #32
    // 0x7af410: LeaveFrame
    //     0x7af410: mov             SP, fp
    //     0x7af414: ldp             fp, lr, [SP], #0x10
    // 0x7af418: ret
    //     0x7af418: ret             
    // 0x7af41c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7af41c: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// class id: 5407, size: 0x14, field offset: 0x14
enum _Xpa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5408, size: 0x14, field offset: 0x14
enum Ppa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

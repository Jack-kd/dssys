// lib: , url: JDi

// class id: 1049008, size: 0x8
class :: {

  static late final int _Rbe; // offset: 0x820

  [closure] static List<Kga> <anonymous closure>(dynamic, _Oga) {
    // ** addr: 0x2a4778, size: -0x1
  }
}

// class id: 1538, size: 0xc8, field offset: 0x8
class Rga extends Object {

  [closure] void <anonymous closure>(dynamic, MF, (dynamic, Object?) => void) {
    // ** addr: 0x2b458c, size: -0x1
  }
  [closure] void aae(dynamic, Zda) {
    // ** addr: 0x2b8530, size: -0x1
  }
  [closure] void dae(dynamic, Rga) {
    // ** addr: 0x2b6b14, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2face8, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fbe2c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fc05c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fc8d0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fcb00, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fd0f4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, Object?) {
    // ** addr: 0x2fd2b8, size: -0x1
  }
}

// class id: 1539, size: 0x18, field offset: 0x8
class _Pga extends Object
    implements ia<X0> {
}

// class id: 1540, size: 0x18, field offset: 0x8
class _Oga extends Object
    implements ia<X0> {

  [closure] List<Kga> <anonymous closure>(dynamic, _Oga) {
    // ** addr: 0x2a4d54, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, Kga, Kga) {
    // ** addr: 0x2a561c, size: -0x1
  }
  [closure] void gog(dynamic, int) {
    // ** addr: 0x2a5494, size: -0x1
  }
  [closure] Kga <anonymous closure>(dynamic, int) {
    // ** addr: 0x2a5420, size: -0x1
  }
}

// class id: 1541, size: 0x18, field offset: 0x8
class _Nga extends Object
    implements ia<X0> {
}

// class id: 1542, size: 0x10, field offset: 0x8
class Gga extends Object {

  Gga +(Gga, Gga) {
    // ** addr: 0x75a934, size: 0x80
    // 0x75a934: EnterFrame
    //     0x75a934: stp             fp, lr, [SP, #-0x10]!
    //     0x75a938: mov             fp, SP
    // 0x75a93c: CheckStackOverflow
    //     0x75a93c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75a940: cmp             SP, x16
    //     0x75a944: b.ls            #0x75a994
    // 0x75a948: ldr             x0, [fp, #0x10]
    // 0x75a94c: r2 = Null
    //     0x75a94c: mov             x2, NULL
    // 0x75a950: r1 = Null
    //     0x75a950: mov             x1, NULL
    // 0x75a954: r4 = 60
    //     0x75a954: movz            x4, #0x3c
    // 0x75a958: branchIfSmi(r0, 0x75a964)
    //     0x75a958: tbz             w0, #0, #0x75a964
    // 0x75a95c: r4 = LoadClassIdInstr(r0)
    //     0x75a95c: ldur            x4, [x0, #-1]
    //     0x75a960: ubfx            x4, x4, #0xc, #0x14
    // 0x75a964: cmp             x4, #0x606
    // 0x75a968: b.eq            #0x75a97c
    // 0x75a96c: r8 = Gga
    //     0x75a96c: ldr             x8, [PP, #0x21e0]  ; [pp+0x21e0] Type: Gga
    // 0x75a970: r3 = Null
    //     0x75a970: add             x3, PP, #0x27, lsl #12  ; [pp+0x27618] Null
    //     0x75a974: ldr             x3, [x3, #0x618]
    // 0x75a978: r0 = Gga()
    //     0x75a978: bl              #0x75a9c4  ; IsType_Gga_Stub
    // 0x75a97c: ldr             x1, [fp, #0x18]
    // 0x75a980: ldr             x2, [fp, #0x10]
    // 0x75a984: r0 = call 0x28e934
    //     0x75a984: bl              #0x28e934
    // 0x75a988: LeaveFrame
    //     0x75a988: mov             SP, fp
    //     0x75a98c: ldp             fp, lr, [SP], #0x10
    // 0x75a990: ret
    //     0x75a990: ret             
    // 0x75a994: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x75a994: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75a998: b               #0x75a948
  }
}

// class id: 1543, size: 0x14, field offset: 0x8
//   const constructor, 
class Fga extends Object {

  static late final Map<int, Fga> _PYd; // offset: 0x818
  static late final Map<Fga, int> _wbe; // offset: 0x81c
}

// class id: 1544, size: 0x10, field offset: 0x8
class Ega extends Object {

  [closure] void Qbe(dynamic, List<Rga>) {
    // ** addr: 0x2fb5fc, size: -0x1
  }
}

// class id: 1545, size: 0x10, field offset: 0x8
class Dga extends Object {
}

// class id: 1576, size: 0xc, field offset: 0x8
//   const constructor, 
class Zda extends Object {

  _OneByteString field_8;
}

// class id: 2714, size: 0x3c, field offset: 0x24
class Qga extends Ev {

  [closure] bool <anonymous closure>(dynamic, Kga) {
    // ** addr: 0x2aeffc, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, Kga, Kga) {
    // ** addr: 0x2aef68, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Object, Kga) {
    // ** addr: 0x2aefd0, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Kga) {
    // ** addr: 0x2aefa4, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Kga) {
    // ** addr: 0x29eea0, size: -0x1
  }
}

// class id: 2841, size: 0xf0, field offset: 0x8
class Kga extends _Qq {

  static late final Int32List _Kae; // offset: 0x808
  static late final yw _Mae; // offset: 0x810
  static late final Int32List _Lae; // offset: 0x80c
  static late final Rga _Jae; // offset: 0x804

  [closure] bool <anonymous closure>(dynamic, Kga) {
    // ** addr: 0x2adc4c, size: -0x1
  }
  [closure] void _Zae(dynamic, Kga) {
    // ** addr: 0x2af8dc, size: -0x1
  }
  [closure] void _Xae(dynamic, Kga) {
    // ** addr: 0x2affa0, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Object, Kga) {
    // ** addr: 0x2b04cc, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, Kga) {
    // ** addr: 0x2b04a0, size: -0x1
  }
}

// class id: 3122, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class Tga extends _Hq
    implements ia<X0> {
}

// class id: 3123, size: 0x14, field offset: 0xc
//   const constructor, 
class Uga extends Tga {

  _Mint field_c;
}

// class id: 3124, size: 0x9c, field offset: 0x8
class Iga extends _Hq {
}

// class id: 3757, size: 0x140, field offset: 0x8
//   const constructor, 
class Mga extends xP {
}

// class id: 3758, size: 0x10, field offset: 0x8
//   const constructor, 
class Lga extends xP {
}

// class id: 5443, size: 0x14, field offset: 0x14
enum Cga extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

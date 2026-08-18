// lib: , url: sJi

// class id: 1049358, size: 0x8
class :: {
}

// class id: 782, size: 0x40, field offset: 0x8
//   const constructor, 
class TJa extends Object {

  _OneByteString field_8;
  bool field_c;
  bool field_10;
  _OneByteString field_14;
  bool field_1c;
  bool field_20;
  bool field_24;
  UJa field_30;
  _Mint field_34;
  _ImmutableList<String> field_3c;
}

// class id: 790, size: 0x88, field offset: 0x8
abstract class MJa extends Object {

  late vJa state; // offset: 0xc
  late wJa dm; // offset: 0x10

  Future<void> Rwb(MJa) {
    // ** addr: 0x74e1fc, size: 0x48
    // 0x74e1fc: EnterFrame
    //     0x74e1fc: stp             fp, lr, [SP, #-0x10]!
    //     0x74e200: mov             fp, SP
    // 0x74e204: CheckStackOverflow
    //     0x74e204: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e208: cmp             SP, x16
    //     0x74e20c: b.ls            #0x74e224
    // 0x74e210: ldr             x1, [fp, #0x10]
    // 0x74e214: r0 = call 0x71a808
    //     0x74e214: bl              #0x71a808
    // 0x74e218: LeaveFrame
    //     0x74e218: mov             SP, fp
    //     0x74e21c: ldp             fp, lr, [SP], #0x10
    // 0x74e220: ret
    //     0x74e220: ret             
    // 0x74e224: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e224: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e228: b               #0x74e210
  }
  Future<void> Aef(MJa) {
    // ** addr: 0x74e244, size: 0x48
    // 0x74e244: EnterFrame
    //     0x74e244: stp             fp, lr, [SP, #-0x10]!
    //     0x74e248: mov             fp, SP
    // 0x74e24c: CheckStackOverflow
    //     0x74e24c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e250: cmp             SP, x16
    //     0x74e254: b.ls            #0x74e26c
    // 0x74e258: ldr             x1, [fp, #0x10]
    // 0x74e25c: r0 = call 0x71a928
    //     0x74e25c: bl              #0x71a928
    // 0x74e260: LeaveFrame
    //     0x74e260: mov             SP, fp
    //     0x74e264: ldp             fp, lr, [SP], #0x10
    // 0x74e268: ret
    //     0x74e268: ret             
    // 0x74e26c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e26c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e270: b               #0x74e258
  }
  [closure] bool <anonymous closure>(dynamic, xJa, xJa) {
    // ** addr: 0x511a7c, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, bool, bool) {
    // ** addr: 0x511768, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, la, la) {
    // ** addr: 0x51192c, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, double, double) {
    // ** addr: 0x511a58, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, double?, double?) {
    // ** addr: 0x5118d8, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, oJa, oJa) {
    // ** addr: 0x51189c, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, List<oJa>, List<oJa>) {
    // ** addr: 0x511784, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, DJa, DJa) {
    // ** addr: 0x511860, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, EJa, EJa) {
    // ** addr: 0x511824, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, int?, int?) {
    // ** addr: 0x5117cc, size: -0x1
  }
  wJa dm(MJa) {
    // ** addr: 0x511064, size: -0x1
  }
}

// class id: 5374, size: 0x14, field offset: 0x14
enum UJa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// lib: , url: sui

// class id: 1048801, size: 0x8
class :: {
}

// class id: 1853, size: 0x10, field offset: 0x8
//   const constructor, 
class ER extends Object {

  dE field_8;
  dE field_c;

  ER -(ER, ER) {
    // ** addr: 0x7b25f0, size: 0x84
    // 0x7b25f0: EnterFrame
    //     0x7b25f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7b25f4: mov             fp, SP
    // 0x7b25f8: CheckStackOverflow
    //     0x7b25f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b25fc: cmp             SP, x16
    //     0x7b2600: b.ls            #0x7b2654
    // 0x7b2604: ldr             x0, [fp, #0x10]
    // 0x7b2608: r2 = Null
    //     0x7b2608: mov             x2, NULL
    // 0x7b260c: r1 = Null
    //     0x7b260c: mov             x1, NULL
    // 0x7b2610: r4 = 60
    //     0x7b2610: movz            x4, #0x3c
    // 0x7b2614: branchIfSmi(r0, 0x7b2620)
    //     0x7b2614: tbz             w0, #0, #0x7b2620
    // 0x7b2618: r4 = LoadClassIdInstr(r0)
    //     0x7b2618: ldur            x4, [x0, #-1]
    //     0x7b261c: ubfx            x4, x4, #0xc, #0x14
    // 0x7b2620: cmp             x4, #0x73d
    // 0x7b2624: b.eq            #0x7b263c
    // 0x7b2628: r8 = ER
    //     0x7b2628: add             x8, PP, #0x26, lsl #12  ; [pp+0x26da8] Type: ER
    //     0x7b262c: ldr             x8, [x8, #0xda8]
    // 0x7b2630: r3 = Null
    //     0x7b2630: add             x3, PP, #0x26, lsl #12  ; [pp+0x26db0] Null
    //     0x7b2634: ldr             x3, [x3, #0xdb0]
    // 0x7b2638: r0 = DefaultTypeTest()
    //     0x7b2638: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b263c: ldr             x1, [fp, #0x18]
    // 0x7b2640: ldr             x2, [fp, #0x10]
    // 0x7b2644: r0 = call 0x55227c
    //     0x7b2644: bl              #0x55227c
    // 0x7b2648: LeaveFrame
    //     0x7b2648: mov             SP, fp
    //     0x7b264c: ldp             fp, lr, [SP], #0x10
    // 0x7b2650: ret
    //     0x7b2650: ret             
    // 0x7b2654: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b2654: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b2658: b               #0x7b2604
  }
  ER +(ER, ER) {
    // ** addr: 0x7b2680, size: 0x84
    // 0x7b2680: EnterFrame
    //     0x7b2680: stp             fp, lr, [SP, #-0x10]!
    //     0x7b2684: mov             fp, SP
    // 0x7b2688: CheckStackOverflow
    //     0x7b2688: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b268c: cmp             SP, x16
    //     0x7b2690: b.ls            #0x7b26e4
    // 0x7b2694: ldr             x0, [fp, #0x10]
    // 0x7b2698: r2 = Null
    //     0x7b2698: mov             x2, NULL
    // 0x7b269c: r1 = Null
    //     0x7b269c: mov             x1, NULL
    // 0x7b26a0: r4 = 60
    //     0x7b26a0: movz            x4, #0x3c
    // 0x7b26a4: branchIfSmi(r0, 0x7b26b0)
    //     0x7b26a4: tbz             w0, #0, #0x7b26b0
    // 0x7b26a8: r4 = LoadClassIdInstr(r0)
    //     0x7b26a8: ldur            x4, [x0, #-1]
    //     0x7b26ac: ubfx            x4, x4, #0xc, #0x14
    // 0x7b26b0: cmp             x4, #0x73d
    // 0x7b26b4: b.eq            #0x7b26cc
    // 0x7b26b8: r8 = ER
    //     0x7b26b8: add             x8, PP, #0x26, lsl #12  ; [pp+0x26da8] Type: ER
    //     0x7b26bc: ldr             x8, [x8, #0xda8]
    // 0x7b26c0: r3 = Null
    //     0x7b26c0: add             x3, PP, #0x26, lsl #12  ; [pp+0x26dc0] Null
    //     0x7b26c4: ldr             x3, [x3, #0xdc0]
    // 0x7b26c8: r0 = DefaultTypeTest()
    //     0x7b26c8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7b26cc: ldr             x1, [fp, #0x18]
    // 0x7b26d0: ldr             x2, [fp, #0x10]
    // 0x7b26d4: r0 = call 0x552308
    //     0x7b26d4: bl              #0x552308
    // 0x7b26d8: LeaveFrame
    //     0x7b26d8: mov             SP, fp
    //     0x7b26dc: ldp             fp, lr, [SP], #0x10
    // 0x7b26e0: ret
    //     0x7b26e0: ret             
    // 0x7b26e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b26e4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b26e8: b               #0x7b2694
  }
}

// class id: 2670, size: 0x18, field offset: 0x8
abstract class AR extends _Wv {
}

// class id: 2672, size: 0x24, field offset: 0x18
abstract class dB extends AR {

  [closure] void qic(dynamic, int) {
    // ** addr: 0x357880, size: -0x1
  }
}

// class id: 2681, size: 0x48, field offset: 0x24
abstract class cR extends dB {

  [closure] void BYb(dynamic, bA) {
    // ** addr: 0x6b0e5c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x586180, size: -0x1
  }
}

// class id: 5523, size: 0x14, field offset: 0x14
enum DR extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5524, size: 0x14, field offset: 0x14
enum CR extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5525, size: 0x14, field offset: 0x14
enum kR extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// lib: , url: ewi

// class id: 1048678, size: 0x8
class :: {

  [closure] static Null <anonymous closure>(dynamic, Object, Ja) {
    // ** addr: 0x407438, size: -0x1
  }
}

// class id: 2134, size: 0x8, field offset: 0x8
//   const constructor, 
abstract class YJ extends Object {

  [closure] Object? _yDe(dynamic, RJ, XJ) {
    // ** addr: 0x6fcd34, size: -0x1
  }
  [closure] void Ssb(dynamic, RJ, XJ) {
    // ** addr: 0x6fce04, size: -0x1
  }
  [closure] Object? _xDe(dynamic, jK<dynamic>, WJ) {
    // ** addr: 0x6fd238, size: -0x1
  }
  [closure] void vDe(dynamic, jK<dynamic>, WJ) {
    // ** addr: 0x6fd308, size: -0x1
  }
  [closure] Object? _wDe(dynamic, hK, VJ) {
    // ** addr: 0x6fd4d8, size: -0x1
  }
}

// class id: 2137, size: 0x10, field offset: 0x8
abstract class _UJ extends Object {
}

// class id: 2138, size: 0x10, field offset: 0x10
class XJ extends _UJ {
}

// class id: 2139, size: 0x10, field offset: 0x10
class WJ extends _UJ {
}

// class id: 2140, size: 0x10, field offset: 0x10
class VJ extends _UJ {
}

// class id: 2141, size: 0x14, field offset: 0x8
//   const constructor, 
class TJ<X0> extends Object {
}

// class id: 2415, size: 0x8, field offset: 0x8
abstract class HC extends Object
    implements OJ {
}

// class id: 5185, size: 0x10, field offset: 0xc
class ZJ extends Y<dynamic> {

  void []=(ZJ, int, YJ) {
    // ** addr: 0x7456c0, size: 0x1a0
    // 0x7456c0: EnterFrame
    //     0x7456c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7456c4: mov             fp, SP
    // 0x7456c8: AllocStack(0x10)
    //     0x7456c8: sub             SP, SP, #0x10
    // 0x7456cc: CheckStackOverflow
    //     0x7456cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7456d0: cmp             SP, x16
    //     0x7456d4: b.ls            #0x74583c
    // 0x7456d8: ldr             x0, [fp, #0x18]
    // 0x7456dc: r2 = Null
    //     0x7456dc: mov             x2, NULL
    // 0x7456e0: r1 = Null
    //     0x7456e0: mov             x1, NULL
    // 0x7456e4: branchIfSmi(r0, 0x74570c)
    //     0x7456e4: tbz             w0, #0, #0x74570c
    // 0x7456e8: r4 = LoadClassIdInstr(r0)
    //     0x7456e8: ldur            x4, [x0, #-1]
    //     0x7456ec: ubfx            x4, x4, #0xc, #0x14
    // 0x7456f0: sub             x4, x4, #0x3c
    // 0x7456f4: cmp             x4, #1
    // 0x7456f8: b.ls            #0x74570c
    // 0x7456fc: r8 = int
    //     0x7456fc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x745700: r3 = Null
    //     0x745700: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dcc8] Null
    //     0x745704: ldr             x3, [x3, #0xcc8]
    // 0x745708: r0 = int()
    //     0x745708: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x74570c: ldr             x0, [fp, #0x10]
    // 0x745710: r2 = Null
    //     0x745710: mov             x2, NULL
    // 0x745714: r1 = Null
    //     0x745714: mov             x1, NULL
    // 0x745718: r4 = 60
    //     0x745718: movz            x4, #0x3c
    // 0x74571c: branchIfSmi(r0, 0x745728)
    //     0x74571c: tbz             w0, #0, #0x745728
    // 0x745720: r4 = LoadClassIdInstr(r0)
    //     0x745720: ldur            x4, [x0, #-1]
    //     0x745724: ubfx            x4, x4, #0xc, #0x14
    // 0x745728: sub             x4, x4, #0x857
    // 0x74572c: cmp             x4, #1
    // 0x745730: b.ls            #0x745748
    // 0x745734: r8 = YJ
    //     0x745734: add             x8, PP, #0x1d, lsl #12  ; [pp+0x1dcd8] Type: YJ
    //     0x745738: ldr             x8, [x8, #0xcd8]
    // 0x74573c: r3 = Null
    //     0x74573c: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dce0] Null
    //     0x745740: ldr             x3, [x3, #0xce0]
    // 0x745744: r0 = YJ()
    //     0x745744: bl              #0x745654  ; IsType_YJ_Stub
    // 0x745748: ldr             x0, [fp, #0x20]
    // 0x74574c: LoadField: r2 = r0->field_b
    //     0x74574c: ldur            w2, [x0, #0xb]
    // 0x745750: DecompressPointer r2
    //     0x745750: add             x2, x2, HEAP, lsl #32
    // 0x745754: stur            x2, [fp, #-0x10]
    // 0x745758: LoadField: r0 = r2->field_b
    //     0x745758: ldur            w0, [x2, #0xb]
    // 0x74575c: ldr             x1, [fp, #0x18]
    // 0x745760: r3 = LoadInt32Instr(r1)
    //     0x745760: sbfx            x3, x1, #1, #0x1f
    //     0x745764: tbz             w1, #0, #0x74576c
    //     0x745768: ldur            x3, [x1, #7]
    // 0x74576c: r4 = LoadInt32Instr(r0)
    //     0x74576c: sbfx            x4, x0, #1, #0x1f
    // 0x745770: stur            x4, [fp, #-8]
    // 0x745774: cmp             x4, x3
    // 0x745778: b.ne            #0x7457e8
    // 0x74577c: LoadField: r0 = r2->field_f
    //     0x74577c: ldur            w0, [x2, #0xf]
    // 0x745780: DecompressPointer r0
    //     0x745780: add             x0, x0, HEAP, lsl #32
    // 0x745784: LoadField: r1 = r0->field_b
    //     0x745784: ldur            w1, [x0, #0xb]
    // 0x745788: r0 = LoadInt32Instr(r1)
    //     0x745788: sbfx            x0, x1, #1, #0x1f
    // 0x74578c: cmp             x4, x0
    // 0x745790: b.ne            #0x74579c
    // 0x745794: mov             x1, x2
    // 0x745798: r0 = call 0x2271b8
    //     0x745798: bl              #0x2271b8
    // 0x74579c: ldur            x2, [fp, #-0x10]
    // 0x7457a0: ldur            x4, [fp, #-8]
    // 0x7457a4: add             x5, x4, #1
    // 0x7457a8: lsl             x6, x5, #1
    // 0x7457ac: StoreField: r2->field_b = r6
    //     0x7457ac: stur            w6, [x2, #0xb]
    // 0x7457b0: LoadField: r1 = r2->field_f
    //     0x7457b0: ldur            w1, [x2, #0xf]
    // 0x7457b4: DecompressPointer r1
    //     0x7457b4: add             x1, x1, HEAP, lsl #32
    // 0x7457b8: ldr             x0, [fp, #0x10]
    // 0x7457bc: ArrayStore: r1[r4] = r0  ; List_4
    //     0x7457bc: add             x25, x1, x4, lsl #2
    //     0x7457c0: add             x25, x25, #0xf
    //     0x7457c4: str             w0, [x25]
    //     0x7457c8: tbz             w0, #0, #0x7457e4
    //     0x7457cc: ldurb           w16, [x1, #-1]
    //     0x7457d0: ldurb           w17, [x0, #-1]
    //     0x7457d4: and             x16, x17, x16, lsr #2
    //     0x7457d8: tst             x16, HEAP, lsr #32
    //     0x7457dc: b.eq            #0x7457e4
    //     0x7457e0: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7457e4: b               #0x74582c
    // 0x7457e8: mov             x0, x4
    // 0x7457ec: mov             x1, x3
    // 0x7457f0: cmp             x1, x0
    // 0x7457f4: b.hs            #0x745844
    // 0x7457f8: LoadField: r1 = r2->field_f
    //     0x7457f8: ldur            w1, [x2, #0xf]
    // 0x7457fc: DecompressPointer r1
    //     0x7457fc: add             x1, x1, HEAP, lsl #32
    // 0x745800: ldr             x0, [fp, #0x10]
    // 0x745804: ArrayStore: r1[r3] = r0  ; List_4
    //     0x745804: add             x25, x1, x3, lsl #2
    //     0x745808: add             x25, x25, #0xf
    //     0x74580c: str             w0, [x25]
    //     0x745810: tbz             w0, #0, #0x74582c
    //     0x745814: ldurb           w16, [x1, #-1]
    //     0x745818: ldurb           w17, [x0, #-1]
    //     0x74581c: and             x16, x17, x16, lsr #2
    //     0x745820: tst             x16, HEAP, lsr #32
    //     0x745824: b.eq            #0x74582c
    //     0x745828: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x74582c: r0 = Null
    //     0x74582c: mov             x0, NULL
    // 0x745830: LeaveFrame
    //     0x745830: mov             SP, fp
    //     0x745834: ldp             fp, lr, [SP], #0x10
    // 0x745838: ret
    //     0x745838: ret             
    // 0x74583c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74583c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745840: b               #0x7456d8
    // 0x745844: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x745844: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
  YJ [](ZJ, int) {
    // ** addr: 0x745860, size: 0xb4
    // 0x745860: EnterFrame
    //     0x745860: stp             fp, lr, [SP, #-0x10]!
    //     0x745864: mov             fp, SP
    // 0x745868: ldr             x0, [fp, #0x10]
    // 0x74586c: r2 = Null
    //     0x74586c: mov             x2, NULL
    // 0x745870: r1 = Null
    //     0x745870: mov             x1, NULL
    // 0x745874: branchIfSmi(r0, 0x74589c)
    //     0x745874: tbz             w0, #0, #0x74589c
    // 0x745878: r4 = LoadClassIdInstr(r0)
    //     0x745878: ldur            x4, [x0, #-1]
    //     0x74587c: ubfx            x4, x4, #0xc, #0x14
    // 0x745880: sub             x4, x4, #0x3c
    // 0x745884: cmp             x4, #1
    // 0x745888: b.ls            #0x74589c
    // 0x74588c: r8 = int
    //     0x74588c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x745890: r3 = Null
    //     0x745890: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1dd00] Null
    //     0x745894: ldr             x3, [x3, #0xd00]
    // 0x745898: r0 = int()
    //     0x745898: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x74589c: ldr             x2, [fp, #0x18]
    // 0x7458a0: LoadField: r3 = r2->field_b
    //     0x7458a0: ldur            w3, [x2, #0xb]
    // 0x7458a4: DecompressPointer r3
    //     0x7458a4: add             x3, x3, HEAP, lsl #32
    // 0x7458a8: LoadField: r2 = r3->field_b
    //     0x7458a8: ldur            w2, [x3, #0xb]
    // 0x7458ac: ldr             x4, [fp, #0x10]
    // 0x7458b0: r5 = LoadInt32Instr(r4)
    //     0x7458b0: sbfx            x5, x4, #1, #0x1f
    //     0x7458b4: tbz             w4, #0, #0x7458bc
    //     0x7458b8: ldur            x5, [x4, #7]
    // 0x7458bc: r0 = LoadInt32Instr(r2)
    //     0x7458bc: sbfx            x0, x2, #1, #0x1f
    // 0x7458c0: mov             x1, x5
    // 0x7458c4: cmp             x1, x0
    // 0x7458c8: b.hs            #0x7458f4
    // 0x7458cc: LoadField: r1 = r3->field_f
    //     0x7458cc: ldur            w1, [x3, #0xf]
    // 0x7458d0: DecompressPointer r1
    //     0x7458d0: add             x1, x1, HEAP, lsl #32
    // 0x7458d4: ArrayLoad: r0 = r1[r5]  ; Unknown_4
    //     0x7458d4: add             x16, x1, x5, lsl #2
    //     0x7458d8: ldur            w0, [x16, #0xf]
    // 0x7458dc: DecompressPointer r0
    //     0x7458dc: add             x0, x0, HEAP, lsl #32
    // 0x7458e0: cmp             w0, NULL
    // 0x7458e4: b.eq            #0x7458f8
    // 0x7458e8: LeaveFrame
    //     0x7458e8: mov             SP, fp
    //     0x7458ec: ldp             fp, lr, [SP], #0x10
    // 0x7458f0: ret
    //     0x7458f0: ret             
    // 0x7458f4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7458f4: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7458f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7458f8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] bool <anonymous closure>(dynamic, YJ?) {
    // ** addr: 0x227448, size: -0x1
  }
}

// class id: 5559, size: 0x14, field offset: 0x14
enum SJ extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

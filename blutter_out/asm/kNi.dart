// lib: , url: kNi

// class id: 1049530, size: 0x8
class :: {

  static late final List<int> _iJf; // offset: 0xe48
}

// class id: 578, size: 0xc, field offset: 0x8
class wQa extends Object {

  vQa [](wQa, int) {
    // ** addr: 0x78828c, size: 0xa8
    // 0x78828c: EnterFrame
    //     0x78828c: stp             fp, lr, [SP, #-0x10]!
    //     0x788290: mov             fp, SP
    // 0x788294: ldr             x0, [fp, #0x10]
    // 0x788298: r2 = Null
    //     0x788298: mov             x2, NULL
    // 0x78829c: r1 = Null
    //     0x78829c: mov             x1, NULL
    // 0x7882a0: branchIfSmi(r0, 0x7882c8)
    //     0x7882a0: tbz             w0, #0, #0x7882c8
    // 0x7882a4: r4 = LoadClassIdInstr(r0)
    //     0x7882a4: ldur            x4, [x0, #-1]
    //     0x7882a8: ubfx            x4, x4, #0xc, #0x14
    // 0x7882ac: sub             x4, x4, #0x3c
    // 0x7882b0: cmp             x4, #1
    // 0x7882b4: b.ls            #0x7882c8
    // 0x7882b8: r8 = int
    //     0x7882b8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7882bc: r3 = Null
    //     0x7882bc: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c718] Null
    //     0x7882c0: ldr             x3, [x3, #0x718]
    // 0x7882c4: r0 = int()
    //     0x7882c4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7882c8: ldr             x2, [fp, #0x18]
    // 0x7882cc: LoadField: r3 = r2->field_7
    //     0x7882cc: ldur            w3, [x2, #7]
    // 0x7882d0: DecompressPointer r3
    //     0x7882d0: add             x3, x3, HEAP, lsl #32
    // 0x7882d4: LoadField: r2 = r3->field_b
    //     0x7882d4: ldur            w2, [x3, #0xb]
    // 0x7882d8: ldr             x4, [fp, #0x10]
    // 0x7882dc: r5 = LoadInt32Instr(r4)
    //     0x7882dc: sbfx            x5, x4, #1, #0x1f
    //     0x7882e0: tbz             w4, #0, #0x7882e8
    //     0x7882e4: ldur            x5, [x4, #7]
    // 0x7882e8: r0 = LoadInt32Instr(r2)
    //     0x7882e8: sbfx            x0, x2, #1, #0x1f
    // 0x7882ec: mov             x1, x5
    // 0x7882f0: cmp             x1, x0
    // 0x7882f4: b.hs            #0x788318
    // 0x7882f8: LoadField: r1 = r3->field_f
    //     0x7882f8: ldur            w1, [x3, #0xf]
    // 0x7882fc: DecompressPointer r1
    //     0x7882fc: add             x1, x1, HEAP, lsl #32
    // 0x788300: ArrayLoad: r0 = r1[r5]  ; Unknown_4
    //     0x788300: add             x16, x1, x5, lsl #2
    //     0x788304: ldur            w0, [x16, #0xf]
    // 0x788308: DecompressPointer r0
    //     0x788308: add             x0, x0, HEAP, lsl #32
    // 0x78830c: LeaveFrame
    //     0x78830c: mov             SP, fp
    //     0x788310: ldp             fp, lr, [SP], #0x10
    // 0x788314: ret
    //     0x788314: ret             
    // 0x788318: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x788318: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// class id: 579, size: 0x10, field offset: 0x8
class vQa extends Object {

  late int _kAf; // offset: 0x8
  late int _lAf; // offset: 0xc

  bool >(vQa, vQa) {
    // ** addr: 0x78811c, size: 0x84
    // 0x78811c: EnterFrame
    //     0x78811c: stp             fp, lr, [SP, #-0x10]!
    //     0x788120: mov             fp, SP
    // 0x788124: CheckStackOverflow
    //     0x788124: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x788128: cmp             SP, x16
    //     0x78812c: b.ls            #0x788180
    // 0x788130: ldr             x0, [fp, #0x10]
    // 0x788134: r2 = Null
    //     0x788134: mov             x2, NULL
    // 0x788138: r1 = Null
    //     0x788138: mov             x1, NULL
    // 0x78813c: r4 = 60
    //     0x78813c: movz            x4, #0x3c
    // 0x788140: branchIfSmi(r0, 0x78814c)
    //     0x788140: tbz             w0, #0, #0x78814c
    // 0x788144: r4 = LoadClassIdInstr(r0)
    //     0x788144: ldur            x4, [x0, #-1]
    //     0x788148: ubfx            x4, x4, #0xc, #0x14
    // 0x78814c: cmp             x4, #0x243
    // 0x788150: b.eq            #0x788168
    // 0x788154: r8 = vQa
    //     0x788154: add             x8, PP, #0x3b, lsl #12  ; [pp+0x3b270] Type: vQa
    //     0x788158: ldr             x8, [x8, #0x270]
    // 0x78815c: r3 = Null
    //     0x78815c: add             x3, PP, #0x3b, lsl #12  ; [pp+0x3b278] Null
    //     0x788160: ldr             x3, [x3, #0x278]
    // 0x788164: r0 = vQa()
    //     0x788164: bl              #0x788218  ; IsType_vQa_Stub
    // 0x788168: ldr             x1, [fp, #0x18]
    // 0x78816c: ldr             x2, [fp, #0x10]
    // 0x788170: r0 = call 0x43aacc
    //     0x788170: bl              #0x43aacc
    // 0x788174: LeaveFrame
    //     0x788174: mov             SP, fp
    //     0x788178: ldp             fp, lr, [SP], #0x10
    // 0x78817c: ret
    //     0x78817c: ret             
    // 0x788180: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x788180: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x788184: b               #0x788130
  }
  int dyn:get:_kAf(vQa) {
    // ** addr: 0x7881a0, size: 0x48
    // 0x7881a0: ldr             x1, [SP]
    // 0x7881a4: LoadField: r0 = r1->field_7
    //     0x7881a4: ldur            w0, [x1, #7]
    // 0x7881a8: DecompressPointer r0
    //     0x7881a8: add             x0, x0, HEAP, lsl #32
    // 0x7881ac: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7881b0: cmp             w0, w16
    // 0x7881b4: b.eq            #0x7881bc
    // 0x7881b8: ret
    //     0x7881b8: ret             
    // 0x7881bc: EnterFrame
    //     0x7881bc: stp             fp, lr, [SP, #-0x10]!
    //     0x7881c0: mov             fp, SP
    // 0x7881c4: r9 = _kAf
    //     0x7881c4: add             x9, PP, #0x14, lsl #12  ; [pp+0x14560] Field <vQa._kAf@815143242>: late (offset: 0x8)
    //     0x7881c8: ldr             x9, [x9, #0x560]
    // 0x7881cc: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7881cc: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  int dyn:get:_lAf(vQa) {
    // ** addr: 0x7881e8, size: 0x48
    // 0x7881e8: ldr             x1, [SP]
    // 0x7881ec: LoadField: r0 = r1->field_b
    //     0x7881ec: ldur            w0, [x1, #0xb]
    // 0x7881f0: DecompressPointer r0
    //     0x7881f0: add             x0, x0, HEAP, lsl #32
    // 0x7881f4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7881f8: cmp             w0, w16
    // 0x7881fc: b.eq            #0x788204
    // 0x788200: ret
    //     0x788200: ret             
    // 0x788204: EnterFrame
    //     0x788204: stp             fp, lr, [SP, #-0x10]!
    //     0x788208: mov             fp, SP
    // 0x78820c: r9 = _lAf
    //     0x78820c: add             x9, PP, #0x14, lsl #12  ; [pp+0x14568] Field <vQa._lAf@815143242>: late (offset: 0xc)
    //     0x788210: ldr             x9, [x9, #0x568]
    // 0x788214: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x788214: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

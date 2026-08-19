// lib: , url: bxi

// class id: 1048602, size: 0x8
class :: {
}

// class id: 5229, size: 0x14, field offset: 0xc
class OG extends Iterable<dynamic> {

  PG [](OG, int) {
    // ** addr: 0x7c76b0, size: 0xa8
    // 0x7c76b0: EnterFrame
    //     0x7c76b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7c76b4: mov             fp, SP
    // 0x7c76b8: ldr             x0, [fp, #0x10]
    // 0x7c76bc: r2 = Null
    //     0x7c76bc: mov             x2, NULL
    // 0x7c76c0: r1 = Null
    //     0x7c76c0: mov             x1, NULL
    // 0x7c76c4: branchIfSmi(r0, 0x7c76ec)
    //     0x7c76c4: tbz             w0, #0, #0x7c76ec
    // 0x7c76c8: r4 = LoadClassIdInstr(r0)
    //     0x7c76c8: ldur            x4, [x0, #-1]
    //     0x7c76cc: ubfx            x4, x4, #0xc, #0x14
    // 0x7c76d0: sub             x4, x4, #0x3c
    // 0x7c76d4: cmp             x4, #1
    // 0x7c76d8: b.ls            #0x7c76ec
    // 0x7c76dc: r8 = int
    //     0x7c76dc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7c76e0: r3 = Null
    //     0x7c76e0: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1cdc8] Null
    //     0x7c76e4: ldr             x3, [x3, #0xdc8]
    // 0x7c76e8: r0 = int()
    //     0x7c76e8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7c76ec: ldr             x2, [fp, #0x18]
    // 0x7c76f0: LoadField: r3 = r2->field_b
    //     0x7c76f0: ldur            w3, [x2, #0xb]
    // 0x7c76f4: DecompressPointer r3
    //     0x7c76f4: add             x3, x3, HEAP, lsl #32
    // 0x7c76f8: LoadField: r2 = r3->field_b
    //     0x7c76f8: ldur            w2, [x3, #0xb]
    // 0x7c76fc: ldr             x4, [fp, #0x10]
    // 0x7c7700: r5 = LoadInt32Instr(r4)
    //     0x7c7700: sbfx            x5, x4, #1, #0x1f
    //     0x7c7704: tbz             w4, #0, #0x7c770c
    //     0x7c7708: ldur            x5, [x4, #7]
    // 0x7c770c: r0 = LoadInt32Instr(r2)
    //     0x7c770c: sbfx            x0, x2, #1, #0x1f
    // 0x7c7710: mov             x1, x5
    // 0x7c7714: cmp             x1, x0
    // 0x7c7718: b.hs            #0x7c773c
    // 0x7c771c: LoadField: r1 = r3->field_f
    //     0x7c771c: ldur            w1, [x3, #0xf]
    // 0x7c7720: DecompressPointer r1
    //     0x7c7720: add             x1, x1, HEAP, lsl #32
    // 0x7c7724: ArrayLoad: r0 = r1[r5]  ; Unknown_4
    //     0x7c7724: add             x16, x1, x5, lsl #2
    //     0x7c7728: ldur            w0, [x16, #0xf]
    // 0x7c772c: DecompressPointer r0
    //     0x7c772c: add             x0, x0, HEAP, lsl #32
    // 0x7c7730: LeaveFrame
    //     0x7c7730: mov             SP, fp
    //     0x7c7734: ldp             fp, lr, [SP], #0x10
    // 0x7c7738: ret
    //     0x7c7738: ret             
    // 0x7c773c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7c773c: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
}

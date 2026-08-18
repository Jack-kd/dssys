// lib: , url: wxi

// class id: 1048623, size: 0x8
class :: {
}

// class id: 2226, size: 0x1c, field offset: 0xc
class CH extends DH {

  late int _Rrb; // offset: 0x18

  int [](CH, int) {
    // ** addr: 0x7c74f8, size: 0xb4
    // 0x7c74f8: EnterFrame
    //     0x7c74f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7c74fc: mov             fp, SP
    // 0x7c7500: ldr             x0, [fp, #0x10]
    // 0x7c7504: r2 = Null
    //     0x7c7504: mov             x2, NULL
    // 0x7c7508: r1 = Null
    //     0x7c7508: mov             x1, NULL
    // 0x7c750c: branchIfSmi(r0, 0x7c7534)
    //     0x7c750c: tbz             w0, #0, #0x7c7534
    // 0x7c7510: r4 = LoadClassIdInstr(r0)
    //     0x7c7510: ldur            x4, [x0, #-1]
    //     0x7c7514: ubfx            x4, x4, #0xc, #0x14
    // 0x7c7518: sub             x4, x4, #0x3c
    // 0x7c751c: cmp             x4, #1
    // 0x7c7520: b.ls            #0x7c7534
    // 0x7c7524: r8 = int
    //     0x7c7524: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7c7528: r3 = Null
    //     0x7c7528: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1cdb0] Null
    //     0x7c752c: ldr             x3, [x3, #0xdb0]
    // 0x7c7530: r0 = int()
    //     0x7c7530: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7c7534: ldr             x2, [fp, #0x18]
    // 0x7c7538: LoadField: r3 = r2->field_b
    //     0x7c7538: ldur            w3, [x2, #0xb]
    // 0x7c753c: DecompressPointer r3
    //     0x7c753c: add             x3, x3, HEAP, lsl #32
    // 0x7c7540: cmp             w3, NULL
    // 0x7c7544: b.eq            #0x7c758c
    // 0x7c7548: LoadField: r4 = r2->field_f
    //     0x7c7548: ldur            x4, [x2, #0xf]
    // 0x7c754c: ldr             x2, [fp, #0x10]
    // 0x7c7550: r5 = LoadInt32Instr(r2)
    //     0x7c7550: sbfx            x5, x2, #1, #0x1f
    //     0x7c7554: tbz             w2, #0, #0x7c755c
    //     0x7c7558: ldur            x5, [x2, #7]
    // 0x7c755c: add             x2, x4, x5
    // 0x7c7560: LoadField: r4 = r3->field_13
    //     0x7c7560: ldur            w4, [x3, #0x13]
    // 0x7c7564: r0 = LoadInt32Instr(r4)
    //     0x7c7564: sbfx            x0, x4, #1, #0x1f
    // 0x7c7568: mov             x1, x2
    // 0x7c756c: cmp             x1, x0
    // 0x7c7570: b.hs            #0x7c7590
    // 0x7c7574: LoadField: r1 = r3->field_7
    //     0x7c7574: ldur            x1, [x3, #7]
    // 0x7c7578: ldrb            w3, [x1, x2]
    // 0x7c757c: lsl             x0, x3, #1
    // 0x7c7580: LeaveFrame
    //     0x7c7580: mov             SP, fp
    //     0x7c7584: ldp             fp, lr, [SP], #0x10
    // 0x7c7588: ret
    //     0x7c7588: ret             
    // 0x7c758c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7c758c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7c7590: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7c7590: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
}

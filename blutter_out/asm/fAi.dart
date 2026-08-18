// lib: , url: fAi

// class id: 1048771, size: 0x8
class :: {

  [closure] static void <anonymous closure>(dynamic, List<int>) {
    // ** addr: 0x7a3394, size: 0x1b0
    // 0x7a3394: EnterFrame
    //     0x7a3394: stp             fp, lr, [SP, #-0x10]!
    //     0x7a3398: mov             fp, SP
    // 0x7a339c: AllocStack(0x68)
    //     0x7a339c: sub             SP, SP, #0x68
    // 0x7a33a0: SetupParameters([dynamic _ /* r0 */])
    //     0x7a33a0: ldr             x0, [fp, #0x18]
    //     0x7a33a4: ldur            w3, [x0, #0x17]
    //     0x7a33a8: add             x3, x3, HEAP, lsl #32
    //     0x7a33ac: stur            x3, [fp, #-0x48]
    // 0x7a33b0: CheckStackOverflow
    //     0x7a33b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a33b4: cmp             SP, x16
    //     0x7a33b8: b.ls            #0x7a3538
    // 0x7a33bc: LoadField: r1 = r3->field_1b
    //     0x7a33bc: ldur            w1, [x3, #0x1b]
    // 0x7a33c0: DecompressPointer r1
    //     0x7a33c0: add             x1, x1, HEAP, lsl #32
    // 0x7a33c4: r0 = LoadClassIdInstr(r1)
    //     0x7a33c4: ldur            x0, [x1, #-1]
    //     0x7a33c8: ubfx            x0, x0, #0xc, #0x14
    // 0x7a33cc: ldr             x2, [fp, #0x10]
    // 0x7a33d0: r0 = GDT[cid_x0 + -0x2f]()
    //     0x7a33d0: sub             lr, x0, #0x2f
    //     0x7a33d4: ldr             lr, [x21, lr, lsl #3]
    //     0x7a33d8: blr             lr
    // 0x7a33dc: ldur            x1, [fp, #-0x48]
    // 0x7a33e0: LoadField: r0 = r1->field_f
    //     0x7a33e0: ldur            w0, [x1, #0xf]
    // 0x7a33e4: DecompressPointer r0
    //     0x7a33e4: add             x0, x0, HEAP, lsl #32
    // 0x7a33e8: cmp             w0, NULL
    // 0x7a33ec: b.eq            #0x7a3514
    // 0x7a33f0: ldr             x0, [fp, #0x10]
    // 0x7a33f4: LoadField: r2 = r1->field_23
    //     0x7a33f4: ldur            w2, [x1, #0x23]
    // 0x7a33f8: DecompressPointer r2
    //     0x7a33f8: add             x2, x2, HEAP, lsl #32
    // 0x7a33fc: stur            x2, [fp, #-0x50]
    // 0x7a3400: r3 = LoadClassIdInstr(r0)
    //     0x7a3400: ldur            x3, [x0, #-1]
    //     0x7a3404: ubfx            x3, x3, #0xc, #0x14
    // 0x7a3408: str             x0, [SP]
    // 0x7a340c: mov             x0, x3
    // 0x7a3410: r0 = GDT[cid_x0 + 0xe8d]()
    //     0x7a3410: add             lr, x0, #0xe8d
    //     0x7a3414: ldr             lr, [x21, lr, lsl #3]
    //     0x7a3418: blr             lr
    // 0x7a341c: mov             x1, x0
    // 0x7a3420: ldur            x0, [fp, #-0x50]
    // 0x7a3424: r2 = LoadInt32Instr(r0)
    //     0x7a3424: sbfx            x2, x0, #1, #0x1f
    //     0x7a3428: tbz             w0, #0, #0x7a3430
    //     0x7a342c: ldur            x2, [x0, #7]
    // 0x7a3430: r0 = LoadInt32Instr(r1)
    //     0x7a3430: sbfx            x0, x1, #1, #0x1f
    //     0x7a3434: tbz             w1, #0, #0x7a343c
    //     0x7a3438: ldur            x0, [x1, #7]
    // 0x7a343c: add             x3, x2, x0
    // 0x7a3440: r0 = BoxInt64Instr(r3)
    //     0x7a3440: sbfiz           x0, x3, #1, #0x1f
    //     0x7a3444: cmp             x3, x0, asr #1
    //     0x7a3448: b.eq            #0x7a3454
    //     0x7a344c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7a3450: stur            x3, [x0, #7]
    // 0x7a3454: mov             x2, x0
    // 0x7a3458: ldur            x1, [fp, #-0x48]
    // 0x7a345c: StoreField: r1->field_23 = r0
    //     0x7a345c: stur            w0, [x1, #0x23]
    //     0x7a3460: tbz             w0, #0, #0x7a347c
    //     0x7a3464: ldurb           w16, [x1, #-1]
    //     0x7a3468: ldurb           w17, [x0, #-1]
    //     0x7a346c: and             x16, x17, x16, lsr #2
    //     0x7a3470: tst             x16, HEAP, lsr #32
    //     0x7a3474: b.eq            #0x7a347c
    //     0x7a3478: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7a347c: LoadField: r3 = r1->field_f
    //     0x7a347c: ldur            w3, [x1, #0xf]
    // 0x7a3480: DecompressPointer r3
    //     0x7a3480: add             x3, x3, HEAP, lsl #32
    // 0x7a3484: stur            x3, [fp, #-0x50]
    // 0x7a3488: LoadField: r0 = r1->field_1f
    //     0x7a3488: ldur            w0, [x1, #0x1f]
    // 0x7a348c: DecompressPointer r0
    //     0x7a348c: add             x0, x0, HEAP, lsl #32
    // 0x7a3490: cmp             w3, NULL
    // 0x7a3494: b.eq            #0x7a3540
    // 0x7a3498: stp             x2, x3, [SP, #8]
    // 0x7a349c: str             x0, [SP]
    // 0x7a34a0: mov             x0, x3
    // 0x7a34a4: ClosureCall
    //     0x7a34a4: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7a34a8: ldur            x2, [x0, #0x1f]
    //     0x7a34ac: blr             x2
    // 0x7a34b0: b               #0x7a3514
    // 0x7a34b4: sub             SP, fp, #0x68
    // 0x7a34b8: ldur            x3, [fp, #-0x48]
    // 0x7a34bc: mov             x2, x0
    // 0x7a34c0: LoadField: r0 = r3->field_13
    //     0x7a34c0: ldur            w0, [x3, #0x13]
    // 0x7a34c4: DecompressPointer r0
    //     0x7a34c4: add             x0, x0, HEAP, lsl #32
    // 0x7a34c8: str             x1, [SP]
    // 0x7a34cc: mov             x1, x0
    // 0x7a34d0: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7a34d0: ldr             x4, [PP, #0x508]  ; [pp+0x508] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7a34d4: r0 = call 0x24313c
    //     0x7a34d4: bl              #0x24313c
    // 0x7a34d8: ldur            x0, [fp, #-0x48]
    // 0x7a34dc: LoadField: r1 = r0->field_27
    //     0x7a34dc: ldur            w1, [x0, #0x27]
    // 0x7a34e0: DecompressPointer r1
    //     0x7a34e0: add             x1, x1, HEAP, lsl #32
    // 0x7a34e4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a34e8: cmp             w1, w16
    // 0x7a34ec: b.eq            #0x7a3524
    // 0x7a34f0: r0 = LoadClassIdInstr(r1)
    //     0x7a34f0: ldur            x0, [x1, #-1]
    //     0x7a34f4: ubfx            x0, x0, #0xc, #0x14
    // 0x7a34f8: mov             lr, x0
    // 0x7a34fc: ldr             lr, [x21, lr, lsl #3]
    // 0x7a3500: blr             lr
    // 0x7a3504: r0 = Null
    //     0x7a3504: mov             x0, NULL
    // 0x7a3508: LeaveFrame
    //     0x7a3508: mov             SP, fp
    //     0x7a350c: ldp             fp, lr, [SP], #0x10
    // 0x7a3510: ret
    //     0x7a3510: ret             
    // 0x7a3514: r0 = Null
    //     0x7a3514: mov             x0, NULL
    // 0x7a3518: LeaveFrame
    //     0x7a3518: mov             SP, fp
    //     0x7a351c: ldp             fp, lr, [SP], #0x10
    // 0x7a3520: ret
    //     0x7a3520: ret             
    // 0x7a3524: r16 = "Lzb"
    //     0x7a3524: add             x16, PP, #0x10, lsl #12  ; [pp+0x107b0] "Lzb"
    //     0x7a3528: ldr             x16, [x16, #0x7b0]
    // 0x7a352c: str             x16, [SP]
    // 0x7a3530: r0 = _throwLocalNotInitialized()
    //     0x7a3530: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7a3534: brk             #0
    // 0x7a3538: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a3538: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a353c: b               #0x7a33bc
    // 0x7a3540: r0 = NullErrorSharedWithoutFPURegs()
    //     0x7a3540: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x4bfcf8, size: -0x1
  }
}

// class id: 4924, size: 0x18, field offset: 0x8
class _hP extends df {

  [closure] void add(dynamic, Object?) {
    // ** addr: 0x5d5904, size: -0x1
  }
}

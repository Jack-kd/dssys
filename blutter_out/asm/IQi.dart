// lib: , url: IQi

// class id: 1049710, size: 0x8
class :: {
}

// class id: 3411, size: 0x18, field offset: 0x14
class _FYa extends lr<dynamic> {

  late final IUa _Vwb; // offset: 0x14

  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x7ae530, size: 0xe4
    // 0x7ae530: EnterFrame
    //     0x7ae530: stp             fp, lr, [SP, #-0x10]!
    //     0x7ae534: mov             fp, SP
    // 0x7ae538: AllocStack(0x48)
    //     0x7ae538: sub             SP, SP, #0x48
    // 0x7ae53c: SetupParameters([dynamic _ /* r0 */])
    //     0x7ae53c: ldr             x0, [fp, #0x18]
    //     0x7ae540: ldur            w3, [x0, #0x17]
    //     0x7ae544: add             x3, x3, HEAP, lsl #32
    //     0x7ae548: stur            x3, [fp, #-0x48]
    // 0x7ae54c: CheckStackOverflow
    //     0x7ae54c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ae550: cmp             SP, x16
    //     0x7ae554: b.ls            #0x7ae5f4
    // 0x7ae558: LoadField: r0 = r3->field_f
    //     0x7ae558: ldur            w0, [x3, #0xf]
    // 0x7ae55c: DecompressPointer r0
    //     0x7ae55c: add             x0, x0, HEAP, lsl #32
    // 0x7ae560: LoadField: r1 = r0->field_f
    //     0x7ae560: ldur            w1, [x0, #0xf]
    // 0x7ae564: DecompressPointer r1
    //     0x7ae564: add             x1, x1, HEAP, lsl #32
    // 0x7ae568: cmp             w1, NULL
    // 0x7ae56c: b.ne            #0x7ae580
    // 0x7ae570: r0 = Null
    //     0x7ae570: mov             x0, NULL
    // 0x7ae574: LeaveFrame
    //     0x7ae574: mov             SP, fp
    //     0x7ae578: ldp             fp, lr, [SP], #0x10
    // 0x7ae57c: ret
    //     0x7ae57c: ret             
    // 0x7ae580: LoadField: r1 = r0->field_13
    //     0x7ae580: ldur            w1, [x0, #0x13]
    // 0x7ae584: DecompressPointer r1
    //     0x7ae584: add             x1, x1, HEAP, lsl #32
    // 0x7ae588: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ae58c: cmp             w1, w16
    // 0x7ae590: b.eq            #0x7ae5fc
    // 0x7ae594: LoadField: r2 = r3->field_13
    //     0x7ae594: ldur            w2, [x3, #0x13]
    // 0x7ae598: DecompressPointer r2
    //     0x7ae598: add             x2, x2, HEAP, lsl #32
    // 0x7ae59c: r0 = call 0x519ee0
    //     0x7ae59c: bl              #0x519ee0
    // 0x7ae5a0: b               #0x7ae5e4
    // 0x7ae5a4: sub             SP, fp, #0x48
    // 0x7ae5a8: ldur            x2, [fp, #-0x48]
    // 0x7ae5ac: LoadField: r0 = r2->field_f
    //     0x7ae5ac: ldur            w0, [x2, #0xf]
    // 0x7ae5b0: DecompressPointer r0
    //     0x7ae5b0: add             x0, x0, HEAP, lsl #32
    // 0x7ae5b4: LoadField: r1 = r0->field_13
    //     0x7ae5b4: ldur            w1, [x0, #0x13]
    // 0x7ae5b8: DecompressPointer r1
    //     0x7ae5b8: add             x1, x1, HEAP, lsl #32
    // 0x7ae5bc: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ae5c0: cmp             w1, w16
    // 0x7ae5c4: b.eq            #0x7ae608
    // 0x7ae5c8: LoadField: r0 = r1->field_7
    //     0x7ae5c8: ldur            w0, [x1, #7]
    // 0x7ae5cc: DecompressPointer r0
    //     0x7ae5cc: add             x0, x0, HEAP, lsl #32
    // 0x7ae5d0: LoadField: r1 = r2->field_13
    //     0x7ae5d0: ldur            w1, [x2, #0x13]
    // 0x7ae5d4: DecompressPointer r1
    //     0x7ae5d4: add             x1, x1, HEAP, lsl #32
    // 0x7ae5d8: mov             x2, x1
    // 0x7ae5dc: mov             x1, x0
    // 0x7ae5e0: r0 = call 0x519e74
    //     0x7ae5e0: bl              #0x519e74
    // 0x7ae5e4: r0 = Null
    //     0x7ae5e4: mov             x0, NULL
    // 0x7ae5e8: LeaveFrame
    //     0x7ae5e8: mov             SP, fp
    //     0x7ae5ec: ldp             fp, lr, [SP], #0x10
    // 0x7ae5f0: ret
    //     0x7ae5f0: ret             
    // 0x7ae5f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ae5f4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ae5f8: b               #0x7ae558
    // 0x7ae5fc: r9 = _Vwb
    //     0x7ae5fc: add             x9, PP, #0x24, lsl #12  ; [pp+0x24fb0] Field <_FYa@1153164205._Vwb@1153164205>: late final (offset: 0x14)
    //     0x7ae600: ldr             x9, [x9, #0xfb0]
    // 0x7ae604: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7ae604: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x7ae608: r9 = _Vwb
    //     0x7ae608: add             x9, PP, #0x24, lsl #12  ; [pp+0x24fb0] Field <_FYa@1153164205._Vwb@1153164205>: late final (offset: 0x14)
    //     0x7ae60c: ldr             x9, [x9, #0xfb0]
    // 0x7ae610: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7ae610: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, aVa) {
    // ** addr: 0x5158a0, size: -0x1
  }
}

// class id: 3824, size: 0x28, field offset: 0xc
//   const constructor, 
class EYa extends oI {
}

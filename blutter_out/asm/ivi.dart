// lib: , url: ivi

// class id: 1049709, size: 0x8
class :: {
}

// class id: 3545, size: 0x20, field offset: 0x18
class _DYa extends _Fy {

  late final IUa _Vwb; // offset: 0x18

  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x7ae30c, size: 0xe4
    // 0x7ae30c: EnterFrame
    //     0x7ae30c: stp             fp, lr, [SP, #-0x10]!
    //     0x7ae310: mov             fp, SP
    // 0x7ae314: AllocStack(0x48)
    //     0x7ae314: sub             SP, SP, #0x48
    // 0x7ae318: SetupParameters([dynamic _ /* r0 */])
    //     0x7ae318: ldr             x0, [fp, #0x18]
    //     0x7ae31c: ldur            w3, [x0, #0x17]
    //     0x7ae320: add             x3, x3, HEAP, lsl #32
    //     0x7ae324: stur            x3, [fp, #-0x48]
    // 0x7ae328: CheckStackOverflow
    //     0x7ae328: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ae32c: cmp             SP, x16
    //     0x7ae330: b.ls            #0x7ae3d0
    // 0x7ae334: LoadField: r0 = r3->field_f
    //     0x7ae334: ldur            w0, [x3, #0xf]
    // 0x7ae338: DecompressPointer r0
    //     0x7ae338: add             x0, x0, HEAP, lsl #32
    // 0x7ae33c: LoadField: r1 = r0->field_f
    //     0x7ae33c: ldur            w1, [x0, #0xf]
    // 0x7ae340: DecompressPointer r1
    //     0x7ae340: add             x1, x1, HEAP, lsl #32
    // 0x7ae344: cmp             w1, NULL
    // 0x7ae348: b.ne            #0x7ae35c
    // 0x7ae34c: r0 = Null
    //     0x7ae34c: mov             x0, NULL
    // 0x7ae350: LeaveFrame
    //     0x7ae350: mov             SP, fp
    //     0x7ae354: ldp             fp, lr, [SP], #0x10
    // 0x7ae358: ret
    //     0x7ae358: ret             
    // 0x7ae35c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7ae35c: ldur            w1, [x0, #0x17]
    // 0x7ae360: DecompressPointer r1
    //     0x7ae360: add             x1, x1, HEAP, lsl #32
    // 0x7ae364: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ae368: cmp             w1, w16
    // 0x7ae36c: b.eq            #0x7ae3d8
    // 0x7ae370: LoadField: r2 = r3->field_13
    //     0x7ae370: ldur            w2, [x3, #0x13]
    // 0x7ae374: DecompressPointer r2
    //     0x7ae374: add             x2, x2, HEAP, lsl #32
    // 0x7ae378: r0 = call 0x519ee0
    //     0x7ae378: bl              #0x519ee0
    // 0x7ae37c: b               #0x7ae3c0
    // 0x7ae380: sub             SP, fp, #0x48
    // 0x7ae384: ldur            x2, [fp, #-0x48]
    // 0x7ae388: LoadField: r0 = r2->field_f
    //     0x7ae388: ldur            w0, [x2, #0xf]
    // 0x7ae38c: DecompressPointer r0
    //     0x7ae38c: add             x0, x0, HEAP, lsl #32
    // 0x7ae390: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7ae390: ldur            w1, [x0, #0x17]
    // 0x7ae394: DecompressPointer r1
    //     0x7ae394: add             x1, x1, HEAP, lsl #32
    // 0x7ae398: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ae39c: cmp             w1, w16
    // 0x7ae3a0: b.eq            #0x7ae3e4
    // 0x7ae3a4: LoadField: r0 = r1->field_7
    //     0x7ae3a4: ldur            w0, [x1, #7]
    // 0x7ae3a8: DecompressPointer r0
    //     0x7ae3a8: add             x0, x0, HEAP, lsl #32
    // 0x7ae3ac: LoadField: r1 = r2->field_13
    //     0x7ae3ac: ldur            w1, [x2, #0x13]
    // 0x7ae3b0: DecompressPointer r1
    //     0x7ae3b0: add             x1, x1, HEAP, lsl #32
    // 0x7ae3b4: mov             x2, x1
    // 0x7ae3b8: mov             x1, x0
    // 0x7ae3bc: r0 = call 0x519e74
    //     0x7ae3bc: bl              #0x519e74
    // 0x7ae3c0: r0 = Null
    //     0x7ae3c0: mov             x0, NULL
    // 0x7ae3c4: LeaveFrame
    //     0x7ae3c4: mov             SP, fp
    //     0x7ae3c8: ldp             fp, lr, [SP], #0x10
    // 0x7ae3cc: ret
    //     0x7ae3cc: ret             
    // 0x7ae3d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ae3d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ae3d4: b               #0x7ae334
    // 0x7ae3d8: r9 = _Vwb
    //     0x7ae3d8: add             x9, PP, #0x22, lsl #12  ; [pp+0x22d18] Field <_DYa@225009106._Vwb@225009106>: late final (offset: 0x18)
    //     0x7ae3dc: ldr             x9, [x9, #0xd18]
    // 0x7ae3e0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7ae3e0: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x7ae3e4: r9 = _Vwb
    //     0x7ae3e4: add             x9, PP, #0x22, lsl #12  ; [pp+0x22d18] Field <_DYa@225009106._Vwb@225009106>: late final (offset: 0x18)
    //     0x7ae3e8: ldr             x9, [x9, #0xd18]
    // 0x7ae3ec: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7ae3ec: bl              #0x7ded40  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, int) {
    // ** addr: 0x50fb40, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x50fb78, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, aVa) {
    // ** addr: 0x50fa74, size: -0x1
  }
  [closure] oWa <anonymous closure>(dynamic, pWa) {
    // ** addr: 0x50fa1c, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x50fc00, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x50fc8c, size: -0x1
  }
}

// class id: 3825, size: 0x3c, field offset: 0xc
//   const constructor, 
class Gy extends oI {
}

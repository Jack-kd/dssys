// lib: , url: YRi

// class id: 1049779, size: 0x8
class :: {
}

// class id: 3661, size: 0x24, field offset: 0x18
class _cab extends Vt<dynamic> {

  late final tZa _zmg; // offset: 0x20

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78e6a0, size: 0x68
    // 0x78e6a0: EnterFrame
    //     0x78e6a0: stp             fp, lr, [SP, #-0x10]!
    //     0x78e6a4: mov             fp, SP
    // 0x78e6a8: AllocStack(0x20)
    //     0x78e6a8: sub             SP, SP, #0x20
    // 0x78e6ac: SetupParameters(_cab this /* r1 */)
    //     0x78e6ac: stur            NULL, [fp, #-8]
    //     0x78e6b0: movz            x0, #0
    //     0x78e6b4: add             x1, fp, w0, sxtw #2
    //     0x78e6b8: ldr             x1, [x1, #0x10]
    //     0x78e6bc: ldur            w2, [x1, #0x17]
    //     0x78e6c0: add             x2, x2, HEAP, lsl #32
    //     0x78e6c4: stur            x2, [fp, #-0x10]
    // 0x78e6c8: CheckStackOverflow
    //     0x78e6c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78e6cc: cmp             SP, x16
    //     0x78e6d0: b.ls            #0x78e700
    // 0x78e6d4: InitAsync() -> Future<void?>
    //     0x78e6d4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78e6d8: bl              #0x74ada8  ; InitAsyncStub
    // 0x78e6dc: ldur            x0, [fp, #-0x10]
    // 0x78e6e0: LoadField: r1 = r0->field_13
    //     0x78e6e0: ldur            w1, [x0, #0x13]
    // 0x78e6e4: DecompressPointer r1
    //     0x78e6e4: add             x1, x1, HEAP, lsl #32
    // 0x78e6e8: r16 = <Object?>
    //     0x78e6e8: ldr             x16, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x78e6ec: stp             x1, x16, [SP]
    // 0x78e6f0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x78e6f0: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x78e6f4: r0 = call 0x464ca0
    //     0x78e6f4: bl              #0x464ca0
    // 0x78e6f8: r0 = Null
    //     0x78e6f8: mov             x0, NULL
    // 0x78e6fc: r0 = ReturnAsyncNotFuture()
    //     0x78e6fc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e700: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78e700: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78e704: b               #0x78e6d4
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78e708, size: 0x230
    // 0x78e708: EnterFrame
    //     0x78e708: stp             fp, lr, [SP, #-0x10]!
    //     0x78e70c: mov             fp, SP
    // 0x78e710: AllocStack(0x48)
    //     0x78e710: sub             SP, SP, #0x48
    // 0x78e714: SetupParameters(_cab this /* r1 */)
    //     0x78e714: stur            NULL, [fp, #-8]
    //     0x78e718: movz            x0, #0
    //     0x78e71c: add             x1, fp, w0, sxtw #2
    //     0x78e720: ldr             x1, [x1, #0x10]
    //     0x78e724: ldur            w2, [x1, #0x17]
    //     0x78e728: add             x2, x2, HEAP, lsl #32
    //     0x78e72c: stur            x2, [fp, #-0x10]
    // 0x78e730: CheckStackOverflow
    //     0x78e730: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78e734: cmp             SP, x16
    //     0x78e738: b.ls            #0x78e930
    // 0x78e73c: InitAsync() -> Future<void?>
    //     0x78e73c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78e740: bl              #0x74ada8  ; InitAsyncStub
    // 0x78e744: ldur            x0, [fp, #-0x10]
    // 0x78e748: LoadField: r1 = r0->field_f
    //     0x78e748: ldur            w1, [x0, #0xf]
    // 0x78e74c: DecompressPointer r1
    //     0x78e74c: add             x1, x1, HEAP, lsl #32
    // 0x78e750: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x78e750: ldur            w2, [x1, #0x17]
    // 0x78e754: DecompressPointer r2
    //     0x78e754: add             x2, x2, HEAP, lsl #32
    // 0x78e758: LoadField: r3 = r2->field_27
    //     0x78e758: ldur            w3, [x2, #0x27]
    // 0x78e75c: DecompressPointer r3
    //     0x78e75c: add             x3, x3, HEAP, lsl #32
    // 0x78e760: LoadField: r2 = r3->field_7
    //     0x78e760: ldur            w2, [x3, #7]
    // 0x78e764: DecompressPointer r2
    //     0x78e764: add             x2, x2, HEAP, lsl #32
    // 0x78e768: stur            x2, [fp, #-0x20]
    // 0x78e76c: LoadField: r3 = r1->field_1b
    //     0x78e76c: ldur            w3, [x1, #0x1b]
    // 0x78e770: DecompressPointer r3
    //     0x78e770: add             x3, x3, HEAP, lsl #32
    // 0x78e774: LoadField: r1 = r3->field_27
    //     0x78e774: ldur            w1, [x3, #0x27]
    // 0x78e778: DecompressPointer r1
    //     0x78e778: add             x1, x1, HEAP, lsl #32
    // 0x78e77c: LoadField: r3 = r1->field_7
    //     0x78e77c: ldur            w3, [x1, #7]
    // 0x78e780: DecompressPointer r3
    //     0x78e780: add             x3, x3, HEAP, lsl #32
    // 0x78e784: mov             x1, x2
    // 0x78e788: stur            x3, [fp, #-0x18]
    // 0x78e78c: r0 = call 0x3b4da8
    //     0x78e78c: bl              #0x3b4da8
    // 0x78e790: tbnz            w0, #4, #0x78e7b4
    // 0x78e794: r1 = "8c28432b60cf800963f9576f960b43f980bf4589"
    //     0x78e794: add             x1, PP, #0x34, lsl #12  ; [pp+0x345e8] "8c28432b60cf800963f9576f960b43f980bf4589"
    //     0x78e798: ldr             x1, [x1, #0x5e8]
    // 0x78e79c: r0 = call 0x46ae4c
    //     0x78e79c: bl              #0x46ae4c
    // 0x78e7a0: mov             x1, x0
    // 0x78e7a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e7a4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e7a8: r0 = call 0x3a5cc4
    //     0x78e7a8: bl              #0x3a5cc4
    // 0x78e7ac: r0 = Null
    //     0x78e7ac: mov             x0, NULL
    // 0x78e7b0: r0 = ReturnAsyncNotFuture()
    //     0x78e7b0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e7b4: ldur            x1, [fp, #-0x18]
    // 0x78e7b8: r0 = call 0x3b4da8
    //     0x78e7b8: bl              #0x3b4da8
    // 0x78e7bc: tbnz            w0, #4, #0x78e7e0
    // 0x78e7c0: r1 = "d181a74c290aa3cd0d5dc85009477d1794"
    //     0x78e7c0: add             x1, PP, #0x34, lsl #12  ; [pp+0x345f0] "d181a74c290aa3cd0d5dc85009477d1794"
    //     0x78e7c4: ldr             x1, [x1, #0x5f0]
    // 0x78e7c8: r0 = call 0x46ae4c
    //     0x78e7c8: bl              #0x46ae4c
    // 0x78e7cc: mov             x1, x0
    // 0x78e7d0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e7d0: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e7d4: r0 = call 0x3a5cc4
    //     0x78e7d4: bl              #0x3a5cc4
    // 0x78e7d8: r0 = Null
    //     0x78e7d8: mov             x0, NULL
    // 0x78e7dc: r0 = ReturnAsyncNotFuture()
    //     0x78e7dc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e7e0: ldur            x0, [fp, #-0x10]
    // 0x78e7e4: ldur            x3, [fp, #-0x20]
    // 0x78e7e8: r0 = call 0x44df3c
    //     0x78e7e8: bl              #0x44df3c
    // 0x78e7ec: ldur            x0, [fp, #-0x10]
    // 0x78e7f0: LoadField: r1 = r0->field_13
    //     0x78e7f0: ldur            w1, [x0, #0x13]
    // 0x78e7f4: DecompressPointer r1
    //     0x78e7f4: add             x1, x1, HEAP, lsl #32
    // 0x78e7f8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e7f8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e7fc: r0 = call 0x368364
    //     0x78e7fc: bl              #0x368364
    // 0x78e800: mov             x2, x0
    // 0x78e804: ldur            x0, [fp, #-0x10]
    // 0x78e808: stur            x2, [fp, #-0x28]
    // 0x78e80c: LoadField: r1 = r0->field_f
    //     0x78e80c: ldur            w1, [x0, #0xf]
    // 0x78e810: DecompressPointer r1
    //     0x78e810: add             x1, x1, HEAP, lsl #32
    // 0x78e814: LoadField: r0 = r1->field_1f
    //     0x78e814: ldur            w0, [x1, #0x1f]
    // 0x78e818: DecompressPointer r0
    //     0x78e818: add             x0, x0, HEAP, lsl #32
    // 0x78e81c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78e820: cmp             w0, w16
    // 0x78e824: b.ne            #0x78e834
    // 0x78e828: r2 = _zmg
    //     0x78e828: add             x2, PP, #0x34, lsl #12  ; [pp+0x345f8] Field <_cab@1220454510._zmg@1220454510>: late final (offset: 0x20)
    //     0x78e82c: ldr             x2, [x2, #0x5f8]
    // 0x78e830: r0 = InitLateFinalInstanceField()
    //     0x78e830: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x78e834: mov             x1, x0
    // 0x78e838: ldur            x2, [fp, #-0x18]
    // 0x78e83c: ldur            x3, [fp, #-0x20]
    // 0x78e840: r0 = __unknown_function__()
    //     0x78e840: bl              #0x78e938  ; [] ::__unknown_function__
    // 0x78e844: mov             x1, x0
    // 0x78e848: stur            x1, [fp, #-0x30]
    // 0x78e84c: r0 = Await()
    //     0x78e84c: bl              #0x74ab64  ; AwaitStub
    // 0x78e850: r1 = "892231ae69f619343d90ad3a1dea"
    //     0x78e850: add             x1, PP, #0x34, lsl #12  ; [pp+0x34600] "892231ae69f619343d90ad3a1dea"
    //     0x78e854: ldr             x1, [x1, #0x600]
    // 0x78e858: r0 = call 0x46ae4c
    //     0x78e858: bl              #0x46ae4c
    // 0x78e85c: mov             x1, x0
    // 0x78e860: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e860: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e864: r0 = call 0x3a5cc4
    //     0x78e864: bl              #0x3a5cc4
    // 0x78e868: r1 = "76f8a4ead0d21ff58e2e"
    //     0x78e868: add             x1, PP, #0x34, lsl #12  ; [pp+0x34608] "76f8a4ead0d21ff58e2e"
    //     0x78e86c: ldr             x1, [x1, #0x608]
    // 0x78e870: r0 = call 0x46ae4c
    //     0x78e870: bl              #0x46ae4c
    // 0x78e874: r1 = Null
    //     0x78e874: mov             x1, NULL
    // 0x78e878: r2 = 8
    //     0x78e878: movz            x2, #0x8
    // 0x78e87c: stur            x0, [fp, #-0x10]
    // 0x78e880: r0 = AllocateArray()
    //     0x78e880: bl              #0x7de31c  ; AllocateArrayStub
    // 0x78e884: mov             x2, x0
    // 0x78e888: ldur            x0, [fp, #-0x10]
    // 0x78e88c: stur            x2, [fp, #-0x30]
    // 0x78e890: StoreField: r2->field_f = r0
    //     0x78e890: stur            w0, [x2, #0xf]
    // 0x78e894: ldur            x0, [fp, #-0x20]
    // 0x78e898: StoreField: r2->field_13 = r0
    //     0x78e898: stur            w0, [x2, #0x13]
    // 0x78e89c: r1 = "853d02652f0adbcf0650"
    //     0x78e89c: add             x1, PP, #0x34, lsl #12  ; [pp+0x34610] "853d02652f0adbcf0650"
    //     0x78e8a0: ldr             x1, [x1, #0x610]
    // 0x78e8a4: r0 = call 0x46ae4c
    //     0x78e8a4: bl              #0x46ae4c
    // 0x78e8a8: ldur            x1, [fp, #-0x30]
    // 0x78e8ac: ArrayStore: r1[2] = r0  ; List_4
    //     0x78e8ac: add             x25, x1, #0x17
    //     0x78e8b0: str             w0, [x25]
    //     0x78e8b4: tbz             w0, #0, #0x78e8d0
    //     0x78e8b8: ldurb           w16, [x1, #-1]
    //     0x78e8bc: ldurb           w17, [x0, #-1]
    //     0x78e8c0: and             x16, x17, x16, lsr #2
    //     0x78e8c4: tst             x16, HEAP, lsr #32
    //     0x78e8c8: b.eq            #0x78e8d0
    //     0x78e8cc: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x78e8d0: ldur            x1, [fp, #-0x30]
    // 0x78e8d4: ldur            x0, [fp, #-0x18]
    // 0x78e8d8: ArrayStore: r1[3] = r0  ; List_4
    //     0x78e8d8: add             x25, x1, #0x1b
    //     0x78e8dc: str             w0, [x25]
    //     0x78e8e0: tbz             w0, #0, #0x78e8fc
    //     0x78e8e4: ldurb           w16, [x1, #-1]
    //     0x78e8e8: ldurb           w17, [x0, #-1]
    //     0x78e8ec: and             x16, x17, x16, lsr #2
    //     0x78e8f0: tst             x16, HEAP, lsr #32
    //     0x78e8f4: b.eq            #0x78e8fc
    //     0x78e8f8: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x78e8fc: r16 = <String, String>
    //     0x78e8fc: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x78e900: ldur            lr, [fp, #-0x30]
    // 0x78e904: stp             lr, x16, [SP]
    // 0x78e908: r0 = Map._fromLiteral()
    //     0x78e908: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x78e90c: r16 = <Map<String, String>>
    //     0x78e90c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20730] TypeArguments: <Map<String, String>>
    //     0x78e910: ldr             x16, [x16, #0x730]
    // 0x78e914: ldur            lr, [fp, #-0x28]
    // 0x78e918: stp             lr, x16, [SP, #8]
    // 0x78e91c: str             x0, [SP]
    // 0x78e920: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78e920: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78e924: r0 = call 0x2bfdb0
    //     0x78e924: bl              #0x2bfdb0
    // 0x78e928: r0 = Null
    //     0x78e928: mov             x0, NULL
    // 0x78e92c: r0 = ReturnAsyncNotFuture()
    //     0x78e92c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e930: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78e930: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78e934: b               #0x78e73c
  }
}

// class id: 3935, size: 0xc, field offset: 0xc
//   const constructor, 
class bab extends REa {
}

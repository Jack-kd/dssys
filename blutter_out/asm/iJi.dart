// lib: , url: iJi

// class id: 1049348, size: 0x8
class :: {
}

// class id: 794, size: 0x18, field offset: 0x8
class JJa extends Object {

  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7ef860, size: 0x18c
    // 0x7ef860: EnterFrame
    //     0x7ef860: stp             fp, lr, [SP, #-0x10]!
    //     0x7ef864: mov             fp, SP
    // 0x7ef868: AllocStack(0x30)
    //     0x7ef868: sub             SP, SP, #0x30
    // 0x7ef86c: SetupParameters(JJa this /* r1 */)
    //     0x7ef86c: stur            NULL, [fp, #-8]
    //     0x7ef870: movz            x0, #0
    //     0x7ef874: add             x1, fp, w0, sxtw #2
    //     0x7ef878: ldr             x1, [x1, #0x10]
    //     0x7ef87c: ldur            w2, [x1, #0x17]
    //     0x7ef880: add             x2, x2, HEAP, lsl #32
    //     0x7ef884: stur            x2, [fp, #-0x10]
    // 0x7ef888: CheckStackOverflow
    //     0x7ef888: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ef88c: cmp             SP, x16
    //     0x7ef890: b.ls            #0x7ef9dc
    // 0x7ef894: InitAsync() -> Future<Null?>
    //     0x7ef894: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7ef898: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ef89c: ldur            x0, [fp, #-0x10]
    // 0x7ef8a0: CheckStackOverflow
    //     0x7ef8a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ef8a4: cmp             SP, x16
    //     0x7ef8a8: b.ls            #0x7ef9e4
    // 0x7ef8ac: LoadField: r1 = r0->field_f
    //     0x7ef8ac: ldur            w1, [x0, #0xf]
    // 0x7ef8b0: DecompressPointer r1
    //     0x7ef8b0: add             x1, x1, HEAP, lsl #32
    // 0x7ef8b4: LoadField: r2 = r1->field_7
    //     0x7ef8b4: ldur            w2, [x1, #7]
    // 0x7ef8b8: DecompressPointer r2
    //     0x7ef8b8: add             x2, x2, HEAP, lsl #32
    // 0x7ef8bc: LoadField: r3 = r0->field_13
    //     0x7ef8bc: ldur            w3, [x0, #0x13]
    // 0x7ef8c0: DecompressPointer r3
    //     0x7ef8c0: add             x3, x3, HEAP, lsl #32
    // 0x7ef8c4: mov             x1, x2
    // 0x7ef8c8: stur            x3, [fp, #-0x18]
    // 0x7ef8cc: LoadField: r0 = r1->field_8f
    //     0x7ef8cc: ldur            w0, [x1, #0x8f]
    // 0x7ef8d0: DecompressPointer r0
    //     0x7ef8d0: add             x0, x0, HEAP, lsl #32
    // 0x7ef8d4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ef8d8: cmp             w0, w16
    // 0x7ef8dc: b.ne            #0x7ef8ec
    // 0x7ef8e0: r2 = _tdg
    //     0x7ef8e0: add             x2, PP, #8, lsl #12  ; [pp+0x84d8] Field <eJa._tdg@1007436566>: late final (offset: 0x90)
    //     0x7ef8e4: ldr             x2, [x2, #0x4d8]
    // 0x7ef8e8: r0 = InitLateFinalInstanceField()
    //     0x7ef8e8: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7ef8ec: ldur            x16, [fp, #-0x18]
    // 0x7ef8f0: stp             x16, x0, [SP, #8]
    // 0x7ef8f4: r16 = 0.000000
    //     0x7ef8f4: ldr             x16, [PP, #0x4490]  ; [pp+0x4490] 0
    // 0x7ef8f8: str             x16, [SP]
    // 0x7ef8fc: ClosureCall
    //     0x7ef8fc: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7ef900: ldur            x2, [x0, #0x1f]
    //     0x7ef904: blr             x2
    // 0x7ef908: stur            x0, [fp, #-0x18]
    // 0x7ef90c: ldr             x0, [THR, #0x80]  ; THR::
    // 0x7ef910: add             x17, x0, #8
    // 0x7ef914: ldar            x0, [x17]
    // 0x7ef918: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7ef91c: cmp             w0, w16
    // 0x7ef920: b.ne            #0x7ef92c
    // 0x7ef924: r2 = ijb
    //     0x7ef924: ldr             x2, [PP, #0x6ec0]  ; [pp+0x6ec0] Field <::.ijb>: static late final shared (offset: 0x4)
    // 0x7ef928: r0 = InitSharedLateStaticField()
    //     0x7ef928: bl              #0x7dc268  ; InitSharedLateStaticFieldStub
    // 0x7ef92c: ldur            x3, [fp, #-0x18]
    // 0x7ef930: LoadField: r1 = r3->field_7
    //     0x7ef930: ldur            x1, [x3, #7]
    // 0x7ef934: LoadField: r2 = r0->field_7
    //     0x7ef934: ldur            x2, [x0, #7]
    // 0x7ef938: cmp             x1, x2
    // 0x7ef93c: b.eq            #0x7ef9d4
    // 0x7ef940: LoadField: r0 = r3->field_7
    //     0x7ef940: ldur            x0, [x3, #7]
    // 0x7ef944: ldrsw           x1, [x0]
    // 0x7ef948: sxtw            x1, w1
    // 0x7ef94c: cbz             x1, #0x7ef9cc
    // 0x7ef950: ldur            x4, [fp, #-0x10]
    // 0x7ef954: LoadField: r0 = r4->field_f
    //     0x7ef954: ldur            w0, [x4, #0xf]
    // 0x7ef958: DecompressPointer r0
    //     0x7ef958: add             x0, x0, HEAP, lsl #32
    // 0x7ef95c: LoadField: r2 = r0->field_f
    //     0x7ef95c: ldur            w2, [x0, #0xf]
    // 0x7ef960: DecompressPointer r2
    //     0x7ef960: add             x2, x2, HEAP, lsl #32
    // 0x7ef964: LoadField: r0 = r4->field_13
    //     0x7ef964: ldur            w0, [x4, #0x13]
    // 0x7ef968: DecompressPointer r0
    //     0x7ef968: add             x0, x0, HEAP, lsl #32
    // 0x7ef96c: LoadField: r1 = r0->field_7
    //     0x7ef96c: ldur            x1, [x0, #7]
    // 0x7ef970: mov             x5, x1
    // 0x7ef974: r0 = BoxInt64Instr(r5)
    //     0x7ef974: sbfiz           x0, x5, #1, #0x1f
    //     0x7ef978: cmp             x5, x0, asr #1
    //     0x7ef97c: b.eq            #0x7ef988
    //     0x7ef980: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7ef984: stur            x5, [x0, #7]
    // 0x7ef988: mov             x1, x2
    // 0x7ef98c: mov             x2, x0
    // 0x7ef990: r0 = call 0x5f0864
    //     0x7ef990: bl              #0x5f0864
    // 0x7ef994: cmp             w0, NULL
    // 0x7ef998: b.ne            #0x7ef9a4
    // 0x7ef99c: r1 = Null
    //     0x7ef99c: mov             x1, NULL
    // 0x7ef9a0: b               #0x7ef9bc
    // 0x7ef9a4: ldur            x16, [fp, #-0x18]
    // 0x7ef9a8: stp             x16, x0, [SP]
    // 0x7ef9ac: ClosureCall
    //     0x7ef9ac: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7ef9b0: ldur            x2, [x0, #0x1f]
    //     0x7ef9b4: blr             x2
    // 0x7ef9b8: mov             x1, x0
    // 0x7ef9bc: mov             x0, x1
    // 0x7ef9c0: stur            x1, [fp, #-0x18]
    // 0x7ef9c4: r0 = Await()
    //     0x7ef9c4: bl              #0x74ab64  ; AwaitStub
    // 0x7ef9c8: b               #0x7ef89c
    // 0x7ef9cc: r0 = Null
    //     0x7ef9cc: mov             x0, NULL
    // 0x7ef9d0: r0 = ReturnAsyncNotFuture()
    //     0x7ef9d0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ef9d4: r0 = Null
    //     0x7ef9d4: mov             x0, NULL
    // 0x7ef9d8: r0 = ReturnAsyncNotFuture()
    //     0x7ef9d8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ef9dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ef9dc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ef9e0: b               #0x7ef894
    // 0x7ef9e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ef9e4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ef9e8: b               #0x7ef8ac
  }
  [closure] void <anonymous closure>(dynamic, List<dynamic>) {
    // ** addr: 0x742da8, size: -0x1
  }
}

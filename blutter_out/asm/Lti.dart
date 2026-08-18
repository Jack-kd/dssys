// lib: , url: Lti

// class id: 1049793, size: 0x8
class :: {
}

// class id: 3690, size: 0x20, field offset: 0x1c
class _rab extends _Ut {

  [closure] Future<void> <anonymous closure>(dynamic, Map<String, dynamic>) async {
    // ** addr: 0x77c2c8, size: 0x17c
    // 0x77c2c8: EnterFrame
    //     0x77c2c8: stp             fp, lr, [SP, #-0x10]!
    //     0x77c2cc: mov             fp, SP
    // 0x77c2d0: AllocStack(0x38)
    //     0x77c2d0: sub             SP, SP, #0x38
    // 0x77c2d4: SetupParameters(_rab this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x77c2d4: stur            NULL, [fp, #-8]
    //     0x77c2d8: movz            x0, #0
    //     0x77c2dc: add             x1, fp, w0, sxtw #2
    //     0x77c2e0: ldr             x1, [x1, #0x18]
    //     0x77c2e4: add             x2, fp, w0, sxtw #2
    //     0x77c2e8: ldr             x2, [x2, #0x10]
    //     0x77c2ec: stur            x2, [fp, #-0x18]
    //     0x77c2f0: ldur            w3, [x1, #0x17]
    //     0x77c2f4: add             x3, x3, HEAP, lsl #32
    //     0x77c2f8: stur            x3, [fp, #-0x10]
    // 0x77c2fc: CheckStackOverflow
    //     0x77c2fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77c300: cmp             SP, x16
    //     0x77c304: b.ls            #0x77c43c
    // 0x77c308: InitAsync() -> Future<void?>
    //     0x77c308: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x77c30c: bl              #0x74ada8  ; InitAsyncStub
    // 0x77c310: r0 = call 0x44df3c
    //     0x77c310: bl              #0x44df3c
    // 0x77c314: ldur            x0, [fp, #-0x10]
    // 0x77c318: LoadField: r1 = r0->field_f
    //     0x77c318: ldur            w1, [x0, #0xf]
    // 0x77c31c: DecompressPointer r1
    //     0x77c31c: add             x1, x1, HEAP, lsl #32
    // 0x77c320: LoadField: r0 = r1->field_13
    //     0x77c320: ldur            w0, [x1, #0x13]
    // 0x77c324: DecompressPointer r0
    //     0x77c324: add             x0, x0, HEAP, lsl #32
    // 0x77c328: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x77c32c: cmp             w0, w16
    // 0x77c330: b.ne            #0x77c340
    // 0x77c334: r2 = nsb
    //     0x77c334: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x77c338: ldr             x2, [x2, #0xf28]
    // 0x77c33c: r0 = InitLateFinalInstanceField()
    //     0x77c33c: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x77c340: stur            x0, [fp, #-0x20]
    // 0x77c344: r0 = LoadStaticField(0x1368)
    //     0x77c344: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x77c348: ldr             x0, [x0, #0x26d0]
    // 0x77c34c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x77c350: cmp             w0, w16
    // 0x77c354: b.ne            #0x77c364
    // 0x77c358: r2 = hqg
    //     0x77c358: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x77c35c: ldr             x2, [x2, #0x580]
    // 0x77c360: r0 = InitLateFinalStaticField()
    //     0x77c360: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x77c364: r16 = <tZa>
    //     0x77c364: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x77c368: ldr             x16, [x16, #0x588]
    // 0x77c36c: ldur            lr, [fp, #-0x20]
    // 0x77c370: stp             lr, x16, [SP, #8]
    // 0x77c374: str             x0, [SP]
    // 0x77c378: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x77c378: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x77c37c: r0 = call 0x263414
    //     0x77c37c: bl              #0x263414
    // 0x77c380: stur            x0, [fp, #-0x20]
    // 0x77c384: r0 = call 0x44dadc
    //     0x77c384: bl              #0x44dadc
    // 0x77c388: ldur            x1, [fp, #-0x18]
    // 0x77c38c: r2 = LoadClassIdInstr(r1)
    //     0x77c38c: ldur            x2, [x1, #-1]
    //     0x77c390: ubfx            x2, x2, #0xc, #0x14
    // 0x77c394: mov             x16, x0
    // 0x77c398: mov             x0, x2
    // 0x77c39c: mov             x2, x16
    // 0x77c3a0: mov             lr, x0
    // 0x77c3a4: ldr             lr, [x21, lr, lsl #3]
    // 0x77c3a8: blr             lr
    // 0x77c3ac: mov             x3, x0
    // 0x77c3b0: r2 = Null
    //     0x77c3b0: mov             x2, NULL
    // 0x77c3b4: r1 = Null
    //     0x77c3b4: mov             x1, NULL
    // 0x77c3b8: stur            x3, [fp, #-0x18]
    // 0x77c3bc: branchIfSmi(r0, 0x77c3e4)
    //     0x77c3bc: tbz             w0, #0, #0x77c3e4
    // 0x77c3c0: r4 = LoadClassIdInstr(r0)
    //     0x77c3c0: ldur            x4, [x0, #-1]
    //     0x77c3c4: ubfx            x4, x4, #0xc, #0x14
    // 0x77c3c8: sub             x4, x4, #0x3c
    // 0x77c3cc: cmp             x4, #1
    // 0x77c3d0: b.ls            #0x77c3e4
    // 0x77c3d4: r8 = int
    //     0x77c3d4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x77c3d8: r3 = Null
    //     0x77c3d8: add             x3, PP, #0x27, lsl #12  ; [pp+0x27840] Null
    //     0x77c3dc: ldr             x3, [x3, #0x840]
    // 0x77c3e0: r0 = int()
    //     0x77c3e0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x77c3e4: ldur            x0, [fp, #-0x18]
    // 0x77c3e8: r2 = LoadInt32Instr(r0)
    //     0x77c3e8: sbfx            x2, x0, #1, #0x1f
    //     0x77c3ec: tbz             w0, #0, #0x77c3f4
    //     0x77c3f0: ldur            x2, [x0, #7]
    // 0x77c3f4: ldur            x1, [fp, #-0x20]
    // 0x77c3f8: r0 = __unknown_function__()
    //     0x77c3f8: bl              #0x77c7c4  ; [] ::__unknown_function__
    // 0x77c3fc: mov             x1, x0
    // 0x77c400: stur            x1, [fp, #-0x18]
    // 0x77c404: r0 = Await()
    //     0x77c404: bl              #0x74ab64  ; AwaitStub
    // 0x77c408: ldur            x0, [fp, #-0x10]
    // 0x77c40c: LoadField: r1 = r0->field_13
    //     0x77c40c: ldur            w1, [x0, #0x13]
    // 0x77c410: DecompressPointer r1
    //     0x77c410: add             x1, x1, HEAP, lsl #32
    // 0x77c414: LoadField: r2 = r1->field_f
    //     0x77c414: ldur            w2, [x1, #0xf]
    // 0x77c418: DecompressPointer r2
    //     0x77c418: add             x2, x2, HEAP, lsl #32
    // 0x77c41c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x77c41c: ldur            w1, [x2, #0x17]
    // 0x77c420: DecompressPointer r1
    //     0x77c420: add             x1, x1, HEAP, lsl #32
    // 0x77c424: r0 = __unknown_function__()
    //     0x77c424: bl              #0x77c444  ; [] ::__unknown_function__
    // 0x77c428: mov             x1, x0
    // 0x77c42c: stur            x1, [fp, #-0x18]
    // 0x77c430: r0 = Await()
    //     0x77c430: bl              #0x74ab64  ; AwaitStub
    // 0x77c434: r0 = Null
    //     0x77c434: mov             x0, NULL
    // 0x77c438: r0 = ReturnAsyncNotFuture()
    //     0x77c438: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77c43c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77c43c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77c440: b               #0x77c308
  }
  [closure] List<KX> <anonymous closure>(dynamic, Tna, pHa<int, dynamic>, (dynamic) => void) {
    // ** addr: 0x4023f0, size: -0x1
  }
  [closure] bla <anonymous closure>(dynamic, Tna, dynamic, int) {
    // ** addr: 0x402608, size: -0x1
  }
  [closure] fYa <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x4024f4, size: -0x1
  }
  [closure] gYa <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x4024dc, size: -0x1
  }
}

// class id: 3932, size: 0x10, field offset: 0xc
//   const constructor, 
class Wt extends REa {
}

// lib: , url: WRi

// class id: 1049777, size: 0x8
class :: {
}

// class id: 3662, size: 0x28, field offset: 0x18
class _ZZa extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x78e43c, size: 0x264
    // 0x78e43c: EnterFrame
    //     0x78e43c: stp             fp, lr, [SP, #-0x10]!
    //     0x78e440: mov             fp, SP
    // 0x78e444: AllocStack(0x40)
    //     0x78e444: sub             SP, SP, #0x40
    // 0x78e448: SetupParameters(_ZZa this /* r1 */)
    //     0x78e448: stur            NULL, [fp, #-8]
    //     0x78e44c: movz            x0, #0
    //     0x78e450: add             x1, fp, w0, sxtw #2
    //     0x78e454: ldr             x1, [x1, #0x10]
    //     0x78e458: ldur            w2, [x1, #0x17]
    //     0x78e45c: add             x2, x2, HEAP, lsl #32
    //     0x78e460: stur            x2, [fp, #-0x10]
    // 0x78e464: CheckStackOverflow
    //     0x78e464: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78e468: cmp             SP, x16
    //     0x78e46c: b.ls            #0x78e698
    // 0x78e470: InitAsync() -> Future<void?>
    //     0x78e470: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x78e474: bl              #0x74ada8  ; InitAsyncStub
    // 0x78e478: ldur            x0, [fp, #-0x10]
    // 0x78e47c: LoadField: r1 = r0->field_f
    //     0x78e47c: ldur            w1, [x0, #0xf]
    // 0x78e480: DecompressPointer r1
    //     0x78e480: add             x1, x1, HEAP, lsl #32
    // 0x78e484: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x78e484: ldur            w2, [x1, #0x17]
    // 0x78e488: DecompressPointer r2
    //     0x78e488: add             x2, x2, HEAP, lsl #32
    // 0x78e48c: LoadField: r1 = r2->field_27
    //     0x78e48c: ldur            w1, [x2, #0x27]
    // 0x78e490: DecompressPointer r1
    //     0x78e490: add             x1, x1, HEAP, lsl #32
    // 0x78e494: LoadField: r2 = r1->field_7
    //     0x78e494: ldur            w2, [x1, #7]
    // 0x78e498: DecompressPointer r2
    //     0x78e498: add             x2, x2, HEAP, lsl #32
    // 0x78e49c: mov             x1, x2
    // 0x78e4a0: r0 = call 0x22d880
    //     0x78e4a0: bl              #0x22d880
    // 0x78e4a4: mov             x2, x0
    // 0x78e4a8: ldur            x0, [fp, #-0x10]
    // 0x78e4ac: stur            x2, [fp, #-0x18]
    // 0x78e4b0: LoadField: r1 = r0->field_f
    //     0x78e4b0: ldur            w1, [x0, #0xf]
    // 0x78e4b4: DecompressPointer r1
    //     0x78e4b4: add             x1, x1, HEAP, lsl #32
    // 0x78e4b8: LoadField: r3 = r1->field_1b
    //     0x78e4b8: ldur            w3, [x1, #0x1b]
    // 0x78e4bc: DecompressPointer r3
    //     0x78e4bc: add             x3, x3, HEAP, lsl #32
    // 0x78e4c0: LoadField: r1 = r3->field_27
    //     0x78e4c0: ldur            w1, [x3, #0x27]
    // 0x78e4c4: DecompressPointer r1
    //     0x78e4c4: add             x1, x1, HEAP, lsl #32
    // 0x78e4c8: LoadField: r3 = r1->field_7
    //     0x78e4c8: ldur            w3, [x1, #7]
    // 0x78e4cc: DecompressPointer r3
    //     0x78e4cc: add             x3, x3, HEAP, lsl #32
    // 0x78e4d0: mov             x1, x3
    // 0x78e4d4: r0 = call 0x22d880
    //     0x78e4d4: bl              #0x22d880
    // 0x78e4d8: mov             x2, x0
    // 0x78e4dc: ldur            x0, [fp, #-0x10]
    // 0x78e4e0: stur            x2, [fp, #-0x20]
    // 0x78e4e4: LoadField: r1 = r0->field_f
    //     0x78e4e4: ldur            w1, [x0, #0xf]
    // 0x78e4e8: DecompressPointer r1
    //     0x78e4e8: add             x1, x1, HEAP, lsl #32
    // 0x78e4ec: LoadField: r3 = r1->field_1f
    //     0x78e4ec: ldur            w3, [x1, #0x1f]
    // 0x78e4f0: DecompressPointer r3
    //     0x78e4f0: add             x3, x3, HEAP, lsl #32
    // 0x78e4f4: LoadField: r1 = r3->field_27
    //     0x78e4f4: ldur            w1, [x3, #0x27]
    // 0x78e4f8: DecompressPointer r1
    //     0x78e4f8: add             x1, x1, HEAP, lsl #32
    // 0x78e4fc: LoadField: r3 = r1->field_7
    //     0x78e4fc: ldur            w3, [x1, #7]
    // 0x78e500: DecompressPointer r3
    //     0x78e500: add             x3, x3, HEAP, lsl #32
    // 0x78e504: mov             x1, x3
    // 0x78e508: r0 = call 0x22d880
    //     0x78e508: bl              #0x22d880
    // 0x78e50c: ldur            x1, [fp, #-0x18]
    // 0x78e510: stur            x0, [fp, #-0x28]
    // 0x78e514: r0 = call 0x3b4da8
    //     0x78e514: bl              #0x3b4da8
    // 0x78e518: tbnz            w0, #4, #0x78e53c
    // 0x78e51c: r1 = "3ee6797515ff9f6a50f6a827bdefc845c96f07a1"
    //     0x78e51c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3e0] "3ee6797515ff9f6a50f6a827bdefc845c96f07a1"
    //     0x78e520: ldr             x1, [x1, #0x3e0]
    // 0x78e524: r0 = call 0x469770
    //     0x78e524: bl              #0x469770
    // 0x78e528: mov             x1, x0
    // 0x78e52c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e52c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e530: r0 = call 0x3a5cc4
    //     0x78e530: bl              #0x3a5cc4
    // 0x78e534: r0 = Null
    //     0x78e534: mov             x0, NULL
    // 0x78e538: r0 = ReturnAsyncNotFuture()
    //     0x78e538: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e53c: ldur            x1, [fp, #-0x20]
    // 0x78e540: r0 = call 0x3b4da8
    //     0x78e540: bl              #0x3b4da8
    // 0x78e544: tbnz            w0, #4, #0x78e568
    // 0x78e548: r1 = "8e083bcf5f25a5f842ac0afd27970a5fbb956d83"
    //     0x78e548: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3e8] "8e083bcf5f25a5f842ac0afd27970a5fbb956d83"
    //     0x78e54c: ldr             x1, [x1, #0x3e8]
    // 0x78e550: r0 = call 0x469770
    //     0x78e550: bl              #0x469770
    // 0x78e554: mov             x1, x0
    // 0x78e558: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e558: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e55c: r0 = call 0x3a5cc4
    //     0x78e55c: bl              #0x3a5cc4
    // 0x78e560: r0 = Null
    //     0x78e560: mov             x0, NULL
    // 0x78e564: r0 = ReturnAsyncNotFuture()
    //     0x78e564: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e568: ldur            x1, [fp, #-0x28]
    // 0x78e56c: r0 = call 0x3b4da8
    //     0x78e56c: bl              #0x3b4da8
    // 0x78e570: tbnz            w0, #4, #0x78e594
    // 0x78e574: r1 = "0220c9ee9cef70c6497acc635946ad8654c340a2a576309f200e"
    //     0x78e574: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3f0] "0220c9ee9cef70c6497acc635946ad8654c340a2a576309f200e"
    //     0x78e578: ldr             x1, [x1, #0x3f0]
    // 0x78e57c: r0 = call 0x469770
    //     0x78e57c: bl              #0x469770
    // 0x78e580: mov             x1, x0
    // 0x78e584: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e584: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e588: r0 = call 0x3a5cc4
    //     0x78e588: bl              #0x3a5cc4
    // 0x78e58c: r0 = Null
    //     0x78e58c: mov             x0, NULL
    // 0x78e590: r0 = ReturnAsyncNotFuture()
    //     0x78e590: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e594: ldur            x0, [fp, #-0x28]
    // 0x78e598: r1 = LoadClassIdInstr(r0)
    //     0x78e598: ldur            x1, [x0, #-1]
    //     0x78e59c: ubfx            x1, x1, #0xc, #0x14
    // 0x78e5a0: ldur            x16, [fp, #-0x20]
    // 0x78e5a4: stp             x16, x0, [SP]
    // 0x78e5a8: mov             x0, x1
    // 0x78e5ac: r0 = GDT[cid_x0 + 0x245b]()
    //     0x78e5ac: movz            x17, #0x245b
    //     0x78e5b0: add             lr, x0, x17
    //     0x78e5b4: ldr             lr, [x21, lr, lsl #3]
    //     0x78e5b8: blr             lr
    // 0x78e5bc: tbz             w0, #4, #0x78e5e0
    // 0x78e5c0: r1 = "ae0862993a9d40e39b73b68402cc9382d2ed17570a2f1b95ede382b9c07cafdb3bc5de"
    //     0x78e5c0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3f8] "ae0862993a9d40e39b73b68402cc9382d2ed17570a2f1b95ede382b9c07cafdb3bc5de"
    //     0x78e5c4: ldr             x1, [x1, #0x3f8]
    // 0x78e5c8: r0 = call 0x469770
    //     0x78e5c8: bl              #0x469770
    // 0x78e5cc: mov             x1, x0
    // 0x78e5d0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e5d0: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e5d4: r0 = call 0x3a5cc4
    //     0x78e5d4: bl              #0x3a5cc4
    // 0x78e5d8: r0 = Null
    //     0x78e5d8: mov             x0, NULL
    // 0x78e5dc: r0 = ReturnAsyncNotFuture()
    //     0x78e5dc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e5e0: ldur            x0, [fp, #-0x10]
    // 0x78e5e4: r0 = call 0x469ca8
    //     0x78e5e4: bl              #0x469ca8
    // 0x78e5e8: r0 = call 0x44df3c
    //     0x78e5e8: bl              #0x44df3c
    // 0x78e5ec: ldur            x0, [fp, #-0x10]
    // 0x78e5f0: LoadField: r1 = r0->field_f
    //     0x78e5f0: ldur            w1, [x0, #0xf]
    // 0x78e5f4: DecompressPointer r1
    //     0x78e5f4: add             x1, x1, HEAP, lsl #32
    // 0x78e5f8: LoadField: r0 = r1->field_13
    //     0x78e5f8: ldur            w0, [x1, #0x13]
    // 0x78e5fc: DecompressPointer r0
    //     0x78e5fc: add             x0, x0, HEAP, lsl #32
    // 0x78e600: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78e604: cmp             w0, w16
    // 0x78e608: b.ne            #0x78e618
    // 0x78e60c: r2 = nsb
    //     0x78e60c: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x78e610: ldr             x2, [x2, #0xf28]
    // 0x78e614: r0 = InitLateFinalInstanceField()
    //     0x78e614: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x78e618: stur            x0, [fp, #-0x28]
    // 0x78e61c: r0 = LoadStaticField(0x1368)
    //     0x78e61c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x78e620: ldr             x0, [x0, #0x26d0]
    // 0x78e624: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x78e628: cmp             w0, w16
    // 0x78e62c: b.ne            #0x78e63c
    // 0x78e630: r2 = hqg
    //     0x78e630: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x78e634: ldr             x2, [x2, #0x580]
    // 0x78e638: r0 = InitLateFinalStaticField()
    //     0x78e638: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x78e63c: r16 = <tZa>
    //     0x78e63c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x78e640: ldr             x16, [x16, #0x588]
    // 0x78e644: ldur            lr, [fp, #-0x28]
    // 0x78e648: stp             lr, x16, [SP, #8]
    // 0x78e64c: str             x0, [SP]
    // 0x78e650: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x78e650: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x78e654: r0 = call 0x263414
    //     0x78e654: bl              #0x263414
    // 0x78e658: mov             x1, x0
    // 0x78e65c: ldur            x2, [fp, #-0x20]
    // 0x78e660: ldur            x3, [fp, #-0x18]
    // 0x78e664: r0 = call 0x469ba4
    //     0x78e664: bl              #0x469ba4
    // 0x78e668: mov             x1, x0
    // 0x78e66c: stur            x1, [fp, #-0x18]
    // 0x78e670: r0 = Await()
    //     0x78e670: bl              #0x74ab64  ; AwaitStub
    // 0x78e674: r0 = call 0x469ca8
    //     0x78e674: bl              #0x469ca8
    // 0x78e678: r1 = "b87eae39c400de1f9cfeba132089"
    //     0x78e678: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c400] "b87eae39c400de1f9cfeba132089"
    //     0x78e67c: ldr             x1, [x1, #0x400]
    // 0x78e680: r0 = call 0x469770
    //     0x78e680: bl              #0x469770
    // 0x78e684: mov             x1, x0
    // 0x78e688: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x78e688: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x78e68c: r0 = __unknown_function__()
    //     0x78e68c: bl              #0x78a718  ; [] ::__unknown_function__
    // 0x78e690: r0 = Null
    //     0x78e690: mov             x0, NULL
    // 0x78e694: r0 = ReturnAsyncNotFuture()
    //     0x78e694: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78e698: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78e698: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78e69c: b               #0x78e470
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x469d94, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x469df4, size: -0x1
  }
}

// class id: 3936, size: 0xc, field offset: 0xc
//   const constructor, 
class YZa extends REa {
}

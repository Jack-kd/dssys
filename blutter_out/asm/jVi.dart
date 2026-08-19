// lib: , url: jVi

// class id: 1049954, size: 0x8
class :: {
}

// class id: 3627, size: 0x1c, field offset: 0x18
class _peb extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7a047c, size: 0x270
    // 0x7a047c: EnterFrame
    //     0x7a047c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a0480: mov             fp, SP
    // 0x7a0484: AllocStack(0xa0)
    //     0x7a0484: sub             SP, SP, #0xa0
    // 0x7a0488: SetupParameters(_peb this /* r1 */)
    //     0x7a0488: stur            NULL, [fp, #-8]
    //     0x7a048c: movz            x0, #0
    //     0x7a0490: add             x1, fp, w0, sxtw #2
    //     0x7a0494: ldr             x1, [x1, #0x10]
    //     0x7a0498: ldur            w2, [x1, #0x17]
    //     0x7a049c: add             x2, x2, HEAP, lsl #32
    //     0x7a04a0: stur            x2, [fp, #-0x68]
    // 0x7a04a4: CheckStackOverflow
    //     0x7a04a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a04a8: cmp             SP, x16
    //     0x7a04ac: b.ls            #0x7a06e0
    // 0x7a04b0: InitAsync() -> Future<void?>
    //     0x7a04b0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a04b4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a04b8: ldur            x0, [fp, #-0x68]
    // 0x7a04bc: LoadField: r3 = r0->field_f
    //     0x7a04bc: ldur            w3, [x0, #0xf]
    // 0x7a04c0: DecompressPointer r3
    //     0x7a04c0: add             x3, x3, HEAP, lsl #32
    // 0x7a04c4: stur            x3, [fp, #-0x70]
    // 0x7a04c8: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x7a04c8: ldur            w1, [x3, #0x17]
    // 0x7a04cc: DecompressPointer r1
    //     0x7a04cc: add             x1, x1, HEAP, lsl #32
    // 0x7a04d0: tbnz            w1, #4, #0x7a04dc
    // 0x7a04d4: r0 = Null
    //     0x7a04d4: mov             x0, NULL
    // 0x7a04d8: r0 = ReturnAsyncNotFuture()
    //     0x7a04d8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a04dc: mov             x2, x0
    // 0x7a04e0: r1 = Function '<anonymous closure>':.
    //     0x7a04e0: add             x1, PP, #0x29, lsl #12  ; [pp+0x29958] AnonymousClosure: (0x47d4e8), of [ZWi] _agb
    //     0x7a04e4: ldr             x1, [x1, #0x958]
    // 0x7a04e8: r0 = AllocateClosure()
    //     0x7a04e8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a04ec: ldur            x1, [fp, #-0x70]
    // 0x7a04f0: mov             x2, x0
    // 0x7a04f4: r0 = call 0x227fe4
    //     0x7a04f4: bl              #0x227fe4
    // 0x7a04f8: ldur            x2, [fp, #-0x68]
    // 0x7a04fc: LoadField: r1 = r2->field_13
    //     0x7a04fc: ldur            w1, [x2, #0x13]
    // 0x7a0500: DecompressPointer r1
    //     0x7a0500: add             x1, x1, HEAP, lsl #32
    // 0x7a0504: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7a0504: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7a0508: r0 = call 0x368364
    //     0x7a0508: bl              #0x368364
    // 0x7a050c: stur            x0, [fp, #-0x78]
    // 0x7a0510: ldur            x2, [fp, #-0x68]
    // 0x7a0514: LoadField: r3 = r2->field_f
    //     0x7a0514: ldur            w3, [x2, #0xf]
    // 0x7a0518: DecompressPointer r3
    //     0x7a0518: add             x3, x3, HEAP, lsl #32
    // 0x7a051c: mov             x1, x3
    // 0x7a0520: stur            x3, [fp, #-0x70]
    // 0x7a0524: LoadField: r0 = r1->field_13
    //     0x7a0524: ldur            w0, [x1, #0x13]
    // 0x7a0528: DecompressPointer r0
    //     0x7a0528: add             x0, x0, HEAP, lsl #32
    // 0x7a052c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a0530: cmp             w0, w16
    // 0x7a0534: b.ne            #0x7a0544
    // 0x7a0538: r2 = nsb
    //     0x7a0538: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x7a053c: ldr             x2, [x2, #0xf28]
    // 0x7a0540: r0 = InitLateFinalInstanceField()
    //     0x7a0540: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7a0544: stur            x0, [fp, #-0x70]
    // 0x7a0548: r0 = LoadStaticField(0x1368)
    //     0x7a0548: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7a054c: ldr             x0, [x0, #0x26d0]
    // 0x7a0550: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7a0554: cmp             w0, w16
    // 0x7a0558: b.ne            #0x7a0568
    // 0x7a055c: r2 = hqg
    //     0x7a055c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x7a0560: ldr             x2, [x2, #0x580]
    // 0x7a0564: r0 = InitLateFinalStaticField()
    //     0x7a0564: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7a0568: r16 = <tZa>
    //     0x7a0568: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x7a056c: ldr             x16, [x16, #0x588]
    // 0x7a0570: ldur            lr, [fp, #-0x70]
    // 0x7a0574: stp             lr, x16, [SP, #8]
    // 0x7a0578: str             x0, [SP]
    // 0x7a057c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7a057c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7a0580: r0 = call 0x263414
    //     0x7a0580: bl              #0x263414
    // 0x7a0584: ldur            x2, [fp, #-0x68]
    // 0x7a0588: stur            x0, [fp, #-0x80]
    // 0x7a058c: LoadField: r1 = r2->field_f
    //     0x7a058c: ldur            w1, [x2, #0xf]
    // 0x7a0590: DecompressPointer r1
    //     0x7a0590: add             x1, x1, HEAP, lsl #32
    // 0x7a0594: LoadField: r3 = r1->field_b
    //     0x7a0594: ldur            w3, [x1, #0xb]
    // 0x7a0598: DecompressPointer r3
    //     0x7a0598: add             x3, x3, HEAP, lsl #32
    // 0x7a059c: cmp             w3, NULL
    // 0x7a05a0: b.eq            #0x7a06e8
    // 0x7a05a4: LoadField: r4 = r3->field_b
    //     0x7a05a4: ldur            w4, [x3, #0xb]
    // 0x7a05a8: DecompressPointer r4
    //     0x7a05a8: add             x4, x4, HEAP, lsl #32
    // 0x7a05ac: stur            x4, [fp, #-0x70]
    // 0x7a05b0: r1 = "50bbb867"
    //     0x7a05b0: add             x1, PP, #0x29, lsl #12  ; [pp+0x29960] "50bbb867"
    //     0x7a05b4: ldr             x1, [x1, #0x960]
    // 0x7a05b8: r0 = call 0x4ae480
    //     0x7a05b8: bl              #0x4ae480
    // 0x7a05bc: ldur            x1, [fp, #-0x70]
    // 0x7a05c0: r2 = LoadClassIdInstr(r1)
    //     0x7a05c0: ldur            x2, [x1, #-1]
    //     0x7a05c4: ubfx            x2, x2, #0xc, #0x14
    // 0x7a05c8: mov             x16, x0
    // 0x7a05cc: mov             x0, x2
    // 0x7a05d0: mov             x2, x16
    // 0x7a05d4: mov             lr, x0
    // 0x7a05d8: ldr             lr, [x21, lr, lsl #3]
    // 0x7a05dc: blr             lr
    // 0x7a05e0: mov             x3, x0
    // 0x7a05e4: r2 = Null
    //     0x7a05e4: mov             x2, NULL
    // 0x7a05e8: r1 = Null
    //     0x7a05e8: mov             x1, NULL
    // 0x7a05ec: stur            x3, [fp, #-0x70]
    // 0x7a05f0: branchIfSmi(r0, 0x7a0618)
    //     0x7a05f0: tbz             w0, #0, #0x7a0618
    // 0x7a05f4: r4 = LoadClassIdInstr(r0)
    //     0x7a05f4: ldur            x4, [x0, #-1]
    //     0x7a05f8: ubfx            x4, x4, #0xc, #0x14
    // 0x7a05fc: sub             x4, x4, #0x3c
    // 0x7a0600: cmp             x4, #1
    // 0x7a0604: b.ls            #0x7a0618
    // 0x7a0608: r8 = int
    //     0x7a0608: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7a060c: r3 = Null
    //     0x7a060c: add             x3, PP, #0x29, lsl #12  ; [pp+0x29968] Null
    //     0x7a0610: ldr             x3, [x3, #0x968]
    // 0x7a0614: r0 = int()
    //     0x7a0614: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7a0618: ldur            x0, [fp, #-0x70]
    // 0x7a061c: r2 = LoadInt32Instr(r0)
    //     0x7a061c: sbfx            x2, x0, #1, #0x1f
    //     0x7a0620: tbz             w0, #0, #0x7a0628
    //     0x7a0624: ldur            x2, [x0, #7]
    // 0x7a0628: ldur            x1, [fp, #-0x80]
    // 0x7a062c: r0 = call 0x47d41c
    //     0x7a062c: bl              #0x47d41c
    // 0x7a0630: mov             x1, x0
    // 0x7a0634: stur            x1, [fp, #-0x88]
    // 0x7a0638: r0 = Await()
    //     0x7a0638: bl              #0x74ab64  ; AwaitStub
    // 0x7a063c: ldur            x2, [fp, #-0x68]
    // 0x7a0640: LoadField: r0 = r2->field_f
    //     0x7a0640: ldur            w0, [x2, #0xf]
    // 0x7a0644: DecompressPointer r0
    //     0x7a0644: add             x0, x0, HEAP, lsl #32
    // 0x7a0648: stur            x0, [fp, #-0x70]
    // 0x7a064c: r1 = Function '<anonymous closure>':.
    //     0x7a064c: add             x1, PP, #0x29, lsl #12  ; [pp+0x29978] AnonymousClosure: (0x47d4c4), in [jVi] _peb::<anonymous closure> (0x7a047c)
    //     0x7a0650: ldr             x1, [x1, #0x978]
    // 0x7a0654: r0 = AllocateClosure()
    //     0x7a0654: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a0658: ldur            x1, [fp, #-0x70]
    // 0x7a065c: mov             x2, x0
    // 0x7a0660: r0 = call 0x227fe4
    //     0x7a0660: bl              #0x227fe4
    // 0x7a0664: r1 = "7bef324abddca8fae727e0a0ccf7"
    //     0x7a0664: add             x1, PP, #0x29, lsl #12  ; [pp+0x29980] "7bef324abddca8fae727e0a0ccf7"
    //     0x7a0668: ldr             x1, [x1, #0x980]
    // 0x7a066c: r0 = call 0x4ae480
    //     0x7a066c: bl              #0x4ae480
    // 0x7a0670: mov             x1, x0
    // 0x7a0674: r0 = call 0x47d2ec
    //     0x7a0674: bl              #0x47d2ec
    // 0x7a0678: r16 = <Object?>
    //     0x7a0678: ldr             x16, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x7a067c: ldur            lr, [fp, #-0x78]
    // 0x7a0680: stp             lr, x16, [SP]
    // 0x7a0684: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7a0684: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7a0688: r0 = call 0x2bfdb0
    //     0x7a0688: bl              #0x2bfdb0
    // 0x7a068c: r0 = Null
    //     0x7a068c: mov             x0, NULL
    // 0x7a0690: r0 = ReturnAsyncNotFuture()
    //     0x7a0690: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a0694: sub             SP, fp, #0xa0
    // 0x7a0698: ldur            x2, [fp, #-0x68]
    // 0x7a069c: mov             x3, x0
    // 0x7a06a0: stur            x0, [fp, #-0x78]
    // 0x7a06a4: mov             x0, x1
    // 0x7a06a8: stur            x1, [fp, #-0x80]
    // 0x7a06ac: LoadField: r4 = r2->field_f
    //     0x7a06ac: ldur            w4, [x2, #0xf]
    // 0x7a06b0: DecompressPointer r4
    //     0x7a06b0: add             x4, x4, HEAP, lsl #32
    // 0x7a06b4: stur            x4, [fp, #-0x70]
    // 0x7a06b8: r1 = Function '<anonymous closure>':.
    //     0x7a06b8: add             x1, PP, #0x29, lsl #12  ; [pp+0x29978] AnonymousClosure: (0x47d4c4), in [jVi] _peb::<anonymous closure> (0x7a047c)
    //     0x7a06bc: ldr             x1, [x1, #0x978]
    // 0x7a06c0: r0 = AllocateClosure()
    //     0x7a06c0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7a06c4: ldur            x1, [fp, #-0x70]
    // 0x7a06c8: mov             x2, x0
    // 0x7a06cc: r0 = call 0x227fe4
    //     0x7a06cc: bl              #0x227fe4
    // 0x7a06d0: ldur            x0, [fp, #-0x78]
    // 0x7a06d4: ldur            x1, [fp, #-0x80]
    // 0x7a06d8: r0 = ReThrow()
    //     0x7a06d8: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7a06dc: brk             #0
    // 0x7a06e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a06e0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a06e4: b               #0x7a04b0
    // 0x7a06e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7a06e8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x47d4c4, size: -0x1
  }
}

// class id: 3893, size: 0x10, field offset: 0xc
//   const constructor, 
class oeb extends REa {
}

// lib: , url: bUi

// class id: 1049892, size: 0x8
class :: {
}

// class id: 3643, size: 0x24, field offset: 0x18
class _Vcb extends Vt<dynamic> {

  static late final double _bed; // offset: 0x14a4
  static late final double _ozg; // offset: 0x14a8

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x794fe4, size: 0x1d4
    // 0x794fe4: EnterFrame
    //     0x794fe4: stp             fp, lr, [SP, #-0x10]!
    //     0x794fe8: mov             fp, SP
    // 0x794fec: AllocStack(0x98)
    //     0x794fec: sub             SP, SP, #0x98
    // 0x794ff0: SetupParameters(_Vcb this /* r1 */)
    //     0x794ff0: stur            NULL, [fp, #-8]
    //     0x794ff4: movz            x0, #0
    //     0x794ff8: add             x1, fp, w0, sxtw #2
    //     0x794ffc: ldr             x1, [x1, #0x10]
    //     0x795000: ldur            w2, [x1, #0x17]
    //     0x795004: add             x2, x2, HEAP, lsl #32
    //     0x795008: stur            x2, [fp, #-0x70]
    // 0x79500c: CheckStackOverflow
    //     0x79500c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x795010: cmp             SP, x16
    //     0x795014: b.ls            #0x7951a8
    // 0x795018: InitAsync() -> Future<void?>
    //     0x795018: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79501c: bl              #0x74ada8  ; InitAsyncStub
    // 0x795020: ldur            x0, [fp, #-0x70]
    // 0x795024: LoadField: r2 = r0->field_b
    //     0x795024: ldur            w2, [x0, #0xb]
    // 0x795028: DecompressPointer r2
    //     0x795028: add             x2, x2, HEAP, lsl #32
    // 0x79502c: stur            x2, [fp, #-0x80]
    // 0x795030: LoadField: r1 = r2->field_f
    //     0x795030: ldur            w1, [x2, #0xf]
    // 0x795034: DecompressPointer r1
    //     0x795034: add             x1, x1, HEAP, lsl #32
    // 0x795038: LoadField: r3 = r1->field_b
    //     0x795038: ldur            w3, [x1, #0xb]
    // 0x79503c: DecompressPointer r3
    //     0x79503c: add             x3, x3, HEAP, lsl #32
    // 0x795040: stur            x3, [fp, #-0x78]
    // 0x795044: cmp             w3, NULL
    // 0x795048: b.eq            #0x7951b0
    // 0x79504c: LoadField: r0 = r1->field_13
    //     0x79504c: ldur            w0, [x1, #0x13]
    // 0x795050: DecompressPointer r0
    //     0x795050: add             x0, x0, HEAP, lsl #32
    // 0x795054: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x795058: cmp             w0, w16
    // 0x79505c: b.ne            #0x79506c
    // 0x795060: r2 = nsb
    //     0x795060: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x795064: ldr             x2, [x2, #0xf28]
    // 0x795068: r0 = InitLateFinalInstanceField()
    //     0x795068: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x79506c: mov             x2, x0
    // 0x795070: ldur            x0, [fp, #-0x80]
    // 0x795074: LoadField: r1 = r0->field_f
    //     0x795074: ldur            w1, [x0, #0xf]
    // 0x795078: DecompressPointer r1
    //     0x795078: add             x1, x1, HEAP, lsl #32
    // 0x79507c: LoadField: r0 = r1->field_b
    //     0x79507c: ldur            w0, [x1, #0xb]
    // 0x795080: DecompressPointer r0
    //     0x795080: add             x0, x0, HEAP, lsl #32
    // 0x795084: cmp             w0, NULL
    // 0x795088: b.eq            #0x7951b4
    // 0x79508c: LoadField: r3 = r0->field_b
    //     0x79508c: ldur            x3, [x0, #0xb]
    // 0x795090: ldur            x0, [fp, #-0x78]
    // 0x795094: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x795094: ldur            w4, [x0, #0x17]
    // 0x795098: DecompressPointer r4
    //     0x795098: add             x4, x4, HEAP, lsl #32
    // 0x79509c: r0 = BoxInt64Instr(r3)
    //     0x79509c: sbfiz           x0, x3, #1, #0x1f
    //     0x7950a0: cmp             x3, x0, asr #1
    //     0x7950a4: b.eq            #0x7950b0
    //     0x7950a8: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7950ac: stur            x3, [x0, #7]
    // 0x7950b0: stp             x2, x4, [SP, #8]
    // 0x7950b4: str             x0, [SP]
    // 0x7950b8: mov             x0, x4
    // 0x7950bc: ClosureCall
    //     0x7950bc: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7950c0: ldur            x2, [x0, #0x1f]
    //     0x7950c4: blr             x2
    // 0x7950c8: stur            x0, [fp, #-0x78]
    // 0x7950cc: str             x0, [SP]
    // 0x7950d0: r4 = 0
    //     0x7950d0: movz            x4, #0
    // 0x7950d4: ldr             x0, [SP]
    // 0x7950d8: r30 = 140563490515876
    //     0x7950d8: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2a1a0] IMM: 0x7fd77cebaba4
    //     0x7950dc: ldp             lr, x5, [x16, #0x1a0]
    // 0x7950e0: blr             lr
    // 0x7950e4: r0 = LoadStaticField(0x1270)
    //     0x7950e4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7950e8: ldr             x0, [x0, #0x24e0]
    // 0x7950ec: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7950f0: cmp             w0, w16
    // 0x7950f4: b.ne            #0x795104
    // 0x7950f8: r2 = Gkg
    //     0x7950f8: add             x2, PP, #0xe, lsl #12  ; [pp+0xe1c0] Field <::.Gkg>: static late final (offset: 0x1270)
    //     0x7950fc: ldr             x2, [x2, #0x1c0]
    // 0x795100: r0 = InitLateFinalStaticField()
    //     0x795100: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x795104: stur            x0, [fp, #-0x80]
    // 0x795108: r0 = LoadStaticField(0x1324)
    //     0x795108: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x79510c: ldr             x0, [x0, #0x2648]
    // 0x795110: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x795114: cmp             w0, w16
    // 0x795118: b.ne            #0x795128
    // 0x79511c: r2 = nog
    //     0x79511c: add             x2, PP, #0xe, lsl #12  ; [pp+0xec90] Field <dgb.nog>: static late (offset: 0x1324)
    //     0x795120: ldr             x2, [x2, #0xc90]
    // 0x795124: r0 = InitLateStaticField()
    //     0x795124: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x795128: r16 = <Object?>
    //     0x795128: ldr             x16, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x79512c: ldur            lr, [fp, #-0x80]
    // 0x795130: stp             lr, x16, [SP, #8]
    // 0x795134: str             x0, [SP]
    // 0x795138: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x795138: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x79513c: r0 = call 0x3aac08
    //     0x79513c: bl              #0x3aac08
    // 0x795140: mov             x1, x0
    // 0x795144: stur            x1, [fp, #-0x80]
    // 0x795148: r0 = Await()
    //     0x795148: bl              #0x74ab64  ; AwaitStub
    // 0x79514c: ldur            x16, [fp, #-0x78]
    // 0x795150: str             x16, [SP]
    // 0x795154: r4 = 0
    //     0x795154: movz            x4, #0
    // 0x795158: ldr             x0, [SP]
    // 0x79515c: r30 = 140563490515876
    //     0x79515c: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2a1b0] IMM: 0x7fd77cebaba4
    //     0x795160: ldp             lr, x5, [x16, #0x1b0]
    // 0x795164: blr             lr
    // 0x795168: r0 = Null
    //     0x795168: mov             x0, NULL
    // 0x79516c: r0 = ReturnAsyncNotFuture()
    //     0x79516c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x795170: sub             SP, fp, #0x98
    // 0x795174: stur            x0, [fp, #-0x70]
    // 0x795178: stur            x1, [fp, #-0x80]
    // 0x79517c: ldur            x16, [fp, #-0x78]
    // 0x795180: str             x16, [SP]
    // 0x795184: r4 = 0
    //     0x795184: movz            x4, #0
    // 0x795188: ldr             x0, [SP]
    // 0x79518c: r30 = 140563490515876
    //     0x79518c: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2a1c0] IMM: 0x7fd77cebaba4
    //     0x795190: ldp             lr, x5, [x16, #0x1c0]
    // 0x795194: blr             lr
    // 0x795198: ldur            x0, [fp, #-0x70]
    // 0x79519c: ldur            x1, [fp, #-0x80]
    // 0x7951a0: r0 = ReThrow()
    //     0x7951a0: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7951a4: brk             #0
    // 0x7951a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7951a8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7951ac: b               #0x795018
    // 0x7951b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7951b0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7951b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7951b4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7951b8, size: 0xb0
    // 0x7951b8: EnterFrame
    //     0x7951b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7951bc: mov             fp, SP
    // 0x7951c0: AllocStack(0x28)
    //     0x7951c0: sub             SP, SP, #0x28
    // 0x7951c4: SetupParameters(_Vcb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7951c4: stur            NULL, [fp, #-8]
    //     0x7951c8: movz            x0, #0
    //     0x7951cc: add             x1, fp, w0, sxtw #2
    //     0x7951d0: ldr             x1, [x1, #0x18]
    //     0x7951d4: add             x2, fp, w0, sxtw #2
    //     0x7951d8: ldr             x2, [x2, #0x10]
    //     0x7951dc: stur            x2, [fp, #-0x18]
    //     0x7951e0: ldur            w3, [x1, #0x17]
    //     0x7951e4: add             x3, x3, HEAP, lsl #32
    //     0x7951e8: stur            x3, [fp, #-0x10]
    // 0x7951ec: CheckStackOverflow
    //     0x7951ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7951f0: cmp             SP, x16
    //     0x7951f4: b.ls            #0x795260
    // 0x7951f8: InitAsync() -> Future<void?>
    //     0x7951f8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7951fc: bl              #0x74ada8  ; InitAsyncStub
    // 0x795200: ldur            x0, [fp, #-0x10]
    // 0x795204: LoadField: r1 = r0->field_b
    //     0x795204: ldur            w1, [x0, #0xb]
    // 0x795208: DecompressPointer r1
    //     0x795208: add             x1, x1, HEAP, lsl #32
    // 0x79520c: LoadField: r2 = r1->field_f
    //     0x79520c: ldur            w2, [x1, #0xf]
    // 0x795210: DecompressPointer r2
    //     0x795210: add             x2, x2, HEAP, lsl #32
    // 0x795214: LoadField: r3 = r1->field_1b
    //     0x795214: ldur            w3, [x1, #0x1b]
    // 0x795218: DecompressPointer r3
    //     0x795218: add             x3, x3, HEAP, lsl #32
    // 0x79521c: ArrayLoad: r4 = r1[0]  ; List_4
    //     0x79521c: ldur            w4, [x1, #0x17]
    // 0x795220: DecompressPointer r4
    //     0x795220: add             x4, x4, HEAP, lsl #32
    // 0x795224: mov             x1, x2
    // 0x795228: mov             x2, x3
    // 0x79522c: mov             x3, x4
    // 0x795230: r0 = __unknown_function__()
    //     0x795230: bl              #0x795268  ; [] ::__unknown_function__
    // 0x795234: mov             x1, x0
    // 0x795238: stur            x1, [fp, #-0x20]
    // 0x79523c: r0 = Await()
    //     0x79523c: bl              #0x74ab64  ; AwaitStub
    // 0x795240: ldur            x16, [fp, #-0x18]
    // 0x795244: str             x16, [SP]
    // 0x795248: ldur            x0, [fp, #-0x18]
    // 0x79524c: ClosureCall
    //     0x79524c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x795250: ldur            x2, [x0, #0x1f]
    //     0x795254: blr             x2
    // 0x795258: r0 = Null
    //     0x795258: mov             x0, NULL
    // 0x79525c: r0 = ReturnAsyncNotFuture()
    //     0x79525c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x795260: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x795260: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x795264: b               #0x7951f8
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7977d4, size: 0x130
    // 0x7977d4: EnterFrame
    //     0x7977d4: stp             fp, lr, [SP, #-0x10]!
    //     0x7977d8: mov             fp, SP
    // 0x7977dc: AllocStack(0x78)
    //     0x7977dc: sub             SP, SP, #0x78
    // 0x7977e0: SetupParameters(_Vcb this /* r1 */)
    //     0x7977e0: stur            NULL, [fp, #-8]
    //     0x7977e4: movz            x0, #0
    //     0x7977e8: add             x1, fp, w0, sxtw #2
    //     0x7977ec: ldr             x1, [x1, #0x10]
    //     0x7977f0: ldur            w2, [x1, #0x17]
    //     0x7977f4: add             x2, x2, HEAP, lsl #32
    //     0x7977f8: stur            x2, [fp, #-0x58]
    // 0x7977fc: CheckStackOverflow
    //     0x7977fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x797800: cmp             SP, x16
    //     0x797804: b.ls            #0x7978f8
    // 0x797808: InitAsync() -> Future<void?>
    //     0x797808: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79780c: bl              #0x74ada8  ; InitAsyncStub
    // 0x797810: r0 = call 0x44df3c
    //     0x797810: bl              #0x44df3c
    // 0x797814: ldur            x0, [fp, #-0x58]
    // 0x797818: LoadField: r1 = r0->field_b
    //     0x797818: ldur            w1, [x0, #0xb]
    // 0x79781c: DecompressPointer r1
    //     0x79781c: add             x1, x1, HEAP, lsl #32
    // 0x797820: LoadField: r4 = r1->field_b
    //     0x797820: ldur            w4, [x1, #0xb]
    // 0x797824: DecompressPointer r4
    //     0x797824: add             x4, x4, HEAP, lsl #32
    // 0x797828: stur            x4, [fp, #-0x68]
    // 0x79782c: LoadField: r1 = r4->field_f
    //     0x79782c: ldur            w1, [x4, #0xf]
    // 0x797830: DecompressPointer r1
    //     0x797830: add             x1, x1, HEAP, lsl #32
    // 0x797834: LoadField: r2 = r1->field_b
    //     0x797834: ldur            w2, [x1, #0xb]
    // 0x797838: DecompressPointer r2
    //     0x797838: add             x2, x2, HEAP, lsl #32
    // 0x79783c: cmp             w2, NULL
    // 0x797840: b.eq            #0x797900
    // 0x797844: LoadField: r6 = r2->field_b
    //     0x797844: ldur            x6, [x2, #0xb]
    // 0x797848: stur            x6, [fp, #-0x60]
    // 0x79784c: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x79784c: ldur            w2, [x4, #0x17]
    // 0x797850: DecompressPointer r2
    //     0x797850: add             x2, x2, HEAP, lsl #32
    // 0x797854: LoadField: r3 = r0->field_f
    //     0x797854: ldur            w3, [x0, #0xf]
    // 0x797858: DecompressPointer r3
    //     0x797858: add             x3, x3, HEAP, lsl #32
    // 0x79785c: mov             x5, x6
    // 0x797860: r0 = __unknown_function__()
    //     0x797860: bl              #0x795458  ; [] ::__unknown_function__
    // 0x797864: mov             x1, x0
    // 0x797868: stur            x1, [fp, #-0x70]
    // 0x79786c: r0 = Await()
    //     0x79786c: bl              #0x74ab64  ; AwaitStub
    // 0x797870: ldur            x0, [fp, #-0x68]
    // 0x797874: r1 = Null
    //     0x797874: mov             x1, NULL
    // 0x797878: r2 = Instance_la
    //     0x797878: add             x2, PP, #0x11, lsl #12  ; [pp+0x11ae8] Obj!la@455071
    //     0x79787c: ldr             x2, [x2, #0xae8]
    // 0x797880: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x797880: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x797884: r0 = call 0x2c5350
    //     0x797884: bl              #0x2c5350
    // 0x797888: mov             x1, x0
    // 0x79788c: stur            x1, [fp, #-0x70]
    // 0x797890: r0 = Await()
    //     0x797890: bl              #0x74ab64  ; AwaitStub
    // 0x797894: r0 = call 0x44ccec
    //     0x797894: bl              #0x44ccec
    // 0x797898: ldur            x0, [fp, #-0x68]
    // 0x79789c: LoadField: r1 = r0->field_27
    //     0x79789c: ldur            w1, [x0, #0x27]
    // 0x7978a0: DecompressPointer r1
    //     0x7978a0: add             x1, x1, HEAP, lsl #32
    // 0x7978a4: r0 = __unknown_function__()
    //     0x7978a4: bl              #0x78ff80  ; [] ::__unknown_function__
    // 0x7978a8: r0 = Null
    //     0x7978a8: mov             x0, NULL
    // 0x7978ac: r0 = ReturnAsyncNotFuture()
    //     0x7978ac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7978b0: sub             SP, fp, #0x78
    // 0x7978b4: mov             x3, x0
    // 0x7978b8: stur            x0, [fp, #-0x68]
    // 0x7978bc: mov             x0, x1
    // 0x7978c0: stur            x1, [fp, #-0x70]
    // 0x7978c4: r1 = Null
    //     0x7978c4: mov             x1, NULL
    // 0x7978c8: r2 = Instance_la
    //     0x7978c8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11ae8] Obj!la@455071
    //     0x7978cc: ldr             x2, [x2, #0xae8]
    // 0x7978d0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7978d0: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7978d4: r0 = call 0x2c5350
    //     0x7978d4: bl              #0x2c5350
    // 0x7978d8: mov             x1, x0
    // 0x7978dc: stur            x1, [fp, #-0x78]
    // 0x7978e0: r0 = Await()
    //     0x7978e0: bl              #0x74ab64  ; AwaitStub
    // 0x7978e4: r0 = call 0x44ccec
    //     0x7978e4: bl              #0x44ccec
    // 0x7978e8: ldur            x0, [fp, #-0x68]
    // 0x7978ec: ldur            x1, [fp, #-0x70]
    // 0x7978f0: r0 = ReThrow()
    //     0x7978f0: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7978f4: brk             #0
    // 0x7978f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7978f8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7978fc: b               #0x797808
    // 0x797900: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x797900: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] zla <anonymous closure>(dynamic, Tna, Pv) {
    // ** addr: 0x487890, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x48fdc4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x48fc8c, size: -0x1
  }
  [closure] nV <anonymous closure>(dynamic, Tna, int) {
    // ** addr: 0x48f594, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4893b0, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x48f23c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x48fcf4, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x488aa0, size: -0x1
  }
}

// class id: 3911, size: 0x1c, field offset: 0xc
//   const constructor, 
class Ucb extends REa {
}

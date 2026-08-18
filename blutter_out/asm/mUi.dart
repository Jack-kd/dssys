// lib: , url: mUi

// class id: 1049903, size: 0x8
class :: {
}

// class id: 2472, size: 0x40, field offset: 0x10
abstract class gdb extends Mq<dynamic> {

  late final NEa FSf; // offset: 0x30
  late final Ib<dynamic> _NAg; // offset: 0x20
  late final Ib<dynamic> _OAg; // offset: 0x24

  Future<void> Rwb(gdb) {
    // ** addr: 0x750af0, size: 0x48
    // 0x750af0: EnterFrame
    //     0x750af0: stp             fp, lr, [SP, #-0x10]!
    //     0x750af4: mov             fp, SP
    // 0x750af8: CheckStackOverflow
    //     0x750af8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x750afc: cmp             SP, x16
    //     0x750b00: b.ls            #0x750b18
    // 0x750b04: ldr             x1, [fp, #0x10]
    // 0x750b08: r0 = __unknown_function__()
    //     0x750b08: bl              #0x74cb58  ; [] ::__unknown_function__
    // 0x750b0c: LeaveFrame
    //     0x750b0c: mov             SP, fp
    //     0x750b10: ldp             fp, lr, [SP], #0x10
    // 0x750b14: ret
    //     0x750b14: ret             
    // 0x750b18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x750b18: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x750b1c: b               #0x750b04
  }
  Future<void> Aef(gdb) {
    // ** addr: 0x750b38, size: 0x48
    // 0x750b38: EnterFrame
    //     0x750b38: stp             fp, lr, [SP, #-0x10]!
    //     0x750b3c: mov             fp, SP
    // 0x750b40: CheckStackOverflow
    //     0x750b40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x750b44: cmp             SP, x16
    //     0x750b48: b.ls            #0x750b60
    // 0x750b4c: ldr             x1, [fp, #0x10]
    // 0x750b50: r0 = __unknown_function__()
    //     0x750b50: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x750b54: LeaveFrame
    //     0x750b54: mov             SP, fp
    //     0x750b58: ldp             fp, lr, [SP], #0x10
    // 0x750b5c: ret
    //     0x750b5c: ret             
    // 0x750b60: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x750b60: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x750b64: b               #0x750b4c
  }
  [closure] Future<void> <anonymous closure>(dynamic, IEa) async {
    // ** addr: 0x7b57f4, size: 0x4c4
    // 0x7b57f4: EnterFrame
    //     0x7b57f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7b57f8: mov             fp, SP
    // 0x7b57fc: AllocStack(0x38)
    //     0x7b57fc: sub             SP, SP, #0x38
    // 0x7b5800: SetupParameters(gdb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7b5800: stur            NULL, [fp, #-8]
    //     0x7b5804: movz            x0, #0
    //     0x7b5808: add             x1, fp, w0, sxtw #2
    //     0x7b580c: ldr             x1, [x1, #0x18]
    //     0x7b5810: add             x2, fp, w0, sxtw #2
    //     0x7b5814: ldr             x2, [x2, #0x10]
    //     0x7b5818: stur            x2, [fp, #-0x18]
    //     0x7b581c: ldur            w3, [x1, #0x17]
    //     0x7b5820: add             x3, x3, HEAP, lsl #32
    //     0x7b5824: stur            x3, [fp, #-0x10]
    // 0x7b5828: CheckStackOverflow
    //     0x7b5828: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b582c: cmp             SP, x16
    //     0x7b5830: b.ls            #0x7b5cb0
    // 0x7b5834: InitAsync() -> Future<void?>
    //     0x7b5834: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7b5838: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b583c: ldur            x0, [fp, #-0x10]
    // 0x7b5840: LoadField: r1 = r0->field_f
    //     0x7b5840: ldur            w1, [x0, #0xf]
    // 0x7b5844: DecompressPointer r1
    //     0x7b5844: add             x1, x1, HEAP, lsl #32
    // 0x7b5848: LoadField: r2 = r1->field_7
    //     0x7b5848: ldur            w2, [x1, #7]
    // 0x7b584c: DecompressPointer r2
    //     0x7b584c: add             x2, x2, HEAP, lsl #32
    // 0x7b5850: stp             x1, x2, [SP]
    // 0x7b5854: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7b5854: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7b5858: r0 = call 0x261258
    //     0x7b5858: bl              #0x261258
    // 0x7b585c: LoadField: r1 = r0->field_2b
    //     0x7b585c: ldur            w1, [x0, #0x2b]
    // 0x7b5860: DecompressPointer r1
    //     0x7b5860: add             x1, x1, HEAP, lsl #32
    // 0x7b5864: LoadField: r2 = r1->field_53
    //     0x7b5864: ldur            w2, [x1, #0x53]
    // 0x7b5868: DecompressPointer r2
    //     0x7b5868: add             x2, x2, HEAP, lsl #32
    // 0x7b586c: tbz             w2, #4, #0x7b5ca8
    // 0x7b5870: LoadField: r2 = r1->field_f
    //     0x7b5870: ldur            w2, [x1, #0xf]
    // 0x7b5874: DecompressPointer r2
    //     0x7b5874: add             x2, x2, HEAP, lsl #32
    // 0x7b5878: cmp             w2, w0
    // 0x7b587c: b.ne            #0x7b5ca8
    // 0x7b5880: ldur            x0, [fp, #-0x18]
    // 0x7b5884: LoadField: r1 = r0->field_7
    //     0x7b5884: ldur            x1, [x0, #7]
    // 0x7b5888: cmp             x1, #1
    // 0x7b588c: b.gt            #0x7b5a60
    // 0x7b5890: cmp             x1, #0
    // 0x7b5894: b.gt            #0x7b5950
    // 0x7b5898: ldur            x0, [fp, #-0x10]
    // 0x7b589c: LoadField: r1 = r0->field_f
    //     0x7b589c: ldur            w1, [x0, #0xf]
    // 0x7b58a0: DecompressPointer r1
    //     0x7b58a0: add             x1, x1, HEAP, lsl #32
    // 0x7b58a4: r2 = LoadClassIdInstr(r1)
    //     0x7b58a4: ldur            x2, [x1, #-1]
    //     0x7b58a8: ubfx            x2, x2, #0xc, #0x14
    // 0x7b58ac: cmp             x2, #0x9a9
    // 0x7b58b0: b.eq            #0x7b58bc
    // 0x7b58b4: cmp             x2, #0x9aa
    // 0x7b58b8: b.ne            #0x7b5ca0
    // 0x7b58bc: r0 = call 0x2612b8
    //     0x7b58bc: bl              #0x2612b8
    // 0x7b58c0: LoadField: r1 = r0->field_b
    //     0x7b58c0: ldur            w1, [x0, #0xb]
    // 0x7b58c4: DecompressPointer r1
    //     0x7b58c4: add             x1, x1, HEAP, lsl #32
    // 0x7b58c8: LoadField: r0 = r1->field_b
    //     0x7b58c8: ldur            w0, [x1, #0xb]
    // 0x7b58cc: DecompressPointer r0
    //     0x7b58cc: add             x0, x0, HEAP, lsl #32
    // 0x7b58d0: LoadField: r1 = r0->field_7
    //     0x7b58d0: ldur            x1, [x0, #7]
    // 0x7b58d4: r17 = -14942209
    //     0x7b58d4: movn            x17, #0xe4, lsl #16
    // 0x7b58d8: movk            x17, #0x1e40
    // 0x7b58dc: add             x0, x1, x17
    // 0x7b58e0: stur            x0, [fp, #-0x20]
    // 0x7b58e4: r0 = la()
    //     0x7b58e4: bl              #0x746f2c  ; AllocatelaStub -> la (size=0x10)
    // 0x7b58e8: mov             x2, x0
    // 0x7b58ec: ldur            x0, [fp, #-0x20]
    // 0x7b58f0: stur            x2, [fp, #-0x18]
    // 0x7b58f4: StoreField: r2->field_7 = r0
    //     0x7b58f4: stur            x0, [x2, #7]
    // 0x7b58f8: ldur            x3, [fp, #-0x10]
    // 0x7b58fc: LoadField: r1 = r3->field_f
    //     0x7b58fc: ldur            w1, [x3, #0xf]
    // 0x7b5900: DecompressPointer r1
    //     0x7b5900: add             x1, x1, HEAP, lsl #32
    // 0x7b5904: LoadField: r0 = r1->field_2f
    //     0x7b5904: ldur            w0, [x1, #0x2f]
    // 0x7b5908: DecompressPointer r0
    //     0x7b5908: add             x0, x0, HEAP, lsl #32
    // 0x7b590c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5910: cmp             w0, w16
    // 0x7b5914: b.ne            #0x7b5924
    // 0x7b5918: r2 = FSf
    //     0x7b5918: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b591c: ldr             x2, [x2, #0x7f8]
    // 0x7b5920: r0 = InitLateFinalInstanceField()
    //     0x7b5920: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b5924: mov             x1, x0
    // 0x7b5928: ldur            x0, [fp, #-0x20]
    // 0x7b592c: tbz             x0, #0x3f, #0x7b5938
    // 0x7b5930: r2 = Instance_la
    //     0x7b5930: ldr             x2, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x7b5934: b               #0x7b593c
    // 0x7b5938: ldur            x2, [fp, #-0x18]
    // 0x7b593c: r0 = call 0x4a7804
    //     0x7b593c: bl              #0x4a7804
    // 0x7b5940: mov             x1, x0
    // 0x7b5944: stur            x1, [fp, #-0x18]
    // 0x7b5948: r0 = Await()
    //     0x7b5948: bl              #0x74ab64  ; AwaitStub
    // 0x7b594c: b               #0x7b5ca0
    // 0x7b5950: ldur            x0, [fp, #-0x10]
    // 0x7b5954: LoadField: r1 = r0->field_f
    //     0x7b5954: ldur            w1, [x0, #0xf]
    // 0x7b5958: DecompressPointer r1
    //     0x7b5958: add             x1, x1, HEAP, lsl #32
    // 0x7b595c: LoadField: r0 = r1->field_2f
    //     0x7b595c: ldur            w0, [x1, #0x2f]
    // 0x7b5960: DecompressPointer r0
    //     0x7b5960: add             x0, x0, HEAP, lsl #32
    // 0x7b5964: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5968: cmp             w0, w16
    // 0x7b596c: b.ne            #0x7b597c
    // 0x7b5970: r2 = FSf
    //     0x7b5970: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b5974: ldr             x2, [x2, #0x7f8]
    // 0x7b5978: r0 = InitLateFinalInstanceField()
    //     0x7b5978: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b597c: mov             x1, x0
    // 0x7b5980: r0 = call 0x253ad4
    //     0x7b5980: bl              #0x253ad4
    // 0x7b5984: mov             x1, x0
    // 0x7b5988: stur            x1, [fp, #-0x18]
    // 0x7b598c: r0 = Await()
    //     0x7b598c: bl              #0x74ab64  ; AwaitStub
    // 0x7b5990: ldur            x0, [fp, #-0x10]
    // 0x7b5994: LoadField: r1 = r0->field_f
    //     0x7b5994: ldur            w1, [x0, #0xf]
    // 0x7b5998: DecompressPointer r1
    //     0x7b5998: add             x1, x1, HEAP, lsl #32
    // 0x7b599c: LoadField: r2 = r1->field_7
    //     0x7b599c: ldur            w2, [x1, #7]
    // 0x7b59a0: DecompressPointer r2
    //     0x7b59a0: add             x2, x2, HEAP, lsl #32
    // 0x7b59a4: stp             x1, x2, [SP]
    // 0x7b59a8: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7b59a8: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7b59ac: r0 = call 0x261258
    //     0x7b59ac: bl              #0x261258
    // 0x7b59b0: LoadField: r1 = r0->field_2b
    //     0x7b59b0: ldur            w1, [x0, #0x2b]
    // 0x7b59b4: DecompressPointer r1
    //     0x7b59b4: add             x1, x1, HEAP, lsl #32
    // 0x7b59b8: LoadField: r2 = r1->field_53
    //     0x7b59b8: ldur            w2, [x1, #0x53]
    // 0x7b59bc: DecompressPointer r2
    //     0x7b59bc: add             x2, x2, HEAP, lsl #32
    // 0x7b59c0: tbz             w2, #4, #0x7b5a58
    // 0x7b59c4: LoadField: r2 = r1->field_f
    //     0x7b59c4: ldur            w2, [x1, #0xf]
    // 0x7b59c8: DecompressPointer r2
    //     0x7b59c8: add             x2, x2, HEAP, lsl #32
    // 0x7b59cc: cmp             w2, w0
    // 0x7b59d0: b.ne            #0x7b5a58
    // 0x7b59d4: ldur            x0, [fp, #-0x10]
    // 0x7b59d8: LoadField: r2 = r0->field_f
    //     0x7b59d8: ldur            w2, [x0, #0xf]
    // 0x7b59dc: DecompressPointer r2
    //     0x7b59dc: add             x2, x2, HEAP, lsl #32
    // 0x7b59e0: mov             x1, x2
    // 0x7b59e4: stur            x2, [fp, #-0x18]
    // 0x7b59e8: r0 = call 0x2612b8
    //     0x7b59e8: bl              #0x2612b8
    // 0x7b59ec: mov             x2, x0
    // 0x7b59f0: ldur            x0, [fp, #-0x10]
    // 0x7b59f4: stur            x2, [fp, #-0x28]
    // 0x7b59f8: LoadField: r1 = r0->field_f
    //     0x7b59f8: ldur            w1, [x0, #0xf]
    // 0x7b59fc: DecompressPointer r1
    //     0x7b59fc: add             x1, x1, HEAP, lsl #32
    // 0x7b5a00: r0 = call 0x2612b8
    //     0x7b5a00: bl              #0x2612b8
    // 0x7b5a04: LoadField: r1 = r0->field_b
    //     0x7b5a04: ldur            w1, [x0, #0xb]
    // 0x7b5a08: DecompressPointer r1
    //     0x7b5a08: add             x1, x1, HEAP, lsl #32
    // 0x7b5a0c: r16 = false
    //     0x7b5a0c: add             x16, NULL, #0x30  ; false
    // 0x7b5a10: str             x16, [SP]
    // 0x7b5a14: r4 = const [0, 0x2, 0x1, 0x1, Rwb, 0x1, null]
    //     0x7b5a14: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e7e8] List(7) [0, 0x2, 0x1, 0x1, "Rwb", 0x1, Null]
    //     0x7b5a18: ldr             x4, [x4, #0x7e8]
    // 0x7b5a1c: r0 = call 0x253e1c
    //     0x7b5a1c: bl              #0x253e1c
    // 0x7b5a20: str             x0, [SP]
    // 0x7b5a24: ldur            x1, [fp, #-0x28]
    // 0x7b5a28: r4 = const [0, 0x2, 0x1, 0x1, Eoe, 0x1, null]
    //     0x7b5a28: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e7f0] List(7) [0, 0x2, 0x1, 0x1, "Eoe", 0x1, Null]
    //     0x7b5a2c: ldr             x4, [x4, #0x7f0]
    // 0x7b5a30: r0 = call 0x253c34
    //     0x7b5a30: bl              #0x253c34
    // 0x7b5a34: ldur            x1, [fp, #-0x18]
    // 0x7b5a38: mov             x2, x0
    // 0x7b5a3c: r0 = call 0x253b24
    //     0x7b5a3c: bl              #0x253b24
    // 0x7b5a40: r1 = false
    //     0x7b5a40: add             x1, NULL, #0x30  ; false
    // 0x7b5a44: r0 = __unknown_function__()
    //     0x7b5a44: bl              #0x7b5cb8  ; [] ::__unknown_function__
    // 0x7b5a48: mov             x1, x0
    // 0x7b5a4c: stur            x1, [fp, #-0x18]
    // 0x7b5a50: r0 = Await()
    //     0x7b5a50: bl              #0x74ab64  ; AwaitStub
    // 0x7b5a54: b               #0x7b5ca0
    // 0x7b5a58: r0 = Null
    //     0x7b5a58: mov             x0, NULL
    // 0x7b5a5c: r0 = ReturnAsyncNotFuture()
    //     0x7b5a5c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b5a60: cmp             x1, #2
    // 0x7b5a64: b.gt            #0x7b5b78
    // 0x7b5a68: ldur            x0, [fp, #-0x10]
    // 0x7b5a6c: LoadField: r1 = r0->field_f
    //     0x7b5a6c: ldur            w1, [x0, #0xf]
    // 0x7b5a70: DecompressPointer r1
    //     0x7b5a70: add             x1, x1, HEAP, lsl #32
    // 0x7b5a74: LoadField: r0 = r1->field_2f
    //     0x7b5a74: ldur            w0, [x1, #0x2f]
    // 0x7b5a78: DecompressPointer r0
    //     0x7b5a78: add             x0, x0, HEAP, lsl #32
    // 0x7b5a7c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5a80: cmp             w0, w16
    // 0x7b5a84: b.ne            #0x7b5a94
    // 0x7b5a88: r2 = FSf
    //     0x7b5a88: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b5a8c: ldr             x2, [x2, #0x7f8]
    // 0x7b5a90: r0 = InitLateFinalInstanceField()
    //     0x7b5a90: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b5a94: mov             x1, x0
    // 0x7b5a98: r0 = call 0x251508
    //     0x7b5a98: bl              #0x251508
    // 0x7b5a9c: mov             x1, x0
    // 0x7b5aa0: stur            x1, [fp, #-0x18]
    // 0x7b5aa4: r0 = Await()
    //     0x7b5aa4: bl              #0x74ab64  ; AwaitStub
    // 0x7b5aa8: ldur            x0, [fp, #-0x10]
    // 0x7b5aac: LoadField: r1 = r0->field_f
    //     0x7b5aac: ldur            w1, [x0, #0xf]
    // 0x7b5ab0: DecompressPointer r1
    //     0x7b5ab0: add             x1, x1, HEAP, lsl #32
    // 0x7b5ab4: LoadField: r2 = r1->field_7
    //     0x7b5ab4: ldur            w2, [x1, #7]
    // 0x7b5ab8: DecompressPointer r2
    //     0x7b5ab8: add             x2, x2, HEAP, lsl #32
    // 0x7b5abc: stp             x1, x2, [SP]
    // 0x7b5ac0: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7b5ac0: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7b5ac4: r0 = call 0x261258
    //     0x7b5ac4: bl              #0x261258
    // 0x7b5ac8: LoadField: r1 = r0->field_2b
    //     0x7b5ac8: ldur            w1, [x0, #0x2b]
    // 0x7b5acc: DecompressPointer r1
    //     0x7b5acc: add             x1, x1, HEAP, lsl #32
    // 0x7b5ad0: LoadField: r2 = r1->field_53
    //     0x7b5ad0: ldur            w2, [x1, #0x53]
    // 0x7b5ad4: DecompressPointer r2
    //     0x7b5ad4: add             x2, x2, HEAP, lsl #32
    // 0x7b5ad8: tbz             w2, #4, #0x7b5b70
    // 0x7b5adc: LoadField: r2 = r1->field_f
    //     0x7b5adc: ldur            w2, [x1, #0xf]
    // 0x7b5ae0: DecompressPointer r2
    //     0x7b5ae0: add             x2, x2, HEAP, lsl #32
    // 0x7b5ae4: cmp             w2, w0
    // 0x7b5ae8: b.ne            #0x7b5b70
    // 0x7b5aec: ldur            x0, [fp, #-0x10]
    // 0x7b5af0: LoadField: r2 = r0->field_f
    //     0x7b5af0: ldur            w2, [x0, #0xf]
    // 0x7b5af4: DecompressPointer r2
    //     0x7b5af4: add             x2, x2, HEAP, lsl #32
    // 0x7b5af8: mov             x1, x2
    // 0x7b5afc: stur            x2, [fp, #-0x18]
    // 0x7b5b00: r0 = call 0x2612b8
    //     0x7b5b00: bl              #0x2612b8
    // 0x7b5b04: mov             x2, x0
    // 0x7b5b08: ldur            x0, [fp, #-0x10]
    // 0x7b5b0c: stur            x2, [fp, #-0x28]
    // 0x7b5b10: LoadField: r1 = r0->field_f
    //     0x7b5b10: ldur            w1, [x0, #0xf]
    // 0x7b5b14: DecompressPointer r1
    //     0x7b5b14: add             x1, x1, HEAP, lsl #32
    // 0x7b5b18: r0 = call 0x2612b8
    //     0x7b5b18: bl              #0x2612b8
    // 0x7b5b1c: LoadField: r1 = r0->field_b
    //     0x7b5b1c: ldur            w1, [x0, #0xb]
    // 0x7b5b20: DecompressPointer r1
    //     0x7b5b20: add             x1, x1, HEAP, lsl #32
    // 0x7b5b24: r16 = true
    //     0x7b5b24: add             x16, NULL, #0x20  ; true
    // 0x7b5b28: str             x16, [SP]
    // 0x7b5b2c: r4 = const [0, 0x2, 0x1, 0x1, Rwb, 0x1, null]
    //     0x7b5b2c: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e7e8] List(7) [0, 0x2, 0x1, 0x1, "Rwb", 0x1, Null]
    //     0x7b5b30: ldr             x4, [x4, #0x7e8]
    // 0x7b5b34: r0 = call 0x253e1c
    //     0x7b5b34: bl              #0x253e1c
    // 0x7b5b38: str             x0, [SP]
    // 0x7b5b3c: ldur            x1, [fp, #-0x28]
    // 0x7b5b40: r4 = const [0, 0x2, 0x1, 0x1, Eoe, 0x1, null]
    //     0x7b5b40: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e7f0] List(7) [0, 0x2, 0x1, 0x1, "Eoe", 0x1, Null]
    //     0x7b5b44: ldr             x4, [x4, #0x7f0]
    // 0x7b5b48: r0 = call 0x253c34
    //     0x7b5b48: bl              #0x253c34
    // 0x7b5b4c: ldur            x1, [fp, #-0x18]
    // 0x7b5b50: mov             x2, x0
    // 0x7b5b54: r0 = call 0x253b24
    //     0x7b5b54: bl              #0x253b24
    // 0x7b5b58: r1 = true
    //     0x7b5b58: add             x1, NULL, #0x20  ; true
    // 0x7b5b5c: r0 = __unknown_function__()
    //     0x7b5b5c: bl              #0x7b5cb8  ; [] ::__unknown_function__
    // 0x7b5b60: mov             x1, x0
    // 0x7b5b64: stur            x1, [fp, #-0x18]
    // 0x7b5b68: r0 = Await()
    //     0x7b5b68: bl              #0x74ab64  ; AwaitStub
    // 0x7b5b6c: b               #0x7b5ca0
    // 0x7b5b70: r0 = Null
    //     0x7b5b70: mov             x0, NULL
    // 0x7b5b74: r0 = ReturnAsyncNotFuture()
    //     0x7b5b74: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b5b78: ldur            x0, [fp, #-0x10]
    // 0x7b5b7c: LoadField: r1 = r0->field_f
    //     0x7b5b7c: ldur            w1, [x0, #0xf]
    // 0x7b5b80: DecompressPointer r1
    //     0x7b5b80: add             x1, x1, HEAP, lsl #32
    // 0x7b5b84: r2 = LoadClassIdInstr(r1)
    //     0x7b5b84: ldur            x2, [x1, #-1]
    //     0x7b5b88: ubfx            x2, x2, #0xc, #0x14
    // 0x7b5b8c: cmp             x2, #0x9a9
    // 0x7b5b90: b.eq            #0x7b5b9c
    // 0x7b5b94: cmp             x2, #0x9aa
    // 0x7b5b98: b.ne            #0x7b5ca0
    // 0x7b5b9c: r0 = call 0x2612b8
    //     0x7b5b9c: bl              #0x2612b8
    // 0x7b5ba0: LoadField: r1 = r0->field_b
    //     0x7b5ba0: ldur            w1, [x0, #0xb]
    // 0x7b5ba4: DecompressPointer r1
    //     0x7b5ba4: add             x1, x1, HEAP, lsl #32
    // 0x7b5ba8: LoadField: r2 = r1->field_f
    //     0x7b5ba8: ldur            w2, [x1, #0xf]
    // 0x7b5bac: DecompressPointer r2
    //     0x7b5bac: add             x2, x2, HEAP, lsl #32
    // 0x7b5bb0: ldur            x0, [fp, #-0x10]
    // 0x7b5bb4: stur            x2, [fp, #-0x18]
    // 0x7b5bb8: LoadField: r1 = r0->field_f
    //     0x7b5bb8: ldur            w1, [x0, #0xf]
    // 0x7b5bbc: DecompressPointer r1
    //     0x7b5bbc: add             x1, x1, HEAP, lsl #32
    // 0x7b5bc0: r0 = call 0x2612b8
    //     0x7b5bc0: bl              #0x2612b8
    // 0x7b5bc4: LoadField: r1 = r0->field_b
    //     0x7b5bc4: ldur            w1, [x0, #0xb]
    // 0x7b5bc8: DecompressPointer r1
    //     0x7b5bc8: add             x1, x1, HEAP, lsl #32
    // 0x7b5bcc: LoadField: r0 = r1->field_b
    //     0x7b5bcc: ldur            w0, [x1, #0xb]
    // 0x7b5bd0: DecompressPointer r0
    //     0x7b5bd0: add             x0, x0, HEAP, lsl #32
    // 0x7b5bd4: LoadField: r1 = r0->field_7
    //     0x7b5bd4: ldur            x1, [x0, #7]
    // 0x7b5bd8: r17 = 15000000
    //     0x7b5bd8: movz            x17, #0xe1c0
    //     0x7b5bdc: movk            x17, #0xe4, lsl #16
    // 0x7b5be0: add             x0, x1, x17
    // 0x7b5be4: stur            x0, [fp, #-0x20]
    // 0x7b5be8: r0 = la()
    //     0x7b5be8: bl              #0x746f2c  ; AllocatelaStub -> la (size=0x10)
    // 0x7b5bec: mov             x2, x0
    // 0x7b5bf0: ldur            x0, [fp, #-0x20]
    // 0x7b5bf4: stur            x2, [fp, #-0x28]
    // 0x7b5bf8: StoreField: r2->field_7 = r0
    //     0x7b5bf8: stur            x0, [x2, #7]
    // 0x7b5bfc: ldur            x3, [fp, #-0x18]
    // 0x7b5c00: LoadField: r1 = r3->field_7
    //     0x7b5c00: ldur            x1, [x3, #7]
    // 0x7b5c04: cmp             x1, #0
    // 0x7b5c08: b.le            #0x7b5c5c
    // 0x7b5c0c: cmp             x0, x1
    // 0x7b5c10: b.le            #0x7b5c5c
    // 0x7b5c14: ldur            x0, [fp, #-0x10]
    // 0x7b5c18: LoadField: r1 = r0->field_f
    //     0x7b5c18: ldur            w1, [x0, #0xf]
    // 0x7b5c1c: DecompressPointer r1
    //     0x7b5c1c: add             x1, x1, HEAP, lsl #32
    // 0x7b5c20: LoadField: r0 = r1->field_2f
    //     0x7b5c20: ldur            w0, [x1, #0x2f]
    // 0x7b5c24: DecompressPointer r0
    //     0x7b5c24: add             x0, x0, HEAP, lsl #32
    // 0x7b5c28: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5c2c: cmp             w0, w16
    // 0x7b5c30: b.ne            #0x7b5c40
    // 0x7b5c34: r2 = FSf
    //     0x7b5c34: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b5c38: ldr             x2, [x2, #0x7f8]
    // 0x7b5c3c: r0 = InitLateFinalInstanceField()
    //     0x7b5c3c: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b5c40: mov             x1, x0
    // 0x7b5c44: ldur            x2, [fp, #-0x18]
    // 0x7b5c48: r0 = call 0x4a7804
    //     0x7b5c48: bl              #0x4a7804
    // 0x7b5c4c: mov             x1, x0
    // 0x7b5c50: stur            x1, [fp, #-0x18]
    // 0x7b5c54: r0 = Await()
    //     0x7b5c54: bl              #0x74ab64  ; AwaitStub
    // 0x7b5c58: b               #0x7b5ca0
    // 0x7b5c5c: ldur            x0, [fp, #-0x10]
    // 0x7b5c60: LoadField: r1 = r0->field_f
    //     0x7b5c60: ldur            w1, [x0, #0xf]
    // 0x7b5c64: DecompressPointer r1
    //     0x7b5c64: add             x1, x1, HEAP, lsl #32
    // 0x7b5c68: LoadField: r0 = r1->field_2f
    //     0x7b5c68: ldur            w0, [x1, #0x2f]
    // 0x7b5c6c: DecompressPointer r0
    //     0x7b5c6c: add             x0, x0, HEAP, lsl #32
    // 0x7b5c70: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5c74: cmp             w0, w16
    // 0x7b5c78: b.ne            #0x7b5c88
    // 0x7b5c7c: r2 = FSf
    //     0x7b5c7c: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b5c80: ldr             x2, [x2, #0x7f8]
    // 0x7b5c84: r0 = InitLateFinalInstanceField()
    //     0x7b5c84: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b5c88: mov             x1, x0
    // 0x7b5c8c: ldur            x2, [fp, #-0x28]
    // 0x7b5c90: r0 = call 0x4a7804
    //     0x7b5c90: bl              #0x4a7804
    // 0x7b5c94: mov             x1, x0
    // 0x7b5c98: stur            x1, [fp, #-0x18]
    // 0x7b5c9c: r0 = Await()
    //     0x7b5c9c: bl              #0x74ab64  ; AwaitStub
    // 0x7b5ca0: r0 = Null
    //     0x7b5ca0: mov             x0, NULL
    // 0x7b5ca4: r0 = ReturnAsyncNotFuture()
    //     0x7b5ca4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b5ca8: r0 = Null
    //     0x7b5ca8: mov             x0, NULL
    // 0x7b5cac: r0 = ReturnAsyncNotFuture()
    //     0x7b5cac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b5cb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b5cb0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b5cb4: b               #0x7b5834
  }
  [closure] Future<void> <anonymous closure>(dynamic, Object) async {
    // ** addr: 0x7b6894, size: 0x14c
    // 0x7b6894: EnterFrame
    //     0x7b6894: stp             fp, lr, [SP, #-0x10]!
    //     0x7b6898: mov             fp, SP
    // 0x7b689c: AllocStack(0x30)
    //     0x7b689c: sub             SP, SP, #0x30
    // 0x7b68a0: SetupParameters(gdb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7b68a0: stur            NULL, [fp, #-8]
    //     0x7b68a4: movz            x0, #0
    //     0x7b68a8: add             x1, fp, w0, sxtw #2
    //     0x7b68ac: ldr             x1, [x1, #0x18]
    //     0x7b68b0: add             x2, fp, w0, sxtw #2
    //     0x7b68b4: ldr             x2, [x2, #0x10]
    //     0x7b68b8: stur            x2, [fp, #-0x18]
    //     0x7b68bc: ldur            w3, [x1, #0x17]
    //     0x7b68c0: add             x3, x3, HEAP, lsl #32
    //     0x7b68c4: stur            x3, [fp, #-0x10]
    // 0x7b68c8: CheckStackOverflow
    //     0x7b68c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b68cc: cmp             SP, x16
    //     0x7b68d0: b.ls            #0x7b69d8
    // 0x7b68d4: InitAsync() -> Future<void?>
    //     0x7b68d4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7b68d8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b68dc: ldur            x0, [fp, #-0x10]
    // 0x7b68e0: LoadField: r1 = r0->field_f
    //     0x7b68e0: ldur            w1, [x0, #0xf]
    // 0x7b68e4: DecompressPointer r1
    //     0x7b68e4: add             x1, x1, HEAP, lsl #32
    // 0x7b68e8: LoadField: r0 = r1->field_2f
    //     0x7b68e8: ldur            w0, [x1, #0x2f]
    // 0x7b68ec: DecompressPointer r0
    //     0x7b68ec: add             x0, x0, HEAP, lsl #32
    // 0x7b68f0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b68f4: cmp             w0, w16
    // 0x7b68f8: b.ne            #0x7b6908
    // 0x7b68fc: r2 = FSf
    //     0x7b68fc: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b6900: ldr             x2, [x2, #0x7f8]
    // 0x7b6904: r0 = InitLateFinalInstanceField()
    //     0x7b6904: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b6908: stur            x0, [fp, #-0x20]
    // 0x7b690c: r0 = LoadStaticField(0x12e0)
    //     0x7b690c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b6910: ldr             x0, [x0, #0x25c0]
    // 0x7b6914: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b6918: cmp             w0, w16
    // 0x7b691c: b.ne            #0x7b692c
    // 0x7b6920: r2 = oQf
    //     0x7b6920: add             x2, PP, #0x29, lsl #12  ; [pp+0x29f48] Field <QYa.oQf>: static late (offset: 0x12e0)
    //     0x7b6924: ldr             x2, [x2, #0xf48]
    // 0x7b6928: r0 = InitLateStaticField()
    //     0x7b6928: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7b692c: ldur            x1, [fp, #-0x20]
    // 0x7b6930: ldur            x2, [fp, #-0x18]
    // 0x7b6934: mov             x3, x0
    // 0x7b6938: r0 = call 0x5b58b0
    //     0x7b6938: bl              #0x5b58b0
    // 0x7b693c: tbnz            w0, #4, #0x7b6948
    // 0x7b6940: r0 = Null
    //     0x7b6940: mov             x0, NULL
    // 0x7b6944: r0 = ReturnAsyncNotFuture()
    //     0x7b6944: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b6948: ldur            x0, [fp, #-0x10]
    // 0x7b694c: LoadField: r1 = r0->field_f
    //     0x7b694c: ldur            w1, [x0, #0xf]
    // 0x7b6950: DecompressPointer r1
    //     0x7b6950: add             x1, x1, HEAP, lsl #32
    // 0x7b6954: LoadField: r2 = r1->field_7
    //     0x7b6954: ldur            w2, [x1, #7]
    // 0x7b6958: DecompressPointer r2
    //     0x7b6958: add             x2, x2, HEAP, lsl #32
    // 0x7b695c: stp             x1, x2, [SP]
    // 0x7b6960: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7b6960: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7b6964: r0 = call 0x261258
    //     0x7b6964: bl              #0x261258
    // 0x7b6968: LoadField: r1 = r0->field_2b
    //     0x7b6968: ldur            w1, [x0, #0x2b]
    // 0x7b696c: DecompressPointer r1
    //     0x7b696c: add             x1, x1, HEAP, lsl #32
    // 0x7b6970: LoadField: r2 = r1->field_53
    //     0x7b6970: ldur            w2, [x1, #0x53]
    // 0x7b6974: DecompressPointer r2
    //     0x7b6974: add             x2, x2, HEAP, lsl #32
    // 0x7b6978: tbz             w2, #4, #0x7b69d0
    // 0x7b697c: LoadField: r2 = r1->field_f
    //     0x7b697c: ldur            w2, [x1, #0xf]
    // 0x7b6980: DecompressPointer r2
    //     0x7b6980: add             x2, x2, HEAP, lsl #32
    // 0x7b6984: cmp             w2, w0
    // 0x7b6988: b.ne            #0x7b69d0
    // 0x7b698c: ldur            x0, [fp, #-0x10]
    // 0x7b6990: LoadField: r1 = r0->field_f
    //     0x7b6990: ldur            w1, [x0, #0xf]
    // 0x7b6994: DecompressPointer r1
    //     0x7b6994: add             x1, x1, HEAP, lsl #32
    // 0x7b6998: LoadField: r0 = r1->field_2f
    //     0x7b6998: ldur            w0, [x1, #0x2f]
    // 0x7b699c: DecompressPointer r0
    //     0x7b699c: add             x0, x0, HEAP, lsl #32
    // 0x7b69a0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b69a4: cmp             w0, w16
    // 0x7b69a8: b.ne            #0x7b69b8
    // 0x7b69ac: r2 = FSf
    //     0x7b69ac: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1e7f8] Field <gdb.FSf>: late final (offset: 0x30)
    //     0x7b69b0: ldr             x2, [x2, #0x7f8]
    // 0x7b69b4: r0 = InitLateFinalInstanceField()
    //     0x7b69b4: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x7b69b8: ldur            x0, [fp, #-0x10]
    // 0x7b69bc: LoadField: r1 = r0->field_f
    //     0x7b69bc: ldur            w1, [x0, #0xf]
    // 0x7b69c0: DecompressPointer r1
    //     0x7b69c0: add             x1, x1, HEAP, lsl #32
    // 0x7b69c4: r0 = call 0x5b566c
    //     0x7b69c4: bl              #0x5b566c
    // 0x7b69c8: r0 = Null
    //     0x7b69c8: mov             x0, NULL
    // 0x7b69cc: r0 = ReturnAsyncNotFuture()
    //     0x7b69cc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b69d0: r0 = Null
    //     0x7b69d0: mov             x0, NULL
    // 0x7b69d4: r0 = ReturnAsyncNotFuture()
    //     0x7b69d4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b69d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b69d8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b69dc: b               #0x7b68d4
  }
  [closure] jdb eac(dynamic) {
    // ** addr: 0x5b0904, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, ldb?, ldb) {
    // ** addr: 0x5b60cc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, void) {
    // ** addr: 0x5b5354, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, bool) {
    // ** addr: 0x5b4564, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x5b446c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x5b3430, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x5b316c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, bool) {
    // ** addr: 0x5b2ea0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5b1e00, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5b5740, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x4a1170, size: -0x1
  }
}

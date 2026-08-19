// lib: , url: hJi

// class id: 1049347, size: 0x8
class :: {
}

// class id: 795, size: 0x14, field offset: 0x8
class IJa extends Object {

  [closure] Future<void> <anonymous closure>(dynamic, dynamic) async {
    // ** addr: 0x7e7020, size: 0x300
    // 0x7e7020: EnterFrame
    //     0x7e7020: stp             fp, lr, [SP, #-0x10]!
    //     0x7e7024: mov             fp, SP
    // 0x7e7028: AllocStack(0xa8)
    //     0x7e7028: sub             SP, SP, #0xa8
    // 0x7e702c: SetupParameters(IJa this /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x7e702c: stur            NULL, [fp, #-8]
    //     0x7e7030: movz            x0, #0
    //     0x7e7034: add             x1, fp, w0, sxtw #2
    //     0x7e7038: ldr             x1, [x1, #0x18]
    //     0x7e703c: add             x2, fp, w0, sxtw #2
    //     0x7e7040: ldr             x2, [x2, #0x10]
    //     0x7e7044: stur            x2, [fp, #-0x80]
    //     0x7e7048: ldur            w3, [x1, #0x17]
    //     0x7e704c: add             x3, x3, HEAP, lsl #32
    //     0x7e7050: stur            x3, [fp, #-0x78]
    // 0x7e7054: CheckStackOverflow
    //     0x7e7054: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e7058: cmp             SP, x16
    //     0x7e705c: b.ls            #0x7e7318
    // 0x7e7060: InitAsync() -> Future<void?>
    //     0x7e7060: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7e7064: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e7068: ldur            x1, [fp, #-0x78]
    // 0x7e706c: LoadField: r0 = r1->field_1b
    //     0x7e706c: ldur            w0, [x1, #0x1b]
    // 0x7e7070: DecompressPointer r0
    //     0x7e7070: add             x0, x0, HEAP, lsl #32
    // 0x7e7074: stur            x0, [fp, #-0x90]
    // 0x7e7078: LoadField: r2 = r0->field_b
    //     0x7e7078: ldur            w2, [x0, #0xb]
    // 0x7e707c: DecompressPointer r2
    //     0x7e707c: add             x2, x2, HEAP, lsl #32
    // 0x7e7080: LoadField: r3 = r2->field_b
    //     0x7e7080: ldur            x3, [x2, #0xb]
    // 0x7e7084: tst             x3, #0x1e
    // 0x7e7088: b.ne            #0x7e7114
    // 0x7e708c: ldur            x4, [fp, #-0x80]
    // 0x7e7090: r2 = 60
    //     0x7e7090: movz            x2, #0x3c
    // 0x7e7094: branchIfSmi(r4, 0x7e70a0)
    //     0x7e7094: tbz             w4, #0, #0x7e70a0
    // 0x7e7098: r2 = LoadClassIdInstr(r4)
    //     0x7e7098: ldur            x2, [x4, #-1]
    //     0x7e709c: ubfx            x2, x2, #0xc, #0x14
    // 0x7e70a0: cmp             x2, #0x4c
    // 0x7e70a4: b.ne            #0x7e710c
    // 0x7e70a8: mov             x0, x4
    // 0x7e70ac: StoreField: r1->field_23 = r0
    //     0x7e70ac: stur            w0, [x1, #0x23]
    //     0x7e70b0: ldurb           w16, [x1, #-1]
    //     0x7e70b4: ldurb           w17, [x0, #-1]
    //     0x7e70b8: and             x16, x17, x16, lsr #2
    //     0x7e70bc: tst             x16, HEAP, lsr #32
    //     0x7e70c0: b.eq            #0x7e70c8
    //     0x7e70c4: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7e70c8: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7e70c8: ldur            w0, [x1, #0x17]
    // 0x7e70cc: DecompressPointer r0
    //     0x7e70cc: add             x0, x0, HEAP, lsl #32
    // 0x7e70d0: stp             x0, x4, [SP]
    // 0x7e70d4: r0 = _Unb()
    //     0x7e70d4: bl              #0x749508  ; [dart:isolate] _SendPort::_Unb
    // 0x7e70d8: ldur            x2, [fp, #-0x78]
    // 0x7e70dc: LoadField: r0 = r2->field_23
    //     0x7e70dc: ldur            w0, [x2, #0x23]
    // 0x7e70e0: DecompressPointer r0
    //     0x7e70e0: add             x0, x0, HEAP, lsl #32
    // 0x7e70e4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e70e8: cmp             w0, w16
    // 0x7e70ec: b.eq            #0x7e72f8
    // 0x7e70f0: LoadField: r1 = r2->field_f
    //     0x7e70f0: ldur            w1, [x2, #0xf]
    // 0x7e70f4: DecompressPointer r1
    //     0x7e70f4: add             x1, x1, HEAP, lsl #32
    // 0x7e70f8: LoadField: r2 = r1->field_7
    //     0x7e70f8: ldur            w2, [x1, #7]
    // 0x7e70fc: DecompressPointer r2
    //     0x7e70fc: add             x2, x2, HEAP, lsl #32
    // 0x7e7100: stp             x2, x0, [SP]
    // 0x7e7104: r0 = _Unb()
    //     0x7e7104: bl              #0x749508  ; [dart:isolate] _SendPort::_Unb
    // 0x7e7108: b               #0x7e72f0
    // 0x7e710c: mov             x2, x1
    // 0x7e7110: b               #0x7e711c
    // 0x7e7114: ldur            x4, [fp, #-0x80]
    // 0x7e7118: mov             x2, x1
    // 0x7e711c: tst             x3, #0x1e
    // 0x7e7120: b.ne            #0x7e71a4
    // 0x7e7124: r1 = 60
    //     0x7e7124: movz            x1, #0x3c
    // 0x7e7128: branchIfSmi(r4, 0x7e7134)
    //     0x7e7128: tbz             w4, #0, #0x7e7134
    // 0x7e712c: r1 = LoadClassIdInstr(r4)
    //     0x7e712c: ldur            x1, [x4, #-1]
    //     0x7e7130: ubfx            x1, x1, #0xc, #0x14
    // 0x7e7134: sub             x16, x1, #0x3c
    // 0x7e7138: cmp             x16, #1
    // 0x7e713c: b.hi            #0x7e719c
    // 0x7e7140: r1 = LoadInt32Instr(r4)
    //     0x7e7140: sbfx            x1, x4, #1, #0x1f
    //     0x7e7144: tbz             w4, #0, #0x7e714c
    //     0x7e7148: ldur            x1, [x4, #7]
    // 0x7e714c: mov             x3, x1
    // 0x7e7150: stur            x3, [fp, #-0x88]
    // 0x7e7154: r1 = <Never>
    //     0x7e7154: ldr             x1, [PP, #0x1d90]  ; [pp+0x1d90] TypeArguments: <Never>
    // 0x7e7158: r0 = Pointer()
    //     0x7e7158: bl              #0x746eac  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0x7e715c: mov             x1, x0
    // 0x7e7160: ldur            x0, [fp, #-0x88]
    // 0x7e7164: StoreField: r1->field_7 = r0
    //     0x7e7164: stur            x0, [x1, #7]
    // 0x7e7168: mov             x0, x1
    // 0x7e716c: ldur            x3, [fp, #-0x78]
    // 0x7e7170: StoreField: r3->field_27 = r0
    //     0x7e7170: stur            w0, [x3, #0x27]
    //     0x7e7174: ldurb           w16, [x3, #-1]
    //     0x7e7178: ldurb           w17, [x0, #-1]
    //     0x7e717c: and             x16, x17, x16, lsr #2
    //     0x7e7180: tst             x16, HEAP, lsr #32
    //     0x7e7184: b.eq            #0x7e718c
    //     0x7e7188: bl              #0x7dc9c8  ; WriteBarrierWrappersStub
    // 0x7e718c: ldur            x1, [fp, #-0x90]
    // 0x7e7190: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e7190: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e7194: r0 = call 0x5ee7a4
    //     0x7e7194: bl              #0x5ee7a4
    // 0x7e7198: b               #0x7e72f0
    // 0x7e719c: mov             x3, x2
    // 0x7e71a0: b               #0x7e71a8
    // 0x7e71a4: mov             x3, x2
    // 0x7e71a8: cmp             w4, NULL
    // 0x7e71ac: b.eq            #0x7e72e0
    // 0x7e71b0: r4 as int
    //     0x7e71b0: mov             x0, x4
    //     0x7e71b4: mov             x2, NULL
    //     0x7e71b8: mov             x1, NULL
    //     0x7e71bc: tbz             w0, #0, #0x7e71e4
    //     0x7e71c0: ldur            x4, [x0, #-1]
    //     0x7e71c4: ubfx            x4, x4, #0xc, #0x14
    //     0x7e71c8: sub             x4, x4, #0x3c
    //     0x7e71cc: cmp             x4, #1
    //     0x7e71d0: b.ls            #0x7e71e4
    //     0x7e71d4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x7e71d8: add             x3, PP, #8, lsl #12  ; [pp+0x84b8] Null
    //     0x7e71dc: ldr             x3, [x3, #0x4b8]
    //     0x7e71e0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7e71e4: ldur            x0, [fp, #-0x80]
    // 0x7e71e8: r1 = LoadInt32Instr(r0)
    //     0x7e71e8: sbfx            x1, x0, #1, #0x1f
    //     0x7e71ec: tbz             w0, #0, #0x7e71f4
    //     0x7e71f0: ldur            x1, [x0, #7]
    // 0x7e71f4: mov             x0, x1
    // 0x7e71f8: stur            x0, [fp, #-0x88]
    // 0x7e71fc: r1 = <Never>
    //     0x7e71fc: ldr             x1, [PP, #0x1d90]  ; [pp+0x1d90] TypeArguments: <Never>
    // 0x7e7200: r0 = Pointer()
    //     0x7e7200: bl              #0x746eac  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0x7e7204: mov             x3, x0
    // 0x7e7208: ldur            x0, [fp, #-0x88]
    // 0x7e720c: stur            x3, [fp, #-0x98]
    // 0x7e7210: StoreField: r3->field_7 = r0
    //     0x7e7210: stur            x0, [x3, #7]
    // 0x7e7214: ldur            x0, [fp, #-0x78]
    // 0x7e7218: LoadField: r4 = r0->field_13
    //     0x7e7218: ldur            w4, [x0, #0x13]
    // 0x7e721c: DecompressPointer r4
    //     0x7e721c: add             x4, x4, HEAP, lsl #32
    // 0x7e7220: stur            x4, [fp, #-0x90]
    // 0x7e7224: ArrayLoad: r5 = r4[0]  ; List_4
    //     0x7e7224: ldur            w5, [x4, #0x17]
    // 0x7e7228: DecompressPointer r5
    //     0x7e7228: add             x5, x5, HEAP, lsl #32
    // 0x7e722c: mov             x1, x5
    // 0x7e7230: mov             x2, x3
    // 0x7e7234: stur            x5, [fp, #-0x80]
    // 0x7e7238: r0 = __unknown_function__()
    //     0x7e7238: bl              #0x7e7320  ; [] ::__unknown_function__
    // 0x7e723c: mov             x1, x0
    // 0x7e7240: stur            x1, [fp, #-0x80]
    // 0x7e7244: r0 = Await()
    //     0x7e7244: bl              #0x74ab64  ; AwaitStub
    // 0x7e7248: b               #0x7e72b8
    // 0x7e724c: sub             SP, fp, #0xa8
    // 0x7e7250: stur            x1, [fp, #-0x80]
    // 0x7e7254: r2 = 60
    //     0x7e7254: movz            x2, #0x3c
    // 0x7e7258: branchIfSmi(r0, 0x7e7264)
    //     0x7e7258: tbz             w0, #0, #0x7e7264
    // 0x7e725c: r2 = LoadClassIdInstr(r0)
    //     0x7e725c: ldur            x2, [x0, #-1]
    //     0x7e7260: ubfx            x2, x2, #0xc, #0x14
    // 0x7e7264: str             x0, [SP]
    // 0x7e7268: mov             x0, x2
    // 0x7e726c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e726c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e7270: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e7270: movz            x17, #0x3a5d
    //     0x7e7274: add             lr, x0, x17
    //     0x7e7278: ldr             lr, [x21, lr, lsl #3]
    //     0x7e727c: blr             lr
    // 0x7e7280: mov             x1, x0
    // 0x7e7284: r0 = call 0x465480
    //     0x7e7284: bl              #0x465480
    // 0x7e7288: ldur            x0, [fp, #-0x80]
    // 0x7e728c: r1 = LoadClassIdInstr(r0)
    //     0x7e728c: ldur            x1, [x0, #-1]
    //     0x7e7290: ubfx            x1, x1, #0xc, #0x14
    // 0x7e7294: str             x0, [SP]
    // 0x7e7298: mov             x0, x1
    // 0x7e729c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e729c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e72a0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e72a0: movz            x17, #0x3a5d
    //     0x7e72a4: add             lr, x0, x17
    //     0x7e72a8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e72ac: blr             lr
    // 0x7e72b0: mov             x1, x0
    // 0x7e72b4: r0 = call 0x465480
    //     0x7e72b4: bl              #0x465480
    // 0x7e72b8: ldur            x0, [fp, #-0x78]
    // 0x7e72bc: LoadField: r1 = r0->field_23
    //     0x7e72bc: ldur            w1, [x0, #0x23]
    // 0x7e72c0: DecompressPointer r1
    //     0x7e72c0: add             x1, x1, HEAP, lsl #32
    // 0x7e72c4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e72c8: cmp             w1, w16
    // 0x7e72cc: b.eq            #0x7e7308
    // 0x7e72d0: r16 = true
    //     0x7e72d0: add             x16, NULL, #0x20  ; true
    // 0x7e72d4: stp             x16, x1, [SP]
    // 0x7e72d8: r0 = _Unb()
    //     0x7e72d8: bl              #0x749508  ; [dart:isolate] _SendPort::_Unb
    // 0x7e72dc: b               #0x7e72f0
    // 0x7e72e0: mov             x0, x3
    // 0x7e72e4: LoadField: r1 = r0->field_1f
    //     0x7e72e4: ldur            w1, [x0, #0x1f]
    // 0x7e72e8: DecompressPointer r1
    //     0x7e72e8: add             x1, x1, HEAP, lsl #32
    // 0x7e72ec: r0 = call 0x4168c0
    //     0x7e72ec: bl              #0x4168c0
    // 0x7e72f0: r0 = Null
    //     0x7e72f0: mov             x0, NULL
    // 0x7e72f4: r0 = ReturnAsyncNotFuture()
    //     0x7e72f4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e72f8: r16 = "wjb"
    //     0x7e72f8: ldr             x16, [PP, #0x32d0]  ; [pp+0x32d0] "wjb"
    // 0x7e72fc: str             x16, [SP]
    // 0x7e7300: r0 = _throwLocalNotInitialized()
    //     0x7e7300: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7e7304: brk             #0
    // 0x7e7308: r16 = "wjb"
    //     0x7e7308: ldr             x16, [PP, #0x32d0]  ; [pp+0x32d0] "wjb"
    // 0x7e730c: str             x16, [SP]
    // 0x7e7310: r0 = _throwLocalNotInitialized()
    //     0x7e7310: bl              #0x255d38  ; [dart:_internal] LateError::_throwLocalNotInitialized
    // 0x7e7314: brk             #0
    // 0x7e7318: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e7318: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e731c: b               #0x7e7060
  }
  [closure] static void _Leg(dynamic, SendPort) {
    // ** addr: 0x7424ec, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x742a00, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x5b2310, size: -0x1
  }
}

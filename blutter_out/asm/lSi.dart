// lib: , url: lSi

// class id: 1049792, size: 0x8
class :: {

  static late final vSa<UYa<dynamic>, int> kvg; // offset: 0x1420

  [closure] static Future<VYa<dynamic>> <anonymous closure>(dynamic, int) async {
    // ** addr: 0x788760, size: 0x33c
    // 0x788760: EnterFrame
    //     0x788760: stp             fp, lr, [SP, #-0x10]!
    //     0x788764: mov             fp, SP
    // 0x788768: AllocStack(0x38)
    //     0x788768: sub             SP, SP, #0x38
    // 0x78876c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x78876c: stur            NULL, [fp, #-8]
    //     0x788770: movz            x0, #0
    //     0x788774: add             x1, fp, w0, sxtw #2
    //     0x788778: ldr             x1, [x1, #0x18]
    //     0x78877c: add             x2, fp, w0, sxtw #2
    //     0x788780: ldr             x2, [x2, #0x10]
    //     0x788784: stur            x2, [fp, #-0x18]
    //     0x788788: ldur            w3, [x1, #0x17]
    //     0x78878c: add             x3, x3, HEAP, lsl #32
    //     0x788790: stur            x3, [fp, #-0x10]
    // 0x788794: CheckStackOverflow
    //     0x788794: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x788798: cmp             SP, x16
    //     0x78879c: b.ls            #0x788a94
    // 0x7887a0: InitAsync() -> Future<VYa>
    //     0x7887a0: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a30] TypeArguments: <VYa>
    //     0x7887a4: ldr             x0, [x0, #0xa30]
    //     0x7887a8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7887ac: ldur            x0, [fp, #-0x10]
    // 0x7887b0: LoadField: r1 = r0->field_13
    //     0x7887b0: ldur            w1, [x0, #0x13]
    // 0x7887b4: DecompressPointer r1
    //     0x7887b4: add             x1, x1, HEAP, lsl #32
    // 0x7887b8: LoadField: r2 = r0->field_f
    //     0x7887b8: ldur            w2, [x0, #0xf]
    // 0x7887bc: DecompressPointer r2
    //     0x7887bc: add             x2, x2, HEAP, lsl #32
    // 0x7887c0: ldur            x4, [fp, #-0x18]
    // 0x7887c4: r5 = LoadInt32Instr(r4)
    //     0x7887c4: sbfx            x5, x4, #1, #0x1f
    //     0x7887c8: tbz             w4, #0, #0x7887d0
    //     0x7887cc: ldur            x5, [x4, #7]
    // 0x7887d0: stur            x5, [fp, #-0x20]
    // 0x7887d4: r3 = LoadInt32Instr(r2)
    //     0x7887d4: sbfx            x3, x2, #1, #0x1f
    //     0x7887d8: tbz             w2, #0, #0x7887e0
    //     0x7887dc: ldur            x3, [x2, #7]
    // 0x7887e0: mov             x2, x5
    // 0x7887e4: r0 = __unknown_function__()
    //     0x7887e4: bl              #0x788aa8  ; [] ::__unknown_function__
    // 0x7887e8: mov             x1, x0
    // 0x7887ec: stur            x1, [fp, #-0x28]
    // 0x7887f0: r0 = Await()
    //     0x7887f0: bl              #0x74ab64  ; AwaitStub
    // 0x7887f4: mov             x1, x0
    // 0x7887f8: stur            x0, [fp, #-0x10]
    // 0x7887fc: r0 = call 0x3b4da8
    //     0x7887fc: bl              #0x3b4da8
    // 0x788800: tbz             w0, #4, #0x788844
    // 0x788804: ldur            x0, [fp, #-0x10]
    // 0x788808: r1 = "a2862c3204ba"
    //     0x788808: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c048] "a2862c3204ba"
    //     0x78880c: ldr             x1, [x1, #0x48]
    // 0x788810: r0 = call 0x450048
    //     0x788810: bl              #0x450048
    // 0x788814: ldur            x3, [fp, #-0x10]
    // 0x788818: r1 = LoadClassIdInstr(r3)
    //     0x788818: ldur            x1, [x3, #-1]
    //     0x78881c: ubfx            x1, x1, #0xc, #0x14
    // 0x788820: mov             x2, x0
    // 0x788824: mov             x0, x1
    // 0x788828: mov             x1, x3
    // 0x78882c: mov             lr, x0
    // 0x788830: ldr             lr, [x21, lr, lsl #3]
    // 0x788834: blr             lr
    // 0x788838: mov             x1, x0
    // 0x78883c: r0 = call 0x3b4da8
    //     0x78883c: bl              #0x3b4da8
    // 0x788840: tbnz            w0, #4, #0x788850
    // 0x788844: r0 = Instance_VYa
    //     0x788844: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a40] Obj!VYa@440811
    //     0x788848: ldr             x0, [x0, #0xa40]
    // 0x78884c: r0 = ReturnAsyncNotFuture()
    //     0x78884c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x788850: ldur            x0, [fp, #-0x10]
    // 0x788854: r1 = "81624433b2e7"
    //     0x788854: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c050] "81624433b2e7"
    //     0x788858: ldr             x1, [x1, #0x50]
    // 0x78885c: r0 = call 0x450048
    //     0x78885c: bl              #0x450048
    // 0x788860: ldur            x3, [fp, #-0x10]
    // 0x788864: r1 = LoadClassIdInstr(r3)
    //     0x788864: ldur            x1, [x3, #-1]
    //     0x788868: ubfx            x1, x1, #0xc, #0x14
    // 0x78886c: mov             x2, x0
    // 0x788870: mov             x0, x1
    // 0x788874: mov             x1, x3
    // 0x788878: mov             lr, x0
    // 0x78887c: ldr             lr, [x21, lr, lsl #3]
    // 0x788880: blr             lr
    // 0x788884: mov             x3, x0
    // 0x788888: r2 = Null
    //     0x788888: mov             x2, NULL
    // 0x78888c: r1 = Null
    //     0x78888c: mov             x1, NULL
    // 0x788890: stur            x3, [fp, #-0x18]
    // 0x788894: branchIfSmi(r0, 0x7888c0)
    //     0x788894: tbz             w0, #0, #0x7888c0
    // 0x788898: r4 = LoadClassIdInstr(r0)
    //     0x788898: ldur            x4, [x0, #-1]
    //     0x78889c: ubfx            x4, x4, #0xc, #0x14
    // 0x7888a0: sub             x4, x4, #0x3c
    // 0x7888a4: cmp             x4, #2
    // 0x7888a8: b.ls            #0x7888c0
    // 0x7888ac: r8 = num?
    //     0x7888ac: add             x8, PP, #0xa, lsl #12  ; [pp+0xad18] Type: num?
    //     0x7888b0: ldr             x8, [x8, #0xd18]
    // 0x7888b4: r3 = Null
    //     0x7888b4: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c058] Null
    //     0x7888b8: ldr             x3, [x3, #0x58]
    // 0x7888bc: r0 = DefaultNullableTypeTest()
    //     0x7888bc: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x7888c0: ldur            x0, [fp, #-0x18]
    // 0x7888c4: cmp             w0, NULL
    // 0x7888c8: b.ne            #0x7888d4
    // 0x7888cc: r0 = Null
    //     0x7888cc: mov             x0, NULL
    // 0x7888d0: b               #0x7888f8
    // 0x7888d4: r1 = 60
    //     0x7888d4: movz            x1, #0x3c
    // 0x7888d8: branchIfSmi(r0, 0x7888e4)
    //     0x7888d8: tbz             w0, #0, #0x7888e4
    // 0x7888dc: r1 = LoadClassIdInstr(r0)
    //     0x7888dc: ldur            x1, [x0, #-1]
    //     0x7888e0: ubfx            x1, x1, #0xc, #0x14
    // 0x7888e4: str             x0, [SP]
    // 0x7888e8: mov             x0, x1
    // 0x7888ec: r0 = GDT[cid_x0 + -0xffd]()
    //     0x7888ec: sub             lr, x0, #0xffd
    //     0x7888f0: ldr             lr, [x21, lr, lsl #3]
    //     0x7888f4: blr             lr
    // 0x7888f8: cmp             w0, NULL
    // 0x7888fc: b.ne            #0x788908
    // 0x788900: ldur            x2, [fp, #-0x20]
    // 0x788904: b               #0x788918
    // 0x788908: r1 = LoadInt32Instr(r0)
    //     0x788908: sbfx            x1, x0, #1, #0x1f
    //     0x78890c: tbz             w0, #0, #0x788914
    //     0x788910: ldur            x1, [x0, #7]
    // 0x788914: mov             x2, x1
    // 0x788918: ldur            x0, [fp, #-0x10]
    // 0x78891c: stur            x2, [fp, #-0x20]
    // 0x788920: r1 = "0f4070c438a2ee2b09ce9e"
    //     0x788920: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c068] "0f4070c438a2ee2b09ce9e"
    //     0x788924: ldr             x1, [x1, #0x68]
    // 0x788928: r0 = call 0x450048
    //     0x788928: bl              #0x450048
    // 0x78892c: ldur            x3, [fp, #-0x10]
    // 0x788930: r1 = LoadClassIdInstr(r3)
    //     0x788930: ldur            x1, [x3, #-1]
    //     0x788934: ubfx            x1, x1, #0xc, #0x14
    // 0x788938: mov             x2, x0
    // 0x78893c: mov             x0, x1
    // 0x788940: mov             x1, x3
    // 0x788944: mov             lr, x0
    // 0x788948: ldr             lr, [x21, lr, lsl #3]
    // 0x78894c: blr             lr
    // 0x788950: mov             x3, x0
    // 0x788954: r2 = Null
    //     0x788954: mov             x2, NULL
    // 0x788958: r1 = Null
    //     0x788958: mov             x1, NULL
    // 0x78895c: stur            x3, [fp, #-0x18]
    // 0x788960: branchIfSmi(r0, 0x78898c)
    //     0x788960: tbz             w0, #0, #0x78898c
    // 0x788964: r4 = LoadClassIdInstr(r0)
    //     0x788964: ldur            x4, [x0, #-1]
    //     0x788968: ubfx            x4, x4, #0xc, #0x14
    // 0x78896c: sub             x4, x4, #0x3c
    // 0x788970: cmp             x4, #2
    // 0x788974: b.ls            #0x78898c
    // 0x788978: r8 = num?
    //     0x788978: add             x8, PP, #0xa, lsl #12  ; [pp+0xad18] Type: num?
    //     0x78897c: ldr             x8, [x8, #0xd18]
    // 0x788980: r3 = Null
    //     0x788980: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c070] Null
    //     0x788984: ldr             x3, [x3, #0x70]
    // 0x788988: r0 = DefaultNullableTypeTest()
    //     0x788988: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x78898c: ldur            x0, [fp, #-0x18]
    // 0x788990: cmp             w0, NULL
    // 0x788994: b.ne            #0x7889a0
    // 0x788998: r0 = Null
    //     0x788998: mov             x0, NULL
    // 0x78899c: b               #0x7889c4
    // 0x7889a0: r1 = 60
    //     0x7889a0: movz            x1, #0x3c
    // 0x7889a4: branchIfSmi(r0, 0x7889b0)
    //     0x7889a4: tbz             w0, #0, #0x7889b0
    // 0x7889a8: r1 = LoadClassIdInstr(r0)
    //     0x7889a8: ldur            x1, [x0, #-1]
    //     0x7889ac: ubfx            x1, x1, #0xc, #0x14
    // 0x7889b0: str             x0, [SP]
    // 0x7889b4: mov             x0, x1
    // 0x7889b8: r0 = GDT[cid_x0 + -0xffd]()
    //     0x7889b8: sub             lr, x0, #0xffd
    //     0x7889bc: ldr             lr, [x21, lr, lsl #3]
    //     0x7889c0: blr             lr
    // 0x7889c4: cmp             w0, NULL
    // 0x7889c8: b.ne            #0x7889d4
    // 0x7889cc: ldur            x3, [fp, #-0x20]
    // 0x7889d0: b               #0x7889e4
    // 0x7889d4: r1 = LoadInt32Instr(r0)
    //     0x7889d4: sbfx            x1, x0, #1, #0x1f
    //     0x7889d8: tbz             w0, #0, #0x7889e0
    //     0x7889dc: ldur            x1, [x0, #7]
    // 0x7889e0: mov             x3, x1
    // 0x7889e4: ldur            x0, [fp, #-0x10]
    // 0x7889e8: ldur            x2, [fp, #-0x20]
    // 0x7889ec: stur            x3, [fp, #-0x30]
    // 0x7889f0: r1 = "beb9e1be25fe"
    //     0x7889f0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c080] "beb9e1be25fe"
    //     0x7889f4: ldr             x1, [x1, #0x80]
    // 0x7889f8: r0 = call 0x450048
    //     0x7889f8: bl              #0x450048
    // 0x7889fc: ldur            x1, [fp, #-0x10]
    // 0x788a00: r2 = LoadClassIdInstr(r1)
    //     0x788a00: ldur            x2, [x1, #-1]
    //     0x788a04: ubfx            x2, x2, #0xc, #0x14
    // 0x788a08: mov             x16, x0
    // 0x788a0c: mov             x0, x2
    // 0x788a10: mov             x2, x16
    // 0x788a14: mov             lr, x0
    // 0x788a18: ldr             lr, [x21, lr, lsl #3]
    // 0x788a1c: blr             lr
    // 0x788a20: mov             x3, x0
    // 0x788a24: r2 = Null
    //     0x788a24: mov             x2, NULL
    // 0x788a28: r1 = Null
    //     0x788a28: mov             x1, NULL
    // 0x788a2c: stur            x3, [fp, #-0x10]
    // 0x788a30: r4 = 60
    //     0x788a30: movz            x4, #0x3c
    // 0x788a34: branchIfSmi(r0, 0x788a40)
    //     0x788a34: tbz             w0, #0, #0x788a40
    // 0x788a38: r4 = LoadClassIdInstr(r0)
    //     0x788a38: ldur            x4, [x0, #-1]
    //     0x788a3c: ubfx            x4, x4, #0xc, #0x14
    // 0x788a40: sub             x4, x4, #0x5a
    // 0x788a44: cmp             x4, #2
    // 0x788a48: b.ls            #0x788a5c
    // 0x788a4c: r8 = List
    //     0x788a4c: ldr             x8, [PP, #0x28a8]  ; [pp+0x28a8] Type: List
    // 0x788a50: r3 = Null
    //     0x788a50: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c088] Null
    //     0x788a54: ldr             x3, [x3, #0x88]
    // 0x788a58: r0 = List()
    //     0x788a58: bl              #0x7f27c4  ; IsType_List_Stub
    // 0x788a5c: ldur            x2, [fp, #-0x10]
    // 0x788a60: r1 = Null
    //     0x788a60: mov             x1, NULL
    // 0x788a64: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x788a64: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x788a68: r0 = call 0x299828
    //     0x788a68: bl              #0x299828
    // 0x788a6c: r1 = Null
    //     0x788a6c: mov             x1, NULL
    // 0x788a70: stur            x0, [fp, #-0x10]
    // 0x788a74: r0 = VYa()
    //     0x788a74: bl              #0x788a9c  ; AllocateVYaStub -> VYa<X0> (size=0x20)
    // 0x788a78: ldur            x1, [fp, #-0x10]
    // 0x788a7c: StoreField: r0->field_b = r1
    //     0x788a7c: stur            w1, [x0, #0xb]
    // 0x788a80: ldur            x1, [fp, #-0x20]
    // 0x788a84: StoreField: r0->field_f = r1
    //     0x788a84: stur            x1, [x0, #0xf]
    // 0x788a88: ldur            x1, [fp, #-0x30]
    // 0x788a8c: ArrayStore: r0[0] = r1  ; List_8
    //     0x788a8c: stur            x1, [x0, #0x17]
    // 0x788a90: r0 = ReturnAsyncNotFuture()
    //     0x788a90: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x788a94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x788a94: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x788a98: b               #0x7887a0
  }
  [closure] static UYa<dynamic> <anonymous closure>(dynamic, URa, int) {
    // ** addr: 0x44fb78, size: -0x1
  }
  static vSa<UYa<dynamic>, int> kvg() {
    // ** addr: 0x44f7ec, size: -0x1
  }
}

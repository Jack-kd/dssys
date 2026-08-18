// lib: , url: aUi

// class id: 1049891, size: 0x8
class :: {
}

// class id: 3992, size: 0x1c, field offset: 0xc
//   const constructor, 
class Tcb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7bfef4, size: 0x1fc
    // 0x7bfef4: EnterFrame
    //     0x7bfef4: stp             fp, lr, [SP, #-0x10]!
    //     0x7bfef8: mov             fp, SP
    // 0x7bfefc: AllocStack(0x60)
    //     0x7bfefc: sub             SP, SP, #0x60
    // 0x7bff00: SetupParameters(Tcb this /* r1 */)
    //     0x7bff00: stur            NULL, [fp, #-8]
    //     0x7bff04: movz            x0, #0
    //     0x7bff08: add             x1, fp, w0, sxtw #2
    //     0x7bff0c: ldr             x1, [x1, #0x10]
    //     0x7bff10: ldur            w2, [x1, #0x17]
    //     0x7bff14: add             x2, x2, HEAP, lsl #32
    //     0x7bff18: stur            x2, [fp, #-0x10]
    // 0x7bff1c: CheckStackOverflow
    //     0x7bff1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bff20: cmp             SP, x16
    //     0x7bff24: b.ls            #0x7c00e8
    // 0x7bff28: InitAsync() -> Future<void?>
    //     0x7bff28: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bff2c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bff30: ldur            x2, [fp, #-0x10]
    // 0x7bff34: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x7bff34: ldur            w3, [x2, #0x17]
    // 0x7bff38: DecompressPointer r3
    //     0x7bff38: add             x3, x3, HEAP, lsl #32
    // 0x7bff3c: LoadField: r0 = r2->field_f
    //     0x7bff3c: ldur            w0, [x2, #0xf]
    // 0x7bff40: DecompressPointer r0
    //     0x7bff40: add             x0, x0, HEAP, lsl #32
    // 0x7bff44: LoadField: r4 = r0->field_b
    //     0x7bff44: ldur            x4, [x0, #0xb]
    // 0x7bff48: LoadField: r5 = r0->field_13
    //     0x7bff48: ldur            w5, [x0, #0x13]
    // 0x7bff4c: DecompressPointer r5
    //     0x7bff4c: add             x5, x5, HEAP, lsl #32
    // 0x7bff50: r0 = BoxInt64Instr(r4)
    //     0x7bff50: sbfiz           x0, x4, #1, #0x1f
    //     0x7bff54: cmp             x4, x0, asr #1
    //     0x7bff58: b.eq            #0x7bff64
    //     0x7bff5c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7bff60: stur            x4, [x0, #7]
    // 0x7bff64: stp             x3, x5, [SP, #8]
    // 0x7bff68: str             x0, [SP]
    // 0x7bff6c: mov             x0, x5
    // 0x7bff70: ClosureCall
    //     0x7bff70: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7bff74: ldur            x2, [x0, #0x1f]
    //     0x7bff78: blr             x2
    // 0x7bff7c: stur            x0, [fp, #-0x18]
    // 0x7bff80: str             x0, [SP]
    // 0x7bff84: r4 = 0
    //     0x7bff84: movz            x4, #0
    // 0x7bff88: ldr             x0, [SP]
    // 0x7bff8c: r16 = 140563490515876
    //     0x7bff8c: add             x16, PP, #0x24, lsl #12  ; [pp+0x24d80] IMM: 0x7fd77cebaba4
    //     0x7bff90: add             x16, x16, #0xd80
    // 0x7bff94: ldp             lr, x5, [x16]
    // 0x7bff98: blr             lr
    // 0x7bff9c: ldur            x0, [fp, #-0x10]
    // 0x7bffa0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7bffa0: ldur            w1, [x0, #0x17]
    // 0x7bffa4: DecompressPointer r1
    //     0x7bffa4: add             x1, x1, HEAP, lsl #32
    // 0x7bffa8: stur            x1, [fp, #-0x20]
    // 0x7bffac: r0 = LoadStaticField(0x13a0)
    //     0x7bffac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7bffb0: ldr             x0, [x0, #0x2740]
    // 0x7bffb4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7bffb8: cmp             w0, w16
    // 0x7bffbc: b.ne            #0x7bffcc
    // 0x7bffc0: r2 = fsg
    //     0x7bffc0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7bffc4: ldr             x2, [x2, #0x830]
    // 0x7bffc8: r0 = InitLateFinalStaticField()
    //     0x7bffc8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7bffcc: r16 = <NZa>
    //     0x7bffcc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11838] TypeArguments: <NZa>
    //     0x7bffd0: ldr             x16, [x16, #0x838]
    // 0x7bffd4: ldur            lr, [fp, #-0x20]
    // 0x7bffd8: stp             lr, x16, [SP, #8]
    // 0x7bffdc: str             x0, [SP]
    // 0x7bffe0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7bffe0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7bffe4: r0 = call 0x263414
    //     0x7bffe4: bl              #0x263414
    // 0x7bffe8: LoadField: r1 = r0->field_b
    //     0x7bffe8: ldur            w1, [x0, #0xb]
    // 0x7bffec: DecompressPointer r1
    //     0x7bffec: add             x1, x1, HEAP, lsl #32
    // 0x7bfff0: tbz             w1, #4, #0x7c0034
    // 0x7bfff4: str             NULL, [SP]
    // 0x7bfff8: r4 = const [0x1, 0, 0, 0, null]
    //     0x7bfff8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0, 0, 0, Null]
    // 0x7bfffc: r0 = __unknown_function__()
    //     0x7bfffc: bl              #0x7932a0  ; [] ::__unknown_function__
    // 0x7c0000: mov             x1, x0
    // 0x7c0004: stur            x1, [fp, #-0x20]
    // 0x7c0008: r0 = Await()
    //     0x7c0008: bl              #0x74ab64  ; AwaitStub
    // 0x7c000c: ldur            x16, [fp, #-0x18]
    // 0x7c0010: str             x16, [SP]
    // 0x7c0014: r4 = 0
    //     0x7c0014: movz            x4, #0
    // 0x7c0018: ldr             x0, [SP]
    // 0x7c001c: r16 = 140563490515876
    //     0x7c001c: add             x16, PP, #0x24, lsl #12  ; [pp+0x24d90] IMM: 0x7fd77cebaba4
    //     0x7c0020: add             x16, x16, #0xd90
    // 0x7c0024: ldp             lr, x5, [x16]
    // 0x7c0028: blr             lr
    // 0x7c002c: r0 = Null
    //     0x7c002c: mov             x0, NULL
    // 0x7c0030: r0 = ReturnAsyncNotFuture()
    //     0x7c0030: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c0034: ldur            x0, [fp, #-0x10]
    // 0x7c0038: LoadField: r2 = r0->field_13
    //     0x7c0038: ldur            w2, [x0, #0x13]
    // 0x7c003c: DecompressPointer r2
    //     0x7c003c: add             x2, x2, HEAP, lsl #32
    // 0x7c0040: mov             x1, x2
    // 0x7c0044: stur            x2, [fp, #-0x20]
    // 0x7c0048: r0 = call 0x3982e4
    //     0x7c0048: bl              #0x3982e4
    // 0x7c004c: LoadField: r1 = r0->field_b
    //     0x7c004c: ldur            w1, [x0, #0xb]
    // 0x7c0050: DecompressPointer r1
    //     0x7c0050: add             x1, x1, HEAP, lsl #32
    // 0x7c0054: ldur            x0, [fp, #-0x10]
    // 0x7c0058: stur            x1, [fp, #-0x38]
    // 0x7c005c: LoadField: r2 = r0->field_f
    //     0x7c005c: ldur            w2, [x0, #0xf]
    // 0x7c0060: DecompressPointer r2
    //     0x7c0060: add             x2, x2, HEAP, lsl #32
    // 0x7c0064: LoadField: r3 = r2->field_b
    //     0x7c0064: ldur            x3, [x2, #0xb]
    // 0x7c0068: stur            x3, [fp, #-0x30]
    // 0x7c006c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x7c006c: ldur            w4, [x2, #0x17]
    // 0x7c0070: DecompressPointer r4
    //     0x7c0070: add             x4, x4, HEAP, lsl #32
    // 0x7c0074: stur            x4, [fp, #-0x28]
    // 0x7c0078: r0 = Rcb()
    //     0x7c0078: bl              #0x7c00f0  ; AllocateRcbStub -> Rcb (size=0x18)
    // 0x7c007c: mov             x1, x0
    // 0x7c0080: ldur            x0, [fp, #-0x30]
    // 0x7c0084: StoreField: r1->field_b = r0
    //     0x7c0084: stur            x0, [x1, #0xb]
    // 0x7c0088: ldur            x0, [fp, #-0x28]
    // 0x7c008c: StoreField: r1->field_13 = r0
    //     0x7c008c: stur            w0, [x1, #0x13]
    // 0x7c0090: stp             x1, NULL, [SP, #0x18]
    // 0x7c0094: ldur            x16, [fp, #-0x20]
    // 0x7c0098: r30 = false
    //     0x7c0098: add             lr, NULL, #0x30  ; false
    // 0x7c009c: stp             lr, x16, [SP, #8]
    // 0x7c00a0: ldur            x16, [fp, #-0x38]
    // 0x7c00a4: str             x16, [SP]
    // 0x7c00a8: r4 = const [0x1, 0x4, 0x4, 0x2, Jic, 0x3, nlg, 0x2, null]
    //     0x7c00a8: add             x4, PP, #0x24, lsl #12  ; [pp+0x24da0] List(9) [0x1, 0x4, 0x4, 0x2, "Jic", 0x3, "nlg", 0x2, Null]
    //     0x7c00ac: ldr             x4, [x4, #0xda0]
    // 0x7c00b0: r0 = call 0x45aa54
    //     0x7c00b0: bl              #0x45aa54
    // 0x7c00b4: mov             x1, x0
    // 0x7c00b8: stur            x1, [fp, #-0x20]
    // 0x7c00bc: r0 = Await()
    //     0x7c00bc: bl              #0x74ab64  ; AwaitStub
    // 0x7c00c0: ldur            x16, [fp, #-0x18]
    // 0x7c00c4: str             x16, [SP]
    // 0x7c00c8: r4 = 0
    //     0x7c00c8: movz            x4, #0
    // 0x7c00cc: ldr             x0, [SP]
    // 0x7c00d0: r16 = 140563490515876
    //     0x7c00d0: add             x16, PP, #0x24, lsl #12  ; [pp+0x24da8] IMM: 0x7fd77cebaba4
    //     0x7c00d4: add             x16, x16, #0xda8
    // 0x7c00d8: ldp             lr, x5, [x16]
    // 0x7c00dc: blr             lr
    // 0x7c00e0: r0 = Null
    //     0x7c00e0: mov             x0, NULL
    // 0x7c00e4: r0 = ReturnAsyncNotFuture()
    //     0x7c00e4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c00e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c00e8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c00ec: b               #0x7bff28
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x62a0dc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x62a9c0, size: -0x1
  }
}

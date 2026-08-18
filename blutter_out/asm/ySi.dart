// lib: , url: ySi

// class id: 1049806, size: 0x8
class :: {

  static late final tSa<UYa<dynamic>> Uvg; // offset: 0x1424

  [closure] static Future<VYa<dynamic>> <anonymous closure>(dynamic, int) async {
    // ** addr: 0x7be508, size: 0x2d8
    // 0x7be508: EnterFrame
    //     0x7be508: stp             fp, lr, [SP, #-0x10]!
    //     0x7be50c: mov             fp, SP
    // 0x7be510: AllocStack(0x40)
    //     0x7be510: sub             SP, SP, #0x40
    // 0x7be514: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7be514: stur            NULL, [fp, #-8]
    //     0x7be518: movz            x0, #0
    //     0x7be51c: add             x1, fp, w0, sxtw #2
    //     0x7be520: ldr             x1, [x1, #0x18]
    //     0x7be524: add             x2, fp, w0, sxtw #2
    //     0x7be528: ldr             x2, [x2, #0x10]
    //     0x7be52c: stur            x2, [fp, #-0x18]
    //     0x7be530: ldur            w3, [x1, #0x17]
    //     0x7be534: add             x3, x3, HEAP, lsl #32
    //     0x7be538: stur            x3, [fp, #-0x10]
    // 0x7be53c: CheckStackOverflow
    //     0x7be53c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7be540: cmp             SP, x16
    //     0x7be544: b.ls            #0x7be7d8
    // 0x7be548: InitAsync() -> Future<VYa>
    //     0x7be548: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a30] TypeArguments: <VYa>
    //     0x7be54c: ldr             x0, [x0, #0xa30]
    //     0x7be550: bl              #0x74ada8  ; InitAsyncStub
    // 0x7be554: ldur            x0, [fp, #-0x10]
    // 0x7be558: LoadField: r1 = r0->field_f
    //     0x7be558: ldur            w1, [x0, #0xf]
    // 0x7be55c: DecompressPointer r1
    //     0x7be55c: add             x1, x1, HEAP, lsl #32
    // 0x7be560: ldur            x3, [fp, #-0x18]
    // 0x7be564: r4 = LoadInt32Instr(r3)
    //     0x7be564: sbfx            x4, x3, #1, #0x1f
    //     0x7be568: tbz             w3, #0, #0x7be570
    //     0x7be56c: ldur            x4, [x3, #7]
    // 0x7be570: mov             x2, x4
    // 0x7be574: stur            x4, [fp, #-0x20]
    // 0x7be578: r0 = __unknown_function__()
    //     0x7be578: bl              #0x7be7e0  ; [] ::__unknown_function__
    // 0x7be57c: mov             x1, x0
    // 0x7be580: stur            x1, [fp, #-0x28]
    // 0x7be584: r0 = Await()
    //     0x7be584: bl              #0x74ab64  ; AwaitStub
    // 0x7be588: mov             x1, x0
    // 0x7be58c: stur            x0, [fp, #-0x10]
    // 0x7be590: r0 = call 0x3b4da8
    //     0x7be590: bl              #0x3b4da8
    // 0x7be594: tbz             w0, #4, #0x7be5d8
    // 0x7be598: ldur            x0, [fp, #-0x10]
    // 0x7be59c: r1 = "fe68ae77424f"
    //     0x7be59c: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a38] "fe68ae77424f"
    //     0x7be5a0: ldr             x1, [x1, #0xa38]
    // 0x7be5a4: r0 = call 0x61ba04
    //     0x7be5a4: bl              #0x61ba04
    // 0x7be5a8: ldur            x3, [fp, #-0x10]
    // 0x7be5ac: r1 = LoadClassIdInstr(r3)
    //     0x7be5ac: ldur            x1, [x3, #-1]
    //     0x7be5b0: ubfx            x1, x1, #0xc, #0x14
    // 0x7be5b4: mov             x2, x0
    // 0x7be5b8: mov             x0, x1
    // 0x7be5bc: mov             x1, x3
    // 0x7be5c0: mov             lr, x0
    // 0x7be5c4: ldr             lr, [x21, lr, lsl #3]
    // 0x7be5c8: blr             lr
    // 0x7be5cc: mov             x1, x0
    // 0x7be5d0: r0 = call 0x3b4da8
    //     0x7be5d0: bl              #0x3b4da8
    // 0x7be5d4: tbnz            w0, #4, #0x7be5e4
    // 0x7be5d8: r0 = Instance_VYa
    //     0x7be5d8: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a40] Obj!VYa@440811
    //     0x7be5dc: ldr             x0, [x0, #0xa40]
    // 0x7be5e0: r0 = ReturnAsyncNotFuture()
    //     0x7be5e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7be5e4: ldur            x0, [fp, #-0x10]
    // 0x7be5e8: r1 = "b54f01d9a385"
    //     0x7be5e8: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a48] "b54f01d9a385"
    //     0x7be5ec: ldr             x1, [x1, #0xa48]
    // 0x7be5f0: r0 = call 0x61ba04
    //     0x7be5f0: bl              #0x61ba04
    // 0x7be5f4: ldur            x3, [fp, #-0x10]
    // 0x7be5f8: r1 = LoadClassIdInstr(r3)
    //     0x7be5f8: ldur            x1, [x3, #-1]
    //     0x7be5fc: ubfx            x1, x1, #0xc, #0x14
    // 0x7be600: mov             x2, x0
    // 0x7be604: mov             x0, x1
    // 0x7be608: mov             x1, x3
    // 0x7be60c: mov             lr, x0
    // 0x7be610: ldr             lr, [x21, lr, lsl #3]
    // 0x7be614: blr             lr
    // 0x7be618: mov             x3, x0
    // 0x7be61c: r2 = Null
    //     0x7be61c: mov             x2, NULL
    // 0x7be620: r1 = Null
    //     0x7be620: mov             x1, NULL
    // 0x7be624: stur            x3, [fp, #-0x18]
    // 0x7be628: r4 = 60
    //     0x7be628: movz            x4, #0x3c
    // 0x7be62c: branchIfSmi(r0, 0x7be638)
    //     0x7be62c: tbz             w0, #0, #0x7be638
    // 0x7be630: r4 = LoadClassIdInstr(r0)
    //     0x7be630: ldur            x4, [x0, #-1]
    //     0x7be634: ubfx            x4, x4, #0xc, #0x14
    // 0x7be638: sub             x4, x4, #0x5a
    // 0x7be63c: cmp             x4, #2
    // 0x7be640: b.ls            #0x7be654
    // 0x7be644: r8 = List
    //     0x7be644: ldr             x8, [PP, #0x28a8]  ; [pp+0x28a8] Type: List
    // 0x7be648: r3 = Null
    //     0x7be648: add             x3, PP, #0x17, lsl #12  ; [pp+0x17a50] Null
    //     0x7be64c: ldr             x3, [x3, #0xa50]
    // 0x7be650: r0 = List()
    //     0x7be650: bl              #0x7f27c4  ; IsType_List_Stub
    // 0x7be654: ldur            x2, [fp, #-0x18]
    // 0x7be658: r1 = Null
    //     0x7be658: mov             x1, NULL
    // 0x7be65c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7be65c: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7be660: r0 = call 0x299828
    //     0x7be660: bl              #0x299828
    // 0x7be664: r1 = "a78121a111ef"
    //     0x7be664: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a60] "a78121a111ef"
    //     0x7be668: ldr             x1, [x1, #0xa60]
    // 0x7be66c: stur            x0, [fp, #-0x18]
    // 0x7be670: r0 = call 0x61ba04
    //     0x7be670: bl              #0x61ba04
    // 0x7be674: ldur            x3, [fp, #-0x10]
    // 0x7be678: r1 = LoadClassIdInstr(r3)
    //     0x7be678: ldur            x1, [x3, #-1]
    //     0x7be67c: ubfx            x1, x1, #0xc, #0x14
    // 0x7be680: mov             x2, x0
    // 0x7be684: mov             x0, x1
    // 0x7be688: mov             x1, x3
    // 0x7be68c: mov             lr, x0
    // 0x7be690: ldr             lr, [x21, lr, lsl #3]
    // 0x7be694: blr             lr
    // 0x7be698: mov             x3, x0
    // 0x7be69c: r2 = Null
    //     0x7be69c: mov             x2, NULL
    // 0x7be6a0: r1 = Null
    //     0x7be6a0: mov             x1, NULL
    // 0x7be6a4: stur            x3, [fp, #-0x28]
    // 0x7be6a8: branchIfSmi(r0, 0x7be6d4)
    //     0x7be6a8: tbz             w0, #0, #0x7be6d4
    // 0x7be6ac: r4 = LoadClassIdInstr(r0)
    //     0x7be6ac: ldur            x4, [x0, #-1]
    //     0x7be6b0: ubfx            x4, x4, #0xc, #0x14
    // 0x7be6b4: sub             x4, x4, #0x3c
    // 0x7be6b8: cmp             x4, #2
    // 0x7be6bc: b.ls            #0x7be6d4
    // 0x7be6c0: r8 = num?
    //     0x7be6c0: add             x8, PP, #0xa, lsl #12  ; [pp+0xad18] Type: num?
    //     0x7be6c4: ldr             x8, [x8, #0xd18]
    // 0x7be6c8: r3 = Null
    //     0x7be6c8: add             x3, PP, #0x17, lsl #12  ; [pp+0x17a68] Null
    //     0x7be6cc: ldr             x3, [x3, #0xa68]
    // 0x7be6d0: r0 = DefaultNullableTypeTest()
    //     0x7be6d0: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x7be6d4: ldur            x0, [fp, #-0x28]
    // 0x7be6d8: cmp             w0, NULL
    // 0x7be6dc: b.ne            #0x7be6e8
    // 0x7be6e0: r0 = Null
    //     0x7be6e0: mov             x0, NULL
    // 0x7be6e4: b               #0x7be70c
    // 0x7be6e8: r1 = 60
    //     0x7be6e8: movz            x1, #0x3c
    // 0x7be6ec: branchIfSmi(r0, 0x7be6f8)
    //     0x7be6ec: tbz             w0, #0, #0x7be6f8
    // 0x7be6f0: r1 = LoadClassIdInstr(r0)
    //     0x7be6f0: ldur            x1, [x0, #-1]
    //     0x7be6f4: ubfx            x1, x1, #0xc, #0x14
    // 0x7be6f8: str             x0, [SP]
    // 0x7be6fc: mov             x0, x1
    // 0x7be700: r0 = GDT[cid_x0 + -0xffd]()
    //     0x7be700: sub             lr, x0, #0xffd
    //     0x7be704: ldr             lr, [x21, lr, lsl #3]
    //     0x7be708: blr             lr
    // 0x7be70c: cmp             w0, NULL
    // 0x7be710: b.ne            #0x7be71c
    // 0x7be714: ldur            x2, [fp, #-0x20]
    // 0x7be718: b               #0x7be72c
    // 0x7be71c: r1 = LoadInt32Instr(r0)
    //     0x7be71c: sbfx            x1, x0, #1, #0x1f
    //     0x7be720: tbz             w0, #0, #0x7be728
    //     0x7be724: ldur            x1, [x0, #7]
    // 0x7be728: mov             x2, x1
    // 0x7be72c: ldur            x0, [fp, #-0x10]
    // 0x7be730: stur            x2, [fp, #-0x20]
    // 0x7be734: r1 = "6e2e4da508cd5e1198ba"
    //     0x7be734: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a78] "6e2e4da508cd5e1198ba"
    //     0x7be738: ldr             x1, [x1, #0xa78]
    // 0x7be73c: r0 = call 0x61ba04
    //     0x7be73c: bl              #0x61ba04
    // 0x7be740: ldur            x1, [fp, #-0x10]
    // 0x7be744: r2 = LoadClassIdInstr(r1)
    //     0x7be744: ldur            x2, [x1, #-1]
    //     0x7be748: ubfx            x2, x2, #0xc, #0x14
    // 0x7be74c: mov             x16, x0
    // 0x7be750: mov             x0, x2
    // 0x7be754: mov             x2, x16
    // 0x7be758: mov             lr, x0
    // 0x7be75c: ldr             lr, [x21, lr, lsl #3]
    // 0x7be760: blr             lr
    // 0x7be764: r1 = 60
    //     0x7be764: movz            x1, #0x3c
    // 0x7be768: branchIfSmi(r0, 0x7be774)
    //     0x7be768: tbz             w0, #0, #0x7be774
    // 0x7be76c: r1 = LoadClassIdInstr(r0)
    //     0x7be76c: ldur            x1, [x0, #-1]
    //     0x7be770: ubfx            x1, x1, #0xc, #0x14
    // 0x7be774: r16 = true
    //     0x7be774: add             x16, NULL, #0x20  ; true
    // 0x7be778: stp             x16, x0, [SP]
    // 0x7be77c: mov             x0, x1
    // 0x7be780: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7be780: movz            x17, #0x245b
    //     0x7be784: add             lr, x0, x17
    //     0x7be788: ldr             lr, [x21, lr, lsl #3]
    //     0x7be78c: blr             lr
    // 0x7be790: tbnz            w0, #4, #0x7be7a4
    // 0x7be794: ldur            x0, [fp, #-0x20]
    // 0x7be798: add             x1, x0, #1
    // 0x7be79c: mov             x3, x1
    // 0x7be7a0: b               #0x7be7ac
    // 0x7be7a4: ldur            x0, [fp, #-0x20]
    // 0x7be7a8: mov             x3, x0
    // 0x7be7ac: ldur            x2, [fp, #-0x18]
    // 0x7be7b0: stur            x3, [fp, #-0x30]
    // 0x7be7b4: r1 = Null
    //     0x7be7b4: mov             x1, NULL
    // 0x7be7b8: r0 = VYa()
    //     0x7be7b8: bl              #0x788a9c  ; AllocateVYaStub -> VYa<X0> (size=0x20)
    // 0x7be7bc: ldur            x1, [fp, #-0x18]
    // 0x7be7c0: StoreField: r0->field_b = r1
    //     0x7be7c0: stur            w1, [x0, #0xb]
    // 0x7be7c4: ldur            x1, [fp, #-0x20]
    // 0x7be7c8: StoreField: r0->field_f = r1
    //     0x7be7c8: stur            x1, [x0, #0xf]
    // 0x7be7cc: ldur            x1, [fp, #-0x30]
    // 0x7be7d0: ArrayStore: r0[0] = r1  ; List_8
    //     0x7be7d0: stur            x1, [x0, #0x17]
    // 0x7be7d4: r0 = ReturnAsyncNotFuture()
    //     0x7be7d4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7be7d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7be7d8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7be7dc: b               #0x7be548
  }
  [closure] static UYa<dynamic> <anonymous closure>(dynamic, URa) {
    // ** addr: 0x61b764, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x61b958, size: -0x1
  }
  [closure] static Future<void> <anonymous closure>(dynamic) {
    // ** addr: 0x61b9c0, size: -0x1
  }
  static tSa<UYa<dynamic>> Uvg() {
    // ** addr: 0x61b708, size: -0x1
  }
}

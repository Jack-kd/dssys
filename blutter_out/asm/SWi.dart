// lib: , url: SWi

// class id: 1050046, size: 0x8
class :: {

  static late final vSa<UYa<dynamic>, Qfb> KGg; // offset: 0x152c

  [closure] static Future<VYa<dynamic>> <anonymous closure>(dynamic, int) async {
    // ** addr: 0x78a980, size: 0x33c
    // 0x78a980: EnterFrame
    //     0x78a980: stp             fp, lr, [SP, #-0x10]!
    //     0x78a984: mov             fp, SP
    // 0x78a988: AllocStack(0x38)
    //     0x78a988: sub             SP, SP, #0x38
    // 0x78a98c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x78a98c: stur            NULL, [fp, #-8]
    //     0x78a990: movz            x0, #0
    //     0x78a994: add             x1, fp, w0, sxtw #2
    //     0x78a998: ldr             x1, [x1, #0x18]
    //     0x78a99c: add             x2, fp, w0, sxtw #2
    //     0x78a9a0: ldr             x2, [x2, #0x10]
    //     0x78a9a4: stur            x2, [fp, #-0x18]
    //     0x78a9a8: ldur            w3, [x1, #0x17]
    //     0x78a9ac: add             x3, x3, HEAP, lsl #32
    //     0x78a9b0: stur            x3, [fp, #-0x10]
    // 0x78a9b4: CheckStackOverflow
    //     0x78a9b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x78a9b8: cmp             SP, x16
    //     0x78a9bc: b.ls            #0x78acb4
    // 0x78a9c0: InitAsync() -> Future<VYa>
    //     0x78a9c0: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a30] TypeArguments: <VYa>
    //     0x78a9c4: ldr             x0, [x0, #0xa30]
    //     0x78a9c8: bl              #0x74ada8  ; InitAsyncStub
    // 0x78a9cc: ldur            x0, [fp, #-0x10]
    // 0x78a9d0: LoadField: r1 = r0->field_f
    //     0x78a9d0: ldur            w1, [x0, #0xf]
    // 0x78a9d4: DecompressPointer r1
    //     0x78a9d4: add             x1, x1, HEAP, lsl #32
    // 0x78a9d8: LoadField: r2 = r1->field_f
    //     0x78a9d8: ldur            w2, [x1, #0xf]
    // 0x78a9dc: DecompressPointer r2
    //     0x78a9dc: add             x2, x2, HEAP, lsl #32
    // 0x78a9e0: LoadField: r5 = r1->field_7
    //     0x78a9e0: ldur            x5, [x1, #7]
    // 0x78a9e4: LoadField: r1 = r0->field_13
    //     0x78a9e4: ldur            w1, [x0, #0x13]
    // 0x78a9e8: DecompressPointer r1
    //     0x78a9e8: add             x1, x1, HEAP, lsl #32
    // 0x78a9ec: ldur            x4, [fp, #-0x18]
    // 0x78a9f0: r6 = LoadInt32Instr(r4)
    //     0x78a9f0: sbfx            x6, x4, #1, #0x1f
    //     0x78a9f4: tbz             w4, #0, #0x78a9fc
    //     0x78a9f8: ldur            x6, [x4, #7]
    // 0x78a9fc: mov             x3, x6
    // 0x78aa00: stur            x6, [fp, #-0x20]
    // 0x78aa04: r0 = __unknown_function__()
    //     0x78aa04: bl              #0x78acbc  ; [] ::__unknown_function__
    // 0x78aa08: mov             x1, x0
    // 0x78aa0c: stur            x1, [fp, #-0x28]
    // 0x78aa10: r0 = Await()
    //     0x78aa10: bl              #0x74ab64  ; AwaitStub
    // 0x78aa14: mov             x1, x0
    // 0x78aa18: stur            x0, [fp, #-0x10]
    // 0x78aa1c: r0 = call 0x3b4da8
    //     0x78aa1c: bl              #0x3b4da8
    // 0x78aa20: tbz             w0, #4, #0x78aa64
    // 0x78aa24: ldur            x0, [fp, #-0x10]
    // 0x78aa28: r1 = "fee7abc05f10"
    //     0x78aa28: add             x1, PP, #0x2f, lsl #12  ; [pp+0x2f140] "fee7abc05f10"
    //     0x78aa2c: ldr             x1, [x1, #0x140]
    // 0x78aa30: r0 = call 0x45d6c0
    //     0x78aa30: bl              #0x45d6c0
    // 0x78aa34: ldur            x3, [fp, #-0x10]
    // 0x78aa38: r1 = LoadClassIdInstr(r3)
    //     0x78aa38: ldur            x1, [x3, #-1]
    //     0x78aa3c: ubfx            x1, x1, #0xc, #0x14
    // 0x78aa40: mov             x2, x0
    // 0x78aa44: mov             x0, x1
    // 0x78aa48: mov             x1, x3
    // 0x78aa4c: mov             lr, x0
    // 0x78aa50: ldr             lr, [x21, lr, lsl #3]
    // 0x78aa54: blr             lr
    // 0x78aa58: mov             x1, x0
    // 0x78aa5c: r0 = call 0x3b4da8
    //     0x78aa5c: bl              #0x3b4da8
    // 0x78aa60: tbnz            w0, #4, #0x78aa70
    // 0x78aa64: r0 = Instance_VYa
    //     0x78aa64: add             x0, PP, #0x17, lsl #12  ; [pp+0x17a40] Obj!VYa@440811
    //     0x78aa68: ldr             x0, [x0, #0xa40]
    // 0x78aa6c: r0 = ReturnAsyncNotFuture()
    //     0x78aa6c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78aa70: ldur            x0, [fp, #-0x10]
    // 0x78aa74: r1 = "3ed66b99d18e"
    //     0x78aa74: add             x1, PP, #0x2f, lsl #12  ; [pp+0x2f148] "3ed66b99d18e"
    //     0x78aa78: ldr             x1, [x1, #0x148]
    // 0x78aa7c: r0 = call 0x45d6c0
    //     0x78aa7c: bl              #0x45d6c0
    // 0x78aa80: ldur            x3, [fp, #-0x10]
    // 0x78aa84: r1 = LoadClassIdInstr(r3)
    //     0x78aa84: ldur            x1, [x3, #-1]
    //     0x78aa88: ubfx            x1, x1, #0xc, #0x14
    // 0x78aa8c: mov             x2, x0
    // 0x78aa90: mov             x0, x1
    // 0x78aa94: mov             x1, x3
    // 0x78aa98: mov             lr, x0
    // 0x78aa9c: ldr             lr, [x21, lr, lsl #3]
    // 0x78aaa0: blr             lr
    // 0x78aaa4: mov             x3, x0
    // 0x78aaa8: r2 = Null
    //     0x78aaa8: mov             x2, NULL
    // 0x78aaac: r1 = Null
    //     0x78aaac: mov             x1, NULL
    // 0x78aab0: stur            x3, [fp, #-0x18]
    // 0x78aab4: branchIfSmi(r0, 0x78aae0)
    //     0x78aab4: tbz             w0, #0, #0x78aae0
    // 0x78aab8: r4 = LoadClassIdInstr(r0)
    //     0x78aab8: ldur            x4, [x0, #-1]
    //     0x78aabc: ubfx            x4, x4, #0xc, #0x14
    // 0x78aac0: sub             x4, x4, #0x3c
    // 0x78aac4: cmp             x4, #2
    // 0x78aac8: b.ls            #0x78aae0
    // 0x78aacc: r8 = num?
    //     0x78aacc: add             x8, PP, #0xa, lsl #12  ; [pp+0xad18] Type: num?
    //     0x78aad0: ldr             x8, [x8, #0xd18]
    // 0x78aad4: r3 = Null
    //     0x78aad4: add             x3, PP, #0x2f, lsl #12  ; [pp+0x2f150] Null
    //     0x78aad8: ldr             x3, [x3, #0x150]
    // 0x78aadc: r0 = DefaultNullableTypeTest()
    //     0x78aadc: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x78aae0: ldur            x0, [fp, #-0x18]
    // 0x78aae4: cmp             w0, NULL
    // 0x78aae8: b.ne            #0x78aaf4
    // 0x78aaec: r0 = Null
    //     0x78aaec: mov             x0, NULL
    // 0x78aaf0: b               #0x78ab18
    // 0x78aaf4: r1 = 60
    //     0x78aaf4: movz            x1, #0x3c
    // 0x78aaf8: branchIfSmi(r0, 0x78ab04)
    //     0x78aaf8: tbz             w0, #0, #0x78ab04
    // 0x78aafc: r1 = LoadClassIdInstr(r0)
    //     0x78aafc: ldur            x1, [x0, #-1]
    //     0x78ab00: ubfx            x1, x1, #0xc, #0x14
    // 0x78ab04: str             x0, [SP]
    // 0x78ab08: mov             x0, x1
    // 0x78ab0c: r0 = GDT[cid_x0 + -0xffd]()
    //     0x78ab0c: sub             lr, x0, #0xffd
    //     0x78ab10: ldr             lr, [x21, lr, lsl #3]
    //     0x78ab14: blr             lr
    // 0x78ab18: cmp             w0, NULL
    // 0x78ab1c: b.ne            #0x78ab28
    // 0x78ab20: ldur            x2, [fp, #-0x20]
    // 0x78ab24: b               #0x78ab38
    // 0x78ab28: r1 = LoadInt32Instr(r0)
    //     0x78ab28: sbfx            x1, x0, #1, #0x1f
    //     0x78ab2c: tbz             w0, #0, #0x78ab34
    //     0x78ab30: ldur            x1, [x0, #7]
    // 0x78ab34: mov             x2, x1
    // 0x78ab38: ldur            x0, [fp, #-0x10]
    // 0x78ab3c: stur            x2, [fp, #-0x20]
    // 0x78ab40: r1 = "c69786ae307d21ca15da45"
    //     0x78ab40: add             x1, PP, #0x2f, lsl #12  ; [pp+0x2f160] "c69786ae307d21ca15da45"
    //     0x78ab44: ldr             x1, [x1, #0x160]
    // 0x78ab48: r0 = call 0x45d6c0
    //     0x78ab48: bl              #0x45d6c0
    // 0x78ab4c: ldur            x3, [fp, #-0x10]
    // 0x78ab50: r1 = LoadClassIdInstr(r3)
    //     0x78ab50: ldur            x1, [x3, #-1]
    //     0x78ab54: ubfx            x1, x1, #0xc, #0x14
    // 0x78ab58: mov             x2, x0
    // 0x78ab5c: mov             x0, x1
    // 0x78ab60: mov             x1, x3
    // 0x78ab64: mov             lr, x0
    // 0x78ab68: ldr             lr, [x21, lr, lsl #3]
    // 0x78ab6c: blr             lr
    // 0x78ab70: mov             x3, x0
    // 0x78ab74: r2 = Null
    //     0x78ab74: mov             x2, NULL
    // 0x78ab78: r1 = Null
    //     0x78ab78: mov             x1, NULL
    // 0x78ab7c: stur            x3, [fp, #-0x18]
    // 0x78ab80: branchIfSmi(r0, 0x78abac)
    //     0x78ab80: tbz             w0, #0, #0x78abac
    // 0x78ab84: r4 = LoadClassIdInstr(r0)
    //     0x78ab84: ldur            x4, [x0, #-1]
    //     0x78ab88: ubfx            x4, x4, #0xc, #0x14
    // 0x78ab8c: sub             x4, x4, #0x3c
    // 0x78ab90: cmp             x4, #2
    // 0x78ab94: b.ls            #0x78abac
    // 0x78ab98: r8 = num?
    //     0x78ab98: add             x8, PP, #0xa, lsl #12  ; [pp+0xad18] Type: num?
    //     0x78ab9c: ldr             x8, [x8, #0xd18]
    // 0x78aba0: r3 = Null
    //     0x78aba0: add             x3, PP, #0x2f, lsl #12  ; [pp+0x2f168] Null
    //     0x78aba4: ldr             x3, [x3, #0x168]
    // 0x78aba8: r0 = DefaultNullableTypeTest()
    //     0x78aba8: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x78abac: ldur            x0, [fp, #-0x18]
    // 0x78abb0: cmp             w0, NULL
    // 0x78abb4: b.ne            #0x78abc0
    // 0x78abb8: r0 = Null
    //     0x78abb8: mov             x0, NULL
    // 0x78abbc: b               #0x78abe4
    // 0x78abc0: r1 = 60
    //     0x78abc0: movz            x1, #0x3c
    // 0x78abc4: branchIfSmi(r0, 0x78abd0)
    //     0x78abc4: tbz             w0, #0, #0x78abd0
    // 0x78abc8: r1 = LoadClassIdInstr(r0)
    //     0x78abc8: ldur            x1, [x0, #-1]
    //     0x78abcc: ubfx            x1, x1, #0xc, #0x14
    // 0x78abd0: str             x0, [SP]
    // 0x78abd4: mov             x0, x1
    // 0x78abd8: r0 = GDT[cid_x0 + -0xffd]()
    //     0x78abd8: sub             lr, x0, #0xffd
    //     0x78abdc: ldr             lr, [x21, lr, lsl #3]
    //     0x78abe0: blr             lr
    // 0x78abe4: cmp             w0, NULL
    // 0x78abe8: b.ne            #0x78abf4
    // 0x78abec: ldur            x3, [fp, #-0x20]
    // 0x78abf0: b               #0x78ac04
    // 0x78abf4: r1 = LoadInt32Instr(r0)
    //     0x78abf4: sbfx            x1, x0, #1, #0x1f
    //     0x78abf8: tbz             w0, #0, #0x78ac00
    //     0x78abfc: ldur            x1, [x0, #7]
    // 0x78ac00: mov             x3, x1
    // 0x78ac04: ldur            x0, [fp, #-0x10]
    // 0x78ac08: ldur            x2, [fp, #-0x20]
    // 0x78ac0c: stur            x3, [fp, #-0x30]
    // 0x78ac10: r1 = "83fdc556e9a2"
    //     0x78ac10: add             x1, PP, #0x2f, lsl #12  ; [pp+0x2f178] "83fdc556e9a2"
    //     0x78ac14: ldr             x1, [x1, #0x178]
    // 0x78ac18: r0 = call 0x45d6c0
    //     0x78ac18: bl              #0x45d6c0
    // 0x78ac1c: ldur            x1, [fp, #-0x10]
    // 0x78ac20: r2 = LoadClassIdInstr(r1)
    //     0x78ac20: ldur            x2, [x1, #-1]
    //     0x78ac24: ubfx            x2, x2, #0xc, #0x14
    // 0x78ac28: mov             x16, x0
    // 0x78ac2c: mov             x0, x2
    // 0x78ac30: mov             x2, x16
    // 0x78ac34: mov             lr, x0
    // 0x78ac38: ldr             lr, [x21, lr, lsl #3]
    // 0x78ac3c: blr             lr
    // 0x78ac40: mov             x3, x0
    // 0x78ac44: r2 = Null
    //     0x78ac44: mov             x2, NULL
    // 0x78ac48: r1 = Null
    //     0x78ac48: mov             x1, NULL
    // 0x78ac4c: stur            x3, [fp, #-0x10]
    // 0x78ac50: r4 = 60
    //     0x78ac50: movz            x4, #0x3c
    // 0x78ac54: branchIfSmi(r0, 0x78ac60)
    //     0x78ac54: tbz             w0, #0, #0x78ac60
    // 0x78ac58: r4 = LoadClassIdInstr(r0)
    //     0x78ac58: ldur            x4, [x0, #-1]
    //     0x78ac5c: ubfx            x4, x4, #0xc, #0x14
    // 0x78ac60: sub             x4, x4, #0x5a
    // 0x78ac64: cmp             x4, #2
    // 0x78ac68: b.ls            #0x78ac7c
    // 0x78ac6c: r8 = List
    //     0x78ac6c: ldr             x8, [PP, #0x28a8]  ; [pp+0x28a8] Type: List
    // 0x78ac70: r3 = Null
    //     0x78ac70: add             x3, PP, #0x2f, lsl #12  ; [pp+0x2f180] Null
    //     0x78ac74: ldr             x3, [x3, #0x180]
    // 0x78ac78: r0 = List()
    //     0x78ac78: bl              #0x7f27c4  ; IsType_List_Stub
    // 0x78ac7c: ldur            x2, [fp, #-0x10]
    // 0x78ac80: r1 = Null
    //     0x78ac80: mov             x1, NULL
    // 0x78ac84: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x78ac84: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x78ac88: r0 = call 0x299828
    //     0x78ac88: bl              #0x299828
    // 0x78ac8c: r1 = Null
    //     0x78ac8c: mov             x1, NULL
    // 0x78ac90: stur            x0, [fp, #-0x10]
    // 0x78ac94: r0 = VYa()
    //     0x78ac94: bl              #0x788a9c  ; AllocateVYaStub -> VYa<X0> (size=0x20)
    // 0x78ac98: ldur            x1, [fp, #-0x10]
    // 0x78ac9c: StoreField: r0->field_b = r1
    //     0x78ac9c: stur            w1, [x0, #0xb]
    // 0x78aca0: ldur            x1, [fp, #-0x20]
    // 0x78aca4: StoreField: r0->field_f = r1
    //     0x78aca4: stur            x1, [x0, #0xf]
    // 0x78aca8: ldur            x1, [fp, #-0x30]
    // 0x78acac: ArrayStore: r0[0] = r1  ; List_8
    //     0x78acac: stur            x1, [x0, #0x17]
    // 0x78acb0: r0 = ReturnAsyncNotFuture()
    //     0x78acb0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x78acb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x78acb4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x78acb8: b               #0x78a9c0
  }
  [closure] static UYa<dynamic> <anonymous closure>(dynamic, URa, Qfb) {
    // ** addr: 0x45d4e0, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x45d678, size: -0x1
  }
  static vSa<UYa<dynamic>, Qfb> KGg() {
    // ** addr: 0x45d484, size: -0x1
  }
}

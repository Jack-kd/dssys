// lib: , url: kJi

// class id: 1049350, size: 0x8
class :: {
}

// class id: 792, size: 0xc8, field offset: 0x88
class LJa extends MJa {

  static late final RTa Rze; // offset: 0x1054
  static late final W<String, double> pSf; // offset: 0x1058

  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x74ce8c, size: 0x21c
    // 0x74ce8c: EnterFrame
    //     0x74ce8c: stp             fp, lr, [SP, #-0x10]!
    //     0x74ce90: mov             fp, SP
    // 0x74ce94: AllocStack(0x20)
    //     0x74ce94: sub             SP, SP, #0x20
    // 0x74ce98: SetupParameters(LJa this /* r1 */)
    //     0x74ce98: stur            NULL, [fp, #-8]
    //     0x74ce9c: movz            x0, #0
    //     0x74cea0: add             x1, fp, w0, sxtw #2
    //     0x74cea4: ldr             x1, [x1, #0x10]
    //     0x74cea8: ldur            w2, [x1, #0x17]
    //     0x74ceac: add             x2, x2, HEAP, lsl #32
    //     0x74ceb0: stur            x2, [fp, #-0x10]
    // 0x74ceb4: CheckStackOverflow
    //     0x74ceb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74ceb8: cmp             SP, x16
    //     0x74cebc: b.ls            #0x74d0a0
    // 0x74cec0: InitAsync() -> Future<void?>
    //     0x74cec0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x74cec4: bl              #0x74ada8  ; InitAsyncStub
    // 0x74cec8: ldur            x1, [fp, #-0x10]
    // 0x74cecc: LoadField: r0 = r1->field_f
    //     0x74cecc: ldur            w0, [x1, #0xf]
    // 0x74ced0: DecompressPointer r0
    //     0x74ced0: add             x0, x0, HEAP, lsl #32
    // 0x74ced4: LoadField: r2 = r0->field_a3
    //     0x74ced4: ldur            w2, [x0, #0xa3]
    // 0x74ced8: DecompressPointer r2
    //     0x74ced8: add             x2, x2, HEAP, lsl #32
    // 0x74cedc: tbz             w2, #4, #0x74d084
    // 0x74cee0: LoadField: r2 = r0->field_77
    //     0x74cee0: ldur            w2, [x0, #0x77]
    // 0x74cee4: DecompressPointer r2
    //     0x74cee4: add             x2, x2, HEAP, lsl #32
    // 0x74cee8: LoadField: r3 = r2->field_b
    //     0x74cee8: ldur            w3, [x2, #0xb]
    // 0x74ceec: DecompressPointer r3
    //     0x74ceec: add             x3, x3, HEAP, lsl #32
    // 0x74cef0: mov             x0, x3
    // 0x74cef4: stur            x3, [fp, #-0x18]
    // 0x74cef8: r0 = Await()
    //     0x74cef8: bl              #0x74ab64  ; AwaitStub
    // 0x74cefc: ldur            x0, [fp, #-0x10]
    // 0x74cf00: LoadField: r1 = r0->field_f
    //     0x74cf00: ldur            w1, [x0, #0xf]
    // 0x74cf04: DecompressPointer r1
    //     0x74cf04: add             x1, x1, HEAP, lsl #32
    // 0x74cf08: LoadField: r2 = r1->field_7b
    //     0x74cf08: ldur            w2, [x1, #0x7b]
    // 0x74cf0c: DecompressPointer r2
    //     0x74cf0c: add             x2, x2, HEAP, lsl #32
    // 0x74cf10: tbnz            w2, #4, #0x74cf30
    // 0x74cf14: LoadField: r2 = r1->field_7f
    //     0x74cf14: ldur            w2, [x1, #0x7f]
    // 0x74cf18: DecompressPointer r2
    //     0x74cf18: add             x2, x2, HEAP, lsl #32
    // 0x74cf1c: LoadField: r1 = r2->field_b
    //     0x74cf1c: ldur            w1, [x2, #0xb]
    // 0x74cf20: DecompressPointer r1
    //     0x74cf20: add             x1, x1, HEAP, lsl #32
    // 0x74cf24: mov             x2, x1
    // 0x74cf28: mov             x1, x0
    // 0x74cf2c: b               #0x74cf7c
    // 0x74cf30: r1 = <void?>
    //     0x74cf30: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x74cf34: r0 = _Future()
    //     0x74cf34: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x74cf38: stur            x0, [fp, #-0x18]
    // 0x74cf3c: StoreField: r0->field_b = rZR
    //     0x74cf3c: stur            xzr, [x0, #0xb]
    // 0x74cf40: r0 = LoadStaticField(0x3a8)
    //     0x74cf40: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x74cf44: ldr             x0, [x0, #0x750]
    // 0x74cf48: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74cf4c: cmp             w0, w16
    // 0x74cf50: b.ne            #0x74cf5c
    // 0x74cf54: r2 = _current
    //     0x74cf54: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x74cf58: r0 = InitLateStaticField()
    //     0x74cf58: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x74cf5c: mov             x1, x0
    // 0x74cf60: ldur            x0, [fp, #-0x18]
    // 0x74cf64: StoreField: r0->field_13 = r1
    //     0x74cf64: stur            w1, [x0, #0x13]
    // 0x74cf68: mov             x1, x0
    // 0x74cf6c: r2 = Null
    //     0x74cf6c: mov             x2, NULL
    // 0x74cf70: r0 = call 0x23f18c
    //     0x74cf70: bl              #0x23f18c
    // 0x74cf74: ldur            x2, [fp, #-0x18]
    // 0x74cf78: ldur            x1, [fp, #-0x10]
    // 0x74cf7c: mov             x0, x2
    // 0x74cf80: stur            x2, [fp, #-0x18]
    // 0x74cf84: r0 = Await()
    //     0x74cf84: bl              #0x74ab64  ; AwaitStub
    // 0x74cf88: ldur            x0, [fp, #-0x10]
    // 0x74cf8c: LoadField: r2 = r0->field_f
    //     0x74cf8c: ldur            w2, [x0, #0xf]
    // 0x74cf90: DecompressPointer r2
    //     0x74cf90: add             x2, x2, HEAP, lsl #32
    // 0x74cf94: mov             x1, x2
    // 0x74cf98: stur            x2, [fp, #-0x18]
    // 0x74cf9c: LoadField: r0 = r1->field_b
    //     0x74cf9c: ldur            w0, [x1, #0xb]
    // 0x74cfa0: DecompressPointer r0
    //     0x74cfa0: add             x0, x0, HEAP, lsl #32
    // 0x74cfa4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74cfa8: cmp             w0, w16
    // 0x74cfac: b.ne            #0x74cfb8
    // 0x74cfb0: r2 = state
    //     0x74cfb0: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x74cfb4: r0 = InitLateInstanceField()
    //     0x74cfb4: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x74cfb8: r16 = false
    //     0x74cfb8: add             x16, NULL, #0x30  ; false
    // 0x74cfbc: str             x16, [SP]
    // 0x74cfc0: mov             x1, x0
    // 0x74cfc4: r4 = const [0, 0x2, 0x1, 0x1, nHe, 0x1, null]
    //     0x74cfc4: ldr             x4, [PP, #0x78f8]  ; [pp+0x78f8] List(7) [0, 0x2, 0x1, 0x1, "nHe", 0x1, Null]
    // 0x74cfc8: r0 = call 0x252ef8
    //     0x74cfc8: bl              #0x252ef8
    // 0x74cfcc: ldur            x1, [fp, #-0x18]
    // 0x74cfd0: StoreField: r1->field_b = r0
    //     0x74cfd0: stur            w0, [x1, #0xb]
    //     0x74cfd4: ldurb           w16, [x1, #-1]
    //     0x74cfd8: ldurb           w17, [x0, #-1]
    //     0x74cfdc: and             x16, x17, x16, lsr #2
    //     0x74cfe0: tst             x16, HEAP, lsr #32
    //     0x74cfe4: b.eq            #0x74cfec
    //     0x74cfe8: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x74cfec: ldur            x0, [fp, #-0x10]
    // 0x74cff0: LoadField: r1 = r0->field_f
    //     0x74cff0: ldur            w1, [x0, #0xf]
    // 0x74cff4: DecompressPointer r1
    //     0x74cff4: add             x1, x1, HEAP, lsl #32
    // 0x74cff8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x74cff8: ldur            w2, [x1, #0x17]
    // 0x74cffc: DecompressPointer r2
    //     0x74cffc: add             x2, x2, HEAP, lsl #32
    // 0x74d000: LoadField: r1 = r2->field_13
    //     0x74d000: ldur            x1, [x2, #0x13]
    // 0x74d004: tbnz            w1, #2, #0x74d014
    // 0x74d008: mov             x1, x2
    // 0x74d00c: r2 = false
    //     0x74d00c: add             x2, NULL, #0x30  ; false
    // 0x74d010: r0 = call 0x5ef1e0
    //     0x74d010: bl              #0x5ef1e0
    // 0x74d014: ldur            x0, [fp, #-0x10]
    // 0x74d018: LoadField: r2 = r0->field_f
    //     0x74d018: ldur            w2, [x0, #0xf]
    // 0x74d01c: DecompressPointer r2
    //     0x74d01c: add             x2, x2, HEAP, lsl #32
    // 0x74d020: mov             x1, x2
    // 0x74d024: stur            x2, [fp, #-0x18]
    // 0x74d028: LoadField: r0 = r1->field_b
    //     0x74d028: ldur            w0, [x1, #0xb]
    // 0x74d02c: DecompressPointer r0
    //     0x74d02c: add             x0, x0, HEAP, lsl #32
    // 0x74d030: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74d034: cmp             w0, w16
    // 0x74d038: b.ne            #0x74d044
    // 0x74d03c: r2 = state
    //     0x74d03c: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x74d040: r0 = InitLateInstanceField()
    //     0x74d040: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x74d044: LoadField: r1 = r0->field_b
    //     0x74d044: ldur            w1, [x0, #0xb]
    // 0x74d048: DecompressPointer r1
    //     0x74d048: add             x1, x1, HEAP, lsl #32
    // 0x74d04c: ldur            x0, [fp, #-0x18]
    // 0x74d050: StoreField: r0->field_ab = r1
    //     0x74d050: stur            w1, [x0, #0xab]
    // 0x74d054: ldur            x0, [fp, #-0x10]
    // 0x74d058: LoadField: r1 = r0->field_f
    //     0x74d058: ldur            w1, [x0, #0xf]
    // 0x74d05c: DecompressPointer r1
    //     0x74d05c: add             x1, x1, HEAP, lsl #32
    // 0x74d060: r2 = false
    //     0x74d060: add             x2, NULL, #0x30  ; false
    // 0x74d064: StoreField: r1->field_af = r2
    //     0x74d064: stur            w2, [x1, #0xaf]
    // 0x74d068: r2 = true
    //     0x74d068: add             x2, NULL, #0x20  ; true
    // 0x74d06c: r0 = __unknown_function__()
    //     0x74d06c: bl              #0x74d0b4  ; [] ::__unknown_function__
    // 0x74d070: mov             x1, x0
    // 0x74d074: stur            x1, [fp, #-0x18]
    // 0x74d078: r0 = Await()
    //     0x74d078: bl              #0x74ab64  ; AwaitStub
    // 0x74d07c: r0 = Null
    //     0x74d07c: mov             x0, NULL
    // 0x74d080: r0 = ReturnAsyncNotFuture()
    //     0x74d080: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x74d084: r0 = na()
    //     0x74d084: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x74d088: mov             x1, x0
    // 0x74d08c: r0 = "[Player] has been disposed"
    //     0x74d08c: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x74d090: StoreField: r1->field_b = r0
    //     0x74d090: stur            w0, [x1, #0xb]
    // 0x74d094: mov             x0, x1
    // 0x74d098: r0 = Throw()
    //     0x74d098: bl              #0x7dc520  ; ThrowStub
    // 0x74d09c: brk             #0
    // 0x74d0a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74d0a0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74d0a4: b               #0x74cec0
  }
  Future<void> Rwb(LJa, {bool Tze}) {
    // ** addr: 0x74e274, size: 0xc8
    // 0x74e274: EnterFrame
    //     0x74e274: stp             fp, lr, [SP, #-0x10]!
    //     0x74e278: mov             fp, SP
    // 0x74e27c: AllocStack(0x18)
    //     0x74e27c: sub             SP, SP, #0x18
    // 0x74e280: SetupParameters(LJa this /* r3, fp-0x10 */, {dynamic Tze = true /* r4, fp-0x8 */})
    //     0x74e280: ldur            w0, [x4, #0x13]
    //     0x74e284: sub             x1, x0, #2
    //     0x74e288: add             x3, fp, w1, sxtw #2
    //     0x74e28c: ldr             x3, [x3, #0x10]
    //     0x74e290: stur            x3, [fp, #-0x10]
    //     0x74e294: ldur            w1, [x4, #0x1f]
    //     0x74e298: add             x1, x1, HEAP, lsl #32
    //     0x74e29c: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e890] "Tze"
    //     0x74e2a0: ldr             x16, [x16, #0x890]
    //     0x74e2a4: cmp             w1, w16
    //     0x74e2a8: b.ne            #0x74e2c8
    //     0x74e2ac: ldur            w1, [x4, #0x23]
    //     0x74e2b0: add             x1, x1, HEAP, lsl #32
    //     0x74e2b4: sub             w2, w0, w1
    //     0x74e2b8: add             x0, fp, w2, sxtw #2
    //     0x74e2bc: ldr             x0, [x0, #8]
    //     0x74e2c0: mov             x4, x0
    //     0x74e2c4: b               #0x74e2cc
    //     0x74e2c8: add             x4, NULL, #0x20  ; true
    //     0x74e2cc: stur            x4, [fp, #-8]
    // 0x74e2d0: CheckStackOverflow
    //     0x74e2d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e2d4: cmp             SP, x16
    //     0x74e2d8: b.ls            #0x74e334
    // 0x74e2dc: mov             x0, x4
    // 0x74e2e0: r2 = Null
    //     0x74e2e0: mov             x2, NULL
    // 0x74e2e4: r1 = Null
    //     0x74e2e4: mov             x1, NULL
    // 0x74e2e8: r4 = 60
    //     0x74e2e8: movz            x4, #0x3c
    // 0x74e2ec: branchIfSmi(r0, 0x74e2f8)
    //     0x74e2ec: tbz             w0, #0, #0x74e2f8
    // 0x74e2f0: r4 = LoadClassIdInstr(r0)
    //     0x74e2f0: ldur            x4, [x0, #-1]
    //     0x74e2f4: ubfx            x4, x4, #0xc, #0x14
    // 0x74e2f8: cmp             x4, #0x3f
    // 0x74e2fc: b.eq            #0x74e310
    // 0x74e300: r8 = bool
    //     0x74e300: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x74e304: r3 = Null
    //     0x74e304: add             x3, PP, #0x2b, lsl #12  ; [pp+0x2b378] Null
    //     0x74e308: ldr             x3, [x3, #0x378]
    // 0x74e30c: r0 = bool()
    //     0x74e30c: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x74e310: ldur            x16, [fp, #-8]
    // 0x74e314: str             x16, [SP]
    // 0x74e318: ldur            x1, [fp, #-0x10]
    // 0x74e31c: r4 = const [0, 0x2, 0x1, 0x1, Tze, 0x1, null]
    //     0x74e31c: add             x4, PP, #0x2b, lsl #12  ; [pp+0x2b388] List(7) [0, 0x2, 0x1, 0x1, "Tze", 0x1, Null]
    //     0x74e320: ldr             x4, [x4, #0x388]
    // 0x74e324: r0 = call 0x71a778
    //     0x74e324: bl              #0x71a778
    // 0x74e328: LeaveFrame
    //     0x74e328: mov             SP, fp
    //     0x74e32c: ldp             fp, lr, [SP], #0x10
    // 0x74e330: ret
    //     0x74e330: ret             
    // 0x74e334: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e334: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e338: b               #0x74e2dc
  }
  Future<void> Aef(LJa, {bool Tze}) {
    // ** addr: 0x74e33c, size: 0xc8
    // 0x74e33c: EnterFrame
    //     0x74e33c: stp             fp, lr, [SP, #-0x10]!
    //     0x74e340: mov             fp, SP
    // 0x74e344: AllocStack(0x18)
    //     0x74e344: sub             SP, SP, #0x18
    // 0x74e348: SetupParameters(LJa this /* r3, fp-0x10 */, {dynamic Tze = true /* r4, fp-0x8 */})
    //     0x74e348: ldur            w0, [x4, #0x13]
    //     0x74e34c: sub             x1, x0, #2
    //     0x74e350: add             x3, fp, w1, sxtw #2
    //     0x74e354: ldr             x3, [x3, #0x10]
    //     0x74e358: stur            x3, [fp, #-0x10]
    //     0x74e35c: ldur            w1, [x4, #0x1f]
    //     0x74e360: add             x1, x1, HEAP, lsl #32
    //     0x74e364: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1e890] "Tze"
    //     0x74e368: ldr             x16, [x16, #0x890]
    //     0x74e36c: cmp             w1, w16
    //     0x74e370: b.ne            #0x74e390
    //     0x74e374: ldur            w1, [x4, #0x23]
    //     0x74e378: add             x1, x1, HEAP, lsl #32
    //     0x74e37c: sub             w2, w0, w1
    //     0x74e380: add             x0, fp, w2, sxtw #2
    //     0x74e384: ldr             x0, [x0, #8]
    //     0x74e388: mov             x4, x0
    //     0x74e38c: b               #0x74e394
    //     0x74e390: add             x4, NULL, #0x20  ; true
    //     0x74e394: stur            x4, [fp, #-8]
    // 0x74e398: CheckStackOverflow
    //     0x74e398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e39c: cmp             SP, x16
    //     0x74e3a0: b.ls            #0x74e3fc
    // 0x74e3a4: mov             x0, x4
    // 0x74e3a8: r2 = Null
    //     0x74e3a8: mov             x2, NULL
    // 0x74e3ac: r1 = Null
    //     0x74e3ac: mov             x1, NULL
    // 0x74e3b0: r4 = 60
    //     0x74e3b0: movz            x4, #0x3c
    // 0x74e3b4: branchIfSmi(r0, 0x74e3c0)
    //     0x74e3b4: tbz             w0, #0, #0x74e3c0
    // 0x74e3b8: r4 = LoadClassIdInstr(r0)
    //     0x74e3b8: ldur            x4, [x0, #-1]
    //     0x74e3bc: ubfx            x4, x4, #0xc, #0x14
    // 0x74e3c0: cmp             x4, #0x3f
    // 0x74e3c4: b.eq            #0x74e3d8
    // 0x74e3c8: r8 = bool
    //     0x74e3c8: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x74e3cc: r3 = Null
    //     0x74e3cc: add             x3, PP, #0x2b, lsl #12  ; [pp+0x2b390] Null
    //     0x74e3d0: ldr             x3, [x3, #0x390]
    // 0x74e3d4: r0 = bool()
    //     0x74e3d4: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x74e3d8: ldur            x16, [fp, #-8]
    // 0x74e3dc: str             x16, [SP]
    // 0x74e3e0: ldur            x1, [fp, #-0x10]
    // 0x74e3e4: r4 = const [0, 0x2, 0x1, 0x1, Tze, 0x1, null]
    //     0x74e3e4: add             x4, PP, #0x2b, lsl #12  ; [pp+0x2b388] List(7) [0, 0x2, 0x1, 0x1, "Tze", 0x1, Null]
    //     0x74e3e8: ldr             x4, [x4, #0x388]
    // 0x74e3ec: r0 = call 0x71a830
    //     0x74e3ec: bl              #0x71a830
    // 0x74e3f0: LeaveFrame
    //     0x74e3f0: mov             SP, fp
    //     0x74e3f4: ldp             fp, lr, [SP], #0x10
    // 0x74e3f8: ret
    //     0x74e3f8: ret             
    // 0x74e3fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e3fc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e400: b               #0x74e3a4
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x74e5d4, size: 0x264
    // 0x74e5d4: EnterFrame
    //     0x74e5d4: stp             fp, lr, [SP, #-0x10]!
    //     0x74e5d8: mov             fp, SP
    // 0x74e5dc: AllocStack(0x20)
    //     0x74e5dc: sub             SP, SP, #0x20
    // 0x74e5e0: SetupParameters(LJa this /* r1 */)
    //     0x74e5e0: stur            NULL, [fp, #-8]
    //     0x74e5e4: movz            x0, #0
    //     0x74e5e8: add             x1, fp, w0, sxtw #2
    //     0x74e5ec: ldr             x1, [x1, #0x10]
    //     0x74e5f0: ldur            w2, [x1, #0x17]
    //     0x74e5f4: add             x2, x2, HEAP, lsl #32
    //     0x74e5f8: stur            x2, [fp, #-0x10]
    // 0x74e5fc: CheckStackOverflow
    //     0x74e5fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74e600: cmp             SP, x16
    //     0x74e604: b.ls            #0x74e830
    // 0x74e608: InitAsync() -> Future<void?>
    //     0x74e608: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x74e60c: bl              #0x74ada8  ; InitAsyncStub
    // 0x74e610: ldur            x1, [fp, #-0x10]
    // 0x74e614: LoadField: r0 = r1->field_f
    //     0x74e614: ldur            w0, [x1, #0xf]
    // 0x74e618: DecompressPointer r0
    //     0x74e618: add             x0, x0, HEAP, lsl #32
    // 0x74e61c: LoadField: r2 = r0->field_a3
    //     0x74e61c: ldur            w2, [x0, #0xa3]
    // 0x74e620: DecompressPointer r2
    //     0x74e620: add             x2, x2, HEAP, lsl #32
    // 0x74e624: tbz             w2, #4, #0x74e814
    // 0x74e628: LoadField: r2 = r0->field_77
    //     0x74e628: ldur            w2, [x0, #0x77]
    // 0x74e62c: DecompressPointer r2
    //     0x74e62c: add             x2, x2, HEAP, lsl #32
    // 0x74e630: LoadField: r3 = r2->field_b
    //     0x74e630: ldur            w3, [x2, #0xb]
    // 0x74e634: DecompressPointer r3
    //     0x74e634: add             x3, x3, HEAP, lsl #32
    // 0x74e638: mov             x0, x3
    // 0x74e63c: stur            x3, [fp, #-0x18]
    // 0x74e640: r0 = Await()
    //     0x74e640: bl              #0x74ab64  ; AwaitStub
    // 0x74e644: ldur            x0, [fp, #-0x10]
    // 0x74e648: LoadField: r1 = r0->field_f
    //     0x74e648: ldur            w1, [x0, #0xf]
    // 0x74e64c: DecompressPointer r1
    //     0x74e64c: add             x1, x1, HEAP, lsl #32
    // 0x74e650: LoadField: r2 = r1->field_7b
    //     0x74e650: ldur            w2, [x1, #0x7b]
    // 0x74e654: DecompressPointer r2
    //     0x74e654: add             x2, x2, HEAP, lsl #32
    // 0x74e658: tbnz            w2, #4, #0x74e678
    // 0x74e65c: LoadField: r2 = r1->field_7f
    //     0x74e65c: ldur            w2, [x1, #0x7f]
    // 0x74e660: DecompressPointer r2
    //     0x74e660: add             x2, x2, HEAP, lsl #32
    // 0x74e664: LoadField: r1 = r2->field_b
    //     0x74e664: ldur            w1, [x2, #0xb]
    // 0x74e668: DecompressPointer r1
    //     0x74e668: add             x1, x1, HEAP, lsl #32
    // 0x74e66c: mov             x2, x1
    // 0x74e670: mov             x1, x0
    // 0x74e674: b               #0x74e6c4
    // 0x74e678: r1 = <void?>
    //     0x74e678: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x74e67c: r0 = _Future()
    //     0x74e67c: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x74e680: stur            x0, [fp, #-0x18]
    // 0x74e684: StoreField: r0->field_b = rZR
    //     0x74e684: stur            xzr, [x0, #0xb]
    // 0x74e688: r0 = LoadStaticField(0x3a8)
    //     0x74e688: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x74e68c: ldr             x0, [x0, #0x750]
    // 0x74e690: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74e694: cmp             w0, w16
    // 0x74e698: b.ne            #0x74e6a4
    // 0x74e69c: r2 = _current
    //     0x74e69c: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x74e6a0: r0 = InitLateStaticField()
    //     0x74e6a0: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x74e6a4: mov             x1, x0
    // 0x74e6a8: ldur            x0, [fp, #-0x18]
    // 0x74e6ac: StoreField: r0->field_13 = r1
    //     0x74e6ac: stur            w1, [x0, #0x13]
    // 0x74e6b0: mov             x1, x0
    // 0x74e6b4: r2 = Null
    //     0x74e6b4: mov             x2, NULL
    // 0x74e6b8: r0 = call 0x23f18c
    //     0x74e6b8: bl              #0x23f18c
    // 0x74e6bc: ldur            x2, [fp, #-0x18]
    // 0x74e6c0: ldur            x1, [fp, #-0x10]
    // 0x74e6c4: mov             x0, x2
    // 0x74e6c8: stur            x2, [fp, #-0x18]
    // 0x74e6cc: r0 = Await()
    //     0x74e6cc: bl              #0x74ab64  ; AwaitStub
    // 0x74e6d0: ldur            x0, [fp, #-0x10]
    // 0x74e6d4: LoadField: r2 = r0->field_f
    //     0x74e6d4: ldur            w2, [x0, #0xf]
    // 0x74e6d8: DecompressPointer r2
    //     0x74e6d8: add             x2, x2, HEAP, lsl #32
    // 0x74e6dc: mov             x1, x2
    // 0x74e6e0: stur            x2, [fp, #-0x18]
    // 0x74e6e4: LoadField: r0 = r1->field_b
    //     0x74e6e4: ldur            w0, [x1, #0xb]
    // 0x74e6e8: DecompressPointer r0
    //     0x74e6e8: add             x0, x0, HEAP, lsl #32
    // 0x74e6ec: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74e6f0: cmp             w0, w16
    // 0x74e6f4: b.ne            #0x74e700
    // 0x74e6f8: r2 = state
    //     0x74e6f8: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x74e6fc: r0 = InitLateInstanceField()
    //     0x74e6fc: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x74e700: r16 = true
    //     0x74e700: add             x16, NULL, #0x20  ; true
    // 0x74e704: str             x16, [SP]
    // 0x74e708: mov             x1, x0
    // 0x74e70c: r4 = const [0, 0x2, 0x1, 0x1, nHe, 0x1, null]
    //     0x74e70c: ldr             x4, [PP, #0x78f8]  ; [pp+0x78f8] List(7) [0, 0x2, 0x1, 0x1, "nHe", 0x1, Null]
    // 0x74e710: r0 = call 0x252ef8
    //     0x74e710: bl              #0x252ef8
    // 0x74e714: ldur            x1, [fp, #-0x18]
    // 0x74e718: StoreField: r1->field_b = r0
    //     0x74e718: stur            w0, [x1, #0xb]
    //     0x74e71c: ldurb           w16, [x1, #-1]
    //     0x74e720: ldurb           w17, [x0, #-1]
    //     0x74e724: and             x16, x17, x16, lsr #2
    //     0x74e728: tst             x16, HEAP, lsr #32
    //     0x74e72c: b.eq            #0x74e734
    //     0x74e730: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x74e734: ldur            x0, [fp, #-0x10]
    // 0x74e738: LoadField: r1 = r0->field_f
    //     0x74e738: ldur            w1, [x0, #0xf]
    // 0x74e73c: DecompressPointer r1
    //     0x74e73c: add             x1, x1, HEAP, lsl #32
    // 0x74e740: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x74e740: ldur            w2, [x1, #0x17]
    // 0x74e744: DecompressPointer r2
    //     0x74e744: add             x2, x2, HEAP, lsl #32
    // 0x74e748: LoadField: r1 = r2->field_13
    //     0x74e748: ldur            x1, [x2, #0x13]
    // 0x74e74c: tbnz            w1, #2, #0x74e75c
    // 0x74e750: mov             x1, x2
    // 0x74e754: r2 = true
    //     0x74e754: add             x2, NULL, #0x20  ; true
    // 0x74e758: r0 = call 0x5ef1e0
    //     0x74e758: bl              #0x5ef1e0
    // 0x74e75c: ldur            x0, [fp, #-0x10]
    // 0x74e760: r1 = true
    //     0x74e760: add             x1, NULL, #0x20  ; true
    // 0x74e764: LoadField: r2 = r0->field_f
    //     0x74e764: ldur            w2, [x0, #0xf]
    // 0x74e768: DecompressPointer r2
    //     0x74e768: add             x2, x2, HEAP, lsl #32
    // 0x74e76c: StoreField: r2->field_ab = r1
    //     0x74e76c: stur            w1, [x2, #0xab]
    // 0x74e770: mov             x1, x2
    // 0x74e774: LoadField: r0 = r1->field_b
    //     0x74e774: ldur            w0, [x1, #0xb]
    // 0x74e778: DecompressPointer r0
    //     0x74e778: add             x0, x0, HEAP, lsl #32
    // 0x74e77c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x74e780: cmp             w0, w16
    // 0x74e784: b.ne            #0x74e790
    // 0x74e788: r2 = state
    //     0x74e788: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x74e78c: r0 = InitLateInstanceField()
    //     0x74e78c: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x74e790: LoadField: r1 = r0->field_f
    //     0x74e790: ldur            w1, [x0, #0xf]
    // 0x74e794: DecompressPointer r1
    //     0x74e794: add             x1, x1, HEAP, lsl #32
    // 0x74e798: tbnz            w1, #4, #0x74e7ec
    // 0x74e79c: ldur            x0, [fp, #-0x10]
    // 0x74e7a0: LoadField: r1 = r0->field_f
    //     0x74e7a0: ldur            w1, [x0, #0xf]
    // 0x74e7a4: DecompressPointer r1
    //     0x74e7a4: add             x1, x1, HEAP, lsl #32
    // 0x74e7a8: r16 = false
    //     0x74e7a8: add             x16, NULL, #0x30  ; false
    // 0x74e7ac: str             x16, [SP]
    // 0x74e7b0: r2 = Instance_la
    //     0x74e7b0: ldr             x2, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x74e7b4: r4 = const [0, 0x3, 0x1, 0x2, Tze, 0x2, null]
    //     0x74e7b4: add             x4, PP, #0x1e, lsl #12  ; [pp+0x1e888] List(7) [0, 0x3, 0x1, 0x2, "Tze", 0x2, Null]
    //     0x74e7b8: ldr             x4, [x4, #0x888]
    // 0x74e7bc: r0 = call 0x7192e8
    //     0x74e7bc: bl              #0x7192e8
    // 0x74e7c0: mov             x1, x0
    // 0x74e7c4: stur            x1, [fp, #-0x18]
    // 0x74e7c8: r0 = Await()
    //     0x74e7c8: bl              #0x74ab64  ; AwaitStub
    // 0x74e7cc: ldur            x0, [fp, #-0x10]
    // 0x74e7d0: LoadField: r1 = r0->field_f
    //     0x74e7d0: ldur            w1, [x0, #0xf]
    // 0x74e7d4: DecompressPointer r1
    //     0x74e7d4: add             x1, x1, HEAP, lsl #32
    // 0x74e7d8: r2 = 0
    //     0x74e7d8: movz            x2, #0
    // 0x74e7dc: r0 = __unknown_function__()
    //     0x74e7dc: bl              #0x74e838  ; [] ::__unknown_function__
    // 0x74e7e0: mov             x1, x0
    // 0x74e7e4: stur            x1, [fp, #-0x18]
    // 0x74e7e8: r0 = Await()
    //     0x74e7e8: bl              #0x74ab64  ; AwaitStub
    // 0x74e7ec: ldur            x0, [fp, #-0x10]
    // 0x74e7f0: LoadField: r1 = r0->field_f
    //     0x74e7f0: ldur            w1, [x0, #0xf]
    // 0x74e7f4: DecompressPointer r1
    //     0x74e7f4: add             x1, x1, HEAP, lsl #32
    // 0x74e7f8: r2 = false
    //     0x74e7f8: add             x2, NULL, #0x30  ; false
    // 0x74e7fc: r0 = __unknown_function__()
    //     0x74e7fc: bl              #0x74d0b4  ; [] ::__unknown_function__
    // 0x74e800: mov             x1, x0
    // 0x74e804: stur            x1, [fp, #-0x18]
    // 0x74e808: r0 = Await()
    //     0x74e808: bl              #0x74ab64  ; AwaitStub
    // 0x74e80c: r0 = Null
    //     0x74e80c: mov             x0, NULL
    // 0x74e810: r0 = ReturnAsyncNotFuture()
    //     0x74e810: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x74e814: r0 = na()
    //     0x74e814: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x74e818: mov             x1, x0
    // 0x74e81c: r0 = "[Player] has been disposed"
    //     0x74e81c: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x74e820: StoreField: r1->field_b = r0
    //     0x74e820: stur            w0, [x1, #0xb]
    // 0x74e824: mov             x0, x1
    // 0x74e828: r0 = Throw()
    //     0x74e828: bl              #0x7dc520  ; ThrowStub
    // 0x74e82c: brk             #0
    // 0x74e830: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74e830: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74e834: b               #0x74e608
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x7988bc, size: 0x6c8
    // 0x7988bc: EnterFrame
    //     0x7988bc: stp             fp, lr, [SP, #-0x10]!
    //     0x7988c0: mov             fp, SP
    // 0x7988c4: AllocStack(0x58)
    //     0x7988c4: sub             SP, SP, #0x58
    // 0x7988c8: SetupParameters(LJa this /* r1 */)
    //     0x7988c8: stur            NULL, [fp, #-8]
    //     0x7988cc: movz            x0, #0
    //     0x7988d0: add             x1, fp, w0, sxtw #2
    //     0x7988d4: ldr             x1, [x1, #0x10]
    //     0x7988d8: ldur            w2, [x1, #0x17]
    //     0x7988dc: add             x2, x2, HEAP, lsl #32
    //     0x7988e0: stur            x2, [fp, #-0x10]
    // 0x7988e4: CheckStackOverflow
    //     0x7988e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7988e8: cmp             SP, x16
    //     0x7988ec: b.ls            #0x798f6c
    // 0x7988f0: InitAsync() -> Future<void?>
    //     0x7988f0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7988f4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7988f8: ldur            x1, [fp, #-0x10]
    // 0x7988fc: LoadField: r0 = r1->field_f
    //     0x7988fc: ldur            w0, [x1, #0xf]
    // 0x798900: DecompressPointer r0
    //     0x798900: add             x0, x0, HEAP, lsl #32
    // 0x798904: LoadField: r2 = r0->field_a3
    //     0x798904: ldur            w2, [x0, #0xa3]
    // 0x798908: DecompressPointer r2
    //     0x798908: add             x2, x2, HEAP, lsl #32
    // 0x79890c: tbz             w2, #4, #0x798f34
    // 0x798910: LoadField: r2 = r0->field_77
    //     0x798910: ldur            w2, [x0, #0x77]
    // 0x798914: DecompressPointer r2
    //     0x798914: add             x2, x2, HEAP, lsl #32
    // 0x798918: LoadField: r3 = r2->field_b
    //     0x798918: ldur            w3, [x2, #0xb]
    // 0x79891c: DecompressPointer r3
    //     0x79891c: add             x3, x3, HEAP, lsl #32
    // 0x798920: mov             x0, x3
    // 0x798924: stur            x3, [fp, #-0x18]
    // 0x798928: r0 = Await()
    //     0x798928: bl              #0x74ab64  ; AwaitStub
    // 0x79892c: ldur            x0, [fp, #-0x10]
    // 0x798930: LoadField: r1 = r0->field_f
    //     0x798930: ldur            w1, [x0, #0xf]
    // 0x798934: DecompressPointer r1
    //     0x798934: add             x1, x1, HEAP, lsl #32
    // 0x798938: LoadField: r2 = r1->field_7b
    //     0x798938: ldur            w2, [x1, #0x7b]
    // 0x79893c: DecompressPointer r2
    //     0x79893c: add             x2, x2, HEAP, lsl #32
    // 0x798940: tbnz            w2, #4, #0x798960
    // 0x798944: LoadField: r2 = r1->field_7f
    //     0x798944: ldur            w2, [x1, #0x7f]
    // 0x798948: DecompressPointer r2
    //     0x798948: add             x2, x2, HEAP, lsl #32
    // 0x79894c: LoadField: r1 = r2->field_b
    //     0x79894c: ldur            w1, [x2, #0xb]
    // 0x798950: DecompressPointer r1
    //     0x798950: add             x1, x1, HEAP, lsl #32
    // 0x798954: mov             x2, x1
    // 0x798958: mov             x1, x0
    // 0x79895c: b               #0x7989ac
    // 0x798960: r1 = <void?>
    //     0x798960: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x798964: r0 = _Future()
    //     0x798964: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x798968: stur            x0, [fp, #-0x18]
    // 0x79896c: StoreField: r0->field_b = rZR
    //     0x79896c: stur            xzr, [x0, #0xb]
    // 0x798970: r0 = LoadStaticField(0x3a8)
    //     0x798970: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x798974: ldr             x0, [x0, #0x750]
    // 0x798978: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79897c: cmp             w0, w16
    // 0x798980: b.ne            #0x79898c
    // 0x798984: r2 = _current
    //     0x798984: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x798988: r0 = InitLateStaticField()
    //     0x798988: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x79898c: mov             x1, x0
    // 0x798990: ldur            x0, [fp, #-0x18]
    // 0x798994: StoreField: r0->field_13 = r1
    //     0x798994: stur            w1, [x0, #0x13]
    // 0x798998: mov             x1, x0
    // 0x79899c: r2 = Null
    //     0x79899c: mov             x2, NULL
    // 0x7989a0: r0 = call 0x23f18c
    //     0x7989a0: bl              #0x23f18c
    // 0x7989a4: ldur            x2, [fp, #-0x18]
    // 0x7989a8: ldur            x1, [fp, #-0x10]
    // 0x7989ac: mov             x0, x2
    // 0x7989b0: stur            x2, [fp, #-0x18]
    // 0x7989b4: r0 = Await()
    //     0x7989b4: bl              #0x74ab64  ; AwaitStub
    // 0x7989b8: r1 = <qJa>
    //     0x7989b8: ldr             x1, [PP, #0x75d0]  ; [pp+0x75d0] TypeArguments: <qJa>
    // 0x7989bc: r2 = 0
    //     0x7989bc: movz            x2, #0
    // 0x7989c0: r0 = call 0x2273c0
    //     0x7989c0: bl              #0x2273c0
    // 0x7989c4: mov             x2, x0
    // 0x7989c8: ldur            x0, [fp, #-0x10]
    // 0x7989cc: stur            x2, [fp, #-0x28]
    // 0x7989d0: LoadField: r3 = r0->field_13
    //     0x7989d0: ldur            w3, [x0, #0x13]
    // 0x7989d4: DecompressPointer r3
    //     0x7989d4: add             x3, x3, HEAP, lsl #32
    // 0x7989d8: stur            x3, [fp, #-0x18]
    // 0x7989dc: LoadField: r1 = r2->field_b
    //     0x7989dc: ldur            w1, [x2, #0xb]
    // 0x7989e0: LoadField: r4 = r2->field_f
    //     0x7989e0: ldur            w4, [x2, #0xf]
    // 0x7989e4: DecompressPointer r4
    //     0x7989e4: add             x4, x4, HEAP, lsl #32
    // 0x7989e8: LoadField: r5 = r4->field_b
    //     0x7989e8: ldur            w5, [x4, #0xb]
    // 0x7989ec: r4 = LoadInt32Instr(r1)
    //     0x7989ec: sbfx            x4, x1, #1, #0x1f
    // 0x7989f0: stur            x4, [fp, #-0x20]
    // 0x7989f4: r1 = LoadInt32Instr(r5)
    //     0x7989f4: sbfx            x1, x5, #1, #0x1f
    // 0x7989f8: cmp             x4, x1
    // 0x7989fc: b.ne            #0x798a08
    // 0x798a00: mov             x1, x2
    // 0x798a04: r0 = call 0x2271b8
    //     0x798a04: bl              #0x2271b8
    // 0x798a08: ldur            x2, [fp, #-0x10]
    // 0x798a0c: ldur            x3, [fp, #-0x28]
    // 0x798a10: ldur            x4, [fp, #-0x20]
    // 0x798a14: add             x0, x4, #1
    // 0x798a18: lsl             x1, x0, #1
    // 0x798a1c: StoreField: r3->field_b = r1
    //     0x798a1c: stur            w1, [x3, #0xb]
    // 0x798a20: LoadField: r1 = r3->field_f
    //     0x798a20: ldur            w1, [x3, #0xf]
    // 0x798a24: DecompressPointer r1
    //     0x798a24: add             x1, x1, HEAP, lsl #32
    // 0x798a28: ldur            x0, [fp, #-0x18]
    // 0x798a2c: ArrayStore: r1[r4] = r0  ; List_4
    //     0x798a2c: add             x25, x1, x4, lsl #2
    //     0x798a30: add             x25, x25, #0xf
    //     0x798a34: str             w0, [x25]
    //     0x798a38: tbz             w0, #0, #0x798a54
    //     0x798a3c: ldurb           w16, [x1, #-1]
    //     0x798a40: ldurb           w17, [x0, #-1]
    //     0x798a44: and             x16, x17, x16, lsr #2
    //     0x798a48: tst             x16, HEAP, lsr #32
    //     0x798a4c: b.eq            #0x798a54
    //     0x798a50: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x798a54: LoadField: r4 = r2->field_f
    //     0x798a54: ldur            w4, [x2, #0xf]
    // 0x798a58: DecompressPointer r4
    //     0x798a58: add             x4, x4, HEAP, lsl #32
    // 0x798a5c: mov             x0, x3
    // 0x798a60: stur            x4, [fp, #-0x18]
    // 0x798a64: StoreField: r4->field_b7 = r0
    //     0x798a64: stur            w0, [x4, #0xb7]
    //     0x798a68: ldurb           w16, [x4, #-1]
    //     0x798a6c: ldurb           w17, [x0, #-1]
    //     0x798a70: and             x16, x17, x16, lsr #2
    //     0x798a74: tst             x16, HEAP, lsr #32
    //     0x798a78: b.eq            #0x798a80
    //     0x798a7c: bl              #0x7dc9e8  ; WriteBarrierWrappersStub
    // 0x798a80: mov             x1, x4
    // 0x798a84: LoadField: r0 = r1->field_b
    //     0x798a84: ldur            w0, [x1, #0xb]
    // 0x798a88: DecompressPointer r0
    //     0x798a88: add             x0, x0, HEAP, lsl #32
    // 0x798a8c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x798a90: cmp             w0, w16
    // 0x798a94: b.ne            #0x798aa0
    // 0x798a98: r2 = state
    //     0x798a98: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x798a9c: r0 = InitLateInstanceField()
    //     0x798a9c: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x798aa0: stur            x0, [fp, #-0x30]
    // 0x798aa4: r0 = xJa()
    //     0x798aa4: bl              #0x79ad40  ; AllocatexJaStub -> xJa (size=0x14)
    // 0x798aa8: mov             x1, x0
    // 0x798aac: ldur            x0, [fp, #-0x28]
    // 0x798ab0: StoreField: r1->field_7 = r0
    //     0x798ab0: stur            w0, [x1, #7]
    // 0x798ab4: StoreField: r1->field_b = rZR
    //     0x798ab4: stur            xzr, [x1, #0xb]
    // 0x798ab8: str             x1, [SP]
    // 0x798abc: ldur            x1, [fp, #-0x30]
    // 0x798ac0: r4 = const [0, 0x2, 0x1, 0x1, WHe, 0x1, null]
    //     0x798ac0: ldr             x4, [PP, #0x7948]  ; [pp+0x7948] List(7) [0, 0x2, 0x1, 0x1, "WHe", 0x1, Null]
    // 0x798ac4: r0 = call 0x252ef8
    //     0x798ac4: bl              #0x252ef8
    // 0x798ac8: ldur            x1, [fp, #-0x18]
    // 0x798acc: StoreField: r1->field_b = r0
    //     0x798acc: stur            w0, [x1, #0xb]
    //     0x798ad0: ldurb           w16, [x1, #-1]
    //     0x798ad4: ldurb           w17, [x0, #-1]
    //     0x798ad8: and             x16, x17, x16, lsr #2
    //     0x798adc: tst             x16, HEAP, lsr #32
    //     0x798ae0: b.eq            #0x798ae8
    //     0x798ae4: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x798ae8: ldur            x0, [fp, #-0x10]
    // 0x798aec: LoadField: r1 = r0->field_f
    //     0x798aec: ldur            w1, [x0, #0xf]
    // 0x798af0: DecompressPointer r1
    //     0x798af0: add             x1, x1, HEAP, lsl #32
    // 0x798af4: LoadField: r2 = r1->field_13
    //     0x798af4: ldur            w2, [x1, #0x13]
    // 0x798af8: DecompressPointer r2
    //     0x798af8: add             x2, x2, HEAP, lsl #32
    // 0x798afc: stur            x2, [fp, #-0x18]
    // 0x798b00: LoadField: r1 = r2->field_13
    //     0x798b00: ldur            x1, [x2, #0x13]
    // 0x798b04: tbnz            w1, #2, #0x798b2c
    // 0x798b08: ldur            x1, [fp, #-0x28]
    // 0x798b0c: r0 = xJa()
    //     0x798b0c: bl              #0x79ad40  ; AllocatexJaStub -> xJa (size=0x14)
    // 0x798b10: mov             x1, x0
    // 0x798b14: ldur            x0, [fp, #-0x28]
    // 0x798b18: StoreField: r1->field_7 = r0
    //     0x798b18: stur            w0, [x1, #7]
    // 0x798b1c: StoreField: r1->field_b = rZR
    //     0x798b1c: stur            xzr, [x1, #0xb]
    // 0x798b20: mov             x2, x1
    // 0x798b24: ldur            x1, [fp, #-0x18]
    // 0x798b28: r0 = call 0x5ef1e0
    //     0x798b28: bl              #0x5ef1e0
    // 0x798b2c: ldur            x0, [fp, #-0x10]
    // 0x798b30: LoadField: r1 = r0->field_f
    //     0x798b30: ldur            w1, [x0, #0xf]
    // 0x798b34: DecompressPointer r1
    //     0x798b34: add             x1, x1, HEAP, lsl #32
    // 0x798b38: r16 = true
    //     0x798b38: add             x16, NULL, #0x20  ; true
    // 0x798b3c: r30 = false
    //     0x798b3c: add             lr, NULL, #0x30  ; false
    // 0x798b40: stp             lr, x16, [SP]
    // 0x798b44: r4 = const [0, 0x3, 0x2, 0x1, Pnb, 0x1, Tze, 0x2, null]
    //     0x798b44: add             x4, PP, #0x20, lsl #12  ; [pp+0x20a60] List(9) [0, 0x3, 0x2, 0x1, "Pnb", 0x1, "Tze", 0x2, Null]
    //     0x798b48: ldr             x4, [x4, #0xa60]
    // 0x798b4c: r0 = __unknown_function__()
    //     0x798b4c: bl              #0x7d978c  ; [] ::__unknown_function__
    // 0x798b50: mov             x1, x0
    // 0x798b54: stur            x1, [fp, #-0x18]
    // 0x798b58: r0 = Await()
    //     0x798b58: bl              #0x74ab64  ; AwaitStub
    // 0x798b5c: ldur            x0, [fp, #-0x10]
    // 0x798b60: LoadField: r1 = r0->field_f
    //     0x798b60: ldur            w1, [x0, #0xf]
    // 0x798b64: DecompressPointer r1
    //     0x798b64: add             x1, x1, HEAP, lsl #32
    // 0x798b68: r2 = true
    //     0x798b68: add             x2, NULL, #0x20  ; true
    // 0x798b6c: r0 = __unknown_function__()
    //     0x798b6c: bl              #0x74d0b4  ; [] ::__unknown_function__
    // 0x798b70: mov             x1, x0
    // 0x798b74: stur            x1, [fp, #-0x18]
    // 0x798b78: r0 = Await()
    //     0x798b78: bl              #0x74ab64  ; AwaitStub
    // 0x798b7c: r1 = Function '<anonymous closure>':.
    //     0x798b7c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a68] AnonymousClosure: (0x49aa0c), in [kJi] LJa::vjb (0x7988bc)
    //     0x798b80: ldr             x1, [x1, #0xa68]
    // 0x798b84: r2 = Null
    //     0x798b84: mov             x2, NULL
    // 0x798b88: r0 = AllocateClosure()
    //     0x798b88: bl              #0x7dd600  ; AllocateClosureStub
    // 0x798b8c: ldur            x1, [fp, #-0x28]
    // 0x798b90: mov             x2, x0
    // 0x798b94: r0 = call 0x35c5d4
    //     0x798b94: bl              #0x35c5d4
    // 0x798b98: tbnz            w0, #4, #0x798c70
    // 0x798b9c: r4 = 0
    //     0x798b9c: movz            x4, #0
    // 0x798ba0: ldur            x0, [fp, #-0x10]
    // 0x798ba4: ldur            x3, [fp, #-0x28]
    // 0x798ba8: stur            x4, [fp, #-0x20]
    // 0x798bac: CheckStackOverflow
    //     0x798bac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x798bb0: cmp             SP, x16
    //     0x798bb4: b.ls            #0x798f74
    // 0x798bb8: LoadField: r1 = r3->field_b
    //     0x798bb8: ldur            w1, [x3, #0xb]
    // 0x798bbc: r2 = LoadInt32Instr(r1)
    //     0x798bbc: sbfx            x2, x1, #1, #0x1f
    // 0x798bc0: cmp             x4, x2
    // 0x798bc4: b.ge            #0x798e4c
    // 0x798bc8: LoadField: r5 = r0->field_f
    //     0x798bc8: ldur            w5, [x0, #0xf]
    // 0x798bcc: DecompressPointer r5
    //     0x798bcc: add             x5, x5, HEAP, lsl #32
    // 0x798bd0: stur            x5, [fp, #-0x18]
    // 0x798bd4: LoadField: r1 = r3->field_f
    //     0x798bd4: ldur            w1, [x3, #0xf]
    // 0x798bd8: DecompressPointer r1
    //     0x798bd8: add             x1, x1, HEAP, lsl #32
    // 0x798bdc: ArrayLoad: r2 = r1[r4]  ; Unknown_4
    //     0x798bdc: add             x16, x1, x4, lsl #2
    //     0x798be0: ldur            w2, [x16, #0xf]
    // 0x798be4: DecompressPointer r2
    //     0x798be4: add             x2, x2, HEAP, lsl #32
    // 0x798be8: LoadField: r1 = r2->field_7
    //     0x798be8: ldur            w1, [x2, #7]
    // 0x798bec: DecompressPointer r1
    //     0x798bec: add             x1, x1, HEAP, lsl #32
    // 0x798bf0: mov             x2, x1
    // 0x798bf4: mov             x1, x5
    // 0x798bf8: r0 = call 0x49a698
    //     0x798bf8: bl              #0x49a698
    // 0x798bfc: r1 = Null
    //     0x798bfc: mov             x1, NULL
    // 0x798c00: r2 = 6
    //     0x798c00: movz            x2, #0x6
    // 0x798c04: stur            x0, [fp, #-0x30]
    // 0x798c08: r0 = AllocateArray()
    //     0x798c08: bl              #0x7de31c  ; AllocateArrayStub
    // 0x798c0c: stur            x0, [fp, #-0x38]
    // 0x798c10: r16 = "loadfile"
    //     0x798c10: add             x16, PP, #0x20, lsl #12  ; [pp+0x20a70] "loadfile"
    //     0x798c14: ldr             x16, [x16, #0xa70]
    // 0x798c18: StoreField: r0->field_f = r16
    //     0x798c18: stur            w16, [x0, #0xf]
    // 0x798c1c: ldur            x1, [fp, #-0x30]
    // 0x798c20: StoreField: r0->field_13 = r1
    //     0x798c20: stur            w1, [x0, #0x13]
    // 0x798c24: r16 = "append"
    //     0x798c24: add             x16, PP, #0x20, lsl #12  ; [pp+0x20a78] "append"
    //     0x798c28: ldr             x16, [x16, #0xa78]
    // 0x798c2c: ArrayStore: r0[0] = r16  ; List_4
    //     0x798c2c: stur            w16, [x0, #0x17]
    // 0x798c30: r1 = <String>
    //     0x798c30: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x798c34: r0 = AllocateGrowableArray()
    //     0x798c34: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x798c38: mov             x1, x0
    // 0x798c3c: ldur            x0, [fp, #-0x38]
    // 0x798c40: StoreField: r1->field_f = r0
    //     0x798c40: stur            w0, [x1, #0xf]
    // 0x798c44: r0 = 6
    //     0x798c44: movz            x0, #0x6
    // 0x798c48: StoreField: r1->field_b = r0
    //     0x798c48: stur            w0, [x1, #0xb]
    // 0x798c4c: mov             x2, x1
    // 0x798c50: ldur            x1, [fp, #-0x18]
    // 0x798c54: r0 = __unknown_function__()
    //     0x798c54: bl              #0x79a424  ; [] ::__unknown_function__
    // 0x798c58: mov             x1, x0
    // 0x798c5c: stur            x1, [fp, #-0x18]
    // 0x798c60: r0 = Await()
    //     0x798c60: bl              #0x74ab64  ; AwaitStub
    // 0x798c64: ldur            x0, [fp, #-0x20]
    // 0x798c68: add             x4, x0, #1
    // 0x798c6c: b               #0x798ba0
    // 0x798c70: ldur            x0, [fp, #-0x10]
    // 0x798c74: ldur            x1, [fp, #-0x28]
    // 0x798c78: r1 = 1
    //     0x798c78: movz            x1, #0x1
    // 0x798c7c: r0 = AllocateContext()
    //     0x798c7c: bl              #0x7dd22c  ; AllocateContextStub
    // 0x798c80: mov             x1, x0
    // 0x798c84: ldur            x0, [fp, #-0x10]
    // 0x798c88: stur            x1, [fp, #-0x18]
    // 0x798c8c: StoreField: r1->field_b = r0
    //     0x798c8c: stur            w0, [x1, #0xb]
    // 0x798c90: r0 = __unknown_function__()
    //     0x798c90: bl              #0x79a330  ; [] ::__unknown_function__
    // 0x798c94: mov             x1, x0
    // 0x798c98: stur            x1, [fp, #-0x30]
    // 0x798c9c: r0 = Await()
    //     0x798c9c: bl              #0x74ab64  ; AwaitStub
    // 0x798ca0: mov             x1, x0
    // 0x798ca4: ldur            x2, [fp, #-0x18]
    // 0x798ca8: stur            x1, [fp, #-0x30]
    // 0x798cac: StoreField: r2->field_f = r0
    //     0x798cac: stur            w0, [x2, #0xf]
    //     0x798cb0: tbz             w0, #0, #0x798ccc
    //     0x798cb4: ldurb           w16, [x2, #-1]
    //     0x798cb8: ldurb           w17, [x0, #-1]
    //     0x798cbc: and             x16, x17, x16, lsr #2
    //     0x798cc0: tst             x16, HEAP, lsr #32
    //     0x798cc4: b.eq            #0x798ccc
    //     0x798cc8: bl              #0x7dc9a8  ; WriteBarrierWrappersStub
    // 0x798ccc: r0 = Oa()
    //     0x798ccc: bl              #0x746d40  ; AllocateOaStub -> Oa (size=0x38)
    // 0x798cd0: mov             x1, x0
    // 0x798cd4: stur            x0, [fp, #-0x38]
    // 0x798cd8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x798cd8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x798cdc: r0 = call 0x230f94
    //     0x798cdc: bl              #0x230f94
    // 0x798ce0: ldur            x0, [fp, #-0x28]
    // 0x798ce4: LoadField: r1 = r0->field_b
    //     0x798ce4: ldur            w1, [x0, #0xb]
    // 0x798ce8: r3 = LoadInt32Instr(r1)
    //     0x798ce8: sbfx            x3, x1, #1, #0x1f
    // 0x798cec: stur            x3, [fp, #-0x40]
    // 0x798cf0: r1 = 0
    //     0x798cf0: movz            x1, #0
    // 0x798cf4: ldur            x4, [fp, #-0x10]
    // 0x798cf8: CheckStackOverflow
    //     0x798cf8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x798cfc: cmp             SP, x16
    //     0x798d00: b.ls            #0x798f7c
    // 0x798d04: LoadField: r2 = r0->field_b
    //     0x798d04: ldur            w2, [x0, #0xb]
    // 0x798d08: r5 = LoadInt32Instr(r2)
    //     0x798d08: sbfx            x5, x2, #1, #0x1f
    // 0x798d0c: cmp             x3, x5
    // 0x798d10: b.ne            #0x798f50
    // 0x798d14: cmp             x1, x5
    // 0x798d18: b.ge            #0x798d74
    // 0x798d1c: LoadField: r2 = r0->field_f
    //     0x798d1c: ldur            w2, [x0, #0xf]
    // 0x798d20: DecompressPointer r2
    //     0x798d20: add             x2, x2, HEAP, lsl #32
    // 0x798d24: ArrayLoad: r5 = r2[r1]  ; Unknown_4
    //     0x798d24: add             x16, x2, x1, lsl #2
    //     0x798d28: ldur            w5, [x16, #0xf]
    // 0x798d2c: DecompressPointer r5
    //     0x798d2c: add             x5, x5, HEAP, lsl #32
    // 0x798d30: add             x6, x1, #1
    // 0x798d34: stur            x6, [fp, #-0x20]
    // 0x798d38: LoadField: r1 = r4->field_f
    //     0x798d38: ldur            w1, [x4, #0xf]
    // 0x798d3c: DecompressPointer r1
    //     0x798d3c: add             x1, x1, HEAP, lsl #32
    // 0x798d40: LoadField: r2 = r5->field_7
    //     0x798d40: ldur            w2, [x5, #7]
    // 0x798d44: DecompressPointer r2
    //     0x798d44: add             x2, x2, HEAP, lsl #32
    // 0x798d48: r0 = call 0x49a698
    //     0x798d48: bl              #0x49a698
    // 0x798d4c: ldur            x1, [fp, #-0x38]
    // 0x798d50: mov             x2, x0
    // 0x798d54: r0 = call 0x230d74
    //     0x798d54: bl              #0x230d74
    // 0x798d58: ldur            x1, [fp, #-0x38]
    // 0x798d5c: r2 = "\n"
    //     0x798d5c: ldr             x2, [PP, #0x188]  ; [pp+0x188] "\n"
    // 0x798d60: r0 = call 0x230df4
    //     0x798d60: bl              #0x230df4
    // 0x798d64: ldur            x1, [fp, #-0x20]
    // 0x798d68: ldur            x0, [fp, #-0x28]
    // 0x798d6c: ldur            x3, [fp, #-0x40]
    // 0x798d70: b               #0x798cf4
    // 0x798d74: mov             x0, x4
    // 0x798d78: ldur            x1, [fp, #-0x30]
    // 0x798d7c: ldur            x16, [fp, #-0x38]
    // 0x798d80: str             x16, [SP]
    // 0x798d84: r0 = call 0x551248
    //     0x798d84: bl              #0x551248
    // 0x798d88: ldur            x1, [fp, #-0x30]
    // 0x798d8c: mov             x2, x0
    // 0x798d90: r0 = __unknown_function__()
    //     0x798d90: bl              #0x798f84  ; [] ::__unknown_function__
    // 0x798d94: mov             x1, x0
    // 0x798d98: stur            x1, [fp, #-0x38]
    // 0x798d9c: r0 = Await()
    //     0x798d9c: bl              #0x74ab64  ; AwaitStub
    // 0x798da0: ldur            x0, [fp, #-0x10]
    // 0x798da4: LoadField: r3 = r0->field_f
    //     0x798da4: ldur            w3, [x0, #0xf]
    // 0x798da8: DecompressPointer r3
    //     0x798da8: add             x3, x3, HEAP, lsl #32
    // 0x798dac: ldur            x1, [fp, #-0x30]
    // 0x798db0: stur            x3, [fp, #-0x48]
    // 0x798db4: LoadField: r4 = r1->field_7
    //     0x798db4: ldur            w4, [x1, #7]
    // 0x798db8: DecompressPointer r4
    //     0x798db8: add             x4, x4, HEAP, lsl #32
    // 0x798dbc: stur            x4, [fp, #-0x38]
    // 0x798dc0: r1 = Null
    //     0x798dc0: mov             x1, NULL
    // 0x798dc4: r2 = 6
    //     0x798dc4: movz            x2, #0x6
    // 0x798dc8: r0 = AllocateArray()
    //     0x798dc8: bl              #0x7de31c  ; AllocateArrayStub
    // 0x798dcc: stur            x0, [fp, #-0x30]
    // 0x798dd0: r16 = "loadlist"
    //     0x798dd0: add             x16, PP, #0x20, lsl #12  ; [pp+0x20a80] "loadlist"
    //     0x798dd4: ldr             x16, [x16, #0xa80]
    // 0x798dd8: StoreField: r0->field_f = r16
    //     0x798dd8: stur            w16, [x0, #0xf]
    // 0x798ddc: ldur            x1, [fp, #-0x38]
    // 0x798de0: StoreField: r0->field_13 = r1
    //     0x798de0: stur            w1, [x0, #0x13]
    // 0x798de4: r16 = "append"
    //     0x798de4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20a78] "append"
    //     0x798de8: ldr             x16, [x16, #0xa78]
    // 0x798dec: ArrayStore: r0[0] = r16  ; List_4
    //     0x798dec: stur            w16, [x0, #0x17]
    // 0x798df0: r1 = <String>
    //     0x798df0: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x798df4: r0 = AllocateGrowableArray()
    //     0x798df4: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x798df8: mov             x1, x0
    // 0x798dfc: ldur            x0, [fp, #-0x30]
    // 0x798e00: StoreField: r1->field_f = r0
    //     0x798e00: stur            w0, [x1, #0xf]
    // 0x798e04: r0 = 6
    //     0x798e04: movz            x0, #0x6
    // 0x798e08: StoreField: r1->field_b = r0
    //     0x798e08: stur            w0, [x1, #0xb]
    // 0x798e0c: mov             x2, x1
    // 0x798e10: ldur            x1, [fp, #-0x48]
    // 0x798e14: r0 = __unknown_function__()
    //     0x798e14: bl              #0x79a424  ; [] ::__unknown_function__
    // 0x798e18: mov             x1, x0
    // 0x798e1c: stur            x1, [fp, #-0x30]
    // 0x798e20: r0 = Await()
    //     0x798e20: bl              #0x74ab64  ; AwaitStub
    // 0x798e24: ldur            x2, [fp, #-0x18]
    // 0x798e28: r1 = Function '<anonymous closure>':.
    //     0x798e28: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a88] AnonymousClosure: (0x49a9c4), in [kJi] LJa::vjb (0x7988bc)
    //     0x798e2c: ldr             x1, [x1, #0xa88]
    // 0x798e30: r0 = AllocateClosure()
    //     0x798e30: bl              #0x7dd600  ; AllocateClosureStub
    // 0x798e34: str             x0, [SP]
    // 0x798e38: r1 = <Null?>
    //     0x798e38: ldr             x1, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    // 0x798e3c: r2 = Instance_la
    //     0x798e3c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a90] Obj!la@455111
    //     0x798e40: ldr             x2, [x2, #0xa90]
    // 0x798e44: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x798e44: ldr             x4, [PP, #0x508]  ; [pp+0x508] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x798e48: r0 = call 0x2c5350
    //     0x798e48: bl              #0x2c5350
    // 0x798e4c: ldur            x0, [fp, #-0x10]
    // 0x798e50: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x798e50: ldur            w1, [x0, #0x17]
    // 0x798e54: DecompressPointer r1
    //     0x798e54: add             x1, x1, HEAP, lsl #32
    // 0x798e58: tbnz            w1, #4, #0x798f0c
    // 0x798e5c: r3 = true
    //     0x798e5c: add             x3, NULL, #0x20  ; true
    // 0x798e60: LoadField: r1 = r0->field_f
    //     0x798e60: ldur            w1, [x0, #0xf]
    // 0x798e64: DecompressPointer r1
    //     0x798e64: add             x1, x1, HEAP, lsl #32
    // 0x798e68: StoreField: r1->field_ab = r3
    //     0x798e68: stur            w3, [x1, #0xab]
    // 0x798e6c: r2 = false
    //     0x798e6c: add             x2, NULL, #0x30  ; false
    // 0x798e70: r0 = __unknown_function__()
    //     0x798e70: bl              #0x74d0b4  ; [] ::__unknown_function__
    // 0x798e74: mov             x1, x0
    // 0x798e78: stur            x1, [fp, #-0x18]
    // 0x798e7c: r0 = Await()
    //     0x798e7c: bl              #0x74ab64  ; AwaitStub
    // 0x798e80: ldur            x0, [fp, #-0x10]
    // 0x798e84: LoadField: r2 = r0->field_f
    //     0x798e84: ldur            w2, [x0, #0xf]
    // 0x798e88: DecompressPointer r2
    //     0x798e88: add             x2, x2, HEAP, lsl #32
    // 0x798e8c: mov             x1, x2
    // 0x798e90: stur            x2, [fp, #-0x18]
    // 0x798e94: LoadField: r0 = r1->field_b
    //     0x798e94: ldur            w0, [x1, #0xb]
    // 0x798e98: DecompressPointer r0
    //     0x798e98: add             x0, x0, HEAP, lsl #32
    // 0x798e9c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x798ea0: cmp             w0, w16
    // 0x798ea4: b.ne            #0x798eb0
    // 0x798ea8: r2 = state
    //     0x798ea8: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x798eac: r0 = InitLateInstanceField()
    //     0x798eac: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x798eb0: r16 = true
    //     0x798eb0: add             x16, NULL, #0x20  ; true
    // 0x798eb4: str             x16, [SP]
    // 0x798eb8: mov             x1, x0
    // 0x798ebc: r4 = const [0, 0x2, 0x1, 0x1, nHe, 0x1, null]
    //     0x798ebc: ldr             x4, [PP, #0x78f8]  ; [pp+0x78f8] List(7) [0, 0x2, 0x1, 0x1, "nHe", 0x1, Null]
    // 0x798ec0: r0 = call 0x252ef8
    //     0x798ec0: bl              #0x252ef8
    // 0x798ec4: ldur            x1, [fp, #-0x18]
    // 0x798ec8: StoreField: r1->field_b = r0
    //     0x798ec8: stur            w0, [x1, #0xb]
    //     0x798ecc: ldurb           w16, [x1, #-1]
    //     0x798ed0: ldurb           w17, [x0, #-1]
    //     0x798ed4: and             x16, x17, x16, lsr #2
    //     0x798ed8: tst             x16, HEAP, lsr #32
    //     0x798edc: b.eq            #0x798ee4
    //     0x798ee0: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x798ee4: ldur            x0, [fp, #-0x10]
    // 0x798ee8: LoadField: r1 = r0->field_f
    //     0x798ee8: ldur            w1, [x0, #0xf]
    // 0x798eec: DecompressPointer r1
    //     0x798eec: add             x1, x1, HEAP, lsl #32
    // 0x798ef0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x798ef0: ldur            w2, [x1, #0x17]
    // 0x798ef4: DecompressPointer r2
    //     0x798ef4: add             x2, x2, HEAP, lsl #32
    // 0x798ef8: LoadField: r1 = r2->field_13
    //     0x798ef8: ldur            x1, [x2, #0x13]
    // 0x798efc: tbnz            w1, #2, #0x798f0c
    // 0x798f00: mov             x1, x2
    // 0x798f04: r2 = true
    //     0x798f04: add             x2, NULL, #0x20  ; true
    // 0x798f08: r0 = call 0x5ef1e0
    //     0x798f08: bl              #0x5ef1e0
    // 0x798f0c: ldur            x0, [fp, #-0x10]
    // 0x798f10: LoadField: r1 = r0->field_f
    //     0x798f10: ldur            w1, [x0, #0xf]
    // 0x798f14: DecompressPointer r1
    //     0x798f14: add             x1, x1, HEAP, lsl #32
    // 0x798f18: r2 = 0
    //     0x798f18: movz            x2, #0
    // 0x798f1c: r0 = __unknown_function__()
    //     0x798f1c: bl              #0x74e838  ; [] ::__unknown_function__
    // 0x798f20: mov             x1, x0
    // 0x798f24: stur            x1, [fp, #-0x18]
    // 0x798f28: r0 = Await()
    //     0x798f28: bl              #0x74ab64  ; AwaitStub
    // 0x798f2c: r0 = Null
    //     0x798f2c: mov             x0, NULL
    // 0x798f30: r0 = ReturnAsyncNotFuture()
    //     0x798f30: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x798f34: r0 = na()
    //     0x798f34: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x798f38: mov             x1, x0
    // 0x798f3c: r0 = "[Player] has been disposed"
    //     0x798f3c: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x798f40: StoreField: r1->field_b = r0
    //     0x798f40: stur            w0, [x1, #0xb]
    // 0x798f44: mov             x0, x1
    // 0x798f48: r0 = Throw()
    //     0x798f48: bl              #0x7dc520  ; ThrowStub
    // 0x798f4c: brk             #0
    // 0x798f50: r0 = ra()
    //     0x798f50: bl              #0x745648  ; AllocateraStub -> ra (size=0x10)
    // 0x798f54: mov             x1, x0
    // 0x798f58: ldur            x0, [fp, #-0x28]
    // 0x798f5c: StoreField: r1->field_b = r0
    //     0x798f5c: stur            w0, [x1, #0xb]
    // 0x798f60: mov             x0, x1
    // 0x798f64: r0 = Throw()
    //     0x798f64: bl              #0x7dc520  ; ThrowStub
    // 0x798f68: brk             #0
    // 0x798f6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x798f6c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x798f70: b               #0x7988f0
    // 0x798f74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x798f74: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x798f78: b               #0x798bb8
    // 0x798f7c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x798f7c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x798f80: b               #0x798d04
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x79deec, size: 0x2a4
    // 0x79deec: EnterFrame
    //     0x79deec: stp             fp, lr, [SP, #-0x10]!
    //     0x79def0: mov             fp, SP
    // 0x79def4: AllocStack(0x28)
    //     0x79def4: sub             SP, SP, #0x28
    // 0x79def8: SetupParameters(LJa this /* r1 */)
    //     0x79def8: stur            NULL, [fp, #-8]
    //     0x79defc: movz            x0, #0
    //     0x79df00: add             x1, fp, w0, sxtw #2
    //     0x79df04: ldr             x1, [x1, #0x10]
    //     0x79df08: ldur            w2, [x1, #0x17]
    //     0x79df0c: add             x2, x2, HEAP, lsl #32
    //     0x79df10: stur            x2, [fp, #-0x10]
    // 0x79df14: CheckStackOverflow
    //     0x79df14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x79df18: cmp             SP, x16
    //     0x79df1c: b.ls            #0x79e174
    // 0x79df20: InitAsync() -> Future<void?>
    //     0x79df20: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79df24: bl              #0x74ada8  ; InitAsyncStub
    // 0x79df28: ldur            x1, [fp, #-0x10]
    // 0x79df2c: LoadField: r0 = r1->field_f
    //     0x79df2c: ldur            w0, [x1, #0xf]
    // 0x79df30: DecompressPointer r0
    //     0x79df30: add             x0, x0, HEAP, lsl #32
    // 0x79df34: LoadField: r2 = r0->field_a3
    //     0x79df34: ldur            w2, [x0, #0xa3]
    // 0x79df38: DecompressPointer r2
    //     0x79df38: add             x2, x2, HEAP, lsl #32
    // 0x79df3c: tbz             w2, #4, #0x79e11c
    // 0x79df40: LoadField: r2 = r0->field_77
    //     0x79df40: ldur            w2, [x0, #0x77]
    // 0x79df44: DecompressPointer r2
    //     0x79df44: add             x2, x2, HEAP, lsl #32
    // 0x79df48: LoadField: r3 = r2->field_b
    //     0x79df48: ldur            w3, [x2, #0xb]
    // 0x79df4c: DecompressPointer r3
    //     0x79df4c: add             x3, x3, HEAP, lsl #32
    // 0x79df50: mov             x0, x3
    // 0x79df54: stur            x3, [fp, #-0x18]
    // 0x79df58: r0 = Await()
    //     0x79df58: bl              #0x74ab64  ; AwaitStub
    // 0x79df5c: ldur            x0, [fp, #-0x10]
    // 0x79df60: LoadField: r1 = r0->field_f
    //     0x79df60: ldur            w1, [x0, #0xf]
    // 0x79df64: DecompressPointer r1
    //     0x79df64: add             x1, x1, HEAP, lsl #32
    // 0x79df68: LoadField: r2 = r1->field_7b
    //     0x79df68: ldur            w2, [x1, #0x7b]
    // 0x79df6c: DecompressPointer r2
    //     0x79df6c: add             x2, x2, HEAP, lsl #32
    // 0x79df70: tbnz            w2, #4, #0x79df90
    // 0x79df74: LoadField: r2 = r1->field_7f
    //     0x79df74: ldur            w2, [x1, #0x7f]
    // 0x79df78: DecompressPointer r2
    //     0x79df78: add             x2, x2, HEAP, lsl #32
    // 0x79df7c: LoadField: r1 = r2->field_b
    //     0x79df7c: ldur            w1, [x2, #0xb]
    // 0x79df80: DecompressPointer r1
    //     0x79df80: add             x1, x1, HEAP, lsl #32
    // 0x79df84: mov             x2, x1
    // 0x79df88: mov             x1, x0
    // 0x79df8c: b               #0x79dfdc
    // 0x79df90: r1 = <void?>
    //     0x79df90: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x79df94: r0 = _Future()
    //     0x79df94: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x79df98: stur            x0, [fp, #-0x18]
    // 0x79df9c: StoreField: r0->field_b = rZR
    //     0x79df9c: stur            xzr, [x0, #0xb]
    // 0x79dfa0: r0 = LoadStaticField(0x3a8)
    //     0x79dfa0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x79dfa4: ldr             x0, [x0, #0x750]
    // 0x79dfa8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79dfac: cmp             w0, w16
    // 0x79dfb0: b.ne            #0x79dfbc
    // 0x79dfb4: r2 = _current
    //     0x79dfb4: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x79dfb8: r0 = InitLateStaticField()
    //     0x79dfb8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x79dfbc: mov             x1, x0
    // 0x79dfc0: ldur            x0, [fp, #-0x18]
    // 0x79dfc4: StoreField: r0->field_13 = r1
    //     0x79dfc4: stur            w1, [x0, #0x13]
    // 0x79dfc8: mov             x1, x0
    // 0x79dfcc: r2 = Null
    //     0x79dfcc: mov             x2, NULL
    // 0x79dfd0: r0 = call 0x23f18c
    //     0x79dfd0: bl              #0x23f18c
    // 0x79dfd4: ldur            x2, [fp, #-0x18]
    // 0x79dfd8: ldur            x1, [fp, #-0x10]
    // 0x79dfdc: mov             x0, x2
    // 0x79dfe0: stur            x2, [fp, #-0x18]
    // 0x79dfe4: r0 = Await()
    //     0x79dfe4: bl              #0x74ab64  ; AwaitStub
    // 0x79dfe8: ldur            x0, [fp, #-0x10]
    // 0x79dfec: LoadField: r1 = r0->field_13
    //     0x79dfec: ldur            w1, [x0, #0x13]
    // 0x79dff0: DecompressPointer r1
    //     0x79dff0: add             x1, x1, HEAP, lsl #32
    // 0x79dff4: stur            x1, [fp, #-0x20]
    // 0x79dff8: LoadField: d0 = r1->field_7
    //     0x79dff8: ldur            d0, [x1, #7]
    // 0x79dffc: d1 = 0.000000
    //     0x79dffc: eor             v1.16b, v1.16b, v1.16b
    // 0x79e000: fcmp            d1, d0
    // 0x79e004: b.ge            #0x79e138
    // 0x79e008: LoadField: r2 = r0->field_f
    //     0x79e008: ldur            w2, [x0, #0xf]
    // 0x79e00c: DecompressPointer r2
    //     0x79e00c: add             x2, x2, HEAP, lsl #32
    // 0x79e010: mov             x1, x2
    // 0x79e014: stur            x2, [fp, #-0x18]
    // 0x79e018: LoadField: r0 = r1->field_b
    //     0x79e018: ldur            w0, [x1, #0xb]
    // 0x79e01c: DecompressPointer r0
    //     0x79e01c: add             x0, x0, HEAP, lsl #32
    // 0x79e020: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79e024: cmp             w0, w16
    // 0x79e028: b.ne            #0x79e034
    // 0x79e02c: r2 = state
    //     0x79e02c: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x79e030: r0 = InitLateInstanceField()
    //     0x79e030: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x79e034: mov             x1, x0
    // 0x79e038: ldur            x0, [fp, #-0x10]
    // 0x79e03c: LoadField: r2 = r0->field_13
    //     0x79e03c: ldur            w2, [x0, #0x13]
    // 0x79e040: DecompressPointer r2
    //     0x79e040: add             x2, x2, HEAP, lsl #32
    // 0x79e044: str             x2, [SP]
    // 0x79e048: r4 = const [0, 0x2, 0x1, 0x1, YPf, 0x1, null]
    //     0x79e048: add             x4, PP, #0x21, lsl #12  ; [pp+0x21138] List(7) [0, 0x2, 0x1, 0x1, "YPf", 0x1, Null]
    //     0x79e04c: ldr             x4, [x4, #0x138]
    // 0x79e050: r0 = call 0x252ef8
    //     0x79e050: bl              #0x252ef8
    // 0x79e054: ldur            x1, [fp, #-0x18]
    // 0x79e058: StoreField: r1->field_b = r0
    //     0x79e058: stur            w0, [x1, #0xb]
    //     0x79e05c: ldurb           w16, [x1, #-1]
    //     0x79e060: ldurb           w17, [x0, #-1]
    //     0x79e064: and             x16, x17, x16, lsr #2
    //     0x79e068: tst             x16, HEAP, lsr #32
    //     0x79e06c: b.eq            #0x79e074
    //     0x79e070: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x79e074: ldur            x0, [fp, #-0x10]
    // 0x79e078: LoadField: r1 = r0->field_f
    //     0x79e078: ldur            w1, [x0, #0xf]
    // 0x79e07c: DecompressPointer r1
    //     0x79e07c: add             x1, x1, HEAP, lsl #32
    // 0x79e080: LoadField: r2 = r1->field_2b
    //     0x79e080: ldur            w2, [x1, #0x2b]
    // 0x79e084: DecompressPointer r2
    //     0x79e084: add             x2, x2, HEAP, lsl #32
    // 0x79e088: stur            x2, [fp, #-0x18]
    // 0x79e08c: LoadField: r3 = r2->field_13
    //     0x79e08c: ldur            x3, [x2, #0x13]
    // 0x79e090: tbnz            w3, #2, #0x79e0e8
    // 0x79e094: LoadField: r0 = r1->field_b
    //     0x79e094: ldur            w0, [x1, #0xb]
    // 0x79e098: DecompressPointer r0
    //     0x79e098: add             x0, x0, HEAP, lsl #32
    // 0x79e09c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79e0a0: cmp             w0, w16
    // 0x79e0a4: b.ne            #0x79e0b0
    // 0x79e0a8: r2 = state
    //     0x79e0a8: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x79e0ac: r0 = InitLateInstanceField()
    //     0x79e0ac: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x79e0b0: LoadField: d0 = r0->field_23
    //     0x79e0b0: ldur            d0, [x0, #0x23]
    // 0x79e0b4: r2 = inline_Allocate_Double()
    //     0x79e0b4: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0x79e0b8: add             x2, x2, #0x10
    //     0x79e0bc: cmp             x0, x2
    //     0x79e0c0: b.ls            #0x79e17c
    //     0x79e0c4: str             x2, [THR, #0x60]  ; THR::top
    //     0x79e0c8: sub             x2, x2, #0xf
    //     0x79e0cc: movz            x0, #0xe15c
    //     0x79e0d0: movk            x0, #0x3, lsl #16
    //     0x79e0d4: stur            x0, [x2, #-1]
    // 0x79e0d8: dmb             ishst
    // 0x79e0dc: StoreField: r2->field_7 = d0
    //     0x79e0dc: stur            d0, [x2, #7]
    // 0x79e0e0: ldur            x1, [fp, #-0x18]
    // 0x79e0e4: r0 = call 0x5ef1e0
    //     0x79e0e4: bl              #0x5ef1e0
    // 0x79e0e8: ldur            x0, [fp, #-0x10]
    // 0x79e0ec: LoadField: r1 = r0->field_f
    //     0x79e0ec: ldur            w1, [x0, #0xf]
    // 0x79e0f0: DecompressPointer r1
    //     0x79e0f0: add             x1, x1, HEAP, lsl #32
    // 0x79e0f4: LoadField: r2 = r0->field_13
    //     0x79e0f4: ldur            w2, [x0, #0x13]
    // 0x79e0f8: DecompressPointer r2
    //     0x79e0f8: add             x2, x2, HEAP, lsl #32
    // 0x79e0fc: LoadField: d0 = r2->field_7
    //     0x79e0fc: ldur            d0, [x2, #7]
    // 0x79e100: r2 = "speed"
    //     0x79e100: ldr             x2, [PP, #0x7758]  ; [pp+0x7758] "speed"
    // 0x79e104: r0 = __unknown_function__()
    //     0x79e104: bl              #0x79e190  ; [] ::__unknown_function__
    // 0x79e108: mov             x1, x0
    // 0x79e10c: stur            x1, [fp, #-0x18]
    // 0x79e110: r0 = Await()
    //     0x79e110: bl              #0x74ab64  ; AwaitStub
    // 0x79e114: r0 = Null
    //     0x79e114: mov             x0, NULL
    // 0x79e118: r0 = ReturnAsyncNotFuture()
    //     0x79e118: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x79e11c: r0 = na()
    //     0x79e11c: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x79e120: mov             x1, x0
    // 0x79e124: r0 = "[Player] has been disposed"
    //     0x79e124: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x79e128: StoreField: r1->field_b = r0
    //     0x79e128: stur            w0, [x1, #0xb]
    // 0x79e12c: mov             x0, x1
    // 0x79e130: r0 = Throw()
    //     0x79e130: bl              #0x7dc520  ; ThrowStub
    // 0x79e134: brk             #0
    // 0x79e138: r0 = ArgumentError()
    //     0x79e138: bl              #0x7468e4  ; AllocateArgumentErrorStub -> ArgumentError (size=0x1c)
    // 0x79e13c: mov             x1, x0
    // 0x79e140: r0 = "rate"
    //     0x79e140: add             x0, PP, #0x21, lsl #12  ; [pp+0x21140] "rate"
    //     0x79e144: ldr             x0, [x0, #0x140]
    // 0x79e148: StoreField: r1->field_13 = r0
    //     0x79e148: stur            w0, [x1, #0x13]
    // 0x79e14c: r0 = "Must be greater than 0.0"
    //     0x79e14c: add             x0, PP, #0x21, lsl #12  ; [pp+0x21148] "Must be greater than 0.0"
    //     0x79e150: ldr             x0, [x0, #0x148]
    // 0x79e154: ArrayStore: r1[0] = r0  ; List_4
    //     0x79e154: stur            w0, [x1, #0x17]
    // 0x79e158: ldur            x0, [fp, #-0x20]
    // 0x79e15c: StoreField: r1->field_f = r0
    //     0x79e15c: stur            w0, [x1, #0xf]
    // 0x79e160: r0 = true
    //     0x79e160: add             x0, NULL, #0x20  ; true
    // 0x79e164: StoreField: r1->field_b = r0
    //     0x79e164: stur            w0, [x1, #0xb]
    // 0x79e168: mov             x0, x1
    // 0x79e16c: r0 = Throw()
    //     0x79e16c: bl              #0x7dc520  ; ThrowStub
    // 0x79e170: brk             #0
    // 0x79e174: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x79e174: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x79e178: b               #0x79df20
    // 0x79e17c: SaveReg d0
    //     0x79e17c: str             q0, [SP, #-0x10]!
    // 0x79e180: r0 = AllocateDouble()
    //     0x79e180: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x79e184: mov             x2, x0
    // 0x79e188: RestoreReg d0
    //     0x79e188: ldr             q0, [SP], #0x10
    // 0x79e18c: b               #0x79e0dc
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x79f8f4, size: 0x294
    // 0x79f8f4: EnterFrame
    //     0x79f8f4: stp             fp, lr, [SP, #-0x10]!
    //     0x79f8f8: mov             fp, SP
    // 0x79f8fc: AllocStack(0x30)
    //     0x79f8fc: sub             SP, SP, #0x30
    // 0x79f900: SetupParameters(LJa this /* r1 */)
    //     0x79f900: stur            NULL, [fp, #-8]
    //     0x79f904: movz            x0, #0
    //     0x79f908: add             x1, fp, w0, sxtw #2
    //     0x79f90c: ldr             x1, [x1, #0x10]
    //     0x79f910: ldur            w2, [x1, #0x17]
    //     0x79f914: add             x2, x2, HEAP, lsl #32
    //     0x79f918: stur            x2, [fp, #-0x10]
    // 0x79f91c: CheckStackOverflow
    //     0x79f91c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x79f920: cmp             SP, x16
    //     0x79f924: b.ls            #0x79fb64
    // 0x79f928: InitAsync() -> Future<void?>
    //     0x79f928: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79f92c: bl              #0x74ada8  ; InitAsyncStub
    // 0x79f930: ldur            x1, [fp, #-0x10]
    // 0x79f934: LoadField: r0 = r1->field_f
    //     0x79f934: ldur            w0, [x1, #0xf]
    // 0x79f938: DecompressPointer r0
    //     0x79f938: add             x0, x0, HEAP, lsl #32
    // 0x79f93c: LoadField: r2 = r0->field_a3
    //     0x79f93c: ldur            w2, [x0, #0xa3]
    // 0x79f940: DecompressPointer r2
    //     0x79f940: add             x2, x2, HEAP, lsl #32
    // 0x79f944: tbz             w2, #4, #0x79fb48
    // 0x79f948: LoadField: r2 = r0->field_77
    //     0x79f948: ldur            w2, [x0, #0x77]
    // 0x79f94c: DecompressPointer r2
    //     0x79f94c: add             x2, x2, HEAP, lsl #32
    // 0x79f950: LoadField: r3 = r2->field_b
    //     0x79f950: ldur            w3, [x2, #0xb]
    // 0x79f954: DecompressPointer r3
    //     0x79f954: add             x3, x3, HEAP, lsl #32
    // 0x79f958: mov             x0, x3
    // 0x79f95c: stur            x3, [fp, #-0x18]
    // 0x79f960: r0 = Await()
    //     0x79f960: bl              #0x74ab64  ; AwaitStub
    // 0x79f964: ldur            x0, [fp, #-0x10]
    // 0x79f968: LoadField: r1 = r0->field_f
    //     0x79f968: ldur            w1, [x0, #0xf]
    // 0x79f96c: DecompressPointer r1
    //     0x79f96c: add             x1, x1, HEAP, lsl #32
    // 0x79f970: LoadField: r2 = r1->field_7b
    //     0x79f970: ldur            w2, [x1, #0x7b]
    // 0x79f974: DecompressPointer r2
    //     0x79f974: add             x2, x2, HEAP, lsl #32
    // 0x79f978: tbnz            w2, #4, #0x79f998
    // 0x79f97c: LoadField: r2 = r1->field_7f
    //     0x79f97c: ldur            w2, [x1, #0x7f]
    // 0x79f980: DecompressPointer r2
    //     0x79f980: add             x2, x2, HEAP, lsl #32
    // 0x79f984: LoadField: r1 = r2->field_b
    //     0x79f984: ldur            w1, [x2, #0xb]
    // 0x79f988: DecompressPointer r1
    //     0x79f988: add             x1, x1, HEAP, lsl #32
    // 0x79f98c: mov             x2, x1
    // 0x79f990: mov             x1, x0
    // 0x79f994: b               #0x79f9e4
    // 0x79f998: r1 = <void?>
    //     0x79f998: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x79f99c: r0 = _Future()
    //     0x79f99c: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x79f9a0: stur            x0, [fp, #-0x18]
    // 0x79f9a4: StoreField: r0->field_b = rZR
    //     0x79f9a4: stur            xzr, [x0, #0xb]
    // 0x79f9a8: r0 = LoadStaticField(0x3a8)
    //     0x79f9a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x79f9ac: ldr             x0, [x0, #0x750]
    // 0x79f9b0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79f9b4: cmp             w0, w16
    // 0x79f9b8: b.ne            #0x79f9c4
    // 0x79f9bc: r2 = _current
    //     0x79f9bc: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x79f9c0: r0 = InitLateStaticField()
    //     0x79f9c0: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x79f9c4: mov             x1, x0
    // 0x79f9c8: ldur            x0, [fp, #-0x18]
    // 0x79f9cc: StoreField: r0->field_13 = r1
    //     0x79f9cc: stur            w1, [x0, #0x13]
    // 0x79f9d0: mov             x1, x0
    // 0x79f9d4: r2 = Null
    //     0x79f9d4: mov             x2, NULL
    // 0x79f9d8: r0 = call 0x23f18c
    //     0x79f9d8: bl              #0x23f18c
    // 0x79f9dc: ldur            x2, [fp, #-0x18]
    // 0x79f9e0: ldur            x1, [fp, #-0x10]
    // 0x79f9e4: mov             x0, x2
    // 0x79f9e8: stur            x2, [fp, #-0x18]
    // 0x79f9ec: r0 = Await()
    //     0x79f9ec: bl              #0x74ab64  ; AwaitStub
    // 0x79f9f0: ldur            x0, [fp, #-0x10]
    // 0x79f9f4: LoadField: r3 = r0->field_f
    //     0x79f9f4: ldur            w3, [x0, #0xf]
    // 0x79f9f8: DecompressPointer r3
    //     0x79f9f8: add             x3, x3, HEAP, lsl #32
    // 0x79f9fc: stur            x3, [fp, #-0x18]
    // 0x79fa00: LoadField: r1 = r0->field_13
    //     0x79fa00: ldur            w1, [x0, #0x13]
    // 0x79fa04: DecompressPointer r1
    //     0x79fa04: add             x1, x1, HEAP, lsl #32
    // 0x79fa08: LoadField: r2 = r1->field_7
    //     0x79fa08: ldur            x2, [x1, #7]
    // 0x79fa0c: r1 = 1000
    //     0x79fa0c: movz            x1, #0x3e8
    // 0x79fa10: sdiv            x4, x2, x1
    // 0x79fa14: scvtf           d0, x4
    // 0x79fa18: d1 = 1000.000000
    //     0x79fa18: ldr             d1, [PP, #0x6c50]  ; [pp+0x6c50] IMM: double(1000) from 0x408f400000000000
    // 0x79fa1c: fdiv            d2, d0, d1
    // 0x79fa20: r1 = inline_Allocate_Double()
    //     0x79fa20: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x79fa24: add             x1, x1, #0x10
    //     0x79fa28: cmp             x2, x1
    //     0x79fa2c: b.ls            #0x79fb6c
    //     0x79fa30: str             x1, [THR, #0x60]  ; THR::top
    //     0x79fa34: sub             x1, x1, #0xf
    //     0x79fa38: movz            x2, #0xe15c
    //     0x79fa3c: movk            x2, #0x3, lsl #16
    //     0x79fa40: stur            x2, [x1, #-1]
    // 0x79fa44: dmb             ishst
    // 0x79fa48: StoreField: r1->field_7 = d2
    //     0x79fa48: stur            d2, [x1, #7]
    // 0x79fa4c: r2 = 4
    //     0x79fa4c: movz            x2, #0x4
    // 0x79fa50: r0 = call 0x340598
    //     0x79fa50: bl              #0x340598
    // 0x79fa54: r1 = Null
    //     0x79fa54: mov             x1, NULL
    // 0x79fa58: r2 = 6
    //     0x79fa58: movz            x2, #0x6
    // 0x79fa5c: stur            x0, [fp, #-0x20]
    // 0x79fa60: r0 = AllocateArray()
    //     0x79fa60: bl              #0x7de31c  ; AllocateArrayStub
    // 0x79fa64: stur            x0, [fp, #-0x28]
    // 0x79fa68: r16 = "seek"
    //     0x79fa68: ldr             x16, [PP, #0x6c58]  ; [pp+0x6c58] "seek"
    // 0x79fa6c: StoreField: r0->field_f = r16
    //     0x79fa6c: stur            w16, [x0, #0xf]
    // 0x79fa70: ldur            x1, [fp, #-0x20]
    // 0x79fa74: StoreField: r0->field_13 = r1
    //     0x79fa74: stur            w1, [x0, #0x13]
    // 0x79fa78: r16 = "absolute"
    //     0x79fa78: ldr             x16, [PP, #0x6c60]  ; [pp+0x6c60] "absolute"
    // 0x79fa7c: ArrayStore: r0[0] = r16  ; List_4
    //     0x79fa7c: stur            w16, [x0, #0x17]
    // 0x79fa80: r1 = <String>
    //     0x79fa80: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x79fa84: r0 = AllocateGrowableArray()
    //     0x79fa84: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x79fa88: mov             x1, x0
    // 0x79fa8c: ldur            x0, [fp, #-0x28]
    // 0x79fa90: StoreField: r1->field_f = r0
    //     0x79fa90: stur            w0, [x1, #0xf]
    // 0x79fa94: r0 = 6
    //     0x79fa94: movz            x0, #0x6
    // 0x79fa98: StoreField: r1->field_b = r0
    //     0x79fa98: stur            w0, [x1, #0xb]
    // 0x79fa9c: mov             x2, x1
    // 0x79faa0: ldur            x1, [fp, #-0x18]
    // 0x79faa4: r0 = __unknown_function__()
    //     0x79faa4: bl              #0x79a424  ; [] ::__unknown_function__
    // 0x79faa8: mov             x1, x0
    // 0x79faac: stur            x1, [fp, #-0x18]
    // 0x79fab0: r0 = Await()
    //     0x79fab0: bl              #0x74ab64  ; AwaitStub
    // 0x79fab4: ldur            x0, [fp, #-0x10]
    // 0x79fab8: LoadField: r2 = r0->field_f
    //     0x79fab8: ldur            w2, [x0, #0xf]
    // 0x79fabc: DecompressPointer r2
    //     0x79fabc: add             x2, x2, HEAP, lsl #32
    // 0x79fac0: mov             x1, x2
    // 0x79fac4: stur            x2, [fp, #-0x18]
    // 0x79fac8: LoadField: r0 = r1->field_b
    //     0x79fac8: ldur            w0, [x1, #0xb]
    // 0x79facc: DecompressPointer r0
    //     0x79facc: add             x0, x0, HEAP, lsl #32
    // 0x79fad0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x79fad4: cmp             w0, w16
    // 0x79fad8: b.ne            #0x79fae4
    // 0x79fadc: r2 = state
    //     0x79fadc: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x79fae0: r0 = InitLateInstanceField()
    //     0x79fae0: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x79fae4: r16 = false
    //     0x79fae4: add             x16, NULL, #0x30  ; false
    // 0x79fae8: str             x16, [SP]
    // 0x79faec: mov             x1, x0
    // 0x79faf0: r4 = const [0, 0x2, 0x1, 0x1, bdc, 0x1, null]
    //     0x79faf0: ldr             x4, [PP, #0x6c70]  ; [pp+0x6c70] List(7) [0, 0x2, 0x1, 0x1, "bdc", 0x1, Null]
    // 0x79faf4: r0 = call 0x252ef8
    //     0x79faf4: bl              #0x252ef8
    // 0x79faf8: ldur            x1, [fp, #-0x18]
    // 0x79fafc: StoreField: r1->field_b = r0
    //     0x79fafc: stur            w0, [x1, #0xb]
    //     0x79fb00: ldurb           w16, [x1, #-1]
    //     0x79fb04: ldurb           w17, [x0, #-1]
    //     0x79fb08: and             x16, x17, x16, lsr #2
    //     0x79fb0c: tst             x16, HEAP, lsr #32
    //     0x79fb10: b.eq            #0x79fb18
    //     0x79fb14: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x79fb18: ldur            x0, [fp, #-0x10]
    // 0x79fb1c: LoadField: r1 = r0->field_f
    //     0x79fb1c: ldur            w1, [x0, #0xf]
    // 0x79fb20: DecompressPointer r1
    //     0x79fb20: add             x1, x1, HEAP, lsl #32
    // 0x79fb24: LoadField: r0 = r1->field_1b
    //     0x79fb24: ldur            w0, [x1, #0x1b]
    // 0x79fb28: DecompressPointer r0
    //     0x79fb28: add             x0, x0, HEAP, lsl #32
    // 0x79fb2c: LoadField: r1 = r0->field_13
    //     0x79fb2c: ldur            x1, [x0, #0x13]
    // 0x79fb30: tbnz            w1, #2, #0x79fb40
    // 0x79fb34: mov             x1, x0
    // 0x79fb38: r2 = false
    //     0x79fb38: add             x2, NULL, #0x30  ; false
    // 0x79fb3c: r0 = call 0x5ef1e0
    //     0x79fb3c: bl              #0x5ef1e0
    // 0x79fb40: r0 = Null
    //     0x79fb40: mov             x0, NULL
    // 0x79fb44: r0 = ReturnAsyncNotFuture()
    //     0x79fb44: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x79fb48: r0 = na()
    //     0x79fb48: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x79fb4c: mov             x1, x0
    // 0x79fb50: r0 = "[Player] has been disposed"
    //     0x79fb50: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x79fb54: StoreField: r1->field_b = r0
    //     0x79fb54: stur            w0, [x1, #0xb]
    // 0x79fb58: mov             x0, x1
    // 0x79fb5c: r0 = Throw()
    //     0x79fb5c: bl              #0x7dc520  ; ThrowStub
    // 0x79fb60: brk             #0
    // 0x79fb64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x79fb64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x79fb68: b               #0x79f928
    // 0x79fb6c: SaveReg d2
    //     0x79fb6c: str             q2, [SP, #-0x10]!
    // 0x79fb70: stp             x0, x3, [SP, #-0x10]!
    // 0x79fb74: r0 = AllocateDouble()
    //     0x79fb74: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x79fb78: mov             x1, x0
    // 0x79fb7c: ldp             x0, x3, [SP], #0x10
    // 0x79fb80: RestoreReg d2
    //     0x79fb80: ldr             q2, [SP], #0x10
    // 0x79fb84: b               #0x79fa48
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x7b5220, size: 0x230
    // 0x7b5220: EnterFrame
    //     0x7b5220: stp             fp, lr, [SP, #-0x10]!
    //     0x7b5224: mov             fp, SP
    // 0x7b5228: AllocStack(0x30)
    //     0x7b5228: sub             SP, SP, #0x30
    // 0x7b522c: SetupParameters(LJa this /* r1 */)
    //     0x7b522c: stur            NULL, [fp, #-8]
    //     0x7b5230: movz            x0, #0
    //     0x7b5234: add             x1, fp, w0, sxtw #2
    //     0x7b5238: ldr             x1, [x1, #0x10]
    //     0x7b523c: ldur            w2, [x1, #0x17]
    //     0x7b5240: add             x2, x2, HEAP, lsl #32
    //     0x7b5244: stur            x2, [fp, #-0x10]
    // 0x7b5248: CheckStackOverflow
    //     0x7b5248: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b524c: cmp             SP, x16
    //     0x7b5250: b.ls            #0x7b5448
    // 0x7b5254: InitAsync() -> Future<void?>
    //     0x7b5254: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7b5258: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b525c: ldur            x2, [fp, #-0x10]
    // 0x7b5260: LoadField: r0 = r2->field_f
    //     0x7b5260: ldur            w0, [x2, #0xf]
    // 0x7b5264: DecompressPointer r0
    //     0x7b5264: add             x0, x0, HEAP, lsl #32
    // 0x7b5268: LoadField: r1 = r0->field_a3
    //     0x7b5268: ldur            w1, [x0, #0xa3]
    // 0x7b526c: DecompressPointer r1
    //     0x7b526c: add             x1, x1, HEAP, lsl #32
    // 0x7b5270: tbz             w1, #4, #0x7b542c
    // 0x7b5274: LoadField: r1 = r0->field_77
    //     0x7b5274: ldur            w1, [x0, #0x77]
    // 0x7b5278: DecompressPointer r1
    //     0x7b5278: add             x1, x1, HEAP, lsl #32
    // 0x7b527c: LoadField: r3 = r1->field_b
    //     0x7b527c: ldur            w3, [x1, #0xb]
    // 0x7b5280: DecompressPointer r3
    //     0x7b5280: add             x3, x3, HEAP, lsl #32
    // 0x7b5284: mov             x0, x3
    // 0x7b5288: stur            x3, [fp, #-0x18]
    // 0x7b528c: r0 = Await()
    //     0x7b528c: bl              #0x74ab64  ; AwaitStub
    // 0x7b5290: ldur            x2, [fp, #-0x10]
    // 0x7b5294: LoadField: r0 = r2->field_f
    //     0x7b5294: ldur            w0, [x2, #0xf]
    // 0x7b5298: DecompressPointer r0
    //     0x7b5298: add             x0, x0, HEAP, lsl #32
    // 0x7b529c: LoadField: r1 = r0->field_7b
    //     0x7b529c: ldur            w1, [x0, #0x7b]
    // 0x7b52a0: DecompressPointer r1
    //     0x7b52a0: add             x1, x1, HEAP, lsl #32
    // 0x7b52a4: tbnz            w1, #4, #0x7b52c0
    // 0x7b52a8: LoadField: r1 = r0->field_7f
    //     0x7b52a8: ldur            w1, [x0, #0x7f]
    // 0x7b52ac: DecompressPointer r1
    //     0x7b52ac: add             x1, x1, HEAP, lsl #32
    // 0x7b52b0: LoadField: r0 = r1->field_b
    //     0x7b52b0: ldur            w0, [x1, #0xb]
    // 0x7b52b4: DecompressPointer r0
    //     0x7b52b4: add             x0, x0, HEAP, lsl #32
    // 0x7b52b8: mov             x1, x0
    // 0x7b52bc: b               #0x7b530c
    // 0x7b52c0: r1 = <void?>
    //     0x7b52c0: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x7b52c4: r0 = _Future()
    //     0x7b52c4: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x7b52c8: stur            x0, [fp, #-0x18]
    // 0x7b52cc: StoreField: r0->field_b = rZR
    //     0x7b52cc: stur            xzr, [x0, #0xb]
    // 0x7b52d0: r0 = LoadStaticField(0x3a8)
    //     0x7b52d0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b52d4: ldr             x0, [x0, #0x750]
    // 0x7b52d8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b52dc: cmp             w0, w16
    // 0x7b52e0: b.ne            #0x7b52ec
    // 0x7b52e4: r2 = _current
    //     0x7b52e4: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x7b52e8: r0 = InitLateStaticField()
    //     0x7b52e8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7b52ec: mov             x1, x0
    // 0x7b52f0: ldur            x0, [fp, #-0x18]
    // 0x7b52f4: StoreField: r0->field_13 = r1
    //     0x7b52f4: stur            w1, [x0, #0x13]
    // 0x7b52f8: mov             x1, x0
    // 0x7b52fc: r2 = Null
    //     0x7b52fc: mov             x2, NULL
    // 0x7b5300: r0 = call 0x23f18c
    //     0x7b5300: bl              #0x23f18c
    // 0x7b5304: ldur            x1, [fp, #-0x18]
    // 0x7b5308: ldur            x2, [fp, #-0x10]
    // 0x7b530c: mov             x0, x1
    // 0x7b5310: stur            x1, [fp, #-0x18]
    // 0x7b5314: r0 = Await()
    //     0x7b5314: bl              #0x74ab64  ; AwaitStub
    // 0x7b5318: r0 = LoadStaticField(0x115c)
    //     0x7b5318: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b531c: ldr             x0, [x0, #0x22b8]
    // 0x7b5320: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b5324: cmp             w0, w16
    // 0x7b5328: b.ne            #0x7b5334
    // 0x7b532c: r2 = toc
    //     0x7b532c: ldr             x2, [PP, #0x7848]  ; [pp+0x7848] Field <RJa.toc>: static late final (offset: 0x115c)
    // 0x7b5330: r0 = InitLateFinalStaticField()
    //     0x7b5330: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7b5334: mov             x1, x0
    // 0x7b5338: r0 = __unknown_function__()
    //     0x7b5338: bl              #0x7d8dec  ; [] ::__unknown_function__
    // 0x7b533c: mov             x1, x0
    // 0x7b5340: stur            x1, [fp, #-0x18]
    // 0x7b5344: r0 = Await()
    //     0x7b5344: bl              #0x74ab64  ; AwaitStub
    // 0x7b5348: ldur            x2, [fp, #-0x10]
    // 0x7b534c: LoadField: r1 = r2->field_f
    //     0x7b534c: ldur            w1, [x2, #0xf]
    // 0x7b5350: DecompressPointer r1
    //     0x7b5350: add             x1, x1, HEAP, lsl #32
    // 0x7b5354: r16 = false
    //     0x7b5354: add             x16, NULL, #0x30  ; false
    // 0x7b5358: r30 = false
    //     0x7b5358: add             lr, NULL, #0x30  ; false
    // 0x7b535c: stp             lr, x16, [SP]
    // 0x7b5360: r4 = const [0, 0x3, 0x2, 0x1, Tze, 0x2, ccd, 0x1, null]
    //     0x7b5360: add             x4, PP, #0x29, lsl #12  ; [pp+0x29c50] List(9) [0, 0x3, 0x2, 0x1, "Tze", 0x2, "ccd", 0x1, Null]
    //     0x7b5364: ldr             x4, [x4, #0xc50]
    // 0x7b5368: r0 = __unknown_function__()
    //     0x7b5368: bl              #0x7d978c  ; [] ::__unknown_function__
    // 0x7b536c: mov             x1, x0
    // 0x7b5370: stur            x1, [fp, #-0x18]
    // 0x7b5374: r0 = Await()
    //     0x7b5374: bl              #0x74ab64  ; AwaitStub
    // 0x7b5378: ldur            x2, [fp, #-0x10]
    // 0x7b537c: LoadField: r1 = r2->field_f
    //     0x7b537c: ldur            w1, [x2, #0xf]
    // 0x7b5380: DecompressPointer r1
    //     0x7b5380: add             x1, x1, HEAP, lsl #32
    // 0x7b5384: r0 = true
    //     0x7b5384: add             x0, NULL, #0x20  ; true
    // 0x7b5388: StoreField: r1->field_a3 = r0
    //     0x7b5388: stur            w0, [x1, #0xa3]
    // 0x7b538c: r0 = __unknown_function__()
    //     0x7b538c: bl              #0x7cffac  ; [] ::__unknown_function__
    // 0x7b5390: mov             x1, x0
    // 0x7b5394: stur            x1, [fp, #-0x18]
    // 0x7b5398: r0 = Await()
    //     0x7b5398: bl              #0x74ab64  ; AwaitStub
    // 0x7b539c: ldur            x2, [fp, #-0x10]
    // 0x7b53a0: LoadField: r0 = r2->field_f
    //     0x7b53a0: ldur            w0, [x2, #0xf]
    // 0x7b53a4: DecompressPointer r0
    //     0x7b53a4: add             x0, x0, HEAP, lsl #32
    // 0x7b53a8: stur            x0, [fp, #-0x20]
    // 0x7b53ac: LoadField: r1 = r0->field_97
    //     0x7b53ac: ldur            w1, [x0, #0x97]
    // 0x7b53b0: DecompressPointer r1
    //     0x7b53b0: add             x1, x1, HEAP, lsl #32
    // 0x7b53b4: stur            x1, [fp, #-0x18]
    // 0x7b53b8: r3 = LoadStaticField(0x1130)
    //     0x7b53b8: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x7b53bc: ldr             x3, [x3, #0x2260]
    // 0x7b53c0: cmp             w3, NULL
    // 0x7b53c4: b.ne            #0x7b53e8
    // 0x7b53c8: r0 = HJa()
    //     0x7b53c8: bl              #0x7b5688  ; AllocateHJaStub -> HJa (size=0xc)
    // 0x7b53cc: mov             x1, x0
    // 0x7b53d0: ldur            x0, [fp, #-0x18]
    // 0x7b53d4: StoreField: r1->field_7 = r0
    //     0x7b53d4: stur            w0, [x1, #7]
    // 0x7b53d8: mov             x2, x1
    // 0x7b53dc: StoreStaticField(0x1130, r2)
    //     0x7b53dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b53e0: str             x2, [x0, #0x2260]
    // 0x7b53e4: b               #0x7b53ec
    // 0x7b53e8: mov             x1, x3
    // 0x7b53ec: ldur            x0, [fp, #-0x20]
    // 0x7b53f0: LoadField: r2 = r0->field_9b
    //     0x7b53f0: ldur            w2, [x0, #0x9b]
    // 0x7b53f4: DecompressPointer r2
    //     0x7b53f4: add             x2, x2, HEAP, lsl #32
    // 0x7b53f8: r0 = call 0x5b1fac
    //     0x7b53f8: bl              #0x5b1fac
    // 0x7b53fc: ldur            x2, [fp, #-0x10]
    // 0x7b5400: r1 = Function '<anonymous closure>':.
    //     0x7b5400: add             x1, PP, #0x29, lsl #12  ; [pp+0x29c58] AnonymousClosure: (0x5b2ba0), in [kJi] LJa::vjb (0x7b5220)
    //     0x7b5404: ldr             x1, [x1, #0xc58]
    // 0x7b5408: r0 = AllocateClosure()
    //     0x7b5408: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7b540c: str             x0, [SP]
    // 0x7b5410: r1 = <Null?>
    //     0x7b5410: ldr             x1, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    // 0x7b5414: r2 = Instance_la
    //     0x7b5414: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a90] Obj!la@455111
    //     0x7b5418: ldr             x2, [x2, #0xa90]
    // 0x7b541c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7b541c: ldr             x4, [PP, #0x508]  ; [pp+0x508] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7b5420: r0 = call 0x2c5350
    //     0x7b5420: bl              #0x2c5350
    // 0x7b5424: r0 = Null
    //     0x7b5424: mov             x0, NULL
    // 0x7b5428: r0 = ReturnAsyncNotFuture()
    //     0x7b5428: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b542c: r0 = na()
    //     0x7b542c: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x7b5430: mov             x1, x0
    // 0x7b5434: r0 = "[Player] has been disposed"
    //     0x7b5434: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x7b5438: StoreField: r1->field_b = r0
    //     0x7b5438: stur            w0, [x1, #0xb]
    // 0x7b543c: mov             x0, x1
    // 0x7b5440: r0 = Throw()
    //     0x7b5440: bl              #0x7dc520  ; ThrowStub
    // 0x7b5444: brk             #0
    // 0x7b5448: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b5448: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b544c: b               #0x7b5254
  }
  [closure] Future<void> vjb(dynamic) async {
    // ** addr: 0x7d994c, size: 0x848
    // 0x7d994c: EnterFrame
    //     0x7d994c: stp             fp, lr, [SP, #-0x10]!
    //     0x7d9950: mov             fp, SP
    // 0x7d9954: AllocStack(0x88)
    //     0x7d9954: sub             SP, SP, #0x88
    // 0x7d9958: SetupParameters(LJa this /* r1 */)
    //     0x7d9958: stur            NULL, [fp, #-8]
    //     0x7d995c: movz            x0, #0
    //     0x7d9960: add             x1, fp, w0, sxtw #2
    //     0x7d9964: ldr             x1, [x1, #0x10]
    //     0x7d9968: ldur            w2, [x1, #0x17]
    //     0x7d996c: add             x2, x2, HEAP, lsl #32
    //     0x7d9970: stur            x2, [fp, #-0x10]
    // 0x7d9974: CheckStackOverflow
    //     0x7d9974: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d9978: cmp             SP, x16
    //     0x7d997c: b.ls            #0x7da150
    // 0x7d9980: InitAsync() -> Future<void?>
    //     0x7d9980: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7d9984: bl              #0x74ada8  ; InitAsyncStub
    // 0x7d9988: ldur            x1, [fp, #-0x10]
    // 0x7d998c: LoadField: r0 = r1->field_f
    //     0x7d998c: ldur            w0, [x1, #0xf]
    // 0x7d9990: DecompressPointer r0
    //     0x7d9990: add             x0, x0, HEAP, lsl #32
    // 0x7d9994: LoadField: r2 = r0->field_a3
    //     0x7d9994: ldur            w2, [x0, #0xa3]
    // 0x7d9998: DecompressPointer r2
    //     0x7d9998: add             x2, x2, HEAP, lsl #32
    // 0x7d999c: tbz             w2, #4, #0x7da134
    // 0x7d99a0: LoadField: r2 = r0->field_77
    //     0x7d99a0: ldur            w2, [x0, #0x77]
    // 0x7d99a4: DecompressPointer r2
    //     0x7d99a4: add             x2, x2, HEAP, lsl #32
    // 0x7d99a8: LoadField: r3 = r2->field_b
    //     0x7d99a8: ldur            w3, [x2, #0xb]
    // 0x7d99ac: DecompressPointer r3
    //     0x7d99ac: add             x3, x3, HEAP, lsl #32
    // 0x7d99b0: mov             x0, x3
    // 0x7d99b4: stur            x3, [fp, #-0x18]
    // 0x7d99b8: r0 = Await()
    //     0x7d99b8: bl              #0x74ab64  ; AwaitStub
    // 0x7d99bc: ldur            x0, [fp, #-0x10]
    // 0x7d99c0: LoadField: r1 = r0->field_f
    //     0x7d99c0: ldur            w1, [x0, #0xf]
    // 0x7d99c4: DecompressPointer r1
    //     0x7d99c4: add             x1, x1, HEAP, lsl #32
    // 0x7d99c8: LoadField: r2 = r1->field_7b
    //     0x7d99c8: ldur            w2, [x1, #0x7b]
    // 0x7d99cc: DecompressPointer r2
    //     0x7d99cc: add             x2, x2, HEAP, lsl #32
    // 0x7d99d0: tbnz            w2, #4, #0x7d99f0
    // 0x7d99d4: LoadField: r2 = r1->field_7f
    //     0x7d99d4: ldur            w2, [x1, #0x7f]
    // 0x7d99d8: DecompressPointer r2
    //     0x7d99d8: add             x2, x2, HEAP, lsl #32
    // 0x7d99dc: LoadField: r1 = r2->field_b
    //     0x7d99dc: ldur            w1, [x2, #0xb]
    // 0x7d99e0: DecompressPointer r1
    //     0x7d99e0: add             x1, x1, HEAP, lsl #32
    // 0x7d99e4: mov             x2, x1
    // 0x7d99e8: mov             x1, x0
    // 0x7d99ec: b               #0x7d9a3c
    // 0x7d99f0: r1 = <void?>
    //     0x7d99f0: ldr             x1, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x7d99f4: r0 = _Future()
    //     0x7d99f4: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x7d99f8: stur            x0, [fp, #-0x18]
    // 0x7d99fc: StoreField: r0->field_b = rZR
    //     0x7d99fc: stur            xzr, [x0, #0xb]
    // 0x7d9a00: r0 = LoadStaticField(0x3a8)
    //     0x7d9a00: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7d9a04: ldr             x0, [x0, #0x750]
    // 0x7d9a08: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9a0c: cmp             w0, w16
    // 0x7d9a10: b.ne            #0x7d9a1c
    // 0x7d9a14: r2 = _current
    //     0x7d9a14: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x7d9a18: r0 = InitLateStaticField()
    //     0x7d9a18: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7d9a1c: mov             x1, x0
    // 0x7d9a20: ldur            x0, [fp, #-0x18]
    // 0x7d9a24: StoreField: r0->field_13 = r1
    //     0x7d9a24: stur            w1, [x0, #0x13]
    // 0x7d9a28: mov             x1, x0
    // 0x7d9a2c: r2 = Null
    //     0x7d9a2c: mov             x2, NULL
    // 0x7d9a30: r0 = call 0x23f18c
    //     0x7d9a30: bl              #0x23f18c
    // 0x7d9a34: ldur            x2, [fp, #-0x18]
    // 0x7d9a38: ldur            x1, [fp, #-0x10]
    // 0x7d9a3c: mov             x0, x2
    // 0x7d9a40: stur            x2, [fp, #-0x18]
    // 0x7d9a44: r0 = Await()
    //     0x7d9a44: bl              #0x74ab64  ; AwaitStub
    // 0x7d9a48: ldur            x0, [fp, #-0x10]
    // 0x7d9a4c: LoadField: r1 = r0->field_f
    //     0x7d9a4c: ldur            w1, [x0, #0xf]
    // 0x7d9a50: DecompressPointer r1
    //     0x7d9a50: add             x1, x1, HEAP, lsl #32
    // 0x7d9a54: r3 = false
    //     0x7d9a54: add             x3, NULL, #0x30  ; false
    // 0x7d9a58: StoreField: r1->field_a7 = r3
    //     0x7d9a58: stur            w3, [x1, #0xa7]
    // 0x7d9a5c: StoreField: r1->field_ab = r3
    //     0x7d9a5c: stur            w3, [x1, #0xab]
    // 0x7d9a60: StoreField: r1->field_af = r3
    //     0x7d9a60: stur            w3, [x1, #0xaf]
    // 0x7d9a64: r1 = Null
    //     0x7d9a64: mov             x1, NULL
    // 0x7d9a68: r2 = 2
    //     0x7d9a68: movz            x2, #0x2
    // 0x7d9a6c: r0 = AllocateArray()
    //     0x7d9a6c: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7d9a70: stur            x0, [fp, #-0x18]
    // 0x7d9a74: r16 = "stop"
    //     0x7d9a74: add             x16, PP, #0x20, lsl #12  ; [pp+0x20ca0] "stop"
    //     0x7d9a78: ldr             x16, [x16, #0xca0]
    // 0x7d9a7c: StoreField: r0->field_f = r16
    //     0x7d9a7c: stur            w16, [x0, #0xf]
    // 0x7d9a80: r1 = <String>
    //     0x7d9a80: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x7d9a84: r0 = AllocateGrowableArray()
    //     0x7d9a84: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7d9a88: mov             x3, x0
    // 0x7d9a8c: ldur            x0, [fp, #-0x18]
    // 0x7d9a90: stur            x3, [fp, #-0x20]
    // 0x7d9a94: StoreField: r3->field_f = r0
    //     0x7d9a94: stur            w0, [x3, #0xf]
    // 0x7d9a98: r0 = 2
    //     0x7d9a98: movz            x0, #0x2
    // 0x7d9a9c: StoreField: r3->field_b = r0
    //     0x7d9a9c: stur            w0, [x3, #0xb]
    // 0x7d9aa0: mov             x2, x0
    // 0x7d9aa4: r1 = Null
    //     0x7d9aa4: mov             x1, NULL
    // 0x7d9aa8: r0 = AllocateArray()
    //     0x7d9aa8: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7d9aac: stur            x0, [fp, #-0x18]
    // 0x7d9ab0: r16 = "playlist-clear"
    //     0x7d9ab0: add             x16, PP, #0x20, lsl #12  ; [pp+0x20ca8] "playlist-clear"
    //     0x7d9ab4: ldr             x16, [x16, #0xca8]
    // 0x7d9ab8: StoreField: r0->field_f = r16
    //     0x7d9ab8: stur            w16, [x0, #0xf]
    // 0x7d9abc: r1 = <String>
    //     0x7d9abc: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x7d9ac0: r0 = AllocateGrowableArray()
    //     0x7d9ac0: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7d9ac4: mov             x3, x0
    // 0x7d9ac8: ldur            x0, [fp, #-0x18]
    // 0x7d9acc: stur            x3, [fp, #-0x28]
    // 0x7d9ad0: StoreField: r3->field_f = r0
    //     0x7d9ad0: stur            w0, [x3, #0xf]
    // 0x7d9ad4: r0 = 2
    //     0x7d9ad4: movz            x0, #0x2
    // 0x7d9ad8: StoreField: r3->field_b = r0
    //     0x7d9ad8: stur            w0, [x3, #0xb]
    // 0x7d9adc: r1 = Null
    //     0x7d9adc: mov             x1, NULL
    // 0x7d9ae0: r2 = 4
    //     0x7d9ae0: movz            x2, #0x4
    // 0x7d9ae4: r0 = AllocateArray()
    //     0x7d9ae4: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7d9ae8: stur            x0, [fp, #-0x18]
    // 0x7d9aec: r16 = "playlist-play-index"
    //     0x7d9aec: add             x16, PP, #0x20, lsl #12  ; [pp+0x20cb0] "playlist-play-index"
    //     0x7d9af0: ldr             x16, [x16, #0xcb0]
    // 0x7d9af4: StoreField: r0->field_f = r16
    //     0x7d9af4: stur            w16, [x0, #0xf]
    // 0x7d9af8: r16 = "none"
    //     0x7d9af8: ldr             x16, [PP, #0x6bd8]  ; [pp+0x6bd8] "none"
    // 0x7d9afc: StoreField: r0->field_13 = r16
    //     0x7d9afc: stur            w16, [x0, #0x13]
    // 0x7d9b00: r1 = <String>
    //     0x7d9b00: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x7d9b04: r0 = AllocateGrowableArray()
    //     0x7d9b04: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7d9b08: mov             x3, x0
    // 0x7d9b0c: ldur            x0, [fp, #-0x18]
    // 0x7d9b10: stur            x3, [fp, #-0x30]
    // 0x7d9b14: StoreField: r3->field_f = r0
    //     0x7d9b14: stur            w0, [x3, #0xf]
    // 0x7d9b18: r0 = 4
    //     0x7d9b18: movz            x0, #0x4
    // 0x7d9b1c: StoreField: r3->field_b = r0
    //     0x7d9b1c: stur            w0, [x3, #0xb]
    // 0x7d9b20: r1 = Null
    //     0x7d9b20: mov             x1, NULL
    // 0x7d9b24: r2 = 6
    //     0x7d9b24: movz            x2, #0x6
    // 0x7d9b28: r0 = AllocateArray()
    //     0x7d9b28: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7d9b2c: mov             x3, x0
    // 0x7d9b30: ldur            x0, [fp, #-0x20]
    // 0x7d9b34: stur            x3, [fp, #-0x40]
    // 0x7d9b38: StoreField: r3->field_f = r0
    //     0x7d9b38: stur            w0, [x3, #0xf]
    // 0x7d9b3c: ldur            x0, [fp, #-0x28]
    // 0x7d9b40: StoreField: r3->field_13 = r0
    //     0x7d9b40: stur            w0, [x3, #0x13]
    // 0x7d9b44: ldur            x0, [fp, #-0x30]
    // 0x7d9b48: ArrayStore: r3[0] = r0  ; List_4
    //     0x7d9b48: stur            w0, [x3, #0x17]
    // 0x7d9b4c: r0 = 0
    //     0x7d9b4c: movz            x0, #0
    // 0x7d9b50: ldur            x4, [fp, #-0x10]
    // 0x7d9b54: CheckStackOverflow
    //     0x7d9b54: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d9b58: cmp             SP, x16
    //     0x7d9b5c: b.ls            #0x7da158
    // 0x7d9b60: cmp             x0, #3
    // 0x7d9b64: b.ge            #0x7d9bd4
    // 0x7d9b68: ArrayLoad: r5 = r3[r0]  ; Unknown_4
    //     0x7d9b68: add             x16, x3, x0, lsl #2
    //     0x7d9b6c: ldur            w5, [x16, #0xf]
    // 0x7d9b70: DecompressPointer r5
    //     0x7d9b70: add             x5, x5, HEAP, lsl #32
    // 0x7d9b74: stur            x5, [fp, #-0x18]
    // 0x7d9b78: add             x6, x0, #1
    // 0x7d9b7c: stur            x6, [fp, #-0x38]
    // 0x7d9b80: cmp             w5, NULL
    // 0x7d9b84: b.ne            #0x7d9ba8
    // 0x7d9b88: mov             x0, x5
    // 0x7d9b8c: r2 = Null
    //     0x7d9b8c: mov             x2, NULL
    // 0x7d9b90: r1 = Null
    //     0x7d9b90: mov             x1, NULL
    // 0x7d9b94: r8 = List<String>
    //     0x7d9b94: add             x8, PP, #0xb, lsl #12  ; [pp+0xb700] Type: List<String>
    //     0x7d9b98: ldr             x8, [x8, #0x700]
    // 0x7d9b9c: r3 = Null
    //     0x7d9b9c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20cb8] Null
    //     0x7d9ba0: ldr             x3, [x3, #0xcb8]
    // 0x7d9ba4: r0 = List<String>()
    //     0x7d9ba4: bl              #0x747900  ; IsType_List<String>_Stub
    // 0x7d9ba8: ldur            x0, [fp, #-0x10]
    // 0x7d9bac: LoadField: r1 = r0->field_f
    //     0x7d9bac: ldur            w1, [x0, #0xf]
    // 0x7d9bb0: DecompressPointer r1
    //     0x7d9bb0: add             x1, x1, HEAP, lsl #32
    // 0x7d9bb4: ldur            x2, [fp, #-0x18]
    // 0x7d9bb8: r0 = __unknown_function__()
    //     0x7d9bb8: bl              #0x79a424  ; [] ::__unknown_function__
    // 0x7d9bbc: mov             x1, x0
    // 0x7d9bc0: stur            x1, [fp, #-0x20]
    // 0x7d9bc4: r0 = Await()
    //     0x7d9bc4: bl              #0x74ab64  ; AwaitStub
    // 0x7d9bc8: ldur            x0, [fp, #-0x38]
    // 0x7d9bcc: ldur            x3, [fp, #-0x40]
    // 0x7d9bd0: b               #0x7d9b50
    // 0x7d9bd4: mov             x0, x4
    // 0x7d9bd8: LoadField: r1 = r0->field_f
    //     0x7d9bd8: ldur            w1, [x0, #0xf]
    // 0x7d9bdc: DecompressPointer r1
    //     0x7d9bdc: add             x1, x1, HEAP, lsl #32
    // 0x7d9be0: stur            x1, [fp, #-0x18]
    // 0x7d9be4: r0 = vJa()
    //     0x7d9be4: bl              #0x74e074  ; AllocatevJaStub -> vJa (size=0x74)
    // 0x7d9be8: mov             x2, x0
    // 0x7d9bec: r0 = Instance_xJa
    //     0x7d9bec: ldr             x0, [PP, #0x6c80]  ; [pp+0x6c80] Obj!xJa@440c81
    // 0x7d9bf0: stur            x2, [fp, #-0x20]
    // 0x7d9bf4: StoreField: r2->field_7 = r0
    //     0x7d9bf4: stur            w0, [x2, #7]
    // 0x7d9bf8: r0 = false
    //     0x7d9bf8: add             x0, NULL, #0x30  ; false
    // 0x7d9bfc: StoreField: r2->field_b = r0
    //     0x7d9bfc: stur            w0, [x2, #0xb]
    // 0x7d9c00: StoreField: r2->field_f = r0
    //     0x7d9c00: stur            w0, [x2, #0xf]
    // 0x7d9c04: r3 = Instance_la
    //     0x7d9c04: ldr             x3, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x7d9c08: StoreField: r2->field_13 = r3
    //     0x7d9c08: stur            w3, [x2, #0x13]
    // 0x7d9c0c: ArrayStore: r2[0] = r3  ; List_4
    //     0x7d9c0c: stur            w3, [x2, #0x17]
    // 0x7d9c10: d0 = 100.000000
    //     0x7d9c10: ldr             d0, [PP, #0x6c88]  ; [pp+0x6c88] IMM: double(100) from 0x4059000000000000
    // 0x7d9c14: StoreField: r2->field_1b = d0
    //     0x7d9c14: stur            d0, [x2, #0x1b]
    // 0x7d9c18: d0 = 1.000000
    //     0x7d9c18: fmov            d0, #1.00000000
    // 0x7d9c1c: StoreField: r2->field_23 = d0
    //     0x7d9c1c: stur            d0, [x2, #0x23]
    // 0x7d9c20: StoreField: r2->field_2b = d0
    //     0x7d9c20: stur            d0, [x2, #0x2b]
    // 0x7d9c24: StoreField: r2->field_33 = r0
    //     0x7d9c24: stur            w0, [x2, #0x33]
    // 0x7d9c28: StoreField: r2->field_37 = r3
    //     0x7d9c28: stur            w3, [x2, #0x37]
    // 0x7d9c2c: StoreField: r2->field_3b = rZR
    //     0x7d9c2c: stur            xzr, [x2, #0x3b]
    // 0x7d9c30: r1 = Instance_yJa
    //     0x7d9c30: ldr             x1, [PP, #0x6c90]  ; [pp+0x6c90] Obj!yJa@450151
    // 0x7d9c34: StoreField: r2->field_43 = r1
    //     0x7d9c34: stur            w1, [x2, #0x43]
    // 0x7d9c38: StoreField: r2->field_47 = r0
    //     0x7d9c38: stur            w0, [x2, #0x47]
    // 0x7d9c3c: r1 = Instance_pJa
    //     0x7d9c3c: ldr             x1, [PP, #0x6c98]  ; [pp+0x6c98] Obj!pJa@440ca1
    // 0x7d9c40: StoreField: r2->field_4b = r1
    //     0x7d9c40: stur            w1, [x2, #0x4b]
    // 0x7d9c44: r4 = Instance_FJa
    //     0x7d9c44: ldr             x4, [PP, #0x6ca0]  ; [pp+0x6ca0] Obj!FJa@4409c1
    // 0x7d9c48: StoreField: r2->field_4f = r4
    //     0x7d9c48: stur            w4, [x2, #0x4f]
    // 0x7d9c4c: r1 = Instance_oJa
    //     0x7d9c4c: ldr             x1, [PP, #0x6ca8]  ; [pp+0x6ca8] Obj!oJa@440cc1
    // 0x7d9c50: StoreField: r2->field_57 = r1
    //     0x7d9c50: stur            w1, [x2, #0x57]
    // 0x7d9c54: r1 = const [Instance of 'oJa']
    //     0x7d9c54: ldr             x1, [PP, #0x6cb0]  ; [pp+0x6cb0] List<oJa>(1)
    // 0x7d9c58: StoreField: r2->field_5b = r1
    //     0x7d9c58: stur            w1, [x2, #0x5b]
    // 0x7d9c5c: r1 = Instance_DJa
    //     0x7d9c5c: ldr             x1, [PP, #0x6cb8]  ; [pp+0x6cb8] Obj!DJa@440a41
    // 0x7d9c60: StoreField: r2->field_5f = r1
    //     0x7d9c60: stur            w1, [x2, #0x5f]
    // 0x7d9c64: r1 = Instance_EJa
    //     0x7d9c64: ldr             x1, [PP, #0x6cc0]  ; [pp+0x6cc0] Obj!EJa@440a21
    // 0x7d9c68: StoreField: r2->field_63 = r1
    //     0x7d9c68: stur            w1, [x2, #0x63]
    // 0x7d9c6c: r1 = const [, ]
    //     0x7d9c6c: ldr             x1, [PP, #0x6cc8]  ; [pp+0x6cc8] List<String>(2)
    // 0x7d9c70: StoreField: r2->field_6f = r1
    //     0x7d9c70: stur            w1, [x2, #0x6f]
    // 0x7d9c74: ldur            x1, [fp, #-0x18]
    // 0x7d9c78: LoadField: r0 = r1->field_b
    //     0x7d9c78: ldur            w0, [x1, #0xb]
    // 0x7d9c7c: DecompressPointer r0
    //     0x7d9c7c: add             x0, x0, HEAP, lsl #32
    // 0x7d9c80: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9c84: cmp             w0, w16
    // 0x7d9c88: b.ne            #0x7d9c94
    // 0x7d9c8c: r2 = state
    //     0x7d9c8c: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9c90: r0 = InitLateInstanceField()
    //     0x7d9c90: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9c94: LoadField: d0 = r0->field_1b
    //     0x7d9c94: ldur            d0, [x0, #0x1b]
    // 0x7d9c98: ldur            x0, [fp, #-0x10]
    // 0x7d9c9c: stur            d0, [fp, #-0x48]
    // 0x7d9ca0: LoadField: r1 = r0->field_f
    //     0x7d9ca0: ldur            w1, [x0, #0xf]
    // 0x7d9ca4: DecompressPointer r1
    //     0x7d9ca4: add             x1, x1, HEAP, lsl #32
    // 0x7d9ca8: LoadField: r0 = r1->field_b
    //     0x7d9ca8: ldur            w0, [x1, #0xb]
    // 0x7d9cac: DecompressPointer r0
    //     0x7d9cac: add             x0, x0, HEAP, lsl #32
    // 0x7d9cb0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9cb4: cmp             w0, w16
    // 0x7d9cb8: b.ne            #0x7d9cc4
    // 0x7d9cbc: r2 = state
    //     0x7d9cbc: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9cc0: r0 = InitLateInstanceField()
    //     0x7d9cc0: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9cc4: LoadField: d0 = r0->field_23
    //     0x7d9cc4: ldur            d0, [x0, #0x23]
    // 0x7d9cc8: ldur            x0, [fp, #-0x10]
    // 0x7d9ccc: stur            d0, [fp, #-0x50]
    // 0x7d9cd0: LoadField: r1 = r0->field_f
    //     0x7d9cd0: ldur            w1, [x0, #0xf]
    // 0x7d9cd4: DecompressPointer r1
    //     0x7d9cd4: add             x1, x1, HEAP, lsl #32
    // 0x7d9cd8: LoadField: r0 = r1->field_b
    //     0x7d9cd8: ldur            w0, [x1, #0xb]
    // 0x7d9cdc: DecompressPointer r0
    //     0x7d9cdc: add             x0, x0, HEAP, lsl #32
    // 0x7d9ce0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9ce4: cmp             w0, w16
    // 0x7d9ce8: b.ne            #0x7d9cf4
    // 0x7d9cec: r2 = state
    //     0x7d9cec: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9cf0: r0 = InitLateInstanceField()
    //     0x7d9cf0: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9cf4: ldur            x0, [fp, #-0x10]
    // 0x7d9cf8: LoadField: r1 = r0->field_f
    //     0x7d9cf8: ldur            w1, [x0, #0xf]
    // 0x7d9cfc: DecompressPointer r1
    //     0x7d9cfc: add             x1, x1, HEAP, lsl #32
    // 0x7d9d00: LoadField: r0 = r1->field_b
    //     0x7d9d00: ldur            w0, [x1, #0xb]
    // 0x7d9d04: DecompressPointer r0
    //     0x7d9d04: add             x0, x0, HEAP, lsl #32
    // 0x7d9d08: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9d0c: cmp             w0, w16
    // 0x7d9d10: b.ne            #0x7d9d1c
    // 0x7d9d14: r2 = state
    //     0x7d9d14: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9d18: r0 = InitLateInstanceField()
    //     0x7d9d18: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9d1c: ldur            x0, [fp, #-0x10]
    // 0x7d9d20: LoadField: r1 = r0->field_f
    //     0x7d9d20: ldur            w1, [x0, #0xf]
    // 0x7d9d24: DecompressPointer r1
    //     0x7d9d24: add             x1, x1, HEAP, lsl #32
    // 0x7d9d28: LoadField: r0 = r1->field_b
    //     0x7d9d28: ldur            w0, [x1, #0xb]
    // 0x7d9d2c: DecompressPointer r0
    //     0x7d9d2c: add             x0, x0, HEAP, lsl #32
    // 0x7d9d30: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9d34: cmp             w0, w16
    // 0x7d9d38: b.ne            #0x7d9d44
    // 0x7d9d3c: r2 = state
    //     0x7d9d3c: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9d40: r0 = InitLateInstanceField()
    //     0x7d9d40: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9d44: LoadField: r2 = r0->field_57
    //     0x7d9d44: ldur            w2, [x0, #0x57]
    // 0x7d9d48: DecompressPointer r2
    //     0x7d9d48: add             x2, x2, HEAP, lsl #32
    // 0x7d9d4c: ldur            x0, [fp, #-0x10]
    // 0x7d9d50: stur            x2, [fp, #-0x28]
    // 0x7d9d54: LoadField: r1 = r0->field_f
    //     0x7d9d54: ldur            w1, [x0, #0xf]
    // 0x7d9d58: DecompressPointer r1
    //     0x7d9d58: add             x1, x1, HEAP, lsl #32
    // 0x7d9d5c: LoadField: r0 = r1->field_b
    //     0x7d9d5c: ldur            w0, [x1, #0xb]
    // 0x7d9d60: DecompressPointer r0
    //     0x7d9d60: add             x0, x0, HEAP, lsl #32
    // 0x7d9d64: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7d9d68: cmp             w0, w16
    // 0x7d9d6c: b.ne            #0x7d9d78
    // 0x7d9d70: r2 = state
    //     0x7d9d70: ldr             x2, [PP, #0x6c68]  ; [pp+0x6c68] Field <MJa.state>: late (offset: 0xc)
    // 0x7d9d74: r0 = InitLateInstanceField()
    //     0x7d9d74: bl              #0x7dc33c  ; InitLateInstanceFieldStub
    // 0x7d9d78: LoadField: r1 = r0->field_5b
    //     0x7d9d78: ldur            w1, [x0, #0x5b]
    // 0x7d9d7c: DecompressPointer r1
    //     0x7d9d7c: add             x1, x1, HEAP, lsl #32
    // 0x7d9d80: ldur            d0, [fp, #-0x48]
    // 0x7d9d84: r0 = inline_Allocate_Double()
    //     0x7d9d84: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x7d9d88: add             x0, x0, #0x10
    //     0x7d9d8c: cmp             x2, x0
    //     0x7d9d90: b.ls            #0x7da160
    //     0x7d9d94: str             x0, [THR, #0x60]  ; THR::top
    //     0x7d9d98: sub             x0, x0, #0xf
    //     0x7d9d9c: movz            x2, #0xe15c
    //     0x7d9da0: movk            x2, #0x3, lsl #16
    //     0x7d9da4: stur            x2, [x0, #-1]
    // 0x7d9da8: dmb             ishst
    // 0x7d9dac: StoreField: r0->field_7 = d0
    //     0x7d9dac: stur            d0, [x0, #7]
    // 0x7d9db0: ldur            d0, [fp, #-0x50]
    // 0x7d9db4: r2 = inline_Allocate_Double()
    //     0x7d9db4: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x7d9db8: add             x2, x2, #0x10
    //     0x7d9dbc: cmp             x3, x2
    //     0x7d9dc0: b.ls            #0x7da178
    //     0x7d9dc4: str             x2, [THR, #0x60]  ; THR::top
    //     0x7d9dc8: sub             x2, x2, #0xf
    //     0x7d9dcc: movz            x3, #0xe15c
    //     0x7d9dd0: movk            x3, #0x3, lsl #16
    //     0x7d9dd4: stur            x3, [x2, #-1]
    // 0x7d9dd8: dmb             ishst
    // 0x7d9ddc: StoreField: r2->field_7 = d0
    //     0x7d9ddc: stur            d0, [x2, #7]
    // 0x7d9de0: stp             x2, x0, [SP, #0x28]
    // 0x7d9de4: r16 = 1.000000
    //     0x7d9de4: ldr             x16, [PP, #0x44c8]  ; [pp+0x44c8] 1
    // 0x7d9de8: r30 = Instance_yJa
    //     0x7d9de8: ldr             lr, [PP, #0x6c90]  ; [pp+0x6c90] Obj!yJa@450151
    // 0x7d9dec: stp             lr, x16, [SP, #0x18]
    // 0x7d9df0: r16 = false
    //     0x7d9df0: add             x16, NULL, #0x30  ; false
    // 0x7d9df4: ldur            lr, [fp, #-0x28]
    // 0x7d9df8: stp             lr, x16, [SP, #8]
    // 0x7d9dfc: str             x1, [SP]
    // 0x7d9e00: ldur            x1, [fp, #-0x20]
    // 0x7d9e04: r4 = const [0, 0x8, 0x7, 0x1, CQf, 0x3, EQf, 0x4, IQf, 0x6, JQf, 0x7, YPf, 0x2, ZHe, 0x1, shuffle, 0x5, null]
    //     0x7d9e04: add             x4, PP, #0x20, lsl #12  ; [pp+0x20cc8] List(19) [0, 0x8, 0x7, 0x1, "CQf", 0x3, "EQf", 0x4, "IQf", 0x6, "JQf", 0x7, "YPf", 0x2, "ZHe", 0x1, "shuffle", 0x5, Null]
    //     0x7d9e08: ldr             x4, [x4, #0xcc8]
    // 0x7d9e0c: r0 = call 0x252ef8
    //     0x7d9e0c: bl              #0x252ef8
    // 0x7d9e10: ldur            x1, [fp, #-0x18]
    // 0x7d9e14: StoreField: r1->field_b = r0
    //     0x7d9e14: stur            w0, [x1, #0xb]
    //     0x7d9e18: ldurb           w16, [x1, #-1]
    //     0x7d9e1c: ldurb           w17, [x0, #-1]
    //     0x7d9e20: and             x16, x17, x16, lsr #2
    //     0x7d9e24: tst             x16, HEAP, lsr #32
    //     0x7d9e28: b.eq            #0x7d9e30
    //     0x7d9e2c: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7d9e30: ldur            x0, [fp, #-0x10]
    // 0x7d9e34: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7d9e34: ldur            w1, [x0, #0x17]
    // 0x7d9e38: DecompressPointer r1
    //     0x7d9e38: add             x1, x1, HEAP, lsl #32
    // 0x7d9e3c: tbnz            w1, #4, #0x7da12c
    // 0x7d9e40: LoadField: r1 = r0->field_13
    //     0x7d9e40: ldur            w1, [x0, #0x13]
    // 0x7d9e44: DecompressPointer r1
    //     0x7d9e44: add             x1, x1, HEAP, lsl #32
    // 0x7d9e48: tbz             w1, #4, #0x7d9e98
    // 0x7d9e4c: LoadField: r1 = r0->field_f
    //     0x7d9e4c: ldur            w1, [x0, #0xf]
    // 0x7d9e50: DecompressPointer r1
    //     0x7d9e50: add             x1, x1, HEAP, lsl #32
    // 0x7d9e54: LoadField: r3 = r1->field_13
    //     0x7d9e54: ldur            w3, [x1, #0x13]
    // 0x7d9e58: DecompressPointer r3
    //     0x7d9e58: add             x3, x3, HEAP, lsl #32
    // 0x7d9e5c: stur            x3, [fp, #-0x18]
    // 0x7d9e60: LoadField: r1 = r3->field_13
    //     0x7d9e60: ldur            x1, [x3, #0x13]
    // 0x7d9e64: tbnz            w1, #2, #0x7d9e98
    // 0x7d9e68: r1 = <qJa>
    //     0x7d9e68: ldr             x1, [PP, #0x75d0]  ; [pp+0x75d0] TypeArguments: <qJa>
    // 0x7d9e6c: r2 = 0
    //     0x7d9e6c: movz            x2, #0
    // 0x7d9e70: r0 = call 0x2273c0
    //     0x7d9e70: bl              #0x2273c0
    // 0x7d9e74: stur            x0, [fp, #-0x20]
    // 0x7d9e78: r0 = xJa()
    //     0x7d9e78: bl              #0x79ad40  ; AllocatexJaStub -> xJa (size=0x14)
    // 0x7d9e7c: mov             x1, x0
    // 0x7d9e80: ldur            x0, [fp, #-0x20]
    // 0x7d9e84: StoreField: r1->field_7 = r0
    //     0x7d9e84: stur            w0, [x1, #7]
    // 0x7d9e88: StoreField: r1->field_b = rZR
    //     0x7d9e88: stur            xzr, [x1, #0xb]
    // 0x7d9e8c: mov             x2, x1
    // 0x7d9e90: ldur            x1, [fp, #-0x18]
    // 0x7d9e94: r0 = call 0x5ef1e0
    //     0x7d9e94: bl              #0x5ef1e0
    // 0x7d9e98: ldur            x0, [fp, #-0x10]
    // 0x7d9e9c: LoadField: r1 = r0->field_f
    //     0x7d9e9c: ldur            w1, [x0, #0xf]
    // 0x7d9ea0: DecompressPointer r1
    //     0x7d9ea0: add             x1, x1, HEAP, lsl #32
    // 0x7d9ea4: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7d9ea4: ldur            w2, [x1, #0x17]
    // 0x7d9ea8: DecompressPointer r2
    //     0x7d9ea8: add             x2, x2, HEAP, lsl #32
    // 0x7d9eac: LoadField: r1 = r2->field_13
    //     0x7d9eac: ldur            x1, [x2, #0x13]
    // 0x7d9eb0: tbnz            w1, #2, #0x7d9ec0
    // 0x7d9eb4: mov             x1, x2
    // 0x7d9eb8: r2 = false
    //     0x7d9eb8: add             x2, NULL, #0x30  ; false
    // 0x7d9ebc: r0 = call 0x5ef1e0
    //     0x7d9ebc: bl              #0x5ef1e0
    // 0x7d9ec0: ldur            x0, [fp, #-0x10]
    // 0x7d9ec4: LoadField: r1 = r0->field_f
    //     0x7d9ec4: ldur            w1, [x0, #0xf]
    // 0x7d9ec8: DecompressPointer r1
    //     0x7d9ec8: add             x1, x1, HEAP, lsl #32
    // 0x7d9ecc: LoadField: r2 = r1->field_1b
    //     0x7d9ecc: ldur            w2, [x1, #0x1b]
    // 0x7d9ed0: DecompressPointer r2
    //     0x7d9ed0: add             x2, x2, HEAP, lsl #32
    // 0x7d9ed4: LoadField: r1 = r2->field_13
    //     0x7d9ed4: ldur            x1, [x2, #0x13]
    // 0x7d9ed8: tbnz            w1, #2, #0x7d9ee8
    // 0x7d9edc: mov             x1, x2
    // 0x7d9ee0: r2 = false
    //     0x7d9ee0: add             x2, NULL, #0x30  ; false
    // 0x7d9ee4: r0 = call 0x5ef1e0
    //     0x7d9ee4: bl              #0x5ef1e0
    // 0x7d9ee8: ldur            x0, [fp, #-0x10]
    // 0x7d9eec: LoadField: r1 = r0->field_f
    //     0x7d9eec: ldur            w1, [x0, #0xf]
    // 0x7d9ef0: DecompressPointer r1
    //     0x7d9ef0: add             x1, x1, HEAP, lsl #32
    // 0x7d9ef4: LoadField: r2 = r1->field_1f
    //     0x7d9ef4: ldur            w2, [x1, #0x1f]
    // 0x7d9ef8: DecompressPointer r2
    //     0x7d9ef8: add             x2, x2, HEAP, lsl #32
    // 0x7d9efc: LoadField: r1 = r2->field_13
    //     0x7d9efc: ldur            x1, [x2, #0x13]
    // 0x7d9f00: tbnz            w1, #2, #0x7d9f10
    // 0x7d9f04: mov             x1, x2
    // 0x7d9f08: r2 = Instance_la
    //     0x7d9f08: ldr             x2, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x7d9f0c: r0 = call 0x5ef1e0
    //     0x7d9f0c: bl              #0x5ef1e0
    // 0x7d9f10: ldur            x0, [fp, #-0x10]
    // 0x7d9f14: LoadField: r1 = r0->field_f
    //     0x7d9f14: ldur            w1, [x0, #0xf]
    // 0x7d9f18: DecompressPointer r1
    //     0x7d9f18: add             x1, x1, HEAP, lsl #32
    // 0x7d9f1c: LoadField: r2 = r1->field_23
    //     0x7d9f1c: ldur            w2, [x1, #0x23]
    // 0x7d9f20: DecompressPointer r2
    //     0x7d9f20: add             x2, x2, HEAP, lsl #32
    // 0x7d9f24: LoadField: r1 = r2->field_13
    //     0x7d9f24: ldur            x1, [x2, #0x13]
    // 0x7d9f28: tbnz            w1, #2, #0x7d9f38
    // 0x7d9f2c: mov             x1, x2
    // 0x7d9f30: r2 = Instance_la
    //     0x7d9f30: ldr             x2, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x7d9f34: r0 = call 0x5ef1e0
    //     0x7d9f34: bl              #0x5ef1e0
    // 0x7d9f38: ldur            x0, [fp, #-0x10]
    // 0x7d9f3c: LoadField: r1 = r0->field_f
    //     0x7d9f3c: ldur            w1, [x0, #0xf]
    // 0x7d9f40: DecompressPointer r1
    //     0x7d9f40: add             x1, x1, HEAP, lsl #32
    // 0x7d9f44: LoadField: r2 = r1->field_33
    //     0x7d9f44: ldur            w2, [x1, #0x33]
    // 0x7d9f48: DecompressPointer r2
    //     0x7d9f48: add             x2, x2, HEAP, lsl #32
    // 0x7d9f4c: LoadField: r1 = r2->field_13
    //     0x7d9f4c: ldur            x1, [x2, #0x13]
    // 0x7d9f50: tbnz            w1, #2, #0x7d9f60
    // 0x7d9f54: mov             x1, x2
    // 0x7d9f58: r2 = false
    //     0x7d9f58: add             x2, NULL, #0x30  ; false
    // 0x7d9f5c: r0 = call 0x5ef1e0
    //     0x7d9f5c: bl              #0x5ef1e0
    // 0x7d9f60: ldur            x0, [fp, #-0x10]
    // 0x7d9f64: LoadField: r1 = r0->field_f
    //     0x7d9f64: ldur            w1, [x0, #0xf]
    // 0x7d9f68: DecompressPointer r1
    //     0x7d9f68: add             x1, x1, HEAP, lsl #32
    // 0x7d9f6c: LoadField: r2 = r1->field_3b
    //     0x7d9f6c: ldur            w2, [x1, #0x3b]
    // 0x7d9f70: DecompressPointer r2
    //     0x7d9f70: add             x2, x2, HEAP, lsl #32
    // 0x7d9f74: LoadField: r1 = r2->field_13
    //     0x7d9f74: ldur            x1, [x2, #0x13]
    // 0x7d9f78: tbnz            w1, #2, #0x7d9f88
    // 0x7d9f7c: mov             x1, x2
    // 0x7d9f80: r2 = Instance_la
    //     0x7d9f80: ldr             x2, [PP, #0x12d8]  ; [pp+0x12d8] Obj!la@455011
    // 0x7d9f84: r0 = call 0x5ef1e0
    //     0x7d9f84: bl              #0x5ef1e0
    // 0x7d9f88: ldur            x0, [fp, #-0x10]
    // 0x7d9f8c: LoadField: r1 = r0->field_f
    //     0x7d9f8c: ldur            w1, [x0, #0xf]
    // 0x7d9f90: DecompressPointer r1
    //     0x7d9f90: add             x1, x1, HEAP, lsl #32
    // 0x7d9f94: LoadField: r2 = r1->field_43
    //     0x7d9f94: ldur            w2, [x1, #0x43]
    // 0x7d9f98: DecompressPointer r2
    //     0x7d9f98: add             x2, x2, HEAP, lsl #32
    // 0x7d9f9c: LoadField: r1 = r2->field_13
    //     0x7d9f9c: ldur            x1, [x2, #0x13]
    // 0x7d9fa0: tbnz            w1, #2, #0x7d9fb0
    // 0x7d9fa4: mov             x1, x2
    // 0x7d9fa8: r2 = false
    //     0x7d9fa8: add             x2, NULL, #0x30  ; false
    // 0x7d9fac: r0 = call 0x5ef1e0
    //     0x7d9fac: bl              #0x5ef1e0
    // 0x7d9fb0: ldur            x0, [fp, #-0x10]
    // 0x7d9fb4: LoadField: r1 = r0->field_f
    //     0x7d9fb4: ldur            w1, [x0, #0xf]
    // 0x7d9fb8: DecompressPointer r1
    //     0x7d9fb8: add             x1, x1, HEAP, lsl #32
    // 0x7d9fbc: LoadField: r2 = r1->field_53
    //     0x7d9fbc: ldur            w2, [x1, #0x53]
    // 0x7d9fc0: DecompressPointer r2
    //     0x7d9fc0: add             x2, x2, HEAP, lsl #32
    // 0x7d9fc4: LoadField: r1 = r2->field_13
    //     0x7d9fc4: ldur            x1, [x2, #0x13]
    // 0x7d9fc8: tbnz            w1, #2, #0x7d9fd8
    // 0x7d9fcc: mov             x1, x2
    // 0x7d9fd0: r2 = Instance_FJa
    //     0x7d9fd0: ldr             x2, [PP, #0x6ca0]  ; [pp+0x6ca0] Obj!FJa@4409c1
    // 0x7d9fd4: r0 = call 0x5ef1e0
    //     0x7d9fd4: bl              #0x5ef1e0
    // 0x7d9fd8: ldur            x0, [fp, #-0x10]
    // 0x7d9fdc: LoadField: r1 = r0->field_f
    //     0x7d9fdc: ldur            w1, [x0, #0xf]
    // 0x7d9fe0: DecompressPointer r1
    //     0x7d9fe0: add             x1, x1, HEAP, lsl #32
    // 0x7d9fe4: LoadField: r2 = r1->field_63
    //     0x7d9fe4: ldur            w2, [x1, #0x63]
    // 0x7d9fe8: DecompressPointer r2
    //     0x7d9fe8: add             x2, x2, HEAP, lsl #32
    // 0x7d9fec: stur            x2, [fp, #-0x18]
    // 0x7d9ff0: LoadField: r1 = r2->field_13
    //     0x7d9ff0: ldur            x1, [x2, #0x13]
    // 0x7d9ff4: tbnz            w1, #2, #0x7da024
    // 0x7d9ff8: r0 = DJa()
    //     0x7d9ff8: bl              #0x7da1a0  ; AllocateDJaStub -> DJa (size=0x14)
    // 0x7d9ffc: mov             x1, x0
    // 0x7da000: r0 = Instance_AJa
    //     0x7da000: ldr             x0, [PP, #0x7fa8]  ; [pp+0x7fa8] Obj!AJa@440c31
    // 0x7da004: StoreField: r1->field_7 = r0
    //     0x7da004: stur            w0, [x1, #7]
    // 0x7da008: r0 = Instance_BJa
    //     0x7da008: ldr             x0, [PP, #0x7fb0]  ; [pp+0x7fb0] Obj!BJa@440b81
    // 0x7da00c: StoreField: r1->field_b = r0
    //     0x7da00c: stur            w0, [x1, #0xb]
    // 0x7da010: r0 = Instance_CJa
    //     0x7da010: ldr             x0, [PP, #0x7fb8]  ; [pp+0x7fb8] Obj!CJa@440ac1
    // 0x7da014: StoreField: r1->field_f = r0
    //     0x7da014: stur            w0, [x1, #0xf]
    // 0x7da018: mov             x2, x1
    // 0x7da01c: ldur            x1, [fp, #-0x18]
    // 0x7da020: r0 = call 0x5ef1e0
    //     0x7da020: bl              #0x5ef1e0
    // 0x7da024: ldur            x0, [fp, #-0x10]
    // 0x7da028: LoadField: r1 = r0->field_f
    //     0x7da028: ldur            w1, [x0, #0xf]
    // 0x7da02c: DecompressPointer r1
    //     0x7da02c: add             x1, x1, HEAP, lsl #32
    // 0x7da030: LoadField: r2 = r1->field_67
    //     0x7da030: ldur            w2, [x1, #0x67]
    // 0x7da034: DecompressPointer r2
    //     0x7da034: add             x2, x2, HEAP, lsl #32
    // 0x7da038: stur            x2, [fp, #-0x18]
    // 0x7da03c: LoadField: r1 = r2->field_13
    //     0x7da03c: ldur            x1, [x2, #0x13]
    // 0x7da040: tbnz            w1, #2, #0x7da070
    // 0x7da044: r0 = EJa()
    //     0x7da044: bl              #0x7da194  ; AllocateEJaStub -> EJa (size=0x14)
    // 0x7da048: mov             x1, x0
    // 0x7da04c: r0 = const [Instance of 'AJa', Instance of 'AJa']
    //     0x7da04c: ldr             x0, [PP, #0x7fc8]  ; [pp+0x7fc8] List<AJa>(2)
    // 0x7da050: StoreField: r1->field_7 = r0
    //     0x7da050: stur            w0, [x1, #7]
    // 0x7da054: r0 = const [Instance of 'BJa', Instance of 'BJa']
    //     0x7da054: ldr             x0, [PP, #0x7fd8]  ; [pp+0x7fd8] List<BJa>(2)
    // 0x7da058: StoreField: r1->field_b = r0
    //     0x7da058: stur            w0, [x1, #0xb]
    // 0x7da05c: r0 = const [Instance of 'CJa', Instance of 'CJa']
    //     0x7da05c: ldr             x0, [PP, #0x7fe0]  ; [pp+0x7fe0] List<CJa>(2)
    // 0x7da060: StoreField: r1->field_f = r0
    //     0x7da060: stur            w0, [x1, #0xf]
    // 0x7da064: mov             x2, x1
    // 0x7da068: ldur            x1, [fp, #-0x18]
    // 0x7da06c: r0 = call 0x5ef1e0
    //     0x7da06c: bl              #0x5ef1e0
    // 0x7da070: ldur            x0, [fp, #-0x10]
    // 0x7da074: LoadField: r1 = r0->field_f
    //     0x7da074: ldur            w1, [x0, #0xf]
    // 0x7da078: DecompressPointer r1
    //     0x7da078: add             x1, x1, HEAP, lsl #32
    // 0x7da07c: LoadField: r2 = r1->field_6b
    //     0x7da07c: ldur            w2, [x1, #0x6b]
    // 0x7da080: DecompressPointer r2
    //     0x7da080: add             x2, x2, HEAP, lsl #32
    // 0x7da084: LoadField: r1 = r2->field_13
    //     0x7da084: ldur            x1, [x2, #0x13]
    // 0x7da088: tbnz            w1, #2, #0x7da098
    // 0x7da08c: mov             x1, x2
    // 0x7da090: r2 = Null
    //     0x7da090: mov             x2, NULL
    // 0x7da094: r0 = call 0x5ef1e0
    //     0x7da094: bl              #0x5ef1e0
    // 0x7da098: ldur            x0, [fp, #-0x10]
    // 0x7da09c: LoadField: r1 = r0->field_f
    //     0x7da09c: ldur            w1, [x0, #0xf]
    // 0x7da0a0: DecompressPointer r1
    //     0x7da0a0: add             x1, x1, HEAP, lsl #32
    // 0x7da0a4: LoadField: r2 = r1->field_6f
    //     0x7da0a4: ldur            w2, [x1, #0x6f]
    // 0x7da0a8: DecompressPointer r2
    //     0x7da0a8: add             x2, x2, HEAP, lsl #32
    // 0x7da0ac: LoadField: r1 = r2->field_13
    //     0x7da0ac: ldur            x1, [x2, #0x13]
    // 0x7da0b0: tbnz            w1, #2, #0x7da0c0
    // 0x7da0b4: mov             x1, x2
    // 0x7da0b8: r2 = Null
    //     0x7da0b8: mov             x2, NULL
    // 0x7da0bc: r0 = call 0x5ef1e0
    //     0x7da0bc: bl              #0x5ef1e0
    // 0x7da0c0: ldur            x0, [fp, #-0x10]
    // 0x7da0c4: LoadField: r1 = r0->field_f
    //     0x7da0c4: ldur            w1, [x0, #0xf]
    // 0x7da0c8: DecompressPointer r1
    //     0x7da0c8: add             x1, x1, HEAP, lsl #32
    // 0x7da0cc: LoadField: r0 = r1->field_73
    //     0x7da0cc: ldur            w0, [x1, #0x73]
    // 0x7da0d0: DecompressPointer r0
    //     0x7da0d0: add             x0, x0, HEAP, lsl #32
    // 0x7da0d4: stur            x0, [fp, #-0x10]
    // 0x7da0d8: LoadField: r1 = r0->field_13
    //     0x7da0d8: ldur            x1, [x0, #0x13]
    // 0x7da0dc: tbnz            w1, #2, #0x7da12c
    // 0x7da0e0: r3 = 4
    //     0x7da0e0: movz            x3, #0x4
    // 0x7da0e4: mov             x2, x3
    // 0x7da0e8: r1 = Null
    //     0x7da0e8: mov             x1, NULL
    // 0x7da0ec: r0 = AllocateArray()
    //     0x7da0ec: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7da0f0: stur            x0, [fp, #-0x18]
    // 0x7da0f4: r16 = ""
    //     0x7da0f4: ldr             x16, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x7da0f8: StoreField: r0->field_f = r16
    //     0x7da0f8: stur            w16, [x0, #0xf]
    // 0x7da0fc: r16 = ""
    //     0x7da0fc: ldr             x16, [PP, #0x1d0]  ; [pp+0x1d0] ""
    // 0x7da100: StoreField: r0->field_13 = r16
    //     0x7da100: stur            w16, [x0, #0x13]
    // 0x7da104: r1 = <String>
    //     0x7da104: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x7da108: r0 = AllocateGrowableArray()
    //     0x7da108: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7da10c: mov             x1, x0
    // 0x7da110: ldur            x0, [fp, #-0x18]
    // 0x7da114: StoreField: r1->field_f = r0
    //     0x7da114: stur            w0, [x1, #0xf]
    // 0x7da118: r0 = 4
    //     0x7da118: movz            x0, #0x4
    // 0x7da11c: StoreField: r1->field_b = r0
    //     0x7da11c: stur            w0, [x1, #0xb]
    // 0x7da120: mov             x2, x1
    // 0x7da124: ldur            x1, [fp, #-0x10]
    // 0x7da128: r0 = call 0x5ef1e0
    //     0x7da128: bl              #0x5ef1e0
    // 0x7da12c: r0 = Null
    //     0x7da12c: mov             x0, NULL
    // 0x7da130: r0 = ReturnAsyncNotFuture()
    //     0x7da130: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7da134: r0 = na()
    //     0x7da134: bl              #0x74d0a8  ; AllocatenaStub -> na (size=0x10)
    // 0x7da138: mov             x1, x0
    // 0x7da13c: r0 = "[Player] has been disposed"
    //     0x7da13c: ldr             x0, [PP, #0x6c78]  ; [pp+0x6c78] "[Player] has been disposed"
    // 0x7da140: StoreField: r1->field_b = r0
    //     0x7da140: stur            w0, [x1, #0xb]
    // 0x7da144: mov             x0, x1
    // 0x7da148: r0 = Throw()
    //     0x7da148: bl              #0x7dc520  ; ThrowStub
    // 0x7da14c: brk             #0
    // 0x7da150: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7da150: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7da154: b               #0x7d9980
    // 0x7da158: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7da158: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7da15c: b               #0x7d9b60
    // 0x7da160: SaveReg d0
    //     0x7da160: str             q0, [SP, #-0x10]!
    // 0x7da164: SaveReg r1
    //     0x7da164: str             x1, [SP, #-8]!
    // 0x7da168: r0 = AllocateDouble()
    //     0x7da168: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7da16c: RestoreReg r1
    //     0x7da16c: ldr             x1, [SP], #8
    // 0x7da170: RestoreReg d0
    //     0x7da170: ldr             q0, [SP], #0x10
    // 0x7da174: b               #0x7d9dac
    // 0x7da178: SaveReg d0
    //     0x7da178: str             q0, [SP, #-0x10]!
    // 0x7da17c: stp             x0, x1, [SP, #-0x10]!
    // 0x7da180: r0 = AllocateDouble()
    //     0x7da180: bl              #0x7de26c  ; AllocateDoubleStub
    // 0x7da184: mov             x2, x0
    // 0x7da188: ldp             x0, x1, [SP], #0x10
    // 0x7da18c: RestoreReg d0
    //     0x7da18c: ldr             q0, [SP], #0x10
    // 0x7da190: b               #0x7d9ddc
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e620c, size: 0xae4
    // 0x7e620c: EnterFrame
    //     0x7e620c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e6210: mov             fp, SP
    // 0x7e6214: AllocStack(0x48)
    //     0x7e6214: sub             SP, SP, #0x48
    // 0x7e6218: SetupParameters(LJa this /* r1 */)
    //     0x7e6218: stur            NULL, [fp, #-8]
    //     0x7e621c: movz            x0, #0
    //     0x7e6220: add             x1, fp, w0, sxtw #2
    //     0x7e6224: ldr             x1, [x1, #0x10]
    //     0x7e6228: ldur            w2, [x1, #0x17]
    //     0x7e622c: add             x2, x2, HEAP, lsl #32
    //     0x7e6230: stur            x2, [fp, #-0x10]
    // 0x7e6234: CheckStackOverflow
    //     0x7e6234: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e6238: cmp             SP, x16
    //     0x7e623c: b.ls            #0x7e6ce8
    // 0x7e6240: InitAsync() -> Future<void?>
    //     0x7e6240: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7e6244: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e6248: r16 = <String, String>
    //     0x7e6248: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e624c: ldr             lr, [THR, #0xa8]  ; THR::empty_array
    // 0x7e6250: stp             lr, x16, [SP]
    // 0x7e6254: r0 = Map._fromLiteral()
    //     0x7e6254: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e6258: stur            x0, [fp, #-0x18]
    // 0x7e625c: r16 = "vid"
    //     0x7e625c: ldr             x16, [PP, #0x6b90]  ; [pp+0x6b90] "vid"
    // 0x7e6260: str             x16, [SP]
    // 0x7e6264: r0 = hashCode()
    //     0x7e6264: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6268: r5 = LoadInt32Instr(r0)
    //     0x7e6268: sbfx            x5, x0, #1, #0x1f
    //     0x7e626c: tbz             w0, #0, #0x7e6274
    //     0x7e6270: ldur            x5, [x0, #7]
    // 0x7e6274: ldur            x1, [fp, #-0x18]
    // 0x7e6278: r2 = "vid"
    //     0x7e6278: ldr             x2, [PP, #0x6b90]  ; [pp+0x6b90] "vid"
    // 0x7e627c: r3 = "no"
    //     0x7e627c: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e6280: r0 = call 0x228da0
    //     0x7e6280: bl              #0x228da0
    // 0x7e6284: ldur            x0, [fp, #-0x10]
    // 0x7e6288: LoadField: r3 = r0->field_f
    //     0x7e6288: ldur            w3, [x0, #0xf]
    // 0x7e628c: DecompressPointer r3
    //     0x7e628c: add             x3, x3, HEAP, lsl #32
    // 0x7e6290: stur            x3, [fp, #-0x20]
    // 0x7e6294: LoadField: r2 = r3->field_97
    //     0x7e6294: ldur            w2, [x3, #0x97]
    // 0x7e6298: DecompressPointer r2
    //     0x7e6298: add             x2, x2, HEAP, lsl #32
    // 0x7e629c: r1 = Null
    //     0x7e629c: mov             x1, NULL
    // 0x7e62a0: r0 = call 0x742ef0
    //     0x7e62a0: bl              #0x742ef0
    // 0x7e62a4: mov             x3, x0
    // 0x7e62a8: ldur            x0, [fp, #-0x10]
    // 0x7e62ac: stur            x3, [fp, #-0x28]
    // 0x7e62b0: LoadField: r2 = r0->field_f
    //     0x7e62b0: ldur            w2, [x0, #0xf]
    // 0x7e62b4: DecompressPointer r2
    //     0x7e62b4: add             x2, x2, HEAP, lsl #32
    // 0x7e62b8: r1 = Function '_handler@916115301':.
    //     0x7e62b8: ldr             x1, [PP, #0x75f8]  ; [pp+0x75f8] AnonymousClosure: (0x7431e4), of [kJi] LJa
    // 0x7e62bc: r0 = AllocateClosure()
    //     0x7e62bc: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e62c0: ldur            x1, [fp, #-0x28]
    // 0x7e62c4: mov             x2, x0
    // 0x7e62c8: ldur            x3, [fp, #-0x18]
    // 0x7e62cc: r0 = __unknown_function__()
    //     0x7e62cc: bl              #0x7e6cf0  ; [] ::__unknown_function__
    // 0x7e62d0: mov             x1, x0
    // 0x7e62d4: stur            x1, [fp, #-0x18]
    // 0x7e62d8: r0 = Await()
    //     0x7e62d8: bl              #0x74ab64  ; AwaitStub
    // 0x7e62dc: ldur            x1, [fp, #-0x20]
    // 0x7e62e0: StoreField: r1->field_9b = r0
    //     0x7e62e0: stur            w0, [x1, #0x9b]
    //     0x7e62e4: ldurb           w16, [x1, #-1]
    //     0x7e62e8: ldurb           w17, [x0, #-1]
    //     0x7e62ec: and             x16, x17, x16, lsr #2
    //     0x7e62f0: tst             x16, HEAP, lsr #32
    //     0x7e62f4: b.eq            #0x7e62fc
    //     0x7e62f8: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7e62fc: r16 = <String, String>
    //     0x7e62fc: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e6300: ldr             lr, [THR, #0xa8]  ; THR::empty_array
    // 0x7e6304: stp             lr, x16, [SP]
    // 0x7e6308: r0 = Map._fromLiteral()
    //     0x7e6308: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e630c: stur            x0, [fp, #-0x18]
    // 0x7e6310: r16 = "idle"
    //     0x7e6310: ldr             x16, [PP, #0x7600]  ; [pp+0x7600] "idle"
    // 0x7e6314: str             x16, [SP]
    // 0x7e6318: r0 = hashCode()
    //     0x7e6318: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e631c: r5 = LoadInt32Instr(r0)
    //     0x7e631c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6320: tbz             w0, #0, #0x7e6328
    //     0x7e6324: ldur            x5, [x0, #7]
    // 0x7e6328: ldur            x1, [fp, #-0x18]
    // 0x7e632c: r2 = "idle"
    //     0x7e632c: ldr             x2, [PP, #0x7600]  ; [pp+0x7600] "idle"
    // 0x7e6330: r3 = "yes"
    //     0x7e6330: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e6334: r0 = call 0x228da0
    //     0x7e6334: bl              #0x228da0
    // 0x7e6338: r16 = "pause"
    //     0x7e6338: ldr             x16, [PP, #0x7608]  ; [pp+0x7608] "pause"
    // 0x7e633c: str             x16, [SP]
    // 0x7e6340: r0 = hashCode()
    //     0x7e6340: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6344: r5 = LoadInt32Instr(r0)
    //     0x7e6344: sbfx            x5, x0, #1, #0x1f
    //     0x7e6348: tbz             w0, #0, #0x7e6350
    //     0x7e634c: ldur            x5, [x0, #7]
    // 0x7e6350: ldur            x1, [fp, #-0x18]
    // 0x7e6354: r2 = "pause"
    //     0x7e6354: ldr             x2, [PP, #0x7608]  ; [pp+0x7608] "pause"
    // 0x7e6358: r3 = "yes"
    //     0x7e6358: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e635c: r0 = call 0x228da0
    //     0x7e635c: bl              #0x228da0
    // 0x7e6360: r16 = "keep-open"
    //     0x7e6360: ldr             x16, [PP, #0x7610]  ; [pp+0x7610] "keep-open"
    // 0x7e6364: str             x16, [SP]
    // 0x7e6368: r0 = hashCode()
    //     0x7e6368: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e636c: r5 = LoadInt32Instr(r0)
    //     0x7e636c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6370: tbz             w0, #0, #0x7e6378
    //     0x7e6374: ldur            x5, [x0, #7]
    // 0x7e6378: ldur            x1, [fp, #-0x18]
    // 0x7e637c: r2 = "keep-open"
    //     0x7e637c: ldr             x2, [PP, #0x7610]  ; [pp+0x7610] "keep-open"
    // 0x7e6380: r3 = "yes"
    //     0x7e6380: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e6384: r0 = call 0x228da0
    //     0x7e6384: bl              #0x228da0
    // 0x7e6388: r16 = "audio-display"
    //     0x7e6388: ldr             x16, [PP, #0x7618]  ; [pp+0x7618] "audio-display"
    // 0x7e638c: str             x16, [SP]
    // 0x7e6390: r0 = hashCode()
    //     0x7e6390: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6394: r5 = LoadInt32Instr(r0)
    //     0x7e6394: sbfx            x5, x0, #1, #0x1f
    //     0x7e6398: tbz             w0, #0, #0x7e63a0
    //     0x7e639c: ldur            x5, [x0, #7]
    // 0x7e63a0: ldur            x1, [fp, #-0x18]
    // 0x7e63a4: r2 = "audio-display"
    //     0x7e63a4: ldr             x2, [PP, #0x7618]  ; [pp+0x7618] "audio-display"
    // 0x7e63a8: r3 = "no"
    //     0x7e63a8: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e63ac: r0 = call 0x228da0
    //     0x7e63ac: bl              #0x228da0
    // 0x7e63b0: r16 = "network-timeout"
    //     0x7e63b0: ldr             x16, [PP, #0x7620]  ; [pp+0x7620] "network-timeout"
    // 0x7e63b4: str             x16, [SP]
    // 0x7e63b8: r0 = hashCode()
    //     0x7e63b8: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e63bc: r5 = LoadInt32Instr(r0)
    //     0x7e63bc: sbfx            x5, x0, #1, #0x1f
    //     0x7e63c0: tbz             w0, #0, #0x7e63c8
    //     0x7e63c4: ldur            x5, [x0, #7]
    // 0x7e63c8: ldur            x1, [fp, #-0x18]
    // 0x7e63cc: r2 = "network-timeout"
    //     0x7e63cc: ldr             x2, [PP, #0x7620]  ; [pp+0x7620] "network-timeout"
    // 0x7e63d0: r3 = "5"
    //     0x7e63d0: ldr             x3, [PP, #0x7628]  ; [pp+0x7628] "5"
    // 0x7e63d4: r0 = call 0x228da0
    //     0x7e63d4: bl              #0x228da0
    // 0x7e63d8: r16 = "scale"
    //     0x7e63d8: ldr             x16, [PP, #0x7630]  ; [pp+0x7630] "scale"
    // 0x7e63dc: str             x16, [SP]
    // 0x7e63e0: r0 = hashCode()
    //     0x7e63e0: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e63e4: r5 = LoadInt32Instr(r0)
    //     0x7e63e4: sbfx            x5, x0, #1, #0x1f
    //     0x7e63e8: tbz             w0, #0, #0x7e63f0
    //     0x7e63ec: ldur            x5, [x0, #7]
    // 0x7e63f0: ldur            x1, [fp, #-0x18]
    // 0x7e63f4: r2 = "scale"
    //     0x7e63f4: ldr             x2, [PP, #0x7630]  ; [pp+0x7630] "scale"
    // 0x7e63f8: r3 = "bilinear"
    //     0x7e63f8: ldr             x3, [PP, #0x7638]  ; [pp+0x7638] "bilinear"
    // 0x7e63fc: r0 = call 0x228da0
    //     0x7e63fc: bl              #0x228da0
    // 0x7e6400: r16 = "dscale"
    //     0x7e6400: ldr             x16, [PP, #0x7640]  ; [pp+0x7640] "dscale"
    // 0x7e6404: str             x16, [SP]
    // 0x7e6408: r0 = hashCode()
    //     0x7e6408: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e640c: r5 = LoadInt32Instr(r0)
    //     0x7e640c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6410: tbz             w0, #0, #0x7e6418
    //     0x7e6414: ldur            x5, [x0, #7]
    // 0x7e6418: ldur            x1, [fp, #-0x18]
    // 0x7e641c: r2 = "dscale"
    //     0x7e641c: ldr             x2, [PP, #0x7640]  ; [pp+0x7640] "dscale"
    // 0x7e6420: r3 = "bilinear"
    //     0x7e6420: ldr             x3, [PP, #0x7638]  ; [pp+0x7638] "bilinear"
    // 0x7e6424: r0 = call 0x228da0
    //     0x7e6424: bl              #0x228da0
    // 0x7e6428: r16 = "dither"
    //     0x7e6428: ldr             x16, [PP, #0x7648]  ; [pp+0x7648] "dither"
    // 0x7e642c: str             x16, [SP]
    // 0x7e6430: r0 = hashCode()
    //     0x7e6430: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6434: r5 = LoadInt32Instr(r0)
    //     0x7e6434: sbfx            x5, x0, #1, #0x1f
    //     0x7e6438: tbz             w0, #0, #0x7e6440
    //     0x7e643c: ldur            x5, [x0, #7]
    // 0x7e6440: ldur            x1, [fp, #-0x18]
    // 0x7e6444: r2 = "dither"
    //     0x7e6444: ldr             x2, [PP, #0x7648]  ; [pp+0x7648] "dither"
    // 0x7e6448: r3 = "no"
    //     0x7e6448: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e644c: r0 = call 0x228da0
    //     0x7e644c: bl              #0x228da0
    // 0x7e6450: r16 = "cache"
    //     0x7e6450: ldr             x16, [PP, #0x7650]  ; [pp+0x7650] "cache"
    // 0x7e6454: str             x16, [SP]
    // 0x7e6458: r0 = hashCode()
    //     0x7e6458: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e645c: r5 = LoadInt32Instr(r0)
    //     0x7e645c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6460: tbz             w0, #0, #0x7e6468
    //     0x7e6464: ldur            x5, [x0, #7]
    // 0x7e6468: ldur            x1, [fp, #-0x18]
    // 0x7e646c: r2 = "cache"
    //     0x7e646c: ldr             x2, [PP, #0x7650]  ; [pp+0x7650] "cache"
    // 0x7e6470: r3 = "yes"
    //     0x7e6470: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e6474: r0 = call 0x228da0
    //     0x7e6474: bl              #0x228da0
    // 0x7e6478: r16 = "cache-on-disk"
    //     0x7e6478: ldr             x16, [PP, #0x7658]  ; [pp+0x7658] "cache-on-disk"
    // 0x7e647c: str             x16, [SP]
    // 0x7e6480: r0 = hashCode()
    //     0x7e6480: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6484: r5 = LoadInt32Instr(r0)
    //     0x7e6484: sbfx            x5, x0, #1, #0x1f
    //     0x7e6488: tbz             w0, #0, #0x7e6490
    //     0x7e648c: ldur            x5, [x0, #7]
    // 0x7e6490: ldur            x1, [fp, #-0x18]
    // 0x7e6494: r2 = "cache-on-disk"
    //     0x7e6494: ldr             x2, [PP, #0x7658]  ; [pp+0x7658] "cache-on-disk"
    // 0x7e6498: r3 = "yes"
    //     0x7e6498: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e649c: r0 = call 0x228da0
    //     0x7e649c: bl              #0x228da0
    // 0x7e64a0: r16 = "hr-seek"
    //     0x7e64a0: ldr             x16, [PP, #0x7660]  ; [pp+0x7660] "hr-seek"
    // 0x7e64a4: str             x16, [SP]
    // 0x7e64a8: r0 = hashCode()
    //     0x7e64a8: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e64ac: r5 = LoadInt32Instr(r0)
    //     0x7e64ac: sbfx            x5, x0, #1, #0x1f
    //     0x7e64b0: tbz             w0, #0, #0x7e64b8
    //     0x7e64b4: ldur            x5, [x0, #7]
    // 0x7e64b8: ldur            x1, [fp, #-0x18]
    // 0x7e64bc: r2 = "hr-seek"
    //     0x7e64bc: ldr             x2, [PP, #0x7660]  ; [pp+0x7660] "hr-seek"
    // 0x7e64c0: r3 = "yes"
    //     0x7e64c0: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e64c4: r0 = call 0x228da0
    //     0x7e64c4: bl              #0x228da0
    // 0x7e64c8: r16 = "hr-seek-framedrop"
    //     0x7e64c8: ldr             x16, [PP, #0x7668]  ; [pp+0x7668] "hr-seek-framedrop"
    // 0x7e64cc: str             x16, [SP]
    // 0x7e64d0: r0 = hashCode()
    //     0x7e64d0: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e64d4: r5 = LoadInt32Instr(r0)
    //     0x7e64d4: sbfx            x5, x0, #1, #0x1f
    //     0x7e64d8: tbz             w0, #0, #0x7e64e0
    //     0x7e64dc: ldur            x5, [x0, #7]
    // 0x7e64e0: ldur            x1, [fp, #-0x18]
    // 0x7e64e4: r2 = "hr-seek-framedrop"
    //     0x7e64e4: ldr             x2, [PP, #0x7668]  ; [pp+0x7668] "hr-seek-framedrop"
    // 0x7e64e8: r3 = "no"
    //     0x7e64e8: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e64ec: r0 = call 0x228da0
    //     0x7e64ec: bl              #0x228da0
    // 0x7e64f0: r16 = "correct-downscaling"
    //     0x7e64f0: ldr             x16, [PP, #0x7670]  ; [pp+0x7670] "correct-downscaling"
    // 0x7e64f4: str             x16, [SP]
    // 0x7e64f8: r0 = hashCode()
    //     0x7e64f8: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e64fc: r5 = LoadInt32Instr(r0)
    //     0x7e64fc: sbfx            x5, x0, #1, #0x1f
    //     0x7e6500: tbz             w0, #0, #0x7e6508
    //     0x7e6504: ldur            x5, [x0, #7]
    // 0x7e6508: ldur            x1, [fp, #-0x18]
    // 0x7e650c: r2 = "correct-downscaling"
    //     0x7e650c: ldr             x2, [PP, #0x7670]  ; [pp+0x7670] "correct-downscaling"
    // 0x7e6510: r3 = "no"
    //     0x7e6510: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e6514: r0 = call 0x228da0
    //     0x7e6514: bl              #0x228da0
    // 0x7e6518: r16 = "linear-downscaling"
    //     0x7e6518: ldr             x16, [PP, #0x7678]  ; [pp+0x7678] "linear-downscaling"
    // 0x7e651c: str             x16, [SP]
    // 0x7e6520: r0 = hashCode()
    //     0x7e6520: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6524: r5 = LoadInt32Instr(r0)
    //     0x7e6524: sbfx            x5, x0, #1, #0x1f
    //     0x7e6528: tbz             w0, #0, #0x7e6530
    //     0x7e652c: ldur            x5, [x0, #7]
    // 0x7e6530: ldur            x1, [fp, #-0x18]
    // 0x7e6534: r2 = "linear-downscaling"
    //     0x7e6534: ldr             x2, [PP, #0x7678]  ; [pp+0x7678] "linear-downscaling"
    // 0x7e6538: r3 = "no"
    //     0x7e6538: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e653c: r0 = call 0x228da0
    //     0x7e653c: bl              #0x228da0
    // 0x7e6540: r16 = "sigmoid-upscaling"
    //     0x7e6540: ldr             x16, [PP, #0x7680]  ; [pp+0x7680] "sigmoid-upscaling"
    // 0x7e6544: str             x16, [SP]
    // 0x7e6548: r0 = hashCode()
    //     0x7e6548: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e654c: r5 = LoadInt32Instr(r0)
    //     0x7e654c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6550: tbz             w0, #0, #0x7e6558
    //     0x7e6554: ldur            x5, [x0, #7]
    // 0x7e6558: ldur            x1, [fp, #-0x18]
    // 0x7e655c: r2 = "sigmoid-upscaling"
    //     0x7e655c: ldr             x2, [PP, #0x7680]  ; [pp+0x7680] "sigmoid-upscaling"
    // 0x7e6560: r3 = "no"
    //     0x7e6560: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e6564: r0 = call 0x228da0
    //     0x7e6564: bl              #0x228da0
    // 0x7e6568: r16 = "hdr-compute-peak"
    //     0x7e6568: ldr             x16, [PP, #0x7688]  ; [pp+0x7688] "hdr-compute-peak"
    // 0x7e656c: str             x16, [SP]
    // 0x7e6570: r0 = hashCode()
    //     0x7e6570: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6574: r5 = LoadInt32Instr(r0)
    //     0x7e6574: sbfx            x5, x0, #1, #0x1f
    //     0x7e6578: tbz             w0, #0, #0x7e6580
    //     0x7e657c: ldur            x5, [x0, #7]
    // 0x7e6580: ldur            x1, [fp, #-0x18]
    // 0x7e6584: r2 = "hdr-compute-peak"
    //     0x7e6584: ldr             x2, [PP, #0x7688]  ; [pp+0x7688] "hdr-compute-peak"
    // 0x7e6588: r3 = "no"
    //     0x7e6588: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e658c: r0 = call 0x228da0
    //     0x7e658c: bl              #0x228da0
    // 0x7e6590: r0 = call 0x73f970
    //     0x7e6590: bl              #0x73f970
    // 0x7e6594: tbz             w0, #4, #0x7e65a4
    // 0x7e6598: r0 = call 0x73f900
    //     0x7e6598: bl              #0x73f900
    // 0x7e659c: cmp             x0, #0x19
    // 0x7e65a0: b.le            #0x7e65d0
    // 0x7e65a4: r16 = "ao"
    //     0x7e65a4: ldr             x16, [PP, #0x7690]  ; [pp+0x7690] "ao"
    // 0x7e65a8: str             x16, [SP]
    // 0x7e65ac: r0 = hashCode()
    //     0x7e65ac: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e65b0: r5 = LoadInt32Instr(r0)
    //     0x7e65b0: sbfx            x5, x0, #1, #0x1f
    //     0x7e65b4: tbz             w0, #0, #0x7e65bc
    //     0x7e65b8: ldur            x5, [x0, #7]
    // 0x7e65bc: ldur            x1, [fp, #-0x18]
    // 0x7e65c0: r2 = "ao"
    //     0x7e65c0: ldr             x2, [PP, #0x7690]  ; [pp+0x7690] "ao"
    // 0x7e65c4: r3 = "opensles"
    //     0x7e65c4: ldr             x3, [PP, #0x7698]  ; [pp+0x7698] "opensles"
    // 0x7e65c8: r0 = call 0x228da0
    //     0x7e65c8: bl              #0x228da0
    // 0x7e65cc: b               #0x7e660c
    // 0x7e65d0: r0 = call 0x73f880
    //     0x7e65d0: bl              #0x73f880
    // 0x7e65d4: tbnz            w0, #4, #0x7e660c
    // 0x7e65d8: r0 = call 0x73f900
    //     0x7e65d8: bl              #0x73f900
    // 0x7e65dc: cmp             x0, #0x19
    // 0x7e65e0: b.gt            #0x7e660c
    // 0x7e65e4: r16 = "ao"
    //     0x7e65e4: ldr             x16, [PP, #0x7690]  ; [pp+0x7690] "ao"
    // 0x7e65e8: str             x16, [SP]
    // 0x7e65ec: r0 = hashCode()
    //     0x7e65ec: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e65f0: r5 = LoadInt32Instr(r0)
    //     0x7e65f0: sbfx            x5, x0, #1, #0x1f
    //     0x7e65f4: tbz             w0, #0, #0x7e65fc
    //     0x7e65f8: ldur            x5, [x0, #7]
    // 0x7e65fc: ldur            x1, [fp, #-0x18]
    // 0x7e6600: r2 = "ao"
    //     0x7e6600: ldr             x2, [PP, #0x7690]  ; [pp+0x7690] "ao"
    // 0x7e6604: r3 = "null"
    //     0x7e6604: ldr             x3, [PP, #0x190]  ; [pp+0x190] "null"
    // 0x7e6608: r0 = call 0x228da0
    //     0x7e6608: bl              #0x228da0
    // 0x7e660c: ldur            x1, [fp, #-0x18]
    // 0x7e6610: r16 = "subs-fallback"
    //     0x7e6610: ldr             x16, [PP, #0x76a0]  ; [pp+0x76a0] "subs-fallback"
    // 0x7e6614: str             x16, [SP]
    // 0x7e6618: r0 = hashCode()
    //     0x7e6618: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e661c: r5 = LoadInt32Instr(r0)
    //     0x7e661c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6620: tbz             w0, #0, #0x7e6628
    //     0x7e6624: ldur            x5, [x0, #7]
    // 0x7e6628: ldur            x1, [fp, #-0x18]
    // 0x7e662c: r2 = "subs-fallback"
    //     0x7e662c: ldr             x2, [PP, #0x76a0]  ; [pp+0x76a0] "subs-fallback"
    // 0x7e6630: r3 = "yes"
    //     0x7e6630: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e6634: r0 = call 0x228da0
    //     0x7e6634: bl              #0x228da0
    // 0x7e6638: r16 = "subs-with-matching-audio"
    //     0x7e6638: ldr             x16, [PP, #0x76a8]  ; [pp+0x76a8] "subs-with-matching-audio"
    // 0x7e663c: str             x16, [SP]
    // 0x7e6640: r0 = hashCode()
    //     0x7e6640: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6644: r5 = LoadInt32Instr(r0)
    //     0x7e6644: sbfx            x5, x0, #1, #0x1f
    //     0x7e6648: tbz             w0, #0, #0x7e6650
    //     0x7e664c: ldur            x5, [x0, #7]
    // 0x7e6650: ldur            x1, [fp, #-0x18]
    // 0x7e6654: r2 = "subs-with-matching-audio"
    //     0x7e6654: ldr             x2, [PP, #0x76a8]  ; [pp+0x76a8] "subs-with-matching-audio"
    // 0x7e6658: r3 = "yes"
    //     0x7e6658: ldr             x3, [PP, #0x6ba8]  ; [pp+0x6ba8] "yes"
    // 0x7e665c: r0 = call 0x228da0
    //     0x7e665c: bl              #0x228da0
    // 0x7e6660: r16 = <String, String>
    //     0x7e6660: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e6664: ldr             lr, [THR, #0xa8]  ; THR::empty_array
    // 0x7e6668: stp             lr, x16, [SP]
    // 0x7e666c: r0 = Map._fromLiteral()
    //     0x7e666c: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e6670: r1 = Null
    //     0x7e6670: mov             x1, NULL
    // 0x7e6674: r2 = 8
    //     0x7e6674: movz            x2, #0x8
    // 0x7e6678: stur            x0, [fp, #-0x20]
    // 0x7e667c: r0 = AllocateArray()
    //     0x7e667c: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e6680: r16 = "osc"
    //     0x7e6680: ldr             x16, [PP, #0x76b0]  ; [pp+0x76b0] "osc"
    // 0x7e6684: StoreField: r0->field_f = r16
    //     0x7e6684: stur            w16, [x0, #0xf]
    // 0x7e6688: r16 = "no"
    //     0x7e6688: ldr             x16, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e668c: StoreField: r0->field_13 = r16
    //     0x7e668c: stur            w16, [x0, #0x13]
    // 0x7e6690: r16 = "osd-level"
    //     0x7e6690: ldr             x16, [PP, #0x76b8]  ; [pp+0x76b8] "osd-level"
    // 0x7e6694: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e6694: stur            w16, [x0, #0x17]
    // 0x7e6698: r16 = "0"
    //     0x7e6698: ldr             x16, [PP, #0x40a0]  ; [pp+0x40a0] "0"
    // 0x7e669c: StoreField: r0->field_1b = r16
    //     0x7e669c: stur            w16, [x0, #0x1b]
    // 0x7e66a0: r16 = <String, String>
    //     0x7e66a0: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e66a4: stp             x0, x16, [SP]
    // 0x7e66a8: r0 = Map._fromLiteral()
    //     0x7e66a8: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e66ac: ldur            x1, [fp, #-0x20]
    // 0x7e66b0: mov             x2, x0
    // 0x7e66b4: r0 = call 0x73039c
    //     0x7e66b4: bl              #0x73039c
    // 0x7e66b8: r16 = "title"
    //     0x7e66b8: ldr             x16, [PP, #0x76c0]  ; [pp+0x76c0] "title"
    // 0x7e66bc: str             x16, [SP]
    // 0x7e66c0: r0 = hashCode()
    //     0x7e66c0: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e66c4: r5 = LoadInt32Instr(r0)
    //     0x7e66c4: sbfx            x5, x0, #1, #0x1f
    //     0x7e66c8: tbz             w0, #0, #0x7e66d0
    //     0x7e66cc: ldur            x5, [x0, #7]
    // 0x7e66d0: ldur            x1, [fp, #-0x20]
    // 0x7e66d4: r2 = "title"
    //     0x7e66d4: ldr             x2, [PP, #0x76c0]  ; [pp+0x76c0] "title"
    // 0x7e66d8: r3 = "package:media_kit"
    //     0x7e66d8: ldr             x3, [PP, #0x76c8]  ; [pp+0x76c8] "package:media_kit"
    // 0x7e66dc: r0 = call 0x228da0
    //     0x7e66dc: bl              #0x228da0
    // 0x7e66e0: r16 = 67108864
    //     0x7e66e0: orr             x16, xzr, #0x4000000
    // 0x7e66e4: str             x16, [SP]
    // 0x7e66e8: r0 = call 0x584334
    //     0x7e66e8: bl              #0x584334
    // 0x7e66ec: stur            x0, [fp, #-0x28]
    // 0x7e66f0: r16 = "demuxer-max-bytes"
    //     0x7e66f0: ldr             x16, [PP, #0x76d0]  ; [pp+0x76d0] "demuxer-max-bytes"
    // 0x7e66f4: str             x16, [SP]
    // 0x7e66f8: r0 = hashCode()
    //     0x7e66f8: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e66fc: r5 = LoadInt32Instr(r0)
    //     0x7e66fc: sbfx            x5, x0, #1, #0x1f
    //     0x7e6700: tbz             w0, #0, #0x7e6708
    //     0x7e6704: ldur            x5, [x0, #7]
    // 0x7e6708: ldur            x1, [fp, #-0x20]
    // 0x7e670c: ldur            x3, [fp, #-0x28]
    // 0x7e6710: r2 = "demuxer-max-bytes"
    //     0x7e6710: ldr             x2, [PP, #0x76d0]  ; [pp+0x76d0] "demuxer-max-bytes"
    // 0x7e6714: r0 = call 0x228da0
    //     0x7e6714: bl              #0x228da0
    // 0x7e6718: r16 = 67108864
    //     0x7e6718: orr             x16, xzr, #0x4000000
    // 0x7e671c: str             x16, [SP]
    // 0x7e6720: r0 = call 0x584334
    //     0x7e6720: bl              #0x584334
    // 0x7e6724: stur            x0, [fp, #-0x28]
    // 0x7e6728: r16 = "demuxer-max-back-bytes"
    //     0x7e6728: ldr             x16, [PP, #0x76d8]  ; [pp+0x76d8] "demuxer-max-back-bytes"
    // 0x7e672c: str             x16, [SP]
    // 0x7e6730: r0 = hashCode()
    //     0x7e6730: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6734: r5 = LoadInt32Instr(r0)
    //     0x7e6734: sbfx            x5, x0, #1, #0x1f
    //     0x7e6738: tbz             w0, #0, #0x7e6740
    //     0x7e673c: ldur            x5, [x0, #7]
    // 0x7e6740: ldur            x1, [fp, #-0x20]
    // 0x7e6744: ldur            x3, [fp, #-0x28]
    // 0x7e6748: r2 = "demuxer-max-back-bytes"
    //     0x7e6748: ldr             x2, [PP, #0x76d8]  ; [pp+0x76d8] "demuxer-max-back-bytes"
    // 0x7e674c: r0 = call 0x228da0
    //     0x7e674c: bl              #0x228da0
    // 0x7e6750: r16 = "vo"
    //     0x7e6750: ldr             x16, [PP, #0x6b80]  ; [pp+0x6b80] "vo"
    // 0x7e6754: str             x16, [SP]
    // 0x7e6758: r0 = hashCode()
    //     0x7e6758: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e675c: r5 = LoadInt32Instr(r0)
    //     0x7e675c: sbfx            x5, x0, #1, #0x1f
    //     0x7e6760: tbz             w0, #0, #0x7e6768
    //     0x7e6764: ldur            x5, [x0, #7]
    // 0x7e6768: ldur            x1, [fp, #-0x20]
    // 0x7e676c: r2 = "vo"
    //     0x7e676c: ldr             x2, [PP, #0x6b80]  ; [pp+0x6b80] "vo"
    // 0x7e6770: r3 = "null"
    //     0x7e6770: ldr             x3, [PP, #0x190]  ; [pp+0x190] "null"
    // 0x7e6774: r0 = call 0x228da0
    //     0x7e6774: bl              #0x228da0
    // 0x7e6778: r1 = Null
    //     0x7e6778: mov             x1, NULL
    // 0x7e677c: r2 = 6
    //     0x7e677c: movz            x2, #0x6
    // 0x7e6780: r0 = AllocateArray()
    //     0x7e6780: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e6784: stur            x0, [fp, #-0x28]
    // 0x7e6788: r16 = "protocol_whitelist=["
    //     0x7e6788: ldr             x16, [PP, #0x76e0]  ; [pp+0x76e0] "protocol_whitelist=["
    // 0x7e678c: StoreField: r0->field_f = r16
    //     0x7e678c: stur            w16, [x0, #0xf]
    // 0x7e6790: r16 = ","
    //     0x7e6790: ldr             x16, [PP, #0x76e8]  ; [pp+0x76e8] ","
    // 0x7e6794: str             x16, [SP]
    // 0x7e6798: r1 = const [udp, rtp, tcp, tls, data, file, http, https, crypto]
    //     0x7e6798: ldr             x1, [PP, #0x76f0]  ; [pp+0x76f0] List<String>(9)
    // 0x7e679c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e679c: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e67a0: r0 = call 0x2ed620
    //     0x7e67a0: bl              #0x2ed620
    // 0x7e67a4: ldur            x1, [fp, #-0x28]
    // 0x7e67a8: ArrayStore: r1[1] = r0  ; List_4
    //     0x7e67a8: add             x25, x1, #0x13
    //     0x7e67ac: str             w0, [x25]
    //     0x7e67b0: tbz             w0, #0, #0x7e67cc
    //     0x7e67b4: ldurb           w16, [x1, #-1]
    //     0x7e67b8: ldurb           w17, [x0, #-1]
    //     0x7e67bc: and             x16, x17, x16, lsr #2
    //     0x7e67c0: tst             x16, HEAP, lsr #32
    //     0x7e67c4: b.eq            #0x7e67cc
    //     0x7e67c8: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e67cc: ldur            x0, [fp, #-0x28]
    // 0x7e67d0: r16 = "]"
    //     0x7e67d0: ldr             x16, [PP, #0xb28]  ; [pp+0xb28] "]"
    // 0x7e67d4: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e67d4: stur            w16, [x0, #0x17]
    // 0x7e67d8: str             x0, [SP]
    // 0x7e67dc: r0 = _interpolate()
    //     0x7e67dc: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x7e67e0: r1 = Null
    //     0x7e67e0: mov             x1, NULL
    // 0x7e67e4: r2 = 8
    //     0x7e67e4: movz            x2, #0x8
    // 0x7e67e8: stur            x0, [fp, #-0x28]
    // 0x7e67ec: r0 = AllocateArray()
    //     0x7e67ec: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e67f0: stur            x0, [fp, #-0x30]
    // 0x7e67f4: r16 = "seg_max_retry=5"
    //     0x7e67f4: ldr             x16, [PP, #0x76f8]  ; [pp+0x76f8] "seg_max_retry=5"
    // 0x7e67f8: StoreField: r0->field_f = r16
    //     0x7e67f8: stur            w16, [x0, #0xf]
    // 0x7e67fc: r16 = "strict=experimental"
    //     0x7e67fc: ldr             x16, [PP, #0x7700]  ; [pp+0x7700] "strict=experimental"
    // 0x7e6800: StoreField: r0->field_13 = r16
    //     0x7e6800: stur            w16, [x0, #0x13]
    // 0x7e6804: r16 = "allowed_extensions=ALL"
    //     0x7e6804: ldr             x16, [PP, #0x7708]  ; [pp+0x7708] "allowed_extensions=ALL"
    // 0x7e6808: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e6808: stur            w16, [x0, #0x17]
    // 0x7e680c: ldur            x1, [fp, #-0x28]
    // 0x7e6810: StoreField: r0->field_1b = r1
    //     0x7e6810: stur            w1, [x0, #0x1b]
    // 0x7e6814: r1 = <String>
    //     0x7e6814: ldr             x1, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x7e6818: r0 = AllocateGrowableArray()
    //     0x7e6818: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7e681c: mov             x1, x0
    // 0x7e6820: ldur            x0, [fp, #-0x30]
    // 0x7e6824: StoreField: r1->field_f = r0
    //     0x7e6824: stur            w0, [x1, #0xf]
    // 0x7e6828: r0 = 8
    //     0x7e6828: movz            x0, #0x8
    // 0x7e682c: StoreField: r1->field_b = r0
    //     0x7e682c: stur            w0, [x1, #0xb]
    // 0x7e6830: r16 = ","
    //     0x7e6830: ldr             x16, [PP, #0x76e8]  ; [pp+0x76e8] ","
    // 0x7e6834: str             x16, [SP]
    // 0x7e6838: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e6838: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e683c: r0 = call 0x2ed074
    //     0x7e683c: bl              #0x2ed074
    // 0x7e6840: stur            x0, [fp, #-0x28]
    // 0x7e6844: r16 = "demuxer-lavf-o"
    //     0x7e6844: ldr             x16, [PP, #0x7710]  ; [pp+0x7710] "demuxer-lavf-o"
    // 0x7e6848: str             x16, [SP]
    // 0x7e684c: r0 = hashCode()
    //     0x7e684c: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6850: r5 = LoadInt32Instr(r0)
    //     0x7e6850: sbfx            x5, x0, #1, #0x1f
    //     0x7e6854: tbz             w0, #0, #0x7e685c
    //     0x7e6858: ldur            x5, [x0, #7]
    // 0x7e685c: ldur            x1, [fp, #-0x20]
    // 0x7e6860: ldur            x3, [fp, #-0x28]
    // 0x7e6864: r2 = "demuxer-lavf-o"
    //     0x7e6864: ldr             x2, [PP, #0x7710]  ; [pp+0x7710] "demuxer-lavf-o"
    // 0x7e6868: r0 = call 0x228da0
    //     0x7e6868: bl              #0x228da0
    // 0x7e686c: r16 = "sub-ass"
    //     0x7e686c: ldr             x16, [PP, #0x7718]  ; [pp+0x7718] "sub-ass"
    // 0x7e6870: str             x16, [SP]
    // 0x7e6874: r0 = hashCode()
    //     0x7e6874: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e6878: r5 = LoadInt32Instr(r0)
    //     0x7e6878: sbfx            x5, x0, #1, #0x1f
    //     0x7e687c: tbz             w0, #0, #0x7e6884
    //     0x7e6880: ldur            x5, [x0, #7]
    // 0x7e6884: ldur            x1, [fp, #-0x20]
    // 0x7e6888: r2 = "sub-ass"
    //     0x7e6888: ldr             x2, [PP, #0x7718]  ; [pp+0x7718] "sub-ass"
    // 0x7e688c: r3 = "no"
    //     0x7e688c: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e6890: r0 = call 0x228da0
    //     0x7e6890: bl              #0x228da0
    // 0x7e6894: r16 = "sub-visibility"
    //     0x7e6894: ldr             x16, [PP, #0x7720]  ; [pp+0x7720] "sub-visibility"
    // 0x7e6898: str             x16, [SP]
    // 0x7e689c: r0 = hashCode()
    //     0x7e689c: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e68a0: r5 = LoadInt32Instr(r0)
    //     0x7e68a0: sbfx            x5, x0, #1, #0x1f
    //     0x7e68a4: tbz             w0, #0, #0x7e68ac
    //     0x7e68a8: ldur            x5, [x0, #7]
    // 0x7e68ac: ldur            x1, [fp, #-0x20]
    // 0x7e68b0: r2 = "sub-visibility"
    //     0x7e68b0: ldr             x2, [PP, #0x7720]  ; [pp+0x7720] "sub-visibility"
    // 0x7e68b4: r3 = "no"
    //     0x7e68b4: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e68b8: r0 = call 0x228da0
    //     0x7e68b8: bl              #0x228da0
    // 0x7e68bc: r16 = "secondary-sub-visibility"
    //     0x7e68bc: ldr             x16, [PP, #0x7728]  ; [pp+0x7728] "secondary-sub-visibility"
    // 0x7e68c0: str             x16, [SP]
    // 0x7e68c4: r0 = hashCode()
    //     0x7e68c4: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e68c8: r5 = LoadInt32Instr(r0)
    //     0x7e68c8: sbfx            x5, x0, #1, #0x1f
    //     0x7e68cc: tbz             w0, #0, #0x7e68d4
    //     0x7e68d0: ldur            x5, [x0, #7]
    // 0x7e68d4: ldur            x1, [fp, #-0x20]
    // 0x7e68d8: r2 = "secondary-sub-visibility"
    //     0x7e68d8: ldr             x2, [PP, #0x7728]  ; [pp+0x7728] "secondary-sub-visibility"
    // 0x7e68dc: r3 = "no"
    //     0x7e68dc: ldr             x3, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e68e0: r0 = call 0x228da0
    //     0x7e68e0: bl              #0x228da0
    // 0x7e68e4: ldur            x1, [fp, #-0x18]
    // 0x7e68e8: ldur            x2, [fp, #-0x20]
    // 0x7e68ec: r0 = call 0x73039c
    //     0x7e68ec: bl              #0x73039c
    // 0x7e68f0: ldur            x0, [fp, #-0x18]
    // 0x7e68f4: LoadField: r2 = r0->field_7
    //     0x7e68f4: ldur            w2, [x0, #7]
    // 0x7e68f8: DecompressPointer r2
    //     0x7e68f8: add             x2, x2, HEAP, lsl #32
    // 0x7e68fc: r1 = Null
    //     0x7e68fc: mov             x1, NULL
    // 0x7e6900: r3 = <Da<X0, X1>, X0, X1>
    //     0x7e6900: ldr             x3, [PP, #0x730]  ; [pp+0x730] TypeArguments: <Da<X0, X1>, X0, X1>
    // 0x7e6904: r30 = InstantiateTypeArgumentsStub
    //     0x7e6904: ldr             lr, [PP, #0x4f8]  ; [pp+0x4f8] Stub: InstantiateTypeArguments (0x210f98)
    // 0x7e6908: LoadField: r30 = r30->field_7
    //     0x7e6908: ldur            lr, [lr, #7]
    // 0x7e690c: blr             lr
    // 0x7e6910: mov             x1, x0
    // 0x7e6914: r0 = _hd()
    //     0x7e6914: bl              #0x752a1c  ; Allocate_hdStub -> _hd<C1X0, C1X1> (size=0x10)
    // 0x7e6918: mov             x3, x0
    // 0x7e691c: ldur            x0, [fp, #-0x18]
    // 0x7e6920: stur            x3, [fp, #-0x20]
    // 0x7e6924: StoreField: r3->field_b = r0
    //     0x7e6924: stur            w0, [x3, #0xb]
    // 0x7e6928: ldur            x2, [fp, #-0x10]
    // 0x7e692c: r1 = Function '<anonymous closure>':.
    //     0x7e692c: ldr             x1, [PP, #0x7730]  ; [pp+0x7730] AnonymousClosure: (0x74318c), in [kJi] LJa::<anonymous closure> (0x7e620c)
    // 0x7e6930: r0 = AllocateClosure()
    //     0x7e6930: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e6934: r16 = <Future<void?>>
    //     0x7e6934: ldr             x16, [PP, #0x2f48]  ; [pp+0x2f48] TypeArguments: <Future<void?>>
    // 0x7e6938: ldur            lr, [fp, #-0x20]
    // 0x7e693c: stp             lr, x16, [SP, #8]
    // 0x7e6940: str             x0, [SP]
    // 0x7e6944: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e6944: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e6948: r0 = call 0x34ab1c
    //     0x7e6948: bl              #0x34ab1c
    // 0x7e694c: r16 = <void?>
    //     0x7e694c: ldr             x16, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    // 0x7e6950: stp             x0, x16, [SP]
    // 0x7e6954: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e6954: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e6958: r0 = __unknown_function__()
    //     0x7e6958: bl              #0x74c280  ; [] ::__unknown_function__
    // 0x7e695c: mov             x1, x0
    // 0x7e6960: stur            x1, [fp, #-0x18]
    // 0x7e6964: r0 = Await()
    //     0x7e6964: bl              #0x74ab64  ; AwaitStub
    // 0x7e6968: r1 = Null
    //     0x7e6968: mov             x1, NULL
    // 0x7e696c: r2 = 80
    //     0x7e696c: movz            x2, #0x50
    // 0x7e6970: r0 = AllocateArray()
    //     0x7e6970: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e6974: r16 = "pause"
    //     0x7e6974: ldr             x16, [PP, #0x7608]  ; [pp+0x7608] "pause"
    // 0x7e6978: StoreField: r0->field_f = r16
    //     0x7e6978: stur            w16, [x0, #0xf]
    // 0x7e697c: r16 = 6
    //     0x7e697c: movz            x16, #0x6
    // 0x7e6980: StoreField: r0->field_13 = r16
    //     0x7e6980: stur            w16, [x0, #0x13]
    // 0x7e6984: r16 = "time-pos"
    //     0x7e6984: ldr             x16, [PP, #0x7738]  ; [pp+0x7738] "time-pos"
    // 0x7e6988: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e6988: stur            w16, [x0, #0x17]
    // 0x7e698c: r16 = 10
    //     0x7e698c: movz            x16, #0xa
    // 0x7e6990: StoreField: r0->field_1b = r16
    //     0x7e6990: stur            w16, [x0, #0x1b]
    // 0x7e6994: r16 = "duration"
    //     0x7e6994: ldr             x16, [PP, #0x7740]  ; [pp+0x7740] "duration"
    // 0x7e6998: StoreField: r0->field_1f = r16
    //     0x7e6998: stur            w16, [x0, #0x1f]
    // 0x7e699c: r16 = 10
    //     0x7e699c: movz            x16, #0xa
    // 0x7e69a0: StoreField: r0->field_23 = r16
    //     0x7e69a0: stur            w16, [x0, #0x23]
    // 0x7e69a4: r16 = "playlist-playing-pos"
    //     0x7e69a4: ldr             x16, [PP, #0x7748]  ; [pp+0x7748] "playlist-playing-pos"
    // 0x7e69a8: StoreField: r0->field_27 = r16
    //     0x7e69a8: stur            w16, [x0, #0x27]
    // 0x7e69ac: r16 = 8
    //     0x7e69ac: movz            x16, #0x8
    // 0x7e69b0: StoreField: r0->field_2b = r16
    //     0x7e69b0: stur            w16, [x0, #0x2b]
    // 0x7e69b4: r16 = "volume"
    //     0x7e69b4: ldr             x16, [PP, #0x7750]  ; [pp+0x7750] "volume"
    // 0x7e69b8: StoreField: r0->field_2f = r16
    //     0x7e69b8: stur            w16, [x0, #0x2f]
    // 0x7e69bc: r16 = 10
    //     0x7e69bc: movz            x16, #0xa
    // 0x7e69c0: StoreField: r0->field_33 = r16
    //     0x7e69c0: stur            w16, [x0, #0x33]
    // 0x7e69c4: r16 = "speed"
    //     0x7e69c4: ldr             x16, [PP, #0x7758]  ; [pp+0x7758] "speed"
    // 0x7e69c8: StoreField: r0->field_37 = r16
    //     0x7e69c8: stur            w16, [x0, #0x37]
    // 0x7e69cc: r16 = 10
    //     0x7e69cc: movz            x16, #0xa
    // 0x7e69d0: StoreField: r0->field_3b = r16
    //     0x7e69d0: stur            w16, [x0, #0x3b]
    // 0x7e69d4: r16 = "core-idle"
    //     0x7e69d4: ldr             x16, [PP, #0x7760]  ; [pp+0x7760] "core-idle"
    // 0x7e69d8: StoreField: r0->field_3f = r16
    //     0x7e69d8: stur            w16, [x0, #0x3f]
    // 0x7e69dc: r16 = 6
    //     0x7e69dc: movz            x16, #0x6
    // 0x7e69e0: StoreField: r0->field_43 = r16
    //     0x7e69e0: stur            w16, [x0, #0x43]
    // 0x7e69e4: r16 = "paused-for-cache"
    //     0x7e69e4: ldr             x16, [PP, #0x7768]  ; [pp+0x7768] "paused-for-cache"
    // 0x7e69e8: StoreField: r0->field_47 = r16
    //     0x7e69e8: stur            w16, [x0, #0x47]
    // 0x7e69ec: r16 = 6
    //     0x7e69ec: movz            x16, #0x6
    // 0x7e69f0: StoreField: r0->field_4b = r16
    //     0x7e69f0: stur            w16, [x0, #0x4b]
    // 0x7e69f4: r16 = "demuxer-cache-time"
    //     0x7e69f4: ldr             x16, [PP, #0x7770]  ; [pp+0x7770] "demuxer-cache-time"
    // 0x7e69f8: StoreField: r0->field_4f = r16
    //     0x7e69f8: stur            w16, [x0, #0x4f]
    // 0x7e69fc: r16 = 10
    //     0x7e69fc: movz            x16, #0xa
    // 0x7e6a00: StoreField: r0->field_53 = r16
    //     0x7e6a00: stur            w16, [x0, #0x53]
    // 0x7e6a04: r16 = "cache-buffering-state"
    //     0x7e6a04: ldr             x16, [PP, #0x7778]  ; [pp+0x7778] "cache-buffering-state"
    // 0x7e6a08: StoreField: r0->field_57 = r16
    //     0x7e6a08: stur            w16, [x0, #0x57]
    // 0x7e6a0c: r16 = 10
    //     0x7e6a0c: movz            x16, #0xa
    // 0x7e6a10: StoreField: r0->field_5b = r16
    //     0x7e6a10: stur            w16, [x0, #0x5b]
    // 0x7e6a14: r16 = "audio-params"
    //     0x7e6a14: ldr             x16, [PP, #0x7780]  ; [pp+0x7780] "audio-params"
    // 0x7e6a18: StoreField: r0->field_5f = r16
    //     0x7e6a18: stur            w16, [x0, #0x5f]
    // 0x7e6a1c: r16 = 12
    //     0x7e6a1c: movz            x16, #0xc
    // 0x7e6a20: StoreField: r0->field_63 = r16
    //     0x7e6a20: stur            w16, [x0, #0x63]
    // 0x7e6a24: r16 = "audio-bitrate"
    //     0x7e6a24: ldr             x16, [PP, #0x7788]  ; [pp+0x7788] "audio-bitrate"
    // 0x7e6a28: StoreField: r0->field_67 = r16
    //     0x7e6a28: stur            w16, [x0, #0x67]
    // 0x7e6a2c: r16 = 10
    //     0x7e6a2c: movz            x16, #0xa
    // 0x7e6a30: StoreField: r0->field_6b = r16
    //     0x7e6a30: stur            w16, [x0, #0x6b]
    // 0x7e6a34: r16 = "audio-device"
    //     0x7e6a34: ldr             x16, [PP, #0x7790]  ; [pp+0x7790] "audio-device"
    // 0x7e6a38: StoreField: r0->field_6f = r16
    //     0x7e6a38: stur            w16, [x0, #0x6f]
    // 0x7e6a3c: r16 = 12
    //     0x7e6a3c: movz            x16, #0xc
    // 0x7e6a40: StoreField: r0->field_73 = r16
    //     0x7e6a40: stur            w16, [x0, #0x73]
    // 0x7e6a44: r16 = "audio-device-list"
    //     0x7e6a44: ldr             x16, [PP, #0x7798]  ; [pp+0x7798] "audio-device-list"
    // 0x7e6a48: StoreField: r0->field_77 = r16
    //     0x7e6a48: stur            w16, [x0, #0x77]
    // 0x7e6a4c: r16 = 12
    //     0x7e6a4c: movz            x16, #0xc
    // 0x7e6a50: StoreField: r0->field_7b = r16
    //     0x7e6a50: stur            w16, [x0, #0x7b]
    // 0x7e6a54: r16 = "video-params"
    //     0x7e6a54: ldr             x16, [PP, #0x77a0]  ; [pp+0x77a0] "video-params"
    // 0x7e6a58: StoreField: r0->field_7f = r16
    //     0x7e6a58: stur            w16, [x0, #0x7f]
    // 0x7e6a5c: r16 = 12
    //     0x7e6a5c: movz            x16, #0xc
    // 0x7e6a60: StoreField: r0->field_83 = r16
    //     0x7e6a60: stur            w16, [x0, #0x83]
    // 0x7e6a64: r16 = "track-list"
    //     0x7e6a64: ldr             x16, [PP, #0x77a8]  ; [pp+0x77a8] "track-list"
    // 0x7e6a68: StoreField: r0->field_87 = r16
    //     0x7e6a68: stur            w16, [x0, #0x87]
    // 0x7e6a6c: r16 = 12
    //     0x7e6a6c: movz            x16, #0xc
    // 0x7e6a70: StoreField: r0->field_8b = r16
    //     0x7e6a70: stur            w16, [x0, #0x8b]
    // 0x7e6a74: r16 = "eof-reached"
    //     0x7e6a74: ldr             x16, [PP, #0x77b0]  ; [pp+0x77b0] "eof-reached"
    // 0x7e6a78: StoreField: r0->field_8f = r16
    //     0x7e6a78: stur            w16, [x0, #0x8f]
    // 0x7e6a7c: r16 = 6
    //     0x7e6a7c: movz            x16, #0x6
    // 0x7e6a80: StoreField: r0->field_93 = r16
    //     0x7e6a80: stur            w16, [x0, #0x93]
    // 0x7e6a84: r16 = "idle-active"
    //     0x7e6a84: ldr             x16, [PP, #0x77b8]  ; [pp+0x77b8] "idle-active"
    // 0x7e6a88: StoreField: r0->field_97 = r16
    //     0x7e6a88: stur            w16, [x0, #0x97]
    // 0x7e6a8c: r16 = 6
    //     0x7e6a8c: movz            x16, #0x6
    // 0x7e6a90: StoreField: r0->field_9b = r16
    //     0x7e6a90: stur            w16, [x0, #0x9b]
    // 0x7e6a94: r16 = "sub-text"
    //     0x7e6a94: ldr             x16, [PP, #0x77c0]  ; [pp+0x77c0] "sub-text"
    // 0x7e6a98: StoreField: r0->field_9f = r16
    //     0x7e6a98: stur            w16, [x0, #0x9f]
    // 0x7e6a9c: r16 = 12
    //     0x7e6a9c: movz            x16, #0xc
    // 0x7e6aa0: StoreField: r0->field_a3 = r16
    //     0x7e6aa0: stur            w16, [x0, #0xa3]
    // 0x7e6aa4: r16 = "secondary-sub-text"
    //     0x7e6aa4: ldr             x16, [PP, #0x77c8]  ; [pp+0x77c8] "secondary-sub-text"
    // 0x7e6aa8: StoreField: r0->field_a7 = r16
    //     0x7e6aa8: stur            w16, [x0, #0xa7]
    // 0x7e6aac: r16 = 12
    //     0x7e6aac: movz            x16, #0xc
    // 0x7e6ab0: StoreField: r0->field_ab = r16
    //     0x7e6ab0: stur            w16, [x0, #0xab]
    // 0x7e6ab4: r16 = <String, int>
    //     0x7e6ab4: ldr             x16, [PP, #0x620]  ; [pp+0x620] TypeArguments: <String, int>
    // 0x7e6ab8: stp             x0, x16, [SP]
    // 0x7e6abc: r0 = Map._fromLiteral()
    //     0x7e6abc: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e6ac0: ldur            x2, [fp, #-0x10]
    // 0x7e6ac4: r1 = Function '<anonymous closure>':.
    //     0x7e6ac4: ldr             x1, [PP, #0x77d0]  ; [pp+0x77d0] AnonymousClosure: (0x742f34), in [kJi] LJa::<anonymous closure> (0x7e620c)
    // 0x7e6ac8: stur            x0, [fp, #-0x18]
    // 0x7e6acc: r0 = AllocateClosure()
    //     0x7e6acc: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e6ad0: ldur            x1, [fp, #-0x18]
    // 0x7e6ad4: mov             x2, x0
    // 0x7e6ad8: r0 = call 0x7195dc
    //     0x7e6ad8: bl              #0x7195dc
    // 0x7e6adc: r1 = Null
    //     0x7e6adc: mov             x1, NULL
    // 0x7e6ae0: r2 = 24
    //     0x7e6ae0: movz            x2, #0x18
    // 0x7e6ae4: r0 = AllocateArray()
    //     0x7e6ae4: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e6ae8: r16 = Instance_UJa
    //     0x7e6ae8: ldr             x16, [PP, #0x77d8]  ; [pp+0x77d8] Obj!UJa@450131
    // 0x7e6aec: StoreField: r0->field_f = r16
    //     0x7e6aec: stur            w16, [x0, #0xf]
    // 0x7e6af0: r16 = "error"
    //     0x7e6af0: ldr             x16, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7e6af4: StoreField: r0->field_13 = r16
    //     0x7e6af4: stur            w16, [x0, #0x13]
    // 0x7e6af8: r16 = Instance_UJa
    //     0x7e6af8: ldr             x16, [PP, #0x77e0]  ; [pp+0x77e0] Obj!UJa@450111
    // 0x7e6afc: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e6afc: stur            w16, [x0, #0x17]
    // 0x7e6b00: r16 = "warn"
    //     0x7e6b00: ldr             x16, [PP, #0x77e8]  ; [pp+0x77e8] "warn"
    // 0x7e6b04: StoreField: r0->field_1b = r16
    //     0x7e6b04: stur            w16, [x0, #0x1b]
    // 0x7e6b08: r16 = Instance_UJa
    //     0x7e6b08: ldr             x16, [PP, #0x77f0]  ; [pp+0x77f0] Obj!UJa@4500f1
    // 0x7e6b0c: StoreField: r0->field_1f = r16
    //     0x7e6b0c: stur            w16, [x0, #0x1f]
    // 0x7e6b10: r16 = "info"
    //     0x7e6b10: ldr             x16, [PP, #0x77f8]  ; [pp+0x77f8] "info"
    // 0x7e6b14: StoreField: r0->field_23 = r16
    //     0x7e6b14: stur            w16, [x0, #0x23]
    // 0x7e6b18: r16 = Instance_UJa
    //     0x7e6b18: ldr             x16, [PP, #0x7800]  ; [pp+0x7800] Obj!UJa@4500d1
    // 0x7e6b1c: StoreField: r0->field_27 = r16
    //     0x7e6b1c: stur            w16, [x0, #0x27]
    // 0x7e6b20: r16 = "v"
    //     0x7e6b20: ldr             x16, [PP, #0x7808]  ; [pp+0x7808] "v"
    // 0x7e6b24: StoreField: r0->field_2b = r16
    //     0x7e6b24: stur            w16, [x0, #0x2b]
    // 0x7e6b28: r16 = Instance_UJa
    //     0x7e6b28: ldr             x16, [PP, #0x7810]  ; [pp+0x7810] Obj!UJa@4500b1
    // 0x7e6b2c: StoreField: r0->field_2f = r16
    //     0x7e6b2c: stur            w16, [x0, #0x2f]
    // 0x7e6b30: r16 = "debug"
    //     0x7e6b30: ldr             x16, [PP, #0x7818]  ; [pp+0x7818] "debug"
    // 0x7e6b34: StoreField: r0->field_33 = r16
    //     0x7e6b34: stur            w16, [x0, #0x33]
    // 0x7e6b38: r16 = Instance_UJa
    //     0x7e6b38: ldr             x16, [PP, #0x7820]  ; [pp+0x7820] Obj!UJa@450091
    // 0x7e6b3c: StoreField: r0->field_37 = r16
    //     0x7e6b3c: stur            w16, [x0, #0x37]
    // 0x7e6b40: r16 = "trace"
    //     0x7e6b40: ldr             x16, [PP, #0x7828]  ; [pp+0x7828] "trace"
    // 0x7e6b44: StoreField: r0->field_3b = r16
    //     0x7e6b44: stur            w16, [x0, #0x3b]
    // 0x7e6b48: r16 = <UJa, String>
    //     0x7e6b48: ldr             x16, [PP, #0x7830]  ; [pp+0x7830] TypeArguments: <UJa, String>
    // 0x7e6b4c: stp             x0, x16, [SP]
    // 0x7e6b50: r0 = Map._fromLiteral()
    //     0x7e6b50: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e6b54: mov             x1, x0
    // 0x7e6b58: r2 = Instance_UJa
    //     0x7e6b58: ldr             x2, [PP, #0x77d8]  ; [pp+0x77d8] Obj!UJa@450131
    // 0x7e6b5c: stur            x0, [fp, #-0x18]
    // 0x7e6b60: r0 = call 0x723250
    //     0x7e6b60: bl              #0x723250
    // 0x7e6b64: mov             x1, x0
    // 0x7e6b68: ldur            x0, [fp, #-0x18]
    // 0x7e6b6c: LoadField: r2 = r0->field_f
    //     0x7e6b6c: ldur            w2, [x0, #0xf]
    // 0x7e6b70: DecompressPointer r2
    //     0x7e6b70: add             x2, x2, HEAP, lsl #32
    // 0x7e6b74: cmp             w2, w1
    // 0x7e6b78: b.ne            #0x7e6b80
    // 0x7e6b7c: r1 = Null
    //     0x7e6b7c: mov             x1, NULL
    // 0x7e6b80: cmp             w1, NULL
    // 0x7e6b84: b.eq            #0x7e6be8
    // 0x7e6b88: ldur            x0, [fp, #-0x10]
    // 0x7e6b8c: r0 = call 0x252880
    //     0x7e6b8c: bl              #0x252880
    // 0x7e6b90: mov             x1, x0
    // 0x7e6b94: ldur            x0, [fp, #-0x10]
    // 0x7e6b98: stur            x1, [fp, #-0x28]
    // 0x7e6b9c: LoadField: r2 = r0->field_f
    //     0x7e6b9c: ldur            w2, [x0, #0xf]
    // 0x7e6ba0: DecompressPointer r2
    //     0x7e6ba0: add             x2, x2, HEAP, lsl #32
    // 0x7e6ba4: LoadField: r3 = r2->field_97
    //     0x7e6ba4: ldur            w3, [x2, #0x97]
    // 0x7e6ba8: DecompressPointer r3
    //     0x7e6ba8: add             x3, x3, HEAP, lsl #32
    // 0x7e6bac: stur            x3, [fp, #-0x20]
    // 0x7e6bb0: LoadField: r4 = r2->field_9b
    //     0x7e6bb0: ldur            w4, [x2, #0x9b]
    // 0x7e6bb4: DecompressPointer r4
    //     0x7e6bb4: add             x4, x4, HEAP, lsl #32
    // 0x7e6bb8: stur            x4, [fp, #-0x18]
    // 0x7e6bbc: r16 = <Int8>
    //     0x7e6bbc: ldr             x16, [PP, #0x7078]  ; [pp+0x7078] TypeArguments: <Int8>
    // 0x7e6bc0: stp             x1, x16, [SP]
    // 0x7e6bc4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e6bc4: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e6bc8: r0 = call 0x252c48
    //     0x7e6bc8: bl              #0x252c48
    // 0x7e6bcc: ldur            x1, [fp, #-0x20]
    // 0x7e6bd0: ldur            x2, [fp, #-0x18]
    // 0x7e6bd4: mov             x3, x0
    // 0x7e6bd8: r0 = call 0x73f630
    //     0x7e6bd8: bl              #0x73f630
    // 0x7e6bdc: ldur            x2, [fp, #-0x28]
    // 0x7e6be0: r1 = Instance__dJa
    //     0x7e6be0: ldr             x1, [PP, #0x6db0]  ; [pp+0x6db0] Obj!_dJa@440cd1
    // 0x7e6be4: r0 = call 0x251558
    //     0x7e6be4: bl              #0x251558
    // 0x7e6be8: ldur            x0, [fp, #-0x10]
    // 0x7e6bec: r1 = "on_load"
    //     0x7e6bec: ldr             x1, [PP, #0x7838]  ; [pp+0x7838] "on_load"
    // 0x7e6bf0: r0 = call 0x252880
    //     0x7e6bf0: bl              #0x252880
    // 0x7e6bf4: r1 = "on_unload"
    //     0x7e6bf4: ldr             x1, [PP, #0x7840]  ; [pp+0x7840] "on_unload"
    // 0x7e6bf8: stur            x0, [fp, #-0x18]
    // 0x7e6bfc: r0 = call 0x252880
    //     0x7e6bfc: bl              #0x252880
    // 0x7e6c00: mov             x1, x0
    // 0x7e6c04: ldur            x0, [fp, #-0x10]
    // 0x7e6c08: stur            x1, [fp, #-0x30]
    // 0x7e6c0c: LoadField: r2 = r0->field_f
    //     0x7e6c0c: ldur            w2, [x0, #0xf]
    // 0x7e6c10: DecompressPointer r2
    //     0x7e6c10: add             x2, x2, HEAP, lsl #32
    // 0x7e6c14: LoadField: r3 = r2->field_97
    //     0x7e6c14: ldur            w3, [x2, #0x97]
    // 0x7e6c18: DecompressPointer r3
    //     0x7e6c18: add             x3, x3, HEAP, lsl #32
    // 0x7e6c1c: stur            x3, [fp, #-0x28]
    // 0x7e6c20: LoadField: r4 = r2->field_9b
    //     0x7e6c20: ldur            w4, [x2, #0x9b]
    // 0x7e6c24: DecompressPointer r4
    //     0x7e6c24: add             x4, x4, HEAP, lsl #32
    // 0x7e6c28: stur            x4, [fp, #-0x20]
    // 0x7e6c2c: r16 = <Int8>
    //     0x7e6c2c: ldr             x16, [PP, #0x7078]  ; [pp+0x7078] TypeArguments: <Int8>
    // 0x7e6c30: ldur            lr, [fp, #-0x18]
    // 0x7e6c34: stp             lr, x16, [SP]
    // 0x7e6c38: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e6c38: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e6c3c: r0 = call 0x252c48
    //     0x7e6c3c: bl              #0x252c48
    // 0x7e6c40: ldur            x1, [fp, #-0x28]
    // 0x7e6c44: ldur            x2, [fp, #-0x20]
    // 0x7e6c48: mov             x3, x0
    // 0x7e6c4c: r0 = call 0x73f3b8
    //     0x7e6c4c: bl              #0x73f3b8
    // 0x7e6c50: ldur            x0, [fp, #-0x10]
    // 0x7e6c54: LoadField: r1 = r0->field_f
    //     0x7e6c54: ldur            w1, [x0, #0xf]
    // 0x7e6c58: DecompressPointer r1
    //     0x7e6c58: add             x1, x1, HEAP, lsl #32
    // 0x7e6c5c: LoadField: r2 = r1->field_97
    //     0x7e6c5c: ldur            w2, [x1, #0x97]
    // 0x7e6c60: DecompressPointer r2
    //     0x7e6c60: add             x2, x2, HEAP, lsl #32
    // 0x7e6c64: stur            x2, [fp, #-0x28]
    // 0x7e6c68: LoadField: r3 = r1->field_9b
    //     0x7e6c68: ldur            w3, [x1, #0x9b]
    // 0x7e6c6c: DecompressPointer r3
    //     0x7e6c6c: add             x3, x3, HEAP, lsl #32
    // 0x7e6c70: stur            x3, [fp, #-0x20]
    // 0x7e6c74: r16 = <Int8>
    //     0x7e6c74: ldr             x16, [PP, #0x7078]  ; [pp+0x7078] TypeArguments: <Int8>
    // 0x7e6c78: ldur            lr, [fp, #-0x30]
    // 0x7e6c7c: stp             lr, x16, [SP]
    // 0x7e6c80: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e6c80: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e6c84: r0 = call 0x252c48
    //     0x7e6c84: bl              #0x252c48
    // 0x7e6c88: ldur            x1, [fp, #-0x28]
    // 0x7e6c8c: ldur            x2, [fp, #-0x20]
    // 0x7e6c90: mov             x3, x0
    // 0x7e6c94: r0 = call 0x73f3b8
    //     0x7e6c94: bl              #0x73f3b8
    // 0x7e6c98: ldur            x2, [fp, #-0x18]
    // 0x7e6c9c: r1 = Instance__dJa
    //     0x7e6c9c: ldr             x1, [PP, #0x6db0]  ; [pp+0x6db0] Obj!_dJa@440cd1
    // 0x7e6ca0: r0 = call 0x251558
    //     0x7e6ca0: bl              #0x251558
    // 0x7e6ca4: ldur            x2, [fp, #-0x30]
    // 0x7e6ca8: r1 = Instance__dJa
    //     0x7e6ca8: ldr             x1, [PP, #0x6db0]  ; [pp+0x6db0] Obj!_dJa@440cd1
    // 0x7e6cac: r0 = call 0x251558
    //     0x7e6cac: bl              #0x251558
    // 0x7e6cb0: r0 = LoadStaticField(0x115c)
    //     0x7e6cb0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e6cb4: ldr             x0, [x0, #0x22b8]
    // 0x7e6cb8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e6cbc: cmp             w0, w16
    // 0x7e6cc0: b.ne            #0x7e6ccc
    // 0x7e6cc4: r2 = toc
    //     0x7e6cc4: ldr             x2, [PP, #0x7848]  ; [pp+0x7848] Field <RJa.toc>: static late final (offset: 0x115c)
    // 0x7e6cc8: r0 = InitLateFinalStaticField()
    //     0x7e6cc8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7e6ccc: mov             x1, x0
    // 0x7e6cd0: r0 = __unknown_function__()
    //     0x7e6cd0: bl              #0x7d8dec  ; [] ::__unknown_function__
    // 0x7e6cd4: mov             x1, x0
    // 0x7e6cd8: stur            x1, [fp, #-0x18]
    // 0x7e6cdc: r0 = Await()
    //     0x7e6cdc: bl              #0x74ab64  ; AwaitStub
    // 0x7e6ce0: r0 = Null
    //     0x7e6ce0: mov             x0, NULL
    // 0x7e6ce4: r0 = ReturnAsyncNotFuture()
    //     0x7e6ce4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e6ce8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e6ce8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e6cec: b               #0x7e6240
  }
  [closure] Null <anonymous closure>(dynamic, void) {
    // ** addr: 0x7efae0, size: 0x24
    // 0x7efae0: EnterFrame
    //     0x7efae0: stp             fp, lr, [SP, #-0x10]!
    //     0x7efae4: mov             fp, SP
    // 0x7efae8: AllocStack(0x40)
    //     0x7efae8: sub             SP, SP, #0x40
    // 0x7efaec: b               #0x7efaf4
    // 0x7efaf0: sub             SP, fp, #0x40
    // 0x7efaf4: r0 = Null
    //     0x7efaf4: mov             x0, NULL
    // 0x7efaf8: LeaveFrame
    //     0x7efaf8: mov             SP, fp
    //     0x7efafc: ldp             fp, lr, [SP], #0x10
    // 0x7efb00: ret
    //     0x7efb00: ret             
  }
  [closure] Pointer<QL> <anonymous closure>(dynamic, String) {
    // ** addr: 0x49a668, size: -0x1
  }
  [closure] Future<void> _handler(dynamic, Pointer<mJa>) {
    // ** addr: 0x7431e4, size: -0x1
  }
  [closure] Future<void> <anonymous closure>(dynamic, Da<String, String>) {
    // ** addr: 0x74318c, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, String, int) {
    // ** addr: 0x742f34, size: -0x1
  }
  [closure] bool <anonymous closure>(dynamic, qJa) {
    // ** addr: 0x49aa0c, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x49a9c4, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x5b2ba0, size: -0x1
  }
}

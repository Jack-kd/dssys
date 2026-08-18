// lib: , url: KJi

// class id: 1049375, size: 0x8
class :: {
}

// class id: 776, size: 0x28, field offset: 0x1c
class PKa extends QKa {

  static late final W<int, PKa> _jfg; // offset: 0x1170
  static late final MethodChannel _jxd; // offset: 0x1174

  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e4c00, size: 0x620
    // 0x7e4c00: EnterFrame
    //     0x7e4c00: stp             fp, lr, [SP, #-0x10]!
    //     0x7e4c04: mov             fp, SP
    // 0x7e4c08: AllocStack(0x70)
    //     0x7e4c08: sub             SP, SP, #0x70
    // 0x7e4c0c: SetupParameters(PKa this /* r1 */)
    //     0x7e4c0c: stur            NULL, [fp, #-8]
    //     0x7e4c10: movz            x0, #0
    //     0x7e4c14: add             x1, fp, w0, sxtw #2
    //     0x7e4c18: ldr             x1, [x1, #0x10]
    //     0x7e4c1c: ldur            w2, [x1, #0x17]
    //     0x7e4c20: add             x2, x2, HEAP, lsl #32
    //     0x7e4c24: stur            x2, [fp, #-0x10]
    // 0x7e4c28: CheckStackOverflow
    //     0x7e4c28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e4c2c: cmp             SP, x16
    //     0x7e4c30: b.ls            #0x7e5194
    // 0x7e4c34: InitAsync() -> Future<Null?>
    //     0x7e4c34: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7e4c38: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e4c3c: ldur            x2, [fp, #-0x10]
    // 0x7e4c40: LoadField: r0 = r2->field_f
    //     0x7e4c40: ldur            w0, [x2, #0xf]
    // 0x7e4c44: DecompressPointer r0
    //     0x7e4c44: add             x0, x0, HEAP, lsl #32
    // 0x7e4c48: LoadField: r1 = r0->field_43
    //     0x7e4c48: ldur            w1, [x0, #0x43]
    // 0x7e4c4c: DecompressPointer r1
    //     0x7e4c4c: add             x1, x1, HEAP, lsl #32
    // 0x7e4c50: cbz             w1, #0x7e4c5c
    // 0x7e4c54: cmp             w1, #0x168
    // 0x7e4c58: b.ne            #0x7e4cb4
    // 0x7e4c5c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e4c5c: ldur            w1, [x0, #0x17]
    // 0x7e4c60: DecompressPointer r1
    //     0x7e4c60: add             x1, x1, HEAP, lsl #32
    // 0x7e4c64: cmp             w1, NULL
    // 0x7e4c68: b.ne            #0x7e4c74
    // 0x7e4c6c: r1 = 0
    //     0x7e4c6c: movz            x1, #0
    // 0x7e4c70: b               #0x7e4c84
    // 0x7e4c74: r3 = LoadInt32Instr(r1)
    //     0x7e4c74: sbfx            x3, x1, #1, #0x1f
    //     0x7e4c78: tbz             w1, #0, #0x7e4c80
    //     0x7e4c7c: ldur            x3, [x1, #7]
    // 0x7e4c80: mov             x1, x3
    // 0x7e4c84: LoadField: r3 = r0->field_1b
    //     0x7e4c84: ldur            w3, [x0, #0x1b]
    // 0x7e4c88: DecompressPointer r3
    //     0x7e4c88: add             x3, x3, HEAP, lsl #32
    // 0x7e4c8c: cmp             w3, NULL
    // 0x7e4c90: b.ne            #0x7e4c9c
    // 0x7e4c94: r0 = 0
    //     0x7e4c94: movz            x0, #0
    // 0x7e4c98: b               #0x7e4ca8
    // 0x7e4c9c: r0 = LoadInt32Instr(r3)
    //     0x7e4c9c: sbfx            x0, x3, #1, #0x1f
    //     0x7e4ca0: tbz             w3, #0, #0x7e4ca8
    //     0x7e4ca4: ldur            x0, [x3, #7]
    // 0x7e4ca8: mov             x4, x1
    // 0x7e4cac: mov             x3, x0
    // 0x7e4cb0: b               #0x7e4d08
    // 0x7e4cb4: LoadField: r1 = r0->field_1b
    //     0x7e4cb4: ldur            w1, [x0, #0x1b]
    // 0x7e4cb8: DecompressPointer r1
    //     0x7e4cb8: add             x1, x1, HEAP, lsl #32
    // 0x7e4cbc: cmp             w1, NULL
    // 0x7e4cc0: b.ne            #0x7e4ccc
    // 0x7e4cc4: r1 = 0
    //     0x7e4cc4: movz            x1, #0
    // 0x7e4cc8: b               #0x7e4cdc
    // 0x7e4ccc: r3 = LoadInt32Instr(r1)
    //     0x7e4ccc: sbfx            x3, x1, #1, #0x1f
    //     0x7e4cd0: tbz             w1, #0, #0x7e4cd8
    //     0x7e4cd4: ldur            x3, [x1, #7]
    // 0x7e4cd8: mov             x1, x3
    // 0x7e4cdc: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7e4cdc: ldur            w3, [x0, #0x17]
    // 0x7e4ce0: DecompressPointer r3
    //     0x7e4ce0: add             x3, x3, HEAP, lsl #32
    // 0x7e4ce4: cmp             w3, NULL
    // 0x7e4ce8: b.ne            #0x7e4cf4
    // 0x7e4cec: r0 = 0
    //     0x7e4cec: movz            x0, #0
    // 0x7e4cf0: b               #0x7e4d00
    // 0x7e4cf4: r0 = LoadInt32Instr(r3)
    //     0x7e4cf4: sbfx            x0, x3, #1, #0x1f
    //     0x7e4cf8: tbz             w3, #0, #0x7e4d00
    //     0x7e4cfc: ldur            x0, [x3, #7]
    // 0x7e4d00: mov             x4, x1
    // 0x7e4d04: mov             x3, x0
    // 0x7e4d08: stur            x4, [fp, #-0x28]
    // 0x7e4d0c: stur            x3, [fp, #-0x30]
    // 0x7e4d10: cbnz            x4, #0x7e4d1c
    // 0x7e4d14: r5 = true
    //     0x7e4d14: add             x5, NULL, #0x20  ; true
    // 0x7e4d18: b               #0x7e4d30
    // 0x7e4d1c: cbz             x3, #0x7e4d28
    // 0x7e4d20: r0 = false
    //     0x7e4d20: add             x0, NULL, #0x30  ; false
    // 0x7e4d24: b               #0x7e4d2c
    // 0x7e4d28: r0 = true
    //     0x7e4d28: add             x0, NULL, #0x20  ; true
    // 0x7e4d2c: mov             x5, x0
    // 0x7e4d30: LoadField: r6 = r2->field_b
    //     0x7e4d30: ldur            w6, [x2, #0xb]
    // 0x7e4d34: DecompressPointer r6
    //     0x7e4d34: add             x6, x6, HEAP, lsl #32
    // 0x7e4d38: stur            x6, [fp, #-0x20]
    // 0x7e4d3c: LoadField: r7 = r6->field_f
    //     0x7e4d3c: ldur            w7, [x6, #0xf]
    // 0x7e4d40: DecompressPointer r7
    //     0x7e4d40: add             x7, x7, HEAP, lsl #32
    // 0x7e4d44: LoadField: r0 = r7->field_13
    //     0x7e4d44: ldur            w0, [x7, #0x13]
    // 0x7e4d48: DecompressPointer r0
    //     0x7e4d48: add             x0, x0, HEAP, lsl #32
    // 0x7e4d4c: LoadField: r8 = r0->field_27
    //     0x7e4d4c: ldur            w8, [x0, #0x27]
    // 0x7e4d50: DecompressPointer r8
    //     0x7e4d50: add             x8, x8, HEAP, lsl #32
    // 0x7e4d54: cmp             w8, NULL
    // 0x7e4d58: b.ne            #0x7e4d64
    // 0x7e4d5c: r9 = Null
    //     0x7e4d5c: mov             x9, NULL
    // 0x7e4d60: b               #0x7e4d90
    // 0x7e4d64: ArrayLoad: d0 = r8[0]  ; List_8
    //     0x7e4d64: ldur            d0, [x8, #0x17]
    // 0x7e4d68: LoadField: d1 = r8->field_7
    //     0x7e4d68: ldur            d1, [x8, #7]
    // 0x7e4d6c: fsub            d2, d0, d1
    // 0x7e4d70: fcmp            d2, d2
    // 0x7e4d74: b.vs            #0x7e519c
    // 0x7e4d78: fcvtzs          x0, d2
    // 0x7e4d7c: asr             x16, x0, #0x1e
    // 0x7e4d80: cmp             x16, x0, asr #63
    // 0x7e4d84: b.ne            #0x7e519c
    // 0x7e4d88: lsl             x0, x0, #1
    // 0x7e4d8c: mov             x9, x0
    // 0x7e4d90: r0 = BoxInt64Instr(r4)
    //     0x7e4d90: sbfiz           x0, x4, #1, #0x1f
    //     0x7e4d94: cmp             x4, x0, asr #1
    //     0x7e4d98: b.eq            #0x7e4da4
    //     0x7e4d9c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e4da0: stur            x4, [x0, #7]
    // 0x7e4da4: mov             x10, x0
    // 0x7e4da8: stur            x10, [fp, #-0x18]
    // 0x7e4dac: cmp             w10, w9
    // 0x7e4db0: b.eq            #0x7e4dec
    // 0x7e4db4: and             w16, w10, w9
    // 0x7e4db8: branchIfSmi(r16, 0x7e4e90)
    //     0x7e4db8: tbz             w16, #0, #0x7e4e90
    // 0x7e4dbc: r16 = LoadClassIdInstr(r10)
    //     0x7e4dbc: ldur            x16, [x10, #-1]
    //     0x7e4dc0: ubfx            x16, x16, #0xc, #0x14
    // 0x7e4dc4: cmp             x16, #0x3d
    // 0x7e4dc8: b.ne            #0x7e4e90
    // 0x7e4dcc: r16 = LoadClassIdInstr(r9)
    //     0x7e4dcc: ldur            x16, [x9, #-1]
    //     0x7e4dd0: ubfx            x16, x16, #0xc, #0x14
    // 0x7e4dd4: cmp             x16, #0x3d
    // 0x7e4dd8: b.ne            #0x7e4e90
    // 0x7e4ddc: LoadField: r16 = r10->field_7
    //     0x7e4ddc: ldur            x16, [x10, #7]
    // 0x7e4de0: LoadField: r17 = r9->field_7
    //     0x7e4de0: ldur            x17, [x9, #7]
    // 0x7e4de4: cmp             x16, x17
    // 0x7e4de8: b.ne            #0x7e4e90
    // 0x7e4dec: cmp             w8, NULL
    // 0x7e4df0: b.ne            #0x7e4dfc
    // 0x7e4df4: r8 = Null
    //     0x7e4df4: mov             x8, NULL
    // 0x7e4df8: b               #0x7e4e28
    // 0x7e4dfc: LoadField: d0 = r8->field_1f
    //     0x7e4dfc: ldur            d0, [x8, #0x1f]
    // 0x7e4e00: LoadField: d1 = r8->field_f
    //     0x7e4e00: ldur            d1, [x8, #0xf]
    // 0x7e4e04: fsub            d2, d0, d1
    // 0x7e4e08: fcmp            d2, d2
    // 0x7e4e0c: b.vs            #0x7e51dc
    // 0x7e4e10: fcvtzs          x0, d2
    // 0x7e4e14: asr             x16, x0, #0x1e
    // 0x7e4e18: cmp             x16, x0, asr #63
    // 0x7e4e1c: b.ne            #0x7e51dc
    // 0x7e4e20: lsl             x0, x0, #1
    // 0x7e4e24: mov             x8, x0
    // 0x7e4e28: r0 = BoxInt64Instr(r3)
    //     0x7e4e28: sbfiz           x0, x3, #1, #0x1f
    //     0x7e4e2c: cmp             x3, x0, asr #1
    //     0x7e4e30: b.eq            #0x7e4e3c
    //     0x7e4e34: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e4e38: stur            x3, [x0, #7]
    // 0x7e4e3c: cmp             w0, w8
    // 0x7e4e40: b.eq            #0x7e4e84
    // 0x7e4e44: and             w16, w0, w8
    // 0x7e4e48: branchIfSmi(r16, 0x7e4e7c)
    //     0x7e4e48: tbz             w16, #0, #0x7e4e7c
    // 0x7e4e4c: r16 = LoadClassIdInstr(r0)
    //     0x7e4e4c: ldur            x16, [x0, #-1]
    //     0x7e4e50: ubfx            x16, x16, #0xc, #0x14
    // 0x7e4e54: cmp             x16, #0x3d
    // 0x7e4e58: b.ne            #0x7e4e7c
    // 0x7e4e5c: r16 = LoadClassIdInstr(r8)
    //     0x7e4e5c: ldur            x16, [x8, #-1]
    //     0x7e4e60: ubfx            x16, x16, #0xc, #0x14
    // 0x7e4e64: cmp             x16, #0x3d
    // 0x7e4e68: b.ne            #0x7e4e7c
    // 0x7e4e6c: LoadField: r16 = r0->field_7
    //     0x7e4e6c: ldur            x16, [x0, #7]
    // 0x7e4e70: LoadField: r17 = r8->field_7
    //     0x7e4e70: ldur            x17, [x8, #7]
    // 0x7e4e74: cmp             x16, x17
    // 0x7e4e78: b.eq            #0x7e4e84
    // 0x7e4e7c: r1 = false
    //     0x7e4e7c: add             x1, NULL, #0x30  ; false
    // 0x7e4e80: b               #0x7e4e88
    // 0x7e4e84: r1 = true
    //     0x7e4e84: add             x1, NULL, #0x20  ; true
    // 0x7e4e88: mov             x0, x1
    // 0x7e4e8c: b               #0x7e4e94
    // 0x7e4e90: r0 = false
    //     0x7e4e90: add             x0, NULL, #0x30  ; false
    // 0x7e4e94: tbz             w5, #4, #0x7e4e9c
    // 0x7e4e98: tbnz            w0, #4, #0x7e4ea4
    // 0x7e4e9c: r0 = Null
    //     0x7e4e9c: mov             x0, NULL
    // 0x7e4ea0: r0 = ReturnAsyncNotFuture()
    //     0x7e4ea0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e4ea4: LoadField: r0 = r7->field_7
    //     0x7e4ea4: ldur            w0, [x7, #7]
    // 0x7e4ea8: DecompressPointer r0
    //     0x7e4ea8: add             x0, x0, HEAP, lsl #32
    // 0x7e4eac: LoadField: r1 = r0->field_7
    //     0x7e4eac: ldur            w1, [x0, #7]
    // 0x7e4eb0: DecompressPointer r1
    //     0x7e4eb0: add             x1, x1, HEAP, lsl #32
    // 0x7e4eb4: cmp             w1, NULL
    // 0x7e4eb8: b.ne            #0x7e4ed0
    // 0x7e4ebc: mov             x1, x3
    // 0x7e4ec0: mov             x2, x6
    // 0x7e4ec4: mov             x3, x10
    // 0x7e4ec8: r4 = Null
    //     0x7e4ec8: mov             x4, NULL
    // 0x7e4ecc: b               #0x7e4f04
    // 0x7e4ed0: r0 = LoadClassIdInstr(r1)
    //     0x7e4ed0: ldur            x0, [x1, #-1]
    //     0x7e4ed4: ubfx            x0, x0, #0xc, #0x14
    // 0x7e4ed8: cmp             x0, #0x317
    // 0x7e4edc: b.eq            #0x7e5178
    // 0x7e4ee0: r0 = LoadClassIdInstr(r1)
    //     0x7e4ee0: ldur            x0, [x1, #-1]
    //     0x7e4ee4: ubfx            x0, x0, #0xc, #0x14
    // 0x7e4ee8: r0 = GDT[cid_x0 + -0xfb7]()
    //     0x7e4ee8: sub             lr, x0, #0xfb7
    //     0x7e4eec: ldr             lr, [x21, lr, lsl #3]
    //     0x7e4ef0: blr             lr
    // 0x7e4ef4: mov             x4, x0
    // 0x7e4ef8: ldur            x1, [fp, #-0x30]
    // 0x7e4efc: ldur            x2, [fp, #-0x20]
    // 0x7e4f00: ldur            x3, [fp, #-0x18]
    // 0x7e4f04: stur            x4, [fp, #-0x38]
    // 0x7e4f08: cmp             w4, NULL
    // 0x7e4f0c: b.eq            #0x7e521c
    // 0x7e4f10: mov             x0, x4
    // 0x7e4f14: r0 = Await()
    //     0x7e4f14: bl              #0x74ab64  ; AwaitStub
    // 0x7e4f18: stur            x0, [fp, #-0x38]
    // 0x7e4f1c: r0 = LoadStaticField(0x1174)
    //     0x7e4f1c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e4f20: ldr             x0, [x0, #0x22e8]
    // 0x7e4f24: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e4f28: cmp             w0, w16
    // 0x7e4f2c: b.ne            #0x7e4f38
    // 0x7e4f30: r2 = _jxd
    //     0x7e4f30: ldr             x2, [PP, #0x6b58]  ; [pp+0x6b58] Field <PKa._jxd@1032314544>: static late final (offset: 0x1174)
    // 0x7e4f34: r0 = InitLateFinalStaticField()
    //     0x7e4f34: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7e4f38: r1 = Null
    //     0x7e4f38: mov             x1, NULL
    // 0x7e4f3c: r2 = 12
    //     0x7e4f3c: movz            x2, #0xc
    // 0x7e4f40: r0 = AllocateArray()
    //     0x7e4f40: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e4f44: mov             x1, x0
    // 0x7e4f48: stur            x1, [fp, #-0x40]
    // 0x7e4f4c: r16 = "handle"
    //     0x7e4f4c: ldr             x16, [PP, #0x6b60]  ; [pp+0x6b60] "handle"
    // 0x7e4f50: StoreField: r1->field_f = r16
    //     0x7e4f50: stur            w16, [x1, #0xf]
    // 0x7e4f54: ldur            x0, [fp, #-0x38]
    // 0x7e4f58: r2 = 60
    //     0x7e4f58: movz            x2, #0x3c
    // 0x7e4f5c: branchIfSmi(r0, 0x7e4f68)
    //     0x7e4f5c: tbz             w0, #0, #0x7e4f68
    // 0x7e4f60: r2 = LoadClassIdInstr(r0)
    //     0x7e4f60: ldur            x2, [x0, #-1]
    //     0x7e4f64: ubfx            x2, x2, #0xc, #0x14
    // 0x7e4f68: str             x0, [SP]
    // 0x7e4f6c: mov             x0, x2
    // 0x7e4f70: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e4f70: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e4f74: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e4f74: movz            x17, #0x3a5d
    //     0x7e4f78: add             lr, x0, x17
    //     0x7e4f7c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e4f80: blr             lr
    // 0x7e4f84: ldur            x1, [fp, #-0x40]
    // 0x7e4f88: ArrayStore: r1[1] = r0  ; List_4
    //     0x7e4f88: add             x25, x1, #0x13
    //     0x7e4f8c: str             w0, [x25]
    //     0x7e4f90: tbz             w0, #0, #0x7e4fac
    //     0x7e4f94: ldurb           w16, [x1, #-1]
    //     0x7e4f98: ldurb           w17, [x0, #-1]
    //     0x7e4f9c: and             x16, x17, x16, lsr #2
    //     0x7e4fa0: tst             x16, HEAP, lsr #32
    //     0x7e4fa4: b.eq            #0x7e4fac
    //     0x7e4fa8: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e4fac: ldur            x1, [fp, #-0x40]
    // 0x7e4fb0: r16 = "width"
    //     0x7e4fb0: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] "width"
    // 0x7e4fb4: ArrayStore: r1[0] = r16  ; List_4
    //     0x7e4fb4: stur            w16, [x1, #0x17]
    // 0x7e4fb8: ldur            x2, [fp, #-0x18]
    // 0x7e4fbc: r0 = 60
    //     0x7e4fbc: movz            x0, #0x3c
    // 0x7e4fc0: branchIfSmi(r2, 0x7e4fcc)
    //     0x7e4fc0: tbz             w2, #0, #0x7e4fcc
    // 0x7e4fc4: r0 = LoadClassIdInstr(r2)
    //     0x7e4fc4: ldur            x0, [x2, #-1]
    //     0x7e4fc8: ubfx            x0, x0, #0xc, #0x14
    // 0x7e4fcc: str             x2, [SP]
    // 0x7e4fd0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e4fd0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e4fd4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e4fd4: movz            x17, #0x3a5d
    //     0x7e4fd8: add             lr, x0, x17
    //     0x7e4fdc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e4fe0: blr             lr
    // 0x7e4fe4: ldur            x1, [fp, #-0x40]
    // 0x7e4fe8: ArrayStore: r1[3] = r0  ; List_4
    //     0x7e4fe8: add             x25, x1, #0x1b
    //     0x7e4fec: str             w0, [x25]
    //     0x7e4ff0: tbz             w0, #0, #0x7e500c
    //     0x7e4ff4: ldurb           w16, [x1, #-1]
    //     0x7e4ff8: ldurb           w17, [x0, #-1]
    //     0x7e4ffc: and             x16, x17, x16, lsr #2
    //     0x7e5000: tst             x16, HEAP, lsr #32
    //     0x7e5004: b.eq            #0x7e500c
    //     0x7e5008: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e500c: ldur            x2, [fp, #-0x40]
    // 0x7e5010: r16 = "height"
    //     0x7e5010: ldr             x16, [PP, #0x5228]  ; [pp+0x5228] "height"
    // 0x7e5014: StoreField: r2->field_1f = r16
    //     0x7e5014: stur            w16, [x2, #0x1f]
    // 0x7e5018: ldur            x3, [fp, #-0x30]
    // 0x7e501c: r0 = BoxInt64Instr(r3)
    //     0x7e501c: sbfiz           x0, x3, #1, #0x1f
    //     0x7e5020: cmp             x3, x0, asr #1
    //     0x7e5024: b.eq            #0x7e5030
    //     0x7e5028: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e502c: stur            x3, [x0, #7]
    // 0x7e5030: mov             x1, x0
    // 0x7e5034: stur            x1, [fp, #-0x38]
    // 0x7e5038: r0 = 60
    //     0x7e5038: movz            x0, #0x3c
    // 0x7e503c: branchIfSmi(r1, 0x7e5048)
    //     0x7e503c: tbz             w1, #0, #0x7e5048
    // 0x7e5040: r0 = LoadClassIdInstr(r1)
    //     0x7e5040: ldur            x0, [x1, #-1]
    //     0x7e5044: ubfx            x0, x0, #0xc, #0x14
    // 0x7e5048: str             x1, [SP]
    // 0x7e504c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e504c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e5050: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e5050: movz            x17, #0x3a5d
    //     0x7e5054: add             lr, x0, x17
    //     0x7e5058: ldr             lr, [x21, lr, lsl #3]
    //     0x7e505c: blr             lr
    // 0x7e5060: ldur            x1, [fp, #-0x40]
    // 0x7e5064: ArrayStore: r1[5] = r0  ; List_4
    //     0x7e5064: add             x25, x1, #0x23
    //     0x7e5068: str             w0, [x25]
    //     0x7e506c: tbz             w0, #0, #0x7e5088
    //     0x7e5070: ldurb           w16, [x1, #-1]
    //     0x7e5074: ldurb           w17, [x0, #-1]
    //     0x7e5078: and             x16, x17, x16, lsr #2
    //     0x7e507c: tst             x16, HEAP, lsr #32
    //     0x7e5080: b.eq            #0x7e5088
    //     0x7e5084: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e5088: r16 = <String, String>
    //     0x7e5088: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e508c: ldur            lr, [fp, #-0x40]
    // 0x7e5090: stp             lr, x16, [SP]
    // 0x7e5094: r0 = Map._fromLiteral()
    //     0x7e5094: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e5098: r16 = Instance_MethodChannel
    //     0x7e5098: ldr             x16, [PP, #0x6b70]  ; [pp+0x6b70] Obj!MethodChannel@441bc1
    // 0x7e509c: stp             x16, NULL, [SP, #0x10]
    // 0x7e50a0: r16 = "VideoOutputManager.SetSurfaceSize"
    //     0x7e50a0: ldr             x16, [PP, #0x7110]  ; [pp+0x7110] "VideoOutputManager.SetSurfaceSize"
    // 0x7e50a4: stp             x0, x16, [SP]
    // 0x7e50a8: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x7e50a8: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x7e50ac: r0 = call 0x6a5e04
    //     0x7e50ac: bl              #0x6a5e04
    // 0x7e50b0: mov             x1, x0
    // 0x7e50b4: stur            x1, [fp, #-0x40]
    // 0x7e50b8: r0 = Await()
    //     0x7e50b8: bl              #0x74ab64  ; AwaitStub
    // 0x7e50bc: ldur            x0, [fp, #-0x20]
    // 0x7e50c0: LoadField: r1 = r0->field_f
    //     0x7e50c0: ldur            w1, [x0, #0xf]
    // 0x7e50c4: DecompressPointer r1
    //     0x7e50c4: add             x1, x1, HEAP, lsl #32
    // 0x7e50c8: LoadField: r2 = r1->field_13
    //     0x7e50c8: ldur            w2, [x1, #0x13]
    // 0x7e50cc: DecompressPointer r2
    //     0x7e50cc: add             x2, x2, HEAP, lsl #32
    // 0x7e50d0: stur            x2, [fp, #-0x10]
    // 0x7e50d4: ldur            x16, [fp, #-0x18]
    // 0x7e50d8: stp             x16, NULL, [SP]
    // 0x7e50dc: r0 = _Double.fromInteger()
    //     0x7e50dc: bl              #0x74681c  ; [dart:core] _Double::_Double.fromInteger
    // 0x7e50e0: stur            x0, [fp, #-0x18]
    // 0x7e50e4: ldur            x16, [fp, #-0x38]
    // 0x7e50e8: stp             x16, NULL, [SP]
    // 0x7e50ec: r0 = _Double.fromInteger()
    //     0x7e50ec: bl              #0x74681c  ; [dart:core] _Double::_Double.fromInteger
    // 0x7e50f0: mov             x1, x0
    // 0x7e50f4: ldur            x0, [fp, #-0x18]
    // 0x7e50f8: LoadField: d0 = r0->field_7
    //     0x7e50f8: ldur            d0, [x0, #7]
    // 0x7e50fc: d1 = 0.000000
    //     0x7e50fc: eor             v1.16b, v1.16b, v1.16b
    // 0x7e5100: fadd            d2, d0, d1
    // 0x7e5104: stur            d2, [fp, #-0x50]
    // 0x7e5108: LoadField: d0 = r1->field_7
    //     0x7e5108: ldur            d0, [x1, #7]
    // 0x7e510c: fadd            d3, d0, d1
    // 0x7e5110: stur            d3, [fp, #-0x48]
    // 0x7e5114: r0 = eE()
    //     0x7e5114: bl              #0x74724c  ; AllocateeEStub -> eE (size=0x28)
    // 0x7e5118: StoreField: r0->field_7 = rZR
    //     0x7e5118: stur            xzr, [x0, #7]
    // 0x7e511c: StoreField: r0->field_f = rZR
    //     0x7e511c: stur            xzr, [x0, #0xf]
    // 0x7e5120: ldur            d0, [fp, #-0x50]
    // 0x7e5124: ArrayStore: r0[0] = d0  ; List_8
    //     0x7e5124: stur            d0, [x0, #0x17]
    // 0x7e5128: ldur            d0, [fp, #-0x48]
    // 0x7e512c: StoreField: r0->field_1f = d0
    //     0x7e512c: stur            d0, [x0, #0x1f]
    // 0x7e5130: ldur            x1, [fp, #-0x10]
    // 0x7e5134: mov             x2, x0
    // 0x7e5138: r0 = call 0x2545cc
    //     0x7e5138: bl              #0x2545cc
    // 0x7e513c: ldur            x0, [fp, #-0x20]
    // 0x7e5140: LoadField: r1 = r0->field_f
    //     0x7e5140: ldur            w1, [x0, #0xf]
    // 0x7e5144: DecompressPointer r1
    //     0x7e5144: add             x1, x1, HEAP, lsl #32
    // 0x7e5148: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7e5148: ldur            w0, [x1, #0x17]
    // 0x7e514c: DecompressPointer r0
    //     0x7e514c: add             x0, x0, HEAP, lsl #32
    // 0x7e5150: LoadField: r1 = r0->field_b
    //     0x7e5150: ldur            w1, [x0, #0xb]
    // 0x7e5154: DecompressPointer r1
    //     0x7e5154: add             x1, x1, HEAP, lsl #32
    // 0x7e5158: LoadField: r2 = r1->field_b
    //     0x7e5158: ldur            x2, [x1, #0xb]
    // 0x7e515c: tst             x2, #0x1e
    // 0x7e5160: b.ne            #0x7e5170
    // 0x7e5164: mov             x1, x0
    // 0x7e5168: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e5168: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e516c: r0 = call 0x5ee7a4
    //     0x7e516c: bl              #0x5ee7a4
    // 0x7e5170: r0 = Null
    //     0x7e5170: mov             x0, NULL
    // 0x7e5174: r0 = ReturnAsyncNotFuture()
    //     0x7e5174: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e5178: r0 = qa()
    //     0x7e5178: bl              #0x74ce54  ; AllocateqaStub -> qa (size=0x10)
    // 0x7e517c: mov             x1, x0
    // 0x7e5180: r0 = "[PlatformPlayer.handle] is not implemented"
    //     0x7e5180: ldr             x0, [PP, #0x6c10]  ; [pp+0x6c10] "[PlatformPlayer.handle] is not implemented"
    // 0x7e5184: StoreField: r1->field_b = r0
    //     0x7e5184: stur            w0, [x1, #0xb]
    // 0x7e5188: mov             x0, x1
    // 0x7e518c: r0 = Throw()
    //     0x7e518c: bl              #0x7dc520  ; ThrowStub
    // 0x7e5190: brk             #0
    // 0x7e5194: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5194: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5198: b               #0x7e4c34
    // 0x7e519c: SaveReg d2
    //     0x7e519c: str             q2, [SP, #-0x10]!
    // 0x7e51a0: stp             x7, x8, [SP, #-0x10]!
    // 0x7e51a4: stp             x5, x6, [SP, #-0x10]!
    // 0x7e51a8: stp             x3, x4, [SP, #-0x10]!
    // 0x7e51ac: SaveReg r2
    //     0x7e51ac: str             x2, [SP, #-8]!
    // 0x7e51b0: d0 = 0.000000
    //     0x7e51b0: fmov            d0, d2
    // 0x7e51b4: r0 = 76
    //     0x7e51b4: movz            x0, #0x4c
    // 0x7e51b8: r30 = DoubleToIntegerStub
    //     0x7e51b8: ldr             lr, [PP, #0x15d0]  ; [pp+0x15d0] Stub: DoubleToInteger (0x221890)
    // 0x7e51bc: LoadField: r30 = r30->field_7
    //     0x7e51bc: ldur            lr, [lr, #7]
    // 0x7e51c0: blr             lr
    // 0x7e51c4: RestoreReg r2
    //     0x7e51c4: ldr             x2, [SP], #8
    // 0x7e51c8: ldp             x3, x4, [SP], #0x10
    // 0x7e51cc: ldp             x5, x6, [SP], #0x10
    // 0x7e51d0: ldp             x7, x8, [SP], #0x10
    // 0x7e51d4: RestoreReg d2
    //     0x7e51d4: ldr             q2, [SP], #0x10
    // 0x7e51d8: b               #0x7e4d8c
    // 0x7e51dc: SaveReg d2
    //     0x7e51dc: str             q2, [SP, #-0x10]!
    // 0x7e51e0: stp             x7, x10, [SP, #-0x10]!
    // 0x7e51e4: stp             x5, x6, [SP, #-0x10]!
    // 0x7e51e8: stp             x3, x4, [SP, #-0x10]!
    // 0x7e51ec: SaveReg r2
    //     0x7e51ec: str             x2, [SP, #-8]!
    // 0x7e51f0: d0 = 0.000000
    //     0x7e51f0: fmov            d0, d2
    // 0x7e51f4: r0 = 76
    //     0x7e51f4: movz            x0, #0x4c
    // 0x7e51f8: r30 = DoubleToIntegerStub
    //     0x7e51f8: ldr             lr, [PP, #0x15d0]  ; [pp+0x15d0] Stub: DoubleToInteger (0x221890)
    // 0x7e51fc: LoadField: r30 = r30->field_7
    //     0x7e51fc: ldur            lr, [lr, #7]
    // 0x7e5200: blr             lr
    // 0x7e5204: RestoreReg r2
    //     0x7e5204: ldr             x2, [SP], #8
    // 0x7e5208: ldp             x3, x4, [SP], #0x10
    // 0x7e520c: ldp             x5, x6, [SP], #0x10
    // 0x7e5210: ldp             x7, x10, [SP], #0x10
    // 0x7e5214: RestoreReg d2
    //     0x7e5214: ldr             q2, [SP], #0x10
    // 0x7e5218: b               #0x7e4e24
    // 0x7e521c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e521c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e5240, size: 0x490
    // 0x7e5240: EnterFrame
    //     0x7e5240: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5244: mov             fp, SP
    // 0x7e5248: AllocStack(0x58)
    //     0x7e5248: sub             SP, SP, #0x58
    // 0x7e524c: SetupParameters(PKa this /* r1 */)
    //     0x7e524c: stur            NULL, [fp, #-8]
    //     0x7e5250: movz            x0, #0
    //     0x7e5254: add             x1, fp, w0, sxtw #2
    //     0x7e5258: ldr             x1, [x1, #0x10]
    //     0x7e525c: ldur            w2, [x1, #0x17]
    //     0x7e5260: add             x2, x2, HEAP, lsl #32
    //     0x7e5264: stur            x2, [fp, #-0x10]
    // 0x7e5268: CheckStackOverflow
    //     0x7e5268: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e526c: cmp             SP, x16
    //     0x7e5270: b.ls            #0x7e5670
    // 0x7e5274: InitAsync() -> Future<void?>
    //     0x7e5274: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7e5278: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e527c: ldur            x3, [fp, #-0x10]
    // 0x7e5280: LoadField: r0 = r3->field_f
    //     0x7e5280: ldur            w0, [x3, #0xf]
    // 0x7e5284: DecompressPointer r0
    //     0x7e5284: add             x0, x0, HEAP, lsl #32
    // 0x7e5288: LoadField: r1 = r0->field_13
    //     0x7e5288: ldur            w1, [x0, #0x13]
    // 0x7e528c: DecompressPointer r1
    //     0x7e528c: add             x1, x1, HEAP, lsl #32
    // 0x7e5290: LoadField: r0 = r1->field_27
    //     0x7e5290: ldur            w0, [x1, #0x27]
    // 0x7e5294: DecompressPointer r0
    //     0x7e5294: add             x0, x0, HEAP, lsl #32
    // 0x7e5298: cmp             w0, NULL
    // 0x7e529c: b.ne            #0x7e52a8
    // 0x7e52a0: r1 = Null
    //     0x7e52a0: mov             x1, NULL
    // 0x7e52a4: b               #0x7e52d0
    // 0x7e52a8: ArrayLoad: d0 = r0[0]  ; List_8
    //     0x7e52a8: ldur            d0, [x0, #0x17]
    // 0x7e52ac: LoadField: d1 = r0->field_7
    //     0x7e52ac: ldur            d1, [x0, #7]
    // 0x7e52b0: fsub            d2, d0, d1
    // 0x7e52b4: fcmp            d2, d2
    // 0x7e52b8: b.vs            #0x7e5678
    // 0x7e52bc: fcvtzs          x1, d2
    // 0x7e52c0: asr             x16, x1, #0x1e
    // 0x7e52c4: cmp             x16, x1, asr #63
    // 0x7e52c8: b.ne            #0x7e5678
    // 0x7e52cc: lsl             x1, x1, #1
    // 0x7e52d0: cmp             w1, NULL
    // 0x7e52d4: b.ne            #0x7e52e0
    // 0x7e52d8: r2 = 1
    //     0x7e52d8: movz            x2, #0x1
    // 0x7e52dc: b               #0x7e52ec
    // 0x7e52e0: r2 = LoadInt32Instr(r1)
    //     0x7e52e0: sbfx            x2, x1, #1, #0x1f
    //     0x7e52e4: tbz             w1, #0, #0x7e52ec
    //     0x7e52e8: ldur            x2, [x1, #7]
    // 0x7e52ec: cmp             w0, NULL
    // 0x7e52f0: b.ne            #0x7e52fc
    // 0x7e52f4: r0 = Null
    //     0x7e52f4: mov             x0, NULL
    // 0x7e52f8: b               #0x7e5324
    // 0x7e52fc: LoadField: d0 = r0->field_1f
    //     0x7e52fc: ldur            d0, [x0, #0x1f]
    // 0x7e5300: LoadField: d1 = r0->field_f
    //     0x7e5300: ldur            d1, [x0, #0xf]
    // 0x7e5304: fsub            d2, d0, d1
    // 0x7e5308: fcmp            d2, d2
    // 0x7e530c: b.vs            #0x7e56a4
    // 0x7e5310: fcvtzs          x0, d2
    // 0x7e5314: asr             x16, x0, #0x1e
    // 0x7e5318: cmp             x16, x0, asr #63
    // 0x7e531c: b.ne            #0x7e56a4
    // 0x7e5320: lsl             x0, x0, #1
    // 0x7e5324: cmp             w0, NULL
    // 0x7e5328: b.ne            #0x7e5334
    // 0x7e532c: r5 = 1
    //     0x7e532c: movz            x5, #0x1
    // 0x7e5330: b               #0x7e5344
    // 0x7e5334: r1 = LoadInt32Instr(r0)
    //     0x7e5334: sbfx            x1, x0, #1, #0x1f
    //     0x7e5338: tbz             w0, #0, #0x7e5340
    //     0x7e533c: ldur            x1, [x0, #7]
    // 0x7e5340: mov             x5, x1
    // 0x7e5344: r4 = 4
    //     0x7e5344: movz            x4, #0x4
    // 0x7e5348: stur            x5, [fp, #-0x20]
    // 0x7e534c: r0 = BoxInt64Instr(r2)
    //     0x7e534c: sbfiz           x0, x2, #1, #0x1f
    //     0x7e5350: cmp             x2, x0, asr #1
    //     0x7e5354: b.eq            #0x7e5360
    //     0x7e5358: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e535c: stur            x2, [x0, #7]
    // 0x7e5360: mov             x2, x4
    // 0x7e5364: r1 = Null
    //     0x7e5364: mov             x1, NULL
    // 0x7e5368: stur            x0, [fp, #-0x18]
    // 0x7e536c: r0 = AllocateArray()
    //     0x7e536c: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7e5370: mov             x2, x0
    // 0x7e5374: ldur            x0, [fp, #-0x18]
    // 0x7e5378: stur            x2, [fp, #-0x28]
    // 0x7e537c: StoreField: r2->field_f = r0
    //     0x7e537c: stur            w0, [x2, #0xf]
    // 0x7e5380: ldur            x3, [fp, #-0x20]
    // 0x7e5384: r0 = BoxInt64Instr(r3)
    //     0x7e5384: sbfiz           x0, x3, #1, #0x1f
    //     0x7e5388: cmp             x3, x0, asr #1
    //     0x7e538c: b.eq            #0x7e5398
    //     0x7e5390: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e5394: stur            x3, [x0, #7]
    // 0x7e5398: StoreField: r2->field_13 = r0
    //     0x7e5398: stur            w0, [x2, #0x13]
    // 0x7e539c: r1 = <int>
    //     0x7e539c: ldr             x1, [PP, #0x8b8]  ; [pp+0x8b8] TypeArguments: <int>
    // 0x7e53a0: r0 = AllocateGrowableArray()
    //     0x7e53a0: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7e53a4: mov             x1, x0
    // 0x7e53a8: ldur            x0, [fp, #-0x28]
    // 0x7e53ac: StoreField: r1->field_f = r0
    //     0x7e53ac: stur            w0, [x1, #0xf]
    // 0x7e53b0: r0 = 4
    //     0x7e53b0: movz            x0, #0x4
    // 0x7e53b4: StoreField: r1->field_b = r0
    //     0x7e53b4: stur            w0, [x1, #0xb]
    // 0x7e53b8: r16 = "x"
    //     0x7e53b8: ldr             x16, [PP, #0x5230]  ; [pp+0x5230] "x"
    // 0x7e53bc: str             x16, [SP]
    // 0x7e53c0: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e53c0: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e53c4: r0 = call 0x2ed074
    //     0x7e53c4: bl              #0x2ed074
    // 0x7e53c8: mov             x2, x0
    // 0x7e53cc: ldur            x1, [fp, #-0x10]
    // 0x7e53d0: stur            x2, [fp, #-0x18]
    // 0x7e53d4: LoadField: r0 = r1->field_f
    //     0x7e53d4: ldur            w0, [x1, #0xf]
    // 0x7e53d8: DecompressPointer r0
    //     0x7e53d8: add             x0, x0, HEAP, lsl #32
    // 0x7e53dc: LoadField: r3 = r0->field_1b
    //     0x7e53dc: ldur            w3, [x0, #0x1b]
    // 0x7e53e0: DecompressPointer r3
    //     0x7e53e0: add             x3, x3, HEAP, lsl #32
    // 0x7e53e4: LoadField: r0 = r3->field_27
    //     0x7e53e4: ldur            w0, [x3, #0x27]
    // 0x7e53e8: DecompressPointer r0
    //     0x7e53e8: add             x0, x0, HEAP, lsl #32
    // 0x7e53ec: cmp             w0, NULL
    // 0x7e53f0: b.ne            #0x7e53fc
    // 0x7e53f4: r0 = Null
    //     0x7e53f4: mov             x0, NULL
    // 0x7e53f8: b               #0x7e5428
    // 0x7e53fc: r3 = 60
    //     0x7e53fc: movz            x3, #0x3c
    // 0x7e5400: branchIfSmi(r0, 0x7e540c)
    //     0x7e5400: tbz             w0, #0, #0x7e540c
    // 0x7e5404: r3 = LoadClassIdInstr(r0)
    //     0x7e5404: ldur            x3, [x0, #-1]
    //     0x7e5408: ubfx            x3, x3, #0xc, #0x14
    // 0x7e540c: str             x0, [SP]
    // 0x7e5410: mov             x0, x3
    // 0x7e5414: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e5414: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e5418: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e5418: movz            x17, #0x3a5d
    //     0x7e541c: add             lr, x0, x17
    //     0x7e5420: ldr             lr, [x21, lr, lsl #3]
    //     0x7e5424: blr             lr
    // 0x7e5428: cmp             w0, NULL
    // 0x7e542c: b.ne            #0x7e5438
    // 0x7e5430: r3 = "0"
    //     0x7e5430: ldr             x3, [PP, #0x40a0]  ; [pp+0x40a0] "0"
    // 0x7e5434: b               #0x7e543c
    // 0x7e5438: mov             x3, x0
    // 0x7e543c: stur            x3, [fp, #-0x28]
    // 0x7e5440: r0 = LoadClassIdInstr(r3)
    //     0x7e5440: ldur            x0, [x3, #-1]
    //     0x7e5444: ubfx            x0, x0, #0xc, #0x14
    // 0x7e5448: r16 = "0"
    //     0x7e5448: ldr             x16, [PP, #0x40a0]  ; [pp+0x40a0] "0"
    // 0x7e544c: stp             x16, x3, [SP]
    // 0x7e5450: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7e5450: movz            x17, #0x245b
    //     0x7e5454: add             lr, x0, x17
    //     0x7e5458: ldr             lr, [x21, lr, lsl #3]
    //     0x7e545c: blr             lr
    // 0x7e5460: tbnz            w0, #4, #0x7e5470
    // 0x7e5464: ldur            x1, [fp, #-0x10]
    // 0x7e5468: r2 = "null"
    //     0x7e5468: ldr             x2, [PP, #0x190]  ; [pp+0x190] "null"
    // 0x7e546c: b               #0x7e5498
    // 0x7e5470: ldur            x1, [fp, #-0x10]
    // 0x7e5474: LoadField: r0 = r1->field_f
    //     0x7e5474: ldur            w0, [x1, #0xf]
    // 0x7e5478: DecompressPointer r0
    //     0x7e5478: add             x0, x0, HEAP, lsl #32
    // 0x7e547c: LoadField: r2 = r0->field_b
    //     0x7e547c: ldur            w2, [x0, #0xb]
    // 0x7e5480: DecompressPointer r2
    //     0x7e5480: add             x2, x2, HEAP, lsl #32
    // 0x7e5484: LoadField: r0 = r2->field_7
    //     0x7e5484: ldur            w0, [x2, #7]
    // 0x7e5488: DecompressPointer r0
    //     0x7e5488: add             x0, x0, HEAP, lsl #32
    // 0x7e548c: cmp             w0, NULL
    // 0x7e5490: b.eq            #0x7e56cc
    // 0x7e5494: mov             x2, x0
    // 0x7e5498: ldur            x3, [fp, #-0x28]
    // 0x7e549c: stur            x2, [fp, #-0x30]
    // 0x7e54a0: r0 = LoadClassIdInstr(r3)
    //     0x7e54a0: ldur            x0, [x3, #-1]
    //     0x7e54a4: ubfx            x0, x0, #0xc, #0x14
    // 0x7e54a8: r16 = "0"
    //     0x7e54a8: ldr             x16, [PP, #0x40a0]  ; [pp+0x40a0] "0"
    // 0x7e54ac: stp             x16, x3, [SP]
    // 0x7e54b0: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7e54b0: movz            x17, #0x245b
    //     0x7e54b4: add             lr, x0, x17
    //     0x7e54b8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e54bc: blr             lr
    // 0x7e54c0: tbnz            w0, #4, #0x7e54cc
    // 0x7e54c4: r4 = "no"
    //     0x7e54c4: ldr             x4, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e54c8: b               #0x7e54d0
    // 0x7e54cc: r4 = "auto"
    //     0x7e54cc: ldr             x4, [PP, #0x6b98]  ; [pp+0x6b98] "auto"
    // 0x7e54d0: ldur            x0, [fp, #-0x10]
    // 0x7e54d4: stur            x4, [fp, #-0x38]
    // 0x7e54d8: LoadField: r1 = r0->field_f
    //     0x7e54d8: ldur            w1, [x0, #0xf]
    // 0x7e54dc: DecompressPointer r1
    //     0x7e54dc: add             x1, x1, HEAP, lsl #32
    // 0x7e54e0: r2 = "vo"
    //     0x7e54e0: ldr             x2, [PP, #0x6b80]  ; [pp+0x6b80] "vo"
    // 0x7e54e4: r3 = "null"
    //     0x7e54e4: ldr             x3, [PP, #0x190]  ; [pp+0x190] "null"
    // 0x7e54e8: r0 = __unknown_function__()
    //     0x7e54e8: bl              #0x7e4b58  ; [] ::__unknown_function__
    // 0x7e54ec: mov             x1, x0
    // 0x7e54f0: stur            x1, [fp, #-0x40]
    // 0x7e54f4: r0 = Await()
    //     0x7e54f4: bl              #0x74ab64  ; AwaitStub
    // 0x7e54f8: ldur            x0, [fp, #-0x10]
    // 0x7e54fc: LoadField: r1 = r0->field_f
    //     0x7e54fc: ldur            w1, [x0, #0xf]
    // 0x7e5500: DecompressPointer r1
    //     0x7e5500: add             x1, x1, HEAP, lsl #32
    // 0x7e5504: stur            x1, [fp, #-0x40]
    // 0x7e5508: r16 = <String, String>
    //     0x7e5508: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x7e550c: ldr             lr, [THR, #0xa8]  ; THR::empty_array
    // 0x7e5510: stp             lr, x16, [SP]
    // 0x7e5514: r0 = Map._fromLiteral()
    //     0x7e5514: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7e5518: stur            x0, [fp, #-0x48]
    // 0x7e551c: r16 = "android-surface-size"
    //     0x7e551c: ldr             x16, [PP, #0x6c20]  ; [pp+0x6c20] "android-surface-size"
    // 0x7e5520: str             x16, [SP]
    // 0x7e5524: r0 = hashCode()
    //     0x7e5524: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e5528: r5 = LoadInt32Instr(r0)
    //     0x7e5528: sbfx            x5, x0, #1, #0x1f
    //     0x7e552c: tbz             w0, #0, #0x7e5534
    //     0x7e5530: ldur            x5, [x0, #7]
    // 0x7e5534: ldur            x1, [fp, #-0x48]
    // 0x7e5538: ldur            x3, [fp, #-0x18]
    // 0x7e553c: r2 = "android-surface-size"
    //     0x7e553c: ldr             x2, [PP, #0x6c20]  ; [pp+0x6c20] "android-surface-size"
    // 0x7e5540: r0 = call 0x228da0
    //     0x7e5540: bl              #0x228da0
    // 0x7e5544: r16 = "wid"
    //     0x7e5544: ldr             x16, [PP, #0x6c28]  ; [pp+0x6c28] "wid"
    // 0x7e5548: str             x16, [SP]
    // 0x7e554c: r0 = hashCode()
    //     0x7e554c: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e5550: r5 = LoadInt32Instr(r0)
    //     0x7e5550: sbfx            x5, x0, #1, #0x1f
    //     0x7e5554: tbz             w0, #0, #0x7e555c
    //     0x7e5558: ldur            x5, [x0, #7]
    // 0x7e555c: ldur            x1, [fp, #-0x48]
    // 0x7e5560: ldur            x3, [fp, #-0x28]
    // 0x7e5564: r2 = "wid"
    //     0x7e5564: ldr             x2, [PP, #0x6c28]  ; [pp+0x6c28] "wid"
    // 0x7e5568: r0 = call 0x228da0
    //     0x7e5568: bl              #0x228da0
    // 0x7e556c: r16 = "vo"
    //     0x7e556c: ldr             x16, [PP, #0x6b80]  ; [pp+0x6b80] "vo"
    // 0x7e5570: str             x16, [SP]
    // 0x7e5574: r0 = hashCode()
    //     0x7e5574: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e5578: r5 = LoadInt32Instr(r0)
    //     0x7e5578: sbfx            x5, x0, #1, #0x1f
    //     0x7e557c: tbz             w0, #0, #0x7e5584
    //     0x7e5580: ldur            x5, [x0, #7]
    // 0x7e5584: ldur            x1, [fp, #-0x48]
    // 0x7e5588: ldur            x3, [fp, #-0x30]
    // 0x7e558c: r2 = "vo"
    //     0x7e558c: ldr             x2, [PP, #0x6b80]  ; [pp+0x6b80] "vo"
    // 0x7e5590: r0 = call 0x228da0
    //     0x7e5590: bl              #0x228da0
    // 0x7e5594: ldur            x1, [fp, #-0x10]
    // 0x7e5598: LoadField: r0 = r1->field_f
    //     0x7e5598: ldur            w0, [x1, #0xf]
    // 0x7e559c: DecompressPointer r0
    //     0x7e559c: add             x0, x0, HEAP, lsl #32
    // 0x7e55a0: LoadField: r2 = r0->field_b
    //     0x7e55a0: ldur            w2, [x0, #0xb]
    // 0x7e55a4: DecompressPointer r2
    //     0x7e55a4: add             x2, x2, HEAP, lsl #32
    // 0x7e55a8: LoadField: r0 = r2->field_7
    //     0x7e55a8: ldur            w0, [x2, #7]
    // 0x7e55ac: DecompressPointer r0
    //     0x7e55ac: add             x0, x0, HEAP, lsl #32
    // 0x7e55b0: r2 = LoadClassIdInstr(r0)
    //     0x7e55b0: ldur            x2, [x0, #-1]
    //     0x7e55b4: ubfx            x2, x2, #0xc, #0x14
    // 0x7e55b8: r16 = "mediacodec_embed"
    //     0x7e55b8: ldr             x16, [PP, #0x6c30]  ; [pp+0x6c30] "mediacodec_embed"
    // 0x7e55bc: stp             x16, x0, [SP]
    // 0x7e55c0: mov             x0, x2
    // 0x7e55c4: r0 = GDT[cid_x0 + 0x245b]()
    //     0x7e55c4: movz            x17, #0x245b
    //     0x7e55c8: add             lr, x0, x17
    //     0x7e55cc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e55d0: blr             lr
    // 0x7e55d4: tbnz            w0, #4, #0x7e5600
    // 0x7e55d8: r16 = "vid"
    //     0x7e55d8: ldr             x16, [PP, #0x6b90]  ; [pp+0x6b90] "vid"
    // 0x7e55dc: str             x16, [SP]
    // 0x7e55e0: r0 = hashCode()
    //     0x7e55e0: bl              #0x7b1e5c  ; [dart:core] _OneByteString::hashCode
    // 0x7e55e4: r5 = LoadInt32Instr(r0)
    //     0x7e55e4: sbfx            x5, x0, #1, #0x1f
    //     0x7e55e8: tbz             w0, #0, #0x7e55f0
    //     0x7e55ec: ldur            x5, [x0, #7]
    // 0x7e55f0: ldur            x1, [fp, #-0x48]
    // 0x7e55f4: ldur            x3, [fp, #-0x38]
    // 0x7e55f8: r2 = "vid"
    //     0x7e55f8: ldr             x2, [PP, #0x6b90]  ; [pp+0x6b90] "vid"
    // 0x7e55fc: r0 = call 0x228da0
    //     0x7e55fc: bl              #0x228da0
    // 0x7e5600: ldur            x0, [fp, #-0x10]
    // 0x7e5604: ldur            x1, [fp, #-0x40]
    // 0x7e5608: ldur            x2, [fp, #-0x48]
    // 0x7e560c: r0 = __unknown_function__()
    //     0x7e560c: bl              #0x7e4a74  ; [] ::__unknown_function__
    // 0x7e5610: mov             x1, x0
    // 0x7e5614: stur            x1, [fp, #-0x18]
    // 0x7e5618: r0 = Await()
    //     0x7e5618: bl              #0x74ab64  ; AwaitStub
    // 0x7e561c: ldur            x0, [fp, #-0x10]
    // 0x7e5620: LoadField: r1 = r0->field_f
    //     0x7e5620: ldur            w1, [x0, #0xf]
    // 0x7e5624: DecompressPointer r1
    //     0x7e5624: add             x1, x1, HEAP, lsl #32
    // 0x7e5628: LoadField: r2 = r1->field_7
    //     0x7e5628: ldur            w2, [x1, #7]
    // 0x7e562c: DecompressPointer r2
    //     0x7e562c: add             x2, x2, HEAP, lsl #32
    // 0x7e5630: mov             x1, x2
    // 0x7e5634: r0 = call 0x73e2dc
    //     0x7e5634: bl              #0x73e2dc
    // 0x7e5638: LoadField: r2 = r0->field_13
    //     0x7e5638: ldur            w2, [x0, #0x13]
    // 0x7e563c: DecompressPointer r2
    //     0x7e563c: add             x2, x2, HEAP, lsl #32
    // 0x7e5640: ldur            x0, [fp, #-0x10]
    // 0x7e5644: LoadField: r1 = r0->field_f
    //     0x7e5644: ldur            w1, [x0, #0xf]
    // 0x7e5648: DecompressPointer r1
    //     0x7e5648: add             x1, x1, HEAP, lsl #32
    // 0x7e564c: LoadField: r3 = r1->field_7
    //     0x7e564c: ldur            w3, [x1, #7]
    // 0x7e5650: DecompressPointer r3
    //     0x7e5650: add             x3, x3, HEAP, lsl #32
    // 0x7e5654: mov             x1, x3
    // 0x7e5658: r0 = __unknown_function__()
    //     0x7e5658: bl              #0x79f808  ; [] ::__unknown_function__
    // 0x7e565c: mov             x1, x0
    // 0x7e5660: stur            x1, [fp, #-0x18]
    // 0x7e5664: r0 = Await()
    //     0x7e5664: bl              #0x74ab64  ; AwaitStub
    // 0x7e5668: r0 = Null
    //     0x7e5668: mov             x0, NULL
    // 0x7e566c: r0 = ReturnAsyncNotFuture()
    //     0x7e566c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e5670: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5670: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5674: b               #0x7e5274
    // 0x7e5678: SaveReg d2
    //     0x7e5678: str             q2, [SP, #-0x10]!
    // 0x7e567c: stp             x0, x3, [SP, #-0x10]!
    // 0x7e5680: d0 = 0.000000
    //     0x7e5680: fmov            d0, d2
    // 0x7e5684: r0 = 76
    //     0x7e5684: movz            x0, #0x4c
    // 0x7e5688: r30 = DoubleToIntegerStub
    //     0x7e5688: ldr             lr, [PP, #0x15d0]  ; [pp+0x15d0] Stub: DoubleToInteger (0x221890)
    // 0x7e568c: LoadField: r30 = r30->field_7
    //     0x7e568c: ldur            lr, [lr, #7]
    // 0x7e5690: blr             lr
    // 0x7e5694: mov             x1, x0
    // 0x7e5698: ldp             x0, x3, [SP], #0x10
    // 0x7e569c: RestoreReg d2
    //     0x7e569c: ldr             q2, [SP], #0x10
    // 0x7e56a0: b               #0x7e52d0
    // 0x7e56a4: SaveReg d2
    //     0x7e56a4: str             q2, [SP, #-0x10]!
    // 0x7e56a8: stp             x2, x3, [SP, #-0x10]!
    // 0x7e56ac: d0 = 0.000000
    //     0x7e56ac: fmov            d0, d2
    // 0x7e56b0: r0 = 76
    //     0x7e56b0: movz            x0, #0x4c
    // 0x7e56b4: r30 = DoubleToIntegerStub
    //     0x7e56b4: ldr             lr, [PP, #0x15d0]  ; [pp+0x15d0] Stub: DoubleToInteger (0x221890)
    // 0x7e56b8: LoadField: r30 = r30->field_7
    //     0x7e56b8: ldur            lr, [lr, #7]
    // 0x7e56bc: blr             lr
    // 0x7e56c0: ldp             x2, x3, [SP], #0x10
    // 0x7e56c4: RestoreReg d2
    //     0x7e56c4: ldr             q2, [SP], #0x10
    // 0x7e56c8: b               #0x7e5324
    // 0x7e56cc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e56cc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<Null> <anonymous closure>(dynamic, MethodCall) async {
    // ** addr: 0x7e56f4, size: 0x740
    // 0x7e56f4: EnterFrame
    //     0x7e56f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e56f8: mov             fp, SP
    // 0x7e56fc: AllocStack(0xe8)
    //     0x7e56fc: sub             SP, SP, #0xe8
    // 0x7e5700: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x7e5700: stur            NULL, [fp, #-8]
    //     0x7e5704: movz            x0, #0
    //     0x7e5708: add             x1, fp, w0, sxtw #2
    //     0x7e570c: ldr             x1, [x1, #0x18]
    //     0x7e5710: add             x2, fp, w0, sxtw #2
    //     0x7e5714: ldr             x2, [x2, #0x10]
    //     0x7e5718: stur            x2, [fp, #-0x90]
    //     0x7e571c: ldur            w3, [x1, #0x17]
    //     0x7e5720: add             x3, x3, HEAP, lsl #32
    //     0x7e5724: stur            x3, [fp, #-0x88]
    // 0x7e5728: CheckStackOverflow
    //     0x7e5728: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e572c: cmp             SP, x16
    //     0x7e5730: b.ls            #0x7e5e2c
    // 0x7e5734: InitAsync() -> Future<Null?>
    //     0x7e5734: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7e5738: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e573c: ldur            x0, [fp, #-0x90]
    // 0x7e5740: r0 = LoadStaticField(0x794)
    //     0x7e5740: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e5744: ldr             x0, [x0, #0xf28]
    // 0x7e5748: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e574c: cmp             w0, w16
    // 0x7e5750: b.ne            #0x7e575c
    // 0x7e5754: r2 = aVd
    //     0x7e5754: ldr             x2, [PP, #0x168]  ; [pp+0x168] Field <::.aVd>: static late (offset: 0x794)
    // 0x7e5758: r0 = InitLateStaticField()
    //     0x7e5758: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e575c: ldur            x0, [fp, #-0x90]
    // 0x7e5760: LoadField: r2 = r0->field_7
    //     0x7e5760: ldur            w2, [x0, #7]
    // 0x7e5764: DecompressPointer r2
    //     0x7e5764: add             x2, x2, HEAP, lsl #32
    // 0x7e5768: stur            x2, [fp, #-0xa0]
    // 0x7e576c: r1 = Closure: (String?, {int? bVd}) => void from Function 'iVd': static.
    //     0x7e576c: ldr             x1, [PP, #0xd50]  ; [pp+0xd50] Closure: (String?, {int? bVd}) => void from Function 'iVd': static. (0x7fd77ceefe40)
    // 0x7e5770: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7e5770: ldur            w3, [x1, #0x17]
    // 0x7e5774: DecompressPointer r3
    //     0x7e5774: add             x3, x3, HEAP, lsl #32
    // 0x7e5778: stur            x3, [fp, #-0x98]
    // 0x7e577c: str             NULL, [SP]
    // 0x7e5780: mov             x1, x2
    // 0x7e5784: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e5784: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e5788: r0 = call 0x254858
    //     0x7e5788: bl              #0x254858
    // 0x7e578c: ldur            x1, [fp, #-0x90]
    // 0x7e5790: LoadField: r2 = r1->field_b
    //     0x7e5790: ldur            w2, [x1, #0xb]
    // 0x7e5794: DecompressPointer r2
    //     0x7e5794: add             x2, x2, HEAP, lsl #32
    // 0x7e5798: stur            x2, [fp, #-0xa8]
    // 0x7e579c: r0 = 60
    //     0x7e579c: movz            x0, #0x3c
    // 0x7e57a0: branchIfSmi(r2, 0x7e57ac)
    //     0x7e57a0: tbz             w2, #0, #0x7e57ac
    // 0x7e57a4: r0 = LoadClassIdInstr(r2)
    //     0x7e57a4: ldur            x0, [x2, #-1]
    //     0x7e57a8: ubfx            x0, x0, #0xc, #0x14
    // 0x7e57ac: str             x2, [SP]
    // 0x7e57b0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e57b0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e57b4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e57b4: movz            x17, #0x3a5d
    //     0x7e57b8: add             lr, x0, x17
    //     0x7e57bc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e57c0: blr             lr
    // 0x7e57c4: stur            x0, [fp, #-0xb0]
    // 0x7e57c8: str             NULL, [SP]
    // 0x7e57cc: mov             x1, x0
    // 0x7e57d0: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e57d0: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e57d4: r0 = call 0x254858
    //     0x7e57d4: bl              #0x254858
    // 0x7e57d8: r16 = "VideoOutput.Resize"
    //     0x7e57d8: ldr             x16, [PP, #0x7410]  ; [pp+0x7410] "VideoOutput.Resize"
    // 0x7e57dc: ldur            lr, [fp, #-0xa0]
    // 0x7e57e0: stp             lr, x16, [SP]
    // 0x7e57e4: r0 = call 0x5a8ba0
    //     0x7e57e4: bl              #0x5a8ba0
    // 0x7e57e8: tbnz            w0, #4, #0x7e5c34
    // 0x7e57ec: ldur            x16, [fp, #-0xa8]
    // 0x7e57f0: r30 = "handle"
    //     0x7e57f0: ldr             lr, [PP, #0x6b60]  ; [pp+0x6b60] "handle"
    // 0x7e57f4: stp             lr, x16, [SP]
    // 0x7e57f8: r4 = 0
    //     0x7e57f8: movz            x4, #0
    // 0x7e57fc: ldr             x0, [SP, #8]
    // 0x7e5800: r16 = 140563490515876
    //     0x7e5800: add             x16, PP, #7, lsl #12  ; [pp+0x7418] IMM: 0x7fd77cebaba4
    //     0x7e5804: add             x16, x16, #0x418
    // 0x7e5808: ldp             lr, x5, [x16]
    // 0x7e580c: blr             lr
    // 0x7e5810: mov             x3, x0
    // 0x7e5814: r2 = Null
    //     0x7e5814: mov             x2, NULL
    // 0x7e5818: r1 = Null
    //     0x7e5818: mov             x1, NULL
    // 0x7e581c: stur            x3, [fp, #-0xb0]
    // 0x7e5820: branchIfSmi(r0, 0x7e5844)
    //     0x7e5820: tbz             w0, #0, #0x7e5844
    // 0x7e5824: r4 = LoadClassIdInstr(r0)
    //     0x7e5824: ldur            x4, [x0, #-1]
    //     0x7e5828: ubfx            x4, x4, #0xc, #0x14
    // 0x7e582c: sub             x4, x4, #0x3c
    // 0x7e5830: cmp             x4, #1
    // 0x7e5834: b.ls            #0x7e5844
    // 0x7e5838: r8 = int
    //     0x7e5838: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7e583c: r3 = Null
    //     0x7e583c: ldr             x3, [PP, #0x7428]  ; [pp+0x7428] Null
    // 0x7e5840: r0 = int()
    //     0x7e5840: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7e5844: r0 = eE()
    //     0x7e5844: bl              #0x74724c  ; AllocateeEStub -> eE (size=0x28)
    // 0x7e5848: stur            x0, [fp, #-0xb8]
    // 0x7e584c: ldur            x16, [fp, #-0xa8]
    // 0x7e5850: r30 = "rect"
    //     0x7e5850: ldr             lr, [PP, #0x7438]  ; [pp+0x7438] "rect"
    // 0x7e5854: stp             lr, x16, [SP]
    // 0x7e5858: r4 = 0
    //     0x7e5858: movz            x4, #0
    // 0x7e585c: ldr             x0, [SP, #8]
    // 0x7e5860: r16 = 140563490515876
    //     0x7e5860: add             x16, PP, #7, lsl #12  ; [pp+0x7440] IMM: 0x7fd77cebaba4
    //     0x7e5864: add             x16, x16, #0x440
    // 0x7e5868: ldp             lr, x5, [x16]
    // 0x7e586c: blr             lr
    // 0x7e5870: r16 = "left"
    //     0x7e5870: ldr             x16, [PP, #0x7450]  ; [pp+0x7450] "left"
    // 0x7e5874: stp             x16, x0, [SP]
    // 0x7e5878: r4 = 0
    //     0x7e5878: movz            x4, #0
    // 0x7e587c: ldr             x0, [SP, #8]
    // 0x7e5880: r16 = 140563490515876
    //     0x7e5880: add             x16, PP, #7, lsl #12  ; [pp+0x7458] IMM: 0x7fd77cebaba4
    //     0x7e5884: add             x16, x16, #0x458
    // 0x7e5888: ldp             lr, x5, [x16]
    // 0x7e588c: blr             lr
    // 0x7e5890: r16 = 1.000000
    //     0x7e5890: ldr             x16, [PP, #0x44c8]  ; [pp+0x44c8] 1
    // 0x7e5894: stp             x16, x0, [SP]
    // 0x7e5898: r4 = 0
    //     0x7e5898: movz            x4, #0
    // 0x7e589c: ldr             x0, [SP, #8]
    // 0x7e58a0: r16 = 140563490515876
    //     0x7e58a0: add             x16, PP, #7, lsl #12  ; [pp+0x7468] IMM: 0x7fd77cebaba4
    //     0x7e58a4: add             x16, x16, #0x468
    // 0x7e58a8: ldp             lr, x5, [x16]
    // 0x7e58ac: blr             lr
    // 0x7e58b0: mov             x3, x0
    // 0x7e58b4: r2 = Null
    //     0x7e58b4: mov             x2, NULL
    // 0x7e58b8: r1 = Null
    //     0x7e58b8: mov             x1, NULL
    // 0x7e58bc: stur            x3, [fp, #-0xc0]
    // 0x7e58c0: r4 = 60
    //     0x7e58c0: movz            x4, #0x3c
    // 0x7e58c4: branchIfSmi(r0, 0x7e58d0)
    //     0x7e58c4: tbz             w0, #0, #0x7e58d0
    // 0x7e58c8: r4 = LoadClassIdInstr(r0)
    //     0x7e58c8: ldur            x4, [x0, #-1]
    //     0x7e58cc: ubfx            x4, x4, #0xc, #0x14
    // 0x7e58d0: cmp             x4, #0x3e
    // 0x7e58d4: b.eq            #0x7e58e4
    // 0x7e58d8: r8 = double
    //     0x7e58d8: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x7e58dc: r3 = Null
    //     0x7e58dc: ldr             x3, [PP, #0x7478]  ; [pp+0x7478] Null
    // 0x7e58e0: r0 = double()
    //     0x7e58e0: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x7e58e4: ldur            x16, [fp, #-0xa8]
    // 0x7e58e8: r30 = "rect"
    //     0x7e58e8: ldr             lr, [PP, #0x7438]  ; [pp+0x7438] "rect"
    // 0x7e58ec: stp             lr, x16, [SP]
    // 0x7e58f0: r4 = 0
    //     0x7e58f0: movz            x4, #0
    // 0x7e58f4: ldr             x0, [SP, #8]
    // 0x7e58f8: r16 = 140563490515876
    //     0x7e58f8: add             x16, PP, #7, lsl #12  ; [pp+0x7488] IMM: 0x7fd77cebaba4
    //     0x7e58fc: add             x16, x16, #0x488
    // 0x7e5900: ldp             lr, x5, [x16]
    // 0x7e5904: blr             lr
    // 0x7e5908: r16 = "top"
    //     0x7e5908: ldr             x16, [PP, #0x7498]  ; [pp+0x7498] "top"
    // 0x7e590c: stp             x16, x0, [SP]
    // 0x7e5910: r4 = 0
    //     0x7e5910: movz            x4, #0
    // 0x7e5914: ldr             x0, [SP, #8]
    // 0x7e5918: r16 = 140563490515876
    //     0x7e5918: add             x16, PP, #7, lsl #12  ; [pp+0x74a0] IMM: 0x7fd77cebaba4
    //     0x7e591c: add             x16, x16, #0x4a0
    // 0x7e5920: ldp             lr, x5, [x16]
    // 0x7e5924: blr             lr
    // 0x7e5928: r16 = 1.000000
    //     0x7e5928: ldr             x16, [PP, #0x44c8]  ; [pp+0x44c8] 1
    // 0x7e592c: stp             x16, x0, [SP]
    // 0x7e5930: r4 = 0
    //     0x7e5930: movz            x4, #0
    // 0x7e5934: ldr             x0, [SP, #8]
    // 0x7e5938: r16 = 140563490515876
    //     0x7e5938: add             x16, PP, #7, lsl #12  ; [pp+0x74b0] IMM: 0x7fd77cebaba4
    //     0x7e593c: add             x16, x16, #0x4b0
    // 0x7e5940: ldp             lr, x5, [x16]
    // 0x7e5944: blr             lr
    // 0x7e5948: mov             x3, x0
    // 0x7e594c: r2 = Null
    //     0x7e594c: mov             x2, NULL
    // 0x7e5950: r1 = Null
    //     0x7e5950: mov             x1, NULL
    // 0x7e5954: stur            x3, [fp, #-0xc8]
    // 0x7e5958: r4 = 60
    //     0x7e5958: movz            x4, #0x3c
    // 0x7e595c: branchIfSmi(r0, 0x7e5968)
    //     0x7e595c: tbz             w0, #0, #0x7e5968
    // 0x7e5960: r4 = LoadClassIdInstr(r0)
    //     0x7e5960: ldur            x4, [x0, #-1]
    //     0x7e5964: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5968: cmp             x4, #0x3e
    // 0x7e596c: b.eq            #0x7e597c
    // 0x7e5970: r8 = double
    //     0x7e5970: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x7e5974: r3 = Null
    //     0x7e5974: ldr             x3, [PP, #0x74c0]  ; [pp+0x74c0] Null
    // 0x7e5978: r0 = double()
    //     0x7e5978: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x7e597c: ldur            x16, [fp, #-0xa8]
    // 0x7e5980: r30 = "rect"
    //     0x7e5980: ldr             lr, [PP, #0x7438]  ; [pp+0x7438] "rect"
    // 0x7e5984: stp             lr, x16, [SP]
    // 0x7e5988: r4 = 0
    //     0x7e5988: movz            x4, #0
    // 0x7e598c: ldr             x0, [SP, #8]
    // 0x7e5990: r16 = 140563490515876
    //     0x7e5990: add             x16, PP, #7, lsl #12  ; [pp+0x74d0] IMM: 0x7fd77cebaba4
    //     0x7e5994: add             x16, x16, #0x4d0
    // 0x7e5998: ldp             lr, x5, [x16]
    // 0x7e599c: blr             lr
    // 0x7e59a0: r16 = "width"
    //     0x7e59a0: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] "width"
    // 0x7e59a4: stp             x16, x0, [SP]
    // 0x7e59a8: r4 = 0
    //     0x7e59a8: movz            x4, #0
    // 0x7e59ac: ldr             x0, [SP, #8]
    // 0x7e59b0: r16 = 140563490515876
    //     0x7e59b0: add             x16, PP, #7, lsl #12  ; [pp+0x74e0] IMM: 0x7fd77cebaba4
    //     0x7e59b4: add             x16, x16, #0x4e0
    // 0x7e59b8: ldp             lr, x5, [x16]
    // 0x7e59bc: blr             lr
    // 0x7e59c0: r16 = 1.000000
    //     0x7e59c0: ldr             x16, [PP, #0x44c8]  ; [pp+0x44c8] 1
    // 0x7e59c4: stp             x16, x0, [SP]
    // 0x7e59c8: r4 = 0
    //     0x7e59c8: movz            x4, #0
    // 0x7e59cc: ldr             x0, [SP, #8]
    // 0x7e59d0: r16 = 140563490515876
    //     0x7e59d0: add             x16, PP, #7, lsl #12  ; [pp+0x74f0] IMM: 0x7fd77cebaba4
    //     0x7e59d4: add             x16, x16, #0x4f0
    // 0x7e59d8: ldp             lr, x5, [x16]
    // 0x7e59dc: blr             lr
    // 0x7e59e0: mov             x3, x0
    // 0x7e59e4: r2 = Null
    //     0x7e59e4: mov             x2, NULL
    // 0x7e59e8: r1 = Null
    //     0x7e59e8: mov             x1, NULL
    // 0x7e59ec: stur            x3, [fp, #-0xd0]
    // 0x7e59f0: r4 = 60
    //     0x7e59f0: movz            x4, #0x3c
    // 0x7e59f4: branchIfSmi(r0, 0x7e5a00)
    //     0x7e59f4: tbz             w0, #0, #0x7e5a00
    // 0x7e59f8: r4 = LoadClassIdInstr(r0)
    //     0x7e59f8: ldur            x4, [x0, #-1]
    //     0x7e59fc: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5a00: cmp             x4, #0x3e
    // 0x7e5a04: b.eq            #0x7e5a14
    // 0x7e5a08: r8 = double
    //     0x7e5a08: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x7e5a0c: r3 = Null
    //     0x7e5a0c: ldr             x3, [PP, #0x7500]  ; [pp+0x7500] Null
    // 0x7e5a10: r0 = double()
    //     0x7e5a10: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x7e5a14: ldur            x16, [fp, #-0xa8]
    // 0x7e5a18: r30 = "rect"
    //     0x7e5a18: ldr             lr, [PP, #0x7438]  ; [pp+0x7438] "rect"
    // 0x7e5a1c: stp             lr, x16, [SP]
    // 0x7e5a20: r4 = 0
    //     0x7e5a20: movz            x4, #0
    // 0x7e5a24: ldr             x0, [SP, #8]
    // 0x7e5a28: r16 = 140563490515876
    //     0x7e5a28: add             x16, PP, #7, lsl #12  ; [pp+0x7510] IMM: 0x7fd77cebaba4
    //     0x7e5a2c: add             x16, x16, #0x510
    // 0x7e5a30: ldp             lr, x5, [x16]
    // 0x7e5a34: blr             lr
    // 0x7e5a38: r16 = "height"
    //     0x7e5a38: ldr             x16, [PP, #0x5228]  ; [pp+0x5228] "height"
    // 0x7e5a3c: stp             x16, x0, [SP]
    // 0x7e5a40: r4 = 0
    //     0x7e5a40: movz            x4, #0
    // 0x7e5a44: ldr             x0, [SP, #8]
    // 0x7e5a48: r16 = 140563490515876
    //     0x7e5a48: add             x16, PP, #7, lsl #12  ; [pp+0x7520] IMM: 0x7fd77cebaba4
    //     0x7e5a4c: add             x16, x16, #0x520
    // 0x7e5a50: ldp             lr, x5, [x16]
    // 0x7e5a54: blr             lr
    // 0x7e5a58: r16 = 1.000000
    //     0x7e5a58: ldr             x16, [PP, #0x44c8]  ; [pp+0x44c8] 1
    // 0x7e5a5c: stp             x16, x0, [SP]
    // 0x7e5a60: r4 = 0
    //     0x7e5a60: movz            x4, #0
    // 0x7e5a64: ldr             x0, [SP, #8]
    // 0x7e5a68: r16 = 140563490515876
    //     0x7e5a68: add             x16, PP, #7, lsl #12  ; [pp+0x7530] IMM: 0x7fd77cebaba4
    //     0x7e5a6c: add             x16, x16, #0x530
    // 0x7e5a70: ldp             lr, x5, [x16]
    // 0x7e5a74: blr             lr
    // 0x7e5a78: mov             x3, x0
    // 0x7e5a7c: r2 = Null
    //     0x7e5a7c: mov             x2, NULL
    // 0x7e5a80: r1 = Null
    //     0x7e5a80: mov             x1, NULL
    // 0x7e5a84: stur            x3, [fp, #-0xd8]
    // 0x7e5a88: r4 = 60
    //     0x7e5a88: movz            x4, #0x3c
    // 0x7e5a8c: branchIfSmi(r0, 0x7e5a98)
    //     0x7e5a8c: tbz             w0, #0, #0x7e5a98
    // 0x7e5a90: r4 = LoadClassIdInstr(r0)
    //     0x7e5a90: ldur            x4, [x0, #-1]
    //     0x7e5a94: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5a98: cmp             x4, #0x3e
    // 0x7e5a9c: b.eq            #0x7e5aac
    // 0x7e5aa0: r8 = double
    //     0x7e5aa0: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x7e5aa4: r3 = Null
    //     0x7e5aa4: ldr             x3, [PP, #0x7540]  ; [pp+0x7540] Null
    // 0x7e5aa8: r0 = double()
    //     0x7e5aa8: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x7e5aac: ldur            x0, [fp, #-0xc0]
    // 0x7e5ab0: LoadField: d0 = r0->field_7
    //     0x7e5ab0: ldur            d0, [x0, #7]
    // 0x7e5ab4: ldur            x0, [fp, #-0xd0]
    // 0x7e5ab8: LoadField: d1 = r0->field_7
    //     0x7e5ab8: ldur            d1, [x0, #7]
    // 0x7e5abc: fadd            d2, d0, d1
    // 0x7e5ac0: ldur            x0, [fp, #-0xc8]
    // 0x7e5ac4: LoadField: d1 = r0->field_7
    //     0x7e5ac4: ldur            d1, [x0, #7]
    // 0x7e5ac8: ldur            x0, [fp, #-0xd8]
    // 0x7e5acc: LoadField: d3 = r0->field_7
    //     0x7e5acc: ldur            d3, [x0, #7]
    // 0x7e5ad0: fadd            d4, d1, d3
    // 0x7e5ad4: ldur            x2, [fp, #-0xb8]
    // 0x7e5ad8: StoreField: r2->field_7 = d0
    //     0x7e5ad8: stur            d0, [x2, #7]
    // 0x7e5adc: StoreField: r2->field_f = d1
    //     0x7e5adc: stur            d1, [x2, #0xf]
    // 0x7e5ae0: ArrayStore: r2[0] = d2  ; List_8
    //     0x7e5ae0: stur            d2, [x2, #0x17]
    // 0x7e5ae4: StoreField: r2->field_1f = d4
    //     0x7e5ae4: stur            d4, [x2, #0x1f]
    // 0x7e5ae8: ldur            x16, [fp, #-0xa8]
    // 0x7e5aec: r30 = "id"
    //     0x7e5aec: ldr             lr, [PP, #0x7550]  ; [pp+0x7550] "id"
    // 0x7e5af0: stp             lr, x16, [SP]
    // 0x7e5af4: r4 = 0
    //     0x7e5af4: movz            x4, #0
    // 0x7e5af8: ldr             x0, [SP, #8]
    // 0x7e5afc: r16 = 140563490515876
    //     0x7e5afc: add             x16, PP, #7, lsl #12  ; [pp+0x7558] IMM: 0x7fd77cebaba4
    //     0x7e5b00: add             x16, x16, #0x558
    // 0x7e5b04: ldp             lr, x5, [x16]
    // 0x7e5b08: blr             lr
    // 0x7e5b0c: mov             x3, x0
    // 0x7e5b10: r2 = Null
    //     0x7e5b10: mov             x2, NULL
    // 0x7e5b14: r1 = Null
    //     0x7e5b14: mov             x1, NULL
    // 0x7e5b18: stur            x3, [fp, #-0xc0]
    // 0x7e5b1c: branchIfSmi(r0, 0x7e5b40)
    //     0x7e5b1c: tbz             w0, #0, #0x7e5b40
    // 0x7e5b20: r4 = LoadClassIdInstr(r0)
    //     0x7e5b20: ldur            x4, [x0, #-1]
    //     0x7e5b24: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5b28: sub             x4, x4, #0x3c
    // 0x7e5b2c: cmp             x4, #1
    // 0x7e5b30: b.ls            #0x7e5b40
    // 0x7e5b34: r8 = int
    //     0x7e5b34: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7e5b38: r3 = Null
    //     0x7e5b38: ldr             x3, [PP, #0x7568]  ; [pp+0x7568] Null
    // 0x7e5b3c: r0 = int()
    //     0x7e5b3c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7e5b40: ldur            x16, [fp, #-0xa8]
    // 0x7e5b44: r30 = "wid"
    //     0x7e5b44: ldr             lr, [PP, #0x6c28]  ; [pp+0x6c28] "wid"
    // 0x7e5b48: stp             lr, x16, [SP]
    // 0x7e5b4c: r4 = 0
    //     0x7e5b4c: movz            x4, #0
    // 0x7e5b50: ldr             x0, [SP, #8]
    // 0x7e5b54: r16 = 140563490515876
    //     0x7e5b54: add             x16, PP, #7, lsl #12  ; [pp+0x7578] IMM: 0x7fd77cebaba4
    //     0x7e5b58: add             x16, x16, #0x578
    // 0x7e5b5c: ldp             lr, x5, [x16]
    // 0x7e5b60: blr             lr
    // 0x7e5b64: mov             x3, x0
    // 0x7e5b68: r2 = Null
    //     0x7e5b68: mov             x2, NULL
    // 0x7e5b6c: r1 = Null
    //     0x7e5b6c: mov             x1, NULL
    // 0x7e5b70: stur            x3, [fp, #-0xc8]
    // 0x7e5b74: branchIfSmi(r0, 0x7e5b98)
    //     0x7e5b74: tbz             w0, #0, #0x7e5b98
    // 0x7e5b78: r4 = LoadClassIdInstr(r0)
    //     0x7e5b78: ldur            x4, [x0, #-1]
    //     0x7e5b7c: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5b80: sub             x4, x4, #0x3c
    // 0x7e5b84: cmp             x4, #1
    // 0x7e5b88: b.ls            #0x7e5b98
    // 0x7e5b8c: r8 = int
    //     0x7e5b8c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7e5b90: r3 = Null
    //     0x7e5b90: ldr             x3, [PP, #0x7588]  ; [pp+0x7588] Null
    // 0x7e5b94: r0 = int()
    //     0x7e5b94: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7e5b98: r0 = LoadStaticField(0x1170)
    //     0x7e5b98: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e5b9c: ldr             x0, [x0, #0x22e0]
    // 0x7e5ba0: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e5ba4: cmp             w0, w16
    // 0x7e5ba8: b.ne            #0x7e5bb4
    // 0x7e5bac: r2 = _jfg
    //     0x7e5bac: ldr             x2, [PP, #0x6b30]  ; [pp+0x6b30] Field <PKa._jfg@1032314544>: static late final (offset: 0x1170)
    // 0x7e5bb0: r0 = InitLateFinalStaticField()
    //     0x7e5bb0: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7e5bb4: mov             x1, x0
    // 0x7e5bb8: ldur            x2, [fp, #-0xb0]
    // 0x7e5bbc: stur            x0, [fp, #-0xd0]
    // 0x7e5bc0: r0 = call 0x5f0864
    //     0x7e5bc0: bl              #0x5f0864
    // 0x7e5bc4: stur            x0, [fp, #-0xd8]
    // 0x7e5bc8: cmp             w0, NULL
    // 0x7e5bcc: b.eq            #0x7e5be0
    // 0x7e5bd0: LoadField: r1 = r0->field_13
    //     0x7e5bd0: ldur            w1, [x0, #0x13]
    // 0x7e5bd4: DecompressPointer r1
    //     0x7e5bd4: add             x1, x1, HEAP, lsl #32
    // 0x7e5bd8: ldur            x2, [fp, #-0xb8]
    // 0x7e5bdc: r0 = call 0x2545cc
    //     0x7e5bdc: bl              #0x2545cc
    // 0x7e5be0: ldur            x1, [fp, #-0xd0]
    // 0x7e5be4: ldur            x2, [fp, #-0xb0]
    // 0x7e5be8: r0 = call 0x5f0864
    //     0x7e5be8: bl              #0x5f0864
    // 0x7e5bec: stur            x0, [fp, #-0xb8]
    // 0x7e5bf0: cmp             w0, NULL
    // 0x7e5bf4: b.eq            #0x7e5c08
    // 0x7e5bf8: LoadField: r1 = r0->field_f
    //     0x7e5bf8: ldur            w1, [x0, #0xf]
    // 0x7e5bfc: DecompressPointer r1
    //     0x7e5bfc: add             x1, x1, HEAP, lsl #32
    // 0x7e5c00: ldur            x2, [fp, #-0xc0]
    // 0x7e5c04: r0 = call 0x2545cc
    //     0x7e5c04: bl              #0x2545cc
    // 0x7e5c08: ldur            x1, [fp, #-0xd0]
    // 0x7e5c0c: ldur            x2, [fp, #-0xb0]
    // 0x7e5c10: r0 = call 0x5f0864
    //     0x7e5c10: bl              #0x5f0864
    // 0x7e5c14: stur            x0, [fp, #-0xb0]
    // 0x7e5c18: cmp             w0, NULL
    // 0x7e5c1c: b.eq            #0x7e5e24
    // 0x7e5c20: LoadField: r1 = r0->field_1b
    //     0x7e5c20: ldur            w1, [x0, #0x1b]
    // 0x7e5c24: DecompressPointer r1
    //     0x7e5c24: add             x1, x1, HEAP, lsl #32
    // 0x7e5c28: ldur            x2, [fp, #-0xc8]
    // 0x7e5c2c: r0 = call 0x2545cc
    //     0x7e5c2c: bl              #0x2545cc
    // 0x7e5c30: b               #0x7e5e24
    // 0x7e5c34: r16 = "VideoOutput.WaitUntilFirstFrameRenderedNotify"
    //     0x7e5c34: ldr             x16, [PP, #0x7598]  ; [pp+0x7598] "VideoOutput.WaitUntilFirstFrameRenderedNotify"
    // 0x7e5c38: ldur            lr, [fp, #-0xa0]
    // 0x7e5c3c: stp             lr, x16, [SP]
    // 0x7e5c40: r0 = call 0x5a8ba0
    //     0x7e5c40: bl              #0x5a8ba0
    // 0x7e5c44: tbnz            w0, #4, #0x7e5e24
    // 0x7e5c48: ldur            x16, [fp, #-0xa8]
    // 0x7e5c4c: r30 = "handle"
    //     0x7e5c4c: ldr             lr, [PP, #0x6b60]  ; [pp+0x6b60] "handle"
    // 0x7e5c50: stp             lr, x16, [SP]
    // 0x7e5c54: r4 = 0
    //     0x7e5c54: movz            x4, #0
    // 0x7e5c58: ldr             x0, [SP, #8]
    // 0x7e5c5c: r16 = 140563490515876
    //     0x7e5c5c: add             x16, PP, #7, lsl #12  ; [pp+0x75a0] IMM: 0x7fd77cebaba4
    //     0x7e5c60: add             x16, x16, #0x5a0
    // 0x7e5c64: ldp             lr, x5, [x16]
    // 0x7e5c68: blr             lr
    // 0x7e5c6c: mov             x3, x0
    // 0x7e5c70: r2 = Null
    //     0x7e5c70: mov             x2, NULL
    // 0x7e5c74: r1 = Null
    //     0x7e5c74: mov             x1, NULL
    // 0x7e5c78: stur            x3, [fp, #-0xa0]
    // 0x7e5c7c: branchIfSmi(r0, 0x7e5ca0)
    //     0x7e5c7c: tbz             w0, #0, #0x7e5ca0
    // 0x7e5c80: r4 = LoadClassIdInstr(r0)
    //     0x7e5c80: ldur            x4, [x0, #-1]
    //     0x7e5c84: ubfx            x4, x4, #0xc, #0x14
    // 0x7e5c88: sub             x4, x4, #0x3c
    // 0x7e5c8c: cmp             x4, #1
    // 0x7e5c90: b.ls            #0x7e5ca0
    // 0x7e5c94: r8 = int
    //     0x7e5c94: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7e5c98: r3 = Null
    //     0x7e5c98: ldr             x3, [PP, #0x75b0]  ; [pp+0x75b0] Null
    // 0x7e5c9c: r0 = int()
    //     0x7e5c9c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7e5ca0: ldur            x2, [fp, #-0xa0]
    // 0x7e5ca4: r0 = 60
    //     0x7e5ca4: movz            x0, #0x3c
    // 0x7e5ca8: branchIfSmi(r2, 0x7e5cb4)
    //     0x7e5ca8: tbz             w2, #0, #0x7e5cb4
    // 0x7e5cac: r0 = LoadClassIdInstr(r2)
    //     0x7e5cac: ldur            x0, [x2, #-1]
    //     0x7e5cb0: ubfx            x0, x0, #0xc, #0x14
    // 0x7e5cb4: str             x2, [SP]
    // 0x7e5cb8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e5cb8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e5cbc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e5cbc: movz            x17, #0x3a5d
    //     0x7e5cc0: add             lr, x0, x17
    //     0x7e5cc4: ldr             lr, [x21, lr, lsl #3]
    //     0x7e5cc8: blr             lr
    // 0x7e5ccc: stur            x0, [fp, #-0xa8]
    // 0x7e5cd0: str             NULL, [SP]
    // 0x7e5cd4: mov             x1, x0
    // 0x7e5cd8: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e5cd8: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e5cdc: r0 = call 0x254858
    //     0x7e5cdc: bl              #0x254858
    // 0x7e5ce0: r0 = LoadStaticField(0x1170)
    //     0x7e5ce0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e5ce4: ldr             x0, [x0, #0x22e0]
    // 0x7e5ce8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e5cec: cmp             w0, w16
    // 0x7e5cf0: b.ne            #0x7e5cfc
    // 0x7e5cf4: r2 = _jfg
    //     0x7e5cf4: ldr             x2, [PP, #0x6b30]  ; [pp+0x6b30] Field <PKa._jfg@1032314544>: static late final (offset: 0x1170)
    // 0x7e5cf8: r0 = InitLateFinalStaticField()
    //     0x7e5cf8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7e5cfc: mov             x1, x0
    // 0x7e5d00: ldur            x2, [fp, #-0xa0]
    // 0x7e5d04: r0 = call 0x5f0864
    //     0x7e5d04: bl              #0x5f0864
    // 0x7e5d08: cmp             w0, NULL
    // 0x7e5d0c: b.ne            #0x7e5d18
    // 0x7e5d10: r0 = Null
    //     0x7e5d10: mov             x0, NULL
    // 0x7e5d14: b               #0x7e5d24
    // 0x7e5d18: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e5d18: ldur            w1, [x0, #0x17]
    // 0x7e5d1c: DecompressPointer r1
    //     0x7e5d1c: add             x1, x1, HEAP, lsl #32
    // 0x7e5d20: mov             x0, x1
    // 0x7e5d24: stur            x0, [fp, #-0x90]
    // 0x7e5d28: cmp             w0, NULL
    // 0x7e5d2c: b.ne            #0x7e5d38
    // 0x7e5d30: r1 = Null
    //     0x7e5d30: mov             x1, NULL
    // 0x7e5d34: b               #0x7e5d60
    // 0x7e5d38: LoadField: r1 = r0->field_b
    //     0x7e5d38: ldur            w1, [x0, #0xb]
    // 0x7e5d3c: DecompressPointer r1
    //     0x7e5d3c: add             x1, x1, HEAP, lsl #32
    // 0x7e5d40: LoadField: r2 = r1->field_b
    //     0x7e5d40: ldur            x2, [x1, #0xb]
    // 0x7e5d44: ubfx            x2, x2, #0, #0x20
    // 0x7e5d48: and             w1, w2, #0x1e
    // 0x7e5d4c: cbnz            w1, #0x7e5d58
    // 0x7e5d50: r2 = false
    //     0x7e5d50: add             x2, NULL, #0x30  ; false
    // 0x7e5d54: b               #0x7e5d5c
    // 0x7e5d58: r2 = true
    //     0x7e5d58: add             x2, NULL, #0x20  ; true
    // 0x7e5d5c: mov             x1, x2
    // 0x7e5d60: cmp             w1, NULL
    // 0x7e5d64: b.eq            #0x7e5e24
    // 0x7e5d68: tbz             w1, #4, #0x7e5e24
    // 0x7e5d6c: cmp             w0, NULL
    // 0x7e5d70: b.eq            #0x7e5e24
    // 0x7e5d74: mov             x1, x0
    // 0x7e5d78: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e5d78: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e5d7c: r0 = call 0x5ee7a4
    //     0x7e5d7c: bl              #0x5ee7a4
    // 0x7e5d80: b               #0x7e5e24
    // 0x7e5d84: sub             SP, fp, #0xe8
    // 0x7e5d88: stur            x0, [fp, #-0x88]
    // 0x7e5d8c: stur            x1, [fp, #-0x90]
    // 0x7e5d90: r0 = LoadStaticField(0x794)
    //     0x7e5d90: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e5d94: ldr             x0, [x0, #0xf28]
    // 0x7e5d98: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e5d9c: cmp             w0, w16
    // 0x7e5da0: b.ne            #0x7e5dac
    // 0x7e5da4: r2 = aVd
    //     0x7e5da4: ldr             x2, [PP, #0x168]  ; [pp+0x168] Field <::.aVd>: static late (offset: 0x794)
    // 0x7e5da8: r0 = InitLateStaticField()
    //     0x7e5da8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e5dac: ldur            x0, [fp, #-0x88]
    // 0x7e5db0: r1 = 60
    //     0x7e5db0: movz            x1, #0x3c
    // 0x7e5db4: branchIfSmi(r0, 0x7e5dc0)
    //     0x7e5db4: tbz             w0, #0, #0x7e5dc0
    // 0x7e5db8: r1 = LoadClassIdInstr(r0)
    //     0x7e5db8: ldur            x1, [x0, #-1]
    //     0x7e5dbc: ubfx            x1, x1, #0xc, #0x14
    // 0x7e5dc0: str             x0, [SP]
    // 0x7e5dc4: mov             x0, x1
    // 0x7e5dc8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e5dc8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e5dcc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e5dcc: movz            x17, #0x3a5d
    //     0x7e5dd0: add             lr, x0, x17
    //     0x7e5dd4: ldr             lr, [x21, lr, lsl #3]
    //     0x7e5dd8: blr             lr
    // 0x7e5ddc: str             NULL, [SP]
    // 0x7e5de0: mov             x1, x0
    // 0x7e5de4: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e5de4: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e5de8: r0 = call 0x254858
    //     0x7e5de8: bl              #0x254858
    // 0x7e5dec: ldur            x0, [fp, #-0x90]
    // 0x7e5df0: r1 = LoadClassIdInstr(r0)
    //     0x7e5df0: ldur            x1, [x0, #-1]
    //     0x7e5df4: ubfx            x1, x1, #0xc, #0x14
    // 0x7e5df8: str             x0, [SP]
    // 0x7e5dfc: mov             x0, x1
    // 0x7e5e00: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e5e00: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e5e04: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e5e04: movz            x17, #0x3a5d
    //     0x7e5e08: add             lr, x0, x17
    //     0x7e5e0c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e5e10: blr             lr
    // 0x7e5e14: str             NULL, [SP]
    // 0x7e5e18: mov             x1, x0
    // 0x7e5e1c: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e5e1c: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e5e20: r0 = call 0x254858
    //     0x7e5e20: bl              #0x254858
    // 0x7e5e24: r0 = Null
    //     0x7e5e24: mov             x0, NULL
    // 0x7e5e28: r0 = ReturnAsyncNotFuture()
    //     0x7e5e28: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e5e2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5e2c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5e30: b               #0x7e5734
  }
  [closure] static Future<String> Neh(dynamic) async {
    // ** addr: 0x7e6068, size: 0x10c
    // 0x7e6068: EnterFrame
    //     0x7e6068: stp             fp, lr, [SP, #-0x10]!
    //     0x7e606c: mov             fp, SP
    // 0x7e6070: AllocStack(0x30)
    //     0x7e6070: sub             SP, SP, #0x30
    // 0x7e6074: SetupParameters(dynamic _ /* r1 */)
    //     0x7e6074: stur            NULL, [fp, #-8]
    //     0x7e6078: movz            x0, #0
    //     0x7e607c: add             x1, fp, w0, sxtw #2
    //     0x7e6080: ldr             x1, [x1, #0x10]
    //     0x7e6084: ldur            w2, [x1, #0x17]
    //     0x7e6088: add             x2, x2, HEAP, lsl #32
    //     0x7e608c: stur            x2, [fp, #-0x10]
    // 0x7e6090: CheckStackOverflow
    //     0x7e6090: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e6094: cmp             SP, x16
    //     0x7e6098: b.ls            #0x7e616c
    // 0x7e609c: InitAsync() -> Future<String>
    //     0x7e609c: ldr             x0, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    //     0x7e60a0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e60a4: r0 = LoadStaticField(0x1174)
    //     0x7e60a4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e60a8: ldr             x0, [x0, #0x22e8]
    // 0x7e60ac: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e60b0: cmp             w0, w16
    // 0x7e60b4: b.ne            #0x7e60c0
    // 0x7e60b8: r2 = _jxd
    //     0x7e60b8: ldr             x2, [PP, #0x6b58]  ; [pp+0x6b58] Field <PKa._jxd@1032314544>: static late final (offset: 0x1174)
    // 0x7e60bc: r0 = InitLateFinalStaticField()
    //     0x7e60bc: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7e60c0: r16 = Instance_MethodChannel
    //     0x7e60c0: ldr             x16, [PP, #0x6b70]  ; [pp+0x6b70] Obj!MethodChannel@441bc1
    // 0x7e60c4: stp             x16, NULL, [SP, #8]
    // 0x7e60c8: r16 = "Utils.IsEmulator"
    //     0x7e60c8: ldr             x16, [PP, #0x70c8]  ; [pp+0x70c8] "Utils.IsEmulator"
    // 0x7e60cc: str             x16, [SP]
    // 0x7e60d0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e60d0: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e60d4: r0 = call 0x6a5e04
    //     0x7e60d4: bl              #0x6a5e04
    // 0x7e60d8: mov             x1, x0
    // 0x7e60dc: stur            x1, [fp, #-0x18]
    // 0x7e60e0: r0 = Await()
    //     0x7e60e0: bl              #0x74ab64  ; AwaitStub
    // 0x7e60e4: mov             x3, x0
    // 0x7e60e8: r2 = Null
    //     0x7e60e8: mov             x2, NULL
    // 0x7e60ec: r1 = Null
    //     0x7e60ec: mov             x1, NULL
    // 0x7e60f0: stur            x3, [fp, #-0x10]
    // 0x7e60f4: r4 = 60
    //     0x7e60f4: movz            x4, #0x3c
    // 0x7e60f8: branchIfSmi(r0, 0x7e6104)
    //     0x7e60f8: tbz             w0, #0, #0x7e6104
    // 0x7e60fc: r4 = LoadClassIdInstr(r0)
    //     0x7e60fc: ldur            x4, [x0, #-1]
    //     0x7e6100: ubfx            x4, x4, #0xc, #0x14
    // 0x7e6104: cmp             x4, #0x3f
    // 0x7e6108: b.eq            #0x7e6118
    // 0x7e610c: r8 = bool
    //     0x7e610c: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x7e6110: r3 = Null
    //     0x7e6110: ldr             x3, [PP, #0x70d0]  ; [pp+0x70d0] Null
    // 0x7e6114: r0 = bool()
    //     0x7e6114: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x7e6118: ldur            x0, [fp, #-0x10]
    // 0x7e611c: tbnz            w0, #4, #0x7e6164
    // 0x7e6120: r0 = LoadStaticField(0x794)
    //     0x7e6120: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e6124: ldr             x0, [x0, #0xf28]
    // 0x7e6128: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e612c: cmp             w0, w16
    // 0x7e6130: b.ne            #0x7e613c
    // 0x7e6134: r2 = aVd
    //     0x7e6134: ldr             x2, [PP, #0x168]  ; [pp+0x168] Field <::.aVd>: static late (offset: 0x794)
    // 0x7e6138: r0 = InitLateStaticField()
    //     0x7e6138: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e613c: str             NULL, [SP]
    // 0x7e6140: r1 = "media_kit: Emulator detected."
    //     0x7e6140: ldr             x1, [PP, #0x70e0]  ; [pp+0x70e0] "media_kit: Emulator detected."
    // 0x7e6144: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e6144: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e6148: r0 = call 0x254858
    //     0x7e6148: bl              #0x254858
    // 0x7e614c: str             NULL, [SP]
    // 0x7e6150: r1 = "media_kit: Enforcing S/W rendering."
    //     0x7e6150: ldr             x1, [PP, #0x70e8]  ; [pp+0x70e8] "media_kit: Enforcing S/W rendering."
    // 0x7e6154: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e6154: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e6158: r0 = call 0x254858
    //     0x7e6158: bl              #0x254858
    // 0x7e615c: r0 = "no"
    //     0x7e615c: ldr             x0, [PP, #0x6bc8]  ; [pp+0x6bc8] "no"
    // 0x7e6160: b               #0x7e6168
    // 0x7e6164: r0 = "auto-safe"
    //     0x7e6164: ldr             x0, [PP, #0x70f0]  ; [pp+0x70f0] "auto-safe"
    // 0x7e6168: r0 = ReturnAsyncNotFuture()
    //     0x7e6168: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e616c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e616c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e6170: b               #0x7e609c
  }
  [closure] Future<void> _cVb(dynamic) {
    // ** addr: 0x73ee0c, size: -0x1
  }
  [closure] Future<void> lfg(dynamic) {
    // ** addr: 0x73e230, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, FJa) {
    // ** addr: 0x73e1a0, size: -0x1
  }
  static MethodChannel _jxd() {
    // ** addr: 0x73edc8, size: -0x1
  }
}

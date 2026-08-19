// lib: , url: IOi

// class id: 1049605, size: 0x8
class :: {
}

// class id: 441, size: 0xc, field offset: 0x8
class STa extends Object
    implements RTa {

  [closure] Future<Y0> <anonymous closure>(dynamic) async {
    // ** addr: 0x7d0f00, size: 0x368
    // 0x7d0f00: EnterFrame
    //     0x7d0f00: stp             fp, lr, [SP, #-0x10]!
    //     0x7d0f04: mov             fp, SP
    // 0x7d0f08: AllocStack(0xc0)
    //     0x7d0f08: sub             SP, SP, #0xc0
    // 0x7d0f0c: SetupParameters(STa this /* r1 */)
    //     0x7d0f0c: stur            NULL, [fp, #-8]
    //     0x7d0f10: movz            x0, #0
    //     0x7d0f14: add             x1, fp, w0, sxtw #2
    //     0x7d0f18: ldr             x1, [x1, #0x10]
    //     0x7d0f1c: ldur            w2, [x1, #0x17]
    //     0x7d0f20: add             x2, x2, HEAP, lsl #32
    //     0x7d0f24: stur            x2, [fp, #-0x88]
    // 0x7d0f28: CheckStackOverflow
    //     0x7d0f28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7d0f2c: cmp             SP, x16
    //     0x7d0f30: b.ls            #0x7d1254
    // 0x7d0f34: LoadField: r3 = r1->field_b
    //     0x7d0f34: ldur            w3, [x1, #0xb]
    // 0x7d0f38: DecompressPointer r3
    //     0x7d0f38: add             x3, x3, HEAP, lsl #32
    // 0x7d0f3c: mov             x0, x3
    // 0x7d0f40: stur            x3, [fp, #-0x80]
    // 0x7d0f44: r0 = InitAsync()
    //     0x7d0f44: bl              #0x74ada8  ; InitAsyncStub
    // 0x7d0f48: ldur            x2, [fp, #-0x88]
    // 0x7d0f4c: LoadField: r0 = r2->field_f
    //     0x7d0f4c: ldur            w0, [x2, #0xf]
    // 0x7d0f50: DecompressPointer r0
    //     0x7d0f50: add             x0, x0, HEAP, lsl #32
    // 0x7d0f54: LoadField: r3 = r0->field_7
    //     0x7d0f54: ldur            w3, [x0, #7]
    // 0x7d0f58: DecompressPointer r3
    //     0x7d0f58: add             x3, x3, HEAP, lsl #32
    // 0x7d0f5c: stur            x3, [fp, #-0x98]
    // 0x7d0f60: LoadField: r0 = r3->field_b
    //     0x7d0f60: ldur            w0, [x3, #0xb]
    // 0x7d0f64: LoadField: r1 = r3->field_f
    //     0x7d0f64: ldur            w1, [x3, #0xf]
    // 0x7d0f68: DecompressPointer r1
    //     0x7d0f68: add             x1, x1, HEAP, lsl #32
    // 0x7d0f6c: LoadField: r4 = r1->field_b
    //     0x7d0f6c: ldur            w4, [x1, #0xb]
    // 0x7d0f70: r5 = LoadInt32Instr(r0)
    //     0x7d0f70: sbfx            x5, x0, #1, #0x1f
    // 0x7d0f74: stur            x5, [fp, #-0x90]
    // 0x7d0f78: r0 = LoadInt32Instr(r4)
    //     0x7d0f78: sbfx            x0, x4, #1, #0x1f
    // 0x7d0f7c: cmp             x5, x0
    // 0x7d0f80: b.ne            #0x7d0f8c
    // 0x7d0f84: mov             x1, x3
    // 0x7d0f88: r0 = call 0x2271b8
    //     0x7d0f88: bl              #0x2271b8
    // 0x7d0f8c: ldur            x0, [fp, #-0x98]
    // 0x7d0f90: ldur            x1, [fp, #-0x90]
    // 0x7d0f94: add             x2, x1, #1
    // 0x7d0f98: lsl             x3, x2, #1
    // 0x7d0f9c: StoreField: r0->field_b = r3
    //     0x7d0f9c: stur            w3, [x0, #0xb]
    // 0x7d0fa0: LoadField: r2 = r0->field_f
    //     0x7d0fa0: ldur            w2, [x0, #0xf]
    // 0x7d0fa4: DecompressPointer r2
    //     0x7d0fa4: add             x2, x2, HEAP, lsl #32
    // 0x7d0fa8: stur            x2, [fp, #-0xa0]
    // 0x7d0fac: r0 = QTa()
    //     0x7d0fac: bl              #0x74e410  ; AllocateQTaStub -> QTa (size=0xc)
    // 0x7d0fb0: ldur            x1, [fp, #-0xa0]
    // 0x7d0fb4: ldur            x2, [fp, #-0x90]
    // 0x7d0fb8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7d0fb8: add             x25, x1, x2, lsl #2
    //     0x7d0fbc: add             x25, x25, #0xf
    //     0x7d0fc0: str             w0, [x25]
    //     0x7d0fc4: tbz             w0, #0, #0x7d0fe0
    //     0x7d0fc8: ldurb           w16, [x1, #-1]
    //     0x7d0fcc: ldurb           w17, [x0, #-1]
    //     0x7d0fd0: and             x16, x17, x16, lsr #2
    //     0x7d0fd4: tst             x16, HEAP, lsr #32
    //     0x7d0fd8: b.eq            #0x7d0fe0
    //     0x7d0fdc: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7d0fe0: ldur            x0, [fp, #-0x88]
    // 0x7d0fe4: ldur            x3, [fp, #-0x80]
    // 0x7d0fe8: mov             x2, x0
    // 0x7d0fec: r1 = Function '<anonymous closure>':.
    //     0x7d0fec: add             x1, PP, #8, lsl #12  ; [pp+0x89f8] AnonymousClosure: (0x6bc910), in [IOi] STa::<anonymous closure> (0x7d0f00)
    //     0x7d0ff0: ldr             x1, [x1, #0x9f8]
    // 0x7d0ff4: r0 = AllocateClosure()
    //     0x7d0ff4: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7d0ff8: mov             x3, x0
    // 0x7d0ffc: ldur            x0, [fp, #-0x80]
    // 0x7d1000: stur            x3, [fp, #-0x98]
    // 0x7d1004: StoreField: r3->field_b = r0
    //     0x7d1004: stur            w0, [x3, #0xb]
    // 0x7d1008: r1 = Null
    //     0x7d1008: mov             x1, NULL
    // 0x7d100c: r2 = 4
    //     0x7d100c: movz            x2, #0x4
    // 0x7d1010: r0 = AllocateArray()
    //     0x7d1010: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7d1014: mov             x3, x0
    // 0x7d1018: ldur            x2, [fp, #-0x88]
    // 0x7d101c: LoadField: r0 = r2->field_f
    //     0x7d101c: ldur            w0, [x2, #0xf]
    // 0x7d1020: DecompressPointer r0
    //     0x7d1020: add             x0, x0, HEAP, lsl #32
    // 0x7d1024: StoreField: r3->field_f = r0
    //     0x7d1024: stur            w0, [x3, #0xf]
    // 0x7d1028: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x7d1028: ldur            w0, [x2, #0x17]
    // 0x7d102c: DecompressPointer r0
    //     0x7d102c: add             x0, x0, HEAP, lsl #32
    // 0x7d1030: r1 = LoadInt32Instr(r0)
    //     0x7d1030: sbfx            x1, x0, #1, #0x1f
    //     0x7d1034: tbz             w0, #0, #0x7d103c
    //     0x7d1038: ldur            x1, [x0, #7]
    // 0x7d103c: add             x4, x1, #1
    // 0x7d1040: r0 = BoxInt64Instr(r4)
    //     0x7d1040: sbfiz           x0, x4, #1, #0x1f
    //     0x7d1044: cmp             x4, x0, asr #1
    //     0x7d1048: b.eq            #0x7d1054
    //     0x7d104c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7d1050: stur            x4, [x0, #7]
    // 0x7d1054: StoreField: r3->field_13 = r0
    //     0x7d1054: stur            w0, [x3, #0x13]
    // 0x7d1058: r16 = <Object?, Object?>
    //     0x7d1058: ldr             x16, [PP, #0x3b70]  ; [pp+0x3b70] TypeArguments: <Object?, Object?>
    // 0x7d105c: stp             x3, x16, [SP]
    // 0x7d1060: r0 = Map._fromLiteral()
    //     0x7d1060: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x7d1064: ldur            x1, [fp, #-0x80]
    // 0x7d1068: r2 = Null
    //     0x7d1068: mov             x2, NULL
    // 0x7d106c: r3 = <FutureOr<Y0>>
    //     0x7d106c: add             x3, PP, #8, lsl #12  ; [pp+0x8a00] TypeArguments: <FutureOr<Y0>>
    //     0x7d1070: ldr             x3, [x3, #0xa00]
    // 0x7d1074: stur            x0, [fp, #-0xa0]
    // 0x7d1078: r30 = InstantiateTypeArgumentsStub
    //     0x7d1078: ldr             lr, [PP, #0x4f8]  ; [pp+0x4f8] Stub: InstantiateTypeArguments (0x210f98)
    // 0x7d107c: LoadField: r30 = r30->field_7
    //     0x7d107c: ldur            lr, [lr, #7]
    // 0x7d1080: blr             lr
    // 0x7d1084: ldur            x16, [fp, #-0x98]
    // 0x7d1088: stp             x16, x0, [SP, #8]
    // 0x7d108c: ldur            x16, [fp, #-0xa0]
    // 0x7d1090: str             x16, [SP]
    // 0x7d1094: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7d1094: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7d1098: r0 = call 0x6bc8ac
    //     0x7d1098: bl              #0x6bc8ac
    // 0x7d109c: mov             x3, x0
    // 0x7d10a0: r2 = Null
    //     0x7d10a0: mov             x2, NULL
    // 0x7d10a4: r1 = Null
    //     0x7d10a4: mov             x1, NULL
    // 0x7d10a8: stur            x3, [fp, #-0xa8]
    // 0x7d10ac: cmp             w0, NULL
    // 0x7d10b0: b.eq            #0x7d1148
    // 0x7d10b4: branchIfSmi(r0, 0x7d1148)
    //     0x7d10b4: tbz             w0, #0, #0x7d1148
    // 0x7d10b8: r3 = LoadClassIdInstr(r0)
    //     0x7d10b8: ldur            x3, [x0, #-1]
    //     0x7d10bc: ubfx            x3, x3, #0xc, #0x14
    // 0x7d10c0: r17 = 5159
    //     0x7d10c0: movz            x17, #0x1427
    // 0x7d10c4: cmp             x3, x17
    // 0x7d10c8: b.eq            #0x7d1150
    // 0x7d10cc: r4 = LoadClassIdInstr(r0)
    //     0x7d10cc: ldur            x4, [x0, #-1]
    //     0x7d10d0: ubfx            x4, x4, #0xc, #0x14
    // 0x7d10d4: ldr             x3, [THR, #0x680]  ; THR::isolate_group
    // 0x7d10d8: ldr             x3, [x3, #0x18]
    // 0x7d10dc: ldr             x3, [x3, x4, lsl #3]
    // 0x7d10e0: LoadField: r3 = r3->field_2b
    //     0x7d10e0: ldur            w3, [x3, #0x2b]
    // 0x7d10e4: DecompressPointer r3
    //     0x7d10e4: add             x3, x3, HEAP, lsl #32
    // 0x7d10e8: cmp             w3, NULL
    // 0x7d10ec: b.eq            #0x7d1148
    // 0x7d10f0: LoadField: r3 = r3->field_f
    //     0x7d10f0: ldur            w3, [x3, #0xf]
    // 0x7d10f4: lsr             x3, x3, #3
    // 0x7d10f8: r17 = 5159
    //     0x7d10f8: movz            x17, #0x1427
    // 0x7d10fc: cmp             x3, x17
    // 0x7d1100: b.eq            #0x7d1150
    // 0x7d1104: r3 = SubtypeTestCache
    //     0x7d1104: add             x3, PP, #8, lsl #12  ; [pp+0x8a08] SubtypeTestCache
    //     0x7d1108: ldr             x3, [x3, #0xa08]
    // 0x7d110c: r30 = Subtype1TestCacheStub
    //     0x7d110c: ldr             lr, [PP, #0x538]  ; [pp+0x538] Stub: Subtype1TestCache (0x222f78)
    // 0x7d1110: LoadField: r30 = r30->field_7
    //     0x7d1110: ldur            lr, [lr, #7]
    // 0x7d1114: blr             lr
    // 0x7d1118: cmp             w7, NULL
    // 0x7d111c: b.eq            #0x7d1128
    // 0x7d1120: tbnz            w7, #4, #0x7d1148
    // 0x7d1124: b               #0x7d1150
    // 0x7d1128: r8 = Future
    //     0x7d1128: add             x8, PP, #8, lsl #12  ; [pp+0x8a10] Type: Future
    //     0x7d112c: ldr             x8, [x8, #0xa10]
    // 0x7d1130: r3 = SubtypeTestCache
    //     0x7d1130: add             x3, PP, #8, lsl #12  ; [pp+0x8a18] SubtypeTestCache
    //     0x7d1134: ldr             x3, [x3, #0xa18]
    // 0x7d1138: r30 = InstanceOfStub
    //     0x7d1138: ldr             lr, [PP, #0x438]  ; [pp+0x438] Stub: InstanceOf (0x2112c8)
    // 0x7d113c: LoadField: r30 = r30->field_7
    //     0x7d113c: ldur            lr, [lr, #7]
    // 0x7d1140: blr             lr
    // 0x7d1144: b               #0x7d1154
    // 0x7d1148: r0 = false
    //     0x7d1148: add             x0, NULL, #0x30  ; false
    // 0x7d114c: b               #0x7d1154
    // 0x7d1150: r0 = true
    //     0x7d1150: add             x0, NULL, #0x20  ; true
    // 0x7d1154: tbnz            w0, #4, #0x7d11b0
    // 0x7d1158: ldur            x0, [fp, #-0xa8]
    // 0x7d115c: ldur            x1, [fp, #-0x80]
    // 0x7d1160: r0 = AwaitWithTypeCheck()
    //     0x7d1160: bl              #0x752f8c  ; AwaitWithTypeCheckStub
    // 0x7d1164: mov             x3, x0
    // 0x7d1168: stur            x3, [fp, #-0x80]
    // 0x7d116c: ldur            x2, [fp, #-0x88]
    // 0x7d1170: LoadField: r0 = r2->field_f
    //     0x7d1170: ldur            w0, [x2, #0xf]
    // 0x7d1174: DecompressPointer r0
    //     0x7d1174: add             x0, x0, HEAP, lsl #32
    // 0x7d1178: LoadField: r2 = r0->field_7
    //     0x7d1178: ldur            w2, [x0, #7]
    // 0x7d117c: DecompressPointer r2
    //     0x7d117c: add             x2, x2, HEAP, lsl #32
    // 0x7d1180: LoadField: r0 = r2->field_b
    //     0x7d1180: ldur            w0, [x2, #0xb]
    // 0x7d1184: r1 = LoadInt32Instr(r0)
    //     0x7d1184: sbfx            x1, x0, #1, #0x1f
    // 0x7d1188: sub             x4, x1, #1
    // 0x7d118c: mov             x0, x1
    // 0x7d1190: mov             x1, x4
    // 0x7d1194: cmp             x1, x0
    // 0x7d1198: b.hs            #0x7d125c
    // 0x7d119c: mov             x1, x2
    // 0x7d11a0: mov             x2, x4
    // 0x7d11a4: r0 = call 0x2d256c
    //     0x7d11a4: bl              #0x2d256c
    // 0x7d11a8: ldur            x0, [fp, #-0x80]
    // 0x7d11ac: r0 = ReturnAsync()
    //     0x7d11ac: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7d11b0: ldur            x2, [fp, #-0x88]
    // 0x7d11b4: LoadField: r0 = r2->field_f
    //     0x7d11b4: ldur            w0, [x2, #0xf]
    // 0x7d11b8: DecompressPointer r0
    //     0x7d11b8: add             x0, x0, HEAP, lsl #32
    // 0x7d11bc: LoadField: r2 = r0->field_7
    //     0x7d11bc: ldur            w2, [x0, #7]
    // 0x7d11c0: DecompressPointer r2
    //     0x7d11c0: add             x2, x2, HEAP, lsl #32
    // 0x7d11c4: LoadField: r0 = r2->field_b
    //     0x7d11c4: ldur            w0, [x2, #0xb]
    // 0x7d11c8: r1 = LoadInt32Instr(r0)
    //     0x7d11c8: sbfx            x1, x0, #1, #0x1f
    // 0x7d11cc: sub             x3, x1, #1
    // 0x7d11d0: mov             x0, x1
    // 0x7d11d4: mov             x1, x3
    // 0x7d11d8: cmp             x1, x0
    // 0x7d11dc: b.hs            #0x7d1260
    // 0x7d11e0: mov             x1, x2
    // 0x7d11e4: mov             x2, x3
    // 0x7d11e8: r0 = call 0x2d256c
    //     0x7d11e8: bl              #0x2d256c
    // 0x7d11ec: ldur            x0, [fp, #-0xa8]
    // 0x7d11f0: r0 = ReturnAsync()
    //     0x7d11f0: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7d11f4: sub             SP, fp, #0xc0
    // 0x7d11f8: ldur            x2, [fp, #-0x88]
    // 0x7d11fc: mov             x4, x0
    // 0x7d1200: mov             x3, x1
    // 0x7d1204: stur            x0, [fp, #-0x80]
    // 0x7d1208: stur            x1, [fp, #-0x98]
    // 0x7d120c: LoadField: r0 = r2->field_f
    //     0x7d120c: ldur            w0, [x2, #0xf]
    // 0x7d1210: DecompressPointer r0
    //     0x7d1210: add             x0, x0, HEAP, lsl #32
    // 0x7d1214: LoadField: r2 = r0->field_7
    //     0x7d1214: ldur            w2, [x0, #7]
    // 0x7d1218: DecompressPointer r2
    //     0x7d1218: add             x2, x2, HEAP, lsl #32
    // 0x7d121c: LoadField: r0 = r2->field_b
    //     0x7d121c: ldur            w0, [x2, #0xb]
    // 0x7d1220: r1 = LoadInt32Instr(r0)
    //     0x7d1220: sbfx            x1, x0, #1, #0x1f
    // 0x7d1224: sub             x5, x1, #1
    // 0x7d1228: mov             x0, x1
    // 0x7d122c: mov             x1, x5
    // 0x7d1230: cmp             x1, x0
    // 0x7d1234: b.hs            #0x7d1264
    // 0x7d1238: mov             x1, x2
    // 0x7d123c: mov             x2, x5
    // 0x7d1240: r0 = call 0x2d256c
    //     0x7d1240: bl              #0x2d256c
    // 0x7d1244: ldur            x0, [fp, #-0x80]
    // 0x7d1248: ldur            x1, [fp, #-0x98]
    // 0x7d124c: r0 = ReThrow()
    //     0x7d124c: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7d1250: brk             #0
    // 0x7d1254: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7d1254: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7d1258: b               #0x7d0f34
    // 0x7d125c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7d125c: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7d1260: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7d1260: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7d1264: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7d1264: bl              #0x7de958  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] FutureOr<Y0> <anonymous closure>(dynamic) {
    // ** addr: 0x6bc910, size: -0x1
  }
}

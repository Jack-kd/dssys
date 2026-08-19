// lib: , url: oGi

// class id: 1049197, size: 0x8
class :: {
}

// class id: 1272, size: 0x14, field offset: 0x8
class Oxa extends Object {
}

// class id: 1273, size: 0x8, field offset: 0x8
abstract class Nxa extends Object {

  static late MethodChannel _jxd; // offset: 0xfe8
  static late final Rb<List<Map<String, dynamic>>> _KOf; // offset: 0xfec
  static late final Rb<Oxa> _LOf; // offset: 0xff0

  [closure] static Future<Null> <anonymous closure>(dynamic, MethodCall) async {
    // ** addr: 0x7b4c38, size: 0x3a4
    // 0x7b4c38: EnterFrame
    //     0x7b4c38: stp             fp, lr, [SP, #-0x10]!
    //     0x7b4c3c: mov             fp, SP
    // 0x7b4c40: AllocStack(0x40)
    //     0x7b4c40: sub             SP, SP, #0x40
    // 0x7b4c44: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7b4c44: stur            NULL, [fp, #-8]
    //     0x7b4c48: movz            x0, #0
    //     0x7b4c4c: add             x1, fp, w0, sxtw #2
    //     0x7b4c50: ldr             x1, [x1, #0x18]
    //     0x7b4c54: add             x2, fp, w0, sxtw #2
    //     0x7b4c58: ldr             x2, [x2, #0x10]
    //     0x7b4c5c: stur            x2, [fp, #-0x18]
    //     0x7b4c60: ldur            w3, [x1, #0x17]
    //     0x7b4c64: add             x3, x3, HEAP, lsl #32
    //     0x7b4c68: stur            x3, [fp, #-0x10]
    // 0x7b4c6c: CheckStackOverflow
    //     0x7b4c6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b4c70: cmp             SP, x16
    //     0x7b4c74: b.ls            #0x7b4fd4
    // 0x7b4c78: InitAsync() -> Future<Null?>
    //     0x7b4c78: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7b4c7c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b4c80: ldur            x0, [fp, #-0x18]
    // 0x7b4c84: LoadField: r1 = r0->field_7
    //     0x7b4c84: ldur            w1, [x0, #7]
    // 0x7b4c88: DecompressPointer r1
    //     0x7b4c88: add             x1, x1, HEAP, lsl #32
    // 0x7b4c8c: stur            x1, [fp, #-0x10]
    // 0x7b4c90: r16 = "onDevices"
    //     0x7b4c90: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2a700] "onDevices"
    //     0x7b4c94: ldr             x16, [x16, #0x700]
    // 0x7b4c98: stp             x1, x16, [SP]
    // 0x7b4c9c: r0 = call 0x5a8ba0
    //     0x7b4c9c: bl              #0x5a8ba0
    // 0x7b4ca0: tbnz            w0, #4, #0x7b4d8c
    // 0x7b4ca4: ldur            x0, [fp, #-0x18]
    // 0x7b4ca8: LoadField: r3 = r0->field_b
    //     0x7b4ca8: ldur            w3, [x0, #0xb]
    // 0x7b4cac: DecompressPointer r3
    //     0x7b4cac: add             x3, x3, HEAP, lsl #32
    // 0x7b4cb0: mov             x0, x3
    // 0x7b4cb4: stur            x3, [fp, #-0x20]
    // 0x7b4cb8: r2 = Null
    //     0x7b4cb8: mov             x2, NULL
    // 0x7b4cbc: r1 = Null
    //     0x7b4cbc: mov             x1, NULL
    // 0x7b4cc0: r4 = 60
    //     0x7b4cc0: movz            x4, #0x3c
    // 0x7b4cc4: branchIfSmi(r0, 0x7b4cd0)
    //     0x7b4cc4: tbz             w0, #0, #0x7b4cd0
    // 0x7b4cc8: r4 = LoadClassIdInstr(r0)
    //     0x7b4cc8: ldur            x4, [x0, #-1]
    //     0x7b4ccc: ubfx            x4, x4, #0xc, #0x14
    // 0x7b4cd0: sub             x4, x4, #0x5a
    // 0x7b4cd4: cmp             x4, #2
    // 0x7b4cd8: b.ls            #0x7b4cec
    // 0x7b4cdc: r8 = List
    //     0x7b4cdc: ldr             x8, [PP, #0x28a8]  ; [pp+0x28a8] Type: List
    // 0x7b4ce0: r3 = Null
    //     0x7b4ce0: add             x3, PP, #0x2a, lsl #12  ; [pp+0x2a708] Null
    //     0x7b4ce4: ldr             x3, [x3, #0x708]
    // 0x7b4ce8: r0 = List()
    //     0x7b4ce8: bl              #0x7f27c4  ; IsType_List_Stub
    // 0x7b4cec: r1 = Function '<anonymous closure>': static.
    //     0x7b4cec: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a718] AnonymousClosure: static (0x5b043c), in [oGi] Nxa::<anonymous closure> (0x7b4c38)
    //     0x7b4cf0: ldr             x1, [x1, #0x718]
    // 0x7b4cf4: r2 = Null
    //     0x7b4cf4: mov             x2, NULL
    // 0x7b4cf8: r0 = AllocateClosure()
    //     0x7b4cf8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7b4cfc: mov             x1, x0
    // 0x7b4d00: ldur            x0, [fp, #-0x20]
    // 0x7b4d04: r2 = LoadClassIdInstr(r0)
    //     0x7b4d04: ldur            x2, [x0, #-1]
    //     0x7b4d08: ubfx            x2, x2, #0xc, #0x14
    // 0x7b4d0c: r16 = <Map<String, dynamic>>
    //     0x7b4d0c: ldr             x16, [PP, #0x3350]  ; [pp+0x3350] TypeArguments: <Map<String, dynamic>>
    // 0x7b4d10: stp             x0, x16, [SP, #8]
    // 0x7b4d14: str             x1, [SP]
    // 0x7b4d18: mov             x0, x2
    // 0x7b4d1c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7b4d1c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7b4d20: r0 = GDT[cid_x0 + 0xbee7]()
    //     0x7b4d20: movz            x17, #0xbee7
    //     0x7b4d24: add             lr, x0, x17
    //     0x7b4d28: ldr             lr, [x21, lr, lsl #3]
    //     0x7b4d2c: blr             lr
    // 0x7b4d30: r1 = LoadClassIdInstr(r0)
    //     0x7b4d30: ldur            x1, [x0, #-1]
    //     0x7b4d34: ubfx            x1, x1, #0xc, #0x14
    // 0x7b4d38: mov             x16, x0
    // 0x7b4d3c: mov             x0, x1
    // 0x7b4d40: mov             x1, x16
    // 0x7b4d44: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7b4d44: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7b4d48: r0 = GDT[cid_x0 + 0xbcee]()
    //     0x7b4d48: movz            x17, #0xbcee
    //     0x7b4d4c: add             lr, x0, x17
    //     0x7b4d50: ldr             lr, [x21, lr, lsl #3]
    //     0x7b4d54: blr             lr
    // 0x7b4d58: stur            x0, [fp, #-0x20]
    // 0x7b4d5c: r0 = LoadStaticField(0xfec)
    //     0x7b4d5c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b4d60: ldr             x0, [x0, #0x1fd8]
    // 0x7b4d64: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b4d68: cmp             w0, w16
    // 0x7b4d6c: b.ne            #0x7b4d7c
    // 0x7b4d70: r2 = _KOf
    //     0x7b4d70: add             x2, PP, #0x2a, lsl #12  ; [pp+0x2a720] Field <Nxa._KOf@883424917>: static late final (offset: 0xfec)
    //     0x7b4d74: ldr             x2, [x2, #0x720]
    // 0x7b4d78: r0 = InitLateFinalStaticField()
    //     0x7b4d78: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7b4d7c: mov             x1, x0
    // 0x7b4d80: ldur            x2, [fp, #-0x20]
    // 0x7b4d84: r0 = call 0x5ef1e0
    //     0x7b4d84: bl              #0x5ef1e0
    // 0x7b4d88: b               #0x7b4fcc
    // 0x7b4d8c: ldur            x0, [fp, #-0x18]
    // 0x7b4d90: r16 = "onPlayResult"
    //     0x7b4d90: add             x16, PP, #0x2a, lsl #12  ; [pp+0x2a728] "onPlayResult"
    //     0x7b4d94: ldr             x16, [x16, #0x728]
    // 0x7b4d98: ldur            lr, [fp, #-0x10]
    // 0x7b4d9c: stp             lr, x16, [SP]
    // 0x7b4da0: r0 = call 0x5a8ba0
    //     0x7b4da0: bl              #0x5a8ba0
    // 0x7b4da4: tbnz            w0, #4, #0x7b4e28
    // 0x7b4da8: ldur            x0, [fp, #-0x18]
    // 0x7b4dac: r0 = LoadStaticField(0xff0)
    //     0x7b4dac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b4db0: ldr             x0, [x0, #0x1fe0]
    // 0x7b4db4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b4db8: cmp             w0, w16
    // 0x7b4dbc: b.ne            #0x7b4dcc
    // 0x7b4dc0: r2 = _LOf
    //     0x7b4dc0: add             x2, PP, #0x2a, lsl #12  ; [pp+0x2a730] Field <Nxa._LOf@883424917>: static late final (offset: 0xff0)
    //     0x7b4dc4: ldr             x2, [x2, #0x730]
    // 0x7b4dc8: r0 = InitLateFinalStaticField()
    //     0x7b4dc8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7b4dcc: mov             x3, x0
    // 0x7b4dd0: ldur            x0, [fp, #-0x18]
    // 0x7b4dd4: stur            x3, [fp, #-0x28]
    // 0x7b4dd8: LoadField: r4 = r0->field_b
    //     0x7b4dd8: ldur            w4, [x0, #0xb]
    // 0x7b4ddc: DecompressPointer r4
    //     0x7b4ddc: add             x4, x4, HEAP, lsl #32
    // 0x7b4de0: mov             x0, x4
    // 0x7b4de4: stur            x4, [fp, #-0x20]
    // 0x7b4de8: r2 = Null
    //     0x7b4de8: mov             x2, NULL
    // 0x7b4dec: r1 = Null
    //     0x7b4dec: mov             x1, NULL
    // 0x7b4df0: r8 = Map
    //     0x7b4df0: ldr             x8, [PP, #0x14a8]  ; [pp+0x14a8] Type: Map
    // 0x7b4df4: r3 = Null
    //     0x7b4df4: add             x3, PP, #0x2a, lsl #12  ; [pp+0x2a738] Null
    //     0x7b4df8: ldr             x3, [x3, #0x738]
    // 0x7b4dfc: r0 = Map()
    //     0x7b4dfc: bl              #0x7f2764  ; IsType_Map_Stub
    // 0x7b4e00: ldur            x2, [fp, #-0x20]
    // 0x7b4e04: r1 = <String, dynamic>
    //     0x7b4e04: ldr             x1, [PP, #0x90]  ; [pp+0x90] TypeArguments: <String, dynamic>
    // 0x7b4e08: r0 = call 0x36f088
    //     0x7b4e08: bl              #0x36f088
    // 0x7b4e0c: mov             x2, x0
    // 0x7b4e10: r1 = Null
    //     0x7b4e10: mov             x1, NULL
    // 0x7b4e14: r0 = call 0x5b0264
    //     0x7b4e14: bl              #0x5b0264
    // 0x7b4e18: ldur            x1, [fp, #-0x28]
    // 0x7b4e1c: mov             x2, x0
    // 0x7b4e20: r0 = call 0x5ef1e0
    //     0x7b4e20: bl              #0x5ef1e0
    // 0x7b4e24: b               #0x7b4fcc
    // 0x7b4e28: ldur            x0, [fp, #-0x18]
    // 0x7b4e2c: r16 = "onError"
    //     0x7b4e2c: ldr             x16, [PP, #0xf88]  ; [pp+0xf88] "onError"
    // 0x7b4e30: ldur            lr, [fp, #-0x10]
    // 0x7b4e34: stp             lr, x16, [SP]
    // 0x7b4e38: r0 = call 0x5a8ba0
    //     0x7b4e38: bl              #0x5a8ba0
    // 0x7b4e3c: tbnz            w0, #4, #0x7b4fcc
    // 0x7b4e40: ldur            x0, [fp, #-0x18]
    // 0x7b4e44: LoadField: r3 = r0->field_b
    //     0x7b4e44: ldur            w3, [x0, #0xb]
    // 0x7b4e48: DecompressPointer r3
    //     0x7b4e48: add             x3, x3, HEAP, lsl #32
    // 0x7b4e4c: mov             x0, x3
    // 0x7b4e50: stur            x3, [fp, #-0x10]
    // 0x7b4e54: r2 = Null
    //     0x7b4e54: mov             x2, NULL
    // 0x7b4e58: r1 = Null
    //     0x7b4e58: mov             x1, NULL
    // 0x7b4e5c: r8 = Map
    //     0x7b4e5c: ldr             x8, [PP, #0x14a8]  ; [pp+0x14a8] Type: Map
    // 0x7b4e60: r3 = Null
    //     0x7b4e60: add             x3, PP, #0x2a, lsl #12  ; [pp+0x2a748] Null
    //     0x7b4e64: ldr             x3, [x3, #0x748]
    // 0x7b4e68: r0 = Map()
    //     0x7b4e68: bl              #0x7f2764  ; IsType_Map_Stub
    // 0x7b4e6c: ldur            x2, [fp, #-0x10]
    // 0x7b4e70: r1 = <String, dynamic>
    //     0x7b4e70: ldr             x1, [PP, #0x90]  ; [pp+0x90] TypeArguments: <String, dynamic>
    // 0x7b4e74: r0 = call 0x36f088
    //     0x7b4e74: bl              #0x36f088
    // 0x7b4e78: stur            x0, [fp, #-0x10]
    // 0x7b4e7c: r0 = LoadStaticField(0xff0)
    //     0x7b4e7c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7b4e80: ldr             x0, [x0, #0x1fe0]
    // 0x7b4e84: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7b4e88: cmp             w0, w16
    // 0x7b4e8c: b.ne            #0x7b4e9c
    // 0x7b4e90: r2 = _LOf
    //     0x7b4e90: add             x2, PP, #0x2a, lsl #12  ; [pp+0x2a730] Field <Nxa._LOf@883424917>: static late final (offset: 0xff0)
    //     0x7b4e94: ldr             x2, [x2, #0x730]
    // 0x7b4e98: r0 = InitLateFinalStaticField()
    //     0x7b4e98: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7b4e9c: r1 = "33a32812744f"
    //     0x7b4e9c: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a758] "33a32812744f"
    //     0x7b4ea0: ldr             x1, [x1, #0x758]
    // 0x7b4ea4: stur            x0, [fp, #-0x18]
    // 0x7b4ea8: r0 = call 0x49cda4
    //     0x7b4ea8: bl              #0x49cda4
    // 0x7b4eac: ldur            x1, [fp, #-0x10]
    // 0x7b4eb0: mov             x2, x0
    // 0x7b4eb4: r0 = call 0x723250
    //     0x7b4eb4: bl              #0x723250
    // 0x7b4eb8: ldur            x1, [fp, #-0x10]
    // 0x7b4ebc: LoadField: r2 = r1->field_f
    //     0x7b4ebc: ldur            w2, [x1, #0xf]
    // 0x7b4ec0: DecompressPointer r2
    //     0x7b4ec0: add             x2, x2, HEAP, lsl #32
    // 0x7b4ec4: cmp             w2, w0
    // 0x7b4ec8: b.ne            #0x7b4ed0
    // 0x7b4ecc: r0 = Null
    //     0x7b4ecc: mov             x0, NULL
    // 0x7b4ed0: cmp             w0, NULL
    // 0x7b4ed4: b.ne            #0x7b4ee4
    // 0x7b4ed8: mov             x0, x1
    // 0x7b4edc: r2 = Null
    //     0x7b4edc: mov             x2, NULL
    // 0x7b4ee0: b               #0x7b4f18
    // 0x7b4ee4: r2 = 60
    //     0x7b4ee4: movz            x2, #0x3c
    // 0x7b4ee8: branchIfSmi(r0, 0x7b4ef4)
    //     0x7b4ee8: tbz             w0, #0, #0x7b4ef4
    // 0x7b4eec: r2 = LoadClassIdInstr(r0)
    //     0x7b4eec: ldur            x2, [x0, #-1]
    //     0x7b4ef0: ubfx            x2, x2, #0xc, #0x14
    // 0x7b4ef4: str             x0, [SP]
    // 0x7b4ef8: mov             x0, x2
    // 0x7b4efc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7b4efc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7b4f00: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7b4f00: movz            x17, #0x3a5d
    //     0x7b4f04: add             lr, x0, x17
    //     0x7b4f08: ldr             lr, [x21, lr, lsl #3]
    //     0x7b4f0c: blr             lr
    // 0x7b4f10: mov             x2, x0
    // 0x7b4f14: ldur            x0, [fp, #-0x10]
    // 0x7b4f18: stur            x2, [fp, #-0x20]
    // 0x7b4f1c: r1 = "2569b294e712788cad"
    //     0x7b4f1c: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a760] "2569b294e712788cad"
    //     0x7b4f20: ldr             x1, [x1, #0x760]
    // 0x7b4f24: r0 = call 0x49cda4
    //     0x7b4f24: bl              #0x49cda4
    // 0x7b4f28: ldur            x1, [fp, #-0x10]
    // 0x7b4f2c: mov             x2, x0
    // 0x7b4f30: r0 = call 0x723250
    //     0x7b4f30: bl              #0x723250
    // 0x7b4f34: mov             x1, x0
    // 0x7b4f38: ldur            x0, [fp, #-0x10]
    // 0x7b4f3c: LoadField: r2 = r0->field_f
    //     0x7b4f3c: ldur            w2, [x0, #0xf]
    // 0x7b4f40: DecompressPointer r2
    //     0x7b4f40: add             x2, x2, HEAP, lsl #32
    // 0x7b4f44: cmp             w2, w1
    // 0x7b4f48: b.ne            #0x7b4f54
    // 0x7b4f4c: r0 = Null
    //     0x7b4f4c: mov             x0, NULL
    // 0x7b4f50: b               #0x7b4f58
    // 0x7b4f54: mov             x0, x1
    // 0x7b4f58: cmp             w0, NULL
    // 0x7b4f5c: b.ne            #0x7b4f68
    // 0x7b4f60: r1 = Null
    //     0x7b4f60: mov             x1, NULL
    // 0x7b4f64: b               #0x7b4f98
    // 0x7b4f68: r1 = 60
    //     0x7b4f68: movz            x1, #0x3c
    // 0x7b4f6c: branchIfSmi(r0, 0x7b4f78)
    //     0x7b4f6c: tbz             w0, #0, #0x7b4f78
    // 0x7b4f70: r1 = LoadClassIdInstr(r0)
    //     0x7b4f70: ldur            x1, [x0, #-1]
    //     0x7b4f74: ubfx            x1, x1, #0xc, #0x14
    // 0x7b4f78: str             x0, [SP]
    // 0x7b4f7c: mov             x0, x1
    // 0x7b4f80: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7b4f80: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7b4f84: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7b4f84: movz            x17, #0x3a5d
    //     0x7b4f88: add             lr, x0, x17
    //     0x7b4f8c: ldr             lr, [x21, lr, lsl #3]
    //     0x7b4f90: blr             lr
    // 0x7b4f94: mov             x1, x0
    // 0x7b4f98: ldur            x0, [fp, #-0x20]
    // 0x7b4f9c: stur            x1, [fp, #-0x10]
    // 0x7b4fa0: r0 = Oxa()
    //     0x7b4fa0: bl              #0x7b4fdc  ; AllocateOxaStub -> Oxa (size=0x14)
    // 0x7b4fa4: mov             x1, x0
    // 0x7b4fa8: r0 = false
    //     0x7b4fa8: add             x0, NULL, #0x30  ; false
    // 0x7b4fac: StoreField: r1->field_7 = r0
    //     0x7b4fac: stur            w0, [x1, #7]
    // 0x7b4fb0: ldur            x0, [fp, #-0x20]
    // 0x7b4fb4: StoreField: r1->field_b = r0
    //     0x7b4fb4: stur            w0, [x1, #0xb]
    // 0x7b4fb8: ldur            x0, [fp, #-0x10]
    // 0x7b4fbc: StoreField: r1->field_f = r0
    //     0x7b4fbc: stur            w0, [x1, #0xf]
    // 0x7b4fc0: mov             x2, x1
    // 0x7b4fc4: ldur            x1, [fp, #-0x18]
    // 0x7b4fc8: r0 = call 0x5ef1e0
    //     0x7b4fc8: bl              #0x5ef1e0
    // 0x7b4fcc: r0 = Null
    //     0x7b4fcc: mov             x0, NULL
    // 0x7b4fd0: r0 = ReturnAsyncNotFuture()
    //     0x7b4fd0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b4fd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b4fd4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b4fd8: b               #0x7b4c78
  }
  [closure] static Map<String, dynamic> <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x5b043c, size: -0x1
  }
}

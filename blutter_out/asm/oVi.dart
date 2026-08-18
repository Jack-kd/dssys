// lib: , url: oVi

// class id: 1049959, size: 0x8
class :: {
}

// class id: 3971, size: 0x14, field offset: 0xc
//   const constructor, 
class teb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7c0e74, size: 0x264
    // 0x7c0e74: EnterFrame
    //     0x7c0e74: stp             fp, lr, [SP, #-0x10]!
    //     0x7c0e78: mov             fp, SP
    // 0x7c0e7c: AllocStack(0x68)
    //     0x7c0e7c: sub             SP, SP, #0x68
    // 0x7c0e80: SetupParameters(teb this /* r1 */)
    //     0x7c0e80: stur            NULL, [fp, #-8]
    //     0x7c0e84: movz            x0, #0
    //     0x7c0e88: add             x1, fp, w0, sxtw #2
    //     0x7c0e8c: ldr             x1, [x1, #0x10]
    //     0x7c0e90: ldur            w2, [x1, #0x17]
    //     0x7c0e94: add             x2, x2, HEAP, lsl #32
    //     0x7c0e98: stur            x2, [fp, #-0x10]
    // 0x7c0e9c: CheckStackOverflow
    //     0x7c0e9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c0ea0: cmp             SP, x16
    //     0x7c0ea4: b.ls            #0x7c10d0
    // 0x7c0ea8: InitAsync() -> Future<void?>
    //     0x7c0ea8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7c0eac: bl              #0x74ada8  ; InitAsyncStub
    // 0x7c0eb0: ldur            x0, [fp, #-0x10]
    // 0x7c0eb4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c0eb4: ldur            w1, [x0, #0x17]
    // 0x7c0eb8: DecompressPointer r1
    //     0x7c0eb8: add             x1, x1, HEAP, lsl #32
    // 0x7c0ebc: stur            x1, [fp, #-0x18]
    // 0x7c0ec0: r0 = LoadStaticField(0x14cc)
    //     0x7c0ec0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c0ec4: ldr             x0, [x0, #0x2998]
    // 0x7c0ec8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c0ecc: cmp             w0, w16
    // 0x7c0ed0: b.ne            #0x7c0ee0
    // 0x7c0ed4: r2 = fEg
    //     0x7c0ed4: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1ee88] Field <::.fEg>: static late final (offset: 0x14cc)
    //     0x7c0ed8: ldr             x2, [x2, #0xe88]
    // 0x7c0edc: r0 = InitLateFinalStaticField()
    //     0x7c0edc: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c0ee0: mov             x2, x0
    // 0x7c0ee4: ldur            x3, [fp, #-0x10]
    // 0x7c0ee8: LoadField: r0 = r3->field_f
    //     0x7c0ee8: ldur            w0, [x3, #0xf]
    // 0x7c0eec: DecompressPointer r0
    //     0x7c0eec: add             x0, x0, HEAP, lsl #32
    // 0x7c0ef0: LoadField: r4 = r0->field_b
    //     0x7c0ef0: ldur            x4, [x0, #0xb]
    // 0x7c0ef4: r0 = BoxInt64Instr(r4)
    //     0x7c0ef4: sbfiz           x0, x4, #1, #0x1f
    //     0x7c0ef8: cmp             x4, x0, asr #1
    //     0x7c0efc: b.eq            #0x7c0f08
    //     0x7c0f00: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c0f04: stur            x4, [x0, #7]
    // 0x7c0f08: mov             x1, x2
    // 0x7c0f0c: mov             x2, x0
    // 0x7c0f10: r0 = call 0x26370c
    //     0x7c0f10: bl              #0x26370c
    // 0x7c0f14: mov             x1, x0
    // 0x7c0f18: r0 = call 0x263610
    //     0x7c0f18: bl              #0x263610
    // 0x7c0f1c: r16 = <Aeb>
    //     0x7c0f1c: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1ee90] TypeArguments: <Aeb>
    //     0x7c0f20: ldr             x16, [x16, #0xe90]
    // 0x7c0f24: ldur            lr, [fp, #-0x18]
    // 0x7c0f28: stp             lr, x16, [SP, #8]
    // 0x7c0f2c: str             x0, [SP]
    // 0x7c0f30: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c0f30: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c0f34: r0 = call 0x263414
    //     0x7c0f34: bl              #0x263414
    // 0x7c0f38: mov             x1, x0
    // 0x7c0f3c: stur            x0, [fp, #-0x18]
    // 0x7c0f40: r0 = __unknown_function__()
    //     0x7c0f40: bl              #0x74cb58  ; [] ::__unknown_function__
    // 0x7c0f44: ldur            x0, [fp, #-0x10]
    // 0x7c0f48: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c0f48: ldur            w1, [x0, #0x17]
    // 0x7c0f4c: DecompressPointer r1
    //     0x7c0f4c: add             x1, x1, HEAP, lsl #32
    // 0x7c0f50: stur            x1, [fp, #-0x20]
    // 0x7c0f54: r0 = LoadStaticField(0x13a0)
    //     0x7c0f54: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c0f58: ldr             x0, [x0, #0x2740]
    // 0x7c0f5c: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c0f60: cmp             w0, w16
    // 0x7c0f64: b.ne            #0x7c0f74
    // 0x7c0f68: r2 = fsg
    //     0x7c0f68: add             x2, PP, #0x11, lsl #12  ; [pp+0x11830] Field <::.fsg>: static late final (offset: 0x13a0)
    //     0x7c0f6c: ldr             x2, [x2, #0x830]
    // 0x7c0f70: r0 = InitLateFinalStaticField()
    //     0x7c0f70: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c0f74: r16 = <NZa>
    //     0x7c0f74: add             x16, PP, #0x11, lsl #12  ; [pp+0x11838] TypeArguments: <NZa>
    //     0x7c0f78: ldr             x16, [x16, #0x838]
    // 0x7c0f7c: ldur            lr, [fp, #-0x20]
    // 0x7c0f80: stp             lr, x16, [SP, #8]
    // 0x7c0f84: str             x0, [SP]
    // 0x7c0f88: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c0f88: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c0f8c: r0 = call 0x263414
    //     0x7c0f8c: bl              #0x263414
    // 0x7c0f90: LoadField: r1 = r0->field_b
    //     0x7c0f90: ldur            w1, [x0, #0xb]
    // 0x7c0f94: DecompressPointer r1
    //     0x7c0f94: add             x1, x1, HEAP, lsl #32
    // 0x7c0f98: tbz             w1, #4, #0x7c1034
    // 0x7c0f9c: ldur            x0, [fp, #-0x10]
    // 0x7c0fa0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7c0fa0: ldur            w1, [x0, #0x17]
    // 0x7c0fa4: DecompressPointer r1
    //     0x7c0fa4: add             x1, x1, HEAP, lsl #32
    // 0x7c0fa8: stur            x1, [fp, #-0x20]
    // 0x7c0fac: r0 = LoadStaticField(0x14d4)
    //     0x7c0fac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7c0fb0: ldr             x0, [x0, #0x29a8]
    // 0x7c0fb4: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7c0fb8: cmp             w0, w16
    // 0x7c0fbc: b.ne            #0x7c0fcc
    // 0x7c0fc0: r2 = jEg
    //     0x7c0fc0: add             x2, PP, #0x1e, lsl #12  ; [pp+0x1ee40] Field <::.jEg>: static late final (offset: 0x14d4)
    //     0x7c0fc4: ldr             x2, [x2, #0xe40]
    // 0x7c0fc8: r0 = InitLateFinalStaticField()
    //     0x7c0fc8: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x7c0fcc: mov             x2, x0
    // 0x7c0fd0: ldur            x0, [fp, #-0x10]
    // 0x7c0fd4: LoadField: r1 = r0->field_f
    //     0x7c0fd4: ldur            w1, [x0, #0xf]
    // 0x7c0fd8: DecompressPointer r1
    //     0x7c0fd8: add             x1, x1, HEAP, lsl #32
    // 0x7c0fdc: LoadField: r3 = r1->field_b
    //     0x7c0fdc: ldur            x3, [x1, #0xb]
    // 0x7c0fe0: r0 = BoxInt64Instr(r3)
    //     0x7c0fe0: sbfiz           x0, x3, #1, #0x1f
    //     0x7c0fe4: cmp             x3, x0, asr #1
    //     0x7c0fe8: b.eq            #0x7c0ff4
    //     0x7c0fec: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7c0ff0: stur            x3, [x0, #7]
    // 0x7c0ff4: mov             x1, x2
    // 0x7c0ff8: mov             x2, x0
    // 0x7c0ffc: r0 = call 0x26370c
    //     0x7c0ffc: bl              #0x26370c
    // 0x7c1000: mov             x1, x0
    // 0x7c1004: r0 = call 0x263610
    //     0x7c1004: bl              #0x263610
    // 0x7c1008: r16 = <yeb>
    //     0x7c1008: add             x16, PP, #0x1e, lsl #12  ; [pp+0x1eec0] TypeArguments: <yeb>
    //     0x7c100c: ldr             x16, [x16, #0xec0]
    // 0x7c1010: ldur            lr, [fp, #-0x20]
    // 0x7c1014: stp             lr, x16, [SP, #8]
    // 0x7c1018: str             x0, [SP]
    // 0x7c101c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7c101c: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7c1020: r0 = call 0x263414
    //     0x7c1020: bl              #0x263414
    // 0x7c1024: mov             x1, x0
    // 0x7c1028: r0 = call 0x63bb20
    //     0x7c1028: bl              #0x63bb20
    // 0x7c102c: r0 = Null
    //     0x7c102c: mov             x0, NULL
    // 0x7c1030: r0 = ReturnAsyncNotFuture()
    //     0x7c1030: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c1034: ldur            x0, [fp, #-0x10]
    // 0x7c1038: LoadField: r2 = r0->field_13
    //     0x7c1038: ldur            w2, [x0, #0x13]
    // 0x7c103c: DecompressPointer r2
    //     0x7c103c: add             x2, x2, HEAP, lsl #32
    // 0x7c1040: stur            x2, [fp, #-0x20]
    // 0x7c1044: r16 = 0.900000
    //     0x7c1044: add             x16, PP, #0x20, lsl #12  ; [pp+0x209f0] 0.9
    //     0x7c1048: ldr             x16, [x16, #0x9f0]
    // 0x7c104c: str             x16, [SP]
    // 0x7c1050: r1 = Instance_tu
    //     0x7c1050: add             x1, PP, #0xe, lsl #12  ; [pp+0xe6e8] Obj!tu@444d11
    //     0x7c1054: ldr             x1, [x1, #0x6e8]
    // 0x7c1058: r4 = const [0, 0x2, 0x1, 0x1, svc, 0x1, null]
    //     0x7c1058: add             x4, PP, #0x17, lsl #12  ; [pp+0x17b90] List(7) [0, 0x2, 0x1, 0x1, "svc", 0x1, Null]
    //     0x7c105c: ldr             x4, [x4, #0xb90]
    // 0x7c1060: r0 = call 0x6ccef8
    //     0x7c1060: bl              #0x6ccef8
    // 0x7c1064: mov             x1, x0
    // 0x7c1068: ldur            x0, [fp, #-0x10]
    // 0x7c106c: stur            x1, [fp, #-0x30]
    // 0x7c1070: LoadField: r2 = r0->field_f
    //     0x7c1070: ldur            w2, [x0, #0xf]
    // 0x7c1074: DecompressPointer r2
    //     0x7c1074: add             x2, x2, HEAP, lsl #32
    // 0x7c1078: LoadField: r0 = r2->field_b
    //     0x7c1078: ldur            x0, [x2, #0xb]
    // 0x7c107c: stur            x0, [fp, #-0x28]
    // 0x7c1080: r0 = feb()
    //     0x7c1080: bl              #0x7c10d8  ; AllocatefebStub -> feb (size=0x14)
    // 0x7c1084: mov             x1, x0
    // 0x7c1088: ldur            x0, [fp, #-0x28]
    // 0x7c108c: StoreField: r1->field_b = r0
    //     0x7c108c: stur            x0, [x1, #0xb]
    // 0x7c1090: stp             x1, NULL, [SP, #0x28]
    // 0x7c1094: ldur            x16, [fp, #-0x20]
    // 0x7c1098: r30 = false
    //     0x7c1098: add             lr, NULL, #0x30  ; false
    // 0x7c109c: stp             lr, x16, [SP, #0x18]
    // 0x7c10a0: r16 = Instance_tu
    //     0x7c10a0: ldr             x16, [PP, #0x6a40]  ; [pp+0x6a40] Obj!tu@445ca1
    // 0x7c10a4: r30 = false
    //     0x7c10a4: add             lr, NULL, #0x30  ; false
    // 0x7c10a8: stp             lr, x16, [SP, #8]
    // 0x7c10ac: ldur            x16, [fp, #-0x30]
    // 0x7c10b0: str             x16, [SP]
    // 0x7c10b4: r4 = const [0x1, 0x6, 0x6, 0x2, Bbc, 0x3, Jic, 0x5, jnf, 0x4, nlg, 0x2, null]
    //     0x7c10b4: add             x4, PP, #0x21, lsl #12  ; [pp+0x21328] List(13) [0x1, 0x6, 0x6, 0x2, "Bbc", 0x3, "Jic", 0x5, "jnf", 0x4, "nlg", 0x2, Null]
    //     0x7c10b8: ldr             x4, [x4, #0x328]
    // 0x7c10bc: r0 = call 0x45aa54
    //     0x7c10bc: bl              #0x45aa54
    // 0x7c10c0: ldur            x1, [fp, #-0x18]
    // 0x7c10c4: r0 = __unknown_function__()
    //     0x7c10c4: bl              #0x750b68  ; [] ::__unknown_function__
    // 0x7c10c8: r0 = Null
    //     0x7c10c8: mov             x0, NULL
    // 0x7c10cc: r0 = ReturnAsyncNotFuture()
    //     0x7c10cc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7c10d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c10d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c10d4: b               #0x7c0ea8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x63bb84, size: -0x1
  }
}

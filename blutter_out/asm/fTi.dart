// lib: , url: fTi

// class id: 1049841, size: 0x8
class :: {
}

// class id: 3651, size: 0x1c, field offset: 0x18
class _Ebb extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x792d64, size: 0x270
    // 0x792d64: EnterFrame
    //     0x792d64: stp             fp, lr, [SP, #-0x10]!
    //     0x792d68: mov             fp, SP
    // 0x792d6c: AllocStack(0xa0)
    //     0x792d6c: sub             SP, SP, #0xa0
    // 0x792d70: SetupParameters(_Ebb this /* r1 */)
    //     0x792d70: stur            NULL, [fp, #-8]
    //     0x792d74: movz            x0, #0
    //     0x792d78: add             x1, fp, w0, sxtw #2
    //     0x792d7c: ldr             x1, [x1, #0x10]
    //     0x792d80: ldur            w2, [x1, #0x17]
    //     0x792d84: add             x2, x2, HEAP, lsl #32
    //     0x792d88: stur            x2, [fp, #-0x68]
    // 0x792d8c: CheckStackOverflow
    //     0x792d8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x792d90: cmp             SP, x16
    //     0x792d94: b.ls            #0x792fc8
    // 0x792d98: InitAsync() -> Future<void?>
    //     0x792d98: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x792d9c: bl              #0x74ada8  ; InitAsyncStub
    // 0x792da0: ldur            x0, [fp, #-0x68]
    // 0x792da4: LoadField: r3 = r0->field_f
    //     0x792da4: ldur            w3, [x0, #0xf]
    // 0x792da8: DecompressPointer r3
    //     0x792da8: add             x3, x3, HEAP, lsl #32
    // 0x792dac: stur            x3, [fp, #-0x70]
    // 0x792db0: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x792db0: ldur            w1, [x3, #0x17]
    // 0x792db4: DecompressPointer r1
    //     0x792db4: add             x1, x1, HEAP, lsl #32
    // 0x792db8: tbnz            w1, #4, #0x792dc4
    // 0x792dbc: r0 = Null
    //     0x792dbc: mov             x0, NULL
    // 0x792dc0: r0 = ReturnAsyncNotFuture()
    //     0x792dc0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x792dc4: mov             x2, x0
    // 0x792dc8: r1 = Function '<anonymous closure>':.
    //     0x792dc8: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a640] AnonymousClosure: (0x47d4e8), of [ZWi] _agb
    //     0x792dcc: ldr             x1, [x1, #0x640]
    // 0x792dd0: r0 = AllocateClosure()
    //     0x792dd0: bl              #0x7dd600  ; AllocateClosureStub
    // 0x792dd4: ldur            x1, [fp, #-0x70]
    // 0x792dd8: mov             x2, x0
    // 0x792ddc: r0 = call 0x227fe4
    //     0x792ddc: bl              #0x227fe4
    // 0x792de0: ldur            x2, [fp, #-0x68]
    // 0x792de4: LoadField: r1 = r2->field_13
    //     0x792de4: ldur            w1, [x2, #0x13]
    // 0x792de8: DecompressPointer r1
    //     0x792de8: add             x1, x1, HEAP, lsl #32
    // 0x792dec: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x792dec: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x792df0: r0 = call 0x368364
    //     0x792df0: bl              #0x368364
    // 0x792df4: stur            x0, [fp, #-0x78]
    // 0x792df8: ldur            x2, [fp, #-0x68]
    // 0x792dfc: LoadField: r3 = r2->field_f
    //     0x792dfc: ldur            w3, [x2, #0xf]
    // 0x792e00: DecompressPointer r3
    //     0x792e00: add             x3, x3, HEAP, lsl #32
    // 0x792e04: mov             x1, x3
    // 0x792e08: stur            x3, [fp, #-0x70]
    // 0x792e0c: LoadField: r0 = r1->field_13
    //     0x792e0c: ldur            w0, [x1, #0x13]
    // 0x792e10: DecompressPointer r0
    //     0x792e10: add             x0, x0, HEAP, lsl #32
    // 0x792e14: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x792e18: cmp             w0, w16
    // 0x792e1c: b.ne            #0x792e2c
    // 0x792e20: r2 = nsb
    //     0x792e20: add             x2, PP, #0xd, lsl #12  ; [pp+0xdf28] Field <Vt.nsb>: late final (offset: 0x14)
    //     0x792e24: ldr             x2, [x2, #0xf28]
    // 0x792e28: r0 = InitLateFinalInstanceField()
    //     0x792e28: bl              #0x7dc29c  ; InitLateFinalInstanceFieldStub
    // 0x792e2c: stur            x0, [fp, #-0x70]
    // 0x792e30: r0 = LoadStaticField(0x1368)
    //     0x792e30: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x792e34: ldr             x0, [x0, #0x26d0]
    // 0x792e38: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x792e3c: cmp             w0, w16
    // 0x792e40: b.ne            #0x792e50
    // 0x792e44: r2 = hqg
    //     0x792e44: add             x2, PP, #0x15, lsl #12  ; [pp+0x15580] Field <::.hqg>: static late final (offset: 0x1368)
    //     0x792e48: ldr             x2, [x2, #0x580]
    // 0x792e4c: r0 = InitLateFinalStaticField()
    //     0x792e4c: bl              #0x7dc3e0  ; InitLateFinalStaticFieldStub
    // 0x792e50: r16 = <tZa>
    //     0x792e50: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] TypeArguments: <tZa>
    //     0x792e54: ldr             x16, [x16, #0x588]
    // 0x792e58: ldur            lr, [fp, #-0x70]
    // 0x792e5c: stp             lr, x16, [SP, #8]
    // 0x792e60: str             x0, [SP]
    // 0x792e64: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x792e64: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x792e68: r0 = call 0x263414
    //     0x792e68: bl              #0x263414
    // 0x792e6c: ldur            x2, [fp, #-0x68]
    // 0x792e70: stur            x0, [fp, #-0x80]
    // 0x792e74: LoadField: r1 = r2->field_f
    //     0x792e74: ldur            w1, [x2, #0xf]
    // 0x792e78: DecompressPointer r1
    //     0x792e78: add             x1, x1, HEAP, lsl #32
    // 0x792e7c: LoadField: r3 = r1->field_b
    //     0x792e7c: ldur            w3, [x1, #0xb]
    // 0x792e80: DecompressPointer r3
    //     0x792e80: add             x3, x3, HEAP, lsl #32
    // 0x792e84: cmp             w3, NULL
    // 0x792e88: b.eq            #0x792fd0
    // 0x792e8c: LoadField: r4 = r3->field_b
    //     0x792e8c: ldur            w4, [x3, #0xb]
    // 0x792e90: DecompressPointer r4
    //     0x792e90: add             x4, x4, HEAP, lsl #32
    // 0x792e94: stur            x4, [fp, #-0x70]
    // 0x792e98: r1 = "89b64ed1"
    //     0x792e98: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a648] "89b64ed1"
    //     0x792e9c: ldr             x1, [x1, #0x648]
    // 0x792ea0: r0 = call 0x47ceb8
    //     0x792ea0: bl              #0x47ceb8
    // 0x792ea4: ldur            x1, [fp, #-0x70]
    // 0x792ea8: r2 = LoadClassIdInstr(r1)
    //     0x792ea8: ldur            x2, [x1, #-1]
    //     0x792eac: ubfx            x2, x2, #0xc, #0x14
    // 0x792eb0: mov             x16, x0
    // 0x792eb4: mov             x0, x2
    // 0x792eb8: mov             x2, x16
    // 0x792ebc: mov             lr, x0
    // 0x792ec0: ldr             lr, [x21, lr, lsl #3]
    // 0x792ec4: blr             lr
    // 0x792ec8: mov             x3, x0
    // 0x792ecc: r2 = Null
    //     0x792ecc: mov             x2, NULL
    // 0x792ed0: r1 = Null
    //     0x792ed0: mov             x1, NULL
    // 0x792ed4: stur            x3, [fp, #-0x70]
    // 0x792ed8: branchIfSmi(r0, 0x792f00)
    //     0x792ed8: tbz             w0, #0, #0x792f00
    // 0x792edc: r4 = LoadClassIdInstr(r0)
    //     0x792edc: ldur            x4, [x0, #-1]
    //     0x792ee0: ubfx            x4, x4, #0xc, #0x14
    // 0x792ee4: sub             x4, x4, #0x3c
    // 0x792ee8: cmp             x4, #1
    // 0x792eec: b.ls            #0x792f00
    // 0x792ef0: r8 = int
    //     0x792ef0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x792ef4: r3 = Null
    //     0x792ef4: add             x3, PP, #0x2a, lsl #12  ; [pp+0x2a650] Null
    //     0x792ef8: ldr             x3, [x3, #0x650]
    // 0x792efc: r0 = int()
    //     0x792efc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x792f00: ldur            x0, [fp, #-0x70]
    // 0x792f04: r2 = LoadInt32Instr(r0)
    //     0x792f04: sbfx            x2, x0, #1, #0x1f
    //     0x792f08: tbz             w0, #0, #0x792f10
    //     0x792f0c: ldur            x2, [x0, #7]
    // 0x792f10: ldur            x1, [fp, #-0x80]
    // 0x792f14: r0 = call 0x47d41c
    //     0x792f14: bl              #0x47d41c
    // 0x792f18: mov             x1, x0
    // 0x792f1c: stur            x1, [fp, #-0x88]
    // 0x792f20: r0 = Await()
    //     0x792f20: bl              #0x74ab64  ; AwaitStub
    // 0x792f24: ldur            x2, [fp, #-0x68]
    // 0x792f28: LoadField: r0 = r2->field_f
    //     0x792f28: ldur            w0, [x2, #0xf]
    // 0x792f2c: DecompressPointer r0
    //     0x792f2c: add             x0, x0, HEAP, lsl #32
    // 0x792f30: stur            x0, [fp, #-0x70]
    // 0x792f34: r1 = Function '<anonymous closure>':.
    //     0x792f34: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a660] AnonymousClosure: (0x47d4c4), in [jVi] _peb::<anonymous closure> (0x7a047c)
    //     0x792f38: ldr             x1, [x1, #0x660]
    // 0x792f3c: r0 = AllocateClosure()
    //     0x792f3c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x792f40: ldur            x1, [fp, #-0x70]
    // 0x792f44: mov             x2, x0
    // 0x792f48: r0 = call 0x227fe4
    //     0x792f48: bl              #0x227fe4
    // 0x792f4c: r1 = "77fedcddcf58d90cd3914214a56d"
    //     0x792f4c: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a668] "77fedcddcf58d90cd3914214a56d"
    //     0x792f50: ldr             x1, [x1, #0x668]
    // 0x792f54: r0 = call 0x47ceb8
    //     0x792f54: bl              #0x47ceb8
    // 0x792f58: mov             x1, x0
    // 0x792f5c: r0 = call 0x47d2ec
    //     0x792f5c: bl              #0x47d2ec
    // 0x792f60: r16 = <Object?>
    //     0x792f60: ldr             x16, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x792f64: ldur            lr, [fp, #-0x78]
    // 0x792f68: stp             lr, x16, [SP]
    // 0x792f6c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x792f6c: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x792f70: r0 = call 0x2bfdb0
    //     0x792f70: bl              #0x2bfdb0
    // 0x792f74: r0 = Null
    //     0x792f74: mov             x0, NULL
    // 0x792f78: r0 = ReturnAsyncNotFuture()
    //     0x792f78: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x792f7c: sub             SP, fp, #0xa0
    // 0x792f80: ldur            x2, [fp, #-0x68]
    // 0x792f84: mov             x3, x0
    // 0x792f88: stur            x0, [fp, #-0x78]
    // 0x792f8c: mov             x0, x1
    // 0x792f90: stur            x1, [fp, #-0x80]
    // 0x792f94: LoadField: r4 = r2->field_f
    //     0x792f94: ldur            w4, [x2, #0xf]
    // 0x792f98: DecompressPointer r4
    //     0x792f98: add             x4, x4, HEAP, lsl #32
    // 0x792f9c: stur            x4, [fp, #-0x70]
    // 0x792fa0: r1 = Function '<anonymous closure>':.
    //     0x792fa0: add             x1, PP, #0x2a, lsl #12  ; [pp+0x2a660] AnonymousClosure: (0x47d4c4), in [jVi] _peb::<anonymous closure> (0x7a047c)
    //     0x792fa4: ldr             x1, [x1, #0x660]
    // 0x792fa8: r0 = AllocateClosure()
    //     0x792fa8: bl              #0x7dd600  ; AllocateClosureStub
    // 0x792fac: ldur            x1, [fp, #-0x70]
    // 0x792fb0: mov             x2, x0
    // 0x792fb4: r0 = call 0x227fe4
    //     0x792fb4: bl              #0x227fe4
    // 0x792fb8: ldur            x0, [fp, #-0x78]
    // 0x792fbc: ldur            x1, [fp, #-0x80]
    // 0x792fc0: r0 = ReThrow()
    //     0x792fc0: bl              #0x7dc4f4  ; ReThrowStub
    // 0x792fc4: brk             #0
    // 0x792fc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x792fc8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x792fcc: b               #0x792d98
    // 0x792fd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x792fd0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 3922, size: 0x10, field offset: 0xc
//   const constructor, 
class Dbb extends REa {
}

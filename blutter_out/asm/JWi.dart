// lib: , url: JWi

// class id: 1050036, size: 0x8
class :: {
}

// class id: 3609, size: 0x24, field offset: 0x18
class _Dfb extends Vt<dynamic> {

  [closure] Future<void> <anonymous closure>(dynamic, String) async {
    // ** addr: 0x7a5544, size: 0xb8
    // 0x7a5544: EnterFrame
    //     0x7a5544: stp             fp, lr, [SP, #-0x10]!
    //     0x7a5548: mov             fp, SP
    // 0x7a554c: AllocStack(0x18)
    //     0x7a554c: sub             SP, SP, #0x18
    // 0x7a5550: SetupParameters(_Dfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a5550: stur            NULL, [fp, #-8]
    //     0x7a5554: movz            x0, #0
    //     0x7a5558: add             x1, fp, w0, sxtw #2
    //     0x7a555c: ldr             x1, [x1, #0x18]
    //     0x7a5560: add             x2, fp, w0, sxtw #2
    //     0x7a5564: ldr             x2, [x2, #0x10]
    //     0x7a5568: stur            x2, [fp, #-0x18]
    //     0x7a556c: ldur            w3, [x1, #0x17]
    //     0x7a5570: add             x3, x3, HEAP, lsl #32
    //     0x7a5574: stur            x3, [fp, #-0x10]
    // 0x7a5578: CheckStackOverflow
    //     0x7a5578: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a557c: cmp             SP, x16
    //     0x7a5580: b.ls            #0x7a55f4
    // 0x7a5584: InitAsync() -> Future<void?>
    //     0x7a5584: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a5588: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a558c: ldur            x0, [fp, #-0x10]
    // 0x7a5590: LoadField: r1 = r0->field_f
    //     0x7a5590: ldur            w1, [x0, #0xf]
    // 0x7a5594: DecompressPointer r1
    //     0x7a5594: add             x1, x1, HEAP, lsl #32
    // 0x7a5598: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7a5598: ldur            w2, [x1, #0x17]
    // 0x7a559c: DecompressPointer r2
    //     0x7a559c: add             x2, x2, HEAP, lsl #32
    // 0x7a55a0: mov             x1, x2
    // 0x7a55a4: ldur            x2, [fp, #-0x18]
    // 0x7a55a8: r0 = call 0x468718
    //     0x7a55a8: bl              #0x468718
    // 0x7a55ac: ldur            x0, [fp, #-0x10]
    // 0x7a55b0: LoadField: r1 = r0->field_13
    //     0x7a55b0: ldur            w1, [x0, #0x13]
    // 0x7a55b4: DecompressPointer r1
    //     0x7a55b4: add             x1, x1, HEAP, lsl #32
    // 0x7a55b8: ldur            x2, [fp, #-0x18]
    // 0x7a55bc: r0 = __unknown_function__()
    //     0x7a55bc: bl              #0x7a55fc  ; [] ::__unknown_function__
    // 0x7a55c0: mov             x1, x0
    // 0x7a55c4: stur            x1, [fp, #-0x18]
    // 0x7a55c8: r0 = Await()
    //     0x7a55c8: bl              #0x74ab64  ; AwaitStub
    // 0x7a55cc: ldur            x0, [fp, #-0x10]
    // 0x7a55d0: LoadField: r1 = r0->field_f
    //     0x7a55d0: ldur            w1, [x0, #0xf]
    // 0x7a55d4: DecompressPointer r1
    //     0x7a55d4: add             x1, x1, HEAP, lsl #32
    // 0x7a55d8: LoadField: r0 = r1->field_1b
    //     0x7a55d8: ldur            w0, [x1, #0x1b]
    // 0x7a55dc: DecompressPointer r0
    //     0x7a55dc: add             x0, x0, HEAP, lsl #32
    // 0x7a55e0: mov             x1, x0
    // 0x7a55e4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7a55e4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7a55e8: r0 = call 0x288168
    //     0x7a55e8: bl              #0x288168
    // 0x7a55ec: r0 = Null
    //     0x7a55ec: mov             x0, NULL
    // 0x7a55f0: r0 = ReturnAsyncNotFuture()
    //     0x7a55f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a55f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a55f4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a55f8: b               #0x7a5584
  }
  [closure] Future<void> <anonymous closure>(dynamic, String) async {
    // ** addr: 0x7a5cf0, size: 0x98
    // 0x7a5cf0: EnterFrame
    //     0x7a5cf0: stp             fp, lr, [SP, #-0x10]!
    //     0x7a5cf4: mov             fp, SP
    // 0x7a5cf8: AllocStack(0x18)
    //     0x7a5cf8: sub             SP, SP, #0x18
    // 0x7a5cfc: SetupParameters(_Dfb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7a5cfc: stur            NULL, [fp, #-8]
    //     0x7a5d00: movz            x0, #0
    //     0x7a5d04: add             x1, fp, w0, sxtw #2
    //     0x7a5d08: ldr             x1, [x1, #0x18]
    //     0x7a5d0c: add             x2, fp, w0, sxtw #2
    //     0x7a5d10: ldr             x2, [x2, #0x10]
    //     0x7a5d14: stur            x2, [fp, #-0x18]
    //     0x7a5d18: ldur            w3, [x1, #0x17]
    //     0x7a5d1c: add             x3, x3, HEAP, lsl #32
    //     0x7a5d20: stur            x3, [fp, #-0x10]
    // 0x7a5d24: CheckStackOverflow
    //     0x7a5d24: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a5d28: cmp             SP, x16
    //     0x7a5d2c: b.ls            #0x7a5d80
    // 0x7a5d30: InitAsync() -> Future<void?>
    //     0x7a5d30: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7a5d34: bl              #0x74ada8  ; InitAsyncStub
    // 0x7a5d38: ldur            x0, [fp, #-0x10]
    // 0x7a5d3c: LoadField: r1 = r0->field_13
    //     0x7a5d3c: ldur            w1, [x0, #0x13]
    // 0x7a5d40: DecompressPointer r1
    //     0x7a5d40: add             x1, x1, HEAP, lsl #32
    // 0x7a5d44: ldur            x2, [fp, #-0x18]
    // 0x7a5d48: r0 = __unknown_function__()
    //     0x7a5d48: bl              #0x7a55fc  ; [] ::__unknown_function__
    // 0x7a5d4c: mov             x1, x0
    // 0x7a5d50: stur            x1, [fp, #-0x18]
    // 0x7a5d54: r0 = Await()
    //     0x7a5d54: bl              #0x74ab64  ; AwaitStub
    // 0x7a5d58: ldur            x0, [fp, #-0x10]
    // 0x7a5d5c: LoadField: r1 = r0->field_f
    //     0x7a5d5c: ldur            w1, [x0, #0xf]
    // 0x7a5d60: DecompressPointer r1
    //     0x7a5d60: add             x1, x1, HEAP, lsl #32
    // 0x7a5d64: LoadField: r0 = r1->field_1b
    //     0x7a5d64: ldur            w0, [x1, #0x1b]
    // 0x7a5d68: DecompressPointer r0
    //     0x7a5d68: add             x0, x0, HEAP, lsl #32
    // 0x7a5d6c: mov             x1, x0
    // 0x7a5d70: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7a5d70: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7a5d74: r0 = call 0x288168
    //     0x7a5d74: bl              #0x288168
    // 0x7a5d78: r0 = Null
    //     0x7a5d78: mov             x0, NULL
    // 0x7a5d7c: r0 = ReturnAsyncNotFuture()
    //     0x7a5d7c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7a5d80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a5d80: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a5d84: b               #0x7a5d30
  }
  [closure] KS <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x4c9864, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4c97e0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4c96c4, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x509df0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x509eac, size: -0x1
  }
}

// class id: 3871, size: 0xc, field offset: 0xc
//   const constructor, 
class Cfb extends REa {
}

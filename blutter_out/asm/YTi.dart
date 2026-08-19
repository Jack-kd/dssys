// lib: , url: YTi

// class id: 1049888, size: 0x8
class :: {
}

// class id: 3993, size: 0x10, field offset: 0xc
//   const constructor, 
class Pcb extends QEa {

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7bf834, size: 0x154
    // 0x7bf834: EnterFrame
    //     0x7bf834: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf838: mov             fp, SP
    // 0x7bf83c: AllocStack(0x30)
    //     0x7bf83c: sub             SP, SP, #0x30
    // 0x7bf840: SetupParameters(Pcb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7bf840: stur            NULL, [fp, #-8]
    //     0x7bf844: movz            x0, #0
    //     0x7bf848: add             x1, fp, w0, sxtw #2
    //     0x7bf84c: ldr             x1, [x1, #0x18]
    //     0x7bf850: add             x2, fp, w0, sxtw #2
    //     0x7bf854: ldr             x2, [x2, #0x10]
    //     0x7bf858: stur            x2, [fp, #-0x18]
    //     0x7bf85c: ldur            w3, [x1, #0x17]
    //     0x7bf860: add             x3, x3, HEAP, lsl #32
    //     0x7bf864: stur            x3, [fp, #-0x10]
    // 0x7bf868: CheckStackOverflow
    //     0x7bf868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf86c: cmp             SP, x16
    //     0x7bf870: b.ls            #0x7bf980
    // 0x7bf874: InitAsync() -> Future<void?>
    //     0x7bf874: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bf878: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bf87c: r0 = call 0x44df3c
    //     0x7bf87c: bl              #0x44df3c
    // 0x7bf880: ldur            x3, [fp, #-0x10]
    // 0x7bf884: LoadField: r4 = r3->field_f
    //     0x7bf884: ldur            w4, [x3, #0xf]
    // 0x7bf888: DecompressPointer r4
    //     0x7bf888: add             x4, x4, HEAP, lsl #32
    // 0x7bf88c: mov             x0, x4
    // 0x7bf890: stur            x4, [fp, #-0x20]
    // 0x7bf894: r2 = Null
    //     0x7bf894: mov             x2, NULL
    // 0x7bf898: r1 = Null
    //     0x7bf898: mov             x1, NULL
    // 0x7bf89c: branchIfSmi(r0, 0x7bf8c4)
    //     0x7bf89c: tbz             w0, #0, #0x7bf8c4
    // 0x7bf8a0: r4 = LoadClassIdInstr(r0)
    //     0x7bf8a0: ldur            x4, [x0, #-1]
    //     0x7bf8a4: ubfx            x4, x4, #0xc, #0x14
    // 0x7bf8a8: sub             x4, x4, #0x3c
    // 0x7bf8ac: cmp             x4, #1
    // 0x7bf8b0: b.ls            #0x7bf8c4
    // 0x7bf8b4: r8 = int
    //     0x7bf8b4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bf8b8: r3 = Null
    //     0x7bf8b8: add             x3, PP, #0x3c, lsl #12  ; [pp+0x3c0a8] Null
    //     0x7bf8bc: ldr             x3, [x3, #0xa8]
    // 0x7bf8c0: r0 = int()
    //     0x7bf8c0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bf8c4: ldur            x3, [fp, #-0x10]
    // 0x7bf8c8: LoadField: r4 = r3->field_13
    //     0x7bf8c8: ldur            w4, [x3, #0x13]
    // 0x7bf8cc: DecompressPointer r4
    //     0x7bf8cc: add             x4, x4, HEAP, lsl #32
    // 0x7bf8d0: mov             x0, x4
    // 0x7bf8d4: stur            x4, [fp, #-0x28]
    // 0x7bf8d8: r2 = Null
    //     0x7bf8d8: mov             x2, NULL
    // 0x7bf8dc: r1 = Null
    //     0x7bf8dc: mov             x1, NULL
    // 0x7bf8e0: branchIfSmi(r0, 0x7bf908)
    //     0x7bf8e0: tbz             w0, #0, #0x7bf908
    // 0x7bf8e4: r4 = LoadClassIdInstr(r0)
    //     0x7bf8e4: ldur            x4, [x0, #-1]
    //     0x7bf8e8: ubfx            x4, x4, #0xc, #0x14
    // 0x7bf8ec: sub             x4, x4, #0x3c
    // 0x7bf8f0: cmp             x4, #1
    // 0x7bf8f4: b.ls            #0x7bf908
    // 0x7bf8f8: r8 = int
    //     0x7bf8f8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bf8fc: r3 = Null
    //     0x7bf8fc: add             x3, PP, #0x3c, lsl #12  ; [pp+0x3c0b8] Null
    //     0x7bf900: ldr             x3, [x3, #0xb8]
    // 0x7bf904: r0 = int()
    //     0x7bf904: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bf908: ldur            x0, [fp, #-0x10]
    // 0x7bf90c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7bf90c: ldur            w1, [x0, #0x17]
    // 0x7bf910: DecompressPointer r1
    //     0x7bf910: add             x1, x1, HEAP, lsl #32
    // 0x7bf914: ldur            x2, [fp, #-0x20]
    // 0x7bf918: r3 = LoadInt32Instr(r2)
    //     0x7bf918: sbfx            x3, x2, #1, #0x1f
    //     0x7bf91c: tbz             w2, #0, #0x7bf924
    //     0x7bf920: ldur            x3, [x2, #7]
    // 0x7bf924: ldur            x2, [fp, #-0x28]
    // 0x7bf928: r4 = LoadInt32Instr(r2)
    //     0x7bf928: sbfx            x4, x2, #1, #0x1f
    //     0x7bf92c: tbz             w2, #0, #0x7bf934
    //     0x7bf930: ldur            x4, [x2, #7]
    // 0x7bf934: mov             x2, x4
    // 0x7bf938: r0 = __unknown_function__()
    //     0x7bf938: bl              #0x7bf988  ; [] ::__unknown_function__
    // 0x7bf93c: mov             x1, x0
    // 0x7bf940: stur            x1, [fp, #-0x20]
    // 0x7bf944: r0 = Await()
    //     0x7bf944: bl              #0x74ab64  ; AwaitStub
    // 0x7bf948: r1 = "4fd8cdbfbcac2b1589e3881eb797"
    //     0x7bf948: add             x1, PP, #0x3c, lsl #12  ; [pp+0x3c0c8] "4fd8cdbfbcac2b1589e3881eb797"
    //     0x7bf94c: ldr             x1, [x1, #0xc8]
    // 0x7bf950: r0 = call 0x628160
    //     0x7bf950: bl              #0x628160
    // 0x7bf954: mov             x1, x0
    // 0x7bf958: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bf958: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bf95c: r0 = call 0x3a5cc4
    //     0x7bf95c: bl              #0x3a5cc4
    // 0x7bf960: ldur            x16, [fp, #-0x18]
    // 0x7bf964: str             x16, [SP]
    // 0x7bf968: ldur            x0, [fp, #-0x18]
    // 0x7bf96c: ClosureCall
    //     0x7bf96c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7bf970: ldur            x2, [x0, #0x1f]
    //     0x7bf974: blr             x2
    // 0x7bf978: r0 = Null
    //     0x7bf978: mov             x0, NULL
    // 0x7bf97c: r0 = ReturnAsyncNotFuture()
    //     0x7bf97c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bf980: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf980: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf984: b               #0x7bf874
  }
  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x7bfd80, size: 0x100
    // 0x7bfd80: EnterFrame
    //     0x7bfd80: stp             fp, lr, [SP, #-0x10]!
    //     0x7bfd84: mov             fp, SP
    // 0x7bfd88: AllocStack(0x28)
    //     0x7bfd88: sub             SP, SP, #0x28
    // 0x7bfd8c: SetupParameters(Pcb this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7bfd8c: stur            NULL, [fp, #-8]
    //     0x7bfd90: movz            x0, #0
    //     0x7bfd94: add             x1, fp, w0, sxtw #2
    //     0x7bfd98: ldr             x1, [x1, #0x18]
    //     0x7bfd9c: add             x2, fp, w0, sxtw #2
    //     0x7bfda0: ldr             x2, [x2, #0x10]
    //     0x7bfda4: stur            x2, [fp, #-0x18]
    //     0x7bfda8: ldur            w3, [x1, #0x17]
    //     0x7bfdac: add             x3, x3, HEAP, lsl #32
    //     0x7bfdb0: stur            x3, [fp, #-0x10]
    // 0x7bfdb4: CheckStackOverflow
    //     0x7bfdb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bfdb8: cmp             SP, x16
    //     0x7bfdbc: b.ls            #0x7bfe78
    // 0x7bfdc0: InitAsync() -> Future<void?>
    //     0x7bfdc0: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bfdc4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bfdc8: r0 = call 0x44df3c
    //     0x7bfdc8: bl              #0x44df3c
    // 0x7bfdcc: ldur            x3, [fp, #-0x10]
    // 0x7bfdd0: LoadField: r4 = r3->field_f
    //     0x7bfdd0: ldur            w4, [x3, #0xf]
    // 0x7bfdd4: DecompressPointer r4
    //     0x7bfdd4: add             x4, x4, HEAP, lsl #32
    // 0x7bfdd8: mov             x0, x4
    // 0x7bfddc: stur            x4, [fp, #-0x20]
    // 0x7bfde0: r2 = Null
    //     0x7bfde0: mov             x2, NULL
    // 0x7bfde4: r1 = Null
    //     0x7bfde4: mov             x1, NULL
    // 0x7bfde8: branchIfSmi(r0, 0x7bfe10)
    //     0x7bfde8: tbz             w0, #0, #0x7bfe10
    // 0x7bfdec: r4 = LoadClassIdInstr(r0)
    //     0x7bfdec: ldur            x4, [x0, #-1]
    //     0x7bfdf0: ubfx            x4, x4, #0xc, #0x14
    // 0x7bfdf4: sub             x4, x4, #0x3c
    // 0x7bfdf8: cmp             x4, #1
    // 0x7bfdfc: b.ls            #0x7bfe10
    // 0x7bfe00: r8 = int
    //     0x7bfe00: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    // 0x7bfe04: r3 = Null
    //     0x7bfe04: add             x3, PP, #0x3c, lsl #12  ; [pp+0x3c208] Null
    //     0x7bfe08: ldr             x3, [x3, #0x208]
    // 0x7bfe0c: r0 = int()
    //     0x7bfe0c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7bfe10: ldur            x0, [fp, #-0x10]
    // 0x7bfe14: LoadField: r1 = r0->field_13
    //     0x7bfe14: ldur            w1, [x0, #0x13]
    // 0x7bfe18: DecompressPointer r1
    //     0x7bfe18: add             x1, x1, HEAP, lsl #32
    // 0x7bfe1c: ldur            x2, [fp, #-0x20]
    // 0x7bfe20: r3 = LoadInt32Instr(r2)
    //     0x7bfe20: sbfx            x3, x2, #1, #0x1f
    //     0x7bfe24: tbz             w2, #0, #0x7bfe2c
    //     0x7bfe28: ldur            x3, [x2, #7]
    // 0x7bfe2c: mov             x2, x3
    // 0x7bfe30: r0 = __unknown_function__()
    //     0x7bfe30: bl              #0x7bfe80  ; [] ::__unknown_function__
    // 0x7bfe34: mov             x1, x0
    // 0x7bfe38: stur            x1, [fp, #-0x20]
    // 0x7bfe3c: r0 = Await()
    //     0x7bfe3c: bl              #0x74ab64  ; AwaitStub
    // 0x7bfe40: r1 = "2bed0a9e613d670fce607f917393"
    //     0x7bfe40: add             x1, PP, #0x3c, lsl #12  ; [pp+0x3c218] "2bed0a9e613d670fce607f917393"
    //     0x7bfe44: ldr             x1, [x1, #0x218]
    // 0x7bfe48: r0 = call 0x628160
    //     0x7bfe48: bl              #0x628160
    // 0x7bfe4c: mov             x1, x0
    // 0x7bfe50: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bfe50: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bfe54: r0 = call 0x3a5cc4
    //     0x7bfe54: bl              #0x3a5cc4
    // 0x7bfe58: ldur            x16, [fp, #-0x18]
    // 0x7bfe5c: str             x16, [SP]
    // 0x7bfe60: ldur            x0, [fp, #-0x18]
    // 0x7bfe64: ClosureCall
    //     0x7bfe64: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7bfe68: ldur            x2, [x0, #0x1f]
    //     0x7bfe6c: blr             x2
    // 0x7bfe70: r0 = Null
    //     0x7bfe70: mov             x0, NULL
    // 0x7bfe74: r0 = ReturnAsyncNotFuture()
    //     0x7bfe74: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bfe78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bfe78: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bfe7c: b               #0x7bfdc0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x629340, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x628594, size: -0x1
  }
}

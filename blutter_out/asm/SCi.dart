// lib: , url: SCi

// class id: 1048945, size: 0x8
class :: {
}

// class id: 1638, size: 0x18, field offset: 0x8
//   const constructor, 
class uba extends Object {
}

// class id: 1639, size: 0x20, field offset: 0x8
//   const constructor, 
class rba extends Object {
}

// class id: 2395, size: 0xc, field offset: 0x8
//   const constructor, 
abstract class jD<X0> extends Object {

  [closure] Null <anonymous closure>(dynamic, X0) {
    // ** addr: 0x7788b8, size: 0xc0
    // 0x7788b8: EnterFrame
    //     0x7788b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7788bc: mov             fp, SP
    // 0x7788c0: AllocStack(0x70)
    //     0x7788c0: sub             SP, SP, #0x70
    // 0x7788c4: SetupParameters([dynamic _ /* r0 */])
    //     0x7788c4: ldr             x0, [fp, #0x18]
    //     0x7788c8: ldur            w1, [x0, #0x17]
    //     0x7788cc: add             x1, x1, HEAP, lsl #32
    //     0x7788d0: stur            x1, [fp, #-0x58]
    // 0x7788d4: CheckStackOverflow
    //     0x7788d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7788d8: cmp             SP, x16
    //     0x7788dc: b.ls            #0x778970
    // 0x7788e0: ldr             x0, [fp, #0x10]
    // 0x7788e4: StoreField: r1->field_1b = r0
    //     0x7788e4: stur            w0, [x1, #0x1b]
    //     0x7788e8: tbz             w0, #0, #0x778904
    //     0x7788ec: ldurb           w16, [x1, #-1]
    //     0x7788f0: ldurb           w17, [x0, #-1]
    //     0x7788f4: and             x16, x17, x16, lsr #2
    //     0x7788f8: tst             x16, HEAP, lsr #32
    //     0x7788fc: b.eq            #0x778904
    //     0x778900: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x778904: LoadField: r2 = r1->field_13
    //     0x778904: ldur            w2, [x1, #0x13]
    // 0x778908: DecompressPointer r2
    //     0x778908: add             x2, x2, HEAP, lsl #32
    // 0x77890c: stur            x2, [fp, #-0x50]
    // 0x778910: LoadField: r0 = r1->field_23
    //     0x778910: ldur            w0, [x1, #0x23]
    // 0x778914: DecompressPointer r0
    //     0x778914: add             x0, x0, HEAP, lsl #32
    // 0x778918: ldr             x16, [fp, #0x10]
    // 0x77891c: stp             x16, x2, [SP, #8]
    // 0x778920: str             x0, [SP]
    // 0x778924: mov             x0, x2
    // 0x778928: ClosureCall
    //     0x778928: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x77892c: ldur            x2, [x0, #0x1f]
    //     0x778930: blr             x2
    // 0x778934: b               #0x778960
    // 0x778938: sub             SP, fp, #0x70
    // 0x77893c: ldur            x2, [fp, #-0x58]
    // 0x778940: LoadField: r3 = r2->field_23
    //     0x778940: ldur            w3, [x2, #0x23]
    // 0x778944: DecompressPointer r3
    //     0x778944: add             x3, x3, HEAP, lsl #32
    // 0x778948: stp             x0, x3, [SP, #8]
    // 0x77894c: str             x1, [SP]
    // 0x778950: mov             x0, x3
    // 0x778954: ClosureCall
    //     0x778954: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x778958: ldur            x2, [x0, #0x1f]
    //     0x77895c: blr             x2
    // 0x778960: r0 = Null
    //     0x778960: mov             x0, NULL
    // 0x778964: LeaveFrame
    //     0x778964: mov             SP, fp
    //     0x778968: ldp             fp, lr, [SP], #0x10
    // 0x77896c: ret
    //     0x77896c: ret             
    // 0x778970: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x778970: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x778974: b               #0x7788e0
  }
  [closure] Future<void> ygb(dynamic, Object, Ja?) async {
    // ** addr: 0x778978, size: 0xb4
    // 0x778978: EnterFrame
    //     0x778978: stp             fp, lr, [SP, #-0x10]!
    //     0x77897c: mov             fp, SP
    // 0x778980: AllocStack(0x40)
    //     0x778980: sub             SP, SP, #0x40
    // 0x778984: SetupParameters(jD<X0> this /* r1 */, dynamic _ /* r2, fp-0x20 */, dynamic _ /* r3, fp-0x18 */)
    //     0x778984: stur            NULL, [fp, #-8]
    //     0x778988: movz            x0, #0
    //     0x77898c: add             x1, fp, w0, sxtw #2
    //     0x778990: ldr             x1, [x1, #0x20]
    //     0x778994: add             x2, fp, w0, sxtw #2
    //     0x778998: ldr             x2, [x2, #0x18]
    //     0x77899c: stur            x2, [fp, #-0x20]
    //     0x7789a0: add             x3, fp, w0, sxtw #2
    //     0x7789a4: ldr             x3, [x3, #0x10]
    //     0x7789a8: stur            x3, [fp, #-0x18]
    //     0x7789ac: ldur            w4, [x1, #0x17]
    //     0x7789b0: add             x4, x4, HEAP, lsl #32
    //     0x7789b4: stur            x4, [fp, #-0x10]
    // 0x7789b8: CheckStackOverflow
    //     0x7789b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7789bc: cmp             SP, x16
    //     0x7789c0: b.ls            #0x778a24
    // 0x7789c4: InitAsync() -> Future<void?>
    //     0x7789c4: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7789c8: bl              #0x74ada8  ; InitAsyncStub
    // 0x7789cc: ldur            x0, [fp, #-0x10]
    // 0x7789d0: LoadField: r1 = r0->field_1f
    //     0x7789d0: ldur            w1, [x0, #0x1f]
    // 0x7789d4: DecompressPointer r1
    //     0x7789d4: add             x1, x1, HEAP, lsl #32
    // 0x7789d8: tbnz            w1, #4, #0x7789e4
    // 0x7789dc: r0 = Null
    //     0x7789dc: mov             x0, NULL
    // 0x7789e0: r0 = ReturnAsyncNotFuture()
    //     0x7789e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7789e4: r1 = true
    //     0x7789e4: add             x1, NULL, #0x20  ; true
    // 0x7789e8: StoreField: r0->field_1f = r1
    //     0x7789e8: stur            w1, [x0, #0x1f]
    // 0x7789ec: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7789ec: ldur            w1, [x0, #0x17]
    // 0x7789f0: DecompressPointer r1
    //     0x7789f0: add             x1, x1, HEAP, lsl #32
    // 0x7789f4: LoadField: r2 = r0->field_1b
    //     0x7789f4: ldur            w2, [x0, #0x1b]
    // 0x7789f8: DecompressPointer r2
    //     0x7789f8: add             x2, x2, HEAP, lsl #32
    // 0x7789fc: stp             x2, x1, [SP, #0x10]
    // 0x778a00: ldur            x16, [fp, #-0x20]
    // 0x778a04: ldur            lr, [fp, #-0x18]
    // 0x778a08: stp             lr, x16, [SP]
    // 0x778a0c: mov             x0, x1
    // 0x778a10: ClosureCall
    //     0x778a10: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x778a14: ldur            x2, [x0, #0x1f]
    //     0x778a18: blr             x2
    // 0x778a1c: r0 = Null
    //     0x778a1c: mov             x0, NULL
    // 0x778a20: r0 = ReturnAsyncNotFuture()
    //     0x778a20: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x778a24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x778a24: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x778a28: b               #0x7789c4
  }
  [closure] Future<void> <anonymous closure>(dynamic, X0?, Object, Ja?) async {
    // ** addr: 0x778a38, size: 0x100
    // 0x778a38: EnterFrame
    //     0x778a38: stp             fp, lr, [SP, #-0x10]!
    //     0x778a3c: mov             fp, SP
    // 0x778a40: AllocStack(0x30)
    //     0x778a40: sub             SP, SP, #0x30
    // 0x778a44: SetupParameters(jD<X0> this /* r1 */, dynamic _ /* r2, fp-0x20 */, dynamic _ /* r3, fp-0x18 */)
    //     0x778a44: stur            NULL, [fp, #-8]
    //     0x778a48: movz            x0, #0
    //     0x778a4c: add             x1, fp, w0, sxtw #2
    //     0x778a50: ldr             x1, [x1, #0x28]
    //     0x778a54: add             x2, fp, w0, sxtw #2
    //     0x778a58: ldr             x2, [x2, #0x18]
    //     0x778a5c: stur            x2, [fp, #-0x20]
    //     0x778a60: add             x3, fp, w0, sxtw #2
    //     0x778a64: ldr             x3, [x3, #0x10]
    //     0x778a68: stur            x3, [fp, #-0x18]
    //     0x778a6c: ldur            w4, [x1, #0x17]
    //     0x778a70: add             x4, x4, HEAP, lsl #32
    //     0x778a74: stur            x4, [fp, #-0x10]
    // 0x778a78: CheckStackOverflow
    //     0x778a78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x778a7c: cmp             SP, x16
    //     0x778a80: b.ls            #0x778b2c
    // 0x778a84: InitAsync() -> Future<void?>
    //     0x778a84: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x778a88: bl              #0x74ada8  ; InitAsyncStub
    // 0x778a8c: r0 = Null
    //     0x778a8c: mov             x0, NULL
    // 0x778a90: r0 = Await()
    //     0x778a90: bl              #0x74ab64  ; AwaitStub
    // 0x778a94: ldur            x0, [fp, #-0x10]
    // 0x778a98: LoadField: r1 = r0->field_13
    //     0x778a98: ldur            w1, [x0, #0x13]
    // 0x778a9c: DecompressPointer r1
    //     0x778a9c: add             x1, x1, HEAP, lsl #32
    // 0x778aa0: stur            x1, [fp, #-0x28]
    // 0x778aa4: LoadField: r0 = r1->field_7
    //     0x778aa4: ldur            w0, [x1, #7]
    // 0x778aa8: DecompressPointer r0
    //     0x778aa8: add             x0, x0, HEAP, lsl #32
    // 0x778aac: cmp             w0, NULL
    // 0x778ab0: b.ne            #0x778ad0
    // 0x778ab4: r0 = _Cba()
    //     0x778ab4: bl              #0x778b38  ; Allocate_CbaStub -> _Cba (size=0x30)
    // 0x778ab8: mov             x1, x0
    // 0x778abc: stur            x0, [fp, #-0x10]
    // 0x778ac0: r0 = call 0x3d43d8
    //     0x778ac0: bl              #0x3d43d8
    // 0x778ac4: ldur            x1, [fp, #-0x28]
    // 0x778ac8: ldur            x2, [fp, #-0x10]
    // 0x778acc: r0 = call 0x3d41c4
    //     0x778acc: bl              #0x3d41c4
    // 0x778ad0: ldur            x0, [fp, #-0x28]
    // 0x778ad4: LoadField: r2 = r0->field_7
    //     0x778ad4: ldur            w2, [x0, #7]
    // 0x778ad8: DecompressPointer r2
    //     0x778ad8: add             x2, x2, HEAP, lsl #32
    // 0x778adc: stur            x2, [fp, #-0x10]
    // 0x778ae0: cmp             w2, NULL
    // 0x778ae4: b.eq            #0x778b34
    // 0x778ae8: r1 = <List<Object>>
    //     0x778ae8: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x778aec: r0 = OO()
    //     0x778aec: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x778af0: mov             x1, x0
    // 0x778af4: r2 = "while resolving an image"
    //     0x778af4: add             x2, PP, #0x23, lsl #12  ; [pp+0x237f8] "while resolving an image"
    //     0x778af8: ldr             x2, [x2, #0x7f8]
    // 0x778afc: r3 = Instance_GO
    //     0x778afc: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x778b00: r0 = call 0x24e36c
    //     0x778b00: bl              #0x24e36c
    // 0x778b04: r16 = true
    //     0x778b04: add             x16, NULL, #0x20  ; true
    // 0x778b08: str             x16, [SP]
    // 0x778b0c: ldur            x1, [fp, #-0x10]
    // 0x778b10: ldur            x2, [fp, #-0x20]
    // 0x778b14: ldur            x3, [fp, #-0x18]
    // 0x778b18: r4 = const [0, 0x4, 0x1, 0x3, OTc, 0x3, null]
    //     0x778b18: add             x4, PP, #0x23, lsl #12  ; [pp+0x236c0] List(7) [0, 0x4, 0x1, 0x3, "OTc", 0x3, Null]
    //     0x778b1c: ldr             x4, [x4, #0x6c0]
    // 0x778b20: r0 = __unknown_function__()
    //     0x778b20: bl              #0x777b48  ; [] ::__unknown_function__
    // 0x778b24: r0 = Null
    //     0x778b24: mov             x0, NULL
    // 0x778b28: r0 = ReturnAsyncNotFuture()
    //     0x778b28: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x778b2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x778b2c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x778b30: b               #0x778a84
    // 0x778b34: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x778b34: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, X0, (dynamic, Object, Ja?) => void) {
    // ** addr: 0x3d44ac, size: -0x1
  }
  [closure] tba <anonymous closure>(dynamic) {
    // ** addr: 0x684450, size: -0x1
  }
  [closure] tba <anonymous closure>(dynamic) {
    // ** addr: 0x684678, size: -0x1
  }
}

// class id: 2397, size: 0x18, field offset: 0xc
//   const constructor, 
class Aba extends jD<dynamic> {

  [closure] List<IO> <anonymous closure>(dynamic) {
    // ** addr: 0x6e0504, size: -0x1
  }
}

// class id: 2399, size: 0xc, field offset: 0xc
//   const constructor, 
abstract class vba extends jD<dynamic> {
}

// class id: 3134, size: 0x30, field offset: 0x30
class _Cba extends tba {
}

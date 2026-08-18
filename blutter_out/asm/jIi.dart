// lib: , url: jIi

// class id: 1049297, size: 0x8
class :: {
}

// class id: 851, size: 0x44, field offset: 0x8
class hIa extends Object {

  late final (dynamic, Object, Pointer<Bool>) => Pointer<iIa> _Zye; // offset: 0x38
  late final Pointer<NativeFunction<(dynamic, Handle, Pointer<Bool>) => Pointer<iIa>>> _Yye; // offset: 0x34
  late final (dynamic, Pointer<Void>) => int _Tye; // offset: 0x20
  late final Pointer<NativeFunction<(dynamic, Pointer<Void>) => IntPtr>> _Sye; // offset: 0x1c
  late final (dynamic, Object, Pointer<Void>, int) => Pointer<iIa> _bze; // offset: 0x40
  late final Pointer<NativeFunction<(dynamic, Handle, Pointer<Void>, Dg) => Pointer<iIa>>> _aze; // offset: 0x3c
  late final (dynamic, Pointer<Void>) => nIa _Pye; // offset: 0x10
  late final Pointer<NativeFunction<(dynamic, Pointer<Void>) => nIa>> _Oye; // offset: 0xc
  late final (dynamic, Pointer<Bg>) => mIa _Vye; // offset: 0x28
  late final Pointer<NativeFunction<(dynamic, Pointer<Bg>) => mIa>> _Uye; // offset: 0x24
  late final (dynamic) => Pointer<jIa> _Rye; // offset: 0x18
  late final Pointer<NativeFunction<(dynamic) => Pointer<jIa>>> _Qye; // offset: 0x14
  late final (dynamic, Pointer<iIa>, Object) => void _Xye; // offset: 0x30
  late final Pointer<NativeFunction<(dynamic, Pointer<iIa>, Handle) => Void>> _Wye; // offset: 0x2c

  [closure] Pointer<iIa> mJg(dynamic, Object, Pointer<Bool>) {
    // ** addr: 0x7a6738, size: 0x1a8
    // 0x7a6738: EnterFrame
    //     0x7a6738: stp             fp, lr, [SP, #-0x10]!
    //     0x7a673c: mov             fp, SP
    // 0x7a6740: AllocStack(0x68)
    //     0x7a6740: sub             SP, SP, #0x68
    // 0x7a6744: SetupParameters([dynamic _ /* r0 */])
    //     0x7a6744: ldr             x0, [fp, #0x20]
    //     0x7a6748: ldur            w20, [x0, #0x17]
    //     0x7a674c: add             x20, x20, HEAP, lsl #32
    //     0x7a6750: stur            x20, [fp, #-0x68]
    // 0x7a6754: CheckStackOverflow
    //     0x7a6754: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a6758: cmp             SP, x16
    //     0x7a675c: b.ls            #0x7a68d8
    // 0x7a6760: LoadField: r0 = r20->field_f
    //     0x7a6760: ldur            w0, [x20, #0xf]
    // 0x7a6764: DecompressPointer r0
    //     0x7a6764: add             x0, x0, HEAP, lsl #32
    // 0x7a6768: LoadField: r23 = r0->field_7
    //     0x7a6768: ldur            x23, [x0, #7]
    // 0x7a676c: stur            x23, [fp, #-0x60]
    // 0x7a6770: ldr             x24, [fp, #0x10]
    // 0x7a6774: mov             x25, THR
    // 0x7a6778: stur            x25, [fp, #-0x58]
    // 0x7a677c: ldr             x9, [x25, #0x7d8]
    // 0x7a6780: mov             x0, x25
    // 0x7a6784: mov             x17, fp
    // 0x7a6788: SaveReg rFP
    //     0x7a6788: str             fp, [SP, #-8]!
    // 0x7a678c: mov             fp, SP
    // 0x7a6790: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6794: mov             x19, sp
    // 0x7a6798: mov             sp, SP
    // 0x7a679c: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a67a0: blr             x9
    // 0x7a67a4: r16 = 8
    //     0x7a67a4: movz            x16, #0x8
    // 0x7a67a8: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a67ac: mov             sp, x19
    // 0x7a67b0: mov             SP, fp
    // 0x7a67b4: RestoreReg rFP
    //     0x7a67b4: ldr             fp, [SP], #8
    // 0x7a67b8: stur            x0, [fp, #-0x50]
    // 0x7a67bc: LoadField: r2 = r24->field_7
    //     0x7a67bc: ldur            x2, [x24, #7]
    // 0x7a67c0: mov             x1, x2
    // 0x7a67c4: mov             x9, x23
    // 0x7a67c8: stur            x2, [fp, #-0x48]
    // 0x7a67cc: mov             x19, fp
    // 0x7a67d0: r24 = Null
    //     0x7a67d0: mov             x24, NULL
    // 0x7a67d4: EnterFrame
    //     0x7a67d4: stp             fp, lr, [SP, #-0x10]!
    //     0x7a67d8: mov             fp, SP
    // 0x7a67dc: and             SP, SP, #0xfffffffffffffff0
    // 0x7a67e0: add             x0, x19, #0x18
    // 0x7a67e4: adr             x10, #0x7a67e8
    // 0x7a67e8: str             x10, [fp, #8]
    // 0x7a67ec: ldr             x10, [THR, #0x270]  ; THR::call_native_through_safepoint_entry_point
    // 0x7a67f0: blr             x10
    // 0x7a67f4: ldr             HEAP, [THR, #0x50]  ; THR::write_barrier_mask
    // 0x7a67f8: lsl             HEAP, HEAP, #0x20
    // 0x7a67fc: ldr             NULL, [THR, #0x88]  ; THR::object_null
    // 0x7a6800: ldr             x16, [THR, #0x58]  ; THR::heap_base
    // 0x7a6804: orr             HEAP, HEAP, x16, lsr #32
    // 0x7a6808: LeaveFrame
    //     0x7a6808: mov             SP, fp
    //     0x7a680c: ldp             fp, lr, [SP], #0x10
    // 0x7a6810: ldr             PP, [THR, #0x6d8]  ; THR::global_object_pool
    // 0x7a6814: sub             PP, PP, #1
    // 0x7a6818: ldr             x21, [THR, #0x70]  ; THR::dispatch_table_array
    // 0x7a681c: r1 = <Never>
    //     0x7a681c: ldr             x1, [PP, #0x1d90]  ; [pp+0x1d90] TypeArguments: <Never>
    // 0x7a6820: stur            x0, [fp, #-0x48]
    // 0x7a6824: r0 = Pointer()
    //     0x7a6824: bl              #0x746eac  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0x7a6828: mov             x20, x0
    // 0x7a682c: ldur            x0, [fp, #-0x48]
    // 0x7a6830: StoreField: r20->field_7 = r0
    //     0x7a6830: stur            x0, [x20, #7]
    // 0x7a6834: ldur            x0, [fp, #-0x58]
    // 0x7a6838: ldr             x9, [x0, #0x7e0]
    // 0x7a683c: mov             x17, fp
    // 0x7a6840: SaveReg rFP
    //     0x7a6840: str             fp, [SP, #-8]!
    // 0x7a6844: mov             fp, SP
    // 0x7a6848: and             SP, SP, #0xfffffffffffffff0
    // 0x7a684c: mov             x19, sp
    // 0x7a6850: mov             sp, SP
    // 0x7a6854: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6858: blr             x9
    // 0x7a685c: r16 = 8
    //     0x7a685c: movz            x16, #0x8
    // 0x7a6860: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6864: mov             sp, x19
    // 0x7a6868: mov             SP, fp
    // 0x7a686c: RestoreReg rFP
    //     0x7a686c: ldr             fp, [SP], #8
    // 0x7a6870: mov             x0, x20
    // 0x7a6874: LeaveFrame
    //     0x7a6874: mov             SP, fp
    //     0x7a6878: ldp             fp, lr, [SP], #0x10
    // 0x7a687c: ret
    //     0x7a687c: ret             
    // 0x7a6880: sub             SP, fp, #0x68
    // 0x7a6884: mov             x23, x0
    // 0x7a6888: mov             x20, x1
    // 0x7a688c: CallRuntime_ExitHandleScope(Thread*) -> void
    //     0x7a688c: mov             x0, THR
    //     0x7a6890: ldr             x9, [x0, #0x7e0]
    //     0x7a6894: mov             x17, fp
    //     0x7a6898: str             fp, [SP, #-8]!
    //     0x7a689c: mov             fp, SP
    //     0x7a68a0: and             SP, SP, #0xfffffffffffffff0
    //     0x7a68a4: mov             x19, sp
    //     0x7a68a8: mov             sp, SP
    //     0x7a68ac: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a68b0: blr             x9
    //     0x7a68b4: movz            x16, #0x8
    //     0x7a68b8: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a68bc: mov             sp, x19
    //     0x7a68c0: mov             SP, fp
    //     0x7a68c4: ldr             fp, [SP], #8
    // 0x7a68c8: mov             x0, x23
    // 0x7a68cc: mov             x1, x20
    // 0x7a68d0: r0 = ReThrow()
    //     0x7a68d0: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7a68d4: brk             #0
    // 0x7a68d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a68d8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a68dc: b               #0x7a6760
  }
  [closure] Pointer<iIa> oJg(dynamic, Object, Pointer<Void>, int) {
    // ** addr: 0x7a695c, size: 0x1c0
    // 0x7a695c: EnterFrame
    //     0x7a695c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a6960: mov             fp, SP
    // 0x7a6964: AllocStack(0x70)
    //     0x7a6964: sub             SP, SP, #0x70
    // 0x7a6968: SetupParameters([dynamic _ /* r0 */])
    //     0x7a6968: ldr             x0, [fp, #0x28]
    //     0x7a696c: ldur            w20, [x0, #0x17]
    //     0x7a6970: add             x20, x20, HEAP, lsl #32
    //     0x7a6974: stur            x20, [fp, #-0x70]
    // 0x7a6978: CheckStackOverflow
    //     0x7a6978: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a697c: cmp             SP, x16
    //     0x7a6980: b.ls            #0x7a6b14
    // 0x7a6984: LoadField: r0 = r20->field_f
    //     0x7a6984: ldur            w0, [x20, #0xf]
    // 0x7a6988: DecompressPointer r0
    //     0x7a6988: add             x0, x0, HEAP, lsl #32
    // 0x7a698c: LoadField: r23 = r0->field_7
    //     0x7a698c: ldur            x23, [x0, #7]
    // 0x7a6990: stur            x23, [fp, #-0x68]
    // 0x7a6994: ldr             x25, [fp, #0x18]
    // 0x7a6998: ldr             x24, [fp, #0x10]
    // 0x7a699c: mov             x1, THR
    // 0x7a69a0: stur            x1, [fp, #-0x48]
    // 0x7a69a4: ldr             x9, [x1, #0x7d8]
    // 0x7a69a8: mov             x0, x1
    // 0x7a69ac: mov             x17, fp
    // 0x7a69b0: SaveReg rFP
    //     0x7a69b0: str             fp, [SP, #-8]!
    // 0x7a69b4: mov             fp, SP
    // 0x7a69b8: and             SP, SP, #0xfffffffffffffff0
    // 0x7a69bc: mov             x19, sp
    // 0x7a69c0: mov             sp, SP
    // 0x7a69c4: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a69c8: blr             x9
    // 0x7a69cc: r16 = 8
    //     0x7a69cc: movz            x16, #0x8
    // 0x7a69d0: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a69d4: mov             sp, x19
    // 0x7a69d8: mov             SP, fp
    // 0x7a69dc: RestoreReg rFP
    //     0x7a69dc: ldr             fp, [SP], #8
    // 0x7a69e0: stur            x0, [fp, #-0x60]
    // 0x7a69e4: LoadField: r3 = r25->field_7
    //     0x7a69e4: ldur            x3, [x25, #7]
    // 0x7a69e8: stur            x3, [fp, #-0x58]
    // 0x7a69ec: r4 = LoadInt32Instr(r24)
    //     0x7a69ec: sbfx            x4, x24, #1, #0x1f
    //     0x7a69f0: tbz             w24, #0, #0x7a69f8
    //     0x7a69f4: ldur            x4, [x24, #7]
    // 0x7a69f8: mov             x1, x3
    // 0x7a69fc: mov             x2, x4
    // 0x7a6a00: mov             x9, x23
    // 0x7a6a04: stur            x4, [fp, #-0x50]
    // 0x7a6a08: mov             x19, fp
    // 0x7a6a0c: r24 = Null
    //     0x7a6a0c: mov             x24, NULL
    // 0x7a6a10: EnterFrame
    //     0x7a6a10: stp             fp, lr, [SP, #-0x10]!
    //     0x7a6a14: mov             fp, SP
    // 0x7a6a18: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6a1c: add             x0, x19, #0x20
    // 0x7a6a20: adr             x10, #0x7a6a24
    // 0x7a6a24: str             x10, [fp, #8]
    // 0x7a6a28: ldr             x10, [THR, #0x270]  ; THR::call_native_through_safepoint_entry_point
    // 0x7a6a2c: blr             x10
    // 0x7a6a30: ldr             HEAP, [THR, #0x50]  ; THR::write_barrier_mask
    // 0x7a6a34: lsl             HEAP, HEAP, #0x20
    // 0x7a6a38: ldr             NULL, [THR, #0x88]  ; THR::object_null
    // 0x7a6a3c: ldr             x16, [THR, #0x58]  ; THR::heap_base
    // 0x7a6a40: orr             HEAP, HEAP, x16, lsr #32
    // 0x7a6a44: LeaveFrame
    //     0x7a6a44: mov             SP, fp
    //     0x7a6a48: ldp             fp, lr, [SP], #0x10
    // 0x7a6a4c: ldr             PP, [THR, #0x6d8]  ; THR::global_object_pool
    // 0x7a6a50: sub             PP, PP, #1
    // 0x7a6a54: ldr             x21, [THR, #0x70]  ; THR::dispatch_table_array
    // 0x7a6a58: r1 = <Never>
    //     0x7a6a58: ldr             x1, [PP, #0x1d90]  ; [pp+0x1d90] TypeArguments: <Never>
    // 0x7a6a5c: stur            x0, [fp, #-0x50]
    // 0x7a6a60: r0 = Pointer()
    //     0x7a6a60: bl              #0x746eac  ; AllocatePointerStub -> Pointer<X0 bound NativeType> (size=-0x8)
    // 0x7a6a64: mov             x20, x0
    // 0x7a6a68: ldur            x0, [fp, #-0x50]
    // 0x7a6a6c: StoreField: r20->field_7 = r0
    //     0x7a6a6c: stur            x0, [x20, #7]
    // 0x7a6a70: ldur            x0, [fp, #-0x48]
    // 0x7a6a74: ldr             x9, [x0, #0x7e0]
    // 0x7a6a78: mov             x17, fp
    // 0x7a6a7c: SaveReg rFP
    //     0x7a6a7c: str             fp, [SP, #-8]!
    // 0x7a6a80: mov             fp, SP
    // 0x7a6a84: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6a88: mov             x19, sp
    // 0x7a6a8c: mov             sp, SP
    // 0x7a6a90: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6a94: blr             x9
    // 0x7a6a98: r16 = 8
    //     0x7a6a98: movz            x16, #0x8
    // 0x7a6a9c: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6aa0: mov             sp, x19
    // 0x7a6aa4: mov             SP, fp
    // 0x7a6aa8: RestoreReg rFP
    //     0x7a6aa8: ldr             fp, [SP], #8
    // 0x7a6aac: mov             x0, x20
    // 0x7a6ab0: LeaveFrame
    //     0x7a6ab0: mov             SP, fp
    //     0x7a6ab4: ldp             fp, lr, [SP], #0x10
    // 0x7a6ab8: ret
    //     0x7a6ab8: ret             
    // 0x7a6abc: sub             SP, fp, #0x70
    // 0x7a6ac0: mov             x23, x0
    // 0x7a6ac4: mov             x20, x1
    // 0x7a6ac8: CallRuntime_ExitHandleScope(Thread*) -> void
    //     0x7a6ac8: mov             x0, THR
    //     0x7a6acc: ldr             x9, [x0, #0x7e0]
    //     0x7a6ad0: mov             x17, fp
    //     0x7a6ad4: str             fp, [SP, #-8]!
    //     0x7a6ad8: mov             fp, SP
    //     0x7a6adc: and             SP, SP, #0xfffffffffffffff0
    //     0x7a6ae0: mov             x19, sp
    //     0x7a6ae4: mov             sp, SP
    //     0x7a6ae8: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a6aec: blr             x9
    //     0x7a6af0: movz            x16, #0x8
    //     0x7a6af4: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a6af8: mov             sp, x19
    //     0x7a6afc: mov             SP, fp
    //     0x7a6b00: ldr             fp, [SP], #8
    // 0x7a6b04: mov             x0, x23
    // 0x7a6b08: mov             x1, x20
    // 0x7a6b0c: r0 = ReThrow()
    //     0x7a6b0c: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7a6b10: brk             #0
    // 0x7a6b14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a6b14: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a6b18: b               #0x7a6984
  }
  [closure] void kJg(dynamic, Pointer<iIa>, Object) {
    // ** addr: 0x7a6d7c, size: 0x194
    // 0x7a6d7c: EnterFrame
    //     0x7a6d7c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a6d80: mov             fp, SP
    // 0x7a6d84: AllocStack(0x68)
    //     0x7a6d84: sub             SP, SP, #0x68
    // 0x7a6d88: SetupParameters([dynamic _ /* r0 */])
    //     0x7a6d88: ldr             x0, [fp, #0x20]
    //     0x7a6d8c: ldur            w20, [x0, #0x17]
    //     0x7a6d90: add             x20, x20, HEAP, lsl #32
    //     0x7a6d94: stur            x20, [fp, #-0x68]
    // 0x7a6d98: CheckStackOverflow
    //     0x7a6d98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7a6d9c: cmp             SP, x16
    //     0x7a6da0: b.ls            #0x7a6f08
    // 0x7a6da4: LoadField: r0 = r20->field_f
    //     0x7a6da4: ldur            w0, [x20, #0xf]
    // 0x7a6da8: DecompressPointer r0
    //     0x7a6da8: add             x0, x0, HEAP, lsl #32
    // 0x7a6dac: LoadField: r23 = r0->field_7
    //     0x7a6dac: ldur            x23, [x0, #7]
    // 0x7a6db0: stur            x23, [fp, #-0x60]
    // 0x7a6db4: ldr             x24, [fp, #0x18]
    // 0x7a6db8: mov             x25, THR
    // 0x7a6dbc: stur            x25, [fp, #-0x58]
    // 0x7a6dc0: ldr             x9, [x25, #0x7d8]
    // 0x7a6dc4: mov             x0, x25
    // 0x7a6dc8: mov             x17, fp
    // 0x7a6dcc: SaveReg rFP
    //     0x7a6dcc: str             fp, [SP, #-8]!
    // 0x7a6dd0: mov             fp, SP
    // 0x7a6dd4: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6dd8: mov             x19, sp
    // 0x7a6ddc: mov             sp, SP
    // 0x7a6de0: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6de4: blr             x9
    // 0x7a6de8: r16 = 8
    //     0x7a6de8: movz            x16, #0x8
    // 0x7a6dec: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6df0: mov             sp, x19
    // 0x7a6df4: mov             SP, fp
    // 0x7a6df8: RestoreReg rFP
    //     0x7a6df8: ldr             fp, [SP], #8
    // 0x7a6dfc: mov             x1, x0
    // 0x7a6e00: stur            x1, [fp, #-0x50]
    // 0x7a6e04: LoadField: r2 = r24->field_7
    //     0x7a6e04: ldur            x2, [x24, #7]
    // 0x7a6e08: mov             x0, x2
    // 0x7a6e0c: mov             x9, x23
    // 0x7a6e10: stur            x2, [fp, #-0x48]
    // 0x7a6e14: mov             x19, fp
    // 0x7a6e18: r24 = Null
    //     0x7a6e18: mov             x24, NULL
    // 0x7a6e1c: EnterFrame
    //     0x7a6e1c: stp             fp, lr, [SP, #-0x10]!
    //     0x7a6e20: mov             fp, SP
    // 0x7a6e24: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6e28: add             x1, x19, #0x10
    // 0x7a6e2c: adr             x10, #0x7a6e30
    // 0x7a6e30: str             x10, [fp, #8]
    // 0x7a6e34: ldr             x10, [THR, #0x270]  ; THR::call_native_through_safepoint_entry_point
    // 0x7a6e38: blr             x10
    // 0x7a6e3c: ldr             HEAP, [THR, #0x50]  ; THR::write_barrier_mask
    // 0x7a6e40: lsl             HEAP, HEAP, #0x20
    // 0x7a6e44: ldr             NULL, [THR, #0x88]  ; THR::object_null
    // 0x7a6e48: ldr             x16, [THR, #0x58]  ; THR::heap_base
    // 0x7a6e4c: orr             HEAP, HEAP, x16, lsr #32
    // 0x7a6e50: LeaveFrame
    //     0x7a6e50: mov             SP, fp
    //     0x7a6e54: ldp             fp, lr, [SP], #0x10
    // 0x7a6e58: ldr             PP, [THR, #0x6d8]  ; THR::global_object_pool
    // 0x7a6e5c: sub             PP, PP, #1
    // 0x7a6e60: ldr             x21, [THR, #0x70]  ; THR::dispatch_table_array
    // 0x7a6e64: ldur            x0, [fp, #-0x58]
    // 0x7a6e68: ldr             x9, [x0, #0x7e0]
    // 0x7a6e6c: mov             x17, fp
    // 0x7a6e70: SaveReg rFP
    //     0x7a6e70: str             fp, [SP, #-8]!
    // 0x7a6e74: mov             fp, SP
    // 0x7a6e78: and             SP, SP, #0xfffffffffffffff0
    // 0x7a6e7c: mov             x19, sp
    // 0x7a6e80: mov             sp, SP
    // 0x7a6e84: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6e88: blr             x9
    // 0x7a6e8c: r16 = 8
    //     0x7a6e8c: movz            x16, #0x8
    // 0x7a6e90: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    // 0x7a6e94: mov             sp, x19
    // 0x7a6e98: mov             SP, fp
    // 0x7a6e9c: RestoreReg rFP
    //     0x7a6e9c: ldr             fp, [SP], #8
    // 0x7a6ea0: r0 = Null
    //     0x7a6ea0: mov             x0, NULL
    // 0x7a6ea4: LeaveFrame
    //     0x7a6ea4: mov             SP, fp
    //     0x7a6ea8: ldp             fp, lr, [SP], #0x10
    // 0x7a6eac: ret
    //     0x7a6eac: ret             
    // 0x7a6eb0: sub             SP, fp, #0x68
    // 0x7a6eb4: mov             x23, x0
    // 0x7a6eb8: mov             x20, x1
    // 0x7a6ebc: CallRuntime_ExitHandleScope(Thread*) -> void
    //     0x7a6ebc: mov             x0, THR
    //     0x7a6ec0: ldr             x9, [x0, #0x7e0]
    //     0x7a6ec4: mov             x17, fp
    //     0x7a6ec8: str             fp, [SP, #-8]!
    //     0x7a6ecc: mov             fp, SP
    //     0x7a6ed0: and             SP, SP, #0xfffffffffffffff0
    //     0x7a6ed4: mov             x19, sp
    //     0x7a6ed8: mov             sp, SP
    //     0x7a6edc: str             x9, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a6ee0: blr             x9
    //     0x7a6ee4: movz            x16, #0x8
    //     0x7a6ee8: str             x16, [THR, #0x6c0]  ; THR::vm_tag
    //     0x7a6eec: mov             sp, x19
    //     0x7a6ef0: mov             SP, fp
    //     0x7a6ef4: ldr             fp, [SP], #8
    // 0x7a6ef8: mov             x0, x23
    // 0x7a6efc: mov             x1, x20
    // 0x7a6f00: r0 = ReThrow()
    //     0x7a6f00: bl              #0x7dc4f4  ; ReThrowStub
    // 0x7a6f04: brk             #0
    // 0x7a6f08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7a6f08: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7a6f0c: b               #0x7a6da4
  }
  [closure] int gJg(dynamic, Pointer<Void>) {
    // ** addr: 0x4cc460, size: -0x1
  }
  [closure] nIa cJg(dynamic, Pointer<Void>) {
    // ** addr: 0x4cd348, size: -0x1
  }
  [closure] mIa iJg(dynamic, Pointer<Bg>) {
    // ** addr: 0x4cf0c4, size: -0x1
  }
  (dynamic, Object, Pointer<Void>, int) => Pointer<iIa> _bze(hIa) {
    // ** addr: 0x4cc6a8, size: -0x1
  }
  (dynamic, Object, Pointer<Bool>) => Pointer<iIa> _Zye(hIa) {
    // ** addr: 0x4cc214, size: -0x1
  }
  (dynamic, Pointer<Void>) => int _Tye(hIa) {
    // ** addr: 0x4cc3e8, size: -0x1
  }
  (dynamic, Pointer<iIa>, Object) => void _Xye(hIa) {
    // ** addr: 0x4cd7d4, size: -0x1
  }
  (dynamic, Pointer<Void>) => nIa _Pye(hIa) {
    // ** addr: 0x4cd2d0, size: -0x1
  }
  (dynamic, Pointer<Bg>) => mIa _Vye(hIa) {
    // ** addr: 0x4cf04c, size: -0x1
  }
}

// class id: 4841, size: 0x8, field offset: 0x8
abstract class qIa extends zg {
}

// class id: 4842, size: 0x8, field offset: 0x8
abstract class iIa extends zg {
}

// class id: 4859, size: 0x10, field offset: 0x10
class lIa extends Union {
}

// class id: 4867, size: 0x10, field offset: 0x10
class pIa extends Struct {
}

// class id: 4868, size: 0x10, field offset: 0x10
class oIa extends Struct {
}

// class id: 4869, size: 0x10, field offset: 0x10
class nIa extends Struct {
}

// class id: 4870, size: 0x10, field offset: 0x10
class mIa extends Struct {
}

// class id: 4871, size: 0x10, field offset: 0x10
class jIa extends Struct {
}

// lib: , url: uPi

// class id: 1049636, size: 0x8
class :: {
}

// class id: 368, size: 0xc, field offset: 0x8
class _QUa extends Object {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x775074, size: 0x1e0
    // 0x775074: EnterFrame
    //     0x775074: stp             fp, lr, [SP, #-0x10]!
    //     0x775078: mov             fp, SP
    // 0x77507c: AllocStack(0x98)
    //     0x77507c: sub             SP, SP, #0x98
    // 0x775080: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x775080: stur            NULL, [fp, #-8]
    //     0x775084: movz            x0, #0
    //     0x775088: add             x1, fp, w0, sxtw #2
    //     0x77508c: ldr             x1, [x1, #0x18]
    //     0x775090: add             x2, fp, w0, sxtw #2
    //     0x775094: ldr             x2, [x2, #0x10]
    //     0x775098: stur            x2, [fp, #-0x78]
    //     0x77509c: ldur            w3, [x1, #0x17]
    //     0x7750a0: add             x3, x3, HEAP, lsl #32
    //     0x7750a4: stur            x3, [fp, #-0x70]
    // 0x7750a8: CheckStackOverflow
    //     0x7750a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7750ac: cmp             SP, x16
    //     0x7750b0: b.ls            #0x775244
    // 0x7750b4: InitAsync() -> Future<List<Object?>>
    //     0x7750b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7750b8: ldr             x0, [x0, #0x1d0]
    //     0x7750bc: bl              #0x74ada8  ; InitAsyncStub
    // 0x7750c0: ldur            x3, [fp, #-0x78]
    // 0x7750c4: cmp             w3, NULL
    // 0x7750c8: b.eq            #0x77524c
    // 0x7750cc: mov             x0, x3
    // 0x7750d0: r2 = Null
    //     0x7750d0: mov             x2, NULL
    // 0x7750d4: r1 = Null
    //     0x7750d4: mov             x1, NULL
    // 0x7750d8: r4 = 60
    //     0x7750d8: movz            x4, #0x3c
    // 0x7750dc: branchIfSmi(r0, 0x7750e8)
    //     0x7750dc: tbz             w0, #0, #0x7750e8
    // 0x7750e0: r4 = LoadClassIdInstr(r0)
    //     0x7750e0: ldur            x4, [x0, #-1]
    //     0x7750e4: ubfx            x4, x4, #0xc, #0x14
    // 0x7750e8: sub             x4, x4, #0x5a
    // 0x7750ec: cmp             x4, #2
    // 0x7750f0: b.ls            #0x775104
    // 0x7750f4: r8 = List<Object?>
    //     0x7750f4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7750f8: r3 = Null
    //     0x7750f8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aaa8] Null
    //     0x7750fc: ldr             x3, [x3, #0xaa8]
    // 0x775100: r0 = List<Object?>()
    //     0x775100: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x775104: ldur            x0, [fp, #-0x78]
    // 0x775108: r1 = LoadClassIdInstr(r0)
    //     0x775108: ldur            x1, [x0, #-1]
    //     0x77510c: ubfx            x1, x1, #0xc, #0x14
    // 0x775110: stp             xzr, x0, [SP]
    // 0x775114: mov             x0, x1
    // 0x775118: mov             lr, x0
    // 0x77511c: ldr             lr, [x21, lr, lsl #3]
    // 0x775120: blr             lr
    // 0x775124: mov             x3, x0
    // 0x775128: stur            x3, [fp, #-0x78]
    // 0x77512c: cmp             w3, NULL
    // 0x775130: b.eq            #0x775250
    // 0x775134: r3 as int
    //     0x775134: mov             x0, x3
    //     0x775138: mov             x2, NULL
    //     0x77513c: mov             x1, NULL
    //     0x775140: tbz             w0, #0, #0x775168
    //     0x775144: ldur            x4, [x0, #-1]
    //     0x775148: ubfx            x4, x4, #0xc, #0x14
    //     0x77514c: sub             x4, x4, #0x3c
    //     0x775150: cmp             x4, #1
    //     0x775154: b.ls            #0x775168
    //     0x775158: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x77515c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aab8] Null
    //     0x775160: ldr             x3, [x3, #0xab8]
    //     0x775164: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x775168: ldur            x1, [fp, #-0x70]
    // 0x77516c: ldur            x0, [fp, #-0x78]
    // 0x775170: LoadField: r2 = r1->field_f
    //     0x775170: ldur            w2, [x1, #0xf]
    // 0x775174: DecompressPointer r2
    //     0x775174: add             x2, x2, HEAP, lsl #32
    // 0x775178: stur            x2, [fp, #-0x80]
    // 0x77517c: r3 = LoadInt32Instr(r0)
    //     0x77517c: sbfx            x3, x0, #1, #0x1f
    //     0x775180: tbz             w0, #0, #0x775188
    //     0x775184: ldur            x3, [x0, #7]
    // 0x775188: r16 = <OUa>
    //     0x775188: add             x16, PP, #0x19, lsl #12  ; [pp+0x197f0] TypeArguments: <OUa>
    //     0x77518c: ldr             x16, [x16, #0x7f0]
    // 0x775190: stp             x2, x16, [SP, #8]
    // 0x775194: str             x3, [SP]
    // 0x775198: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x775198: ldr             x4, [PP, #0x40]  ; [pp+0x40] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x77519c: r0 = call 0x395074
    //     0x77519c: bl              #0x395074
    // 0x7751a0: r16 = true
    //     0x7751a0: add             x16, NULL, #0x20  ; true
    // 0x7751a4: str             x16, [SP]
    // 0x7751a8: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7751a8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7751ac: ldr             x4, [x4, #0x870]
    // 0x7751b0: r0 = call 0x392d98
    //     0x7751b0: bl              #0x392d98
    // 0x7751b4: r0 = ReturnAsyncNotFuture()
    //     0x7751b4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7751b8: sub             SP, fp, #0x98
    // 0x7751bc: r1 = 60
    //     0x7751bc: movz            x1, #0x3c
    // 0x7751c0: branchIfSmi(r0, 0x7751cc)
    //     0x7751c0: tbz             w0, #0, #0x7751cc
    // 0x7751c4: r1 = LoadClassIdInstr(r0)
    //     0x7751c4: ldur            x1, [x0, #-1]
    //     0x7751c8: ubfx            x1, x1, #0xc, #0x14
    // 0x7751cc: cmp             x1, #0x5e5
    // 0x7751d0: b.ne            #0x7751e8
    // 0x7751d4: str             x0, [SP]
    // 0x7751d8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7751d8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7751dc: ldr             x4, [x4, #0x878]
    // 0x7751e0: r0 = call 0x392d98
    //     0x7751e0: bl              #0x392d98
    // 0x7751e4: r0 = ReturnAsyncNotFuture()
    //     0x7751e4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7751e8: r1 = 60
    //     0x7751e8: movz            x1, #0x3c
    // 0x7751ec: branchIfSmi(r0, 0x7751f8)
    //     0x7751ec: tbz             w0, #0, #0x7751f8
    // 0x7751f0: r1 = LoadClassIdInstr(r0)
    //     0x7751f0: ldur            x1, [x0, #-1]
    //     0x7751f4: ubfx            x1, x1, #0xc, #0x14
    // 0x7751f8: str             x0, [SP]
    // 0x7751fc: mov             x0, x1
    // 0x775200: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x775200: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x775204: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x775204: movz            x17, #0x3a5d
    //     0x775208: add             lr, x0, x17
    //     0x77520c: ldr             lr, [x21, lr, lsl #3]
    //     0x775210: blr             lr
    // 0x775214: stur            x0, [fp, #-0x70]
    // 0x775218: r0 = Mha()
    //     0x775218: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x77521c: mov             x1, x0
    // 0x775220: r0 = "error"
    //     0x775220: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x775224: StoreField: r1->field_7 = r0
    //     0x775224: stur            w0, [x1, #7]
    // 0x775228: ldur            x0, [fp, #-0x70]
    // 0x77522c: StoreField: r1->field_b = r0
    //     0x77522c: stur            w0, [x1, #0xb]
    // 0x775230: str             x1, [SP]
    // 0x775234: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x775234: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x775238: ldr             x4, [x4, #0x878]
    // 0x77523c: r0 = call 0x392d98
    //     0x77523c: bl              #0x392d98
    // 0x775240: r0 = ReturnAsyncNotFuture()
    //     0x775240: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x775244: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x775244: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x775248: b               #0x7750b4
    // 0x77524c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77524c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775250: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775250: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 369, size: 0x24, field offset: 0x8
class PUa extends Object {

  static late final PUa toc; // offset: 0xb3c
  late final Finalizer<int> _yvf; // offset: 0x14

  [closure] static void <anonymous closure>(dynamic, int) {
    // ** addr: 0x395d48, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, int) {
    // ** addr: 0x395914, size: -0x1
  }
}

// class id: 370, size: 0x10, field offset: 0x8
abstract class OUa extends Object {
}

// class id: 371, size: 0x10, field offset: 0x10
class AVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76b58c, size: 0x1e0
    // 0x76b58c: EnterFrame
    //     0x76b58c: stp             fp, lr, [SP, #-0x10]!
    //     0x76b590: mov             fp, SP
    // 0x76b594: AllocStack(0x90)
    //     0x76b594: sub             SP, SP, #0x90
    // 0x76b598: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76b598: stur            NULL, [fp, #-8]
    //     0x76b59c: movz            x0, #0
    //     0x76b5a0: add             x1, fp, w0, sxtw #2
    //     0x76b5a4: ldr             x1, [x1, #0x18]
    //     0x76b5a8: add             x2, fp, w0, sxtw #2
    //     0x76b5ac: ldr             x2, [x2, #0x10]
    //     0x76b5b0: stur            x2, [fp, #-0x78]
    //     0x76b5b4: ldur            w3, [x1, #0x17]
    //     0x76b5b8: add             x3, x3, HEAP, lsl #32
    //     0x76b5bc: stur            x3, [fp, #-0x70]
    // 0x76b5c0: CheckStackOverflow
    //     0x76b5c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76b5c4: cmp             SP, x16
    //     0x76b5c8: b.ls            #0x76b75c
    // 0x76b5cc: InitAsync() -> Future<List<Object?>>
    //     0x76b5cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76b5d0: ldr             x0, [x0, #0x1d0]
    //     0x76b5d4: bl              #0x74ada8  ; InitAsyncStub
    // 0x76b5d8: ldur            x3, [fp, #-0x78]
    // 0x76b5dc: cmp             w3, NULL
    // 0x76b5e0: b.eq            #0x76b764
    // 0x76b5e4: mov             x0, x3
    // 0x76b5e8: r2 = Null
    //     0x76b5e8: mov             x2, NULL
    // 0x76b5ec: r1 = Null
    //     0x76b5ec: mov             x1, NULL
    // 0x76b5f0: r4 = 60
    //     0x76b5f0: movz            x4, #0x3c
    // 0x76b5f4: branchIfSmi(r0, 0x76b600)
    //     0x76b5f4: tbz             w0, #0, #0x76b600
    // 0x76b5f8: r4 = LoadClassIdInstr(r0)
    //     0x76b5f8: ldur            x4, [x0, #-1]
    //     0x76b5fc: ubfx            x4, x4, #0xc, #0x14
    // 0x76b600: sub             x4, x4, #0x5a
    // 0x76b604: cmp             x4, #2
    // 0x76b608: b.ls            #0x76b61c
    // 0x76b60c: r8 = List<Object?>
    //     0x76b60c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76b610: r3 = Null
    //     0x76b610: add             x3, PP, #0x19, lsl #12  ; [pp+0x19850] Null
    //     0x76b614: ldr             x3, [x3, #0x850]
    // 0x76b618: r0 = List<Object?>()
    //     0x76b618: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76b61c: ldur            x0, [fp, #-0x78]
    // 0x76b620: r1 = LoadClassIdInstr(r0)
    //     0x76b620: ldur            x1, [x0, #-1]
    //     0x76b624: ubfx            x1, x1, #0xc, #0x14
    // 0x76b628: stp             xzr, x0, [SP]
    // 0x76b62c: mov             x0, x1
    // 0x76b630: mov             lr, x0
    // 0x76b634: ldr             lr, [x21, lr, lsl #3]
    // 0x76b638: blr             lr
    // 0x76b63c: mov             x3, x0
    // 0x76b640: stur            x3, [fp, #-0x78]
    // 0x76b644: cmp             w3, NULL
    // 0x76b648: b.eq            #0x76b768
    // 0x76b64c: r3 as int
    //     0x76b64c: mov             x0, x3
    //     0x76b650: mov             x2, NULL
    //     0x76b654: mov             x1, NULL
    //     0x76b658: tbz             w0, #0, #0x76b680
    //     0x76b65c: ldur            x4, [x0, #-1]
    //     0x76b660: ubfx            x4, x4, #0xc, #0x14
    //     0x76b664: sub             x4, x4, #0x3c
    //     0x76b668: cmp             x4, #1
    //     0x76b66c: b.ls            #0x76b680
    //     0x76b670: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76b674: add             x3, PP, #0x19, lsl #12  ; [pp+0x19860] Null
    //     0x76b678: ldr             x3, [x3, #0x860]
    //     0x76b67c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76b680: ldur            x1, [fp, #-0x70]
    // 0x76b684: ldur            x0, [fp, #-0x78]
    // 0x76b688: LoadField: r2 = r1->field_f
    //     0x76b688: ldur            w2, [x1, #0xf]
    // 0x76b68c: DecompressPointer r2
    //     0x76b68c: add             x2, x2, HEAP, lsl #32
    // 0x76b690: stur            x2, [fp, #-0x80]
    // 0x76b694: r0 = AVa()
    //     0x76b694: bl              #0x76b778  ; AllocateAVaStub -> AVa (size=0x10)
    // 0x76b698: ldur            x1, [fp, #-0x80]
    // 0x76b69c: StoreField: r0->field_b = r1
    //     0x76b69c: stur            w1, [x0, #0xb]
    // 0x76b6a0: ldur            x4, [fp, #-0x78]
    // 0x76b6a4: r3 = LoadInt32Instr(r4)
    //     0x76b6a4: sbfx            x3, x4, #1, #0x1f
    //     0x76b6a8: tbz             w4, #0, #0x76b6b0
    //     0x76b6ac: ldur            x3, [x4, #7]
    // 0x76b6b0: mov             x2, x0
    // 0x76b6b4: r0 = call 0x392f90
    //     0x76b6b4: bl              #0x392f90
    // 0x76b6b8: r16 = true
    //     0x76b6b8: add             x16, NULL, #0x20  ; true
    // 0x76b6bc: str             x16, [SP]
    // 0x76b6c0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76b6c0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76b6c4: ldr             x4, [x4, #0x870]
    // 0x76b6c8: r0 = call 0x392d98
    //     0x76b6c8: bl              #0x392d98
    // 0x76b6cc: r0 = ReturnAsyncNotFuture()
    //     0x76b6cc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b6d0: sub             SP, fp, #0x90
    // 0x76b6d4: r1 = 60
    //     0x76b6d4: movz            x1, #0x3c
    // 0x76b6d8: branchIfSmi(r0, 0x76b6e4)
    //     0x76b6d8: tbz             w0, #0, #0x76b6e4
    // 0x76b6dc: r1 = LoadClassIdInstr(r0)
    //     0x76b6dc: ldur            x1, [x0, #-1]
    //     0x76b6e0: ubfx            x1, x1, #0xc, #0x14
    // 0x76b6e4: cmp             x1, #0x5e5
    // 0x76b6e8: b.ne            #0x76b700
    // 0x76b6ec: str             x0, [SP]
    // 0x76b6f0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76b6f0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76b6f4: ldr             x4, [x4, #0x878]
    // 0x76b6f8: r0 = call 0x392d98
    //     0x76b6f8: bl              #0x392d98
    // 0x76b6fc: r0 = ReturnAsyncNotFuture()
    //     0x76b6fc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b700: r1 = 60
    //     0x76b700: movz            x1, #0x3c
    // 0x76b704: branchIfSmi(r0, 0x76b710)
    //     0x76b704: tbz             w0, #0, #0x76b710
    // 0x76b708: r1 = LoadClassIdInstr(r0)
    //     0x76b708: ldur            x1, [x0, #-1]
    //     0x76b70c: ubfx            x1, x1, #0xc, #0x14
    // 0x76b710: str             x0, [SP]
    // 0x76b714: mov             x0, x1
    // 0x76b718: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76b718: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76b71c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76b71c: movz            x17, #0x3a5d
    //     0x76b720: add             lr, x0, x17
    //     0x76b724: ldr             lr, [x21, lr, lsl #3]
    //     0x76b728: blr             lr
    // 0x76b72c: stur            x0, [fp, #-0x70]
    // 0x76b730: r0 = Mha()
    //     0x76b730: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76b734: mov             x1, x0
    // 0x76b738: r0 = "error"
    //     0x76b738: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76b73c: StoreField: r1->field_7 = r0
    //     0x76b73c: stur            w0, [x1, #7]
    // 0x76b740: ldur            x0, [fp, #-0x70]
    // 0x76b744: StoreField: r1->field_b = r0
    //     0x76b744: stur            w0, [x1, #0xb]
    // 0x76b748: str             x1, [SP]
    // 0x76b74c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76b74c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76b750: ldr             x4, [x4, #0x878]
    // 0x76b754: r0 = call 0x392d98
    //     0x76b754: bl              #0x392d98
    // 0x76b758: r0 = ReturnAsyncNotFuture()
    //     0x76b758: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b75c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76b75c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76b760: b               #0x76b5cc
    // 0x76b764: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76b764: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76b768: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76b768: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 372, size: 0x10, field offset: 0x10
class zVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76b7a8, size: 0x1e0
    // 0x76b7a8: EnterFrame
    //     0x76b7a8: stp             fp, lr, [SP, #-0x10]!
    //     0x76b7ac: mov             fp, SP
    // 0x76b7b0: AllocStack(0x90)
    //     0x76b7b0: sub             SP, SP, #0x90
    // 0x76b7b4: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76b7b4: stur            NULL, [fp, #-8]
    //     0x76b7b8: movz            x0, #0
    //     0x76b7bc: add             x1, fp, w0, sxtw #2
    //     0x76b7c0: ldr             x1, [x1, #0x18]
    //     0x76b7c4: add             x2, fp, w0, sxtw #2
    //     0x76b7c8: ldr             x2, [x2, #0x10]
    //     0x76b7cc: stur            x2, [fp, #-0x78]
    //     0x76b7d0: ldur            w3, [x1, #0x17]
    //     0x76b7d4: add             x3, x3, HEAP, lsl #32
    //     0x76b7d8: stur            x3, [fp, #-0x70]
    // 0x76b7dc: CheckStackOverflow
    //     0x76b7dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76b7e0: cmp             SP, x16
    //     0x76b7e4: b.ls            #0x76b978
    // 0x76b7e8: InitAsync() -> Future<List<Object?>>
    //     0x76b7e8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76b7ec: ldr             x0, [x0, #0x1d0]
    //     0x76b7f0: bl              #0x74ada8  ; InitAsyncStub
    // 0x76b7f4: ldur            x3, [fp, #-0x78]
    // 0x76b7f8: cmp             w3, NULL
    // 0x76b7fc: b.eq            #0x76b980
    // 0x76b800: mov             x0, x3
    // 0x76b804: r2 = Null
    //     0x76b804: mov             x2, NULL
    // 0x76b808: r1 = Null
    //     0x76b808: mov             x1, NULL
    // 0x76b80c: r4 = 60
    //     0x76b80c: movz            x4, #0x3c
    // 0x76b810: branchIfSmi(r0, 0x76b81c)
    //     0x76b810: tbz             w0, #0, #0x76b81c
    // 0x76b814: r4 = LoadClassIdInstr(r0)
    //     0x76b814: ldur            x4, [x0, #-1]
    //     0x76b818: ubfx            x4, x4, #0xc, #0x14
    // 0x76b81c: sub             x4, x4, #0x5a
    // 0x76b820: cmp             x4, #2
    // 0x76b824: b.ls            #0x76b838
    // 0x76b828: r8 = List<Object?>
    //     0x76b828: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76b82c: r3 = Null
    //     0x76b82c: add             x3, PP, #0x19, lsl #12  ; [pp+0x198a0] Null
    //     0x76b830: ldr             x3, [x3, #0x8a0]
    // 0x76b834: r0 = List<Object?>()
    //     0x76b834: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76b838: ldur            x0, [fp, #-0x78]
    // 0x76b83c: r1 = LoadClassIdInstr(r0)
    //     0x76b83c: ldur            x1, [x0, #-1]
    //     0x76b840: ubfx            x1, x1, #0xc, #0x14
    // 0x76b844: stp             xzr, x0, [SP]
    // 0x76b848: mov             x0, x1
    // 0x76b84c: mov             lr, x0
    // 0x76b850: ldr             lr, [x21, lr, lsl #3]
    // 0x76b854: blr             lr
    // 0x76b858: mov             x3, x0
    // 0x76b85c: stur            x3, [fp, #-0x78]
    // 0x76b860: cmp             w3, NULL
    // 0x76b864: b.eq            #0x76b984
    // 0x76b868: r3 as int
    //     0x76b868: mov             x0, x3
    //     0x76b86c: mov             x2, NULL
    //     0x76b870: mov             x1, NULL
    //     0x76b874: tbz             w0, #0, #0x76b89c
    //     0x76b878: ldur            x4, [x0, #-1]
    //     0x76b87c: ubfx            x4, x4, #0xc, #0x14
    //     0x76b880: sub             x4, x4, #0x3c
    //     0x76b884: cmp             x4, #1
    //     0x76b888: b.ls            #0x76b89c
    //     0x76b88c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76b890: add             x3, PP, #0x19, lsl #12  ; [pp+0x198b0] Null
    //     0x76b894: ldr             x3, [x3, #0x8b0]
    //     0x76b898: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76b89c: ldur            x1, [fp, #-0x70]
    // 0x76b8a0: ldur            x0, [fp, #-0x78]
    // 0x76b8a4: LoadField: r2 = r1->field_f
    //     0x76b8a4: ldur            w2, [x1, #0xf]
    // 0x76b8a8: DecompressPointer r2
    //     0x76b8a8: add             x2, x2, HEAP, lsl #32
    // 0x76b8ac: stur            x2, [fp, #-0x80]
    // 0x76b8b0: r0 = zVa()
    //     0x76b8b0: bl              #0x76b988  ; AllocatezVaStub -> zVa (size=0x10)
    // 0x76b8b4: ldur            x1, [fp, #-0x80]
    // 0x76b8b8: StoreField: r0->field_b = r1
    //     0x76b8b8: stur            w1, [x0, #0xb]
    // 0x76b8bc: ldur            x4, [fp, #-0x78]
    // 0x76b8c0: r3 = LoadInt32Instr(r4)
    //     0x76b8c0: sbfx            x3, x4, #1, #0x1f
    //     0x76b8c4: tbz             w4, #0, #0x76b8cc
    //     0x76b8c8: ldur            x3, [x4, #7]
    // 0x76b8cc: mov             x2, x0
    // 0x76b8d0: r0 = call 0x392f90
    //     0x76b8d0: bl              #0x392f90
    // 0x76b8d4: r16 = true
    //     0x76b8d4: add             x16, NULL, #0x20  ; true
    // 0x76b8d8: str             x16, [SP]
    // 0x76b8dc: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76b8dc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76b8e0: ldr             x4, [x4, #0x870]
    // 0x76b8e4: r0 = call 0x392d98
    //     0x76b8e4: bl              #0x392d98
    // 0x76b8e8: r0 = ReturnAsyncNotFuture()
    //     0x76b8e8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b8ec: sub             SP, fp, #0x90
    // 0x76b8f0: r1 = 60
    //     0x76b8f0: movz            x1, #0x3c
    // 0x76b8f4: branchIfSmi(r0, 0x76b900)
    //     0x76b8f4: tbz             w0, #0, #0x76b900
    // 0x76b8f8: r1 = LoadClassIdInstr(r0)
    //     0x76b8f8: ldur            x1, [x0, #-1]
    //     0x76b8fc: ubfx            x1, x1, #0xc, #0x14
    // 0x76b900: cmp             x1, #0x5e5
    // 0x76b904: b.ne            #0x76b91c
    // 0x76b908: str             x0, [SP]
    // 0x76b90c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76b90c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76b910: ldr             x4, [x4, #0x878]
    // 0x76b914: r0 = call 0x392d98
    //     0x76b914: bl              #0x392d98
    // 0x76b918: r0 = ReturnAsyncNotFuture()
    //     0x76b918: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b91c: r1 = 60
    //     0x76b91c: movz            x1, #0x3c
    // 0x76b920: branchIfSmi(r0, 0x76b92c)
    //     0x76b920: tbz             w0, #0, #0x76b92c
    // 0x76b924: r1 = LoadClassIdInstr(r0)
    //     0x76b924: ldur            x1, [x0, #-1]
    //     0x76b928: ubfx            x1, x1, #0xc, #0x14
    // 0x76b92c: str             x0, [SP]
    // 0x76b930: mov             x0, x1
    // 0x76b934: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76b934: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76b938: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76b938: movz            x17, #0x3a5d
    //     0x76b93c: add             lr, x0, x17
    //     0x76b940: ldr             lr, [x21, lr, lsl #3]
    //     0x76b944: blr             lr
    // 0x76b948: stur            x0, [fp, #-0x70]
    // 0x76b94c: r0 = Mha()
    //     0x76b94c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76b950: mov             x1, x0
    // 0x76b954: r0 = "error"
    //     0x76b954: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76b958: StoreField: r1->field_7 = r0
    //     0x76b958: stur            w0, [x1, #7]
    // 0x76b95c: ldur            x0, [fp, #-0x70]
    // 0x76b960: StoreField: r1->field_b = r0
    //     0x76b960: stur            w0, [x1, #0xb]
    // 0x76b964: str             x1, [SP]
    // 0x76b968: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76b968: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76b96c: ldr             x4, [x4, #0x878]
    // 0x76b970: r0 = call 0x392d98
    //     0x76b970: bl              #0x392d98
    // 0x76b974: r0 = ReturnAsyncNotFuture()
    //     0x76b974: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76b978: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76b978: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76b97c: b               #0x76b7e8
    // 0x76b980: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76b980: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76b984: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76b984: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 373, size: 0x10, field offset: 0x10
class yVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76bb80, size: 0x1e0
    // 0x76bb80: EnterFrame
    //     0x76bb80: stp             fp, lr, [SP, #-0x10]!
    //     0x76bb84: mov             fp, SP
    // 0x76bb88: AllocStack(0x90)
    //     0x76bb88: sub             SP, SP, #0x90
    // 0x76bb8c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76bb8c: stur            NULL, [fp, #-8]
    //     0x76bb90: movz            x0, #0
    //     0x76bb94: add             x1, fp, w0, sxtw #2
    //     0x76bb98: ldr             x1, [x1, #0x18]
    //     0x76bb9c: add             x2, fp, w0, sxtw #2
    //     0x76bba0: ldr             x2, [x2, #0x10]
    //     0x76bba4: stur            x2, [fp, #-0x78]
    //     0x76bba8: ldur            w3, [x1, #0x17]
    //     0x76bbac: add             x3, x3, HEAP, lsl #32
    //     0x76bbb0: stur            x3, [fp, #-0x70]
    // 0x76bbb4: CheckStackOverflow
    //     0x76bbb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76bbb8: cmp             SP, x16
    //     0x76bbbc: b.ls            #0x76bd50
    // 0x76bbc0: InitAsync() -> Future<List<Object?>>
    //     0x76bbc0: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76bbc4: ldr             x0, [x0, #0x1d0]
    //     0x76bbc8: bl              #0x74ada8  ; InitAsyncStub
    // 0x76bbcc: ldur            x3, [fp, #-0x78]
    // 0x76bbd0: cmp             w3, NULL
    // 0x76bbd4: b.eq            #0x76bd58
    // 0x76bbd8: mov             x0, x3
    // 0x76bbdc: r2 = Null
    //     0x76bbdc: mov             x2, NULL
    // 0x76bbe0: r1 = Null
    //     0x76bbe0: mov             x1, NULL
    // 0x76bbe4: r4 = 60
    //     0x76bbe4: movz            x4, #0x3c
    // 0x76bbe8: branchIfSmi(r0, 0x76bbf4)
    //     0x76bbe8: tbz             w0, #0, #0x76bbf4
    // 0x76bbec: r4 = LoadClassIdInstr(r0)
    //     0x76bbec: ldur            x4, [x0, #-1]
    //     0x76bbf0: ubfx            x4, x4, #0xc, #0x14
    // 0x76bbf4: sub             x4, x4, #0x5a
    // 0x76bbf8: cmp             x4, #2
    // 0x76bbfc: b.ls            #0x76bc10
    // 0x76bc00: r8 = List<Object?>
    //     0x76bc00: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76bc04: r3 = Null
    //     0x76bc04: add             x3, PP, #0x19, lsl #12  ; [pp+0x19900] Null
    //     0x76bc08: ldr             x3, [x3, #0x900]
    // 0x76bc0c: r0 = List<Object?>()
    //     0x76bc0c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76bc10: ldur            x0, [fp, #-0x78]
    // 0x76bc14: r1 = LoadClassIdInstr(r0)
    //     0x76bc14: ldur            x1, [x0, #-1]
    //     0x76bc18: ubfx            x1, x1, #0xc, #0x14
    // 0x76bc1c: stp             xzr, x0, [SP]
    // 0x76bc20: mov             x0, x1
    // 0x76bc24: mov             lr, x0
    // 0x76bc28: ldr             lr, [x21, lr, lsl #3]
    // 0x76bc2c: blr             lr
    // 0x76bc30: mov             x3, x0
    // 0x76bc34: stur            x3, [fp, #-0x78]
    // 0x76bc38: cmp             w3, NULL
    // 0x76bc3c: b.eq            #0x76bd5c
    // 0x76bc40: r3 as int
    //     0x76bc40: mov             x0, x3
    //     0x76bc44: mov             x2, NULL
    //     0x76bc48: mov             x1, NULL
    //     0x76bc4c: tbz             w0, #0, #0x76bc74
    //     0x76bc50: ldur            x4, [x0, #-1]
    //     0x76bc54: ubfx            x4, x4, #0xc, #0x14
    //     0x76bc58: sub             x4, x4, #0x3c
    //     0x76bc5c: cmp             x4, #1
    //     0x76bc60: b.ls            #0x76bc74
    //     0x76bc64: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76bc68: add             x3, PP, #0x19, lsl #12  ; [pp+0x19910] Null
    //     0x76bc6c: ldr             x3, [x3, #0x910]
    //     0x76bc70: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76bc74: ldur            x1, [fp, #-0x70]
    // 0x76bc78: ldur            x0, [fp, #-0x78]
    // 0x76bc7c: LoadField: r2 = r1->field_f
    //     0x76bc7c: ldur            w2, [x1, #0xf]
    // 0x76bc80: DecompressPointer r2
    //     0x76bc80: add             x2, x2, HEAP, lsl #32
    // 0x76bc84: stur            x2, [fp, #-0x80]
    // 0x76bc88: r0 = yVa()
    //     0x76bc88: bl              #0x76bd60  ; AllocateyVaStub -> yVa (size=0x10)
    // 0x76bc8c: ldur            x1, [fp, #-0x80]
    // 0x76bc90: StoreField: r0->field_b = r1
    //     0x76bc90: stur            w1, [x0, #0xb]
    // 0x76bc94: ldur            x4, [fp, #-0x78]
    // 0x76bc98: r3 = LoadInt32Instr(r4)
    //     0x76bc98: sbfx            x3, x4, #1, #0x1f
    //     0x76bc9c: tbz             w4, #0, #0x76bca4
    //     0x76bca0: ldur            x3, [x4, #7]
    // 0x76bca4: mov             x2, x0
    // 0x76bca8: r0 = call 0x392f90
    //     0x76bca8: bl              #0x392f90
    // 0x76bcac: r16 = true
    //     0x76bcac: add             x16, NULL, #0x20  ; true
    // 0x76bcb0: str             x16, [SP]
    // 0x76bcb4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76bcb4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76bcb8: ldr             x4, [x4, #0x870]
    // 0x76bcbc: r0 = call 0x392d98
    //     0x76bcbc: bl              #0x392d98
    // 0x76bcc0: r0 = ReturnAsyncNotFuture()
    //     0x76bcc0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bcc4: sub             SP, fp, #0x90
    // 0x76bcc8: r1 = 60
    //     0x76bcc8: movz            x1, #0x3c
    // 0x76bccc: branchIfSmi(r0, 0x76bcd8)
    //     0x76bccc: tbz             w0, #0, #0x76bcd8
    // 0x76bcd0: r1 = LoadClassIdInstr(r0)
    //     0x76bcd0: ldur            x1, [x0, #-1]
    //     0x76bcd4: ubfx            x1, x1, #0xc, #0x14
    // 0x76bcd8: cmp             x1, #0x5e5
    // 0x76bcdc: b.ne            #0x76bcf4
    // 0x76bce0: str             x0, [SP]
    // 0x76bce4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76bce4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bce8: ldr             x4, [x4, #0x878]
    // 0x76bcec: r0 = call 0x392d98
    //     0x76bcec: bl              #0x392d98
    // 0x76bcf0: r0 = ReturnAsyncNotFuture()
    //     0x76bcf0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bcf4: r1 = 60
    //     0x76bcf4: movz            x1, #0x3c
    // 0x76bcf8: branchIfSmi(r0, 0x76bd04)
    //     0x76bcf8: tbz             w0, #0, #0x76bd04
    // 0x76bcfc: r1 = LoadClassIdInstr(r0)
    //     0x76bcfc: ldur            x1, [x0, #-1]
    //     0x76bd00: ubfx            x1, x1, #0xc, #0x14
    // 0x76bd04: str             x0, [SP]
    // 0x76bd08: mov             x0, x1
    // 0x76bd0c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76bd0c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76bd10: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76bd10: movz            x17, #0x3a5d
    //     0x76bd14: add             lr, x0, x17
    //     0x76bd18: ldr             lr, [x21, lr, lsl #3]
    //     0x76bd1c: blr             lr
    // 0x76bd20: stur            x0, [fp, #-0x70]
    // 0x76bd24: r0 = Mha()
    //     0x76bd24: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76bd28: mov             x1, x0
    // 0x76bd2c: r0 = "error"
    //     0x76bd2c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76bd30: StoreField: r1->field_7 = r0
    //     0x76bd30: stur            w0, [x1, #7]
    // 0x76bd34: ldur            x0, [fp, #-0x70]
    // 0x76bd38: StoreField: r1->field_b = r0
    //     0x76bd38: stur            w0, [x1, #0xb]
    // 0x76bd3c: str             x1, [SP]
    // 0x76bd40: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76bd40: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bd44: ldr             x4, [x4, #0x878]
    // 0x76bd48: r0 = call 0x392d98
    //     0x76bd48: bl              #0x392d98
    // 0x76bd4c: r0 = ReturnAsyncNotFuture()
    //     0x76bd4c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bd50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76bd50: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76bd54: b               #0x76bbc0
    // 0x76bd58: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bd58: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76bd5c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bd5c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 374, size: 0x10, field offset: 0x10
class xVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76bd6c, size: 0x1e0
    // 0x76bd6c: EnterFrame
    //     0x76bd6c: stp             fp, lr, [SP, #-0x10]!
    //     0x76bd70: mov             fp, SP
    // 0x76bd74: AllocStack(0x90)
    //     0x76bd74: sub             SP, SP, #0x90
    // 0x76bd78: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76bd78: stur            NULL, [fp, #-8]
    //     0x76bd7c: movz            x0, #0
    //     0x76bd80: add             x1, fp, w0, sxtw #2
    //     0x76bd84: ldr             x1, [x1, #0x18]
    //     0x76bd88: add             x2, fp, w0, sxtw #2
    //     0x76bd8c: ldr             x2, [x2, #0x10]
    //     0x76bd90: stur            x2, [fp, #-0x78]
    //     0x76bd94: ldur            w3, [x1, #0x17]
    //     0x76bd98: add             x3, x3, HEAP, lsl #32
    //     0x76bd9c: stur            x3, [fp, #-0x70]
    // 0x76bda0: CheckStackOverflow
    //     0x76bda0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76bda4: cmp             SP, x16
    //     0x76bda8: b.ls            #0x76bf3c
    // 0x76bdac: InitAsync() -> Future<List<Object?>>
    //     0x76bdac: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76bdb0: ldr             x0, [x0, #0x1d0]
    //     0x76bdb4: bl              #0x74ada8  ; InitAsyncStub
    // 0x76bdb8: ldur            x3, [fp, #-0x78]
    // 0x76bdbc: cmp             w3, NULL
    // 0x76bdc0: b.eq            #0x76bf44
    // 0x76bdc4: mov             x0, x3
    // 0x76bdc8: r2 = Null
    //     0x76bdc8: mov             x2, NULL
    // 0x76bdcc: r1 = Null
    //     0x76bdcc: mov             x1, NULL
    // 0x76bdd0: r4 = 60
    //     0x76bdd0: movz            x4, #0x3c
    // 0x76bdd4: branchIfSmi(r0, 0x76bde0)
    //     0x76bdd4: tbz             w0, #0, #0x76bde0
    // 0x76bdd8: r4 = LoadClassIdInstr(r0)
    //     0x76bdd8: ldur            x4, [x0, #-1]
    //     0x76bddc: ubfx            x4, x4, #0xc, #0x14
    // 0x76bde0: sub             x4, x4, #0x5a
    // 0x76bde4: cmp             x4, #2
    // 0x76bde8: b.ls            #0x76bdfc
    // 0x76bdec: r8 = List<Object?>
    //     0x76bdec: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76bdf0: r3 = Null
    //     0x76bdf0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19930] Null
    //     0x76bdf4: ldr             x3, [x3, #0x930]
    // 0x76bdf8: r0 = List<Object?>()
    //     0x76bdf8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76bdfc: ldur            x0, [fp, #-0x78]
    // 0x76be00: r1 = LoadClassIdInstr(r0)
    //     0x76be00: ldur            x1, [x0, #-1]
    //     0x76be04: ubfx            x1, x1, #0xc, #0x14
    // 0x76be08: stp             xzr, x0, [SP]
    // 0x76be0c: mov             x0, x1
    // 0x76be10: mov             lr, x0
    // 0x76be14: ldr             lr, [x21, lr, lsl #3]
    // 0x76be18: blr             lr
    // 0x76be1c: mov             x3, x0
    // 0x76be20: stur            x3, [fp, #-0x78]
    // 0x76be24: cmp             w3, NULL
    // 0x76be28: b.eq            #0x76bf48
    // 0x76be2c: r3 as int
    //     0x76be2c: mov             x0, x3
    //     0x76be30: mov             x2, NULL
    //     0x76be34: mov             x1, NULL
    //     0x76be38: tbz             w0, #0, #0x76be60
    //     0x76be3c: ldur            x4, [x0, #-1]
    //     0x76be40: ubfx            x4, x4, #0xc, #0x14
    //     0x76be44: sub             x4, x4, #0x3c
    //     0x76be48: cmp             x4, #1
    //     0x76be4c: b.ls            #0x76be60
    //     0x76be50: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76be54: add             x3, PP, #0x19, lsl #12  ; [pp+0x19940] Null
    //     0x76be58: ldr             x3, [x3, #0x940]
    //     0x76be5c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76be60: ldur            x1, [fp, #-0x70]
    // 0x76be64: ldur            x0, [fp, #-0x78]
    // 0x76be68: LoadField: r2 = r1->field_f
    //     0x76be68: ldur            w2, [x1, #0xf]
    // 0x76be6c: DecompressPointer r2
    //     0x76be6c: add             x2, x2, HEAP, lsl #32
    // 0x76be70: stur            x2, [fp, #-0x80]
    // 0x76be74: r0 = xVa()
    //     0x76be74: bl              #0x76bf4c  ; AllocatexVaStub -> xVa (size=0x10)
    // 0x76be78: ldur            x1, [fp, #-0x80]
    // 0x76be7c: StoreField: r0->field_b = r1
    //     0x76be7c: stur            w1, [x0, #0xb]
    // 0x76be80: ldur            x4, [fp, #-0x78]
    // 0x76be84: r3 = LoadInt32Instr(r4)
    //     0x76be84: sbfx            x3, x4, #1, #0x1f
    //     0x76be88: tbz             w4, #0, #0x76be90
    //     0x76be8c: ldur            x3, [x4, #7]
    // 0x76be90: mov             x2, x0
    // 0x76be94: r0 = call 0x392f90
    //     0x76be94: bl              #0x392f90
    // 0x76be98: r16 = true
    //     0x76be98: add             x16, NULL, #0x20  ; true
    // 0x76be9c: str             x16, [SP]
    // 0x76bea0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76bea0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76bea4: ldr             x4, [x4, #0x870]
    // 0x76bea8: r0 = call 0x392d98
    //     0x76bea8: bl              #0x392d98
    // 0x76beac: r0 = ReturnAsyncNotFuture()
    //     0x76beac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76beb0: sub             SP, fp, #0x90
    // 0x76beb4: r1 = 60
    //     0x76beb4: movz            x1, #0x3c
    // 0x76beb8: branchIfSmi(r0, 0x76bec4)
    //     0x76beb8: tbz             w0, #0, #0x76bec4
    // 0x76bebc: r1 = LoadClassIdInstr(r0)
    //     0x76bebc: ldur            x1, [x0, #-1]
    //     0x76bec0: ubfx            x1, x1, #0xc, #0x14
    // 0x76bec4: cmp             x1, #0x5e5
    // 0x76bec8: b.ne            #0x76bee0
    // 0x76becc: str             x0, [SP]
    // 0x76bed0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76bed0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bed4: ldr             x4, [x4, #0x878]
    // 0x76bed8: r0 = call 0x392d98
    //     0x76bed8: bl              #0x392d98
    // 0x76bedc: r0 = ReturnAsyncNotFuture()
    //     0x76bedc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bee0: r1 = 60
    //     0x76bee0: movz            x1, #0x3c
    // 0x76bee4: branchIfSmi(r0, 0x76bef0)
    //     0x76bee4: tbz             w0, #0, #0x76bef0
    // 0x76bee8: r1 = LoadClassIdInstr(r0)
    //     0x76bee8: ldur            x1, [x0, #-1]
    //     0x76beec: ubfx            x1, x1, #0xc, #0x14
    // 0x76bef0: str             x0, [SP]
    // 0x76bef4: mov             x0, x1
    // 0x76bef8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76bef8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76befc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76befc: movz            x17, #0x3a5d
    //     0x76bf00: add             lr, x0, x17
    //     0x76bf04: ldr             lr, [x21, lr, lsl #3]
    //     0x76bf08: blr             lr
    // 0x76bf0c: stur            x0, [fp, #-0x70]
    // 0x76bf10: r0 = Mha()
    //     0x76bf10: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76bf14: mov             x1, x0
    // 0x76bf18: r0 = "error"
    //     0x76bf18: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76bf1c: StoreField: r1->field_7 = r0
    //     0x76bf1c: stur            w0, [x1, #7]
    // 0x76bf20: ldur            x0, [fp, #-0x70]
    // 0x76bf24: StoreField: r1->field_b = r0
    //     0x76bf24: stur            w0, [x1, #0xb]
    // 0x76bf28: str             x1, [SP]
    // 0x76bf2c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76bf2c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bf30: ldr             x4, [x4, #0x878]
    // 0x76bf34: r0 = call 0x392d98
    //     0x76bf34: bl              #0x392d98
    // 0x76bf38: r0 = ReturnAsyncNotFuture()
    //     0x76bf38: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bf3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76bf3c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76bf40: b               #0x76bdac
    // 0x76bf44: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bf44: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76bf48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bf48: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 375, size: 0x18, field offset: 0x10
class wVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76bf58, size: 0x2dc
    // 0x76bf58: EnterFrame
    //     0x76bf58: stp             fp, lr, [SP, #-0x10]!
    //     0x76bf5c: mov             fp, SP
    // 0x76bf60: AllocStack(0xb0)
    //     0x76bf60: sub             SP, SP, #0xb0
    // 0x76bf64: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x76bf64: stur            NULL, [fp, #-8]
    //     0x76bf68: movz            x0, #0
    //     0x76bf6c: add             x1, fp, w0, sxtw #2
    //     0x76bf70: ldr             x1, [x1, #0x18]
    //     0x76bf74: add             x2, fp, w0, sxtw #2
    //     0x76bf78: ldr             x2, [x2, #0x10]
    //     0x76bf7c: stur            x2, [fp, #-0x88]
    //     0x76bf80: ldur            w3, [x1, #0x17]
    //     0x76bf84: add             x3, x3, HEAP, lsl #32
    //     0x76bf88: stur            x3, [fp, #-0x80]
    // 0x76bf8c: CheckStackOverflow
    //     0x76bf8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76bf90: cmp             SP, x16
    //     0x76bf94: b.ls            #0x76c21c
    // 0x76bf98: InitAsync() -> Future<List<Object?>>
    //     0x76bf98: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76bf9c: ldr             x0, [x0, #0x1d0]
    //     0x76bfa0: bl              #0x74ada8  ; InitAsyncStub
    // 0x76bfa4: ldur            x3, [fp, #-0x88]
    // 0x76bfa8: cmp             w3, NULL
    // 0x76bfac: b.eq            #0x76c224
    // 0x76bfb0: mov             x0, x3
    // 0x76bfb4: r2 = Null
    //     0x76bfb4: mov             x2, NULL
    // 0x76bfb8: r1 = Null
    //     0x76bfb8: mov             x1, NULL
    // 0x76bfbc: r4 = 60
    //     0x76bfbc: movz            x4, #0x3c
    // 0x76bfc0: branchIfSmi(r0, 0x76bfcc)
    //     0x76bfc0: tbz             w0, #0, #0x76bfcc
    // 0x76bfc4: r4 = LoadClassIdInstr(r0)
    //     0x76bfc4: ldur            x4, [x0, #-1]
    //     0x76bfc8: ubfx            x4, x4, #0xc, #0x14
    // 0x76bfcc: sub             x4, x4, #0x5a
    // 0x76bfd0: cmp             x4, #2
    // 0x76bfd4: b.ls            #0x76bfe8
    // 0x76bfd8: r8 = List<Object?>
    //     0x76bfd8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76bfdc: r3 = Null
    //     0x76bfdc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19960] Null
    //     0x76bfe0: ldr             x3, [x3, #0x960]
    // 0x76bfe4: r0 = List<Object?>()
    //     0x76bfe4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76bfe8: ldur            x1, [fp, #-0x88]
    // 0x76bfec: r0 = LoadClassIdInstr(r1)
    //     0x76bfec: ldur            x0, [x1, #-1]
    //     0x76bff0: ubfx            x0, x0, #0xc, #0x14
    // 0x76bff4: stp             xzr, x1, [SP]
    // 0x76bff8: mov             lr, x0
    // 0x76bffc: ldr             lr, [x21, lr, lsl #3]
    // 0x76c000: blr             lr
    // 0x76c004: mov             x3, x0
    // 0x76c008: stur            x3, [fp, #-0x90]
    // 0x76c00c: cmp             w3, NULL
    // 0x76c010: b.eq            #0x76c228
    // 0x76c014: r3 as int
    //     0x76c014: mov             x0, x3
    //     0x76c018: mov             x2, NULL
    //     0x76c01c: mov             x1, NULL
    //     0x76c020: tbz             w0, #0, #0x76c048
    //     0x76c024: ldur            x4, [x0, #-1]
    //     0x76c028: ubfx            x4, x4, #0xc, #0x14
    //     0x76c02c: sub             x4, x4, #0x3c
    //     0x76c030: cmp             x4, #1
    //     0x76c034: b.ls            #0x76c048
    //     0x76c038: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76c03c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19970] Null
    //     0x76c040: ldr             x3, [x3, #0x970]
    //     0x76c044: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76c048: ldur            x1, [fp, #-0x88]
    // 0x76c04c: r0 = LoadClassIdInstr(r1)
    //     0x76c04c: ldur            x0, [x1, #-1]
    //     0x76c050: ubfx            x0, x0, #0xc, #0x14
    // 0x76c054: r16 = 2
    //     0x76c054: movz            x16, #0x2
    // 0x76c058: stp             x16, x1, [SP]
    // 0x76c05c: mov             lr, x0
    // 0x76c060: ldr             lr, [x21, lr, lsl #3]
    // 0x76c064: blr             lr
    // 0x76c068: mov             x3, x0
    // 0x76c06c: stur            x3, [fp, #-0x98]
    // 0x76c070: cmp             w3, NULL
    // 0x76c074: b.eq            #0x76c22c
    // 0x76c078: mov             x0, x3
    // 0x76c07c: r2 = Null
    //     0x76c07c: mov             x2, NULL
    // 0x76c080: r1 = Null
    //     0x76c080: mov             x1, NULL
    // 0x76c084: r4 = 60
    //     0x76c084: movz            x4, #0x3c
    // 0x76c088: branchIfSmi(r0, 0x76c094)
    //     0x76c088: tbz             w0, #0, #0x76c094
    // 0x76c08c: r4 = LoadClassIdInstr(r0)
    //     0x76c08c: ldur            x4, [x0, #-1]
    //     0x76c090: ubfx            x4, x4, #0xc, #0x14
    // 0x76c094: cmp             x4, #0x175
    // 0x76c098: b.eq            #0x76c0b0
    // 0x76c09c: r8 = yVa
    //     0x76c09c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19980] Type: yVa
    //     0x76c0a0: ldr             x8, [x8, #0x980]
    // 0x76c0a4: r3 = Null
    //     0x76c0a4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19988] Null
    //     0x76c0a8: ldr             x3, [x3, #0x988]
    // 0x76c0ac: r0 = DefaultTypeTest()
    //     0x76c0ac: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76c0b0: ldur            x0, [fp, #-0x88]
    // 0x76c0b4: r1 = LoadClassIdInstr(r0)
    //     0x76c0b4: ldur            x1, [x0, #-1]
    //     0x76c0b8: ubfx            x1, x1, #0xc, #0x14
    // 0x76c0bc: r16 = 4
    //     0x76c0bc: movz            x16, #0x4
    // 0x76c0c0: stp             x16, x0, [SP]
    // 0x76c0c4: mov             x0, x1
    // 0x76c0c8: mov             lr, x0
    // 0x76c0cc: ldr             lr, [x21, lr, lsl #3]
    // 0x76c0d0: blr             lr
    // 0x76c0d4: mov             x3, x0
    // 0x76c0d8: stur            x3, [fp, #-0x88]
    // 0x76c0dc: cmp             w3, NULL
    // 0x76c0e0: b.eq            #0x76c230
    // 0x76c0e4: mov             x0, x3
    // 0x76c0e8: r2 = Null
    //     0x76c0e8: mov             x2, NULL
    // 0x76c0ec: r1 = Null
    //     0x76c0ec: mov             x1, NULL
    // 0x76c0f0: r4 = 60
    //     0x76c0f0: movz            x4, #0x3c
    // 0x76c0f4: branchIfSmi(r0, 0x76c100)
    //     0x76c0f4: tbz             w0, #0, #0x76c100
    // 0x76c0f8: r4 = LoadClassIdInstr(r0)
    //     0x76c0f8: ldur            x4, [x0, #-1]
    //     0x76c0fc: ubfx            x4, x4, #0xc, #0x14
    // 0x76c100: sub             x4, x4, #0x5e
    // 0x76c104: cmp             x4, #1
    // 0x76c108: b.ls            #0x76c11c
    // 0x76c10c: r8 = String
    //     0x76c10c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76c110: r3 = Null
    //     0x76c110: add             x3, PP, #0x19, lsl #12  ; [pp+0x19998] Null
    //     0x76c114: ldr             x3, [x3, #0x998]
    // 0x76c118: r0 = String()
    //     0x76c118: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76c11c: ldur            x3, [fp, #-0x80]
    // 0x76c120: ldur            x2, [fp, #-0x90]
    // 0x76c124: ldur            x1, [fp, #-0x98]
    // 0x76c128: ldur            x0, [fp, #-0x88]
    // 0x76c12c: LoadField: r4 = r3->field_f
    //     0x76c12c: ldur            w4, [x3, #0xf]
    // 0x76c130: DecompressPointer r4
    //     0x76c130: add             x4, x4, HEAP, lsl #32
    // 0x76c134: stur            x4, [fp, #-0xa0]
    // 0x76c138: r0 = wVa()
    //     0x76c138: bl              #0x76c234  ; AllocatewVaStub -> wVa (size=0x18)
    // 0x76c13c: mov             x1, x0
    // 0x76c140: ldur            x0, [fp, #-0x98]
    // 0x76c144: StoreField: r1->field_f = r0
    //     0x76c144: stur            w0, [x1, #0xf]
    // 0x76c148: ldur            x4, [fp, #-0x88]
    // 0x76c14c: StoreField: r1->field_13 = r4
    //     0x76c14c: stur            w4, [x1, #0x13]
    // 0x76c150: ldur            x2, [fp, #-0xa0]
    // 0x76c154: StoreField: r1->field_b = r2
    //     0x76c154: stur            w2, [x1, #0xb]
    // 0x76c158: ldur            x5, [fp, #-0x90]
    // 0x76c15c: r3 = LoadInt32Instr(r5)
    //     0x76c15c: sbfx            x3, x5, #1, #0x1f
    //     0x76c160: tbz             w5, #0, #0x76c168
    //     0x76c164: ldur            x3, [x5, #7]
    // 0x76c168: mov             x16, x1
    // 0x76c16c: mov             x1, x2
    // 0x76c170: mov             x2, x16
    // 0x76c174: r0 = call 0x392f90
    //     0x76c174: bl              #0x392f90
    // 0x76c178: r16 = true
    //     0x76c178: add             x16, NULL, #0x20  ; true
    // 0x76c17c: str             x16, [SP]
    // 0x76c180: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76c180: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76c184: ldr             x4, [x4, #0x870]
    // 0x76c188: r0 = call 0x392d98
    //     0x76c188: bl              #0x392d98
    // 0x76c18c: r0 = ReturnAsyncNotFuture()
    //     0x76c18c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c190: sub             SP, fp, #0xb0
    // 0x76c194: r1 = 60
    //     0x76c194: movz            x1, #0x3c
    // 0x76c198: branchIfSmi(r0, 0x76c1a4)
    //     0x76c198: tbz             w0, #0, #0x76c1a4
    // 0x76c19c: r1 = LoadClassIdInstr(r0)
    //     0x76c19c: ldur            x1, [x0, #-1]
    //     0x76c1a0: ubfx            x1, x1, #0xc, #0x14
    // 0x76c1a4: cmp             x1, #0x5e5
    // 0x76c1a8: b.ne            #0x76c1c0
    // 0x76c1ac: str             x0, [SP]
    // 0x76c1b0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c1b0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c1b4: ldr             x4, [x4, #0x878]
    // 0x76c1b8: r0 = call 0x392d98
    //     0x76c1b8: bl              #0x392d98
    // 0x76c1bc: r0 = ReturnAsyncNotFuture()
    //     0x76c1bc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c1c0: r1 = 60
    //     0x76c1c0: movz            x1, #0x3c
    // 0x76c1c4: branchIfSmi(r0, 0x76c1d0)
    //     0x76c1c4: tbz             w0, #0, #0x76c1d0
    // 0x76c1c8: r1 = LoadClassIdInstr(r0)
    //     0x76c1c8: ldur            x1, [x0, #-1]
    //     0x76c1cc: ubfx            x1, x1, #0xc, #0x14
    // 0x76c1d0: str             x0, [SP]
    // 0x76c1d4: mov             x0, x1
    // 0x76c1d8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76c1d8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76c1dc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76c1dc: movz            x17, #0x3a5d
    //     0x76c1e0: add             lr, x0, x17
    //     0x76c1e4: ldr             lr, [x21, lr, lsl #3]
    //     0x76c1e8: blr             lr
    // 0x76c1ec: stur            x0, [fp, #-0x80]
    // 0x76c1f0: r0 = Mha()
    //     0x76c1f0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76c1f4: mov             x1, x0
    // 0x76c1f8: r0 = "error"
    //     0x76c1f8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76c1fc: StoreField: r1->field_7 = r0
    //     0x76c1fc: stur            w0, [x1, #7]
    // 0x76c200: ldur            x0, [fp, #-0x80]
    // 0x76c204: StoreField: r1->field_b = r0
    //     0x76c204: stur            w0, [x1, #0xb]
    // 0x76c208: str             x1, [SP]
    // 0x76c20c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c20c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c210: ldr             x4, [x4, #0x878]
    // 0x76c214: r0 = call 0x392d98
    //     0x76c214: bl              #0x392d98
    // 0x76c218: r0 = ReturnAsyncNotFuture()
    //     0x76c218: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c21c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76c21c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76c220: b               #0x76bf98
    // 0x76c224: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c224: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c228: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c228: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c22c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c22c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c230: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c230: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 376, size: 0x14, field offset: 0x10
class vVa extends OUa {

  late final _RUa _Mvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76c240, size: 0x1f0
    // 0x76c240: EnterFrame
    //     0x76c240: stp             fp, lr, [SP, #-0x10]!
    //     0x76c244: mov             fp, SP
    // 0x76c248: AllocStack(0x90)
    //     0x76c248: sub             SP, SP, #0x90
    // 0x76c24c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76c24c: stur            NULL, [fp, #-8]
    //     0x76c250: movz            x0, #0
    //     0x76c254: add             x1, fp, w0, sxtw #2
    //     0x76c258: ldr             x1, [x1, #0x18]
    //     0x76c25c: add             x2, fp, w0, sxtw #2
    //     0x76c260: ldr             x2, [x2, #0x10]
    //     0x76c264: stur            x2, [fp, #-0x78]
    //     0x76c268: ldur            w3, [x1, #0x17]
    //     0x76c26c: add             x3, x3, HEAP, lsl #32
    //     0x76c270: stur            x3, [fp, #-0x70]
    // 0x76c274: CheckStackOverflow
    //     0x76c274: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76c278: cmp             SP, x16
    //     0x76c27c: b.ls            #0x76c420
    // 0x76c280: InitAsync() -> Future<List<Object?>>
    //     0x76c280: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76c284: ldr             x0, [x0, #0x1d0]
    //     0x76c288: bl              #0x74ada8  ; InitAsyncStub
    // 0x76c28c: ldur            x3, [fp, #-0x78]
    // 0x76c290: cmp             w3, NULL
    // 0x76c294: b.eq            #0x76c428
    // 0x76c298: mov             x0, x3
    // 0x76c29c: r2 = Null
    //     0x76c29c: mov             x2, NULL
    // 0x76c2a0: r1 = Null
    //     0x76c2a0: mov             x1, NULL
    // 0x76c2a4: r4 = 60
    //     0x76c2a4: movz            x4, #0x3c
    // 0x76c2a8: branchIfSmi(r0, 0x76c2b4)
    //     0x76c2a8: tbz             w0, #0, #0x76c2b4
    // 0x76c2ac: r4 = LoadClassIdInstr(r0)
    //     0x76c2ac: ldur            x4, [x0, #-1]
    //     0x76c2b0: ubfx            x4, x4, #0xc, #0x14
    // 0x76c2b4: sub             x4, x4, #0x5a
    // 0x76c2b8: cmp             x4, #2
    // 0x76c2bc: b.ls            #0x76c2d0
    // 0x76c2c0: r8 = List<Object?>
    //     0x76c2c0: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76c2c4: r3 = Null
    //     0x76c2c4: add             x3, PP, #0x19, lsl #12  ; [pp+0x199b8] Null
    //     0x76c2c8: ldr             x3, [x3, #0x9b8]
    // 0x76c2cc: r0 = List<Object?>()
    //     0x76c2cc: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76c2d0: ldur            x0, [fp, #-0x78]
    // 0x76c2d4: r1 = LoadClassIdInstr(r0)
    //     0x76c2d4: ldur            x1, [x0, #-1]
    //     0x76c2d8: ubfx            x1, x1, #0xc, #0x14
    // 0x76c2dc: stp             xzr, x0, [SP]
    // 0x76c2e0: mov             x0, x1
    // 0x76c2e4: mov             lr, x0
    // 0x76c2e8: ldr             lr, [x21, lr, lsl #3]
    // 0x76c2ec: blr             lr
    // 0x76c2f0: mov             x3, x0
    // 0x76c2f4: stur            x3, [fp, #-0x78]
    // 0x76c2f8: cmp             w3, NULL
    // 0x76c2fc: b.eq            #0x76c42c
    // 0x76c300: r3 as int
    //     0x76c300: mov             x0, x3
    //     0x76c304: mov             x2, NULL
    //     0x76c308: mov             x1, NULL
    //     0x76c30c: tbz             w0, #0, #0x76c334
    //     0x76c310: ldur            x4, [x0, #-1]
    //     0x76c314: ubfx            x4, x4, #0xc, #0x14
    //     0x76c318: sub             x4, x4, #0x3c
    //     0x76c31c: cmp             x4, #1
    //     0x76c320: b.ls            #0x76c334
    //     0x76c324: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76c328: add             x3, PP, #0x19, lsl #12  ; [pp+0x199c8] Null
    //     0x76c32c: ldr             x3, [x3, #0x9c8]
    //     0x76c330: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76c334: ldur            x1, [fp, #-0x70]
    // 0x76c338: ldur            x0, [fp, #-0x78]
    // 0x76c33c: LoadField: r2 = r1->field_f
    //     0x76c33c: ldur            w2, [x1, #0xf]
    // 0x76c340: DecompressPointer r2
    //     0x76c340: add             x2, x2, HEAP, lsl #32
    // 0x76c344: stur            x2, [fp, #-0x80]
    // 0x76c348: r0 = vVa()
    //     0x76c348: bl              #0x76c430  ; AllocatevVaStub -> vVa (size=0x14)
    // 0x76c34c: mov             x1, x0
    // 0x76c350: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76c354: StoreField: r1->field_f = r0
    //     0x76c354: stur            w0, [x1, #0xf]
    // 0x76c358: ldur            x0, [fp, #-0x80]
    // 0x76c35c: StoreField: r1->field_b = r0
    //     0x76c35c: stur            w0, [x1, #0xb]
    // 0x76c360: ldur            x4, [fp, #-0x78]
    // 0x76c364: r3 = LoadInt32Instr(r4)
    //     0x76c364: sbfx            x3, x4, #1, #0x1f
    //     0x76c368: tbz             w4, #0, #0x76c370
    //     0x76c36c: ldur            x3, [x4, #7]
    // 0x76c370: mov             x2, x1
    // 0x76c374: mov             x1, x0
    // 0x76c378: r0 = call 0x392f90
    //     0x76c378: bl              #0x392f90
    // 0x76c37c: r16 = true
    //     0x76c37c: add             x16, NULL, #0x20  ; true
    // 0x76c380: str             x16, [SP]
    // 0x76c384: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76c384: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76c388: ldr             x4, [x4, #0x870]
    // 0x76c38c: r0 = call 0x392d98
    //     0x76c38c: bl              #0x392d98
    // 0x76c390: r0 = ReturnAsyncNotFuture()
    //     0x76c390: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c394: sub             SP, fp, #0x90
    // 0x76c398: r1 = 60
    //     0x76c398: movz            x1, #0x3c
    // 0x76c39c: branchIfSmi(r0, 0x76c3a8)
    //     0x76c39c: tbz             w0, #0, #0x76c3a8
    // 0x76c3a0: r1 = LoadClassIdInstr(r0)
    //     0x76c3a0: ldur            x1, [x0, #-1]
    //     0x76c3a4: ubfx            x1, x1, #0xc, #0x14
    // 0x76c3a8: cmp             x1, #0x5e5
    // 0x76c3ac: b.ne            #0x76c3c4
    // 0x76c3b0: str             x0, [SP]
    // 0x76c3b4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c3b4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c3b8: ldr             x4, [x4, #0x878]
    // 0x76c3bc: r0 = call 0x392d98
    //     0x76c3bc: bl              #0x392d98
    // 0x76c3c0: r0 = ReturnAsyncNotFuture()
    //     0x76c3c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c3c4: r1 = 60
    //     0x76c3c4: movz            x1, #0x3c
    // 0x76c3c8: branchIfSmi(r0, 0x76c3d4)
    //     0x76c3c8: tbz             w0, #0, #0x76c3d4
    // 0x76c3cc: r1 = LoadClassIdInstr(r0)
    //     0x76c3cc: ldur            x1, [x0, #-1]
    //     0x76c3d0: ubfx            x1, x1, #0xc, #0x14
    // 0x76c3d4: str             x0, [SP]
    // 0x76c3d8: mov             x0, x1
    // 0x76c3dc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76c3dc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76c3e0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76c3e0: movz            x17, #0x3a5d
    //     0x76c3e4: add             lr, x0, x17
    //     0x76c3e8: ldr             lr, [x21, lr, lsl #3]
    //     0x76c3ec: blr             lr
    // 0x76c3f0: stur            x0, [fp, #-0x70]
    // 0x76c3f4: r0 = Mha()
    //     0x76c3f4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76c3f8: mov             x1, x0
    // 0x76c3fc: r0 = "error"
    //     0x76c3fc: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76c400: StoreField: r1->field_7 = r0
    //     0x76c400: stur            w0, [x1, #7]
    // 0x76c404: ldur            x0, [fp, #-0x70]
    // 0x76c408: StoreField: r1->field_b = r0
    //     0x76c408: stur            w0, [x1, #0xb]
    // 0x76c40c: str             x1, [SP]
    // 0x76c410: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c410: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c414: ldr             x4, [x4, #0x878]
    // 0x76c418: r0 = call 0x392d98
    //     0x76c418: bl              #0x392d98
    // 0x76c41c: r0 = ReturnAsyncNotFuture()
    //     0x76c41c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c420: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76c420: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76c424: b               #0x76c280
    // 0x76c428: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c428: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c42c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c42c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 377, size: 0x10, field offset: 0x10
class uVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76b994, size: 0x1e0
    // 0x76b994: EnterFrame
    //     0x76b994: stp             fp, lr, [SP, #-0x10]!
    //     0x76b998: mov             fp, SP
    // 0x76b99c: AllocStack(0x90)
    //     0x76b99c: sub             SP, SP, #0x90
    // 0x76b9a0: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76b9a0: stur            NULL, [fp, #-8]
    //     0x76b9a4: movz            x0, #0
    //     0x76b9a8: add             x1, fp, w0, sxtw #2
    //     0x76b9ac: ldr             x1, [x1, #0x18]
    //     0x76b9b0: add             x2, fp, w0, sxtw #2
    //     0x76b9b4: ldr             x2, [x2, #0x10]
    //     0x76b9b8: stur            x2, [fp, #-0x78]
    //     0x76b9bc: ldur            w3, [x1, #0x17]
    //     0x76b9c0: add             x3, x3, HEAP, lsl #32
    //     0x76b9c4: stur            x3, [fp, #-0x70]
    // 0x76b9c8: CheckStackOverflow
    //     0x76b9c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76b9cc: cmp             SP, x16
    //     0x76b9d0: b.ls            #0x76bb64
    // 0x76b9d4: InitAsync() -> Future<List<Object?>>
    //     0x76b9d4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76b9d8: ldr             x0, [x0, #0x1d0]
    //     0x76b9dc: bl              #0x74ada8  ; InitAsyncStub
    // 0x76b9e0: ldur            x3, [fp, #-0x78]
    // 0x76b9e4: cmp             w3, NULL
    // 0x76b9e8: b.eq            #0x76bb6c
    // 0x76b9ec: mov             x0, x3
    // 0x76b9f0: r2 = Null
    //     0x76b9f0: mov             x2, NULL
    // 0x76b9f4: r1 = Null
    //     0x76b9f4: mov             x1, NULL
    // 0x76b9f8: r4 = 60
    //     0x76b9f8: movz            x4, #0x3c
    // 0x76b9fc: branchIfSmi(r0, 0x76ba08)
    //     0x76b9fc: tbz             w0, #0, #0x76ba08
    // 0x76ba00: r4 = LoadClassIdInstr(r0)
    //     0x76ba00: ldur            x4, [x0, #-1]
    //     0x76ba04: ubfx            x4, x4, #0xc, #0x14
    // 0x76ba08: sub             x4, x4, #0x5a
    // 0x76ba0c: cmp             x4, #2
    // 0x76ba10: b.ls            #0x76ba24
    // 0x76ba14: r8 = List<Object?>
    //     0x76ba14: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76ba18: r3 = Null
    //     0x76ba18: add             x3, PP, #0x19, lsl #12  ; [pp+0x198d0] Null
    //     0x76ba1c: ldr             x3, [x3, #0x8d0]
    // 0x76ba20: r0 = List<Object?>()
    //     0x76ba20: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76ba24: ldur            x0, [fp, #-0x78]
    // 0x76ba28: r1 = LoadClassIdInstr(r0)
    //     0x76ba28: ldur            x1, [x0, #-1]
    //     0x76ba2c: ubfx            x1, x1, #0xc, #0x14
    // 0x76ba30: stp             xzr, x0, [SP]
    // 0x76ba34: mov             x0, x1
    // 0x76ba38: mov             lr, x0
    // 0x76ba3c: ldr             lr, [x21, lr, lsl #3]
    // 0x76ba40: blr             lr
    // 0x76ba44: mov             x3, x0
    // 0x76ba48: stur            x3, [fp, #-0x78]
    // 0x76ba4c: cmp             w3, NULL
    // 0x76ba50: b.eq            #0x76bb70
    // 0x76ba54: r3 as int
    //     0x76ba54: mov             x0, x3
    //     0x76ba58: mov             x2, NULL
    //     0x76ba5c: mov             x1, NULL
    //     0x76ba60: tbz             w0, #0, #0x76ba88
    //     0x76ba64: ldur            x4, [x0, #-1]
    //     0x76ba68: ubfx            x4, x4, #0xc, #0x14
    //     0x76ba6c: sub             x4, x4, #0x3c
    //     0x76ba70: cmp             x4, #1
    //     0x76ba74: b.ls            #0x76ba88
    //     0x76ba78: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76ba7c: add             x3, PP, #0x19, lsl #12  ; [pp+0x198e0] Null
    //     0x76ba80: ldr             x3, [x3, #0x8e0]
    //     0x76ba84: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76ba88: ldur            x1, [fp, #-0x70]
    // 0x76ba8c: ldur            x0, [fp, #-0x78]
    // 0x76ba90: LoadField: r2 = r1->field_f
    //     0x76ba90: ldur            w2, [x1, #0xf]
    // 0x76ba94: DecompressPointer r2
    //     0x76ba94: add             x2, x2, HEAP, lsl #32
    // 0x76ba98: stur            x2, [fp, #-0x80]
    // 0x76ba9c: r0 = uVa()
    //     0x76ba9c: bl              #0x76bb74  ; AllocateuVaStub -> uVa (size=0x10)
    // 0x76baa0: ldur            x1, [fp, #-0x80]
    // 0x76baa4: StoreField: r0->field_b = r1
    //     0x76baa4: stur            w1, [x0, #0xb]
    // 0x76baa8: ldur            x4, [fp, #-0x78]
    // 0x76baac: r3 = LoadInt32Instr(r4)
    //     0x76baac: sbfx            x3, x4, #1, #0x1f
    //     0x76bab0: tbz             w4, #0, #0x76bab8
    //     0x76bab4: ldur            x3, [x4, #7]
    // 0x76bab8: mov             x2, x0
    // 0x76babc: r0 = call 0x392f90
    //     0x76babc: bl              #0x392f90
    // 0x76bac0: r16 = true
    //     0x76bac0: add             x16, NULL, #0x20  ; true
    // 0x76bac4: str             x16, [SP]
    // 0x76bac8: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76bac8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76bacc: ldr             x4, [x4, #0x870]
    // 0x76bad0: r0 = call 0x392d98
    //     0x76bad0: bl              #0x392d98
    // 0x76bad4: r0 = ReturnAsyncNotFuture()
    //     0x76bad4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bad8: sub             SP, fp, #0x90
    // 0x76badc: r1 = 60
    //     0x76badc: movz            x1, #0x3c
    // 0x76bae0: branchIfSmi(r0, 0x76baec)
    //     0x76bae0: tbz             w0, #0, #0x76baec
    // 0x76bae4: r1 = LoadClassIdInstr(r0)
    //     0x76bae4: ldur            x1, [x0, #-1]
    //     0x76bae8: ubfx            x1, x1, #0xc, #0x14
    // 0x76baec: cmp             x1, #0x5e5
    // 0x76baf0: b.ne            #0x76bb08
    // 0x76baf4: str             x0, [SP]
    // 0x76baf8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76baf8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bafc: ldr             x4, [x4, #0x878]
    // 0x76bb00: r0 = call 0x392d98
    //     0x76bb00: bl              #0x392d98
    // 0x76bb04: r0 = ReturnAsyncNotFuture()
    //     0x76bb04: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bb08: r1 = 60
    //     0x76bb08: movz            x1, #0x3c
    // 0x76bb0c: branchIfSmi(r0, 0x76bb18)
    //     0x76bb0c: tbz             w0, #0, #0x76bb18
    // 0x76bb10: r1 = LoadClassIdInstr(r0)
    //     0x76bb10: ldur            x1, [x0, #-1]
    //     0x76bb14: ubfx            x1, x1, #0xc, #0x14
    // 0x76bb18: str             x0, [SP]
    // 0x76bb1c: mov             x0, x1
    // 0x76bb20: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76bb20: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76bb24: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76bb24: movz            x17, #0x3a5d
    //     0x76bb28: add             lr, x0, x17
    //     0x76bb2c: ldr             lr, [x21, lr, lsl #3]
    //     0x76bb30: blr             lr
    // 0x76bb34: stur            x0, [fp, #-0x70]
    // 0x76bb38: r0 = Mha()
    //     0x76bb38: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76bb3c: mov             x1, x0
    // 0x76bb40: r0 = "error"
    //     0x76bb40: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76bb44: StoreField: r1->field_7 = r0
    //     0x76bb44: stur            w0, [x1, #7]
    // 0x76bb48: ldur            x0, [fp, #-0x70]
    // 0x76bb4c: StoreField: r1->field_b = r0
    //     0x76bb4c: stur            w0, [x1, #0xb]
    // 0x76bb50: str             x1, [SP]
    // 0x76bb54: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76bb54: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76bb58: ldr             x4, [x4, #0x878]
    // 0x76bb5c: r0 = call 0x392d98
    //     0x76bb5c: bl              #0x392d98
    // 0x76bb60: r0 = ReturnAsyncNotFuture()
    //     0x76bb60: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76bb64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76bb64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76bb68: b               #0x76b9d4
    // 0x76bb6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bb6c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76bb70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76bb70: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 378, size: 0x10, field offset: 0x10
class X509Certificate extends uVa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76c43c, size: 0x1e0
    // 0x76c43c: EnterFrame
    //     0x76c43c: stp             fp, lr, [SP, #-0x10]!
    //     0x76c440: mov             fp, SP
    // 0x76c444: AllocStack(0x90)
    //     0x76c444: sub             SP, SP, #0x90
    // 0x76c448: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76c448: stur            NULL, [fp, #-8]
    //     0x76c44c: movz            x0, #0
    //     0x76c450: add             x1, fp, w0, sxtw #2
    //     0x76c454: ldr             x1, [x1, #0x18]
    //     0x76c458: add             x2, fp, w0, sxtw #2
    //     0x76c45c: ldr             x2, [x2, #0x10]
    //     0x76c460: stur            x2, [fp, #-0x78]
    //     0x76c464: ldur            w3, [x1, #0x17]
    //     0x76c468: add             x3, x3, HEAP, lsl #32
    //     0x76c46c: stur            x3, [fp, #-0x70]
    // 0x76c470: CheckStackOverflow
    //     0x76c470: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76c474: cmp             SP, x16
    //     0x76c478: b.ls            #0x76c60c
    // 0x76c47c: InitAsync() -> Future<List<Object?>>
    //     0x76c47c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76c480: ldr             x0, [x0, #0x1d0]
    //     0x76c484: bl              #0x74ada8  ; InitAsyncStub
    // 0x76c488: ldur            x3, [fp, #-0x78]
    // 0x76c48c: cmp             w3, NULL
    // 0x76c490: b.eq            #0x76c614
    // 0x76c494: mov             x0, x3
    // 0x76c498: r2 = Null
    //     0x76c498: mov             x2, NULL
    // 0x76c49c: r1 = Null
    //     0x76c49c: mov             x1, NULL
    // 0x76c4a0: r4 = 60
    //     0x76c4a0: movz            x4, #0x3c
    // 0x76c4a4: branchIfSmi(r0, 0x76c4b0)
    //     0x76c4a4: tbz             w0, #0, #0x76c4b0
    // 0x76c4a8: r4 = LoadClassIdInstr(r0)
    //     0x76c4a8: ldur            x4, [x0, #-1]
    //     0x76c4ac: ubfx            x4, x4, #0xc, #0x14
    // 0x76c4b0: sub             x4, x4, #0x5a
    // 0x76c4b4: cmp             x4, #2
    // 0x76c4b8: b.ls            #0x76c4cc
    // 0x76c4bc: r8 = List<Object?>
    //     0x76c4bc: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76c4c0: r3 = Null
    //     0x76c4c0: add             x3, PP, #0x19, lsl #12  ; [pp+0x199e8] Null
    //     0x76c4c4: ldr             x3, [x3, #0x9e8]
    // 0x76c4c8: r0 = List<Object?>()
    //     0x76c4c8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76c4cc: ldur            x0, [fp, #-0x78]
    // 0x76c4d0: r1 = LoadClassIdInstr(r0)
    //     0x76c4d0: ldur            x1, [x0, #-1]
    //     0x76c4d4: ubfx            x1, x1, #0xc, #0x14
    // 0x76c4d8: stp             xzr, x0, [SP]
    // 0x76c4dc: mov             x0, x1
    // 0x76c4e0: mov             lr, x0
    // 0x76c4e4: ldr             lr, [x21, lr, lsl #3]
    // 0x76c4e8: blr             lr
    // 0x76c4ec: mov             x3, x0
    // 0x76c4f0: stur            x3, [fp, #-0x78]
    // 0x76c4f4: cmp             w3, NULL
    // 0x76c4f8: b.eq            #0x76c618
    // 0x76c4fc: r3 as int
    //     0x76c4fc: mov             x0, x3
    //     0x76c500: mov             x2, NULL
    //     0x76c504: mov             x1, NULL
    //     0x76c508: tbz             w0, #0, #0x76c530
    //     0x76c50c: ldur            x4, [x0, #-1]
    //     0x76c510: ubfx            x4, x4, #0xc, #0x14
    //     0x76c514: sub             x4, x4, #0x3c
    //     0x76c518: cmp             x4, #1
    //     0x76c51c: b.ls            #0x76c530
    //     0x76c520: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76c524: add             x3, PP, #0x19, lsl #12  ; [pp+0x199f8] Null
    //     0x76c528: ldr             x3, [x3, #0x9f8]
    //     0x76c52c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76c530: ldur            x1, [fp, #-0x70]
    // 0x76c534: ldur            x0, [fp, #-0x78]
    // 0x76c538: LoadField: r2 = r1->field_f
    //     0x76c538: ldur            w2, [x1, #0xf]
    // 0x76c53c: DecompressPointer r2
    //     0x76c53c: add             x2, x2, HEAP, lsl #32
    // 0x76c540: stur            x2, [fp, #-0x80]
    // 0x76c544: r0 = X509Certificate()
    //     0x76c544: bl              #0x76c61c  ; AllocateX509CertificateStub -> X509Certificate (size=0x10)
    // 0x76c548: ldur            x1, [fp, #-0x80]
    // 0x76c54c: StoreField: r0->field_b = r1
    //     0x76c54c: stur            w1, [x0, #0xb]
    // 0x76c550: ldur            x4, [fp, #-0x78]
    // 0x76c554: r3 = LoadInt32Instr(r4)
    //     0x76c554: sbfx            x3, x4, #1, #0x1f
    //     0x76c558: tbz             w4, #0, #0x76c560
    //     0x76c55c: ldur            x3, [x4, #7]
    // 0x76c560: mov             x2, x0
    // 0x76c564: r0 = call 0x392f90
    //     0x76c564: bl              #0x392f90
    // 0x76c568: r16 = true
    //     0x76c568: add             x16, NULL, #0x20  ; true
    // 0x76c56c: str             x16, [SP]
    // 0x76c570: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76c570: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76c574: ldr             x4, [x4, #0x870]
    // 0x76c578: r0 = call 0x392d98
    //     0x76c578: bl              #0x392d98
    // 0x76c57c: r0 = ReturnAsyncNotFuture()
    //     0x76c57c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c580: sub             SP, fp, #0x90
    // 0x76c584: r1 = 60
    //     0x76c584: movz            x1, #0x3c
    // 0x76c588: branchIfSmi(r0, 0x76c594)
    //     0x76c588: tbz             w0, #0, #0x76c594
    // 0x76c58c: r1 = LoadClassIdInstr(r0)
    //     0x76c58c: ldur            x1, [x0, #-1]
    //     0x76c590: ubfx            x1, x1, #0xc, #0x14
    // 0x76c594: cmp             x1, #0x5e5
    // 0x76c598: b.ne            #0x76c5b0
    // 0x76c59c: str             x0, [SP]
    // 0x76c5a0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c5a0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c5a4: ldr             x4, [x4, #0x878]
    // 0x76c5a8: r0 = call 0x392d98
    //     0x76c5a8: bl              #0x392d98
    // 0x76c5ac: r0 = ReturnAsyncNotFuture()
    //     0x76c5ac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c5b0: r1 = 60
    //     0x76c5b0: movz            x1, #0x3c
    // 0x76c5b4: branchIfSmi(r0, 0x76c5c0)
    //     0x76c5b4: tbz             w0, #0, #0x76c5c0
    // 0x76c5b8: r1 = LoadClassIdInstr(r0)
    //     0x76c5b8: ldur            x1, [x0, #-1]
    //     0x76c5bc: ubfx            x1, x1, #0xc, #0x14
    // 0x76c5c0: str             x0, [SP]
    // 0x76c5c4: mov             x0, x1
    // 0x76c5c8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76c5c8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76c5cc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76c5cc: movz            x17, #0x3a5d
    //     0x76c5d0: add             lr, x0, x17
    //     0x76c5d4: ldr             lr, [x21, lr, lsl #3]
    //     0x76c5d8: blr             lr
    // 0x76c5dc: stur            x0, [fp, #-0x70]
    // 0x76c5e0: r0 = Mha()
    //     0x76c5e0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76c5e4: mov             x1, x0
    // 0x76c5e8: r0 = "error"
    //     0x76c5e8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76c5ec: StoreField: r1->field_7 = r0
    //     0x76c5ec: stur            w0, [x1, #7]
    // 0x76c5f0: ldur            x0, [fp, #-0x70]
    // 0x76c5f4: StoreField: r1->field_b = r0
    //     0x76c5f4: stur            w0, [x1, #0xb]
    // 0x76c5f8: str             x1, [SP]
    // 0x76c5fc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c5fc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c600: ldr             x4, [x4, #0x878]
    // 0x76c604: r0 = call 0x392d98
    //     0x76c604: bl              #0x392d98
    // 0x76c608: r0 = ReturnAsyncNotFuture()
    //     0x76c608: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c60c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76c60c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76c610: b               #0x76c47c
    // 0x76c614: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c614: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c618: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c618: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 379, size: 0x10, field offset: 0x10
class NLa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76c628, size: 0x1e0
    // 0x76c628: EnterFrame
    //     0x76c628: stp             fp, lr, [SP, #-0x10]!
    //     0x76c62c: mov             fp, SP
    // 0x76c630: AllocStack(0x90)
    //     0x76c630: sub             SP, SP, #0x90
    // 0x76c634: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76c634: stur            NULL, [fp, #-8]
    //     0x76c638: movz            x0, #0
    //     0x76c63c: add             x1, fp, w0, sxtw #2
    //     0x76c640: ldr             x1, [x1, #0x18]
    //     0x76c644: add             x2, fp, w0, sxtw #2
    //     0x76c648: ldr             x2, [x2, #0x10]
    //     0x76c64c: stur            x2, [fp, #-0x78]
    //     0x76c650: ldur            w3, [x1, #0x17]
    //     0x76c654: add             x3, x3, HEAP, lsl #32
    //     0x76c658: stur            x3, [fp, #-0x70]
    // 0x76c65c: CheckStackOverflow
    //     0x76c65c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76c660: cmp             SP, x16
    //     0x76c664: b.ls            #0x76c7f8
    // 0x76c668: InitAsync() -> Future<List<Object?>>
    //     0x76c668: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76c66c: ldr             x0, [x0, #0x1d0]
    //     0x76c670: bl              #0x74ada8  ; InitAsyncStub
    // 0x76c674: ldur            x3, [fp, #-0x78]
    // 0x76c678: cmp             w3, NULL
    // 0x76c67c: b.eq            #0x76c800
    // 0x76c680: mov             x0, x3
    // 0x76c684: r2 = Null
    //     0x76c684: mov             x2, NULL
    // 0x76c688: r1 = Null
    //     0x76c688: mov             x1, NULL
    // 0x76c68c: r4 = 60
    //     0x76c68c: movz            x4, #0x3c
    // 0x76c690: branchIfSmi(r0, 0x76c69c)
    //     0x76c690: tbz             w0, #0, #0x76c69c
    // 0x76c694: r4 = LoadClassIdInstr(r0)
    //     0x76c694: ldur            x4, [x0, #-1]
    //     0x76c698: ubfx            x4, x4, #0xc, #0x14
    // 0x76c69c: sub             x4, x4, #0x5a
    // 0x76c6a0: cmp             x4, #2
    // 0x76c6a4: b.ls            #0x76c6b8
    // 0x76c6a8: r8 = List<Object?>
    //     0x76c6a8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76c6ac: r3 = Null
    //     0x76c6ac: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a18] Null
    //     0x76c6b0: ldr             x3, [x3, #0xa18]
    // 0x76c6b4: r0 = List<Object?>()
    //     0x76c6b4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76c6b8: ldur            x0, [fp, #-0x78]
    // 0x76c6bc: r1 = LoadClassIdInstr(r0)
    //     0x76c6bc: ldur            x1, [x0, #-1]
    //     0x76c6c0: ubfx            x1, x1, #0xc, #0x14
    // 0x76c6c4: stp             xzr, x0, [SP]
    // 0x76c6c8: mov             x0, x1
    // 0x76c6cc: mov             lr, x0
    // 0x76c6d0: ldr             lr, [x21, lr, lsl #3]
    // 0x76c6d4: blr             lr
    // 0x76c6d8: mov             x3, x0
    // 0x76c6dc: stur            x3, [fp, #-0x78]
    // 0x76c6e0: cmp             w3, NULL
    // 0x76c6e4: b.eq            #0x76c804
    // 0x76c6e8: r3 as int
    //     0x76c6e8: mov             x0, x3
    //     0x76c6ec: mov             x2, NULL
    //     0x76c6f0: mov             x1, NULL
    //     0x76c6f4: tbz             w0, #0, #0x76c71c
    //     0x76c6f8: ldur            x4, [x0, #-1]
    //     0x76c6fc: ubfx            x4, x4, #0xc, #0x14
    //     0x76c700: sub             x4, x4, #0x3c
    //     0x76c704: cmp             x4, #1
    //     0x76c708: b.ls            #0x76c71c
    //     0x76c70c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76c710: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a28] Null
    //     0x76c714: ldr             x3, [x3, #0xa28]
    //     0x76c718: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76c71c: ldur            x1, [fp, #-0x70]
    // 0x76c720: ldur            x0, [fp, #-0x78]
    // 0x76c724: LoadField: r2 = r1->field_f
    //     0x76c724: ldur            w2, [x1, #0xf]
    // 0x76c728: DecompressPointer r2
    //     0x76c728: add             x2, x2, HEAP, lsl #32
    // 0x76c72c: stur            x2, [fp, #-0x80]
    // 0x76c730: r0 = NLa()
    //     0x76c730: bl              #0x76c808  ; AllocateNLaStub -> NLa (size=0x10)
    // 0x76c734: ldur            x1, [fp, #-0x80]
    // 0x76c738: StoreField: r0->field_b = r1
    //     0x76c738: stur            w1, [x0, #0xb]
    // 0x76c73c: ldur            x4, [fp, #-0x78]
    // 0x76c740: r3 = LoadInt32Instr(r4)
    //     0x76c740: sbfx            x3, x4, #1, #0x1f
    //     0x76c744: tbz             w4, #0, #0x76c74c
    //     0x76c748: ldur            x3, [x4, #7]
    // 0x76c74c: mov             x2, x0
    // 0x76c750: r0 = call 0x392f90
    //     0x76c750: bl              #0x392f90
    // 0x76c754: r16 = true
    //     0x76c754: add             x16, NULL, #0x20  ; true
    // 0x76c758: str             x16, [SP]
    // 0x76c75c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76c75c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76c760: ldr             x4, [x4, #0x870]
    // 0x76c764: r0 = call 0x392d98
    //     0x76c764: bl              #0x392d98
    // 0x76c768: r0 = ReturnAsyncNotFuture()
    //     0x76c768: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c76c: sub             SP, fp, #0x90
    // 0x76c770: r1 = 60
    //     0x76c770: movz            x1, #0x3c
    // 0x76c774: branchIfSmi(r0, 0x76c780)
    //     0x76c774: tbz             w0, #0, #0x76c780
    // 0x76c778: r1 = LoadClassIdInstr(r0)
    //     0x76c778: ldur            x1, [x0, #-1]
    //     0x76c77c: ubfx            x1, x1, #0xc, #0x14
    // 0x76c780: cmp             x1, #0x5e5
    // 0x76c784: b.ne            #0x76c79c
    // 0x76c788: str             x0, [SP]
    // 0x76c78c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c78c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c790: ldr             x4, [x4, #0x878]
    // 0x76c794: r0 = call 0x392d98
    //     0x76c794: bl              #0x392d98
    // 0x76c798: r0 = ReturnAsyncNotFuture()
    //     0x76c798: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c79c: r1 = 60
    //     0x76c79c: movz            x1, #0x3c
    // 0x76c7a0: branchIfSmi(r0, 0x76c7ac)
    //     0x76c7a0: tbz             w0, #0, #0x76c7ac
    // 0x76c7a4: r1 = LoadClassIdInstr(r0)
    //     0x76c7a4: ldur            x1, [x0, #-1]
    //     0x76c7a8: ubfx            x1, x1, #0xc, #0x14
    // 0x76c7ac: str             x0, [SP]
    // 0x76c7b0: mov             x0, x1
    // 0x76c7b4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76c7b4: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76c7b8: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76c7b8: movz            x17, #0x3a5d
    //     0x76c7bc: add             lr, x0, x17
    //     0x76c7c0: ldr             lr, [x21, lr, lsl #3]
    //     0x76c7c4: blr             lr
    // 0x76c7c8: stur            x0, [fp, #-0x70]
    // 0x76c7cc: r0 = Mha()
    //     0x76c7cc: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76c7d0: mov             x1, x0
    // 0x76c7d4: r0 = "error"
    //     0x76c7d4: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76c7d8: StoreField: r1->field_7 = r0
    //     0x76c7d8: stur            w0, [x1, #7]
    // 0x76c7dc: ldur            x0, [fp, #-0x70]
    // 0x76c7e0: StoreField: r1->field_b = r0
    //     0x76c7e0: stur            w0, [x1, #0xb]
    // 0x76c7e4: str             x1, [SP]
    // 0x76c7e8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c7e8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c7ec: ldr             x4, [x4, #0x878]
    // 0x76c7f0: r0 = call 0x392d98
    //     0x76c7f0: bl              #0x392d98
    // 0x76c7f4: r0 = ReturnAsyncNotFuture()
    //     0x76c7f4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c7f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76c7f8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76c7fc: b               #0x76c668
    // 0x76c800: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c800: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76c804: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c804: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 380, size: 0x14, field offset: 0x10
class tVa extends OUa {

  late final _RUa _fvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76c814, size: 0x1f0
    // 0x76c814: EnterFrame
    //     0x76c814: stp             fp, lr, [SP, #-0x10]!
    //     0x76c818: mov             fp, SP
    // 0x76c81c: AllocStack(0x90)
    //     0x76c81c: sub             SP, SP, #0x90
    // 0x76c820: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76c820: stur            NULL, [fp, #-8]
    //     0x76c824: movz            x0, #0
    //     0x76c828: add             x1, fp, w0, sxtw #2
    //     0x76c82c: ldr             x1, [x1, #0x18]
    //     0x76c830: add             x2, fp, w0, sxtw #2
    //     0x76c834: ldr             x2, [x2, #0x10]
    //     0x76c838: stur            x2, [fp, #-0x78]
    //     0x76c83c: ldur            w3, [x1, #0x17]
    //     0x76c840: add             x3, x3, HEAP, lsl #32
    //     0x76c844: stur            x3, [fp, #-0x70]
    // 0x76c848: CheckStackOverflow
    //     0x76c848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76c84c: cmp             SP, x16
    //     0x76c850: b.ls            #0x76c9f4
    // 0x76c854: InitAsync() -> Future<List<Object?>>
    //     0x76c854: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76c858: ldr             x0, [x0, #0x1d0]
    //     0x76c85c: bl              #0x74ada8  ; InitAsyncStub
    // 0x76c860: ldur            x3, [fp, #-0x78]
    // 0x76c864: cmp             w3, NULL
    // 0x76c868: b.eq            #0x76c9fc
    // 0x76c86c: mov             x0, x3
    // 0x76c870: r2 = Null
    //     0x76c870: mov             x2, NULL
    // 0x76c874: r1 = Null
    //     0x76c874: mov             x1, NULL
    // 0x76c878: r4 = 60
    //     0x76c878: movz            x4, #0x3c
    // 0x76c87c: branchIfSmi(r0, 0x76c888)
    //     0x76c87c: tbz             w0, #0, #0x76c888
    // 0x76c880: r4 = LoadClassIdInstr(r0)
    //     0x76c880: ldur            x4, [x0, #-1]
    //     0x76c884: ubfx            x4, x4, #0xc, #0x14
    // 0x76c888: sub             x4, x4, #0x5a
    // 0x76c88c: cmp             x4, #2
    // 0x76c890: b.ls            #0x76c8a4
    // 0x76c894: r8 = List<Object?>
    //     0x76c894: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76c898: r3 = Null
    //     0x76c898: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a48] Null
    //     0x76c89c: ldr             x3, [x3, #0xa48]
    // 0x76c8a0: r0 = List<Object?>()
    //     0x76c8a0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76c8a4: ldur            x0, [fp, #-0x78]
    // 0x76c8a8: r1 = LoadClassIdInstr(r0)
    //     0x76c8a8: ldur            x1, [x0, #-1]
    //     0x76c8ac: ubfx            x1, x1, #0xc, #0x14
    // 0x76c8b0: stp             xzr, x0, [SP]
    // 0x76c8b4: mov             x0, x1
    // 0x76c8b8: mov             lr, x0
    // 0x76c8bc: ldr             lr, [x21, lr, lsl #3]
    // 0x76c8c0: blr             lr
    // 0x76c8c4: mov             x3, x0
    // 0x76c8c8: stur            x3, [fp, #-0x78]
    // 0x76c8cc: cmp             w3, NULL
    // 0x76c8d0: b.eq            #0x76ca00
    // 0x76c8d4: r3 as int
    //     0x76c8d4: mov             x0, x3
    //     0x76c8d8: mov             x2, NULL
    //     0x76c8dc: mov             x1, NULL
    //     0x76c8e0: tbz             w0, #0, #0x76c908
    //     0x76c8e4: ldur            x4, [x0, #-1]
    //     0x76c8e8: ubfx            x4, x4, #0xc, #0x14
    //     0x76c8ec: sub             x4, x4, #0x3c
    //     0x76c8f0: cmp             x4, #1
    //     0x76c8f4: b.ls            #0x76c908
    //     0x76c8f8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76c8fc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a58] Null
    //     0x76c900: ldr             x3, [x3, #0xa58]
    //     0x76c904: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76c908: ldur            x1, [fp, #-0x70]
    // 0x76c90c: ldur            x0, [fp, #-0x78]
    // 0x76c910: LoadField: r2 = r1->field_f
    //     0x76c910: ldur            w2, [x1, #0xf]
    // 0x76c914: DecompressPointer r2
    //     0x76c914: add             x2, x2, HEAP, lsl #32
    // 0x76c918: stur            x2, [fp, #-0x80]
    // 0x76c91c: r0 = tVa()
    //     0x76c91c: bl              #0x76ca04  ; AllocatetVaStub -> tVa (size=0x14)
    // 0x76c920: mov             x1, x0
    // 0x76c924: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76c928: StoreField: r1->field_f = r0
    //     0x76c928: stur            w0, [x1, #0xf]
    // 0x76c92c: ldur            x0, [fp, #-0x80]
    // 0x76c930: StoreField: r1->field_b = r0
    //     0x76c930: stur            w0, [x1, #0xb]
    // 0x76c934: ldur            x4, [fp, #-0x78]
    // 0x76c938: r3 = LoadInt32Instr(r4)
    //     0x76c938: sbfx            x3, x4, #1, #0x1f
    //     0x76c93c: tbz             w4, #0, #0x76c944
    //     0x76c940: ldur            x3, [x4, #7]
    // 0x76c944: mov             x2, x1
    // 0x76c948: mov             x1, x0
    // 0x76c94c: r0 = call 0x392f90
    //     0x76c94c: bl              #0x392f90
    // 0x76c950: r16 = true
    //     0x76c950: add             x16, NULL, #0x20  ; true
    // 0x76c954: str             x16, [SP]
    // 0x76c958: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76c958: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76c95c: ldr             x4, [x4, #0x870]
    // 0x76c960: r0 = call 0x392d98
    //     0x76c960: bl              #0x392d98
    // 0x76c964: r0 = ReturnAsyncNotFuture()
    //     0x76c964: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c968: sub             SP, fp, #0x90
    // 0x76c96c: r1 = 60
    //     0x76c96c: movz            x1, #0x3c
    // 0x76c970: branchIfSmi(r0, 0x76c97c)
    //     0x76c970: tbz             w0, #0, #0x76c97c
    // 0x76c974: r1 = LoadClassIdInstr(r0)
    //     0x76c974: ldur            x1, [x0, #-1]
    //     0x76c978: ubfx            x1, x1, #0xc, #0x14
    // 0x76c97c: cmp             x1, #0x5e5
    // 0x76c980: b.ne            #0x76c998
    // 0x76c984: str             x0, [SP]
    // 0x76c988: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c988: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c98c: ldr             x4, [x4, #0x878]
    // 0x76c990: r0 = call 0x392d98
    //     0x76c990: bl              #0x392d98
    // 0x76c994: r0 = ReturnAsyncNotFuture()
    //     0x76c994: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c998: r1 = 60
    //     0x76c998: movz            x1, #0x3c
    // 0x76c99c: branchIfSmi(r0, 0x76c9a8)
    //     0x76c99c: tbz             w0, #0, #0x76c9a8
    // 0x76c9a0: r1 = LoadClassIdInstr(r0)
    //     0x76c9a0: ldur            x1, [x0, #-1]
    //     0x76c9a4: ubfx            x1, x1, #0xc, #0x14
    // 0x76c9a8: str             x0, [SP]
    // 0x76c9ac: mov             x0, x1
    // 0x76c9b0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76c9b0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76c9b4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76c9b4: movz            x17, #0x3a5d
    //     0x76c9b8: add             lr, x0, x17
    //     0x76c9bc: ldr             lr, [x21, lr, lsl #3]
    //     0x76c9c0: blr             lr
    // 0x76c9c4: stur            x0, [fp, #-0x70]
    // 0x76c9c8: r0 = Mha()
    //     0x76c9c8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76c9cc: mov             x1, x0
    // 0x76c9d0: r0 = "error"
    //     0x76c9d0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76c9d4: StoreField: r1->field_7 = r0
    //     0x76c9d4: stur            w0, [x1, #7]
    // 0x76c9d8: ldur            x0, [fp, #-0x70]
    // 0x76c9dc: StoreField: r1->field_b = r0
    //     0x76c9dc: stur            w0, [x1, #0xb]
    // 0x76c9e0: str             x1, [SP]
    // 0x76c9e4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76c9e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76c9e8: ldr             x4, [x4, #0x878]
    // 0x76c9ec: r0 = call 0x392d98
    //     0x76c9ec: bl              #0x392d98
    // 0x76c9f0: r0 = ReturnAsyncNotFuture()
    //     0x76c9f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76c9f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76c9f4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76c9f8: b               #0x76c854
    // 0x76c9fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76c9fc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ca00: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ca00: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 381, size: 0x14, field offset: 0x10
class sVa extends OUa {

  late final _RUa _suf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76ca10, size: 0x1f0
    // 0x76ca10: EnterFrame
    //     0x76ca10: stp             fp, lr, [SP, #-0x10]!
    //     0x76ca14: mov             fp, SP
    // 0x76ca18: AllocStack(0x90)
    //     0x76ca18: sub             SP, SP, #0x90
    // 0x76ca1c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76ca1c: stur            NULL, [fp, #-8]
    //     0x76ca20: movz            x0, #0
    //     0x76ca24: add             x1, fp, w0, sxtw #2
    //     0x76ca28: ldr             x1, [x1, #0x18]
    //     0x76ca2c: add             x2, fp, w0, sxtw #2
    //     0x76ca30: ldr             x2, [x2, #0x10]
    //     0x76ca34: stur            x2, [fp, #-0x78]
    //     0x76ca38: ldur            w3, [x1, #0x17]
    //     0x76ca3c: add             x3, x3, HEAP, lsl #32
    //     0x76ca40: stur            x3, [fp, #-0x70]
    // 0x76ca44: CheckStackOverflow
    //     0x76ca44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76ca48: cmp             SP, x16
    //     0x76ca4c: b.ls            #0x76cbf0
    // 0x76ca50: InitAsync() -> Future<List<Object?>>
    //     0x76ca50: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76ca54: ldr             x0, [x0, #0x1d0]
    //     0x76ca58: bl              #0x74ada8  ; InitAsyncStub
    // 0x76ca5c: ldur            x3, [fp, #-0x78]
    // 0x76ca60: cmp             w3, NULL
    // 0x76ca64: b.eq            #0x76cbf8
    // 0x76ca68: mov             x0, x3
    // 0x76ca6c: r2 = Null
    //     0x76ca6c: mov             x2, NULL
    // 0x76ca70: r1 = Null
    //     0x76ca70: mov             x1, NULL
    // 0x76ca74: r4 = 60
    //     0x76ca74: movz            x4, #0x3c
    // 0x76ca78: branchIfSmi(r0, 0x76ca84)
    //     0x76ca78: tbz             w0, #0, #0x76ca84
    // 0x76ca7c: r4 = LoadClassIdInstr(r0)
    //     0x76ca7c: ldur            x4, [x0, #-1]
    //     0x76ca80: ubfx            x4, x4, #0xc, #0x14
    // 0x76ca84: sub             x4, x4, #0x5a
    // 0x76ca88: cmp             x4, #2
    // 0x76ca8c: b.ls            #0x76caa0
    // 0x76ca90: r8 = List<Object?>
    //     0x76ca90: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76ca94: r3 = Null
    //     0x76ca94: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a78] Null
    //     0x76ca98: ldr             x3, [x3, #0xa78]
    // 0x76ca9c: r0 = List<Object?>()
    //     0x76ca9c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76caa0: ldur            x0, [fp, #-0x78]
    // 0x76caa4: r1 = LoadClassIdInstr(r0)
    //     0x76caa4: ldur            x1, [x0, #-1]
    //     0x76caa8: ubfx            x1, x1, #0xc, #0x14
    // 0x76caac: stp             xzr, x0, [SP]
    // 0x76cab0: mov             x0, x1
    // 0x76cab4: mov             lr, x0
    // 0x76cab8: ldr             lr, [x21, lr, lsl #3]
    // 0x76cabc: blr             lr
    // 0x76cac0: mov             x3, x0
    // 0x76cac4: stur            x3, [fp, #-0x78]
    // 0x76cac8: cmp             w3, NULL
    // 0x76cacc: b.eq            #0x76cbfc
    // 0x76cad0: r3 as int
    //     0x76cad0: mov             x0, x3
    //     0x76cad4: mov             x2, NULL
    //     0x76cad8: mov             x1, NULL
    //     0x76cadc: tbz             w0, #0, #0x76cb04
    //     0x76cae0: ldur            x4, [x0, #-1]
    //     0x76cae4: ubfx            x4, x4, #0xc, #0x14
    //     0x76cae8: sub             x4, x4, #0x3c
    //     0x76caec: cmp             x4, #1
    //     0x76caf0: b.ls            #0x76cb04
    //     0x76caf4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76caf8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a88] Null
    //     0x76cafc: ldr             x3, [x3, #0xa88]
    //     0x76cb00: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76cb04: ldur            x1, [fp, #-0x70]
    // 0x76cb08: ldur            x0, [fp, #-0x78]
    // 0x76cb0c: LoadField: r2 = r1->field_f
    //     0x76cb0c: ldur            w2, [x1, #0xf]
    // 0x76cb10: DecompressPointer r2
    //     0x76cb10: add             x2, x2, HEAP, lsl #32
    // 0x76cb14: stur            x2, [fp, #-0x80]
    // 0x76cb18: r0 = sVa()
    //     0x76cb18: bl              #0x76cc00  ; AllocatesVaStub -> sVa (size=0x14)
    // 0x76cb1c: mov             x1, x0
    // 0x76cb20: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76cb24: StoreField: r1->field_f = r0
    //     0x76cb24: stur            w0, [x1, #0xf]
    // 0x76cb28: ldur            x0, [fp, #-0x80]
    // 0x76cb2c: StoreField: r1->field_b = r0
    //     0x76cb2c: stur            w0, [x1, #0xb]
    // 0x76cb30: ldur            x4, [fp, #-0x78]
    // 0x76cb34: r3 = LoadInt32Instr(r4)
    //     0x76cb34: sbfx            x3, x4, #1, #0x1f
    //     0x76cb38: tbz             w4, #0, #0x76cb40
    //     0x76cb3c: ldur            x3, [x4, #7]
    // 0x76cb40: mov             x2, x1
    // 0x76cb44: mov             x1, x0
    // 0x76cb48: r0 = call 0x392f90
    //     0x76cb48: bl              #0x392f90
    // 0x76cb4c: r16 = true
    //     0x76cb4c: add             x16, NULL, #0x20  ; true
    // 0x76cb50: str             x16, [SP]
    // 0x76cb54: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76cb54: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76cb58: ldr             x4, [x4, #0x870]
    // 0x76cb5c: r0 = call 0x392d98
    //     0x76cb5c: bl              #0x392d98
    // 0x76cb60: r0 = ReturnAsyncNotFuture()
    //     0x76cb60: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cb64: sub             SP, fp, #0x90
    // 0x76cb68: r1 = 60
    //     0x76cb68: movz            x1, #0x3c
    // 0x76cb6c: branchIfSmi(r0, 0x76cb78)
    //     0x76cb6c: tbz             w0, #0, #0x76cb78
    // 0x76cb70: r1 = LoadClassIdInstr(r0)
    //     0x76cb70: ldur            x1, [x0, #-1]
    //     0x76cb74: ubfx            x1, x1, #0xc, #0x14
    // 0x76cb78: cmp             x1, #0x5e5
    // 0x76cb7c: b.ne            #0x76cb94
    // 0x76cb80: str             x0, [SP]
    // 0x76cb84: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cb84: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cb88: ldr             x4, [x4, #0x878]
    // 0x76cb8c: r0 = call 0x392d98
    //     0x76cb8c: bl              #0x392d98
    // 0x76cb90: r0 = ReturnAsyncNotFuture()
    //     0x76cb90: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cb94: r1 = 60
    //     0x76cb94: movz            x1, #0x3c
    // 0x76cb98: branchIfSmi(r0, 0x76cba4)
    //     0x76cb98: tbz             w0, #0, #0x76cba4
    // 0x76cb9c: r1 = LoadClassIdInstr(r0)
    //     0x76cb9c: ldur            x1, [x0, #-1]
    //     0x76cba0: ubfx            x1, x1, #0xc, #0x14
    // 0x76cba4: str             x0, [SP]
    // 0x76cba8: mov             x0, x1
    // 0x76cbac: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76cbac: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76cbb0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76cbb0: movz            x17, #0x3a5d
    //     0x76cbb4: add             lr, x0, x17
    //     0x76cbb8: ldr             lr, [x21, lr, lsl #3]
    //     0x76cbbc: blr             lr
    // 0x76cbc0: stur            x0, [fp, #-0x70]
    // 0x76cbc4: r0 = Mha()
    //     0x76cbc4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76cbc8: mov             x1, x0
    // 0x76cbcc: r0 = "error"
    //     0x76cbcc: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76cbd0: StoreField: r1->field_7 = r0
    //     0x76cbd0: stur            w0, [x1, #7]
    // 0x76cbd4: ldur            x0, [fp, #-0x70]
    // 0x76cbd8: StoreField: r1->field_b = r0
    //     0x76cbd8: stur            w0, [x1, #0xb]
    // 0x76cbdc: str             x1, [SP]
    // 0x76cbe0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cbe0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cbe4: ldr             x4, [x4, #0x878]
    // 0x76cbe8: r0 = call 0x392d98
    //     0x76cbe8: bl              #0x392d98
    // 0x76cbec: r0 = ReturnAsyncNotFuture()
    //     0x76cbec: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cbf0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76cbf0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76cbf4: b               #0x76ca50
    // 0x76cbf8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cbf8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76cbfc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cbfc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 382, size: 0x14, field offset: 0x10
class rVa extends OUa {

  late final _RUa _Lvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76cc0c, size: 0x1f0
    // 0x76cc0c: EnterFrame
    //     0x76cc0c: stp             fp, lr, [SP, #-0x10]!
    //     0x76cc10: mov             fp, SP
    // 0x76cc14: AllocStack(0x90)
    //     0x76cc14: sub             SP, SP, #0x90
    // 0x76cc18: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76cc18: stur            NULL, [fp, #-8]
    //     0x76cc1c: movz            x0, #0
    //     0x76cc20: add             x1, fp, w0, sxtw #2
    //     0x76cc24: ldr             x1, [x1, #0x18]
    //     0x76cc28: add             x2, fp, w0, sxtw #2
    //     0x76cc2c: ldr             x2, [x2, #0x10]
    //     0x76cc30: stur            x2, [fp, #-0x78]
    //     0x76cc34: ldur            w3, [x1, #0x17]
    //     0x76cc38: add             x3, x3, HEAP, lsl #32
    //     0x76cc3c: stur            x3, [fp, #-0x70]
    // 0x76cc40: CheckStackOverflow
    //     0x76cc40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76cc44: cmp             SP, x16
    //     0x76cc48: b.ls            #0x76cdec
    // 0x76cc4c: InitAsync() -> Future<List<Object?>>
    //     0x76cc4c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76cc50: ldr             x0, [x0, #0x1d0]
    //     0x76cc54: bl              #0x74ada8  ; InitAsyncStub
    // 0x76cc58: ldur            x3, [fp, #-0x78]
    // 0x76cc5c: cmp             w3, NULL
    // 0x76cc60: b.eq            #0x76cdf4
    // 0x76cc64: mov             x0, x3
    // 0x76cc68: r2 = Null
    //     0x76cc68: mov             x2, NULL
    // 0x76cc6c: r1 = Null
    //     0x76cc6c: mov             x1, NULL
    // 0x76cc70: r4 = 60
    //     0x76cc70: movz            x4, #0x3c
    // 0x76cc74: branchIfSmi(r0, 0x76cc80)
    //     0x76cc74: tbz             w0, #0, #0x76cc80
    // 0x76cc78: r4 = LoadClassIdInstr(r0)
    //     0x76cc78: ldur            x4, [x0, #-1]
    //     0x76cc7c: ubfx            x4, x4, #0xc, #0x14
    // 0x76cc80: sub             x4, x4, #0x5a
    // 0x76cc84: cmp             x4, #2
    // 0x76cc88: b.ls            #0x76cc9c
    // 0x76cc8c: r8 = List<Object?>
    //     0x76cc8c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76cc90: r3 = Null
    //     0x76cc90: add             x3, PP, #0x19, lsl #12  ; [pp+0x19aa8] Null
    //     0x76cc94: ldr             x3, [x3, #0xaa8]
    // 0x76cc98: r0 = List<Object?>()
    //     0x76cc98: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76cc9c: ldur            x0, [fp, #-0x78]
    // 0x76cca0: r1 = LoadClassIdInstr(r0)
    //     0x76cca0: ldur            x1, [x0, #-1]
    //     0x76cca4: ubfx            x1, x1, #0xc, #0x14
    // 0x76cca8: stp             xzr, x0, [SP]
    // 0x76ccac: mov             x0, x1
    // 0x76ccb0: mov             lr, x0
    // 0x76ccb4: ldr             lr, [x21, lr, lsl #3]
    // 0x76ccb8: blr             lr
    // 0x76ccbc: mov             x3, x0
    // 0x76ccc0: stur            x3, [fp, #-0x78]
    // 0x76ccc4: cmp             w3, NULL
    // 0x76ccc8: b.eq            #0x76cdf8
    // 0x76cccc: r3 as int
    //     0x76cccc: mov             x0, x3
    //     0x76ccd0: mov             x2, NULL
    //     0x76ccd4: mov             x1, NULL
    //     0x76ccd8: tbz             w0, #0, #0x76cd00
    //     0x76ccdc: ldur            x4, [x0, #-1]
    //     0x76cce0: ubfx            x4, x4, #0xc, #0x14
    //     0x76cce4: sub             x4, x4, #0x3c
    //     0x76cce8: cmp             x4, #1
    //     0x76ccec: b.ls            #0x76cd00
    //     0x76ccf0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76ccf4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ab8] Null
    //     0x76ccf8: ldr             x3, [x3, #0xab8]
    //     0x76ccfc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76cd00: ldur            x1, [fp, #-0x70]
    // 0x76cd04: ldur            x0, [fp, #-0x78]
    // 0x76cd08: LoadField: r2 = r1->field_f
    //     0x76cd08: ldur            w2, [x1, #0xf]
    // 0x76cd0c: DecompressPointer r2
    //     0x76cd0c: add             x2, x2, HEAP, lsl #32
    // 0x76cd10: stur            x2, [fp, #-0x80]
    // 0x76cd14: r0 = rVa()
    //     0x76cd14: bl              #0x76cdfc  ; AllocaterVaStub -> rVa (size=0x14)
    // 0x76cd18: mov             x1, x0
    // 0x76cd1c: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76cd20: StoreField: r1->field_f = r0
    //     0x76cd20: stur            w0, [x1, #0xf]
    // 0x76cd24: ldur            x0, [fp, #-0x80]
    // 0x76cd28: StoreField: r1->field_b = r0
    //     0x76cd28: stur            w0, [x1, #0xb]
    // 0x76cd2c: ldur            x4, [fp, #-0x78]
    // 0x76cd30: r3 = LoadInt32Instr(r4)
    //     0x76cd30: sbfx            x3, x4, #1, #0x1f
    //     0x76cd34: tbz             w4, #0, #0x76cd3c
    //     0x76cd38: ldur            x3, [x4, #7]
    // 0x76cd3c: mov             x2, x1
    // 0x76cd40: mov             x1, x0
    // 0x76cd44: r0 = call 0x392f90
    //     0x76cd44: bl              #0x392f90
    // 0x76cd48: r16 = true
    //     0x76cd48: add             x16, NULL, #0x20  ; true
    // 0x76cd4c: str             x16, [SP]
    // 0x76cd50: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76cd50: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76cd54: ldr             x4, [x4, #0x870]
    // 0x76cd58: r0 = call 0x392d98
    //     0x76cd58: bl              #0x392d98
    // 0x76cd5c: r0 = ReturnAsyncNotFuture()
    //     0x76cd5c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cd60: sub             SP, fp, #0x90
    // 0x76cd64: r1 = 60
    //     0x76cd64: movz            x1, #0x3c
    // 0x76cd68: branchIfSmi(r0, 0x76cd74)
    //     0x76cd68: tbz             w0, #0, #0x76cd74
    // 0x76cd6c: r1 = LoadClassIdInstr(r0)
    //     0x76cd6c: ldur            x1, [x0, #-1]
    //     0x76cd70: ubfx            x1, x1, #0xc, #0x14
    // 0x76cd74: cmp             x1, #0x5e5
    // 0x76cd78: b.ne            #0x76cd90
    // 0x76cd7c: str             x0, [SP]
    // 0x76cd80: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cd80: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cd84: ldr             x4, [x4, #0x878]
    // 0x76cd88: r0 = call 0x392d98
    //     0x76cd88: bl              #0x392d98
    // 0x76cd8c: r0 = ReturnAsyncNotFuture()
    //     0x76cd8c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cd90: r1 = 60
    //     0x76cd90: movz            x1, #0x3c
    // 0x76cd94: branchIfSmi(r0, 0x76cda0)
    //     0x76cd94: tbz             w0, #0, #0x76cda0
    // 0x76cd98: r1 = LoadClassIdInstr(r0)
    //     0x76cd98: ldur            x1, [x0, #-1]
    //     0x76cd9c: ubfx            x1, x1, #0xc, #0x14
    // 0x76cda0: str             x0, [SP]
    // 0x76cda4: mov             x0, x1
    // 0x76cda8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76cda8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76cdac: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76cdac: movz            x17, #0x3a5d
    //     0x76cdb0: add             lr, x0, x17
    //     0x76cdb4: ldr             lr, [x21, lr, lsl #3]
    //     0x76cdb8: blr             lr
    // 0x76cdbc: stur            x0, [fp, #-0x70]
    // 0x76cdc0: r0 = Mha()
    //     0x76cdc0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76cdc4: mov             x1, x0
    // 0x76cdc8: r0 = "error"
    //     0x76cdc8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76cdcc: StoreField: r1->field_7 = r0
    //     0x76cdcc: stur            w0, [x1, #7]
    // 0x76cdd0: ldur            x0, [fp, #-0x70]
    // 0x76cdd4: StoreField: r1->field_b = r0
    //     0x76cdd4: stur            w0, [x1, #0xb]
    // 0x76cdd8: str             x1, [SP]
    // 0x76cddc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cddc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cde0: ldr             x4, [x4, #0x878]
    // 0x76cde4: r0 = call 0x392d98
    //     0x76cde4: bl              #0x392d98
    // 0x76cde8: r0 = ReturnAsyncNotFuture()
    //     0x76cde8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cdec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76cdec: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76cdf0: b               #0x76cc4c
    // 0x76cdf4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cdf4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76cdf8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cdf8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 383, size: 0x14, field offset: 0x10
class qVa extends OUa {

  late final _RUa _ewf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76ce08, size: 0x1f0
    // 0x76ce08: EnterFrame
    //     0x76ce08: stp             fp, lr, [SP, #-0x10]!
    //     0x76ce0c: mov             fp, SP
    // 0x76ce10: AllocStack(0x90)
    //     0x76ce10: sub             SP, SP, #0x90
    // 0x76ce14: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76ce14: stur            NULL, [fp, #-8]
    //     0x76ce18: movz            x0, #0
    //     0x76ce1c: add             x1, fp, w0, sxtw #2
    //     0x76ce20: ldr             x1, [x1, #0x18]
    //     0x76ce24: add             x2, fp, w0, sxtw #2
    //     0x76ce28: ldr             x2, [x2, #0x10]
    //     0x76ce2c: stur            x2, [fp, #-0x78]
    //     0x76ce30: ldur            w3, [x1, #0x17]
    //     0x76ce34: add             x3, x3, HEAP, lsl #32
    //     0x76ce38: stur            x3, [fp, #-0x70]
    // 0x76ce3c: CheckStackOverflow
    //     0x76ce3c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76ce40: cmp             SP, x16
    //     0x76ce44: b.ls            #0x76cfe8
    // 0x76ce48: InitAsync() -> Future<List<Object?>>
    //     0x76ce48: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76ce4c: ldr             x0, [x0, #0x1d0]
    //     0x76ce50: bl              #0x74ada8  ; InitAsyncStub
    // 0x76ce54: ldur            x3, [fp, #-0x78]
    // 0x76ce58: cmp             w3, NULL
    // 0x76ce5c: b.eq            #0x76cff0
    // 0x76ce60: mov             x0, x3
    // 0x76ce64: r2 = Null
    //     0x76ce64: mov             x2, NULL
    // 0x76ce68: r1 = Null
    //     0x76ce68: mov             x1, NULL
    // 0x76ce6c: r4 = 60
    //     0x76ce6c: movz            x4, #0x3c
    // 0x76ce70: branchIfSmi(r0, 0x76ce7c)
    //     0x76ce70: tbz             w0, #0, #0x76ce7c
    // 0x76ce74: r4 = LoadClassIdInstr(r0)
    //     0x76ce74: ldur            x4, [x0, #-1]
    //     0x76ce78: ubfx            x4, x4, #0xc, #0x14
    // 0x76ce7c: sub             x4, x4, #0x5a
    // 0x76ce80: cmp             x4, #2
    // 0x76ce84: b.ls            #0x76ce98
    // 0x76ce88: r8 = List<Object?>
    //     0x76ce88: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76ce8c: r3 = Null
    //     0x76ce8c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ad8] Null
    //     0x76ce90: ldr             x3, [x3, #0xad8]
    // 0x76ce94: r0 = List<Object?>()
    //     0x76ce94: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76ce98: ldur            x0, [fp, #-0x78]
    // 0x76ce9c: r1 = LoadClassIdInstr(r0)
    //     0x76ce9c: ldur            x1, [x0, #-1]
    //     0x76cea0: ubfx            x1, x1, #0xc, #0x14
    // 0x76cea4: stp             xzr, x0, [SP]
    // 0x76cea8: mov             x0, x1
    // 0x76ceac: mov             lr, x0
    // 0x76ceb0: ldr             lr, [x21, lr, lsl #3]
    // 0x76ceb4: blr             lr
    // 0x76ceb8: mov             x3, x0
    // 0x76cebc: stur            x3, [fp, #-0x78]
    // 0x76cec0: cmp             w3, NULL
    // 0x76cec4: b.eq            #0x76cff4
    // 0x76cec8: r3 as int
    //     0x76cec8: mov             x0, x3
    //     0x76cecc: mov             x2, NULL
    //     0x76ced0: mov             x1, NULL
    //     0x76ced4: tbz             w0, #0, #0x76cefc
    //     0x76ced8: ldur            x4, [x0, #-1]
    //     0x76cedc: ubfx            x4, x4, #0xc, #0x14
    //     0x76cee0: sub             x4, x4, #0x3c
    //     0x76cee4: cmp             x4, #1
    //     0x76cee8: b.ls            #0x76cefc
    //     0x76ceec: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76cef0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae8] Null
    //     0x76cef4: ldr             x3, [x3, #0xae8]
    //     0x76cef8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76cefc: ldur            x1, [fp, #-0x70]
    // 0x76cf00: ldur            x0, [fp, #-0x78]
    // 0x76cf04: LoadField: r2 = r1->field_f
    //     0x76cf04: ldur            w2, [x1, #0xf]
    // 0x76cf08: DecompressPointer r2
    //     0x76cf08: add             x2, x2, HEAP, lsl #32
    // 0x76cf0c: stur            x2, [fp, #-0x80]
    // 0x76cf10: r0 = qVa()
    //     0x76cf10: bl              #0x76cff8  ; AllocateqVaStub -> qVa (size=0x14)
    // 0x76cf14: mov             x1, x0
    // 0x76cf18: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76cf1c: StoreField: r1->field_f = r0
    //     0x76cf1c: stur            w0, [x1, #0xf]
    // 0x76cf20: ldur            x0, [fp, #-0x80]
    // 0x76cf24: StoreField: r1->field_b = r0
    //     0x76cf24: stur            w0, [x1, #0xb]
    // 0x76cf28: ldur            x4, [fp, #-0x78]
    // 0x76cf2c: r3 = LoadInt32Instr(r4)
    //     0x76cf2c: sbfx            x3, x4, #1, #0x1f
    //     0x76cf30: tbz             w4, #0, #0x76cf38
    //     0x76cf34: ldur            x3, [x4, #7]
    // 0x76cf38: mov             x2, x1
    // 0x76cf3c: mov             x1, x0
    // 0x76cf40: r0 = call 0x392f90
    //     0x76cf40: bl              #0x392f90
    // 0x76cf44: r16 = true
    //     0x76cf44: add             x16, NULL, #0x20  ; true
    // 0x76cf48: str             x16, [SP]
    // 0x76cf4c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76cf4c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76cf50: ldr             x4, [x4, #0x870]
    // 0x76cf54: r0 = call 0x392d98
    //     0x76cf54: bl              #0x392d98
    // 0x76cf58: r0 = ReturnAsyncNotFuture()
    //     0x76cf58: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cf5c: sub             SP, fp, #0x90
    // 0x76cf60: r1 = 60
    //     0x76cf60: movz            x1, #0x3c
    // 0x76cf64: branchIfSmi(r0, 0x76cf70)
    //     0x76cf64: tbz             w0, #0, #0x76cf70
    // 0x76cf68: r1 = LoadClassIdInstr(r0)
    //     0x76cf68: ldur            x1, [x0, #-1]
    //     0x76cf6c: ubfx            x1, x1, #0xc, #0x14
    // 0x76cf70: cmp             x1, #0x5e5
    // 0x76cf74: b.ne            #0x76cf8c
    // 0x76cf78: str             x0, [SP]
    // 0x76cf7c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cf7c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cf80: ldr             x4, [x4, #0x878]
    // 0x76cf84: r0 = call 0x392d98
    //     0x76cf84: bl              #0x392d98
    // 0x76cf88: r0 = ReturnAsyncNotFuture()
    //     0x76cf88: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cf8c: r1 = 60
    //     0x76cf8c: movz            x1, #0x3c
    // 0x76cf90: branchIfSmi(r0, 0x76cf9c)
    //     0x76cf90: tbz             w0, #0, #0x76cf9c
    // 0x76cf94: r1 = LoadClassIdInstr(r0)
    //     0x76cf94: ldur            x1, [x0, #-1]
    //     0x76cf98: ubfx            x1, x1, #0xc, #0x14
    // 0x76cf9c: str             x0, [SP]
    // 0x76cfa0: mov             x0, x1
    // 0x76cfa4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76cfa4: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76cfa8: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76cfa8: movz            x17, #0x3a5d
    //     0x76cfac: add             lr, x0, x17
    //     0x76cfb0: ldr             lr, [x21, lr, lsl #3]
    //     0x76cfb4: blr             lr
    // 0x76cfb8: stur            x0, [fp, #-0x70]
    // 0x76cfbc: r0 = Mha()
    //     0x76cfbc: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76cfc0: mov             x1, x0
    // 0x76cfc4: r0 = "error"
    //     0x76cfc4: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76cfc8: StoreField: r1->field_7 = r0
    //     0x76cfc8: stur            w0, [x1, #7]
    // 0x76cfcc: ldur            x0, [fp, #-0x70]
    // 0x76cfd0: StoreField: r1->field_b = r0
    //     0x76cfd0: stur            w0, [x1, #0xb]
    // 0x76cfd4: str             x1, [SP]
    // 0x76cfd8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76cfd8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76cfdc: ldr             x4, [x4, #0x878]
    // 0x76cfe0: r0 = call 0x392d98
    //     0x76cfe0: bl              #0x392d98
    // 0x76cfe4: r0 = ReturnAsyncNotFuture()
    //     0x76cfe4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76cfe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76cfe8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76cfec: b               #0x76ce48
    // 0x76cff0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cff0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76cff4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76cff4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 384, size: 0x14, field offset: 0x10
class pVa extends OUa {

  late final _RUa _Ivf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76d1f0, size: 0x1f0
    // 0x76d1f0: EnterFrame
    //     0x76d1f0: stp             fp, lr, [SP, #-0x10]!
    //     0x76d1f4: mov             fp, SP
    // 0x76d1f8: AllocStack(0x90)
    //     0x76d1f8: sub             SP, SP, #0x90
    // 0x76d1fc: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76d1fc: stur            NULL, [fp, #-8]
    //     0x76d200: movz            x0, #0
    //     0x76d204: add             x1, fp, w0, sxtw #2
    //     0x76d208: ldr             x1, [x1, #0x18]
    //     0x76d20c: add             x2, fp, w0, sxtw #2
    //     0x76d210: ldr             x2, [x2, #0x10]
    //     0x76d214: stur            x2, [fp, #-0x78]
    //     0x76d218: ldur            w3, [x1, #0x17]
    //     0x76d21c: add             x3, x3, HEAP, lsl #32
    //     0x76d220: stur            x3, [fp, #-0x70]
    // 0x76d224: CheckStackOverflow
    //     0x76d224: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76d228: cmp             SP, x16
    //     0x76d22c: b.ls            #0x76d3d0
    // 0x76d230: InitAsync() -> Future<List<Object?>>
    //     0x76d230: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76d234: ldr             x0, [x0, #0x1d0]
    //     0x76d238: bl              #0x74ada8  ; InitAsyncStub
    // 0x76d23c: ldur            x3, [fp, #-0x78]
    // 0x76d240: cmp             w3, NULL
    // 0x76d244: b.eq            #0x76d3d8
    // 0x76d248: mov             x0, x3
    // 0x76d24c: r2 = Null
    //     0x76d24c: mov             x2, NULL
    // 0x76d250: r1 = Null
    //     0x76d250: mov             x1, NULL
    // 0x76d254: r4 = 60
    //     0x76d254: movz            x4, #0x3c
    // 0x76d258: branchIfSmi(r0, 0x76d264)
    //     0x76d258: tbz             w0, #0, #0x76d264
    // 0x76d25c: r4 = LoadClassIdInstr(r0)
    //     0x76d25c: ldur            x4, [x0, #-1]
    //     0x76d260: ubfx            x4, x4, #0xc, #0x14
    // 0x76d264: sub             x4, x4, #0x5a
    // 0x76d268: cmp             x4, #2
    // 0x76d26c: b.ls            #0x76d280
    // 0x76d270: r8 = List<Object?>
    //     0x76d270: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d274: r3 = Null
    //     0x76d274: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b38] Null
    //     0x76d278: ldr             x3, [x3, #0xb38]
    // 0x76d27c: r0 = List<Object?>()
    //     0x76d27c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d280: ldur            x0, [fp, #-0x78]
    // 0x76d284: r1 = LoadClassIdInstr(r0)
    //     0x76d284: ldur            x1, [x0, #-1]
    //     0x76d288: ubfx            x1, x1, #0xc, #0x14
    // 0x76d28c: stp             xzr, x0, [SP]
    // 0x76d290: mov             x0, x1
    // 0x76d294: mov             lr, x0
    // 0x76d298: ldr             lr, [x21, lr, lsl #3]
    // 0x76d29c: blr             lr
    // 0x76d2a0: mov             x3, x0
    // 0x76d2a4: stur            x3, [fp, #-0x78]
    // 0x76d2a8: cmp             w3, NULL
    // 0x76d2ac: b.eq            #0x76d3dc
    // 0x76d2b0: r3 as int
    //     0x76d2b0: mov             x0, x3
    //     0x76d2b4: mov             x2, NULL
    //     0x76d2b8: mov             x1, NULL
    //     0x76d2bc: tbz             w0, #0, #0x76d2e4
    //     0x76d2c0: ldur            x4, [x0, #-1]
    //     0x76d2c4: ubfx            x4, x4, #0xc, #0x14
    //     0x76d2c8: sub             x4, x4, #0x3c
    //     0x76d2cc: cmp             x4, #1
    //     0x76d2d0: b.ls            #0x76d2e4
    //     0x76d2d4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76d2d8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b48] Null
    //     0x76d2dc: ldr             x3, [x3, #0xb48]
    //     0x76d2e0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76d2e4: ldur            x1, [fp, #-0x70]
    // 0x76d2e8: ldur            x0, [fp, #-0x78]
    // 0x76d2ec: LoadField: r2 = r1->field_f
    //     0x76d2ec: ldur            w2, [x1, #0xf]
    // 0x76d2f0: DecompressPointer r2
    //     0x76d2f0: add             x2, x2, HEAP, lsl #32
    // 0x76d2f4: stur            x2, [fp, #-0x80]
    // 0x76d2f8: r0 = pVa()
    //     0x76d2f8: bl              #0x76d3e0  ; AllocatepVaStub -> pVa (size=0x14)
    // 0x76d2fc: mov             x1, x0
    // 0x76d300: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76d304: StoreField: r1->field_f = r0
    //     0x76d304: stur            w0, [x1, #0xf]
    // 0x76d308: ldur            x0, [fp, #-0x80]
    // 0x76d30c: StoreField: r1->field_b = r0
    //     0x76d30c: stur            w0, [x1, #0xb]
    // 0x76d310: ldur            x4, [fp, #-0x78]
    // 0x76d314: r3 = LoadInt32Instr(r4)
    //     0x76d314: sbfx            x3, x4, #1, #0x1f
    //     0x76d318: tbz             w4, #0, #0x76d320
    //     0x76d31c: ldur            x3, [x4, #7]
    // 0x76d320: mov             x2, x1
    // 0x76d324: mov             x1, x0
    // 0x76d328: r0 = call 0x392f90
    //     0x76d328: bl              #0x392f90
    // 0x76d32c: r16 = true
    //     0x76d32c: add             x16, NULL, #0x20  ; true
    // 0x76d330: str             x16, [SP]
    // 0x76d334: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76d334: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76d338: ldr             x4, [x4, #0x870]
    // 0x76d33c: r0 = call 0x392d98
    //     0x76d33c: bl              #0x392d98
    // 0x76d340: r0 = ReturnAsyncNotFuture()
    //     0x76d340: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d344: sub             SP, fp, #0x90
    // 0x76d348: r1 = 60
    //     0x76d348: movz            x1, #0x3c
    // 0x76d34c: branchIfSmi(r0, 0x76d358)
    //     0x76d34c: tbz             w0, #0, #0x76d358
    // 0x76d350: r1 = LoadClassIdInstr(r0)
    //     0x76d350: ldur            x1, [x0, #-1]
    //     0x76d354: ubfx            x1, x1, #0xc, #0x14
    // 0x76d358: cmp             x1, #0x5e5
    // 0x76d35c: b.ne            #0x76d374
    // 0x76d360: str             x0, [SP]
    // 0x76d364: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d364: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d368: ldr             x4, [x4, #0x878]
    // 0x76d36c: r0 = call 0x392d98
    //     0x76d36c: bl              #0x392d98
    // 0x76d370: r0 = ReturnAsyncNotFuture()
    //     0x76d370: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d374: r1 = 60
    //     0x76d374: movz            x1, #0x3c
    // 0x76d378: branchIfSmi(r0, 0x76d384)
    //     0x76d378: tbz             w0, #0, #0x76d384
    // 0x76d37c: r1 = LoadClassIdInstr(r0)
    //     0x76d37c: ldur            x1, [x0, #-1]
    //     0x76d380: ubfx            x1, x1, #0xc, #0x14
    // 0x76d384: str             x0, [SP]
    // 0x76d388: mov             x0, x1
    // 0x76d38c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76d38c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76d390: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76d390: movz            x17, #0x3a5d
    //     0x76d394: add             lr, x0, x17
    //     0x76d398: ldr             lr, [x21, lr, lsl #3]
    //     0x76d39c: blr             lr
    // 0x76d3a0: stur            x0, [fp, #-0x70]
    // 0x76d3a4: r0 = Mha()
    //     0x76d3a4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76d3a8: mov             x1, x0
    // 0x76d3ac: r0 = "error"
    //     0x76d3ac: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76d3b0: StoreField: r1->field_7 = r0
    //     0x76d3b0: stur            w0, [x1, #7]
    // 0x76d3b4: ldur            x0, [fp, #-0x70]
    // 0x76d3b8: StoreField: r1->field_b = r0
    //     0x76d3b8: stur            w0, [x1, #0xb]
    // 0x76d3bc: str             x1, [SP]
    // 0x76d3c0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d3c0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d3c4: ldr             x4, [x4, #0x878]
    // 0x76d3c8: r0 = call 0x392d98
    //     0x76d3c8: bl              #0x392d98
    // 0x76d3cc: r0 = ReturnAsyncNotFuture()
    //     0x76d3cc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d3d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76d3d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76d3d4: b               #0x76d230
    // 0x76d3d8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d3d8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76d3dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d3dc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 385, size: 0x18, field offset: 0x10
class oVa extends OUa {

  late final _RUa _fwf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76d3ec, size: 0x298
    // 0x76d3ec: EnterFrame
    //     0x76d3ec: stp             fp, lr, [SP, #-0x10]!
    //     0x76d3f0: mov             fp, SP
    // 0x76d3f4: AllocStack(0xa0)
    //     0x76d3f4: sub             SP, SP, #0xa0
    // 0x76d3f8: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x76d3f8: stur            NULL, [fp, #-8]
    //     0x76d3fc: movz            x0, #0
    //     0x76d400: add             x1, fp, w0, sxtw #2
    //     0x76d404: ldr             x1, [x1, #0x18]
    //     0x76d408: add             x2, fp, w0, sxtw #2
    //     0x76d40c: ldr             x2, [x2, #0x10]
    //     0x76d410: stur            x2, [fp, #-0x80]
    //     0x76d414: ldur            w3, [x1, #0x17]
    //     0x76d418: add             x3, x3, HEAP, lsl #32
    //     0x76d41c: stur            x3, [fp, #-0x78]
    // 0x76d420: CheckStackOverflow
    //     0x76d420: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76d424: cmp             SP, x16
    //     0x76d428: b.ls            #0x76d670
    // 0x76d42c: InitAsync() -> Future<List<Object?>>
    //     0x76d42c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76d430: ldr             x0, [x0, #0x1d0]
    //     0x76d434: bl              #0x74ada8  ; InitAsyncStub
    // 0x76d438: ldur            x3, [fp, #-0x80]
    // 0x76d43c: cmp             w3, NULL
    // 0x76d440: b.eq            #0x76d678
    // 0x76d444: mov             x0, x3
    // 0x76d448: r2 = Null
    //     0x76d448: mov             x2, NULL
    // 0x76d44c: r1 = Null
    //     0x76d44c: mov             x1, NULL
    // 0x76d450: r4 = 60
    //     0x76d450: movz            x4, #0x3c
    // 0x76d454: branchIfSmi(r0, 0x76d460)
    //     0x76d454: tbz             w0, #0, #0x76d460
    // 0x76d458: r4 = LoadClassIdInstr(r0)
    //     0x76d458: ldur            x4, [x0, #-1]
    //     0x76d45c: ubfx            x4, x4, #0xc, #0x14
    // 0x76d460: sub             x4, x4, #0x5a
    // 0x76d464: cmp             x4, #2
    // 0x76d468: b.ls            #0x76d47c
    // 0x76d46c: r8 = List<Object?>
    //     0x76d46c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d470: r3 = Null
    //     0x76d470: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b68] Null
    //     0x76d474: ldr             x3, [x3, #0xb68]
    // 0x76d478: r0 = List<Object?>()
    //     0x76d478: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d47c: ldur            x1, [fp, #-0x80]
    // 0x76d480: r0 = LoadClassIdInstr(r1)
    //     0x76d480: ldur            x0, [x1, #-1]
    //     0x76d484: ubfx            x0, x0, #0xc, #0x14
    // 0x76d488: stp             xzr, x1, [SP]
    // 0x76d48c: mov             lr, x0
    // 0x76d490: ldr             lr, [x21, lr, lsl #3]
    // 0x76d494: blr             lr
    // 0x76d498: mov             x3, x0
    // 0x76d49c: stur            x3, [fp, #-0x88]
    // 0x76d4a0: cmp             w3, NULL
    // 0x76d4a4: b.eq            #0x76d67c
    // 0x76d4a8: r3 as int
    //     0x76d4a8: mov             x0, x3
    //     0x76d4ac: mov             x2, NULL
    //     0x76d4b0: mov             x1, NULL
    //     0x76d4b4: tbz             w0, #0, #0x76d4dc
    //     0x76d4b8: ldur            x4, [x0, #-1]
    //     0x76d4bc: ubfx            x4, x4, #0xc, #0x14
    //     0x76d4c0: sub             x4, x4, #0x3c
    //     0x76d4c4: cmp             x4, #1
    //     0x76d4c8: b.ls            #0x76d4dc
    //     0x76d4cc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76d4d0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b78] Null
    //     0x76d4d4: ldr             x3, [x3, #0xb78]
    //     0x76d4d8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76d4dc: ldur            x0, [fp, #-0x80]
    // 0x76d4e0: r1 = LoadClassIdInstr(r0)
    //     0x76d4e0: ldur            x1, [x0, #-1]
    //     0x76d4e4: ubfx            x1, x1, #0xc, #0x14
    // 0x76d4e8: r16 = 2
    //     0x76d4e8: movz            x16, #0x2
    // 0x76d4ec: stp             x16, x0, [SP]
    // 0x76d4f0: mov             x0, x1
    // 0x76d4f4: mov             lr, x0
    // 0x76d4f8: ldr             lr, [x21, lr, lsl #3]
    // 0x76d4fc: blr             lr
    // 0x76d500: mov             x3, x0
    // 0x76d504: stur            x3, [fp, #-0x80]
    // 0x76d508: cmp             w3, NULL
    // 0x76d50c: b.eq            #0x76d680
    // 0x76d510: mov             x0, x3
    // 0x76d514: r2 = Null
    //     0x76d514: mov             x2, NULL
    // 0x76d518: r1 = Null
    //     0x76d518: mov             x1, NULL
    // 0x76d51c: r4 = 60
    //     0x76d51c: movz            x4, #0x3c
    // 0x76d520: branchIfSmi(r0, 0x76d52c)
    //     0x76d520: tbz             w0, #0, #0x76d52c
    // 0x76d524: r4 = LoadClassIdInstr(r0)
    //     0x76d524: ldur            x4, [x0, #-1]
    //     0x76d528: ubfx            x4, x4, #0xc, #0x14
    // 0x76d52c: sub             x4, x4, #0x5a
    // 0x76d530: cmp             x4, #2
    // 0x76d534: b.ls            #0x76d548
    // 0x76d538: r8 = List<Object?>
    //     0x76d538: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d53c: r3 = Null
    //     0x76d53c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b88] Null
    //     0x76d540: ldr             x3, [x3, #0xb88]
    // 0x76d544: r0 = List<Object?>()
    //     0x76d544: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d548: ldur            x0, [fp, #-0x80]
    // 0x76d54c: r1 = LoadClassIdInstr(r0)
    //     0x76d54c: ldur            x1, [x0, #-1]
    //     0x76d550: ubfx            x1, x1, #0xc, #0x14
    // 0x76d554: r16 = <String>
    //     0x76d554: ldr             x16, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x76d558: stp             x0, x16, [SP]
    // 0x76d55c: mov             x0, x1
    // 0x76d560: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x76d560: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x76d564: r0 = GDT[cid_x0 + 0xbfb1]()
    //     0x76d564: movz            x17, #0xbfb1
    //     0x76d568: add             lr, x0, x17
    //     0x76d56c: ldr             lr, [x21, lr, lsl #3]
    //     0x76d570: blr             lr
    // 0x76d574: stur            x0, [fp, #-0x90]
    // 0x76d578: ldur            x2, [fp, #-0x78]
    // 0x76d57c: ldur            x1, [fp, #-0x88]
    // 0x76d580: LoadField: r3 = r2->field_f
    //     0x76d580: ldur            w3, [x2, #0xf]
    // 0x76d584: DecompressPointer r3
    //     0x76d584: add             x3, x3, HEAP, lsl #32
    // 0x76d588: stur            x3, [fp, #-0x80]
    // 0x76d58c: r0 = oVa()
    //     0x76d58c: bl              #0x76d684  ; AllocateoVaStub -> oVa (size=0x18)
    // 0x76d590: mov             x1, x0
    // 0x76d594: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x76d598: StoreField: r1->field_f = r0
    //     0x76d598: stur            w0, [x1, #0xf]
    // 0x76d59c: ldur            x0, [fp, #-0x90]
    // 0x76d5a0: StoreField: r1->field_13 = r0
    //     0x76d5a0: stur            w0, [x1, #0x13]
    // 0x76d5a4: ldur            x2, [fp, #-0x80]
    // 0x76d5a8: StoreField: r1->field_b = r2
    //     0x76d5a8: stur            w2, [x1, #0xb]
    // 0x76d5ac: ldur            x4, [fp, #-0x88]
    // 0x76d5b0: r3 = LoadInt32Instr(r4)
    //     0x76d5b0: sbfx            x3, x4, #1, #0x1f
    //     0x76d5b4: tbz             w4, #0, #0x76d5bc
    //     0x76d5b8: ldur            x3, [x4, #7]
    // 0x76d5bc: mov             x16, x1
    // 0x76d5c0: mov             x1, x2
    // 0x76d5c4: mov             x2, x16
    // 0x76d5c8: r0 = call 0x392f90
    //     0x76d5c8: bl              #0x392f90
    // 0x76d5cc: r16 = true
    //     0x76d5cc: add             x16, NULL, #0x20  ; true
    // 0x76d5d0: str             x16, [SP]
    // 0x76d5d4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76d5d4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76d5d8: ldr             x4, [x4, #0x870]
    // 0x76d5dc: r0 = call 0x392d98
    //     0x76d5dc: bl              #0x392d98
    // 0x76d5e0: r0 = ReturnAsyncNotFuture()
    //     0x76d5e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d5e4: sub             SP, fp, #0xa0
    // 0x76d5e8: r1 = 60
    //     0x76d5e8: movz            x1, #0x3c
    // 0x76d5ec: branchIfSmi(r0, 0x76d5f8)
    //     0x76d5ec: tbz             w0, #0, #0x76d5f8
    // 0x76d5f0: r1 = LoadClassIdInstr(r0)
    //     0x76d5f0: ldur            x1, [x0, #-1]
    //     0x76d5f4: ubfx            x1, x1, #0xc, #0x14
    // 0x76d5f8: cmp             x1, #0x5e5
    // 0x76d5fc: b.ne            #0x76d614
    // 0x76d600: str             x0, [SP]
    // 0x76d604: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d604: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d608: ldr             x4, [x4, #0x878]
    // 0x76d60c: r0 = call 0x392d98
    //     0x76d60c: bl              #0x392d98
    // 0x76d610: r0 = ReturnAsyncNotFuture()
    //     0x76d610: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d614: r1 = 60
    //     0x76d614: movz            x1, #0x3c
    // 0x76d618: branchIfSmi(r0, 0x76d624)
    //     0x76d618: tbz             w0, #0, #0x76d624
    // 0x76d61c: r1 = LoadClassIdInstr(r0)
    //     0x76d61c: ldur            x1, [x0, #-1]
    //     0x76d620: ubfx            x1, x1, #0xc, #0x14
    // 0x76d624: str             x0, [SP]
    // 0x76d628: mov             x0, x1
    // 0x76d62c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76d62c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76d630: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76d630: movz            x17, #0x3a5d
    //     0x76d634: add             lr, x0, x17
    //     0x76d638: ldr             lr, [x21, lr, lsl #3]
    //     0x76d63c: blr             lr
    // 0x76d640: stur            x0, [fp, #-0x78]
    // 0x76d644: r0 = Mha()
    //     0x76d644: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76d648: mov             x1, x0
    // 0x76d64c: r0 = "error"
    //     0x76d64c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76d650: StoreField: r1->field_7 = r0
    //     0x76d650: stur            w0, [x1, #7]
    // 0x76d654: ldur            x0, [fp, #-0x78]
    // 0x76d658: StoreField: r1->field_b = r0
    //     0x76d658: stur            w0, [x1, #0xb]
    // 0x76d65c: str             x1, [SP]
    // 0x76d660: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d660: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d664: ldr             x4, [x4, #0x878]
    // 0x76d668: r0 = call 0x392d98
    //     0x76d668: bl              #0x392d98
    // 0x76d66c: r0 = ReturnAsyncNotFuture()
    //     0x76d66c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d670: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76d670: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76d674: b               #0x76d42c
    // 0x76d678: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d678: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76d67c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d67c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76d680: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d680: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 386, size: 0x20, field offset: 0x10
class nVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76d690, size: 0x3f0
    // 0x76d690: EnterFrame
    //     0x76d690: stp             fp, lr, [SP, #-0x10]!
    //     0x76d694: mov             fp, SP
    // 0x76d698: AllocStack(0xd0)
    //     0x76d698: sub             SP, SP, #0xd0
    // 0x76d69c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x76d69c: stur            NULL, [fp, #-8]
    //     0x76d6a0: movz            x0, #0
    //     0x76d6a4: add             x1, fp, w0, sxtw #2
    //     0x76d6a8: ldr             x1, [x1, #0x18]
    //     0x76d6ac: add             x2, fp, w0, sxtw #2
    //     0x76d6b0: ldr             x2, [x2, #0x10]
    //     0x76d6b4: stur            x2, [fp, #-0x98]
    //     0x76d6b8: ldur            w3, [x1, #0x17]
    //     0x76d6bc: add             x3, x3, HEAP, lsl #32
    //     0x76d6c0: stur            x3, [fp, #-0x90]
    // 0x76d6c4: CheckStackOverflow
    //     0x76d6c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76d6c8: cmp             SP, x16
    //     0x76d6cc: b.ls            #0x76da64
    // 0x76d6d0: InitAsync() -> Future<List<Object?>>
    //     0x76d6d0: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76d6d4: ldr             x0, [x0, #0x1d0]
    //     0x76d6d8: bl              #0x74ada8  ; InitAsyncStub
    // 0x76d6dc: ldur            x3, [fp, #-0x98]
    // 0x76d6e0: cmp             w3, NULL
    // 0x76d6e4: b.eq            #0x76da6c
    // 0x76d6e8: mov             x0, x3
    // 0x76d6ec: r2 = Null
    //     0x76d6ec: mov             x2, NULL
    // 0x76d6f0: r1 = Null
    //     0x76d6f0: mov             x1, NULL
    // 0x76d6f4: r4 = 60
    //     0x76d6f4: movz            x4, #0x3c
    // 0x76d6f8: branchIfSmi(r0, 0x76d704)
    //     0x76d6f8: tbz             w0, #0, #0x76d704
    // 0x76d6fc: r4 = LoadClassIdInstr(r0)
    //     0x76d6fc: ldur            x4, [x0, #-1]
    //     0x76d700: ubfx            x4, x4, #0xc, #0x14
    // 0x76d704: sub             x4, x4, #0x5a
    // 0x76d708: cmp             x4, #2
    // 0x76d70c: b.ls            #0x76d720
    // 0x76d710: r8 = List<Object?>
    //     0x76d710: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d714: r3 = Null
    //     0x76d714: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ba8] Null
    //     0x76d718: ldr             x3, [x3, #0xba8]
    // 0x76d71c: r0 = List<Object?>()
    //     0x76d71c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d720: ldur            x1, [fp, #-0x98]
    // 0x76d724: r0 = LoadClassIdInstr(r1)
    //     0x76d724: ldur            x0, [x1, #-1]
    //     0x76d728: ubfx            x0, x0, #0xc, #0x14
    // 0x76d72c: stp             xzr, x1, [SP]
    // 0x76d730: mov             lr, x0
    // 0x76d734: ldr             lr, [x21, lr, lsl #3]
    // 0x76d738: blr             lr
    // 0x76d73c: mov             x3, x0
    // 0x76d740: stur            x3, [fp, #-0xa0]
    // 0x76d744: cmp             w3, NULL
    // 0x76d748: b.eq            #0x76da70
    // 0x76d74c: r3 as int
    //     0x76d74c: mov             x0, x3
    //     0x76d750: mov             x2, NULL
    //     0x76d754: mov             x1, NULL
    //     0x76d758: tbz             w0, #0, #0x76d780
    //     0x76d75c: ldur            x4, [x0, #-1]
    //     0x76d760: ubfx            x4, x4, #0xc, #0x14
    //     0x76d764: sub             x4, x4, #0x3c
    //     0x76d768: cmp             x4, #1
    //     0x76d76c: b.ls            #0x76d780
    //     0x76d770: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76d774: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bb8] Null
    //     0x76d778: ldr             x3, [x3, #0xbb8]
    //     0x76d77c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76d780: ldur            x1, [fp, #-0x98]
    // 0x76d784: r0 = LoadClassIdInstr(r1)
    //     0x76d784: ldur            x0, [x1, #-1]
    //     0x76d788: ubfx            x0, x0, #0xc, #0x14
    // 0x76d78c: r16 = 2
    //     0x76d78c: movz            x16, #0x2
    // 0x76d790: stp             x16, x1, [SP]
    // 0x76d794: mov             lr, x0
    // 0x76d798: ldr             lr, [x21, lr, lsl #3]
    // 0x76d79c: blr             lr
    // 0x76d7a0: mov             x3, x0
    // 0x76d7a4: stur            x3, [fp, #-0xa8]
    // 0x76d7a8: cmp             w3, NULL
    // 0x76d7ac: b.eq            #0x76da74
    // 0x76d7b0: mov             x0, x3
    // 0x76d7b4: r2 = Null
    //     0x76d7b4: mov             x2, NULL
    // 0x76d7b8: r1 = Null
    //     0x76d7b8: mov             x1, NULL
    // 0x76d7bc: r4 = 60
    //     0x76d7bc: movz            x4, #0x3c
    // 0x76d7c0: branchIfSmi(r0, 0x76d7cc)
    //     0x76d7c0: tbz             w0, #0, #0x76d7cc
    // 0x76d7c4: r4 = LoadClassIdInstr(r0)
    //     0x76d7c4: ldur            x4, [x0, #-1]
    //     0x76d7c8: ubfx            x4, x4, #0xc, #0x14
    // 0x76d7cc: cmp             x4, #0x3f
    // 0x76d7d0: b.eq            #0x76d7e4
    // 0x76d7d4: r8 = bool
    //     0x76d7d4: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x76d7d8: r3 = Null
    //     0x76d7d8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bc8] Null
    //     0x76d7dc: ldr             x3, [x3, #0xbc8]
    // 0x76d7e0: r0 = bool()
    //     0x76d7e0: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x76d7e4: ldur            x1, [fp, #-0x98]
    // 0x76d7e8: r0 = LoadClassIdInstr(r1)
    //     0x76d7e8: ldur            x0, [x1, #-1]
    //     0x76d7ec: ubfx            x0, x0, #0xc, #0x14
    // 0x76d7f0: r16 = 4
    //     0x76d7f0: movz            x16, #0x4
    // 0x76d7f4: stp             x16, x1, [SP]
    // 0x76d7f8: mov             lr, x0
    // 0x76d7fc: ldr             lr, [x21, lr, lsl #3]
    // 0x76d800: blr             lr
    // 0x76d804: mov             x3, x0
    // 0x76d808: stur            x3, [fp, #-0xb0]
    // 0x76d80c: cmp             w3, NULL
    // 0x76d810: b.eq            #0x76da78
    // 0x76d814: mov             x0, x3
    // 0x76d818: r2 = Null
    //     0x76d818: mov             x2, NULL
    // 0x76d81c: r1 = Null
    //     0x76d81c: mov             x1, NULL
    // 0x76d820: r4 = 60
    //     0x76d820: movz            x4, #0x3c
    // 0x76d824: branchIfSmi(r0, 0x76d830)
    //     0x76d824: tbz             w0, #0, #0x76d830
    // 0x76d828: r4 = LoadClassIdInstr(r0)
    //     0x76d828: ldur            x4, [x0, #-1]
    //     0x76d82c: ubfx            x4, x4, #0xc, #0x14
    // 0x76d830: sub             x4, x4, #0x5a
    // 0x76d834: cmp             x4, #2
    // 0x76d838: b.ls            #0x76d84c
    // 0x76d83c: r8 = List<Object?>
    //     0x76d83c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d840: r3 = Null
    //     0x76d840: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bd8] Null
    //     0x76d844: ldr             x3, [x3, #0xbd8]
    // 0x76d848: r0 = List<Object?>()
    //     0x76d848: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d84c: ldur            x0, [fp, #-0xb0]
    // 0x76d850: r1 = LoadClassIdInstr(r0)
    //     0x76d850: ldur            x1, [x0, #-1]
    //     0x76d854: ubfx            x1, x1, #0xc, #0x14
    // 0x76d858: r16 = <String>
    //     0x76d858: ldr             x16, [PP, #0x198]  ; [pp+0x198] TypeArguments: <String>
    // 0x76d85c: stp             x0, x16, [SP]
    // 0x76d860: mov             x0, x1
    // 0x76d864: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x76d864: ldr             x4, [PP, #0x7c8]  ; [pp+0x7c8] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x76d868: r0 = GDT[cid_x0 + 0xbfb1]()
    //     0x76d868: movz            x17, #0xbfb1
    //     0x76d86c: add             lr, x0, x17
    //     0x76d870: ldr             lr, [x21, lr, lsl #3]
    //     0x76d874: blr             lr
    // 0x76d878: mov             x2, x0
    // 0x76d87c: ldur            x1, [fp, #-0x98]
    // 0x76d880: stur            x2, [fp, #-0xb0]
    // 0x76d884: r0 = LoadClassIdInstr(r1)
    //     0x76d884: ldur            x0, [x1, #-1]
    //     0x76d888: ubfx            x0, x0, #0xc, #0x14
    // 0x76d88c: r16 = 6
    //     0x76d88c: movz            x16, #0x6
    // 0x76d890: stp             x16, x1, [SP]
    // 0x76d894: mov             lr, x0
    // 0x76d898: ldr             lr, [x21, lr, lsl #3]
    // 0x76d89c: blr             lr
    // 0x76d8a0: mov             x3, x0
    // 0x76d8a4: stur            x3, [fp, #-0xb8]
    // 0x76d8a8: cmp             w3, NULL
    // 0x76d8ac: b.eq            #0x76da7c
    // 0x76d8b0: mov             x0, x3
    // 0x76d8b4: r2 = Null
    //     0x76d8b4: mov             x2, NULL
    // 0x76d8b8: r1 = Null
    //     0x76d8b8: mov             x1, NULL
    // 0x76d8bc: r4 = 60
    //     0x76d8bc: movz            x4, #0x3c
    // 0x76d8c0: branchIfSmi(r0, 0x76d8cc)
    //     0x76d8c0: tbz             w0, #0, #0x76d8cc
    // 0x76d8c4: r4 = LoadClassIdInstr(r0)
    //     0x76d8c4: ldur            x4, [x0, #-1]
    //     0x76d8c8: ubfx            x4, x4, #0xc, #0x14
    // 0x76d8cc: r17 = 5365
    //     0x76d8cc: movz            x17, #0x14f5
    // 0x76d8d0: cmp             x4, x17
    // 0x76d8d4: b.eq            #0x76d8ec
    // 0x76d8d8: r8 = SUa
    //     0x76d8d8: add             x8, PP, #0x19, lsl #12  ; [pp+0x19be8] Type: SUa
    //     0x76d8dc: ldr             x8, [x8, #0xbe8]
    // 0x76d8e0: r3 = Null
    //     0x76d8e0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bf0] Null
    //     0x76d8e4: ldr             x3, [x3, #0xbf0]
    // 0x76d8e8: r0 = DefaultTypeTest()
    //     0x76d8e8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76d8ec: ldur            x0, [fp, #-0x98]
    // 0x76d8f0: r1 = LoadClassIdInstr(r0)
    //     0x76d8f0: ldur            x1, [x0, #-1]
    //     0x76d8f4: ubfx            x1, x1, #0xc, #0x14
    // 0x76d8f8: r16 = 8
    //     0x76d8f8: movz            x16, #0x8
    // 0x76d8fc: stp             x16, x0, [SP]
    // 0x76d900: mov             x0, x1
    // 0x76d904: mov             lr, x0
    // 0x76d908: ldr             lr, [x21, lr, lsl #3]
    // 0x76d90c: blr             lr
    // 0x76d910: mov             x3, x0
    // 0x76d914: r2 = Null
    //     0x76d914: mov             x2, NULL
    // 0x76d918: r1 = Null
    //     0x76d918: mov             x1, NULL
    // 0x76d91c: stur            x3, [fp, #-0x98]
    // 0x76d920: r4 = 60
    //     0x76d920: movz            x4, #0x3c
    // 0x76d924: branchIfSmi(r0, 0x76d930)
    //     0x76d924: tbz             w0, #0, #0x76d930
    // 0x76d928: r4 = LoadClassIdInstr(r0)
    //     0x76d928: ldur            x4, [x0, #-1]
    //     0x76d92c: ubfx            x4, x4, #0xc, #0x14
    // 0x76d930: sub             x4, x4, #0x5e
    // 0x76d934: cmp             x4, #1
    // 0x76d938: b.ls            #0x76d94c
    // 0x76d93c: r8 = String?
    //     0x76d93c: ldr             x8, [PP, #0x3738]  ; [pp+0x3738] Type: String?
    // 0x76d940: r3 = Null
    //     0x76d940: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c00] Null
    //     0x76d944: ldr             x3, [x3, #0xc00]
    // 0x76d948: r0 = String?()
    //     0x76d948: bl              #0x746e44  ; IsType_String?_Stub
    // 0x76d94c: ldur            x5, [fp, #-0x90]
    // 0x76d950: ldur            x4, [fp, #-0xa0]
    // 0x76d954: ldur            x3, [fp, #-0xa8]
    // 0x76d958: ldur            x2, [fp, #-0xb0]
    // 0x76d95c: ldur            x1, [fp, #-0xb8]
    // 0x76d960: ldur            x0, [fp, #-0x98]
    // 0x76d964: LoadField: r6 = r5->field_f
    //     0x76d964: ldur            w6, [x5, #0xf]
    // 0x76d968: DecompressPointer r6
    //     0x76d968: add             x6, x6, HEAP, lsl #32
    // 0x76d96c: stur            x6, [fp, #-0xc0]
    // 0x76d970: r0 = nVa()
    //     0x76d970: bl              #0x76da80  ; AllocatenVaStub -> nVa (size=0x20)
    // 0x76d974: mov             x1, x0
    // 0x76d978: ldur            x0, [fp, #-0xa8]
    // 0x76d97c: StoreField: r1->field_f = r0
    //     0x76d97c: stur            w0, [x1, #0xf]
    // 0x76d980: ldur            x4, [fp, #-0xb0]
    // 0x76d984: StoreField: r1->field_13 = r4
    //     0x76d984: stur            w4, [x1, #0x13]
    // 0x76d988: ldur            x5, [fp, #-0xb8]
    // 0x76d98c: ArrayStore: r1[0] = r5  ; List_4
    //     0x76d98c: stur            w5, [x1, #0x17]
    // 0x76d990: ldur            x6, [fp, #-0x98]
    // 0x76d994: StoreField: r1->field_1b = r6
    //     0x76d994: stur            w6, [x1, #0x1b]
    // 0x76d998: ldur            x2, [fp, #-0xc0]
    // 0x76d99c: StoreField: r1->field_b = r2
    //     0x76d99c: stur            w2, [x1, #0xb]
    // 0x76d9a0: ldur            x7, [fp, #-0xa0]
    // 0x76d9a4: r3 = LoadInt32Instr(r7)
    //     0x76d9a4: sbfx            x3, x7, #1, #0x1f
    //     0x76d9a8: tbz             w7, #0, #0x76d9b0
    //     0x76d9ac: ldur            x3, [x7, #7]
    // 0x76d9b0: mov             x16, x1
    // 0x76d9b4: mov             x1, x2
    // 0x76d9b8: mov             x2, x16
    // 0x76d9bc: r0 = call 0x392f90
    //     0x76d9bc: bl              #0x392f90
    // 0x76d9c0: r16 = true
    //     0x76d9c0: add             x16, NULL, #0x20  ; true
    // 0x76d9c4: str             x16, [SP]
    // 0x76d9c8: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76d9c8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76d9cc: ldr             x4, [x4, #0x870]
    // 0x76d9d0: r0 = call 0x392d98
    //     0x76d9d0: bl              #0x392d98
    // 0x76d9d4: r0 = ReturnAsyncNotFuture()
    //     0x76d9d4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d9d8: sub             SP, fp, #0xd0
    // 0x76d9dc: r1 = 60
    //     0x76d9dc: movz            x1, #0x3c
    // 0x76d9e0: branchIfSmi(r0, 0x76d9ec)
    //     0x76d9e0: tbz             w0, #0, #0x76d9ec
    // 0x76d9e4: r1 = LoadClassIdInstr(r0)
    //     0x76d9e4: ldur            x1, [x0, #-1]
    //     0x76d9e8: ubfx            x1, x1, #0xc, #0x14
    // 0x76d9ec: cmp             x1, #0x5e5
    // 0x76d9f0: b.ne            #0x76da08
    // 0x76d9f4: str             x0, [SP]
    // 0x76d9f8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d9f8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d9fc: ldr             x4, [x4, #0x878]
    // 0x76da00: r0 = call 0x392d98
    //     0x76da00: bl              #0x392d98
    // 0x76da04: r0 = ReturnAsyncNotFuture()
    //     0x76da04: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76da08: r1 = 60
    //     0x76da08: movz            x1, #0x3c
    // 0x76da0c: branchIfSmi(r0, 0x76da18)
    //     0x76da0c: tbz             w0, #0, #0x76da18
    // 0x76da10: r1 = LoadClassIdInstr(r0)
    //     0x76da10: ldur            x1, [x0, #-1]
    //     0x76da14: ubfx            x1, x1, #0xc, #0x14
    // 0x76da18: str             x0, [SP]
    // 0x76da1c: mov             x0, x1
    // 0x76da20: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76da20: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76da24: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76da24: movz            x17, #0x3a5d
    //     0x76da28: add             lr, x0, x17
    //     0x76da2c: ldr             lr, [x21, lr, lsl #3]
    //     0x76da30: blr             lr
    // 0x76da34: stur            x0, [fp, #-0x90]
    // 0x76da38: r0 = Mha()
    //     0x76da38: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76da3c: mov             x1, x0
    // 0x76da40: r0 = "error"
    //     0x76da40: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76da44: StoreField: r1->field_7 = r0
    //     0x76da44: stur            w0, [x1, #7]
    // 0x76da48: ldur            x0, [fp, #-0x90]
    // 0x76da4c: StoreField: r1->field_b = r0
    //     0x76da4c: stur            w0, [x1, #0xb]
    // 0x76da50: str             x1, [SP]
    // 0x76da54: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76da54: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76da58: ldr             x4, [x4, #0x878]
    // 0x76da5c: r0 = call 0x392d98
    //     0x76da5c: bl              #0x392d98
    // 0x76da60: r0 = ReturnAsyncNotFuture()
    //     0x76da60: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76da64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76da64: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76da68: b               #0x76d6d0
    // 0x76da6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76da6c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76da70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76da70: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76da74: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76da74: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76da78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76da78: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76da7c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76da7c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 387, size: 0x10, field offset: 0x10
class mVa extends OUa {

  static late final mVa _Nzc; // offset: 0xb38

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76da8c, size: 0x1e0
    // 0x76da8c: EnterFrame
    //     0x76da8c: stp             fp, lr, [SP, #-0x10]!
    //     0x76da90: mov             fp, SP
    // 0x76da94: AllocStack(0x90)
    //     0x76da94: sub             SP, SP, #0x90
    // 0x76da98: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76da98: stur            NULL, [fp, #-8]
    //     0x76da9c: movz            x0, #0
    //     0x76daa0: add             x1, fp, w0, sxtw #2
    //     0x76daa4: ldr             x1, [x1, #0x18]
    //     0x76daa8: add             x2, fp, w0, sxtw #2
    //     0x76daac: ldr             x2, [x2, #0x10]
    //     0x76dab0: stur            x2, [fp, #-0x78]
    //     0x76dab4: ldur            w3, [x1, #0x17]
    //     0x76dab8: add             x3, x3, HEAP, lsl #32
    //     0x76dabc: stur            x3, [fp, #-0x70]
    // 0x76dac0: CheckStackOverflow
    //     0x76dac0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76dac4: cmp             SP, x16
    //     0x76dac8: b.ls            #0x76dc5c
    // 0x76dacc: InitAsync() -> Future<List<Object?>>
    //     0x76dacc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76dad0: ldr             x0, [x0, #0x1d0]
    //     0x76dad4: bl              #0x74ada8  ; InitAsyncStub
    // 0x76dad8: ldur            x3, [fp, #-0x78]
    // 0x76dadc: cmp             w3, NULL
    // 0x76dae0: b.eq            #0x76dc64
    // 0x76dae4: mov             x0, x3
    // 0x76dae8: r2 = Null
    //     0x76dae8: mov             x2, NULL
    // 0x76daec: r1 = Null
    //     0x76daec: mov             x1, NULL
    // 0x76daf0: r4 = 60
    //     0x76daf0: movz            x4, #0x3c
    // 0x76daf4: branchIfSmi(r0, 0x76db00)
    //     0x76daf4: tbz             w0, #0, #0x76db00
    // 0x76daf8: r4 = LoadClassIdInstr(r0)
    //     0x76daf8: ldur            x4, [x0, #-1]
    //     0x76dafc: ubfx            x4, x4, #0xc, #0x14
    // 0x76db00: sub             x4, x4, #0x5a
    // 0x76db04: cmp             x4, #2
    // 0x76db08: b.ls            #0x76db1c
    // 0x76db0c: r8 = List<Object?>
    //     0x76db0c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76db10: r3 = Null
    //     0x76db10: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c20] Null
    //     0x76db14: ldr             x3, [x3, #0xc20]
    // 0x76db18: r0 = List<Object?>()
    //     0x76db18: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76db1c: ldur            x0, [fp, #-0x78]
    // 0x76db20: r1 = LoadClassIdInstr(r0)
    //     0x76db20: ldur            x1, [x0, #-1]
    //     0x76db24: ubfx            x1, x1, #0xc, #0x14
    // 0x76db28: stp             xzr, x0, [SP]
    // 0x76db2c: mov             x0, x1
    // 0x76db30: mov             lr, x0
    // 0x76db34: ldr             lr, [x21, lr, lsl #3]
    // 0x76db38: blr             lr
    // 0x76db3c: mov             x3, x0
    // 0x76db40: stur            x3, [fp, #-0x78]
    // 0x76db44: cmp             w3, NULL
    // 0x76db48: b.eq            #0x76dc68
    // 0x76db4c: r3 as int
    //     0x76db4c: mov             x0, x3
    //     0x76db50: mov             x2, NULL
    //     0x76db54: mov             x1, NULL
    //     0x76db58: tbz             w0, #0, #0x76db80
    //     0x76db5c: ldur            x4, [x0, #-1]
    //     0x76db60: ubfx            x4, x4, #0xc, #0x14
    //     0x76db64: sub             x4, x4, #0x3c
    //     0x76db68: cmp             x4, #1
    //     0x76db6c: b.ls            #0x76db80
    //     0x76db70: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76db74: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c30] Null
    //     0x76db78: ldr             x3, [x3, #0xc30]
    //     0x76db7c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76db80: ldur            x1, [fp, #-0x70]
    // 0x76db84: ldur            x0, [fp, #-0x78]
    // 0x76db88: LoadField: r2 = r1->field_f
    //     0x76db88: ldur            w2, [x1, #0xf]
    // 0x76db8c: DecompressPointer r2
    //     0x76db8c: add             x2, x2, HEAP, lsl #32
    // 0x76db90: stur            x2, [fp, #-0x80]
    // 0x76db94: r0 = mVa()
    //     0x76db94: bl              #0x76dc6c  ; AllocatemVaStub -> mVa (size=0x10)
    // 0x76db98: ldur            x1, [fp, #-0x80]
    // 0x76db9c: StoreField: r0->field_b = r1
    //     0x76db9c: stur            w1, [x0, #0xb]
    // 0x76dba0: ldur            x4, [fp, #-0x78]
    // 0x76dba4: r3 = LoadInt32Instr(r4)
    //     0x76dba4: sbfx            x3, x4, #1, #0x1f
    //     0x76dba8: tbz             w4, #0, #0x76dbb0
    //     0x76dbac: ldur            x3, [x4, #7]
    // 0x76dbb0: mov             x2, x0
    // 0x76dbb4: r0 = call 0x392f90
    //     0x76dbb4: bl              #0x392f90
    // 0x76dbb8: r16 = true
    //     0x76dbb8: add             x16, NULL, #0x20  ; true
    // 0x76dbbc: str             x16, [SP]
    // 0x76dbc0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76dbc0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76dbc4: ldr             x4, [x4, #0x870]
    // 0x76dbc8: r0 = call 0x392d98
    //     0x76dbc8: bl              #0x392d98
    // 0x76dbcc: r0 = ReturnAsyncNotFuture()
    //     0x76dbcc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76dbd0: sub             SP, fp, #0x90
    // 0x76dbd4: r1 = 60
    //     0x76dbd4: movz            x1, #0x3c
    // 0x76dbd8: branchIfSmi(r0, 0x76dbe4)
    //     0x76dbd8: tbz             w0, #0, #0x76dbe4
    // 0x76dbdc: r1 = LoadClassIdInstr(r0)
    //     0x76dbdc: ldur            x1, [x0, #-1]
    //     0x76dbe0: ubfx            x1, x1, #0xc, #0x14
    // 0x76dbe4: cmp             x1, #0x5e5
    // 0x76dbe8: b.ne            #0x76dc00
    // 0x76dbec: str             x0, [SP]
    // 0x76dbf0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76dbf0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76dbf4: ldr             x4, [x4, #0x878]
    // 0x76dbf8: r0 = call 0x392d98
    //     0x76dbf8: bl              #0x392d98
    // 0x76dbfc: r0 = ReturnAsyncNotFuture()
    //     0x76dbfc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76dc00: r1 = 60
    //     0x76dc00: movz            x1, #0x3c
    // 0x76dc04: branchIfSmi(r0, 0x76dc10)
    //     0x76dc04: tbz             w0, #0, #0x76dc10
    // 0x76dc08: r1 = LoadClassIdInstr(r0)
    //     0x76dc08: ldur            x1, [x0, #-1]
    //     0x76dc0c: ubfx            x1, x1, #0xc, #0x14
    // 0x76dc10: str             x0, [SP]
    // 0x76dc14: mov             x0, x1
    // 0x76dc18: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76dc18: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76dc1c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76dc1c: movz            x17, #0x3a5d
    //     0x76dc20: add             lr, x0, x17
    //     0x76dc24: ldr             lr, [x21, lr, lsl #3]
    //     0x76dc28: blr             lr
    // 0x76dc2c: stur            x0, [fp, #-0x70]
    // 0x76dc30: r0 = Mha()
    //     0x76dc30: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76dc34: mov             x1, x0
    // 0x76dc38: r0 = "error"
    //     0x76dc38: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76dc3c: StoreField: r1->field_7 = r0
    //     0x76dc3c: stur            w0, [x1, #7]
    // 0x76dc40: ldur            x0, [fp, #-0x70]
    // 0x76dc44: StoreField: r1->field_b = r0
    //     0x76dc44: stur            w0, [x1, #0xb]
    // 0x76dc48: str             x1, [SP]
    // 0x76dc4c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76dc4c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76dc50: ldr             x4, [x4, #0x878]
    // 0x76dc54: r0 = call 0x392d98
    //     0x76dc54: bl              #0x392d98
    // 0x76dc58: r0 = ReturnAsyncNotFuture()
    //     0x76dc58: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76dc5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76dc5c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76dc60: b               #0x76dacc
    // 0x76dc64: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76dc64: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76dc68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76dc68: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7ad0e8, size: 0x140
    // 0x7ad0e8: EnterFrame
    //     0x7ad0e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7ad0ec: mov             fp, SP
    // 0x7ad0f0: AllocStack(0x28)
    //     0x7ad0f0: sub             SP, SP, #0x28
    // 0x7ad0f4: SetupParameters(dynamic _ /* r1 */)
    //     0x7ad0f4: stur            NULL, [fp, #-8]
    //     0x7ad0f8: movz            x0, #0
    //     0x7ad0fc: add             x1, fp, w0, sxtw #2
    //     0x7ad100: ldr             x1, [x1, #0x10]
    //     0x7ad104: ldur            w2, [x1, #0x17]
    //     0x7ad108: add             x2, x2, HEAP, lsl #32
    //     0x7ad10c: stur            x2, [fp, #-0x10]
    // 0x7ad110: CheckStackOverflow
    //     0x7ad110: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ad114: cmp             SP, x16
    //     0x7ad118: b.ls            #0x7ad220
    // 0x7ad11c: InitAsync() -> Future<Null?>
    //     0x7ad11c: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7ad120: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ad124: ldur            x0, [fp, #-0x10]
    // 0x7ad128: LoadField: r2 = r0->field_f
    //     0x7ad128: ldur            w2, [x0, #0xf]
    // 0x7ad12c: DecompressPointer r2
    //     0x7ad12c: add             x2, x2, HEAP, lsl #32
    // 0x7ad130: stur            x2, [fp, #-0x20]
    // 0x7ad134: LoadField: r3 = r0->field_13
    //     0x7ad134: ldur            w3, [x0, #0x13]
    // 0x7ad138: DecompressPointer r3
    //     0x7ad138: add             x3, x3, HEAP, lsl #32
    // 0x7ad13c: stur            x3, [fp, #-0x18]
    // 0x7ad140: r1 = <Object?>
    //     0x7ad140: ldr             x1, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x7ad144: r0 = dia()
    //     0x7ad144: bl              #0x76b574  ; AllocatediaStub -> dia<X0> (size=0x18)
    // 0x7ad148: mov             x3, x0
    // 0x7ad14c: r0 = "dev.flutter.pigeon.webview_flutter_android.WebStorage.instance"
    //     0x7ad14c: add             x0, PP, #0x23, lsl #12  ; [pp+0x23330] "dev.flutter.pigeon.webview_flutter_android.WebStorage.instance"
    //     0x7ad150: ldr             x0, [x0, #0x330]
    // 0x7ad154: stur            x3, [fp, #-0x28]
    // 0x7ad158: StoreField: r3->field_b = r0
    //     0x7ad158: stur            w0, [x3, #0xb]
    // 0x7ad15c: ldur            x1, [fp, #-0x20]
    // 0x7ad160: StoreField: r3->field_f = r1
    //     0x7ad160: stur            w1, [x3, #0xf]
    // 0x7ad164: ldur            x1, [fp, #-0x18]
    // 0x7ad168: StoreField: r3->field_13 = r1
    //     0x7ad168: stur            w1, [x3, #0x13]
    // 0x7ad16c: ldur            x4, [fp, #-0x10]
    // 0x7ad170: ArrayLoad: r5 = r4[0]  ; List_4
    //     0x7ad170: ldur            w5, [x4, #0x17]
    // 0x7ad174: DecompressPointer r5
    //     0x7ad174: add             x5, x5, HEAP, lsl #32
    // 0x7ad178: stur            x5, [fp, #-0x18]
    // 0x7ad17c: r1 = Null
    //     0x7ad17c: mov             x1, NULL
    // 0x7ad180: r2 = 2
    //     0x7ad180: movz            x2, #0x2
    // 0x7ad184: r0 = AllocateArray()
    //     0x7ad184: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7ad188: mov             x2, x0
    // 0x7ad18c: ldur            x0, [fp, #-0x18]
    // 0x7ad190: stur            x2, [fp, #-0x20]
    // 0x7ad194: StoreField: r2->field_f = r0
    //     0x7ad194: stur            w0, [x2, #0xf]
    // 0x7ad198: r1 = <Object?>
    //     0x7ad198: ldr             x1, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x7ad19c: r0 = AllocateGrowableArray()
    //     0x7ad19c: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7ad1a0: mov             x1, x0
    // 0x7ad1a4: ldur            x0, [fp, #-0x20]
    // 0x7ad1a8: StoreField: r1->field_f = r0
    //     0x7ad1a8: stur            w0, [x1, #0xf]
    // 0x7ad1ac: r0 = 2
    //     0x7ad1ac: movz            x0, #0x2
    // 0x7ad1b0: StoreField: r1->field_b = r0
    //     0x7ad1b0: stur            w0, [x1, #0xb]
    // 0x7ad1b4: mov             x2, x1
    // 0x7ad1b8: ldur            x1, [fp, #-0x28]
    // 0x7ad1bc: r0 = __unknown_function__()
    //     0x7ad1bc: bl              #0x760584  ; [] ::__unknown_function__
    // 0x7ad1c0: mov             x1, x0
    // 0x7ad1c4: stur            x1, [fp, #-0x18]
    // 0x7ad1c8: r0 = Await()
    //     0x7ad1c8: bl              #0x74ab64  ; AwaitStub
    // 0x7ad1cc: mov             x3, x0
    // 0x7ad1d0: r2 = Null
    //     0x7ad1d0: mov             x2, NULL
    // 0x7ad1d4: r1 = Null
    //     0x7ad1d4: mov             x1, NULL
    // 0x7ad1d8: stur            x3, [fp, #-0x10]
    // 0x7ad1dc: r4 = 60
    //     0x7ad1dc: movz            x4, #0x3c
    // 0x7ad1e0: branchIfSmi(r0, 0x7ad1ec)
    //     0x7ad1e0: tbz             w0, #0, #0x7ad1ec
    // 0x7ad1e4: r4 = LoadClassIdInstr(r0)
    //     0x7ad1e4: ldur            x4, [x0, #-1]
    //     0x7ad1e8: ubfx            x4, x4, #0xc, #0x14
    // 0x7ad1ec: sub             x4, x4, #0x5a
    // 0x7ad1f0: cmp             x4, #2
    // 0x7ad1f4: b.ls            #0x7ad208
    // 0x7ad1f8: r8 = List<Object?>?
    //     0x7ad1f8: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x7ad1fc: r3 = Null
    //     0x7ad1fc: add             x3, PP, #0x23, lsl #12  ; [pp+0x23338] Null
    //     0x7ad200: ldr             x3, [x3, #0x338]
    // 0x7ad204: r0 = List<Object?>?()
    //     0x7ad204: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x7ad208: ldur            x1, [fp, #-0x10]
    // 0x7ad20c: r2 = "dev.flutter.pigeon.webview_flutter_android.WebStorage.instance"
    //     0x7ad20c: add             x2, PP, #0x23, lsl #12  ; [pp+0x23330] "dev.flutter.pigeon.webview_flutter_android.WebStorage.instance"
    //     0x7ad210: ldr             x2, [x2, #0x330]
    // 0x7ad214: r0 = call 0x3951e4
    //     0x7ad214: bl              #0x3951e4
    // 0x7ad218: r0 = Null
    //     0x7ad218: mov             x0, NULL
    // 0x7ad21c: r0 = ReturnAsyncNotFuture()
    //     0x7ad21c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ad220: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ad220: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ad224: b               #0x7ad11c
  }
}

// class id: 388, size: 0x10, field offset: 0x10
class lVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76dc78, size: 0x1e0
    // 0x76dc78: EnterFrame
    //     0x76dc78: stp             fp, lr, [SP, #-0x10]!
    //     0x76dc7c: mov             fp, SP
    // 0x76dc80: AllocStack(0x90)
    //     0x76dc80: sub             SP, SP, #0x90
    // 0x76dc84: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76dc84: stur            NULL, [fp, #-8]
    //     0x76dc88: movz            x0, #0
    //     0x76dc8c: add             x1, fp, w0, sxtw #2
    //     0x76dc90: ldr             x1, [x1, #0x18]
    //     0x76dc94: add             x2, fp, w0, sxtw #2
    //     0x76dc98: ldr             x2, [x2, #0x10]
    //     0x76dc9c: stur            x2, [fp, #-0x78]
    //     0x76dca0: ldur            w3, [x1, #0x17]
    //     0x76dca4: add             x3, x3, HEAP, lsl #32
    //     0x76dca8: stur            x3, [fp, #-0x70]
    // 0x76dcac: CheckStackOverflow
    //     0x76dcac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76dcb0: cmp             SP, x16
    //     0x76dcb4: b.ls            #0x76de48
    // 0x76dcb8: InitAsync() -> Future<List<Object?>>
    //     0x76dcb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76dcbc: ldr             x0, [x0, #0x1d0]
    //     0x76dcc0: bl              #0x74ada8  ; InitAsyncStub
    // 0x76dcc4: ldur            x3, [fp, #-0x78]
    // 0x76dcc8: cmp             w3, NULL
    // 0x76dccc: b.eq            #0x76de50
    // 0x76dcd0: mov             x0, x3
    // 0x76dcd4: r2 = Null
    //     0x76dcd4: mov             x2, NULL
    // 0x76dcd8: r1 = Null
    //     0x76dcd8: mov             x1, NULL
    // 0x76dcdc: r4 = 60
    //     0x76dcdc: movz            x4, #0x3c
    // 0x76dce0: branchIfSmi(r0, 0x76dcec)
    //     0x76dce0: tbz             w0, #0, #0x76dcec
    // 0x76dce4: r4 = LoadClassIdInstr(r0)
    //     0x76dce4: ldur            x4, [x0, #-1]
    //     0x76dce8: ubfx            x4, x4, #0xc, #0x14
    // 0x76dcec: sub             x4, x4, #0x5a
    // 0x76dcf0: cmp             x4, #2
    // 0x76dcf4: b.ls            #0x76dd08
    // 0x76dcf8: r8 = List<Object?>
    //     0x76dcf8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76dcfc: r3 = Null
    //     0x76dcfc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c50] Null
    //     0x76dd00: ldr             x3, [x3, #0xc50]
    // 0x76dd04: r0 = List<Object?>()
    //     0x76dd04: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76dd08: ldur            x0, [fp, #-0x78]
    // 0x76dd0c: r1 = LoadClassIdInstr(r0)
    //     0x76dd0c: ldur            x1, [x0, #-1]
    //     0x76dd10: ubfx            x1, x1, #0xc, #0x14
    // 0x76dd14: stp             xzr, x0, [SP]
    // 0x76dd18: mov             x0, x1
    // 0x76dd1c: mov             lr, x0
    // 0x76dd20: ldr             lr, [x21, lr, lsl #3]
    // 0x76dd24: blr             lr
    // 0x76dd28: mov             x3, x0
    // 0x76dd2c: stur            x3, [fp, #-0x78]
    // 0x76dd30: cmp             w3, NULL
    // 0x76dd34: b.eq            #0x76de54
    // 0x76dd38: r3 as int
    //     0x76dd38: mov             x0, x3
    //     0x76dd3c: mov             x2, NULL
    //     0x76dd40: mov             x1, NULL
    //     0x76dd44: tbz             w0, #0, #0x76dd6c
    //     0x76dd48: ldur            x4, [x0, #-1]
    //     0x76dd4c: ubfx            x4, x4, #0xc, #0x14
    //     0x76dd50: sub             x4, x4, #0x3c
    //     0x76dd54: cmp             x4, #1
    //     0x76dd58: b.ls            #0x76dd6c
    //     0x76dd5c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76dd60: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c60] Null
    //     0x76dd64: ldr             x3, [x3, #0xc60]
    //     0x76dd68: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76dd6c: ldur            x1, [fp, #-0x70]
    // 0x76dd70: ldur            x0, [fp, #-0x78]
    // 0x76dd74: LoadField: r2 = r1->field_f
    //     0x76dd74: ldur            w2, [x1, #0xf]
    // 0x76dd78: DecompressPointer r2
    //     0x76dd78: add             x2, x2, HEAP, lsl #32
    // 0x76dd7c: stur            x2, [fp, #-0x80]
    // 0x76dd80: r0 = lVa()
    //     0x76dd80: bl              #0x76de58  ; AllocatelVaStub -> lVa (size=0x10)
    // 0x76dd84: ldur            x1, [fp, #-0x80]
    // 0x76dd88: StoreField: r0->field_b = r1
    //     0x76dd88: stur            w1, [x0, #0xb]
    // 0x76dd8c: ldur            x4, [fp, #-0x78]
    // 0x76dd90: r3 = LoadInt32Instr(r4)
    //     0x76dd90: sbfx            x3, x4, #1, #0x1f
    //     0x76dd94: tbz             w4, #0, #0x76dd9c
    //     0x76dd98: ldur            x3, [x4, #7]
    // 0x76dd9c: mov             x2, x0
    // 0x76dda0: r0 = call 0x392f90
    //     0x76dda0: bl              #0x392f90
    // 0x76dda4: r16 = true
    //     0x76dda4: add             x16, NULL, #0x20  ; true
    // 0x76dda8: str             x16, [SP]
    // 0x76ddac: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76ddac: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76ddb0: ldr             x4, [x4, #0x870]
    // 0x76ddb4: r0 = call 0x392d98
    //     0x76ddb4: bl              #0x392d98
    // 0x76ddb8: r0 = ReturnAsyncNotFuture()
    //     0x76ddb8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ddbc: sub             SP, fp, #0x90
    // 0x76ddc0: r1 = 60
    //     0x76ddc0: movz            x1, #0x3c
    // 0x76ddc4: branchIfSmi(r0, 0x76ddd0)
    //     0x76ddc4: tbz             w0, #0, #0x76ddd0
    // 0x76ddc8: r1 = LoadClassIdInstr(r0)
    //     0x76ddc8: ldur            x1, [x0, #-1]
    //     0x76ddcc: ubfx            x1, x1, #0xc, #0x14
    // 0x76ddd0: cmp             x1, #0x5e5
    // 0x76ddd4: b.ne            #0x76ddec
    // 0x76ddd8: str             x0, [SP]
    // 0x76dddc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76dddc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76dde0: ldr             x4, [x4, #0x878]
    // 0x76dde4: r0 = call 0x392d98
    //     0x76dde4: bl              #0x392d98
    // 0x76dde8: r0 = ReturnAsyncNotFuture()
    //     0x76dde8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ddec: r1 = 60
    //     0x76ddec: movz            x1, #0x3c
    // 0x76ddf0: branchIfSmi(r0, 0x76ddfc)
    //     0x76ddf0: tbz             w0, #0, #0x76ddfc
    // 0x76ddf4: r1 = LoadClassIdInstr(r0)
    //     0x76ddf4: ldur            x1, [x0, #-1]
    //     0x76ddf8: ubfx            x1, x1, #0xc, #0x14
    // 0x76ddfc: str             x0, [SP]
    // 0x76de00: mov             x0, x1
    // 0x76de04: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76de04: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76de08: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76de08: movz            x17, #0x3a5d
    //     0x76de0c: add             lr, x0, x17
    //     0x76de10: ldr             lr, [x21, lr, lsl #3]
    //     0x76de14: blr             lr
    // 0x76de18: stur            x0, [fp, #-0x70]
    // 0x76de1c: r0 = Mha()
    //     0x76de1c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76de20: mov             x1, x0
    // 0x76de24: r0 = "error"
    //     0x76de24: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76de28: StoreField: r1->field_7 = r0
    //     0x76de28: stur            w0, [x1, #7]
    // 0x76de2c: ldur            x0, [fp, #-0x70]
    // 0x76de30: StoreField: r1->field_b = r0
    //     0x76de30: stur            w0, [x1, #0xb]
    // 0x76de34: str             x1, [SP]
    // 0x76de38: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76de38: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76de3c: ldr             x4, [x4, #0x878]
    // 0x76de40: r0 = call 0x392d98
    //     0x76de40: bl              #0x392d98
    // 0x76de44: r0 = ReturnAsyncNotFuture()
    //     0x76de44: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76de48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76de48: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76de4c: b               #0x76dcb8
    // 0x76de50: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76de50: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76de54: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76de54: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 389, size: 0x40, field offset: 0x10
class kVa extends OUa {

  late final _RUa _pvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76de64, size: 0x3b4
    // 0x76de64: EnterFrame
    //     0x76de64: stp             fp, lr, [SP, #-0x10]!
    //     0x76de68: mov             fp, SP
    // 0x76de6c: AllocStack(0x100)
    //     0x76de6c: sub             SP, SP, #0x100
    // 0x76de70: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0xa0 */)
    //     0x76de70: stur            NULL, [fp, #-8]
    //     0x76de74: movz            x0, #0
    //     0x76de78: add             x1, fp, w0, sxtw #2
    //     0x76de7c: ldr             x1, [x1, #0x18]
    //     0x76de80: add             x2, fp, w0, sxtw #2
    //     0x76de84: ldr             x2, [x2, #0x10]
    //     0x76de88: stur            x2, [fp, #-0xa0]
    //     0x76de8c: ldur            w3, [x1, #0x17]
    //     0x76de90: add             x3, x3, HEAP, lsl #32
    //     0x76de94: stur            x3, [fp, #-0x98]
    // 0x76de98: CheckStackOverflow
    //     0x76de98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76de9c: cmp             SP, x16
    //     0x76dea0: b.ls            #0x76e1f4
    // 0x76dea4: InitAsync() -> Future<List<Object?>>
    //     0x76dea4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76dea8: ldr             x0, [x0, #0x1d0]
    //     0x76deac: bl              #0x74ada8  ; InitAsyncStub
    // 0x76deb0: ldur            x3, [fp, #-0xa0]
    // 0x76deb4: cmp             w3, NULL
    // 0x76deb8: b.eq            #0x76e1fc
    // 0x76debc: mov             x0, x3
    // 0x76dec0: r2 = Null
    //     0x76dec0: mov             x2, NULL
    // 0x76dec4: r1 = Null
    //     0x76dec4: mov             x1, NULL
    // 0x76dec8: r4 = 60
    //     0x76dec8: movz            x4, #0x3c
    // 0x76decc: branchIfSmi(r0, 0x76ded8)
    //     0x76decc: tbz             w0, #0, #0x76ded8
    // 0x76ded0: r4 = LoadClassIdInstr(r0)
    //     0x76ded0: ldur            x4, [x0, #-1]
    //     0x76ded4: ubfx            x4, x4, #0xc, #0x14
    // 0x76ded8: sub             x4, x4, #0x5a
    // 0x76dedc: cmp             x4, #2
    // 0x76dee0: b.ls            #0x76def4
    // 0x76dee4: r8 = List<Object?>
    //     0x76dee4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76dee8: r3 = Null
    //     0x76dee8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d20] Null
    //     0x76deec: ldr             x3, [x3, #0xd20]
    // 0x76def0: r0 = List<Object?>()
    //     0x76def0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76def4: ldur            x1, [fp, #-0xa0]
    // 0x76def8: r0 = LoadClassIdInstr(r1)
    //     0x76def8: ldur            x0, [x1, #-1]
    //     0x76defc: ubfx            x0, x0, #0xc, #0x14
    // 0x76df00: stp             xzr, x1, [SP]
    // 0x76df04: mov             lr, x0
    // 0x76df08: ldr             lr, [x21, lr, lsl #3]
    // 0x76df0c: blr             lr
    // 0x76df10: mov             x3, x0
    // 0x76df14: stur            x3, [fp, #-0xa8]
    // 0x76df18: cmp             w3, NULL
    // 0x76df1c: b.eq            #0x76e200
    // 0x76df20: mov             x0, x3
    // 0x76df24: r2 = Null
    //     0x76df24: mov             x2, NULL
    // 0x76df28: r1 = Null
    //     0x76df28: mov             x1, NULL
    // 0x76df2c: r4 = 60
    //     0x76df2c: movz            x4, #0x3c
    // 0x76df30: branchIfSmi(r0, 0x76df3c)
    //     0x76df30: tbz             w0, #0, #0x76df3c
    // 0x76df34: r4 = LoadClassIdInstr(r0)
    //     0x76df34: ldur            x4, [x0, #-1]
    //     0x76df38: ubfx            x4, x4, #0xc, #0x14
    // 0x76df3c: cmp             x4, #0x185
    // 0x76df40: b.eq            #0x76df58
    // 0x76df44: r8 = kVa
    //     0x76df44: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76df48: ldr             x8, [x8, #0xd30]
    // 0x76df4c: r3 = Null
    //     0x76df4c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d38] Null
    //     0x76df50: ldr             x3, [x3, #0xd38]
    // 0x76df54: r0 = DefaultTypeTest()
    //     0x76df54: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76df58: ldur            x1, [fp, #-0xa0]
    // 0x76df5c: r0 = LoadClassIdInstr(r1)
    //     0x76df5c: ldur            x0, [x1, #-1]
    //     0x76df60: ubfx            x0, x0, #0xc, #0x14
    // 0x76df64: r16 = 2
    //     0x76df64: movz            x16, #0x2
    // 0x76df68: stp             x16, x1, [SP]
    // 0x76df6c: mov             lr, x0
    // 0x76df70: ldr             lr, [x21, lr, lsl #3]
    // 0x76df74: blr             lr
    // 0x76df78: mov             x3, x0
    // 0x76df7c: stur            x3, [fp, #-0xb0]
    // 0x76df80: cmp             w3, NULL
    // 0x76df84: b.eq            #0x76e204
    // 0x76df88: mov             x0, x3
    // 0x76df8c: r2 = Null
    //     0x76df8c: mov             x2, NULL
    // 0x76df90: r1 = Null
    //     0x76df90: mov             x1, NULL
    // 0x76df94: r4 = 60
    //     0x76df94: movz            x4, #0x3c
    // 0x76df98: branchIfSmi(r0, 0x76dfa4)
    //     0x76df98: tbz             w0, #0, #0x76dfa4
    // 0x76df9c: r4 = LoadClassIdInstr(r0)
    //     0x76df9c: ldur            x4, [x0, #-1]
    //     0x76dfa0: ubfx            x4, x4, #0xc, #0x14
    // 0x76dfa4: cmp             x4, #0x18b
    // 0x76dfa8: b.eq            #0x76dfc0
    // 0x76dfac: r8 = fVa
    //     0x76dfac: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x76dfb0: ldr             x8, [x8, #0xd48]
    // 0x76dfb4: r3 = Null
    //     0x76dfb4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d50] Null
    //     0x76dfb8: ldr             x3, [x3, #0xd50]
    // 0x76dfbc: r0 = DefaultTypeTest()
    //     0x76dfbc: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76dfc0: ldur            x1, [fp, #-0xa0]
    // 0x76dfc4: r0 = LoadClassIdInstr(r1)
    //     0x76dfc4: ldur            x0, [x1, #-1]
    //     0x76dfc8: ubfx            x0, x0, #0xc, #0x14
    // 0x76dfcc: r16 = 4
    //     0x76dfcc: movz            x16, #0x4
    // 0x76dfd0: stp             x16, x1, [SP]
    // 0x76dfd4: mov             lr, x0
    // 0x76dfd8: ldr             lr, [x21, lr, lsl #3]
    // 0x76dfdc: blr             lr
    // 0x76dfe0: mov             x3, x0
    // 0x76dfe4: stur            x3, [fp, #-0xb8]
    // 0x76dfe8: cmp             w3, NULL
    // 0x76dfec: b.eq            #0x76e208
    // 0x76dff0: mov             x0, x3
    // 0x76dff4: r2 = Null
    //     0x76dff4: mov             x2, NULL
    // 0x76dff8: r1 = Null
    //     0x76dff8: mov             x1, NULL
    // 0x76dffc: r4 = 60
    //     0x76dffc: movz            x4, #0x3c
    // 0x76e000: branchIfSmi(r0, 0x76e00c)
    //     0x76e000: tbz             w0, #0, #0x76e00c
    // 0x76e004: r4 = LoadClassIdInstr(r0)
    //     0x76e004: ldur            x4, [x0, #-1]
    //     0x76e008: ubfx            x4, x4, #0xc, #0x14
    // 0x76e00c: sub             x4, x4, #0x5e
    // 0x76e010: cmp             x4, #1
    // 0x76e014: b.ls            #0x76e028
    // 0x76e018: r8 = String
    //     0x76e018: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e01c: r3 = Null
    //     0x76e01c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d60] Null
    //     0x76e020: ldr             x3, [x3, #0xd60]
    // 0x76e024: r0 = String()
    //     0x76e024: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e028: ldur            x1, [fp, #-0xa0]
    // 0x76e02c: r0 = LoadClassIdInstr(r1)
    //     0x76e02c: ldur            x0, [x1, #-1]
    //     0x76e030: ubfx            x0, x0, #0xc, #0x14
    // 0x76e034: r16 = 6
    //     0x76e034: movz            x16, #0x6
    // 0x76e038: stp             x16, x1, [SP]
    // 0x76e03c: mov             lr, x0
    // 0x76e040: ldr             lr, [x21, lr, lsl #3]
    // 0x76e044: blr             lr
    // 0x76e048: mov             x3, x0
    // 0x76e04c: stur            x3, [fp, #-0xc0]
    // 0x76e050: cmp             w3, NULL
    // 0x76e054: b.eq            #0x76e20c
    // 0x76e058: mov             x0, x3
    // 0x76e05c: r2 = Null
    //     0x76e05c: mov             x2, NULL
    // 0x76e060: r1 = Null
    //     0x76e060: mov             x1, NULL
    // 0x76e064: r4 = 60
    //     0x76e064: movz            x4, #0x3c
    // 0x76e068: branchIfSmi(r0, 0x76e074)
    //     0x76e068: tbz             w0, #0, #0x76e074
    // 0x76e06c: r4 = LoadClassIdInstr(r0)
    //     0x76e06c: ldur            x4, [x0, #-1]
    //     0x76e070: ubfx            x4, x4, #0xc, #0x14
    // 0x76e074: sub             x4, x4, #0x5e
    // 0x76e078: cmp             x4, #1
    // 0x76e07c: b.ls            #0x76e090
    // 0x76e080: r8 = String
    //     0x76e080: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e084: r3 = Null
    //     0x76e084: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d70] Null
    //     0x76e088: ldr             x3, [x3, #0xd70]
    // 0x76e08c: r0 = String()
    //     0x76e08c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e090: ldur            x0, [fp, #-0xa0]
    // 0x76e094: r1 = LoadClassIdInstr(r0)
    //     0x76e094: ldur            x1, [x0, #-1]
    //     0x76e098: ubfx            x1, x1, #0xc, #0x14
    // 0x76e09c: r16 = 8
    //     0x76e09c: movz            x16, #0x8
    // 0x76e0a0: stp             x16, x0, [SP]
    // 0x76e0a4: mov             x0, x1
    // 0x76e0a8: mov             lr, x0
    // 0x76e0ac: ldr             lr, [x21, lr, lsl #3]
    // 0x76e0b0: blr             lr
    // 0x76e0b4: mov             x3, x0
    // 0x76e0b8: stur            x3, [fp, #-0xa0]
    // 0x76e0bc: cmp             w3, NULL
    // 0x76e0c0: b.eq            #0x76e210
    // 0x76e0c4: mov             x0, x3
    // 0x76e0c8: r2 = Null
    //     0x76e0c8: mov             x2, NULL
    // 0x76e0cc: r1 = Null
    //     0x76e0cc: mov             x1, NULL
    // 0x76e0d0: r4 = 60
    //     0x76e0d0: movz            x4, #0x3c
    // 0x76e0d4: branchIfSmi(r0, 0x76e0e0)
    //     0x76e0d4: tbz             w0, #0, #0x76e0e0
    // 0x76e0d8: r4 = LoadClassIdInstr(r0)
    //     0x76e0d8: ldur            x4, [x0, #-1]
    //     0x76e0dc: ubfx            x4, x4, #0xc, #0x14
    // 0x76e0e0: sub             x4, x4, #0x5e
    // 0x76e0e4: cmp             x4, #1
    // 0x76e0e8: b.ls            #0x76e0fc
    // 0x76e0ec: r8 = String
    //     0x76e0ec: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e0f0: r3 = Null
    //     0x76e0f0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d80] Null
    //     0x76e0f4: ldr             x3, [x3, #0xd80]
    // 0x76e0f8: r0 = String()
    //     0x76e0f8: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e0fc: ldur            x1, [fp, #-0xa8]
    // 0x76e100: LoadField: r2 = r1->field_3b
    //     0x76e100: ldur            w2, [x1, #0x3b]
    // 0x76e104: DecompressPointer r2
    //     0x76e104: add             x2, x2, HEAP, lsl #32
    // 0x76e108: stur            x2, [fp, #-0xc8]
    // 0x76e10c: cmp             w2, NULL
    // 0x76e110: b.eq            #0x76e214
    // 0x76e114: stp             x1, x2, [SP, #0x20]
    // 0x76e118: ldur            x16, [fp, #-0xb0]
    // 0x76e11c: ldur            lr, [fp, #-0xb8]
    // 0x76e120: stp             lr, x16, [SP, #0x10]
    // 0x76e124: ldur            x16, [fp, #-0xc0]
    // 0x76e128: ldur            lr, [fp, #-0xa0]
    // 0x76e12c: stp             lr, x16, [SP]
    // 0x76e130: mov             x0, x2
    // 0x76e134: ClosureCall
    //     0x76e134: ldr             x4, [PP, #0x8b0]  ; [pp+0x8b0] List(5) [0, 0x6, 0x6, 0x6, Null]
    //     0x76e138: ldur            x2, [x0, #0x1f]
    //     0x76e13c: blr             x2
    // 0x76e140: mov             x2, x0
    // 0x76e144: r1 = <String?>
    //     0x76e144: ldr             x1, [PP, #0x688]  ; [pp+0x688] TypeArguments: <String?>
    // 0x76e148: stur            x2, [fp, #-0xd0]
    // 0x76e14c: r0 = AwaitWithTypeCheck()
    //     0x76e14c: bl              #0x752f8c  ; AwaitWithTypeCheckStub
    // 0x76e150: stur            x0, [fp, #-0xd0]
    // 0x76e154: str             x0, [SP]
    // 0x76e158: r4 = const [0, 0x1, 0x1, 0, result, 0, null]
    //     0x76e158: add             x4, PP, #0x19, lsl #12  ; [pp+0x19d90] List(7) [0, 0x1, 0x1, 0, "result", 0, Null]
    //     0x76e15c: ldr             x4, [x4, #0xd90]
    // 0x76e160: r0 = call 0x392d98
    //     0x76e160: bl              #0x392d98
    // 0x76e164: r0 = ReturnAsyncNotFuture()
    //     0x76e164: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e168: sub             SP, fp, #0x100
    // 0x76e16c: r1 = 60
    //     0x76e16c: movz            x1, #0x3c
    // 0x76e170: branchIfSmi(r0, 0x76e17c)
    //     0x76e170: tbz             w0, #0, #0x76e17c
    // 0x76e174: r1 = LoadClassIdInstr(r0)
    //     0x76e174: ldur            x1, [x0, #-1]
    //     0x76e178: ubfx            x1, x1, #0xc, #0x14
    // 0x76e17c: cmp             x1, #0x5e5
    // 0x76e180: b.ne            #0x76e198
    // 0x76e184: str             x0, [SP]
    // 0x76e188: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e188: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e18c: ldr             x4, [x4, #0x878]
    // 0x76e190: r0 = call 0x392d98
    //     0x76e190: bl              #0x392d98
    // 0x76e194: r0 = ReturnAsyncNotFuture()
    //     0x76e194: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e198: r1 = 60
    //     0x76e198: movz            x1, #0x3c
    // 0x76e19c: branchIfSmi(r0, 0x76e1a8)
    //     0x76e19c: tbz             w0, #0, #0x76e1a8
    // 0x76e1a0: r1 = LoadClassIdInstr(r0)
    //     0x76e1a0: ldur            x1, [x0, #-1]
    //     0x76e1a4: ubfx            x1, x1, #0xc, #0x14
    // 0x76e1a8: str             x0, [SP]
    // 0x76e1ac: mov             x0, x1
    // 0x76e1b0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76e1b0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76e1b4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76e1b4: movz            x17, #0x3a5d
    //     0x76e1b8: add             lr, x0, x17
    //     0x76e1bc: ldr             lr, [x21, lr, lsl #3]
    //     0x76e1c0: blr             lr
    // 0x76e1c4: stur            x0, [fp, #-0x98]
    // 0x76e1c8: r0 = Mha()
    //     0x76e1c8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76e1cc: mov             x1, x0
    // 0x76e1d0: r0 = "error"
    //     0x76e1d0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76e1d4: StoreField: r1->field_7 = r0
    //     0x76e1d4: stur            w0, [x1, #7]
    // 0x76e1d8: ldur            x0, [fp, #-0x98]
    // 0x76e1dc: StoreField: r1->field_b = r0
    //     0x76e1dc: stur            w0, [x1, #0xb]
    // 0x76e1e0: str             x1, [SP]
    // 0x76e1e4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e1e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e1e8: ldr             x4, [x4, #0x878]
    // 0x76e1ec: r0 = call 0x392d98
    //     0x76e1ec: bl              #0x392d98
    // 0x76e1f0: r0 = ReturnAsyncNotFuture()
    //     0x76e1f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e1f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76e1f4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76e1f8: b               #0x76dea4
    // 0x76e1fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e1fc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e200: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e200: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e204: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e204: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e208: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e208: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e20c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e20c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e210: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e210: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e214: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76e214: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76e218, size: 0x334
    // 0x76e218: EnterFrame
    //     0x76e218: stp             fp, lr, [SP, #-0x10]!
    //     0x76e21c: mov             fp, SP
    // 0x76e220: AllocStack(0xd8)
    //     0x76e220: sub             SP, SP, #0xd8
    // 0x76e224: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x76e224: stur            NULL, [fp, #-8]
    //     0x76e228: movz            x0, #0
    //     0x76e22c: add             x1, fp, w0, sxtw #2
    //     0x76e230: ldr             x1, [x1, #0x18]
    //     0x76e234: add             x2, fp, w0, sxtw #2
    //     0x76e238: ldr             x2, [x2, #0x10]
    //     0x76e23c: stur            x2, [fp, #-0x90]
    //     0x76e240: ldur            w3, [x1, #0x17]
    //     0x76e244: add             x3, x3, HEAP, lsl #32
    //     0x76e248: stur            x3, [fp, #-0x88]
    // 0x76e24c: CheckStackOverflow
    //     0x76e24c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76e250: cmp             SP, x16
    //     0x76e254: b.ls            #0x76e530
    // 0x76e258: InitAsync() -> Future<List<Object?>>
    //     0x76e258: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76e25c: ldr             x0, [x0, #0x1d0]
    //     0x76e260: bl              #0x74ada8  ; InitAsyncStub
    // 0x76e264: ldur            x3, [fp, #-0x90]
    // 0x76e268: cmp             w3, NULL
    // 0x76e26c: b.eq            #0x76e538
    // 0x76e270: mov             x0, x3
    // 0x76e274: r2 = Null
    //     0x76e274: mov             x2, NULL
    // 0x76e278: r1 = Null
    //     0x76e278: mov             x1, NULL
    // 0x76e27c: r4 = 60
    //     0x76e27c: movz            x4, #0x3c
    // 0x76e280: branchIfSmi(r0, 0x76e28c)
    //     0x76e280: tbz             w0, #0, #0x76e28c
    // 0x76e284: r4 = LoadClassIdInstr(r0)
    //     0x76e284: ldur            x4, [x0, #-1]
    //     0x76e288: ubfx            x4, x4, #0xc, #0x14
    // 0x76e28c: sub             x4, x4, #0x5a
    // 0x76e290: cmp             x4, #2
    // 0x76e294: b.ls            #0x76e2a8
    // 0x76e298: r8 = List<Object?>
    //     0x76e298: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76e29c: r3 = Null
    //     0x76e29c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d98] Null
    //     0x76e2a0: ldr             x3, [x3, #0xd98]
    // 0x76e2a4: r0 = List<Object?>()
    //     0x76e2a4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76e2a8: ldur            x1, [fp, #-0x90]
    // 0x76e2ac: r0 = LoadClassIdInstr(r1)
    //     0x76e2ac: ldur            x0, [x1, #-1]
    //     0x76e2b0: ubfx            x0, x0, #0xc, #0x14
    // 0x76e2b4: stp             xzr, x1, [SP]
    // 0x76e2b8: mov             lr, x0
    // 0x76e2bc: ldr             lr, [x21, lr, lsl #3]
    // 0x76e2c0: blr             lr
    // 0x76e2c4: mov             x3, x0
    // 0x76e2c8: stur            x3, [fp, #-0x98]
    // 0x76e2cc: cmp             w3, NULL
    // 0x76e2d0: b.eq            #0x76e53c
    // 0x76e2d4: mov             x0, x3
    // 0x76e2d8: r2 = Null
    //     0x76e2d8: mov             x2, NULL
    // 0x76e2dc: r1 = Null
    //     0x76e2dc: mov             x1, NULL
    // 0x76e2e0: r4 = 60
    //     0x76e2e0: movz            x4, #0x3c
    // 0x76e2e4: branchIfSmi(r0, 0x76e2f0)
    //     0x76e2e4: tbz             w0, #0, #0x76e2f0
    // 0x76e2e8: r4 = LoadClassIdInstr(r0)
    //     0x76e2e8: ldur            x4, [x0, #-1]
    //     0x76e2ec: ubfx            x4, x4, #0xc, #0x14
    // 0x76e2f0: cmp             x4, #0x185
    // 0x76e2f4: b.eq            #0x76e30c
    // 0x76e2f8: r8 = kVa
    //     0x76e2f8: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76e2fc: ldr             x8, [x8, #0xd30]
    // 0x76e300: r3 = Null
    //     0x76e300: add             x3, PP, #0x19, lsl #12  ; [pp+0x19da8] Null
    //     0x76e304: ldr             x3, [x3, #0xda8]
    // 0x76e308: r0 = DefaultTypeTest()
    //     0x76e308: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e30c: ldur            x1, [fp, #-0x90]
    // 0x76e310: r0 = LoadClassIdInstr(r1)
    //     0x76e310: ldur            x0, [x1, #-1]
    //     0x76e314: ubfx            x0, x0, #0xc, #0x14
    // 0x76e318: r16 = 2
    //     0x76e318: movz            x16, #0x2
    // 0x76e31c: stp             x16, x1, [SP]
    // 0x76e320: mov             lr, x0
    // 0x76e324: ldr             lr, [x21, lr, lsl #3]
    // 0x76e328: blr             lr
    // 0x76e32c: mov             x3, x0
    // 0x76e330: stur            x3, [fp, #-0xa0]
    // 0x76e334: cmp             w3, NULL
    // 0x76e338: b.eq            #0x76e540
    // 0x76e33c: mov             x0, x3
    // 0x76e340: r2 = Null
    //     0x76e340: mov             x2, NULL
    // 0x76e344: r1 = Null
    //     0x76e344: mov             x1, NULL
    // 0x76e348: r4 = 60
    //     0x76e348: movz            x4, #0x3c
    // 0x76e34c: branchIfSmi(r0, 0x76e358)
    //     0x76e34c: tbz             w0, #0, #0x76e358
    // 0x76e350: r4 = LoadClassIdInstr(r0)
    //     0x76e350: ldur            x4, [x0, #-1]
    //     0x76e354: ubfx            x4, x4, #0xc, #0x14
    // 0x76e358: cmp             x4, #0x18b
    // 0x76e35c: b.eq            #0x76e374
    // 0x76e360: r8 = fVa
    //     0x76e360: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x76e364: ldr             x8, [x8, #0xd48]
    // 0x76e368: r3 = Null
    //     0x76e368: add             x3, PP, #0x19, lsl #12  ; [pp+0x19db8] Null
    //     0x76e36c: ldr             x3, [x3, #0xdb8]
    // 0x76e370: r0 = DefaultTypeTest()
    //     0x76e370: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e374: ldur            x1, [fp, #-0x90]
    // 0x76e378: r0 = LoadClassIdInstr(r1)
    //     0x76e378: ldur            x0, [x1, #-1]
    //     0x76e37c: ubfx            x0, x0, #0xc, #0x14
    // 0x76e380: r16 = 4
    //     0x76e380: movz            x16, #0x4
    // 0x76e384: stp             x16, x1, [SP]
    // 0x76e388: mov             lr, x0
    // 0x76e38c: ldr             lr, [x21, lr, lsl #3]
    // 0x76e390: blr             lr
    // 0x76e394: mov             x3, x0
    // 0x76e398: stur            x3, [fp, #-0xa8]
    // 0x76e39c: cmp             w3, NULL
    // 0x76e3a0: b.eq            #0x76e544
    // 0x76e3a4: mov             x0, x3
    // 0x76e3a8: r2 = Null
    //     0x76e3a8: mov             x2, NULL
    // 0x76e3ac: r1 = Null
    //     0x76e3ac: mov             x1, NULL
    // 0x76e3b0: r4 = 60
    //     0x76e3b0: movz            x4, #0x3c
    // 0x76e3b4: branchIfSmi(r0, 0x76e3c0)
    //     0x76e3b4: tbz             w0, #0, #0x76e3c0
    // 0x76e3b8: r4 = LoadClassIdInstr(r0)
    //     0x76e3b8: ldur            x4, [x0, #-1]
    //     0x76e3bc: ubfx            x4, x4, #0xc, #0x14
    // 0x76e3c0: sub             x4, x4, #0x5e
    // 0x76e3c4: cmp             x4, #1
    // 0x76e3c8: b.ls            #0x76e3dc
    // 0x76e3cc: r8 = String
    //     0x76e3cc: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e3d0: r3 = Null
    //     0x76e3d0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19dc8] Null
    //     0x76e3d4: ldr             x3, [x3, #0xdc8]
    // 0x76e3d8: r0 = String()
    //     0x76e3d8: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e3dc: ldur            x0, [fp, #-0x90]
    // 0x76e3e0: r1 = LoadClassIdInstr(r0)
    //     0x76e3e0: ldur            x1, [x0, #-1]
    //     0x76e3e4: ubfx            x1, x1, #0xc, #0x14
    // 0x76e3e8: r16 = 6
    //     0x76e3e8: movz            x16, #0x6
    // 0x76e3ec: stp             x16, x0, [SP]
    // 0x76e3f0: mov             x0, x1
    // 0x76e3f4: mov             lr, x0
    // 0x76e3f8: ldr             lr, [x21, lr, lsl #3]
    // 0x76e3fc: blr             lr
    // 0x76e400: mov             x3, x0
    // 0x76e404: stur            x3, [fp, #-0x90]
    // 0x76e408: cmp             w3, NULL
    // 0x76e40c: b.eq            #0x76e548
    // 0x76e410: mov             x0, x3
    // 0x76e414: r2 = Null
    //     0x76e414: mov             x2, NULL
    // 0x76e418: r1 = Null
    //     0x76e418: mov             x1, NULL
    // 0x76e41c: r4 = 60
    //     0x76e41c: movz            x4, #0x3c
    // 0x76e420: branchIfSmi(r0, 0x76e42c)
    //     0x76e420: tbz             w0, #0, #0x76e42c
    // 0x76e424: r4 = LoadClassIdInstr(r0)
    //     0x76e424: ldur            x4, [x0, #-1]
    //     0x76e428: ubfx            x4, x4, #0xc, #0x14
    // 0x76e42c: sub             x4, x4, #0x5e
    // 0x76e430: cmp             x4, #1
    // 0x76e434: b.ls            #0x76e448
    // 0x76e438: r8 = String
    //     0x76e438: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e43c: r3 = Null
    //     0x76e43c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19dd8] Null
    //     0x76e440: ldr             x3, [x3, #0xdd8]
    // 0x76e444: r0 = String()
    //     0x76e444: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e448: ldur            x1, [fp, #-0x98]
    // 0x76e44c: LoadField: r2 = r1->field_37
    //     0x76e44c: ldur            w2, [x1, #0x37]
    // 0x76e450: DecompressPointer r2
    //     0x76e450: add             x2, x2, HEAP, lsl #32
    // 0x76e454: stur            x2, [fp, #-0xb0]
    // 0x76e458: stp             x1, x2, [SP, #0x18]
    // 0x76e45c: ldur            x16, [fp, #-0xa0]
    // 0x76e460: ldur            lr, [fp, #-0xa8]
    // 0x76e464: stp             lr, x16, [SP, #8]
    // 0x76e468: ldur            x16, [fp, #-0x90]
    // 0x76e46c: str             x16, [SP]
    // 0x76e470: mov             x0, x2
    // 0x76e474: ClosureCall
    //     0x76e474: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x76e478: ldur            x2, [x0, #0x1f]
    //     0x76e47c: blr             x2
    // 0x76e480: mov             x1, x0
    // 0x76e484: stur            x1, [fp, #-0xb0]
    // 0x76e488: r0 = Await()
    //     0x76e488: bl              #0x74ab64  ; AwaitStub
    // 0x76e48c: stur            x0, [fp, #-0xb0]
    // 0x76e490: str             x0, [SP]
    // 0x76e494: r4 = const [0, 0x1, 0x1, 0, result, 0, null]
    //     0x76e494: add             x4, PP, #0x19, lsl #12  ; [pp+0x19d90] List(7) [0, 0x1, 0x1, 0, "result", 0, Null]
    //     0x76e498: ldr             x4, [x4, #0xd90]
    // 0x76e49c: r0 = call 0x392d98
    //     0x76e49c: bl              #0x392d98
    // 0x76e4a0: r0 = ReturnAsyncNotFuture()
    //     0x76e4a0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e4a4: sub             SP, fp, #0xd8
    // 0x76e4a8: r1 = 60
    //     0x76e4a8: movz            x1, #0x3c
    // 0x76e4ac: branchIfSmi(r0, 0x76e4b8)
    //     0x76e4ac: tbz             w0, #0, #0x76e4b8
    // 0x76e4b0: r1 = LoadClassIdInstr(r0)
    //     0x76e4b0: ldur            x1, [x0, #-1]
    //     0x76e4b4: ubfx            x1, x1, #0xc, #0x14
    // 0x76e4b8: cmp             x1, #0x5e5
    // 0x76e4bc: b.ne            #0x76e4d4
    // 0x76e4c0: str             x0, [SP]
    // 0x76e4c4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e4c4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e4c8: ldr             x4, [x4, #0x878]
    // 0x76e4cc: r0 = call 0x392d98
    //     0x76e4cc: bl              #0x392d98
    // 0x76e4d0: r0 = ReturnAsyncNotFuture()
    //     0x76e4d0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e4d4: r1 = 60
    //     0x76e4d4: movz            x1, #0x3c
    // 0x76e4d8: branchIfSmi(r0, 0x76e4e4)
    //     0x76e4d8: tbz             w0, #0, #0x76e4e4
    // 0x76e4dc: r1 = LoadClassIdInstr(r0)
    //     0x76e4dc: ldur            x1, [x0, #-1]
    //     0x76e4e0: ubfx            x1, x1, #0xc, #0x14
    // 0x76e4e4: str             x0, [SP]
    // 0x76e4e8: mov             x0, x1
    // 0x76e4ec: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76e4ec: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76e4f0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76e4f0: movz            x17, #0x3a5d
    //     0x76e4f4: add             lr, x0, x17
    //     0x76e4f8: ldr             lr, [x21, lr, lsl #3]
    //     0x76e4fc: blr             lr
    // 0x76e500: stur            x0, [fp, #-0x88]
    // 0x76e504: r0 = Mha()
    //     0x76e504: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76e508: mov             x1, x0
    // 0x76e50c: r0 = "error"
    //     0x76e50c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76e510: StoreField: r1->field_7 = r0
    //     0x76e510: stur            w0, [x1, #7]
    // 0x76e514: ldur            x0, [fp, #-0x88]
    // 0x76e518: StoreField: r1->field_b = r0
    //     0x76e518: stur            w0, [x1, #0xb]
    // 0x76e51c: str             x1, [SP]
    // 0x76e520: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e520: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e524: ldr             x4, [x4, #0x878]
    // 0x76e528: r0 = call 0x392d98
    //     0x76e528: bl              #0x392d98
    // 0x76e52c: r0 = ReturnAsyncNotFuture()
    //     0x76e52c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e530: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76e530: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76e534: b               #0x76e258
    // 0x76e538: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e538: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e53c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e53c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e540: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e540: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e544: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e544: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e548: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e548: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76e54c, size: 0x340
    // 0x76e54c: EnterFrame
    //     0x76e54c: stp             fp, lr, [SP, #-0x10]!
    //     0x76e550: mov             fp, SP
    // 0x76e554: AllocStack(0xe0)
    //     0x76e554: sub             SP, SP, #0xe0
    // 0x76e558: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x76e558: stur            NULL, [fp, #-8]
    //     0x76e55c: movz            x0, #0
    //     0x76e560: add             x1, fp, w0, sxtw #2
    //     0x76e564: ldr             x1, [x1, #0x18]
    //     0x76e568: add             x2, fp, w0, sxtw #2
    //     0x76e56c: ldr             x2, [x2, #0x10]
    //     0x76e570: stur            x2, [fp, #-0x90]
    //     0x76e574: ldur            w3, [x1, #0x17]
    //     0x76e578: add             x3, x3, HEAP, lsl #32
    //     0x76e57c: stur            x3, [fp, #-0x88]
    // 0x76e580: CheckStackOverflow
    //     0x76e580: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76e584: cmp             SP, x16
    //     0x76e588: b.ls            #0x76e86c
    // 0x76e58c: InitAsync() -> Future<List<Object?>>
    //     0x76e58c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76e590: ldr             x0, [x0, #0x1d0]
    //     0x76e594: bl              #0x74ada8  ; InitAsyncStub
    // 0x76e598: ldur            x3, [fp, #-0x90]
    // 0x76e59c: cmp             w3, NULL
    // 0x76e5a0: b.eq            #0x76e874
    // 0x76e5a4: mov             x0, x3
    // 0x76e5a8: r2 = Null
    //     0x76e5a8: mov             x2, NULL
    // 0x76e5ac: r1 = Null
    //     0x76e5ac: mov             x1, NULL
    // 0x76e5b0: r4 = 60
    //     0x76e5b0: movz            x4, #0x3c
    // 0x76e5b4: branchIfSmi(r0, 0x76e5c0)
    //     0x76e5b4: tbz             w0, #0, #0x76e5c0
    // 0x76e5b8: r4 = LoadClassIdInstr(r0)
    //     0x76e5b8: ldur            x4, [x0, #-1]
    //     0x76e5bc: ubfx            x4, x4, #0xc, #0x14
    // 0x76e5c0: sub             x4, x4, #0x5a
    // 0x76e5c4: cmp             x4, #2
    // 0x76e5c8: b.ls            #0x76e5dc
    // 0x76e5cc: r8 = List<Object?>
    //     0x76e5cc: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76e5d0: r3 = Null
    //     0x76e5d0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19de8] Null
    //     0x76e5d4: ldr             x3, [x3, #0xde8]
    // 0x76e5d8: r0 = List<Object?>()
    //     0x76e5d8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76e5dc: ldur            x1, [fp, #-0x90]
    // 0x76e5e0: r0 = LoadClassIdInstr(r1)
    //     0x76e5e0: ldur            x0, [x1, #-1]
    //     0x76e5e4: ubfx            x0, x0, #0xc, #0x14
    // 0x76e5e8: stp             xzr, x1, [SP]
    // 0x76e5ec: mov             lr, x0
    // 0x76e5f0: ldr             lr, [x21, lr, lsl #3]
    // 0x76e5f4: blr             lr
    // 0x76e5f8: mov             x3, x0
    // 0x76e5fc: stur            x3, [fp, #-0x98]
    // 0x76e600: cmp             w3, NULL
    // 0x76e604: b.eq            #0x76e878
    // 0x76e608: mov             x0, x3
    // 0x76e60c: r2 = Null
    //     0x76e60c: mov             x2, NULL
    // 0x76e610: r1 = Null
    //     0x76e610: mov             x1, NULL
    // 0x76e614: r4 = 60
    //     0x76e614: movz            x4, #0x3c
    // 0x76e618: branchIfSmi(r0, 0x76e624)
    //     0x76e618: tbz             w0, #0, #0x76e624
    // 0x76e61c: r4 = LoadClassIdInstr(r0)
    //     0x76e61c: ldur            x4, [x0, #-1]
    //     0x76e620: ubfx            x4, x4, #0xc, #0x14
    // 0x76e624: cmp             x4, #0x185
    // 0x76e628: b.eq            #0x76e640
    // 0x76e62c: r8 = kVa
    //     0x76e62c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76e630: ldr             x8, [x8, #0xd30]
    // 0x76e634: r3 = Null
    //     0x76e634: add             x3, PP, #0x19, lsl #12  ; [pp+0x19df8] Null
    //     0x76e638: ldr             x3, [x3, #0xdf8]
    // 0x76e63c: r0 = DefaultTypeTest()
    //     0x76e63c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e640: ldur            x1, [fp, #-0x90]
    // 0x76e644: r0 = LoadClassIdInstr(r1)
    //     0x76e644: ldur            x0, [x1, #-1]
    //     0x76e648: ubfx            x0, x0, #0xc, #0x14
    // 0x76e64c: r16 = 2
    //     0x76e64c: movz            x16, #0x2
    // 0x76e650: stp             x16, x1, [SP]
    // 0x76e654: mov             lr, x0
    // 0x76e658: ldr             lr, [x21, lr, lsl #3]
    // 0x76e65c: blr             lr
    // 0x76e660: mov             x3, x0
    // 0x76e664: stur            x3, [fp, #-0xa0]
    // 0x76e668: cmp             w3, NULL
    // 0x76e66c: b.eq            #0x76e87c
    // 0x76e670: mov             x0, x3
    // 0x76e674: r2 = Null
    //     0x76e674: mov             x2, NULL
    // 0x76e678: r1 = Null
    //     0x76e678: mov             x1, NULL
    // 0x76e67c: r4 = 60
    //     0x76e67c: movz            x4, #0x3c
    // 0x76e680: branchIfSmi(r0, 0x76e68c)
    //     0x76e680: tbz             w0, #0, #0x76e68c
    // 0x76e684: r4 = LoadClassIdInstr(r0)
    //     0x76e684: ldur            x4, [x0, #-1]
    //     0x76e688: ubfx            x4, x4, #0xc, #0x14
    // 0x76e68c: cmp             x4, #0x18b
    // 0x76e690: b.eq            #0x76e6a8
    // 0x76e694: r8 = fVa
    //     0x76e694: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x76e698: ldr             x8, [x8, #0xd48]
    // 0x76e69c: r3 = Null
    //     0x76e69c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e08] Null
    //     0x76e6a0: ldr             x3, [x3, #0xe08]
    // 0x76e6a4: r0 = DefaultTypeTest()
    //     0x76e6a4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e6a8: ldur            x1, [fp, #-0x90]
    // 0x76e6ac: r0 = LoadClassIdInstr(r1)
    //     0x76e6ac: ldur            x0, [x1, #-1]
    //     0x76e6b0: ubfx            x0, x0, #0xc, #0x14
    // 0x76e6b4: r16 = 4
    //     0x76e6b4: movz            x16, #0x4
    // 0x76e6b8: stp             x16, x1, [SP]
    // 0x76e6bc: mov             lr, x0
    // 0x76e6c0: ldr             lr, [x21, lr, lsl #3]
    // 0x76e6c4: blr             lr
    // 0x76e6c8: mov             x3, x0
    // 0x76e6cc: stur            x3, [fp, #-0xa8]
    // 0x76e6d0: cmp             w3, NULL
    // 0x76e6d4: b.eq            #0x76e880
    // 0x76e6d8: mov             x0, x3
    // 0x76e6dc: r2 = Null
    //     0x76e6dc: mov             x2, NULL
    // 0x76e6e0: r1 = Null
    //     0x76e6e0: mov             x1, NULL
    // 0x76e6e4: r4 = 60
    //     0x76e6e4: movz            x4, #0x3c
    // 0x76e6e8: branchIfSmi(r0, 0x76e6f4)
    //     0x76e6e8: tbz             w0, #0, #0x76e6f4
    // 0x76e6ec: r4 = LoadClassIdInstr(r0)
    //     0x76e6ec: ldur            x4, [x0, #-1]
    //     0x76e6f0: ubfx            x4, x4, #0xc, #0x14
    // 0x76e6f4: sub             x4, x4, #0x5e
    // 0x76e6f8: cmp             x4, #1
    // 0x76e6fc: b.ls            #0x76e710
    // 0x76e700: r8 = String
    //     0x76e700: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e704: r3 = Null
    //     0x76e704: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e18] Null
    //     0x76e708: ldr             x3, [x3, #0xe18]
    // 0x76e70c: r0 = String()
    //     0x76e70c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e710: ldur            x0, [fp, #-0x90]
    // 0x76e714: r1 = LoadClassIdInstr(r0)
    //     0x76e714: ldur            x1, [x0, #-1]
    //     0x76e718: ubfx            x1, x1, #0xc, #0x14
    // 0x76e71c: r16 = 6
    //     0x76e71c: movz            x16, #0x6
    // 0x76e720: stp             x16, x0, [SP]
    // 0x76e724: mov             x0, x1
    // 0x76e728: mov             lr, x0
    // 0x76e72c: ldr             lr, [x21, lr, lsl #3]
    // 0x76e730: blr             lr
    // 0x76e734: mov             x3, x0
    // 0x76e738: stur            x3, [fp, #-0x90]
    // 0x76e73c: cmp             w3, NULL
    // 0x76e740: b.eq            #0x76e884
    // 0x76e744: mov             x0, x3
    // 0x76e748: r2 = Null
    //     0x76e748: mov             x2, NULL
    // 0x76e74c: r1 = Null
    //     0x76e74c: mov             x1, NULL
    // 0x76e750: r4 = 60
    //     0x76e750: movz            x4, #0x3c
    // 0x76e754: branchIfSmi(r0, 0x76e760)
    //     0x76e754: tbz             w0, #0, #0x76e760
    // 0x76e758: r4 = LoadClassIdInstr(r0)
    //     0x76e758: ldur            x4, [x0, #-1]
    //     0x76e75c: ubfx            x4, x4, #0xc, #0x14
    // 0x76e760: sub             x4, x4, #0x5e
    // 0x76e764: cmp             x4, #1
    // 0x76e768: b.ls            #0x76e77c
    // 0x76e76c: r8 = String
    //     0x76e76c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76e770: r3 = Null
    //     0x76e770: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e28] Null
    //     0x76e774: ldr             x3, [x3, #0xe28]
    // 0x76e778: r0 = String()
    //     0x76e778: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76e77c: ldur            x1, [fp, #-0x98]
    // 0x76e780: LoadField: r2 = r1->field_33
    //     0x76e780: ldur            w2, [x1, #0x33]
    // 0x76e784: DecompressPointer r2
    //     0x76e784: add             x2, x2, HEAP, lsl #32
    // 0x76e788: stur            x2, [fp, #-0xb0]
    // 0x76e78c: cmp             w2, NULL
    // 0x76e790: b.eq            #0x76e888
    // 0x76e794: stp             x1, x2, [SP, #0x18]
    // 0x76e798: ldur            x16, [fp, #-0xa0]
    // 0x76e79c: ldur            lr, [fp, #-0xa8]
    // 0x76e7a0: stp             lr, x16, [SP, #8]
    // 0x76e7a4: ldur            x16, [fp, #-0x90]
    // 0x76e7a8: str             x16, [SP]
    // 0x76e7ac: mov             x0, x2
    // 0x76e7b0: ClosureCall
    //     0x76e7b0: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x76e7b4: ldur            x2, [x0, #0x1f]
    //     0x76e7b8: blr             x2
    // 0x76e7bc: mov             x1, x0
    // 0x76e7c0: stur            x1, [fp, #-0xb8]
    // 0x76e7c4: r0 = Await()
    //     0x76e7c4: bl              #0x74ab64  ; AwaitStub
    // 0x76e7c8: r16 = true
    //     0x76e7c8: add             x16, NULL, #0x20  ; true
    // 0x76e7cc: str             x16, [SP]
    // 0x76e7d0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76e7d0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76e7d4: ldr             x4, [x4, #0x870]
    // 0x76e7d8: r0 = call 0x392d98
    //     0x76e7d8: bl              #0x392d98
    // 0x76e7dc: r0 = ReturnAsyncNotFuture()
    //     0x76e7dc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e7e0: sub             SP, fp, #0xe0
    // 0x76e7e4: r1 = 60
    //     0x76e7e4: movz            x1, #0x3c
    // 0x76e7e8: branchIfSmi(r0, 0x76e7f4)
    //     0x76e7e8: tbz             w0, #0, #0x76e7f4
    // 0x76e7ec: r1 = LoadClassIdInstr(r0)
    //     0x76e7ec: ldur            x1, [x0, #-1]
    //     0x76e7f0: ubfx            x1, x1, #0xc, #0x14
    // 0x76e7f4: cmp             x1, #0x5e5
    // 0x76e7f8: b.ne            #0x76e810
    // 0x76e7fc: str             x0, [SP]
    // 0x76e800: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e800: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e804: ldr             x4, [x4, #0x878]
    // 0x76e808: r0 = call 0x392d98
    //     0x76e808: bl              #0x392d98
    // 0x76e80c: r0 = ReturnAsyncNotFuture()
    //     0x76e80c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e810: r1 = 60
    //     0x76e810: movz            x1, #0x3c
    // 0x76e814: branchIfSmi(r0, 0x76e820)
    //     0x76e814: tbz             w0, #0, #0x76e820
    // 0x76e818: r1 = LoadClassIdInstr(r0)
    //     0x76e818: ldur            x1, [x0, #-1]
    //     0x76e81c: ubfx            x1, x1, #0xc, #0x14
    // 0x76e820: str             x0, [SP]
    // 0x76e824: mov             x0, x1
    // 0x76e828: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76e828: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76e82c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76e82c: movz            x17, #0x3a5d
    //     0x76e830: add             lr, x0, x17
    //     0x76e834: ldr             lr, [x21, lr, lsl #3]
    //     0x76e838: blr             lr
    // 0x76e83c: stur            x0, [fp, #-0x88]
    // 0x76e840: r0 = Mha()
    //     0x76e840: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76e844: mov             x1, x0
    // 0x76e848: r0 = "error"
    //     0x76e848: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76e84c: StoreField: r1->field_7 = r0
    //     0x76e84c: stur            w0, [x1, #7]
    // 0x76e850: ldur            x0, [fp, #-0x88]
    // 0x76e854: StoreField: r1->field_b = r0
    //     0x76e854: stur            w0, [x1, #0xb]
    // 0x76e858: str             x1, [SP]
    // 0x76e85c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76e85c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76e860: ldr             x4, [x4, #0x878]
    // 0x76e864: r0 = call 0x392d98
    //     0x76e864: bl              #0x392d98
    // 0x76e868: r0 = ReturnAsyncNotFuture()
    //     0x76e868: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76e86c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76e86c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76e870: b               #0x76e58c
    // 0x76e874: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e874: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e878: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e878: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e87c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e87c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e880: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e880: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e884: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76e884: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76e888: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76e888: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76e88c, size: 0x250
    // 0x76e88c: EnterFrame
    //     0x76e88c: stp             fp, lr, [SP, #-0x10]!
    //     0x76e890: mov             fp, SP
    // 0x76e894: AllocStack(0xa8)
    //     0x76e894: sub             SP, SP, #0xa8
    // 0x76e898: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x76e898: stur            NULL, [fp, #-8]
    //     0x76e89c: movz            x0, #0
    //     0x76e8a0: add             x1, fp, w0, sxtw #2
    //     0x76e8a4: ldr             x1, [x1, #0x18]
    //     0x76e8a8: add             x2, fp, w0, sxtw #2
    //     0x76e8ac: ldr             x2, [x2, #0x10]
    //     0x76e8b0: stur            x2, [fp, #-0x80]
    //     0x76e8b4: ldur            w3, [x1, #0x17]
    //     0x76e8b8: add             x3, x3, HEAP, lsl #32
    //     0x76e8bc: stur            x3, [fp, #-0x78]
    // 0x76e8c0: CheckStackOverflow
    //     0x76e8c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76e8c4: cmp             SP, x16
    //     0x76e8c8: b.ls            #0x76eac4
    // 0x76e8cc: InitAsync() -> Future<List<Object?>>
    //     0x76e8cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76e8d0: ldr             x0, [x0, #0x1d0]
    //     0x76e8d4: bl              #0x74ada8  ; InitAsyncStub
    // 0x76e8d8: ldur            x3, [fp, #-0x80]
    // 0x76e8dc: cmp             w3, NULL
    // 0x76e8e0: b.eq            #0x76eacc
    // 0x76e8e4: mov             x0, x3
    // 0x76e8e8: r2 = Null
    //     0x76e8e8: mov             x2, NULL
    // 0x76e8ec: r1 = Null
    //     0x76e8ec: mov             x1, NULL
    // 0x76e8f0: r4 = 60
    //     0x76e8f0: movz            x4, #0x3c
    // 0x76e8f4: branchIfSmi(r0, 0x76e900)
    //     0x76e8f4: tbz             w0, #0, #0x76e900
    // 0x76e8f8: r4 = LoadClassIdInstr(r0)
    //     0x76e8f8: ldur            x4, [x0, #-1]
    //     0x76e8fc: ubfx            x4, x4, #0xc, #0x14
    // 0x76e900: sub             x4, x4, #0x5a
    // 0x76e904: cmp             x4, #2
    // 0x76e908: b.ls            #0x76e91c
    // 0x76e90c: r8 = List<Object?>
    //     0x76e90c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76e910: r3 = Null
    //     0x76e910: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e38] Null
    //     0x76e914: ldr             x3, [x3, #0xe38]
    // 0x76e918: r0 = List<Object?>()
    //     0x76e918: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76e91c: ldur            x1, [fp, #-0x80]
    // 0x76e920: r0 = LoadClassIdInstr(r1)
    //     0x76e920: ldur            x0, [x1, #-1]
    //     0x76e924: ubfx            x0, x0, #0xc, #0x14
    // 0x76e928: stp             xzr, x1, [SP]
    // 0x76e92c: mov             lr, x0
    // 0x76e930: ldr             lr, [x21, lr, lsl #3]
    // 0x76e934: blr             lr
    // 0x76e938: mov             x3, x0
    // 0x76e93c: stur            x3, [fp, #-0x88]
    // 0x76e940: cmp             w3, NULL
    // 0x76e944: b.eq            #0x76ead0
    // 0x76e948: mov             x0, x3
    // 0x76e94c: r2 = Null
    //     0x76e94c: mov             x2, NULL
    // 0x76e950: r1 = Null
    //     0x76e950: mov             x1, NULL
    // 0x76e954: r4 = 60
    //     0x76e954: movz            x4, #0x3c
    // 0x76e958: branchIfSmi(r0, 0x76e964)
    //     0x76e958: tbz             w0, #0, #0x76e964
    // 0x76e95c: r4 = LoadClassIdInstr(r0)
    //     0x76e95c: ldur            x4, [x0, #-1]
    //     0x76e960: ubfx            x4, x4, #0xc, #0x14
    // 0x76e964: cmp             x4, #0x185
    // 0x76e968: b.eq            #0x76e980
    // 0x76e96c: r8 = kVa
    //     0x76e96c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76e970: ldr             x8, [x8, #0xd30]
    // 0x76e974: r3 = Null
    //     0x76e974: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e48] Null
    //     0x76e978: ldr             x3, [x3, #0xe48]
    // 0x76e97c: r0 = DefaultTypeTest()
    //     0x76e97c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e980: ldur            x0, [fp, #-0x80]
    // 0x76e984: r1 = LoadClassIdInstr(r0)
    //     0x76e984: ldur            x1, [x0, #-1]
    //     0x76e988: ubfx            x1, x1, #0xc, #0x14
    // 0x76e98c: r16 = 2
    //     0x76e98c: movz            x16, #0x2
    // 0x76e990: stp             x16, x0, [SP]
    // 0x76e994: mov             x0, x1
    // 0x76e998: mov             lr, x0
    // 0x76e99c: ldr             lr, [x21, lr, lsl #3]
    // 0x76e9a0: blr             lr
    // 0x76e9a4: mov             x3, x0
    // 0x76e9a8: stur            x3, [fp, #-0x80]
    // 0x76e9ac: cmp             w3, NULL
    // 0x76e9b0: b.eq            #0x76ead4
    // 0x76e9b4: mov             x0, x3
    // 0x76e9b8: r2 = Null
    //     0x76e9b8: mov             x2, NULL
    // 0x76e9bc: r1 = Null
    //     0x76e9bc: mov             x1, NULL
    // 0x76e9c0: r4 = 60
    //     0x76e9c0: movz            x4, #0x3c
    // 0x76e9c4: branchIfSmi(r0, 0x76e9d0)
    //     0x76e9c4: tbz             w0, #0, #0x76e9d0
    // 0x76e9c8: r4 = LoadClassIdInstr(r0)
    //     0x76e9c8: ldur            x4, [x0, #-1]
    //     0x76e9cc: ubfx            x4, x4, #0xc, #0x14
    // 0x76e9d0: cmp             x4, #0x18d
    // 0x76e9d4: b.eq            #0x76e9ec
    // 0x76e9d8: r8 = dVa
    //     0x76e9d8: add             x8, PP, #0x19, lsl #12  ; [pp+0x19e58] Type: dVa
    //     0x76e9dc: ldr             x8, [x8, #0xe58]
    // 0x76e9e0: r3 = Null
    //     0x76e9e0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e60] Null
    //     0x76e9e4: ldr             x3, [x3, #0xe60]
    // 0x76e9e8: r0 = DefaultTypeTest()
    //     0x76e9e8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76e9ec: ldur            x1, [fp, #-0x88]
    // 0x76e9f0: LoadField: r2 = r1->field_2f
    //     0x76e9f0: ldur            w2, [x1, #0x2f]
    // 0x76e9f4: DecompressPointer r2
    //     0x76e9f4: add             x2, x2, HEAP, lsl #32
    // 0x76e9f8: stur            x2, [fp, #-0x90]
    // 0x76e9fc: cmp             w2, NULL
    // 0x76ea00: b.eq            #0x76ead8
    // 0x76ea04: stp             x1, x2, [SP, #8]
    // 0x76ea08: ldur            x16, [fp, #-0x80]
    // 0x76ea0c: str             x16, [SP]
    // 0x76ea10: mov             x0, x2
    // 0x76ea14: ClosureCall
    //     0x76ea14: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x76ea18: ldur            x2, [x0, #0x1f]
    //     0x76ea1c: blr             x2
    // 0x76ea20: r16 = true
    //     0x76ea20: add             x16, NULL, #0x20  ; true
    // 0x76ea24: str             x16, [SP]
    // 0x76ea28: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76ea28: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76ea2c: ldr             x4, [x4, #0x870]
    // 0x76ea30: r0 = call 0x392d98
    //     0x76ea30: bl              #0x392d98
    // 0x76ea34: r0 = ReturnAsyncNotFuture()
    //     0x76ea34: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ea38: sub             SP, fp, #0xa8
    // 0x76ea3c: r1 = 60
    //     0x76ea3c: movz            x1, #0x3c
    // 0x76ea40: branchIfSmi(r0, 0x76ea4c)
    //     0x76ea40: tbz             w0, #0, #0x76ea4c
    // 0x76ea44: r1 = LoadClassIdInstr(r0)
    //     0x76ea44: ldur            x1, [x0, #-1]
    //     0x76ea48: ubfx            x1, x1, #0xc, #0x14
    // 0x76ea4c: cmp             x1, #0x5e5
    // 0x76ea50: b.ne            #0x76ea68
    // 0x76ea54: str             x0, [SP]
    // 0x76ea58: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ea58: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ea5c: ldr             x4, [x4, #0x878]
    // 0x76ea60: r0 = call 0x392d98
    //     0x76ea60: bl              #0x392d98
    // 0x76ea64: r0 = ReturnAsyncNotFuture()
    //     0x76ea64: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ea68: r1 = 60
    //     0x76ea68: movz            x1, #0x3c
    // 0x76ea6c: branchIfSmi(r0, 0x76ea78)
    //     0x76ea6c: tbz             w0, #0, #0x76ea78
    // 0x76ea70: r1 = LoadClassIdInstr(r0)
    //     0x76ea70: ldur            x1, [x0, #-1]
    //     0x76ea74: ubfx            x1, x1, #0xc, #0x14
    // 0x76ea78: str             x0, [SP]
    // 0x76ea7c: mov             x0, x1
    // 0x76ea80: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76ea80: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76ea84: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76ea84: movz            x17, #0x3a5d
    //     0x76ea88: add             lr, x0, x17
    //     0x76ea8c: ldr             lr, [x21, lr, lsl #3]
    //     0x76ea90: blr             lr
    // 0x76ea94: stur            x0, [fp, #-0x78]
    // 0x76ea98: r0 = Mha()
    //     0x76ea98: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76ea9c: mov             x1, x0
    // 0x76eaa0: r0 = "error"
    //     0x76eaa0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76eaa4: StoreField: r1->field_7 = r0
    //     0x76eaa4: stur            w0, [x1, #7]
    // 0x76eaa8: ldur            x0, [fp, #-0x78]
    // 0x76eaac: StoreField: r1->field_b = r0
    //     0x76eaac: stur            w0, [x1, #0xb]
    // 0x76eab0: str             x1, [SP]
    // 0x76eab4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76eab4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76eab8: ldr             x4, [x4, #0x878]
    // 0x76eabc: r0 = call 0x392d98
    //     0x76eabc: bl              #0x392d98
    // 0x76eac0: r0 = ReturnAsyncNotFuture()
    //     0x76eac0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76eac4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76eac4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76eac8: b               #0x76e8cc
    // 0x76eacc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76eacc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ead0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ead0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ead4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ead4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ead8: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76ead8: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76eadc, size: 0x1dc
    // 0x76eadc: EnterFrame
    //     0x76eadc: stp             fp, lr, [SP, #-0x10]!
    //     0x76eae0: mov             fp, SP
    // 0x76eae4: AllocStack(0x90)
    //     0x76eae4: sub             SP, SP, #0x90
    // 0x76eae8: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76eae8: stur            NULL, [fp, #-8]
    //     0x76eaec: movz            x0, #0
    //     0x76eaf0: add             x1, fp, w0, sxtw #2
    //     0x76eaf4: ldr             x1, [x1, #0x18]
    //     0x76eaf8: add             x2, fp, w0, sxtw #2
    //     0x76eafc: ldr             x2, [x2, #0x10]
    //     0x76eb00: stur            x2, [fp, #-0x78]
    //     0x76eb04: ldur            w3, [x1, #0x17]
    //     0x76eb08: add             x3, x3, HEAP, lsl #32
    //     0x76eb0c: stur            x3, [fp, #-0x70]
    // 0x76eb10: CheckStackOverflow
    //     0x76eb10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76eb14: cmp             SP, x16
    //     0x76eb18: b.ls            #0x76eca4
    // 0x76eb1c: InitAsync() -> Future<List<Object?>>
    //     0x76eb1c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76eb20: ldr             x0, [x0, #0x1d0]
    //     0x76eb24: bl              #0x74ada8  ; InitAsyncStub
    // 0x76eb28: ldur            x3, [fp, #-0x78]
    // 0x76eb2c: cmp             w3, NULL
    // 0x76eb30: b.eq            #0x76ecac
    // 0x76eb34: mov             x0, x3
    // 0x76eb38: r2 = Null
    //     0x76eb38: mov             x2, NULL
    // 0x76eb3c: r1 = Null
    //     0x76eb3c: mov             x1, NULL
    // 0x76eb40: r4 = 60
    //     0x76eb40: movz            x4, #0x3c
    // 0x76eb44: branchIfSmi(r0, 0x76eb50)
    //     0x76eb44: tbz             w0, #0, #0x76eb50
    // 0x76eb48: r4 = LoadClassIdInstr(r0)
    //     0x76eb48: ldur            x4, [x0, #-1]
    //     0x76eb4c: ubfx            x4, x4, #0xc, #0x14
    // 0x76eb50: sub             x4, x4, #0x5a
    // 0x76eb54: cmp             x4, #2
    // 0x76eb58: b.ls            #0x76eb6c
    // 0x76eb5c: r8 = List<Object?>
    //     0x76eb5c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76eb60: r3 = Null
    //     0x76eb60: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e70] Null
    //     0x76eb64: ldr             x3, [x3, #0xe70]
    // 0x76eb68: r0 = List<Object?>()
    //     0x76eb68: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76eb6c: ldur            x0, [fp, #-0x78]
    // 0x76eb70: r1 = LoadClassIdInstr(r0)
    //     0x76eb70: ldur            x1, [x0, #-1]
    //     0x76eb74: ubfx            x1, x1, #0xc, #0x14
    // 0x76eb78: stp             xzr, x0, [SP]
    // 0x76eb7c: mov             x0, x1
    // 0x76eb80: mov             lr, x0
    // 0x76eb84: ldr             lr, [x21, lr, lsl #3]
    // 0x76eb88: blr             lr
    // 0x76eb8c: mov             x3, x0
    // 0x76eb90: stur            x3, [fp, #-0x78]
    // 0x76eb94: cmp             w3, NULL
    // 0x76eb98: b.eq            #0x76ecb0
    // 0x76eb9c: mov             x0, x3
    // 0x76eba0: r2 = Null
    //     0x76eba0: mov             x2, NULL
    // 0x76eba4: r1 = Null
    //     0x76eba4: mov             x1, NULL
    // 0x76eba8: r4 = 60
    //     0x76eba8: movz            x4, #0x3c
    // 0x76ebac: branchIfSmi(r0, 0x76ebb8)
    //     0x76ebac: tbz             w0, #0, #0x76ebb8
    // 0x76ebb0: r4 = LoadClassIdInstr(r0)
    //     0x76ebb0: ldur            x4, [x0, #-1]
    //     0x76ebb4: ubfx            x4, x4, #0xc, #0x14
    // 0x76ebb8: cmp             x4, #0x185
    // 0x76ebbc: b.eq            #0x76ebd4
    // 0x76ebc0: r8 = kVa
    //     0x76ebc0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76ebc4: ldr             x8, [x8, #0xd30]
    // 0x76ebc8: r3 = Null
    //     0x76ebc8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e80] Null
    //     0x76ebcc: ldr             x3, [x3, #0xe80]
    // 0x76ebd0: r0 = DefaultTypeTest()
    //     0x76ebd0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76ebd4: ldur            x1, [fp, #-0x78]
    // 0x76ebd8: LoadField: r2 = r1->field_2b
    //     0x76ebd8: ldur            w2, [x1, #0x2b]
    // 0x76ebdc: DecompressPointer r2
    //     0x76ebdc: add             x2, x2, HEAP, lsl #32
    // 0x76ebe0: stur            x2, [fp, #-0x80]
    // 0x76ebe4: cmp             w2, NULL
    // 0x76ebe8: b.eq            #0x76ecb4
    // 0x76ebec: stp             x1, x2, [SP]
    // 0x76ebf0: mov             x0, x2
    // 0x76ebf4: ClosureCall
    //     0x76ebf4: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x76ebf8: ldur            x2, [x0, #0x1f]
    //     0x76ebfc: blr             x2
    // 0x76ec00: r16 = true
    //     0x76ec00: add             x16, NULL, #0x20  ; true
    // 0x76ec04: str             x16, [SP]
    // 0x76ec08: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76ec08: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76ec0c: ldr             x4, [x4, #0x870]
    // 0x76ec10: r0 = call 0x392d98
    //     0x76ec10: bl              #0x392d98
    // 0x76ec14: r0 = ReturnAsyncNotFuture()
    //     0x76ec14: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ec18: sub             SP, fp, #0x90
    // 0x76ec1c: r1 = 60
    //     0x76ec1c: movz            x1, #0x3c
    // 0x76ec20: branchIfSmi(r0, 0x76ec2c)
    //     0x76ec20: tbz             w0, #0, #0x76ec2c
    // 0x76ec24: r1 = LoadClassIdInstr(r0)
    //     0x76ec24: ldur            x1, [x0, #-1]
    //     0x76ec28: ubfx            x1, x1, #0xc, #0x14
    // 0x76ec2c: cmp             x1, #0x5e5
    // 0x76ec30: b.ne            #0x76ec48
    // 0x76ec34: str             x0, [SP]
    // 0x76ec38: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ec38: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ec3c: ldr             x4, [x4, #0x878]
    // 0x76ec40: r0 = call 0x392d98
    //     0x76ec40: bl              #0x392d98
    // 0x76ec44: r0 = ReturnAsyncNotFuture()
    //     0x76ec44: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ec48: r1 = 60
    //     0x76ec48: movz            x1, #0x3c
    // 0x76ec4c: branchIfSmi(r0, 0x76ec58)
    //     0x76ec4c: tbz             w0, #0, #0x76ec58
    // 0x76ec50: r1 = LoadClassIdInstr(r0)
    //     0x76ec50: ldur            x1, [x0, #-1]
    //     0x76ec54: ubfx            x1, x1, #0xc, #0x14
    // 0x76ec58: str             x0, [SP]
    // 0x76ec5c: mov             x0, x1
    // 0x76ec60: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76ec60: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76ec64: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76ec64: movz            x17, #0x3a5d
    //     0x76ec68: add             lr, x0, x17
    //     0x76ec6c: ldr             lr, [x21, lr, lsl #3]
    //     0x76ec70: blr             lr
    // 0x76ec74: stur            x0, [fp, #-0x70]
    // 0x76ec78: r0 = Mha()
    //     0x76ec78: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76ec7c: mov             x1, x0
    // 0x76ec80: r0 = "error"
    //     0x76ec80: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76ec84: StoreField: r1->field_7 = r0
    //     0x76ec84: stur            w0, [x1, #7]
    // 0x76ec88: ldur            x0, [fp, #-0x70]
    // 0x76ec8c: StoreField: r1->field_b = r0
    //     0x76ec8c: stur            w0, [x1, #0xb]
    // 0x76ec90: str             x1, [SP]
    // 0x76ec94: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ec94: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ec98: ldr             x4, [x4, #0x878]
    // 0x76ec9c: r0 = call 0x392d98
    //     0x76ec9c: bl              #0x392d98
    // 0x76eca0: r0 = ReturnAsyncNotFuture()
    //     0x76eca0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76eca4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76eca4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76eca8: b               #0x76eb1c
    // 0x76ecac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ecac: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ecb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ecb0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ecb4: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76ecb4: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76ecb8, size: 0x2c0
    // 0x76ecb8: EnterFrame
    //     0x76ecb8: stp             fp, lr, [SP, #-0x10]!
    //     0x76ecbc: mov             fp, SP
    // 0x76ecc0: AllocStack(0xc0)
    //     0x76ecc0: sub             SP, SP, #0xc0
    // 0x76ecc4: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x76ecc4: stur            NULL, [fp, #-8]
    //     0x76ecc8: movz            x0, #0
    //     0x76eccc: add             x1, fp, w0, sxtw #2
    //     0x76ecd0: ldr             x1, [x1, #0x18]
    //     0x76ecd4: add             x2, fp, w0, sxtw #2
    //     0x76ecd8: ldr             x2, [x2, #0x10]
    //     0x76ecdc: stur            x2, [fp, #-0x88]
    //     0x76ece0: ldur            w3, [x1, #0x17]
    //     0x76ece4: add             x3, x3, HEAP, lsl #32
    //     0x76ece8: stur            x3, [fp, #-0x80]
    // 0x76ecec: CheckStackOverflow
    //     0x76ecec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76ecf0: cmp             SP, x16
    //     0x76ecf4: b.ls            #0x76ef5c
    // 0x76ecf8: InitAsync() -> Future<List<Object?>>
    //     0x76ecf8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76ecfc: ldr             x0, [x0, #0x1d0]
    //     0x76ed00: bl              #0x74ada8  ; InitAsyncStub
    // 0x76ed04: ldur            x3, [fp, #-0x88]
    // 0x76ed08: cmp             w3, NULL
    // 0x76ed0c: b.eq            #0x76ef64
    // 0x76ed10: mov             x0, x3
    // 0x76ed14: r2 = Null
    //     0x76ed14: mov             x2, NULL
    // 0x76ed18: r1 = Null
    //     0x76ed18: mov             x1, NULL
    // 0x76ed1c: r4 = 60
    //     0x76ed1c: movz            x4, #0x3c
    // 0x76ed20: branchIfSmi(r0, 0x76ed2c)
    //     0x76ed20: tbz             w0, #0, #0x76ed2c
    // 0x76ed24: r4 = LoadClassIdInstr(r0)
    //     0x76ed24: ldur            x4, [x0, #-1]
    //     0x76ed28: ubfx            x4, x4, #0xc, #0x14
    // 0x76ed2c: sub             x4, x4, #0x5a
    // 0x76ed30: cmp             x4, #2
    // 0x76ed34: b.ls            #0x76ed48
    // 0x76ed38: r8 = List<Object?>
    //     0x76ed38: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76ed3c: r3 = Null
    //     0x76ed3c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e90] Null
    //     0x76ed40: ldr             x3, [x3, #0xe90]
    // 0x76ed44: r0 = List<Object?>()
    //     0x76ed44: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76ed48: ldur            x1, [fp, #-0x88]
    // 0x76ed4c: r0 = LoadClassIdInstr(r1)
    //     0x76ed4c: ldur            x0, [x1, #-1]
    //     0x76ed50: ubfx            x0, x0, #0xc, #0x14
    // 0x76ed54: stp             xzr, x1, [SP]
    // 0x76ed58: mov             lr, x0
    // 0x76ed5c: ldr             lr, [x21, lr, lsl #3]
    // 0x76ed60: blr             lr
    // 0x76ed64: mov             x3, x0
    // 0x76ed68: stur            x3, [fp, #-0x90]
    // 0x76ed6c: cmp             w3, NULL
    // 0x76ed70: b.eq            #0x76ef68
    // 0x76ed74: mov             x0, x3
    // 0x76ed78: r2 = Null
    //     0x76ed78: mov             x2, NULL
    // 0x76ed7c: r1 = Null
    //     0x76ed7c: mov             x1, NULL
    // 0x76ed80: r4 = 60
    //     0x76ed80: movz            x4, #0x3c
    // 0x76ed84: branchIfSmi(r0, 0x76ed90)
    //     0x76ed84: tbz             w0, #0, #0x76ed90
    // 0x76ed88: r4 = LoadClassIdInstr(r0)
    //     0x76ed88: ldur            x4, [x0, #-1]
    //     0x76ed8c: ubfx            x4, x4, #0xc, #0x14
    // 0x76ed90: cmp             x4, #0x185
    // 0x76ed94: b.eq            #0x76edac
    // 0x76ed98: r8 = kVa
    //     0x76ed98: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76ed9c: ldr             x8, [x8, #0xd30]
    // 0x76eda0: r3 = Null
    //     0x76eda0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ea0] Null
    //     0x76eda4: ldr             x3, [x3, #0xea0]
    // 0x76eda8: r0 = DefaultTypeTest()
    //     0x76eda8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76edac: ldur            x1, [fp, #-0x88]
    // 0x76edb0: r0 = LoadClassIdInstr(r1)
    //     0x76edb0: ldur            x0, [x1, #-1]
    //     0x76edb4: ubfx            x0, x0, #0xc, #0x14
    // 0x76edb8: r16 = 2
    //     0x76edb8: movz            x16, #0x2
    // 0x76edbc: stp             x16, x1, [SP]
    // 0x76edc0: mov             lr, x0
    // 0x76edc4: ldr             lr, [x21, lr, lsl #3]
    // 0x76edc8: blr             lr
    // 0x76edcc: mov             x3, x0
    // 0x76edd0: stur            x3, [fp, #-0x98]
    // 0x76edd4: cmp             w3, NULL
    // 0x76edd8: b.eq            #0x76ef6c
    // 0x76eddc: mov             x0, x3
    // 0x76ede0: r2 = Null
    //     0x76ede0: mov             x2, NULL
    // 0x76ede4: r1 = Null
    //     0x76ede4: mov             x1, NULL
    // 0x76ede8: r4 = 60
    //     0x76ede8: movz            x4, #0x3c
    // 0x76edec: branchIfSmi(r0, 0x76edf8)
    //     0x76edec: tbz             w0, #0, #0x76edf8
    // 0x76edf0: r4 = LoadClassIdInstr(r0)
    //     0x76edf0: ldur            x4, [x0, #-1]
    //     0x76edf4: ubfx            x4, x4, #0xc, #0x14
    // 0x76edf8: sub             x4, x4, #0x5e
    // 0x76edfc: cmp             x4, #1
    // 0x76ee00: b.ls            #0x76ee14
    // 0x76ee04: r8 = String
    //     0x76ee04: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76ee08: r3 = Null
    //     0x76ee08: add             x3, PP, #0x19, lsl #12  ; [pp+0x19eb0] Null
    //     0x76ee0c: ldr             x3, [x3, #0xeb0]
    // 0x76ee10: r0 = String()
    //     0x76ee10: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76ee14: ldur            x0, [fp, #-0x88]
    // 0x76ee18: r1 = LoadClassIdInstr(r0)
    //     0x76ee18: ldur            x1, [x0, #-1]
    //     0x76ee1c: ubfx            x1, x1, #0xc, #0x14
    // 0x76ee20: r16 = 4
    //     0x76ee20: movz            x16, #0x4
    // 0x76ee24: stp             x16, x0, [SP]
    // 0x76ee28: mov             x0, x1
    // 0x76ee2c: mov             lr, x0
    // 0x76ee30: ldr             lr, [x21, lr, lsl #3]
    // 0x76ee34: blr             lr
    // 0x76ee38: mov             x3, x0
    // 0x76ee3c: stur            x3, [fp, #-0x88]
    // 0x76ee40: cmp             w3, NULL
    // 0x76ee44: b.eq            #0x76ef70
    // 0x76ee48: mov             x0, x3
    // 0x76ee4c: r2 = Null
    //     0x76ee4c: mov             x2, NULL
    // 0x76ee50: r1 = Null
    //     0x76ee50: mov             x1, NULL
    // 0x76ee54: r4 = 60
    //     0x76ee54: movz            x4, #0x3c
    // 0x76ee58: branchIfSmi(r0, 0x76ee64)
    //     0x76ee58: tbz             w0, #0, #0x76ee64
    // 0x76ee5c: r4 = LoadClassIdInstr(r0)
    //     0x76ee5c: ldur            x4, [x0, #-1]
    //     0x76ee60: ubfx            x4, x4, #0xc, #0x14
    // 0x76ee64: cmp             x4, #0x17f
    // 0x76ee68: b.eq            #0x76ee80
    // 0x76ee6c: r8 = qVa
    //     0x76ee6c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19ec0] Type: qVa
    //     0x76ee70: ldr             x8, [x8, #0xec0]
    // 0x76ee74: r3 = Null
    //     0x76ee74: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ec8] Null
    //     0x76ee78: ldr             x3, [x3, #0xec8]
    // 0x76ee7c: r0 = DefaultTypeTest()
    //     0x76ee7c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76ee80: ldur            x1, [fp, #-0x90]
    // 0x76ee84: LoadField: r2 = r1->field_27
    //     0x76ee84: ldur            w2, [x1, #0x27]
    // 0x76ee88: DecompressPointer r2
    //     0x76ee88: add             x2, x2, HEAP, lsl #32
    // 0x76ee8c: stur            x2, [fp, #-0xa0]
    // 0x76ee90: cmp             w2, NULL
    // 0x76ee94: b.eq            #0x76ef74
    // 0x76ee98: stp             x1, x2, [SP, #0x10]
    // 0x76ee9c: ldur            x16, [fp, #-0x98]
    // 0x76eea0: ldur            lr, [fp, #-0x88]
    // 0x76eea4: stp             lr, x16, [SP]
    // 0x76eea8: mov             x0, x2
    // 0x76eeac: ClosureCall
    //     0x76eeac: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x76eeb0: ldur            x2, [x0, #0x1f]
    //     0x76eeb4: blr             x2
    // 0x76eeb8: r16 = true
    //     0x76eeb8: add             x16, NULL, #0x20  ; true
    // 0x76eebc: str             x16, [SP]
    // 0x76eec0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76eec0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76eec4: ldr             x4, [x4, #0x870]
    // 0x76eec8: r0 = call 0x392d98
    //     0x76eec8: bl              #0x392d98
    // 0x76eecc: r0 = ReturnAsyncNotFuture()
    //     0x76eecc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76eed0: sub             SP, fp, #0xc0
    // 0x76eed4: r1 = 60
    //     0x76eed4: movz            x1, #0x3c
    // 0x76eed8: branchIfSmi(r0, 0x76eee4)
    //     0x76eed8: tbz             w0, #0, #0x76eee4
    // 0x76eedc: r1 = LoadClassIdInstr(r0)
    //     0x76eedc: ldur            x1, [x0, #-1]
    //     0x76eee0: ubfx            x1, x1, #0xc, #0x14
    // 0x76eee4: cmp             x1, #0x5e5
    // 0x76eee8: b.ne            #0x76ef00
    // 0x76eeec: str             x0, [SP]
    // 0x76eef0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76eef0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76eef4: ldr             x4, [x4, #0x878]
    // 0x76eef8: r0 = call 0x392d98
    //     0x76eef8: bl              #0x392d98
    // 0x76eefc: r0 = ReturnAsyncNotFuture()
    //     0x76eefc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ef00: r1 = 60
    //     0x76ef00: movz            x1, #0x3c
    // 0x76ef04: branchIfSmi(r0, 0x76ef10)
    //     0x76ef04: tbz             w0, #0, #0x76ef10
    // 0x76ef08: r1 = LoadClassIdInstr(r0)
    //     0x76ef08: ldur            x1, [x0, #-1]
    //     0x76ef0c: ubfx            x1, x1, #0xc, #0x14
    // 0x76ef10: str             x0, [SP]
    // 0x76ef14: mov             x0, x1
    // 0x76ef18: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76ef18: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76ef1c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76ef1c: movz            x17, #0x3a5d
    //     0x76ef20: add             lr, x0, x17
    //     0x76ef24: ldr             lr, [x21, lr, lsl #3]
    //     0x76ef28: blr             lr
    // 0x76ef2c: stur            x0, [fp, #-0x80]
    // 0x76ef30: r0 = Mha()
    //     0x76ef30: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76ef34: mov             x1, x0
    // 0x76ef38: r0 = "error"
    //     0x76ef38: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76ef3c: StoreField: r1->field_7 = r0
    //     0x76ef3c: stur            w0, [x1, #7]
    // 0x76ef40: ldur            x0, [fp, #-0x80]
    // 0x76ef44: StoreField: r1->field_b = r0
    //     0x76ef44: stur            w0, [x1, #0xb]
    // 0x76ef48: str             x1, [SP]
    // 0x76ef4c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ef4c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ef50: ldr             x4, [x4, #0x878]
    // 0x76ef54: r0 = call 0x392d98
    //     0x76ef54: bl              #0x392d98
    // 0x76ef58: r0 = ReturnAsyncNotFuture()
    //     0x76ef58: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ef5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76ef5c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76ef60: b               #0x76ecf8
    // 0x76ef64: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ef64: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ef68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ef68: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ef6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ef6c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ef70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ef70: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ef74: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76ef74: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76ef78, size: 0x1dc
    // 0x76ef78: EnterFrame
    //     0x76ef78: stp             fp, lr, [SP, #-0x10]!
    //     0x76ef7c: mov             fp, SP
    // 0x76ef80: AllocStack(0x90)
    //     0x76ef80: sub             SP, SP, #0x90
    // 0x76ef84: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76ef84: stur            NULL, [fp, #-8]
    //     0x76ef88: movz            x0, #0
    //     0x76ef8c: add             x1, fp, w0, sxtw #2
    //     0x76ef90: ldr             x1, [x1, #0x18]
    //     0x76ef94: add             x2, fp, w0, sxtw #2
    //     0x76ef98: ldr             x2, [x2, #0x10]
    //     0x76ef9c: stur            x2, [fp, #-0x78]
    //     0x76efa0: ldur            w3, [x1, #0x17]
    //     0x76efa4: add             x3, x3, HEAP, lsl #32
    //     0x76efa8: stur            x3, [fp, #-0x70]
    // 0x76efac: CheckStackOverflow
    //     0x76efac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76efb0: cmp             SP, x16
    //     0x76efb4: b.ls            #0x76f140
    // 0x76efb8: InitAsync() -> Future<List<Object?>>
    //     0x76efb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76efbc: ldr             x0, [x0, #0x1d0]
    //     0x76efc0: bl              #0x74ada8  ; InitAsyncStub
    // 0x76efc4: ldur            x3, [fp, #-0x78]
    // 0x76efc8: cmp             w3, NULL
    // 0x76efcc: b.eq            #0x76f148
    // 0x76efd0: mov             x0, x3
    // 0x76efd4: r2 = Null
    //     0x76efd4: mov             x2, NULL
    // 0x76efd8: r1 = Null
    //     0x76efd8: mov             x1, NULL
    // 0x76efdc: r4 = 60
    //     0x76efdc: movz            x4, #0x3c
    // 0x76efe0: branchIfSmi(r0, 0x76efec)
    //     0x76efe0: tbz             w0, #0, #0x76efec
    // 0x76efe4: r4 = LoadClassIdInstr(r0)
    //     0x76efe4: ldur            x4, [x0, #-1]
    //     0x76efe8: ubfx            x4, x4, #0xc, #0x14
    // 0x76efec: sub             x4, x4, #0x5a
    // 0x76eff0: cmp             x4, #2
    // 0x76eff4: b.ls            #0x76f008
    // 0x76eff8: r8 = List<Object?>
    //     0x76eff8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76effc: r3 = Null
    //     0x76effc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ed8] Null
    //     0x76f000: ldr             x3, [x3, #0xed8]
    // 0x76f004: r0 = List<Object?>()
    //     0x76f004: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76f008: ldur            x0, [fp, #-0x78]
    // 0x76f00c: r1 = LoadClassIdInstr(r0)
    //     0x76f00c: ldur            x1, [x0, #-1]
    //     0x76f010: ubfx            x1, x1, #0xc, #0x14
    // 0x76f014: stp             xzr, x0, [SP]
    // 0x76f018: mov             x0, x1
    // 0x76f01c: mov             lr, x0
    // 0x76f020: ldr             lr, [x21, lr, lsl #3]
    // 0x76f024: blr             lr
    // 0x76f028: mov             x3, x0
    // 0x76f02c: stur            x3, [fp, #-0x78]
    // 0x76f030: cmp             w3, NULL
    // 0x76f034: b.eq            #0x76f14c
    // 0x76f038: mov             x0, x3
    // 0x76f03c: r2 = Null
    //     0x76f03c: mov             x2, NULL
    // 0x76f040: r1 = Null
    //     0x76f040: mov             x1, NULL
    // 0x76f044: r4 = 60
    //     0x76f044: movz            x4, #0x3c
    // 0x76f048: branchIfSmi(r0, 0x76f054)
    //     0x76f048: tbz             w0, #0, #0x76f054
    // 0x76f04c: r4 = LoadClassIdInstr(r0)
    //     0x76f04c: ldur            x4, [x0, #-1]
    //     0x76f050: ubfx            x4, x4, #0xc, #0x14
    // 0x76f054: cmp             x4, #0x185
    // 0x76f058: b.eq            #0x76f070
    // 0x76f05c: r8 = kVa
    //     0x76f05c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76f060: ldr             x8, [x8, #0xd30]
    // 0x76f064: r3 = Null
    //     0x76f064: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ee8] Null
    //     0x76f068: ldr             x3, [x3, #0xee8]
    // 0x76f06c: r0 = DefaultTypeTest()
    //     0x76f06c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f070: ldur            x1, [fp, #-0x78]
    // 0x76f074: LoadField: r2 = r1->field_23
    //     0x76f074: ldur            w2, [x1, #0x23]
    // 0x76f078: DecompressPointer r2
    //     0x76f078: add             x2, x2, HEAP, lsl #32
    // 0x76f07c: stur            x2, [fp, #-0x80]
    // 0x76f080: cmp             w2, NULL
    // 0x76f084: b.eq            #0x76f150
    // 0x76f088: stp             x1, x2, [SP]
    // 0x76f08c: mov             x0, x2
    // 0x76f090: ClosureCall
    //     0x76f090: ldr             x4, [PP, #0x3a8]  ; [pp+0x3a8] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x76f094: ldur            x2, [x0, #0x1f]
    //     0x76f098: blr             x2
    // 0x76f09c: r16 = true
    //     0x76f09c: add             x16, NULL, #0x20  ; true
    // 0x76f0a0: str             x16, [SP]
    // 0x76f0a4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76f0a4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76f0a8: ldr             x4, [x4, #0x870]
    // 0x76f0ac: r0 = call 0x392d98
    //     0x76f0ac: bl              #0x392d98
    // 0x76f0b0: r0 = ReturnAsyncNotFuture()
    //     0x76f0b0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f0b4: sub             SP, fp, #0x90
    // 0x76f0b8: r1 = 60
    //     0x76f0b8: movz            x1, #0x3c
    // 0x76f0bc: branchIfSmi(r0, 0x76f0c8)
    //     0x76f0bc: tbz             w0, #0, #0x76f0c8
    // 0x76f0c0: r1 = LoadClassIdInstr(r0)
    //     0x76f0c0: ldur            x1, [x0, #-1]
    //     0x76f0c4: ubfx            x1, x1, #0xc, #0x14
    // 0x76f0c8: cmp             x1, #0x5e5
    // 0x76f0cc: b.ne            #0x76f0e4
    // 0x76f0d0: str             x0, [SP]
    // 0x76f0d4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f0d4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f0d8: ldr             x4, [x4, #0x878]
    // 0x76f0dc: r0 = call 0x392d98
    //     0x76f0dc: bl              #0x392d98
    // 0x76f0e0: r0 = ReturnAsyncNotFuture()
    //     0x76f0e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f0e4: r1 = 60
    //     0x76f0e4: movz            x1, #0x3c
    // 0x76f0e8: branchIfSmi(r0, 0x76f0f4)
    //     0x76f0e8: tbz             w0, #0, #0x76f0f4
    // 0x76f0ec: r1 = LoadClassIdInstr(r0)
    //     0x76f0ec: ldur            x1, [x0, #-1]
    //     0x76f0f0: ubfx            x1, x1, #0xc, #0x14
    // 0x76f0f4: str             x0, [SP]
    // 0x76f0f8: mov             x0, x1
    // 0x76f0fc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76f0fc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76f100: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76f100: movz            x17, #0x3a5d
    //     0x76f104: add             lr, x0, x17
    //     0x76f108: ldr             lr, [x21, lr, lsl #3]
    //     0x76f10c: blr             lr
    // 0x76f110: stur            x0, [fp, #-0x70]
    // 0x76f114: r0 = Mha()
    //     0x76f114: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76f118: mov             x1, x0
    // 0x76f11c: r0 = "error"
    //     0x76f11c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76f120: StoreField: r1->field_7 = r0
    //     0x76f120: stur            w0, [x1, #7]
    // 0x76f124: ldur            x0, [fp, #-0x70]
    // 0x76f128: StoreField: r1->field_b = r0
    //     0x76f128: stur            w0, [x1, #0xb]
    // 0x76f12c: str             x1, [SP]
    // 0x76f130: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f130: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f134: ldr             x4, [x4, #0x878]
    // 0x76f138: r0 = call 0x392d98
    //     0x76f138: bl              #0x392d98
    // 0x76f13c: r0 = ReturnAsyncNotFuture()
    //     0x76f13c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f140: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76f140: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76f144: b               #0x76efb8
    // 0x76f148: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f148: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f14c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f14c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f150: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76f150: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76f154, size: 0x2c4
    // 0x76f154: EnterFrame
    //     0x76f154: stp             fp, lr, [SP, #-0x10]!
    //     0x76f158: mov             fp, SP
    // 0x76f15c: AllocStack(0xc0)
    //     0x76f15c: sub             SP, SP, #0xc0
    // 0x76f160: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x76f160: stur            NULL, [fp, #-8]
    //     0x76f164: movz            x0, #0
    //     0x76f168: add             x1, fp, w0, sxtw #2
    //     0x76f16c: ldr             x1, [x1, #0x18]
    //     0x76f170: add             x2, fp, w0, sxtw #2
    //     0x76f174: ldr             x2, [x2, #0x10]
    //     0x76f178: stur            x2, [fp, #-0x88]
    //     0x76f17c: ldur            w3, [x1, #0x17]
    //     0x76f180: add             x3, x3, HEAP, lsl #32
    //     0x76f184: stur            x3, [fp, #-0x80]
    // 0x76f188: CheckStackOverflow
    //     0x76f188: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76f18c: cmp             SP, x16
    //     0x76f190: b.ls            #0x76f3fc
    // 0x76f194: InitAsync() -> Future<List<Object?>>
    //     0x76f194: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76f198: ldr             x0, [x0, #0x1d0]
    //     0x76f19c: bl              #0x74ada8  ; InitAsyncStub
    // 0x76f1a0: ldur            x3, [fp, #-0x88]
    // 0x76f1a4: cmp             w3, NULL
    // 0x76f1a8: b.eq            #0x76f404
    // 0x76f1ac: mov             x0, x3
    // 0x76f1b0: r2 = Null
    //     0x76f1b0: mov             x2, NULL
    // 0x76f1b4: r1 = Null
    //     0x76f1b4: mov             x1, NULL
    // 0x76f1b8: r4 = 60
    //     0x76f1b8: movz            x4, #0x3c
    // 0x76f1bc: branchIfSmi(r0, 0x76f1c8)
    //     0x76f1bc: tbz             w0, #0, #0x76f1c8
    // 0x76f1c0: r4 = LoadClassIdInstr(r0)
    //     0x76f1c0: ldur            x4, [x0, #-1]
    //     0x76f1c4: ubfx            x4, x4, #0xc, #0x14
    // 0x76f1c8: sub             x4, x4, #0x5a
    // 0x76f1cc: cmp             x4, #2
    // 0x76f1d0: b.ls            #0x76f1e4
    // 0x76f1d4: r8 = List<Object?>
    //     0x76f1d4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76f1d8: r3 = Null
    //     0x76f1d8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ef8] Null
    //     0x76f1dc: ldr             x3, [x3, #0xef8]
    // 0x76f1e0: r0 = List<Object?>()
    //     0x76f1e0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76f1e4: ldur            x1, [fp, #-0x88]
    // 0x76f1e8: r0 = LoadClassIdInstr(r1)
    //     0x76f1e8: ldur            x0, [x1, #-1]
    //     0x76f1ec: ubfx            x0, x0, #0xc, #0x14
    // 0x76f1f0: stp             xzr, x1, [SP]
    // 0x76f1f4: mov             lr, x0
    // 0x76f1f8: ldr             lr, [x21, lr, lsl #3]
    // 0x76f1fc: blr             lr
    // 0x76f200: mov             x3, x0
    // 0x76f204: stur            x3, [fp, #-0x90]
    // 0x76f208: cmp             w3, NULL
    // 0x76f20c: b.eq            #0x76f408
    // 0x76f210: mov             x0, x3
    // 0x76f214: r2 = Null
    //     0x76f214: mov             x2, NULL
    // 0x76f218: r1 = Null
    //     0x76f218: mov             x1, NULL
    // 0x76f21c: r4 = 60
    //     0x76f21c: movz            x4, #0x3c
    // 0x76f220: branchIfSmi(r0, 0x76f22c)
    //     0x76f220: tbz             w0, #0, #0x76f22c
    // 0x76f224: r4 = LoadClassIdInstr(r0)
    //     0x76f224: ldur            x4, [x0, #-1]
    //     0x76f228: ubfx            x4, x4, #0xc, #0x14
    // 0x76f22c: cmp             x4, #0x185
    // 0x76f230: b.eq            #0x76f248
    // 0x76f234: r8 = kVa
    //     0x76f234: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76f238: ldr             x8, [x8, #0xd30]
    // 0x76f23c: r3 = Null
    //     0x76f23c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f08] Null
    //     0x76f240: ldr             x3, [x3, #0xf08]
    // 0x76f244: r0 = DefaultTypeTest()
    //     0x76f244: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f248: ldur            x1, [fp, #-0x88]
    // 0x76f24c: r0 = LoadClassIdInstr(r1)
    //     0x76f24c: ldur            x0, [x1, #-1]
    //     0x76f250: ubfx            x0, x0, #0xc, #0x14
    // 0x76f254: r16 = 2
    //     0x76f254: movz            x16, #0x2
    // 0x76f258: stp             x16, x1, [SP]
    // 0x76f25c: mov             lr, x0
    // 0x76f260: ldr             lr, [x21, lr, lsl #3]
    // 0x76f264: blr             lr
    // 0x76f268: mov             x3, x0
    // 0x76f26c: stur            x3, [fp, #-0x98]
    // 0x76f270: cmp             w3, NULL
    // 0x76f274: b.eq            #0x76f40c
    // 0x76f278: mov             x0, x3
    // 0x76f27c: r2 = Null
    //     0x76f27c: mov             x2, NULL
    // 0x76f280: r1 = Null
    //     0x76f280: mov             x1, NULL
    // 0x76f284: r4 = 60
    //     0x76f284: movz            x4, #0x3c
    // 0x76f288: branchIfSmi(r0, 0x76f294)
    //     0x76f288: tbz             w0, #0, #0x76f294
    // 0x76f28c: r4 = LoadClassIdInstr(r0)
    //     0x76f28c: ldur            x4, [x0, #-1]
    //     0x76f290: ubfx            x4, x4, #0xc, #0x14
    // 0x76f294: sub             x4, x4, #0x18a
    // 0x76f298: cmp             x4, #1
    // 0x76f29c: b.ls            #0x76f2b4
    // 0x76f2a0: r8 = Gx
    //     0x76f2a0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19f18] Type: Gx
    //     0x76f2a4: ldr             x8, [x8, #0xf18]
    // 0x76f2a8: r3 = Null
    //     0x76f2a8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f20] Null
    //     0x76f2ac: ldr             x3, [x3, #0xf20]
    // 0x76f2b0: r0 = DefaultTypeTest()
    //     0x76f2b0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f2b4: ldur            x0, [fp, #-0x88]
    // 0x76f2b8: r1 = LoadClassIdInstr(r0)
    //     0x76f2b8: ldur            x1, [x0, #-1]
    //     0x76f2bc: ubfx            x1, x1, #0xc, #0x14
    // 0x76f2c0: r16 = 4
    //     0x76f2c0: movz            x16, #0x4
    // 0x76f2c4: stp             x16, x0, [SP]
    // 0x76f2c8: mov             x0, x1
    // 0x76f2cc: mov             lr, x0
    // 0x76f2d0: ldr             lr, [x21, lr, lsl #3]
    // 0x76f2d4: blr             lr
    // 0x76f2d8: mov             x3, x0
    // 0x76f2dc: stur            x3, [fp, #-0x88]
    // 0x76f2e0: cmp             w3, NULL
    // 0x76f2e4: b.eq            #0x76f410
    // 0x76f2e8: mov             x0, x3
    // 0x76f2ec: r2 = Null
    //     0x76f2ec: mov             x2, NULL
    // 0x76f2f0: r1 = Null
    //     0x76f2f0: mov             x1, NULL
    // 0x76f2f4: r4 = 60
    //     0x76f2f4: movz            x4, #0x3c
    // 0x76f2f8: branchIfSmi(r0, 0x76f304)
    //     0x76f2f8: tbz             w0, #0, #0x76f304
    // 0x76f2fc: r4 = LoadClassIdInstr(r0)
    //     0x76f2fc: ldur            x4, [x0, #-1]
    //     0x76f300: ubfx            x4, x4, #0xc, #0x14
    // 0x76f304: cmp             x4, #0x180
    // 0x76f308: b.eq            #0x76f320
    // 0x76f30c: r8 = pVa
    //     0x76f30c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19f30] Type: pVa
    //     0x76f310: ldr             x8, [x8, #0xf30]
    // 0x76f314: r3 = Null
    //     0x76f314: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f38] Null
    //     0x76f318: ldr             x3, [x3, #0xf38]
    // 0x76f31c: r0 = DefaultTypeTest()
    //     0x76f31c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f320: ldur            x1, [fp, #-0x90]
    // 0x76f324: LoadField: r2 = r1->field_1f
    //     0x76f324: ldur            w2, [x1, #0x1f]
    // 0x76f328: DecompressPointer r2
    //     0x76f328: add             x2, x2, HEAP, lsl #32
    // 0x76f32c: stur            x2, [fp, #-0xa0]
    // 0x76f330: cmp             w2, NULL
    // 0x76f334: b.eq            #0x76f414
    // 0x76f338: stp             x1, x2, [SP, #0x10]
    // 0x76f33c: ldur            x16, [fp, #-0x98]
    // 0x76f340: ldur            lr, [fp, #-0x88]
    // 0x76f344: stp             lr, x16, [SP]
    // 0x76f348: mov             x0, x2
    // 0x76f34c: ClosureCall
    //     0x76f34c: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x76f350: ldur            x2, [x0, #0x1f]
    //     0x76f354: blr             x2
    // 0x76f358: r16 = true
    //     0x76f358: add             x16, NULL, #0x20  ; true
    // 0x76f35c: str             x16, [SP]
    // 0x76f360: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76f360: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76f364: ldr             x4, [x4, #0x870]
    // 0x76f368: r0 = call 0x392d98
    //     0x76f368: bl              #0x392d98
    // 0x76f36c: r0 = ReturnAsyncNotFuture()
    //     0x76f36c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f370: sub             SP, fp, #0xc0
    // 0x76f374: r1 = 60
    //     0x76f374: movz            x1, #0x3c
    // 0x76f378: branchIfSmi(r0, 0x76f384)
    //     0x76f378: tbz             w0, #0, #0x76f384
    // 0x76f37c: r1 = LoadClassIdInstr(r0)
    //     0x76f37c: ldur            x1, [x0, #-1]
    //     0x76f380: ubfx            x1, x1, #0xc, #0x14
    // 0x76f384: cmp             x1, #0x5e5
    // 0x76f388: b.ne            #0x76f3a0
    // 0x76f38c: str             x0, [SP]
    // 0x76f390: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f390: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f394: ldr             x4, [x4, #0x878]
    // 0x76f398: r0 = call 0x392d98
    //     0x76f398: bl              #0x392d98
    // 0x76f39c: r0 = ReturnAsyncNotFuture()
    //     0x76f39c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f3a0: r1 = 60
    //     0x76f3a0: movz            x1, #0x3c
    // 0x76f3a4: branchIfSmi(r0, 0x76f3b0)
    //     0x76f3a4: tbz             w0, #0, #0x76f3b0
    // 0x76f3a8: r1 = LoadClassIdInstr(r0)
    //     0x76f3a8: ldur            x1, [x0, #-1]
    //     0x76f3ac: ubfx            x1, x1, #0xc, #0x14
    // 0x76f3b0: str             x0, [SP]
    // 0x76f3b4: mov             x0, x1
    // 0x76f3b8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76f3b8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76f3bc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76f3bc: movz            x17, #0x3a5d
    //     0x76f3c0: add             lr, x0, x17
    //     0x76f3c4: ldr             lr, [x21, lr, lsl #3]
    //     0x76f3c8: blr             lr
    // 0x76f3cc: stur            x0, [fp, #-0x80]
    // 0x76f3d0: r0 = Mha()
    //     0x76f3d0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76f3d4: mov             x1, x0
    // 0x76f3d8: r0 = "error"
    //     0x76f3d8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76f3dc: StoreField: r1->field_7 = r0
    //     0x76f3dc: stur            w0, [x1, #7]
    // 0x76f3e0: ldur            x0, [fp, #-0x80]
    // 0x76f3e4: StoreField: r1->field_b = r0
    //     0x76f3e4: stur            w0, [x1, #0xb]
    // 0x76f3e8: str             x1, [SP]
    // 0x76f3ec: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f3ec: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f3f0: ldr             x4, [x4, #0x878]
    // 0x76f3f4: r0 = call 0x392d98
    //     0x76f3f4: bl              #0x392d98
    // 0x76f3f8: r0 = ReturnAsyncNotFuture()
    //     0x76f3f8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f3fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76f3fc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76f400: b               #0x76f194
    // 0x76f404: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f404: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f408: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f408: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f40c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f40c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f410: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f410: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f414: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76f414: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76f418, size: 0x250
    // 0x76f418: EnterFrame
    //     0x76f418: stp             fp, lr, [SP, #-0x10]!
    //     0x76f41c: mov             fp, SP
    // 0x76f420: AllocStack(0xa8)
    //     0x76f420: sub             SP, SP, #0xa8
    // 0x76f424: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x76f424: stur            NULL, [fp, #-8]
    //     0x76f428: movz            x0, #0
    //     0x76f42c: add             x1, fp, w0, sxtw #2
    //     0x76f430: ldr             x1, [x1, #0x18]
    //     0x76f434: add             x2, fp, w0, sxtw #2
    //     0x76f438: ldr             x2, [x2, #0x10]
    //     0x76f43c: stur            x2, [fp, #-0x80]
    //     0x76f440: ldur            w3, [x1, #0x17]
    //     0x76f444: add             x3, x3, HEAP, lsl #32
    //     0x76f448: stur            x3, [fp, #-0x78]
    // 0x76f44c: CheckStackOverflow
    //     0x76f44c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76f450: cmp             SP, x16
    //     0x76f454: b.ls            #0x76f650
    // 0x76f458: InitAsync() -> Future<List<Object?>>
    //     0x76f458: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76f45c: ldr             x0, [x0, #0x1d0]
    //     0x76f460: bl              #0x74ada8  ; InitAsyncStub
    // 0x76f464: ldur            x3, [fp, #-0x80]
    // 0x76f468: cmp             w3, NULL
    // 0x76f46c: b.eq            #0x76f658
    // 0x76f470: mov             x0, x3
    // 0x76f474: r2 = Null
    //     0x76f474: mov             x2, NULL
    // 0x76f478: r1 = Null
    //     0x76f478: mov             x1, NULL
    // 0x76f47c: r4 = 60
    //     0x76f47c: movz            x4, #0x3c
    // 0x76f480: branchIfSmi(r0, 0x76f48c)
    //     0x76f480: tbz             w0, #0, #0x76f48c
    // 0x76f484: r4 = LoadClassIdInstr(r0)
    //     0x76f484: ldur            x4, [x0, #-1]
    //     0x76f488: ubfx            x4, x4, #0xc, #0x14
    // 0x76f48c: sub             x4, x4, #0x5a
    // 0x76f490: cmp             x4, #2
    // 0x76f494: b.ls            #0x76f4a8
    // 0x76f498: r8 = List<Object?>
    //     0x76f498: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76f49c: r3 = Null
    //     0x76f49c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f48] Null
    //     0x76f4a0: ldr             x3, [x3, #0xf48]
    // 0x76f4a4: r0 = List<Object?>()
    //     0x76f4a4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76f4a8: ldur            x1, [fp, #-0x80]
    // 0x76f4ac: r0 = LoadClassIdInstr(r1)
    //     0x76f4ac: ldur            x0, [x1, #-1]
    //     0x76f4b0: ubfx            x0, x0, #0xc, #0x14
    // 0x76f4b4: stp             xzr, x1, [SP]
    // 0x76f4b8: mov             lr, x0
    // 0x76f4bc: ldr             lr, [x21, lr, lsl #3]
    // 0x76f4c0: blr             lr
    // 0x76f4c4: mov             x3, x0
    // 0x76f4c8: stur            x3, [fp, #-0x88]
    // 0x76f4cc: cmp             w3, NULL
    // 0x76f4d0: b.eq            #0x76f65c
    // 0x76f4d4: mov             x0, x3
    // 0x76f4d8: r2 = Null
    //     0x76f4d8: mov             x2, NULL
    // 0x76f4dc: r1 = Null
    //     0x76f4dc: mov             x1, NULL
    // 0x76f4e0: r4 = 60
    //     0x76f4e0: movz            x4, #0x3c
    // 0x76f4e4: branchIfSmi(r0, 0x76f4f0)
    //     0x76f4e4: tbz             w0, #0, #0x76f4f0
    // 0x76f4e8: r4 = LoadClassIdInstr(r0)
    //     0x76f4e8: ldur            x4, [x0, #-1]
    //     0x76f4ec: ubfx            x4, x4, #0xc, #0x14
    // 0x76f4f0: cmp             x4, #0x185
    // 0x76f4f4: b.eq            #0x76f50c
    // 0x76f4f8: r8 = kVa
    //     0x76f4f8: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76f4fc: ldr             x8, [x8, #0xd30]
    // 0x76f500: r3 = Null
    //     0x76f500: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f58] Null
    //     0x76f504: ldr             x3, [x3, #0xf58]
    // 0x76f508: r0 = DefaultTypeTest()
    //     0x76f508: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f50c: ldur            x0, [fp, #-0x80]
    // 0x76f510: r1 = LoadClassIdInstr(r0)
    //     0x76f510: ldur            x1, [x0, #-1]
    //     0x76f514: ubfx            x1, x1, #0xc, #0x14
    // 0x76f518: r16 = 2
    //     0x76f518: movz            x16, #0x2
    // 0x76f51c: stp             x16, x0, [SP]
    // 0x76f520: mov             x0, x1
    // 0x76f524: mov             lr, x0
    // 0x76f528: ldr             lr, [x21, lr, lsl #3]
    // 0x76f52c: blr             lr
    // 0x76f530: mov             x3, x0
    // 0x76f534: stur            x3, [fp, #-0x80]
    // 0x76f538: cmp             w3, NULL
    // 0x76f53c: b.eq            #0x76f660
    // 0x76f540: mov             x0, x3
    // 0x76f544: r2 = Null
    //     0x76f544: mov             x2, NULL
    // 0x76f548: r1 = Null
    //     0x76f548: mov             x1, NULL
    // 0x76f54c: r4 = 60
    //     0x76f54c: movz            x4, #0x3c
    // 0x76f550: branchIfSmi(r0, 0x76f55c)
    //     0x76f550: tbz             w0, #0, #0x76f55c
    // 0x76f554: r4 = LoadClassIdInstr(r0)
    //     0x76f554: ldur            x4, [x0, #-1]
    //     0x76f558: ubfx            x4, x4, #0xc, #0x14
    // 0x76f55c: cmp             x4, #0x181
    // 0x76f560: b.eq            #0x76f578
    // 0x76f564: r8 = oVa
    //     0x76f564: add             x8, PP, #0x19, lsl #12  ; [pp+0x19f68] Type: oVa
    //     0x76f568: ldr             x8, [x8, #0xf68]
    // 0x76f56c: r3 = Null
    //     0x76f56c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f70] Null
    //     0x76f570: ldr             x3, [x3, #0xf70]
    // 0x76f574: r0 = DefaultTypeTest()
    //     0x76f574: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f578: ldur            x1, [fp, #-0x88]
    // 0x76f57c: LoadField: r2 = r1->field_1b
    //     0x76f57c: ldur            w2, [x1, #0x1b]
    // 0x76f580: DecompressPointer r2
    //     0x76f580: add             x2, x2, HEAP, lsl #32
    // 0x76f584: stur            x2, [fp, #-0x90]
    // 0x76f588: cmp             w2, NULL
    // 0x76f58c: b.eq            #0x76f664
    // 0x76f590: stp             x1, x2, [SP, #8]
    // 0x76f594: ldur            x16, [fp, #-0x80]
    // 0x76f598: str             x16, [SP]
    // 0x76f59c: mov             x0, x2
    // 0x76f5a0: ClosureCall
    //     0x76f5a0: ldr             x4, [PP, #0x720]  ; [pp+0x720] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x76f5a4: ldur            x2, [x0, #0x1f]
    //     0x76f5a8: blr             x2
    // 0x76f5ac: r16 = true
    //     0x76f5ac: add             x16, NULL, #0x20  ; true
    // 0x76f5b0: str             x16, [SP]
    // 0x76f5b4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76f5b4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76f5b8: ldr             x4, [x4, #0x870]
    // 0x76f5bc: r0 = call 0x392d98
    //     0x76f5bc: bl              #0x392d98
    // 0x76f5c0: r0 = ReturnAsyncNotFuture()
    //     0x76f5c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f5c4: sub             SP, fp, #0xa8
    // 0x76f5c8: r1 = 60
    //     0x76f5c8: movz            x1, #0x3c
    // 0x76f5cc: branchIfSmi(r0, 0x76f5d8)
    //     0x76f5cc: tbz             w0, #0, #0x76f5d8
    // 0x76f5d0: r1 = LoadClassIdInstr(r0)
    //     0x76f5d0: ldur            x1, [x0, #-1]
    //     0x76f5d4: ubfx            x1, x1, #0xc, #0x14
    // 0x76f5d8: cmp             x1, #0x5e5
    // 0x76f5dc: b.ne            #0x76f5f4
    // 0x76f5e0: str             x0, [SP]
    // 0x76f5e4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f5e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f5e8: ldr             x4, [x4, #0x878]
    // 0x76f5ec: r0 = call 0x392d98
    //     0x76f5ec: bl              #0x392d98
    // 0x76f5f0: r0 = ReturnAsyncNotFuture()
    //     0x76f5f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f5f4: r1 = 60
    //     0x76f5f4: movz            x1, #0x3c
    // 0x76f5f8: branchIfSmi(r0, 0x76f604)
    //     0x76f5f8: tbz             w0, #0, #0x76f604
    // 0x76f5fc: r1 = LoadClassIdInstr(r0)
    //     0x76f5fc: ldur            x1, [x0, #-1]
    //     0x76f600: ubfx            x1, x1, #0xc, #0x14
    // 0x76f604: str             x0, [SP]
    // 0x76f608: mov             x0, x1
    // 0x76f60c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76f60c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76f610: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76f610: movz            x17, #0x3a5d
    //     0x76f614: add             lr, x0, x17
    //     0x76f618: ldr             lr, [x21, lr, lsl #3]
    //     0x76f61c: blr             lr
    // 0x76f620: stur            x0, [fp, #-0x78]
    // 0x76f624: r0 = Mha()
    //     0x76f624: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76f628: mov             x1, x0
    // 0x76f62c: r0 = "error"
    //     0x76f62c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76f630: StoreField: r1->field_7 = r0
    //     0x76f630: stur            w0, [x1, #7]
    // 0x76f634: ldur            x0, [fp, #-0x78]
    // 0x76f638: StoreField: r1->field_b = r0
    //     0x76f638: stur            w0, [x1, #0xb]
    // 0x76f63c: str             x1, [SP]
    // 0x76f640: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f640: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f644: ldr             x4, [x4, #0x878]
    // 0x76f648: r0 = call 0x392d98
    //     0x76f648: bl              #0x392d98
    // 0x76f64c: r0 = ReturnAsyncNotFuture()
    //     0x76f64c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f650: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76f650: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76f654: b               #0x76f458
    // 0x76f658: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f658: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f65c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f65c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f660: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f660: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f664: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76f664: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76f668, size: 0x2c0
    // 0x76f668: EnterFrame
    //     0x76f668: stp             fp, lr, [SP, #-0x10]!
    //     0x76f66c: mov             fp, SP
    // 0x76f670: AllocStack(0xc0)
    //     0x76f670: sub             SP, SP, #0xc0
    // 0x76f674: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x76f674: stur            NULL, [fp, #-8]
    //     0x76f678: movz            x0, #0
    //     0x76f67c: add             x1, fp, w0, sxtw #2
    //     0x76f680: ldr             x1, [x1, #0x18]
    //     0x76f684: add             x2, fp, w0, sxtw #2
    //     0x76f688: ldr             x2, [x2, #0x10]
    //     0x76f68c: stur            x2, [fp, #-0x88]
    //     0x76f690: ldur            w3, [x1, #0x17]
    //     0x76f694: add             x3, x3, HEAP, lsl #32
    //     0x76f698: stur            x3, [fp, #-0x80]
    // 0x76f69c: CheckStackOverflow
    //     0x76f69c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76f6a0: cmp             SP, x16
    //     0x76f6a4: b.ls            #0x76f910
    // 0x76f6a8: InitAsync() -> Future<List<Object?>>
    //     0x76f6a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76f6ac: ldr             x0, [x0, #0x1d0]
    //     0x76f6b0: bl              #0x74ada8  ; InitAsyncStub
    // 0x76f6b4: ldur            x3, [fp, #-0x88]
    // 0x76f6b8: cmp             w3, NULL
    // 0x76f6bc: b.eq            #0x76f918
    // 0x76f6c0: mov             x0, x3
    // 0x76f6c4: r2 = Null
    //     0x76f6c4: mov             x2, NULL
    // 0x76f6c8: r1 = Null
    //     0x76f6c8: mov             x1, NULL
    // 0x76f6cc: r4 = 60
    //     0x76f6cc: movz            x4, #0x3c
    // 0x76f6d0: branchIfSmi(r0, 0x76f6dc)
    //     0x76f6d0: tbz             w0, #0, #0x76f6dc
    // 0x76f6d4: r4 = LoadClassIdInstr(r0)
    //     0x76f6d4: ldur            x4, [x0, #-1]
    //     0x76f6d8: ubfx            x4, x4, #0xc, #0x14
    // 0x76f6dc: sub             x4, x4, #0x5a
    // 0x76f6e0: cmp             x4, #2
    // 0x76f6e4: b.ls            #0x76f6f8
    // 0x76f6e8: r8 = List<Object?>
    //     0x76f6e8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76f6ec: r3 = Null
    //     0x76f6ec: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f80] Null
    //     0x76f6f0: ldr             x3, [x3, #0xf80]
    // 0x76f6f4: r0 = List<Object?>()
    //     0x76f6f4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76f6f8: ldur            x1, [fp, #-0x88]
    // 0x76f6fc: r0 = LoadClassIdInstr(r1)
    //     0x76f6fc: ldur            x0, [x1, #-1]
    //     0x76f700: ubfx            x0, x0, #0xc, #0x14
    // 0x76f704: stp             xzr, x1, [SP]
    // 0x76f708: mov             lr, x0
    // 0x76f70c: ldr             lr, [x21, lr, lsl #3]
    // 0x76f710: blr             lr
    // 0x76f714: mov             x3, x0
    // 0x76f718: stur            x3, [fp, #-0x90]
    // 0x76f71c: cmp             w3, NULL
    // 0x76f720: b.eq            #0x76f91c
    // 0x76f724: mov             x0, x3
    // 0x76f728: r2 = Null
    //     0x76f728: mov             x2, NULL
    // 0x76f72c: r1 = Null
    //     0x76f72c: mov             x1, NULL
    // 0x76f730: r4 = 60
    //     0x76f730: movz            x4, #0x3c
    // 0x76f734: branchIfSmi(r0, 0x76f740)
    //     0x76f734: tbz             w0, #0, #0x76f740
    // 0x76f738: r4 = LoadClassIdInstr(r0)
    //     0x76f738: ldur            x4, [x0, #-1]
    //     0x76f73c: ubfx            x4, x4, #0xc, #0x14
    // 0x76f740: cmp             x4, #0x185
    // 0x76f744: b.eq            #0x76f75c
    // 0x76f748: r8 = kVa
    //     0x76f748: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76f74c: ldr             x8, [x8, #0xd30]
    // 0x76f750: r3 = Null
    //     0x76f750: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f90] Null
    //     0x76f754: ldr             x3, [x3, #0xf90]
    // 0x76f758: r0 = DefaultTypeTest()
    //     0x76f758: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f75c: ldur            x1, [fp, #-0x88]
    // 0x76f760: r0 = LoadClassIdInstr(r1)
    //     0x76f760: ldur            x0, [x1, #-1]
    //     0x76f764: ubfx            x0, x0, #0xc, #0x14
    // 0x76f768: r16 = 2
    //     0x76f768: movz            x16, #0x2
    // 0x76f76c: stp             x16, x1, [SP]
    // 0x76f770: mov             lr, x0
    // 0x76f774: ldr             lr, [x21, lr, lsl #3]
    // 0x76f778: blr             lr
    // 0x76f77c: mov             x3, x0
    // 0x76f780: stur            x3, [fp, #-0x98]
    // 0x76f784: cmp             w3, NULL
    // 0x76f788: b.eq            #0x76f920
    // 0x76f78c: mov             x0, x3
    // 0x76f790: r2 = Null
    //     0x76f790: mov             x2, NULL
    // 0x76f794: r1 = Null
    //     0x76f794: mov             x1, NULL
    // 0x76f798: r4 = 60
    //     0x76f798: movz            x4, #0x3c
    // 0x76f79c: branchIfSmi(r0, 0x76f7a8)
    //     0x76f79c: tbz             w0, #0, #0x76f7a8
    // 0x76f7a0: r4 = LoadClassIdInstr(r0)
    //     0x76f7a0: ldur            x4, [x0, #-1]
    //     0x76f7a4: ubfx            x4, x4, #0xc, #0x14
    // 0x76f7a8: cmp             x4, #0x18b
    // 0x76f7ac: b.eq            #0x76f7c4
    // 0x76f7b0: r8 = fVa
    //     0x76f7b0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x76f7b4: ldr             x8, [x8, #0xd48]
    // 0x76f7b8: r3 = Null
    //     0x76f7b8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fa0] Null
    //     0x76f7bc: ldr             x3, [x3, #0xfa0]
    // 0x76f7c0: r0 = DefaultTypeTest()
    //     0x76f7c0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f7c4: ldur            x0, [fp, #-0x88]
    // 0x76f7c8: r1 = LoadClassIdInstr(r0)
    //     0x76f7c8: ldur            x1, [x0, #-1]
    //     0x76f7cc: ubfx            x1, x1, #0xc, #0x14
    // 0x76f7d0: r16 = 4
    //     0x76f7d0: movz            x16, #0x4
    // 0x76f7d4: stp             x16, x0, [SP]
    // 0x76f7d8: mov             x0, x1
    // 0x76f7dc: mov             lr, x0
    // 0x76f7e0: ldr             lr, [x21, lr, lsl #3]
    // 0x76f7e4: blr             lr
    // 0x76f7e8: mov             x3, x0
    // 0x76f7ec: stur            x3, [fp, #-0x88]
    // 0x76f7f0: cmp             w3, NULL
    // 0x76f7f4: b.eq            #0x76f924
    // 0x76f7f8: mov             x0, x3
    // 0x76f7fc: r2 = Null
    //     0x76f7fc: mov             x2, NULL
    // 0x76f800: r1 = Null
    //     0x76f800: mov             x1, NULL
    // 0x76f804: r4 = 60
    //     0x76f804: movz            x4, #0x3c
    // 0x76f808: branchIfSmi(r0, 0x76f814)
    //     0x76f808: tbz             w0, #0, #0x76f814
    // 0x76f80c: r4 = LoadClassIdInstr(r0)
    //     0x76f80c: ldur            x4, [x0, #-1]
    //     0x76f810: ubfx            x4, x4, #0xc, #0x14
    // 0x76f814: cmp             x4, #0x182
    // 0x76f818: b.eq            #0x76f830
    // 0x76f81c: r8 = nVa
    //     0x76f81c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19fb0] Type: nVa
    //     0x76f820: ldr             x8, [x8, #0xfb0]
    // 0x76f824: r3 = Null
    //     0x76f824: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fb8] Null
    //     0x76f828: ldr             x3, [x3, #0xfb8]
    // 0x76f82c: r0 = DefaultTypeTest()
    //     0x76f82c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76f830: ldur            x1, [fp, #-0x90]
    // 0x76f834: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x76f834: ldur            w2, [x1, #0x17]
    // 0x76f838: DecompressPointer r2
    //     0x76f838: add             x2, x2, HEAP, lsl #32
    // 0x76f83c: stur            x2, [fp, #-0xa0]
    // 0x76f840: stp             x1, x2, [SP, #0x10]
    // 0x76f844: ldur            x16, [fp, #-0x98]
    // 0x76f848: ldur            lr, [fp, #-0x88]
    // 0x76f84c: stp             lr, x16, [SP]
    // 0x76f850: mov             x0, x2
    // 0x76f854: ClosureCall
    //     0x76f854: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x76f858: ldur            x2, [x0, #0x1f]
    //     0x76f85c: blr             x2
    // 0x76f860: mov             x1, x0
    // 0x76f864: stur            x1, [fp, #-0xa0]
    // 0x76f868: r0 = Await()
    //     0x76f868: bl              #0x74ab64  ; AwaitStub
    // 0x76f86c: stur            x0, [fp, #-0xa0]
    // 0x76f870: str             x0, [SP]
    // 0x76f874: r4 = const [0, 0x1, 0x1, 0, result, 0, null]
    //     0x76f874: add             x4, PP, #0x19, lsl #12  ; [pp+0x19d90] List(7) [0, 0x1, 0x1, 0, "result", 0, Null]
    //     0x76f878: ldr             x4, [x4, #0xd90]
    // 0x76f87c: r0 = call 0x392d98
    //     0x76f87c: bl              #0x392d98
    // 0x76f880: r0 = ReturnAsyncNotFuture()
    //     0x76f880: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f884: sub             SP, fp, #0xc0
    // 0x76f888: r1 = 60
    //     0x76f888: movz            x1, #0x3c
    // 0x76f88c: branchIfSmi(r0, 0x76f898)
    //     0x76f88c: tbz             w0, #0, #0x76f898
    // 0x76f890: r1 = LoadClassIdInstr(r0)
    //     0x76f890: ldur            x1, [x0, #-1]
    //     0x76f894: ubfx            x1, x1, #0xc, #0x14
    // 0x76f898: cmp             x1, #0x5e5
    // 0x76f89c: b.ne            #0x76f8b4
    // 0x76f8a0: str             x0, [SP]
    // 0x76f8a4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f8a4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f8a8: ldr             x4, [x4, #0x878]
    // 0x76f8ac: r0 = call 0x392d98
    //     0x76f8ac: bl              #0x392d98
    // 0x76f8b0: r0 = ReturnAsyncNotFuture()
    //     0x76f8b0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f8b4: r1 = 60
    //     0x76f8b4: movz            x1, #0x3c
    // 0x76f8b8: branchIfSmi(r0, 0x76f8c4)
    //     0x76f8b8: tbz             w0, #0, #0x76f8c4
    // 0x76f8bc: r1 = LoadClassIdInstr(r0)
    //     0x76f8bc: ldur            x1, [x0, #-1]
    //     0x76f8c0: ubfx            x1, x1, #0xc, #0x14
    // 0x76f8c4: str             x0, [SP]
    // 0x76f8c8: mov             x0, x1
    // 0x76f8cc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76f8cc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76f8d0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76f8d0: movz            x17, #0x3a5d
    //     0x76f8d4: add             lr, x0, x17
    //     0x76f8d8: ldr             lr, [x21, lr, lsl #3]
    //     0x76f8dc: blr             lr
    // 0x76f8e0: stur            x0, [fp, #-0x80]
    // 0x76f8e4: r0 = Mha()
    //     0x76f8e4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76f8e8: mov             x1, x0
    // 0x76f8ec: r0 = "error"
    //     0x76f8ec: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76f8f0: StoreField: r1->field_7 = r0
    //     0x76f8f0: stur            w0, [x1, #7]
    // 0x76f8f4: ldur            x0, [fp, #-0x80]
    // 0x76f8f8: StoreField: r1->field_b = r0
    //     0x76f8f8: stur            w0, [x1, #0xb]
    // 0x76f8fc: str             x1, [SP]
    // 0x76f900: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76f900: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76f904: ldr             x4, [x4, #0x878]
    // 0x76f908: r0 = call 0x392d98
    //     0x76f908: bl              #0x392d98
    // 0x76f90c: r0 = ReturnAsyncNotFuture()
    //     0x76f90c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76f910: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76f910: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76f914: b               #0x76f6a8
    // 0x76f918: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f918: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f91c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f91c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f920: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f920: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76f924: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76f924: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76f928, size: 0x2bc
    // 0x76f928: EnterFrame
    //     0x76f928: stp             fp, lr, [SP, #-0x10]!
    //     0x76f92c: mov             fp, SP
    // 0x76f930: AllocStack(0xc0)
    //     0x76f930: sub             SP, SP, #0xc0
    // 0x76f934: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x76f934: stur            NULL, [fp, #-8]
    //     0x76f938: movz            x0, #0
    //     0x76f93c: add             x1, fp, w0, sxtw #2
    //     0x76f940: ldr             x1, [x1, #0x18]
    //     0x76f944: add             x2, fp, w0, sxtw #2
    //     0x76f948: ldr             x2, [x2, #0x10]
    //     0x76f94c: stur            x2, [fp, #-0x88]
    //     0x76f950: ldur            w3, [x1, #0x17]
    //     0x76f954: add             x3, x3, HEAP, lsl #32
    //     0x76f958: stur            x3, [fp, #-0x80]
    // 0x76f95c: CheckStackOverflow
    //     0x76f95c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76f960: cmp             SP, x16
    //     0x76f964: b.ls            #0x76fbc8
    // 0x76f968: InitAsync() -> Future<List<Object?>>
    //     0x76f968: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76f96c: ldr             x0, [x0, #0x1d0]
    //     0x76f970: bl              #0x74ada8  ; InitAsyncStub
    // 0x76f974: ldur            x3, [fp, #-0x88]
    // 0x76f978: cmp             w3, NULL
    // 0x76f97c: b.eq            #0x76fbd0
    // 0x76f980: mov             x0, x3
    // 0x76f984: r2 = Null
    //     0x76f984: mov             x2, NULL
    // 0x76f988: r1 = Null
    //     0x76f988: mov             x1, NULL
    // 0x76f98c: r4 = 60
    //     0x76f98c: movz            x4, #0x3c
    // 0x76f990: branchIfSmi(r0, 0x76f99c)
    //     0x76f990: tbz             w0, #0, #0x76f99c
    // 0x76f994: r4 = LoadClassIdInstr(r0)
    //     0x76f994: ldur            x4, [x0, #-1]
    //     0x76f998: ubfx            x4, x4, #0xc, #0x14
    // 0x76f99c: sub             x4, x4, #0x5a
    // 0x76f9a0: cmp             x4, #2
    // 0x76f9a4: b.ls            #0x76f9b8
    // 0x76f9a8: r8 = List<Object?>
    //     0x76f9a8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76f9ac: r3 = Null
    //     0x76f9ac: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fc8] Null
    //     0x76f9b0: ldr             x3, [x3, #0xfc8]
    // 0x76f9b4: r0 = List<Object?>()
    //     0x76f9b4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76f9b8: ldur            x1, [fp, #-0x88]
    // 0x76f9bc: r0 = LoadClassIdInstr(r1)
    //     0x76f9bc: ldur            x0, [x1, #-1]
    //     0x76f9c0: ubfx            x0, x0, #0xc, #0x14
    // 0x76f9c4: stp             xzr, x1, [SP]
    // 0x76f9c8: mov             lr, x0
    // 0x76f9cc: ldr             lr, [x21, lr, lsl #3]
    // 0x76f9d0: blr             lr
    // 0x76f9d4: mov             x3, x0
    // 0x76f9d8: stur            x3, [fp, #-0x90]
    // 0x76f9dc: cmp             w3, NULL
    // 0x76f9e0: b.eq            #0x76fbd4
    // 0x76f9e4: mov             x0, x3
    // 0x76f9e8: r2 = Null
    //     0x76f9e8: mov             x2, NULL
    // 0x76f9ec: r1 = Null
    //     0x76f9ec: mov             x1, NULL
    // 0x76f9f0: r4 = 60
    //     0x76f9f0: movz            x4, #0x3c
    // 0x76f9f4: branchIfSmi(r0, 0x76fa00)
    //     0x76f9f4: tbz             w0, #0, #0x76fa00
    // 0x76f9f8: r4 = LoadClassIdInstr(r0)
    //     0x76f9f8: ldur            x4, [x0, #-1]
    //     0x76f9fc: ubfx            x4, x4, #0xc, #0x14
    // 0x76fa00: cmp             x4, #0x185
    // 0x76fa04: b.eq            #0x76fa1c
    // 0x76fa08: r8 = kVa
    //     0x76fa08: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d30] Type: kVa
    //     0x76fa0c: ldr             x8, [x8, #0xd30]
    // 0x76fa10: r3 = Null
    //     0x76fa10: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fd8] Null
    //     0x76fa14: ldr             x3, [x3, #0xfd8]
    // 0x76fa18: r0 = DefaultTypeTest()
    //     0x76fa18: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76fa1c: ldur            x1, [fp, #-0x88]
    // 0x76fa20: r0 = LoadClassIdInstr(r1)
    //     0x76fa20: ldur            x0, [x1, #-1]
    //     0x76fa24: ubfx            x0, x0, #0xc, #0x14
    // 0x76fa28: r16 = 2
    //     0x76fa28: movz            x16, #0x2
    // 0x76fa2c: stp             x16, x1, [SP]
    // 0x76fa30: mov             lr, x0
    // 0x76fa34: ldr             lr, [x21, lr, lsl #3]
    // 0x76fa38: blr             lr
    // 0x76fa3c: mov             x3, x0
    // 0x76fa40: stur            x3, [fp, #-0x98]
    // 0x76fa44: cmp             w3, NULL
    // 0x76fa48: b.eq            #0x76fbd8
    // 0x76fa4c: mov             x0, x3
    // 0x76fa50: r2 = Null
    //     0x76fa50: mov             x2, NULL
    // 0x76fa54: r1 = Null
    //     0x76fa54: mov             x1, NULL
    // 0x76fa58: r4 = 60
    //     0x76fa58: movz            x4, #0x3c
    // 0x76fa5c: branchIfSmi(r0, 0x76fa68)
    //     0x76fa5c: tbz             w0, #0, #0x76fa68
    // 0x76fa60: r4 = LoadClassIdInstr(r0)
    //     0x76fa60: ldur            x4, [x0, #-1]
    //     0x76fa64: ubfx            x4, x4, #0xc, #0x14
    // 0x76fa68: cmp             x4, #0x18b
    // 0x76fa6c: b.eq            #0x76fa84
    // 0x76fa70: r8 = fVa
    //     0x76fa70: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x76fa74: ldr             x8, [x8, #0xd48]
    // 0x76fa78: r3 = Null
    //     0x76fa78: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fe8] Null
    //     0x76fa7c: ldr             x3, [x3, #0xfe8]
    // 0x76fa80: r0 = DefaultTypeTest()
    //     0x76fa80: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76fa84: ldur            x0, [fp, #-0x88]
    // 0x76fa88: r1 = LoadClassIdInstr(r0)
    //     0x76fa88: ldur            x1, [x0, #-1]
    //     0x76fa8c: ubfx            x1, x1, #0xc, #0x14
    // 0x76fa90: r16 = 4
    //     0x76fa90: movz            x16, #0x4
    // 0x76fa94: stp             x16, x0, [SP]
    // 0x76fa98: mov             x0, x1
    // 0x76fa9c: mov             lr, x0
    // 0x76faa0: ldr             lr, [x21, lr, lsl #3]
    // 0x76faa4: blr             lr
    // 0x76faa8: mov             x3, x0
    // 0x76faac: stur            x3, [fp, #-0x88]
    // 0x76fab0: cmp             w3, NULL
    // 0x76fab4: b.eq            #0x76fbdc
    // 0x76fab8: r3 as int
    //     0x76fab8: mov             x0, x3
    //     0x76fabc: mov             x2, NULL
    //     0x76fac0: mov             x1, NULL
    //     0x76fac4: tbz             w0, #0, #0x76faec
    //     0x76fac8: ldur            x4, [x0, #-1]
    //     0x76facc: ubfx            x4, x4, #0xc, #0x14
    //     0x76fad0: sub             x4, x4, #0x3c
    //     0x76fad4: cmp             x4, #1
    //     0x76fad8: b.ls            #0x76faec
    //     0x76fadc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76fae0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ff8] Null
    //     0x76fae4: ldr             x3, [x3, #0xff8]
    //     0x76fae8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76faec: ldur            x1, [fp, #-0x90]
    // 0x76faf0: LoadField: r2 = r1->field_13
    //     0x76faf0: ldur            w2, [x1, #0x13]
    // 0x76faf4: DecompressPointer r2
    //     0x76faf4: add             x2, x2, HEAP, lsl #32
    // 0x76faf8: stur            x2, [fp, #-0xa0]
    // 0x76fafc: cmp             w2, NULL
    // 0x76fb00: b.eq            #0x76fbe0
    // 0x76fb04: stp             x1, x2, [SP, #0x10]
    // 0x76fb08: ldur            x16, [fp, #-0x98]
    // 0x76fb0c: ldur            lr, [fp, #-0x88]
    // 0x76fb10: stp             lr, x16, [SP]
    // 0x76fb14: mov             x0, x2
    // 0x76fb18: ClosureCall
    //     0x76fb18: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x76fb1c: ldur            x2, [x0, #0x1f]
    //     0x76fb20: blr             x2
    // 0x76fb24: r16 = true
    //     0x76fb24: add             x16, NULL, #0x20  ; true
    // 0x76fb28: str             x16, [SP]
    // 0x76fb2c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76fb2c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76fb30: ldr             x4, [x4, #0x870]
    // 0x76fb34: r0 = call 0x392d98
    //     0x76fb34: bl              #0x392d98
    // 0x76fb38: r0 = ReturnAsyncNotFuture()
    //     0x76fb38: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76fb3c: sub             SP, fp, #0xc0
    // 0x76fb40: r1 = 60
    //     0x76fb40: movz            x1, #0x3c
    // 0x76fb44: branchIfSmi(r0, 0x76fb50)
    //     0x76fb44: tbz             w0, #0, #0x76fb50
    // 0x76fb48: r1 = LoadClassIdInstr(r0)
    //     0x76fb48: ldur            x1, [x0, #-1]
    //     0x76fb4c: ubfx            x1, x1, #0xc, #0x14
    // 0x76fb50: cmp             x1, #0x5e5
    // 0x76fb54: b.ne            #0x76fb6c
    // 0x76fb58: str             x0, [SP]
    // 0x76fb5c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76fb5c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76fb60: ldr             x4, [x4, #0x878]
    // 0x76fb64: r0 = call 0x392d98
    //     0x76fb64: bl              #0x392d98
    // 0x76fb68: r0 = ReturnAsyncNotFuture()
    //     0x76fb68: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76fb6c: r1 = 60
    //     0x76fb6c: movz            x1, #0x3c
    // 0x76fb70: branchIfSmi(r0, 0x76fb7c)
    //     0x76fb70: tbz             w0, #0, #0x76fb7c
    // 0x76fb74: r1 = LoadClassIdInstr(r0)
    //     0x76fb74: ldur            x1, [x0, #-1]
    //     0x76fb78: ubfx            x1, x1, #0xc, #0x14
    // 0x76fb7c: str             x0, [SP]
    // 0x76fb80: mov             x0, x1
    // 0x76fb84: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76fb84: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76fb88: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76fb88: movz            x17, #0x3a5d
    //     0x76fb8c: add             lr, x0, x17
    //     0x76fb90: ldr             lr, [x21, lr, lsl #3]
    //     0x76fb94: blr             lr
    // 0x76fb98: stur            x0, [fp, #-0x80]
    // 0x76fb9c: r0 = Mha()
    //     0x76fb9c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76fba0: mov             x1, x0
    // 0x76fba4: r0 = "error"
    //     0x76fba4: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76fba8: StoreField: r1->field_7 = r0
    //     0x76fba8: stur            w0, [x1, #7]
    // 0x76fbac: ldur            x0, [fp, #-0x80]
    // 0x76fbb0: StoreField: r1->field_b = r0
    //     0x76fbb0: stur            w0, [x1, #0xb]
    // 0x76fbb4: str             x1, [SP]
    // 0x76fbb8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76fbb8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76fbbc: ldr             x4, [x4, #0x878]
    // 0x76fbc0: r0 = call 0x392d98
    //     0x76fbc0: bl              #0x392d98
    // 0x76fbc4: r0 = ReturnAsyncNotFuture()
    //     0x76fbc4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76fbc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76fbc8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76fbcc: b               #0x76f968
    // 0x76fbd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76fbd0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76fbd4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76fbd4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76fbd8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76fbd8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76fbdc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76fbdc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76fbe0: r0 = NullErrorSharedWithoutFPURegs()
    //     0x76fbe0: bl              #0x7dec68  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7ad228, size: 0xb0
    // 0x7ad228: EnterFrame
    //     0x7ad228: stp             fp, lr, [SP, #-0x10]!
    //     0x7ad22c: mov             fp, SP
    // 0x7ad230: AllocStack(0x18)
    //     0x7ad230: sub             SP, SP, #0x18
    // 0x7ad234: SetupParameters(kVa this /* r1 */)
    //     0x7ad234: stur            NULL, [fp, #-8]
    //     0x7ad238: movz            x0, #0
    //     0x7ad23c: add             x1, fp, w0, sxtw #2
    //     0x7ad240: ldr             x1, [x1, #0x10]
    //     0x7ad244: ldur            w2, [x1, #0x17]
    //     0x7ad248: add             x2, x2, HEAP, lsl #32
    //     0x7ad24c: stur            x2, [fp, #-0x10]
    // 0x7ad250: CheckStackOverflow
    //     0x7ad250: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ad254: cmp             SP, x16
    //     0x7ad258: b.ls            #0x7ad2d0
    // 0x7ad25c: InitAsync() -> Future<Null?>
    //     0x7ad25c: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7ad260: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ad264: ldur            x1, [fp, #-0x10]
    // 0x7ad268: LoadField: r2 = r1->field_f
    //     0x7ad268: ldur            w2, [x1, #0xf]
    // 0x7ad26c: DecompressPointer r2
    //     0x7ad26c: add             x2, x2, HEAP, lsl #32
    // 0x7ad270: mov             x0, x2
    // 0x7ad274: stur            x2, [fp, #-0x18]
    // 0x7ad278: r0 = Await()
    //     0x7ad278: bl              #0x74ab64  ; AwaitStub
    // 0x7ad27c: mov             x3, x0
    // 0x7ad280: r2 = Null
    //     0x7ad280: mov             x2, NULL
    // 0x7ad284: r1 = Null
    //     0x7ad284: mov             x1, NULL
    // 0x7ad288: stur            x3, [fp, #-0x10]
    // 0x7ad28c: r4 = 60
    //     0x7ad28c: movz            x4, #0x3c
    // 0x7ad290: branchIfSmi(r0, 0x7ad29c)
    //     0x7ad290: tbz             w0, #0, #0x7ad29c
    // 0x7ad294: r4 = LoadClassIdInstr(r0)
    //     0x7ad294: ldur            x4, [x0, #-1]
    //     0x7ad298: ubfx            x4, x4, #0xc, #0x14
    // 0x7ad29c: sub             x4, x4, #0x5a
    // 0x7ad2a0: cmp             x4, #2
    // 0x7ad2a4: b.ls            #0x7ad2b8
    // 0x7ad2a8: r8 = List<Object?>?
    //     0x7ad2a8: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x7ad2ac: r3 = Null
    //     0x7ad2ac: add             x3, PP, #0x23, lsl #12  ; [pp+0x23250] Null
    //     0x7ad2b0: ldr             x3, [x3, #0x250]
    // 0x7ad2b4: r0 = List<Object?>?()
    //     0x7ad2b4: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x7ad2b8: ldur            x1, [fp, #-0x10]
    // 0x7ad2bc: r2 = "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.pigeon_defaultConstructor"
    //     0x7ad2bc: add             x2, PP, #0x23, lsl #12  ; [pp+0x23240] "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.pigeon_defaultConstructor"
    //     0x7ad2c0: ldr             x2, [x2, #0x240]
    // 0x7ad2c4: r0 = call 0x3951e4
    //     0x7ad2c4: bl              #0x3951e4
    // 0x7ad2c8: r0 = Null
    //     0x7ad2c8: mov             x0, NULL
    // 0x7ad2cc: r0 = ReturnAsyncNotFuture()
    //     0x7ad2cc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ad2d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ad2d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ad2d4: b               #0x7ad25c
  }
}

// class id: 390, size: 0x18, field offset: 0x10
class jVa extends OUa {

  late final _RUa _uvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76fbe4, size: 0x40c
    // 0x76fbe4: EnterFrame
    //     0x76fbe4: stp             fp, lr, [SP, #-0x10]!
    //     0x76fbe8: mov             fp, SP
    // 0x76fbec: AllocStack(0x108)
    //     0x76fbec: sub             SP, SP, #0x108
    // 0x76fbf0: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0xa0 */)
    //     0x76fbf0: stur            NULL, [fp, #-8]
    //     0x76fbf4: movz            x0, #0
    //     0x76fbf8: add             x1, fp, w0, sxtw #2
    //     0x76fbfc: ldr             x1, [x1, #0x18]
    //     0x76fc00: add             x2, fp, w0, sxtw #2
    //     0x76fc04: ldr             x2, [x2, #0x10]
    //     0x76fc08: stur            x2, [fp, #-0xa0]
    //     0x76fc0c: ldur            w3, [x1, #0x17]
    //     0x76fc10: add             x3, x3, HEAP, lsl #32
    //     0x76fc14: stur            x3, [fp, #-0x98]
    // 0x76fc18: CheckStackOverflow
    //     0x76fc18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76fc1c: cmp             SP, x16
    //     0x76fc20: b.ls            #0x76ffcc
    // 0x76fc24: InitAsync() -> Future<List<Object?>>
    //     0x76fc24: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76fc28: ldr             x0, [x0, #0x1d0]
    //     0x76fc2c: bl              #0x74ada8  ; InitAsyncStub
    // 0x76fc30: ldur            x3, [fp, #-0xa0]
    // 0x76fc34: cmp             w3, NULL
    // 0x76fc38: b.eq            #0x76ffd4
    // 0x76fc3c: mov             x0, x3
    // 0x76fc40: r2 = Null
    //     0x76fc40: mov             x2, NULL
    // 0x76fc44: r1 = Null
    //     0x76fc44: mov             x1, NULL
    // 0x76fc48: r4 = 60
    //     0x76fc48: movz            x4, #0x3c
    // 0x76fc4c: branchIfSmi(r0, 0x76fc58)
    //     0x76fc4c: tbz             w0, #0, #0x76fc58
    // 0x76fc50: r4 = LoadClassIdInstr(r0)
    //     0x76fc50: ldur            x4, [x0, #-1]
    //     0x76fc54: ubfx            x4, x4, #0xc, #0x14
    // 0x76fc58: sub             x4, x4, #0x5a
    // 0x76fc5c: cmp             x4, #2
    // 0x76fc60: b.ls            #0x76fc74
    // 0x76fc64: r8 = List<Object?>
    //     0x76fc64: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76fc68: r3 = Null
    //     0x76fc68: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a018] Null
    //     0x76fc6c: ldr             x3, [x3, #0x18]
    // 0x76fc70: r0 = List<Object?>()
    //     0x76fc70: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76fc74: ldur            x1, [fp, #-0xa0]
    // 0x76fc78: r0 = LoadClassIdInstr(r1)
    //     0x76fc78: ldur            x0, [x1, #-1]
    //     0x76fc7c: ubfx            x0, x0, #0xc, #0x14
    // 0x76fc80: stp             xzr, x1, [SP]
    // 0x76fc84: mov             lr, x0
    // 0x76fc88: ldr             lr, [x21, lr, lsl #3]
    // 0x76fc8c: blr             lr
    // 0x76fc90: mov             x3, x0
    // 0x76fc94: stur            x3, [fp, #-0xa8]
    // 0x76fc98: cmp             w3, NULL
    // 0x76fc9c: b.eq            #0x76ffd8
    // 0x76fca0: mov             x0, x3
    // 0x76fca4: r2 = Null
    //     0x76fca4: mov             x2, NULL
    // 0x76fca8: r1 = Null
    //     0x76fca8: mov             x1, NULL
    // 0x76fcac: r4 = 60
    //     0x76fcac: movz            x4, #0x3c
    // 0x76fcb0: branchIfSmi(r0, 0x76fcbc)
    //     0x76fcb0: tbz             w0, #0, #0x76fcbc
    // 0x76fcb4: r4 = LoadClassIdInstr(r0)
    //     0x76fcb4: ldur            x4, [x0, #-1]
    //     0x76fcb8: ubfx            x4, x4, #0xc, #0x14
    // 0x76fcbc: cmp             x4, #0x186
    // 0x76fcc0: b.eq            #0x76fcd8
    // 0x76fcc4: r8 = jVa
    //     0x76fcc4: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a028] Type: jVa
    //     0x76fcc8: ldr             x8, [x8, #0x28]
    // 0x76fccc: r3 = Null
    //     0x76fccc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a030] Null
    //     0x76fcd0: ldr             x3, [x3, #0x30]
    // 0x76fcd4: r0 = DefaultTypeTest()
    //     0x76fcd4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x76fcd8: ldur            x1, [fp, #-0xa0]
    // 0x76fcdc: r0 = LoadClassIdInstr(r1)
    //     0x76fcdc: ldur            x0, [x1, #-1]
    //     0x76fce0: ubfx            x0, x0, #0xc, #0x14
    // 0x76fce4: r16 = 2
    //     0x76fce4: movz            x16, #0x2
    // 0x76fce8: stp             x16, x1, [SP]
    // 0x76fcec: mov             lr, x0
    // 0x76fcf0: ldr             lr, [x21, lr, lsl #3]
    // 0x76fcf4: blr             lr
    // 0x76fcf8: mov             x3, x0
    // 0x76fcfc: stur            x3, [fp, #-0xb0]
    // 0x76fd00: cmp             w3, NULL
    // 0x76fd04: b.eq            #0x76ffdc
    // 0x76fd08: mov             x0, x3
    // 0x76fd0c: r2 = Null
    //     0x76fd0c: mov             x2, NULL
    // 0x76fd10: r1 = Null
    //     0x76fd10: mov             x1, NULL
    // 0x76fd14: r4 = 60
    //     0x76fd14: movz            x4, #0x3c
    // 0x76fd18: branchIfSmi(r0, 0x76fd24)
    //     0x76fd18: tbz             w0, #0, #0x76fd24
    // 0x76fd1c: r4 = LoadClassIdInstr(r0)
    //     0x76fd1c: ldur            x4, [x0, #-1]
    //     0x76fd20: ubfx            x4, x4, #0xc, #0x14
    // 0x76fd24: sub             x4, x4, #0x5e
    // 0x76fd28: cmp             x4, #1
    // 0x76fd2c: b.ls            #0x76fd40
    // 0x76fd30: r8 = String
    //     0x76fd30: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76fd34: r3 = Null
    //     0x76fd34: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a040] Null
    //     0x76fd38: ldr             x3, [x3, #0x40]
    // 0x76fd3c: r0 = String()
    //     0x76fd3c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76fd40: ldur            x1, [fp, #-0xa0]
    // 0x76fd44: r0 = LoadClassIdInstr(r1)
    //     0x76fd44: ldur            x0, [x1, #-1]
    //     0x76fd48: ubfx            x0, x0, #0xc, #0x14
    // 0x76fd4c: r16 = 4
    //     0x76fd4c: movz            x16, #0x4
    // 0x76fd50: stp             x16, x1, [SP]
    // 0x76fd54: mov             lr, x0
    // 0x76fd58: ldr             lr, [x21, lr, lsl #3]
    // 0x76fd5c: blr             lr
    // 0x76fd60: mov             x3, x0
    // 0x76fd64: stur            x3, [fp, #-0xb8]
    // 0x76fd68: cmp             w3, NULL
    // 0x76fd6c: b.eq            #0x76ffe0
    // 0x76fd70: mov             x0, x3
    // 0x76fd74: r2 = Null
    //     0x76fd74: mov             x2, NULL
    // 0x76fd78: r1 = Null
    //     0x76fd78: mov             x1, NULL
    // 0x76fd7c: r4 = 60
    //     0x76fd7c: movz            x4, #0x3c
    // 0x76fd80: branchIfSmi(r0, 0x76fd8c)
    //     0x76fd80: tbz             w0, #0, #0x76fd8c
    // 0x76fd84: r4 = LoadClassIdInstr(r0)
    //     0x76fd84: ldur            x4, [x0, #-1]
    //     0x76fd88: ubfx            x4, x4, #0xc, #0x14
    // 0x76fd8c: sub             x4, x4, #0x5e
    // 0x76fd90: cmp             x4, #1
    // 0x76fd94: b.ls            #0x76fda8
    // 0x76fd98: r8 = String
    //     0x76fd98: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76fd9c: r3 = Null
    //     0x76fd9c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a050] Null
    //     0x76fda0: ldr             x3, [x3, #0x50]
    // 0x76fda4: r0 = String()
    //     0x76fda4: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76fda8: ldur            x1, [fp, #-0xa0]
    // 0x76fdac: r0 = LoadClassIdInstr(r1)
    //     0x76fdac: ldur            x0, [x1, #-1]
    //     0x76fdb0: ubfx            x0, x0, #0xc, #0x14
    // 0x76fdb4: r16 = 6
    //     0x76fdb4: movz            x16, #0x6
    // 0x76fdb8: stp             x16, x1, [SP]
    // 0x76fdbc: mov             lr, x0
    // 0x76fdc0: ldr             lr, [x21, lr, lsl #3]
    // 0x76fdc4: blr             lr
    // 0x76fdc8: mov             x3, x0
    // 0x76fdcc: stur            x3, [fp, #-0xc0]
    // 0x76fdd0: cmp             w3, NULL
    // 0x76fdd4: b.eq            #0x76ffe4
    // 0x76fdd8: mov             x0, x3
    // 0x76fddc: r2 = Null
    //     0x76fddc: mov             x2, NULL
    // 0x76fde0: r1 = Null
    //     0x76fde0: mov             x1, NULL
    // 0x76fde4: r4 = 60
    //     0x76fde4: movz            x4, #0x3c
    // 0x76fde8: branchIfSmi(r0, 0x76fdf4)
    //     0x76fde8: tbz             w0, #0, #0x76fdf4
    // 0x76fdec: r4 = LoadClassIdInstr(r0)
    //     0x76fdec: ldur            x4, [x0, #-1]
    //     0x76fdf0: ubfx            x4, x4, #0xc, #0x14
    // 0x76fdf4: sub             x4, x4, #0x5e
    // 0x76fdf8: cmp             x4, #1
    // 0x76fdfc: b.ls            #0x76fe10
    // 0x76fe00: r8 = String
    //     0x76fe00: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76fe04: r3 = Null
    //     0x76fe04: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a060] Null
    //     0x76fe08: ldr             x3, [x3, #0x60]
    // 0x76fe0c: r0 = String()
    //     0x76fe0c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76fe10: ldur            x1, [fp, #-0xa0]
    // 0x76fe14: r0 = LoadClassIdInstr(r1)
    //     0x76fe14: ldur            x0, [x1, #-1]
    //     0x76fe18: ubfx            x0, x0, #0xc, #0x14
    // 0x76fe1c: r16 = 8
    //     0x76fe1c: movz            x16, #0x8
    // 0x76fe20: stp             x16, x1, [SP]
    // 0x76fe24: mov             lr, x0
    // 0x76fe28: ldr             lr, [x21, lr, lsl #3]
    // 0x76fe2c: blr             lr
    // 0x76fe30: mov             x3, x0
    // 0x76fe34: stur            x3, [fp, #-0xc8]
    // 0x76fe38: cmp             w3, NULL
    // 0x76fe3c: b.eq            #0x76ffe8
    // 0x76fe40: mov             x0, x3
    // 0x76fe44: r2 = Null
    //     0x76fe44: mov             x2, NULL
    // 0x76fe48: r1 = Null
    //     0x76fe48: mov             x1, NULL
    // 0x76fe4c: r4 = 60
    //     0x76fe4c: movz            x4, #0x3c
    // 0x76fe50: branchIfSmi(r0, 0x76fe5c)
    //     0x76fe50: tbz             w0, #0, #0x76fe5c
    // 0x76fe54: r4 = LoadClassIdInstr(r0)
    //     0x76fe54: ldur            x4, [x0, #-1]
    //     0x76fe58: ubfx            x4, x4, #0xc, #0x14
    // 0x76fe5c: sub             x4, x4, #0x5e
    // 0x76fe60: cmp             x4, #1
    // 0x76fe64: b.ls            #0x76fe78
    // 0x76fe68: r8 = String
    //     0x76fe68: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x76fe6c: r3 = Null
    //     0x76fe6c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a070] Null
    //     0x76fe70: ldr             x3, [x3, #0x70]
    // 0x76fe74: r0 = String()
    //     0x76fe74: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x76fe78: ldur            x0, [fp, #-0xa0]
    // 0x76fe7c: r1 = LoadClassIdInstr(r0)
    //     0x76fe7c: ldur            x1, [x0, #-1]
    //     0x76fe80: ubfx            x1, x1, #0xc, #0x14
    // 0x76fe84: r16 = 10
    //     0x76fe84: movz            x16, #0xa
    // 0x76fe88: stp             x16, x0, [SP]
    // 0x76fe8c: mov             x0, x1
    // 0x76fe90: mov             lr, x0
    // 0x76fe94: ldr             lr, [x21, lr, lsl #3]
    // 0x76fe98: blr             lr
    // 0x76fe9c: mov             x3, x0
    // 0x76fea0: stur            x3, [fp, #-0xa0]
    // 0x76fea4: cmp             w3, NULL
    // 0x76fea8: b.eq            #0x76ffec
    // 0x76feac: r3 as int
    //     0x76feac: mov             x0, x3
    //     0x76feb0: mov             x2, NULL
    //     0x76feb4: mov             x1, NULL
    //     0x76feb8: tbz             w0, #0, #0x76fee0
    //     0x76febc: ldur            x4, [x0, #-1]
    //     0x76fec0: ubfx            x4, x4, #0xc, #0x14
    //     0x76fec4: sub             x4, x4, #0x3c
    //     0x76fec8: cmp             x4, #1
    //     0x76fecc: b.ls            #0x76fee0
    //     0x76fed0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76fed4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a080] Null
    //     0x76fed8: ldr             x3, [x3, #0x80]
    //     0x76fedc: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76fee0: ldur            x1, [fp, #-0xa8]
    // 0x76fee4: LoadField: r2 = r1->field_13
    //     0x76fee4: ldur            w2, [x1, #0x13]
    // 0x76fee8: DecompressPointer r2
    //     0x76fee8: add             x2, x2, HEAP, lsl #32
    // 0x76feec: stur            x2, [fp, #-0xd0]
    // 0x76fef0: stp             x1, x2, [SP, #0x28]
    // 0x76fef4: ldur            x16, [fp, #-0xb0]
    // 0x76fef8: ldur            lr, [fp, #-0xb8]
    // 0x76fefc: stp             lr, x16, [SP, #0x18]
    // 0x76ff00: ldur            x16, [fp, #-0xc0]
    // 0x76ff04: ldur            lr, [fp, #-0xc8]
    // 0x76ff08: stp             lr, x16, [SP, #8]
    // 0x76ff0c: ldur            x16, [fp, #-0xa0]
    // 0x76ff10: str             x16, [SP]
    // 0x76ff14: mov             x0, x2
    // 0x76ff18: ClosureCall
    //     0x76ff18: add             x4, PP, #8, lsl #12  ; [pp+0x86e0] List(5) [0, 0x7, 0x7, 0x7, Null]
    //     0x76ff1c: ldr             x4, [x4, #0x6e0]
    //     0x76ff20: ldur            x2, [x0, #0x1f]
    //     0x76ff24: blr             x2
    // 0x76ff28: r16 = true
    //     0x76ff28: add             x16, NULL, #0x20  ; true
    // 0x76ff2c: str             x16, [SP]
    // 0x76ff30: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76ff30: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76ff34: ldr             x4, [x4, #0x870]
    // 0x76ff38: r0 = call 0x392d98
    //     0x76ff38: bl              #0x392d98
    // 0x76ff3c: r0 = ReturnAsyncNotFuture()
    //     0x76ff3c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ff40: sub             SP, fp, #0x108
    // 0x76ff44: r1 = 60
    //     0x76ff44: movz            x1, #0x3c
    // 0x76ff48: branchIfSmi(r0, 0x76ff54)
    //     0x76ff48: tbz             w0, #0, #0x76ff54
    // 0x76ff4c: r1 = LoadClassIdInstr(r0)
    //     0x76ff4c: ldur            x1, [x0, #-1]
    //     0x76ff50: ubfx            x1, x1, #0xc, #0x14
    // 0x76ff54: cmp             x1, #0x5e5
    // 0x76ff58: b.ne            #0x76ff70
    // 0x76ff5c: str             x0, [SP]
    // 0x76ff60: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ff60: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ff64: ldr             x4, [x4, #0x878]
    // 0x76ff68: r0 = call 0x392d98
    //     0x76ff68: bl              #0x392d98
    // 0x76ff6c: r0 = ReturnAsyncNotFuture()
    //     0x76ff6c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ff70: r1 = 60
    //     0x76ff70: movz            x1, #0x3c
    // 0x76ff74: branchIfSmi(r0, 0x76ff80)
    //     0x76ff74: tbz             w0, #0, #0x76ff80
    // 0x76ff78: r1 = LoadClassIdInstr(r0)
    //     0x76ff78: ldur            x1, [x0, #-1]
    //     0x76ff7c: ubfx            x1, x1, #0xc, #0x14
    // 0x76ff80: str             x0, [SP]
    // 0x76ff84: mov             x0, x1
    // 0x76ff88: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76ff88: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76ff8c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76ff8c: movz            x17, #0x3a5d
    //     0x76ff90: add             lr, x0, x17
    //     0x76ff94: ldr             lr, [x21, lr, lsl #3]
    //     0x76ff98: blr             lr
    // 0x76ff9c: stur            x0, [fp, #-0x98]
    // 0x76ffa0: r0 = Mha()
    //     0x76ffa0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76ffa4: mov             x1, x0
    // 0x76ffa8: r0 = "error"
    //     0x76ffa8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76ffac: StoreField: r1->field_7 = r0
    //     0x76ffac: stur            w0, [x1, #7]
    // 0x76ffb0: ldur            x0, [fp, #-0x98]
    // 0x76ffb4: StoreField: r1->field_b = r0
    //     0x76ffb4: stur            w0, [x1, #0xb]
    // 0x76ffb8: str             x1, [SP]
    // 0x76ffbc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76ffbc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76ffc0: ldr             x4, [x4, #0x878]
    // 0x76ffc4: r0 = call 0x392d98
    //     0x76ffc4: bl              #0x392d98
    // 0x76ffc8: r0 = ReturnAsyncNotFuture()
    //     0x76ffc8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76ffcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76ffcc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76ffd0: b               #0x76fc24
    // 0x76ffd4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffd4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffd8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffd8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffdc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffdc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffe0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffe0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffe4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffe4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffe8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffe8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76ffec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76ffec: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7abe78, size: 0xb0
    // 0x7abe78: EnterFrame
    //     0x7abe78: stp             fp, lr, [SP, #-0x10]!
    //     0x7abe7c: mov             fp, SP
    // 0x7abe80: AllocStack(0x18)
    //     0x7abe80: sub             SP, SP, #0x18
    // 0x7abe84: SetupParameters(jVa this /* r1 */)
    //     0x7abe84: stur            NULL, [fp, #-8]
    //     0x7abe88: movz            x0, #0
    //     0x7abe8c: add             x1, fp, w0, sxtw #2
    //     0x7abe90: ldr             x1, [x1, #0x10]
    //     0x7abe94: ldur            w2, [x1, #0x17]
    //     0x7abe98: add             x2, x2, HEAP, lsl #32
    //     0x7abe9c: stur            x2, [fp, #-0x10]
    // 0x7abea0: CheckStackOverflow
    //     0x7abea0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7abea4: cmp             SP, x16
    //     0x7abea8: b.ls            #0x7abf20
    // 0x7abeac: InitAsync() -> Future<Null?>
    //     0x7abeac: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7abeb0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7abeb4: ldur            x1, [fp, #-0x10]
    // 0x7abeb8: LoadField: r2 = r1->field_f
    //     0x7abeb8: ldur            w2, [x1, #0xf]
    // 0x7abebc: DecompressPointer r2
    //     0x7abebc: add             x2, x2, HEAP, lsl #32
    // 0x7abec0: mov             x0, x2
    // 0x7abec4: stur            x2, [fp, #-0x18]
    // 0x7abec8: r0 = Await()
    //     0x7abec8: bl              #0x74ab64  ; AwaitStub
    // 0x7abecc: mov             x3, x0
    // 0x7abed0: r2 = Null
    //     0x7abed0: mov             x2, NULL
    // 0x7abed4: r1 = Null
    //     0x7abed4: mov             x1, NULL
    // 0x7abed8: stur            x3, [fp, #-0x10]
    // 0x7abedc: r4 = 60
    //     0x7abedc: movz            x4, #0x3c
    // 0x7abee0: branchIfSmi(r0, 0x7abeec)
    //     0x7abee0: tbz             w0, #0, #0x7abeec
    // 0x7abee4: r4 = LoadClassIdInstr(r0)
    //     0x7abee4: ldur            x4, [x0, #-1]
    //     0x7abee8: ubfx            x4, x4, #0xc, #0x14
    // 0x7abeec: sub             x4, x4, #0x5a
    // 0x7abef0: cmp             x4, #2
    // 0x7abef4: b.ls            #0x7abf08
    // 0x7abef8: r8 = List<Object?>?
    //     0x7abef8: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x7abefc: r3 = Null
    //     0x7abefc: add             x3, PP, #0x23, lsl #12  ; [pp+0x23040] Null
    //     0x7abf00: ldr             x3, [x3, #0x40]
    // 0x7abf04: r0 = List<Object?>?()
    //     0x7abf04: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x7abf08: ldur            x1, [fp, #-0x10]
    // 0x7abf0c: r2 = "dev.flutter.pigeon.webview_flutter_android.DownloadListener.pigeon_defaultConstructor"
    //     0x7abf0c: add             x2, PP, #0x23, lsl #12  ; [pp+0x23030] "dev.flutter.pigeon.webview_flutter_android.DownloadListener.pigeon_defaultConstructor"
    //     0x7abf10: ldr             x2, [x2, #0x30]
    // 0x7abf14: r0 = call 0x3951e4
    //     0x7abf14: bl              #0x3951e4
    // 0x7abf18: r0 = Null
    //     0x7abf18: mov             x0, NULL
    // 0x7abf1c: r0 = ReturnAsyncNotFuture()
    //     0x7abf1c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7abf20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7abf20: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7abf24: b               #0x7abeac
  }
}

// class id: 391, size: 0x54, field offset: 0x10
class iVa extends OUa {

  late final _RUa _Svf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76fff0, size: 0x2c4
    // 0x76fff0: EnterFrame
    //     0x76fff0: stp             fp, lr, [SP, #-0x10]!
    //     0x76fff4: mov             fp, SP
    // 0x76fff8: AllocStack(0xa8)
    //     0x76fff8: sub             SP, SP, #0xa8
    // 0x76fffc: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x76fffc: stur            NULL, [fp, #-8]
    //     0x770000: movz            x0, #0
    //     0x770004: add             x1, fp, w0, sxtw #2
    //     0x770008: ldr             x1, [x1, #0x18]
    //     0x77000c: add             x2, fp, w0, sxtw #2
    //     0x770010: ldr             x2, [x2, #0x10]
    //     0x770014: stur            x2, [fp, #-0x90]
    //     0x770018: ldur            w3, [x1, #0x17]
    //     0x77001c: add             x3, x3, HEAP, lsl #32
    //     0x770020: stur            x3, [fp, #-0x88]
    // 0x770024: CheckStackOverflow
    //     0x770024: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x770028: cmp             SP, x16
    //     0x77002c: b.ls            #0x770298
    // 0x770030: InitAsync() -> Future<List<Object?>>
    //     0x770030: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x770034: ldr             x0, [x0, #0x1d0]
    //     0x770038: bl              #0x74ada8  ; InitAsyncStub
    // 0x77003c: ldur            x3, [fp, #-0x90]
    // 0x770040: cmp             w3, NULL
    // 0x770044: b.eq            #0x7702a0
    // 0x770048: mov             x0, x3
    // 0x77004c: r2 = Null
    //     0x77004c: mov             x2, NULL
    // 0x770050: r1 = Null
    //     0x770050: mov             x1, NULL
    // 0x770054: r4 = 60
    //     0x770054: movz            x4, #0x3c
    // 0x770058: branchIfSmi(r0, 0x770064)
    //     0x770058: tbz             w0, #0, #0x770064
    // 0x77005c: r4 = LoadClassIdInstr(r0)
    //     0x77005c: ldur            x4, [x0, #-1]
    //     0x770060: ubfx            x4, x4, #0xc, #0x14
    // 0x770064: sub             x4, x4, #0x5a
    // 0x770068: cmp             x4, #2
    // 0x77006c: b.ls            #0x770080
    // 0x770070: r8 = List<Object?>
    //     0x770070: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770074: r3 = Null
    //     0x770074: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1a0] Null
    //     0x770078: ldr             x3, [x3, #0x1a0]
    // 0x77007c: r0 = List<Object?>()
    //     0x77007c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770080: ldur            x1, [fp, #-0x90]
    // 0x770084: r0 = LoadClassIdInstr(r1)
    //     0x770084: ldur            x0, [x1, #-1]
    //     0x770088: ubfx            x0, x0, #0xc, #0x14
    // 0x77008c: stp             xzr, x1, [SP]
    // 0x770090: mov             lr, x0
    // 0x770094: ldr             lr, [x21, lr, lsl #3]
    // 0x770098: blr             lr
    // 0x77009c: mov             x3, x0
    // 0x7700a0: stur            x3, [fp, #-0x98]
    // 0x7700a4: cmp             w3, NULL
    // 0x7700a8: b.eq            #0x7702a4
    // 0x7700ac: mov             x0, x3
    // 0x7700b0: r2 = Null
    //     0x7700b0: mov             x2, NULL
    // 0x7700b4: r1 = Null
    //     0x7700b4: mov             x1, NULL
    // 0x7700b8: r4 = 60
    //     0x7700b8: movz            x4, #0x3c
    // 0x7700bc: branchIfSmi(r0, 0x7700c8)
    //     0x7700bc: tbz             w0, #0, #0x7700c8
    // 0x7700c0: r4 = LoadClassIdInstr(r0)
    //     0x7700c0: ldur            x4, [x0, #-1]
    //     0x7700c4: ubfx            x4, x4, #0xc, #0x14
    // 0x7700c8: cmp             x4, #0x187
    // 0x7700cc: b.eq            #0x7700e4
    // 0x7700d0: r8 = iVa
    //     0x7700d0: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x7700d4: ldr             x8, [x8, #0x1b0]
    // 0x7700d8: r3 = Null
    //     0x7700d8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1b8] Null
    //     0x7700dc: ldr             x3, [x3, #0x1b8]
    // 0x7700e0: r0 = DefaultTypeTest()
    //     0x7700e0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7700e4: ldur            x1, [fp, #-0x90]
    // 0x7700e8: r0 = LoadClassIdInstr(r1)
    //     0x7700e8: ldur            x0, [x1, #-1]
    //     0x7700ec: ubfx            x0, x0, #0xc, #0x14
    // 0x7700f0: r16 = 2
    //     0x7700f0: movz            x16, #0x2
    // 0x7700f4: stp             x16, x1, [SP]
    // 0x7700f8: mov             lr, x0
    // 0x7700fc: ldr             lr, [x21, lr, lsl #3]
    // 0x770100: blr             lr
    // 0x770104: cmp             w0, NULL
    // 0x770108: b.eq            #0x7702a8
    // 0x77010c: r2 = Null
    //     0x77010c: mov             x2, NULL
    // 0x770110: r1 = Null
    //     0x770110: mov             x1, NULL
    // 0x770114: r4 = 60
    //     0x770114: movz            x4, #0x3c
    // 0x770118: branchIfSmi(r0, 0x770124)
    //     0x770118: tbz             w0, #0, #0x770124
    // 0x77011c: r4 = LoadClassIdInstr(r0)
    //     0x77011c: ldur            x4, [x0, #-1]
    //     0x770120: ubfx            x4, x4, #0xc, #0x14
    // 0x770124: cmp             x4, #0x18b
    // 0x770128: b.eq            #0x770140
    // 0x77012c: r8 = fVa
    //     0x77012c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770130: ldr             x8, [x8, #0xd48]
    // 0x770134: r3 = Null
    //     0x770134: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1c8] Null
    //     0x770138: ldr             x3, [x3, #0x1c8]
    // 0x77013c: r0 = DefaultTypeTest()
    //     0x77013c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770140: ldur            x1, [fp, #-0x90]
    // 0x770144: r0 = LoadClassIdInstr(r1)
    //     0x770144: ldur            x0, [x1, #-1]
    //     0x770148: ubfx            x0, x0, #0xc, #0x14
    // 0x77014c: r16 = 4
    //     0x77014c: movz            x16, #0x4
    // 0x770150: stp             x16, x1, [SP]
    // 0x770154: mov             lr, x0
    // 0x770158: ldr             lr, [x21, lr, lsl #3]
    // 0x77015c: blr             lr
    // 0x770160: cmp             w0, NULL
    // 0x770164: b.eq            #0x7702ac
    // 0x770168: r2 = Null
    //     0x770168: mov             x2, NULL
    // 0x77016c: r1 = Null
    //     0x77016c: mov             x1, NULL
    // 0x770170: r4 = 60
    //     0x770170: movz            x4, #0x3c
    // 0x770174: branchIfSmi(r0, 0x770180)
    //     0x770174: tbz             w0, #0, #0x770180
    // 0x770178: r4 = LoadClassIdInstr(r0)
    //     0x770178: ldur            x4, [x0, #-1]
    //     0x77017c: ubfx            x4, x4, #0xc, #0x14
    // 0x770180: cmp             x4, #0x3e
    // 0x770184: b.eq            #0x770198
    // 0x770188: r8 = double
    //     0x770188: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x77018c: r3 = Null
    //     0x77018c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1d8] Null
    //     0x770190: ldr             x3, [x3, #0x1d8]
    // 0x770194: r0 = double()
    //     0x770194: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x770198: ldur            x0, [fp, #-0x90]
    // 0x77019c: r1 = LoadClassIdInstr(r0)
    //     0x77019c: ldur            x1, [x0, #-1]
    //     0x7701a0: ubfx            x1, x1, #0xc, #0x14
    // 0x7701a4: r16 = 6
    //     0x7701a4: movz            x16, #0x6
    // 0x7701a8: stp             x16, x0, [SP]
    // 0x7701ac: mov             x0, x1
    // 0x7701b0: mov             lr, x0
    // 0x7701b4: ldr             lr, [x21, lr, lsl #3]
    // 0x7701b8: blr             lr
    // 0x7701bc: cmp             w0, NULL
    // 0x7701c0: b.eq            #0x7702b0
    // 0x7701c4: r2 = Null
    //     0x7701c4: mov             x2, NULL
    // 0x7701c8: r1 = Null
    //     0x7701c8: mov             x1, NULL
    // 0x7701cc: r4 = 60
    //     0x7701cc: movz            x4, #0x3c
    // 0x7701d0: branchIfSmi(r0, 0x7701dc)
    //     0x7701d0: tbz             w0, #0, #0x7701dc
    // 0x7701d4: r4 = LoadClassIdInstr(r0)
    //     0x7701d4: ldur            x4, [x0, #-1]
    //     0x7701d8: ubfx            x4, x4, #0xc, #0x14
    // 0x7701dc: cmp             x4, #0x3e
    // 0x7701e0: b.eq            #0x7701f4
    // 0x7701e4: r8 = double
    //     0x7701e4: ldr             x8, [PP, #0x5f90]  ; [pp+0x5f90] Type: double
    // 0x7701e8: r3 = Null
    //     0x7701e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1e8] Null
    //     0x7701ec: ldr             x3, [x3, #0x1e8]
    // 0x7701f0: r0 = double()
    //     0x7701f0: bl              #0x7f0cc4  ; IsType_double_Stub
    // 0x7701f4: r16 = true
    //     0x7701f4: add             x16, NULL, #0x20  ; true
    // 0x7701f8: str             x16, [SP]
    // 0x7701fc: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7701fc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770200: ldr             x4, [x4, #0x870]
    // 0x770204: r0 = call 0x392d98
    //     0x770204: bl              #0x392d98
    // 0x770208: r0 = ReturnAsyncNotFuture()
    //     0x770208: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77020c: sub             SP, fp, #0xa8
    // 0x770210: r1 = 60
    //     0x770210: movz            x1, #0x3c
    // 0x770214: branchIfSmi(r0, 0x770220)
    //     0x770214: tbz             w0, #0, #0x770220
    // 0x770218: r1 = LoadClassIdInstr(r0)
    //     0x770218: ldur            x1, [x0, #-1]
    //     0x77021c: ubfx            x1, x1, #0xc, #0x14
    // 0x770220: cmp             x1, #0x5e5
    // 0x770224: b.ne            #0x77023c
    // 0x770228: str             x0, [SP]
    // 0x77022c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x77022c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770230: ldr             x4, [x4, #0x878]
    // 0x770234: r0 = call 0x392d98
    //     0x770234: bl              #0x392d98
    // 0x770238: r0 = ReturnAsyncNotFuture()
    //     0x770238: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77023c: r1 = 60
    //     0x77023c: movz            x1, #0x3c
    // 0x770240: branchIfSmi(r0, 0x77024c)
    //     0x770240: tbz             w0, #0, #0x77024c
    // 0x770244: r1 = LoadClassIdInstr(r0)
    //     0x770244: ldur            x1, [x0, #-1]
    //     0x770248: ubfx            x1, x1, #0xc, #0x14
    // 0x77024c: str             x0, [SP]
    // 0x770250: mov             x0, x1
    // 0x770254: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x770254: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x770258: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x770258: movz            x17, #0x3a5d
    //     0x77025c: add             lr, x0, x17
    //     0x770260: ldr             lr, [x21, lr, lsl #3]
    //     0x770264: blr             lr
    // 0x770268: stur            x0, [fp, #-0x88]
    // 0x77026c: r0 = Mha()
    //     0x77026c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x770270: mov             x1, x0
    // 0x770274: r0 = "error"
    //     0x770274: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x770278: StoreField: r1->field_7 = r0
    //     0x770278: stur            w0, [x1, #7]
    // 0x77027c: ldur            x0, [fp, #-0x88]
    // 0x770280: StoreField: r1->field_b = r0
    //     0x770280: stur            w0, [x1, #0xb]
    // 0x770284: str             x1, [SP]
    // 0x770288: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x770288: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x77028c: ldr             x4, [x4, #0x878]
    // 0x770290: r0 = call 0x392d98
    //     0x770290: bl              #0x392d98
    // 0x770294: r0 = ReturnAsyncNotFuture()
    //     0x770294: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770298: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x770298: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77029c: b               #0x770030
    // 0x7702a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7702a0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7702a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7702a4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7702a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7702a8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7702ac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7702ac: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7702b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7702b0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x7702b4, size: 0x330
    // 0x7702b4: EnterFrame
    //     0x7702b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7702b8: mov             fp, SP
    // 0x7702bc: AllocStack(0xe0)
    //     0x7702bc: sub             SP, SP, #0xe0
    // 0x7702c0: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x7702c0: stur            NULL, [fp, #-8]
    //     0x7702c4: movz            x0, #0
    //     0x7702c8: add             x1, fp, w0, sxtw #2
    //     0x7702cc: ldr             x1, [x1, #0x18]
    //     0x7702d0: add             x2, fp, w0, sxtw #2
    //     0x7702d4: ldr             x2, [x2, #0x10]
    //     0x7702d8: stur            x2, [fp, #-0x98]
    //     0x7702dc: ldur            w3, [x1, #0x17]
    //     0x7702e0: add             x3, x3, HEAP, lsl #32
    //     0x7702e4: stur            x3, [fp, #-0x90]
    // 0x7702e8: CheckStackOverflow
    //     0x7702e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7702ec: cmp             SP, x16
    //     0x7702f0: b.ls            #0x7705c8
    // 0x7702f4: InitAsync() -> Future<List<Object?>>
    //     0x7702f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7702f8: ldr             x0, [x0, #0x1d0]
    //     0x7702fc: bl              #0x74ada8  ; InitAsyncStub
    // 0x770300: ldur            x3, [fp, #-0x98]
    // 0x770304: cmp             w3, NULL
    // 0x770308: b.eq            #0x7705d0
    // 0x77030c: mov             x0, x3
    // 0x770310: r2 = Null
    //     0x770310: mov             x2, NULL
    // 0x770314: r1 = Null
    //     0x770314: mov             x1, NULL
    // 0x770318: r4 = 60
    //     0x770318: movz            x4, #0x3c
    // 0x77031c: branchIfSmi(r0, 0x770328)
    //     0x77031c: tbz             w0, #0, #0x770328
    // 0x770320: r4 = LoadClassIdInstr(r0)
    //     0x770320: ldur            x4, [x0, #-1]
    //     0x770324: ubfx            x4, x4, #0xc, #0x14
    // 0x770328: sub             x4, x4, #0x5a
    // 0x77032c: cmp             x4, #2
    // 0x770330: b.ls            #0x770344
    // 0x770334: r8 = List<Object?>
    //     0x770334: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770338: r3 = Null
    //     0x770338: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a1f8] Null
    //     0x77033c: ldr             x3, [x3, #0x1f8]
    // 0x770340: r0 = List<Object?>()
    //     0x770340: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770344: ldur            x1, [fp, #-0x98]
    // 0x770348: r0 = LoadClassIdInstr(r1)
    //     0x770348: ldur            x0, [x1, #-1]
    //     0x77034c: ubfx            x0, x0, #0xc, #0x14
    // 0x770350: stp             xzr, x1, [SP]
    // 0x770354: mov             lr, x0
    // 0x770358: ldr             lr, [x21, lr, lsl #3]
    // 0x77035c: blr             lr
    // 0x770360: mov             x3, x0
    // 0x770364: stur            x3, [fp, #-0xa0]
    // 0x770368: cmp             w3, NULL
    // 0x77036c: b.eq            #0x7705d4
    // 0x770370: mov             x0, x3
    // 0x770374: r2 = Null
    //     0x770374: mov             x2, NULL
    // 0x770378: r1 = Null
    //     0x770378: mov             x1, NULL
    // 0x77037c: r4 = 60
    //     0x77037c: movz            x4, #0x3c
    // 0x770380: branchIfSmi(r0, 0x77038c)
    //     0x770380: tbz             w0, #0, #0x77038c
    // 0x770384: r4 = LoadClassIdInstr(r0)
    //     0x770384: ldur            x4, [x0, #-1]
    //     0x770388: ubfx            x4, x4, #0xc, #0x14
    // 0x77038c: cmp             x4, #0x187
    // 0x770390: b.eq            #0x7703a8
    // 0x770394: r8 = iVa
    //     0x770394: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x770398: ldr             x8, [x8, #0x1b0]
    // 0x77039c: r3 = Null
    //     0x77039c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a208] Null
    //     0x7703a0: ldr             x3, [x3, #0x208]
    // 0x7703a4: r0 = DefaultTypeTest()
    //     0x7703a4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7703a8: ldur            x1, [fp, #-0x98]
    // 0x7703ac: r0 = LoadClassIdInstr(r1)
    //     0x7703ac: ldur            x0, [x1, #-1]
    //     0x7703b0: ubfx            x0, x0, #0xc, #0x14
    // 0x7703b4: r16 = 2
    //     0x7703b4: movz            x16, #0x2
    // 0x7703b8: stp             x16, x1, [SP]
    // 0x7703bc: mov             lr, x0
    // 0x7703c0: ldr             lr, [x21, lr, lsl #3]
    // 0x7703c4: blr             lr
    // 0x7703c8: mov             x3, x0
    // 0x7703cc: stur            x3, [fp, #-0xa8]
    // 0x7703d0: cmp             w3, NULL
    // 0x7703d4: b.eq            #0x7705d8
    // 0x7703d8: mov             x0, x3
    // 0x7703dc: r2 = Null
    //     0x7703dc: mov             x2, NULL
    // 0x7703e0: r1 = Null
    //     0x7703e0: mov             x1, NULL
    // 0x7703e4: r4 = 60
    //     0x7703e4: movz            x4, #0x3c
    // 0x7703e8: branchIfSmi(r0, 0x7703f4)
    //     0x7703e8: tbz             w0, #0, #0x7703f4
    // 0x7703ec: r4 = LoadClassIdInstr(r0)
    //     0x7703ec: ldur            x4, [x0, #-1]
    //     0x7703f0: ubfx            x4, x4, #0xc, #0x14
    // 0x7703f4: cmp             x4, #0x18b
    // 0x7703f8: b.eq            #0x770410
    // 0x7703fc: r8 = fVa
    //     0x7703fc: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770400: ldr             x8, [x8, #0xd48]
    // 0x770404: r3 = Null
    //     0x770404: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a218] Null
    //     0x770408: ldr             x3, [x3, #0x218]
    // 0x77040c: r0 = DefaultTypeTest()
    //     0x77040c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770410: ldur            x1, [fp, #-0x98]
    // 0x770414: r0 = LoadClassIdInstr(r1)
    //     0x770414: ldur            x0, [x1, #-1]
    //     0x770418: ubfx            x0, x0, #0xc, #0x14
    // 0x77041c: r16 = 4
    //     0x77041c: movz            x16, #0x4
    // 0x770420: stp             x16, x1, [SP]
    // 0x770424: mov             lr, x0
    // 0x770428: ldr             lr, [x21, lr, lsl #3]
    // 0x77042c: blr             lr
    // 0x770430: mov             x3, x0
    // 0x770434: stur            x3, [fp, #-0xb0]
    // 0x770438: cmp             w3, NULL
    // 0x77043c: b.eq            #0x7705dc
    // 0x770440: mov             x0, x3
    // 0x770444: r2 = Null
    //     0x770444: mov             x2, NULL
    // 0x770448: r1 = Null
    //     0x770448: mov             x1, NULL
    // 0x77044c: r4 = 60
    //     0x77044c: movz            x4, #0x3c
    // 0x770450: branchIfSmi(r0, 0x77045c)
    //     0x770450: tbz             w0, #0, #0x77045c
    // 0x770454: r4 = LoadClassIdInstr(r0)
    //     0x770454: ldur            x4, [x0, #-1]
    //     0x770458: ubfx            x4, x4, #0xc, #0x14
    // 0x77045c: cmp             x4, #0x178
    // 0x770460: b.eq            #0x770478
    // 0x770464: r8 = vVa
    //     0x770464: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a228] Type: vVa
    //     0x770468: ldr             x8, [x8, #0x228]
    // 0x77046c: r3 = Null
    //     0x77046c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a230] Null
    //     0x770470: ldr             x3, [x3, #0x230]
    // 0x770474: r0 = DefaultTypeTest()
    //     0x770474: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770478: ldur            x0, [fp, #-0x98]
    // 0x77047c: r1 = LoadClassIdInstr(r0)
    //     0x77047c: ldur            x1, [x0, #-1]
    //     0x770480: ubfx            x1, x1, #0xc, #0x14
    // 0x770484: r16 = 6
    //     0x770484: movz            x16, #0x6
    // 0x770488: stp             x16, x0, [SP]
    // 0x77048c: mov             x0, x1
    // 0x770490: mov             lr, x0
    // 0x770494: ldr             lr, [x21, lr, lsl #3]
    // 0x770498: blr             lr
    // 0x77049c: mov             x3, x0
    // 0x7704a0: stur            x3, [fp, #-0x98]
    // 0x7704a4: cmp             w3, NULL
    // 0x7704a8: b.eq            #0x7705e0
    // 0x7704ac: mov             x0, x3
    // 0x7704b0: r2 = Null
    //     0x7704b0: mov             x2, NULL
    // 0x7704b4: r1 = Null
    //     0x7704b4: mov             x1, NULL
    // 0x7704b8: r4 = 60
    //     0x7704b8: movz            x4, #0x3c
    // 0x7704bc: branchIfSmi(r0, 0x7704c8)
    //     0x7704bc: tbz             w0, #0, #0x7704c8
    // 0x7704c0: r4 = LoadClassIdInstr(r0)
    //     0x7704c0: ldur            x4, [x0, #-1]
    //     0x7704c4: ubfx            x4, x4, #0xc, #0x14
    // 0x7704c8: cmp             x4, #0x177
    // 0x7704cc: b.eq            #0x7704e4
    // 0x7704d0: r8 = wVa
    //     0x7704d0: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a240] Type: wVa
    //     0x7704d4: ldr             x8, [x8, #0x240]
    // 0x7704d8: r3 = Null
    //     0x7704d8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a248] Null
    //     0x7704dc: ldr             x3, [x3, #0x248]
    // 0x7704e0: r0 = DefaultTypeTest()
    //     0x7704e0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7704e4: ldur            x1, [fp, #-0xa0]
    // 0x7704e8: LoadField: r2 = r1->field_4b
    //     0x7704e8: ldur            w2, [x1, #0x4b]
    // 0x7704ec: DecompressPointer r2
    //     0x7704ec: add             x2, x2, HEAP, lsl #32
    // 0x7704f0: stur            x2, [fp, #-0xb8]
    // 0x7704f4: cmp             w2, NULL
    // 0x7704f8: b.eq            #0x770524
    // 0x7704fc: stp             x1, x2, [SP, #0x18]
    // 0x770500: ldur            x16, [fp, #-0xa8]
    // 0x770504: ldur            lr, [fp, #-0xb0]
    // 0x770508: stp             lr, x16, [SP, #8]
    // 0x77050c: ldur            x16, [fp, #-0x98]
    // 0x770510: str             x16, [SP]
    // 0x770514: mov             x0, x2
    // 0x770518: ClosureCall
    //     0x770518: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x77051c: ldur            x2, [x0, #0x1f]
    //     0x770520: blr             x2
    // 0x770524: r16 = true
    //     0x770524: add             x16, NULL, #0x20  ; true
    // 0x770528: str             x16, [SP]
    // 0x77052c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x77052c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770530: ldr             x4, [x4, #0x870]
    // 0x770534: r0 = call 0x392d98
    //     0x770534: bl              #0x392d98
    // 0x770538: r0 = ReturnAsyncNotFuture()
    //     0x770538: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77053c: sub             SP, fp, #0xe0
    // 0x770540: r1 = 60
    //     0x770540: movz            x1, #0x3c
    // 0x770544: branchIfSmi(r0, 0x770550)
    //     0x770544: tbz             w0, #0, #0x770550
    // 0x770548: r1 = LoadClassIdInstr(r0)
    //     0x770548: ldur            x1, [x0, #-1]
    //     0x77054c: ubfx            x1, x1, #0xc, #0x14
    // 0x770550: cmp             x1, #0x5e5
    // 0x770554: b.ne            #0x77056c
    // 0x770558: str             x0, [SP]
    // 0x77055c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x77055c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770560: ldr             x4, [x4, #0x878]
    // 0x770564: r0 = call 0x392d98
    //     0x770564: bl              #0x392d98
    // 0x770568: r0 = ReturnAsyncNotFuture()
    //     0x770568: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77056c: r1 = 60
    //     0x77056c: movz            x1, #0x3c
    // 0x770570: branchIfSmi(r0, 0x77057c)
    //     0x770570: tbz             w0, #0, #0x77057c
    // 0x770574: r1 = LoadClassIdInstr(r0)
    //     0x770574: ldur            x1, [x0, #-1]
    //     0x770578: ubfx            x1, x1, #0xc, #0x14
    // 0x77057c: str             x0, [SP]
    // 0x770580: mov             x0, x1
    // 0x770584: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x770584: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x770588: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x770588: movz            x17, #0x3a5d
    //     0x77058c: add             lr, x0, x17
    //     0x770590: ldr             lr, [x21, lr, lsl #3]
    //     0x770594: blr             lr
    // 0x770598: stur            x0, [fp, #-0x90]
    // 0x77059c: r0 = Mha()
    //     0x77059c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7705a0: mov             x1, x0
    // 0x7705a4: r0 = "error"
    //     0x7705a4: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7705a8: StoreField: r1->field_7 = r0
    //     0x7705a8: stur            w0, [x1, #7]
    // 0x7705ac: ldur            x0, [fp, #-0x90]
    // 0x7705b0: StoreField: r1->field_b = r0
    //     0x7705b0: stur            w0, [x1, #0xb]
    // 0x7705b4: str             x1, [SP]
    // 0x7705b8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7705b8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7705bc: ldr             x4, [x4, #0x878]
    // 0x7705c0: r0 = call 0x392d98
    //     0x7705c0: bl              #0x392d98
    // 0x7705c4: r0 = ReturnAsyncNotFuture()
    //     0x7705c4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7705c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7705c8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7705cc: b               #0x7702f4
    // 0x7705d0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7705d0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7705d4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7705d4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7705d8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7705d8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7705dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7705dc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7705e0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7705e0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x7705e4, size: 0x320
    // 0x7705e4: EnterFrame
    //     0x7705e4: stp             fp, lr, [SP, #-0x10]!
    //     0x7705e8: mov             fp, SP
    // 0x7705ec: AllocStack(0xb0)
    //     0x7705ec: sub             SP, SP, #0xb0
    // 0x7705f0: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x7705f0: stur            NULL, [fp, #-8]
    //     0x7705f4: movz            x0, #0
    //     0x7705f8: add             x1, fp, w0, sxtw #2
    //     0x7705fc: ldr             x1, [x1, #0x18]
    //     0x770600: add             x2, fp, w0, sxtw #2
    //     0x770604: ldr             x2, [x2, #0x10]
    //     0x770608: stur            x2, [fp, #-0x98]
    //     0x77060c: ldur            w3, [x1, #0x17]
    //     0x770610: add             x3, x3, HEAP, lsl #32
    //     0x770614: stur            x3, [fp, #-0x90]
    // 0x770618: CheckStackOverflow
    //     0x770618: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77061c: cmp             SP, x16
    //     0x770620: b.ls            #0x7708e8
    // 0x770624: InitAsync() -> Future<List<Object?>>
    //     0x770624: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x770628: ldr             x0, [x0, #0x1d0]
    //     0x77062c: bl              #0x74ada8  ; InitAsyncStub
    // 0x770630: ldur            x3, [fp, #-0x98]
    // 0x770634: cmp             w3, NULL
    // 0x770638: b.eq            #0x7708f0
    // 0x77063c: mov             x0, x3
    // 0x770640: r2 = Null
    //     0x770640: mov             x2, NULL
    // 0x770644: r1 = Null
    //     0x770644: mov             x1, NULL
    // 0x770648: r4 = 60
    //     0x770648: movz            x4, #0x3c
    // 0x77064c: branchIfSmi(r0, 0x770658)
    //     0x77064c: tbz             w0, #0, #0x770658
    // 0x770650: r4 = LoadClassIdInstr(r0)
    //     0x770650: ldur            x4, [x0, #-1]
    //     0x770654: ubfx            x4, x4, #0xc, #0x14
    // 0x770658: sub             x4, x4, #0x5a
    // 0x77065c: cmp             x4, #2
    // 0x770660: b.ls            #0x770674
    // 0x770664: r8 = List<Object?>
    //     0x770664: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770668: r3 = Null
    //     0x770668: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a258] Null
    //     0x77066c: ldr             x3, [x3, #0x258]
    // 0x770670: r0 = List<Object?>()
    //     0x770670: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770674: ldur            x1, [fp, #-0x98]
    // 0x770678: r0 = LoadClassIdInstr(r1)
    //     0x770678: ldur            x0, [x1, #-1]
    //     0x77067c: ubfx            x0, x0, #0xc, #0x14
    // 0x770680: stp             xzr, x1, [SP]
    // 0x770684: mov             lr, x0
    // 0x770688: ldr             lr, [x21, lr, lsl #3]
    // 0x77068c: blr             lr
    // 0x770690: mov             x3, x0
    // 0x770694: stur            x3, [fp, #-0xa0]
    // 0x770698: cmp             w3, NULL
    // 0x77069c: b.eq            #0x7708f4
    // 0x7706a0: mov             x0, x3
    // 0x7706a4: r2 = Null
    //     0x7706a4: mov             x2, NULL
    // 0x7706a8: r1 = Null
    //     0x7706a8: mov             x1, NULL
    // 0x7706ac: r4 = 60
    //     0x7706ac: movz            x4, #0x3c
    // 0x7706b0: branchIfSmi(r0, 0x7706bc)
    //     0x7706b0: tbz             w0, #0, #0x7706bc
    // 0x7706b4: r4 = LoadClassIdInstr(r0)
    //     0x7706b4: ldur            x4, [x0, #-1]
    //     0x7706b8: ubfx            x4, x4, #0xc, #0x14
    // 0x7706bc: cmp             x4, #0x187
    // 0x7706c0: b.eq            #0x7706d8
    // 0x7706c4: r8 = iVa
    //     0x7706c4: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x7706c8: ldr             x8, [x8, #0x1b0]
    // 0x7706cc: r3 = Null
    //     0x7706cc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a268] Null
    //     0x7706d0: ldr             x3, [x3, #0x268]
    // 0x7706d4: r0 = DefaultTypeTest()
    //     0x7706d4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7706d8: ldur            x1, [fp, #-0x98]
    // 0x7706dc: r0 = LoadClassIdInstr(r1)
    //     0x7706dc: ldur            x0, [x1, #-1]
    //     0x7706e0: ubfx            x0, x0, #0xc, #0x14
    // 0x7706e4: r16 = 2
    //     0x7706e4: movz            x16, #0x2
    // 0x7706e8: stp             x16, x1, [SP]
    // 0x7706ec: mov             lr, x0
    // 0x7706f0: ldr             lr, [x21, lr, lsl #3]
    // 0x7706f4: blr             lr
    // 0x7706f8: cmp             w0, NULL
    // 0x7706fc: b.eq            #0x7708f8
    // 0x770700: r2 = Null
    //     0x770700: mov             x2, NULL
    // 0x770704: r1 = Null
    //     0x770704: mov             x1, NULL
    // 0x770708: r4 = 60
    //     0x770708: movz            x4, #0x3c
    // 0x77070c: branchIfSmi(r0, 0x770718)
    //     0x77070c: tbz             w0, #0, #0x770718
    // 0x770710: r4 = LoadClassIdInstr(r0)
    //     0x770710: ldur            x4, [x0, #-1]
    //     0x770714: ubfx            x4, x4, #0xc, #0x14
    // 0x770718: cmp             x4, #0x18b
    // 0x77071c: b.eq            #0x770734
    // 0x770720: r8 = fVa
    //     0x770720: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770724: ldr             x8, [x8, #0xd48]
    // 0x770728: r3 = Null
    //     0x770728: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a278] Null
    //     0x77072c: ldr             x3, [x3, #0x278]
    // 0x770730: r0 = DefaultTypeTest()
    //     0x770730: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770734: ldur            x1, [fp, #-0x98]
    // 0x770738: r0 = LoadClassIdInstr(r1)
    //     0x770738: ldur            x0, [x1, #-1]
    //     0x77073c: ubfx            x0, x0, #0xc, #0x14
    // 0x770740: r16 = 4
    //     0x770740: movz            x16, #0x4
    // 0x770744: stp             x16, x1, [SP]
    // 0x770748: mov             lr, x0
    // 0x77074c: ldr             lr, [x21, lr, lsl #3]
    // 0x770750: blr             lr
    // 0x770754: cmp             w0, NULL
    // 0x770758: b.eq            #0x7708fc
    // 0x77075c: r2 = Null
    //     0x77075c: mov             x2, NULL
    // 0x770760: r1 = Null
    //     0x770760: mov             x1, NULL
    // 0x770764: r4 = 60
    //     0x770764: movz            x4, #0x3c
    // 0x770768: branchIfSmi(r0, 0x770774)
    //     0x770768: tbz             w0, #0, #0x770774
    // 0x77076c: r4 = LoadClassIdInstr(r0)
    //     0x77076c: ldur            x4, [x0, #-1]
    //     0x770770: ubfx            x4, x4, #0xc, #0x14
    // 0x770774: sub             x4, x4, #0x5e
    // 0x770778: cmp             x4, #1
    // 0x77077c: b.ls            #0x770790
    // 0x770780: r8 = String
    //     0x770780: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x770784: r3 = Null
    //     0x770784: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a288] Null
    //     0x770788: ldr             x3, [x3, #0x288]
    // 0x77078c: r0 = String()
    //     0x77078c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x770790: ldur            x1, [fp, #-0x98]
    // 0x770794: r0 = LoadClassIdInstr(r1)
    //     0x770794: ldur            x0, [x1, #-1]
    //     0x770798: ubfx            x0, x0, #0xc, #0x14
    // 0x77079c: r16 = 6
    //     0x77079c: movz            x16, #0x6
    // 0x7707a0: stp             x16, x1, [SP]
    // 0x7707a4: mov             lr, x0
    // 0x7707a8: ldr             lr, [x21, lr, lsl #3]
    // 0x7707ac: blr             lr
    // 0x7707b0: r2 = Null
    //     0x7707b0: mov             x2, NULL
    // 0x7707b4: r1 = Null
    //     0x7707b4: mov             x1, NULL
    // 0x7707b8: r4 = 60
    //     0x7707b8: movz            x4, #0x3c
    // 0x7707bc: branchIfSmi(r0, 0x7707c8)
    //     0x7707bc: tbz             w0, #0, #0x7707c8
    // 0x7707c0: r4 = LoadClassIdInstr(r0)
    //     0x7707c0: ldur            x4, [x0, #-1]
    //     0x7707c4: ubfx            x4, x4, #0xc, #0x14
    // 0x7707c8: sub             x4, x4, #0x5e
    // 0x7707cc: cmp             x4, #1
    // 0x7707d0: b.ls            #0x7707e4
    // 0x7707d4: r8 = String?
    //     0x7707d4: ldr             x8, [PP, #0x3738]  ; [pp+0x3738] Type: String?
    // 0x7707d8: r3 = Null
    //     0x7707d8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a298] Null
    //     0x7707dc: ldr             x3, [x3, #0x298]
    // 0x7707e0: r0 = String?()
    //     0x7707e0: bl              #0x746e44  ; IsType_String?_Stub
    // 0x7707e4: ldur            x0, [fp, #-0x98]
    // 0x7707e8: r1 = LoadClassIdInstr(r0)
    //     0x7707e8: ldur            x1, [x0, #-1]
    //     0x7707ec: ubfx            x1, x1, #0xc, #0x14
    // 0x7707f0: r16 = 8
    //     0x7707f0: movz            x16, #0x8
    // 0x7707f4: stp             x16, x0, [SP]
    // 0x7707f8: mov             x0, x1
    // 0x7707fc: mov             lr, x0
    // 0x770800: ldr             lr, [x21, lr, lsl #3]
    // 0x770804: blr             lr
    // 0x770808: cmp             w0, NULL
    // 0x77080c: b.eq            #0x770900
    // 0x770810: r2 = Null
    //     0x770810: mov             x2, NULL
    // 0x770814: r1 = Null
    //     0x770814: mov             x1, NULL
    // 0x770818: r4 = 60
    //     0x770818: movz            x4, #0x3c
    // 0x77081c: branchIfSmi(r0, 0x770828)
    //     0x77081c: tbz             w0, #0, #0x770828
    // 0x770820: r4 = LoadClassIdInstr(r0)
    //     0x770820: ldur            x4, [x0, #-1]
    //     0x770824: ubfx            x4, x4, #0xc, #0x14
    // 0x770828: sub             x4, x4, #0x5e
    // 0x77082c: cmp             x4, #1
    // 0x770830: b.ls            #0x770844
    // 0x770834: r8 = String
    //     0x770834: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x770838: r3 = Null
    //     0x770838: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2a8] Null
    //     0x77083c: ldr             x3, [x3, #0x2a8]
    // 0x770840: r0 = String()
    //     0x770840: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x770844: r16 = true
    //     0x770844: add             x16, NULL, #0x20  ; true
    // 0x770848: str             x16, [SP]
    // 0x77084c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x77084c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770850: ldr             x4, [x4, #0x870]
    // 0x770854: r0 = call 0x392d98
    //     0x770854: bl              #0x392d98
    // 0x770858: r0 = ReturnAsyncNotFuture()
    //     0x770858: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77085c: sub             SP, fp, #0xb0
    // 0x770860: r1 = 60
    //     0x770860: movz            x1, #0x3c
    // 0x770864: branchIfSmi(r0, 0x770870)
    //     0x770864: tbz             w0, #0, #0x770870
    // 0x770868: r1 = LoadClassIdInstr(r0)
    //     0x770868: ldur            x1, [x0, #-1]
    //     0x77086c: ubfx            x1, x1, #0xc, #0x14
    // 0x770870: cmp             x1, #0x5e5
    // 0x770874: b.ne            #0x77088c
    // 0x770878: str             x0, [SP]
    // 0x77087c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x77087c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770880: ldr             x4, [x4, #0x878]
    // 0x770884: r0 = call 0x392d98
    //     0x770884: bl              #0x392d98
    // 0x770888: r0 = ReturnAsyncNotFuture()
    //     0x770888: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77088c: r1 = 60
    //     0x77088c: movz            x1, #0x3c
    // 0x770890: branchIfSmi(r0, 0x77089c)
    //     0x770890: tbz             w0, #0, #0x77089c
    // 0x770894: r1 = LoadClassIdInstr(r0)
    //     0x770894: ldur            x1, [x0, #-1]
    //     0x770898: ubfx            x1, x1, #0xc, #0x14
    // 0x77089c: str             x0, [SP]
    // 0x7708a0: mov             x0, x1
    // 0x7708a4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7708a4: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7708a8: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7708a8: movz            x17, #0x3a5d
    //     0x7708ac: add             lr, x0, x17
    //     0x7708b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7708b4: blr             lr
    // 0x7708b8: stur            x0, [fp, #-0x90]
    // 0x7708bc: r0 = Mha()
    //     0x7708bc: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7708c0: mov             x1, x0
    // 0x7708c4: r0 = "error"
    //     0x7708c4: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7708c8: StoreField: r1->field_7 = r0
    //     0x7708c8: stur            w0, [x1, #7]
    // 0x7708cc: ldur            x0, [fp, #-0x90]
    // 0x7708d0: StoreField: r1->field_b = r0
    //     0x7708d0: stur            w0, [x1, #0xb]
    // 0x7708d4: str             x1, [SP]
    // 0x7708d8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7708d8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7708dc: ldr             x4, [x4, #0x878]
    // 0x7708e0: r0 = call 0x392d98
    //     0x7708e0: bl              #0x392d98
    // 0x7708e4: r0 = ReturnAsyncNotFuture()
    //     0x7708e4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7708e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7708e8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7708ec: b               #0x770624
    // 0x7708f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7708f0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7708f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7708f4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7708f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7708f8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7708fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7708fc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770900: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770900: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x770904, size: 0x2bc
    // 0x770904: EnterFrame
    //     0x770904: stp             fp, lr, [SP, #-0x10]!
    //     0x770908: mov             fp, SP
    // 0x77090c: AllocStack(0xc8)
    //     0x77090c: sub             SP, SP, #0xc8
    // 0x770910: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x770910: stur            NULL, [fp, #-8]
    //     0x770914: movz            x0, #0
    //     0x770918: add             x1, fp, w0, sxtw #2
    //     0x77091c: ldr             x1, [x1, #0x18]
    //     0x770920: add             x2, fp, w0, sxtw #2
    //     0x770924: ldr             x2, [x2, #0x10]
    //     0x770928: stur            x2, [fp, #-0x90]
    //     0x77092c: ldur            w3, [x1, #0x17]
    //     0x770930: add             x3, x3, HEAP, lsl #32
    //     0x770934: stur            x3, [fp, #-0x88]
    // 0x770938: CheckStackOverflow
    //     0x770938: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77093c: cmp             SP, x16
    //     0x770940: b.ls            #0x770ba8
    // 0x770944: InitAsync() -> Future<List<Object?>>
    //     0x770944: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x770948: ldr             x0, [x0, #0x1d0]
    //     0x77094c: bl              #0x74ada8  ; InitAsyncStub
    // 0x770950: ldur            x3, [fp, #-0x90]
    // 0x770954: cmp             w3, NULL
    // 0x770958: b.eq            #0x770bb0
    // 0x77095c: mov             x0, x3
    // 0x770960: r2 = Null
    //     0x770960: mov             x2, NULL
    // 0x770964: r1 = Null
    //     0x770964: mov             x1, NULL
    // 0x770968: r4 = 60
    //     0x770968: movz            x4, #0x3c
    // 0x77096c: branchIfSmi(r0, 0x770978)
    //     0x77096c: tbz             w0, #0, #0x770978
    // 0x770970: r4 = LoadClassIdInstr(r0)
    //     0x770970: ldur            x4, [x0, #-1]
    //     0x770974: ubfx            x4, x4, #0xc, #0x14
    // 0x770978: sub             x4, x4, #0x5a
    // 0x77097c: cmp             x4, #2
    // 0x770980: b.ls            #0x770994
    // 0x770984: r8 = List<Object?>
    //     0x770984: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770988: r3 = Null
    //     0x770988: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2b8] Null
    //     0x77098c: ldr             x3, [x3, #0x2b8]
    // 0x770990: r0 = List<Object?>()
    //     0x770990: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770994: ldur            x1, [fp, #-0x90]
    // 0x770998: r0 = LoadClassIdInstr(r1)
    //     0x770998: ldur            x0, [x1, #-1]
    //     0x77099c: ubfx            x0, x0, #0xc, #0x14
    // 0x7709a0: stp             xzr, x1, [SP]
    // 0x7709a4: mov             lr, x0
    // 0x7709a8: ldr             lr, [x21, lr, lsl #3]
    // 0x7709ac: blr             lr
    // 0x7709b0: mov             x3, x0
    // 0x7709b4: stur            x3, [fp, #-0x98]
    // 0x7709b8: cmp             w3, NULL
    // 0x7709bc: b.eq            #0x770bb4
    // 0x7709c0: mov             x0, x3
    // 0x7709c4: r2 = Null
    //     0x7709c4: mov             x2, NULL
    // 0x7709c8: r1 = Null
    //     0x7709c8: mov             x1, NULL
    // 0x7709cc: r4 = 60
    //     0x7709cc: movz            x4, #0x3c
    // 0x7709d0: branchIfSmi(r0, 0x7709dc)
    //     0x7709d0: tbz             w0, #0, #0x7709dc
    // 0x7709d4: r4 = LoadClassIdInstr(r0)
    //     0x7709d4: ldur            x4, [x0, #-1]
    //     0x7709d8: ubfx            x4, x4, #0xc, #0x14
    // 0x7709dc: cmp             x4, #0x187
    // 0x7709e0: b.eq            #0x7709f8
    // 0x7709e4: r8 = iVa
    //     0x7709e4: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x7709e8: ldr             x8, [x8, #0x1b0]
    // 0x7709ec: r3 = Null
    //     0x7709ec: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2c8] Null
    //     0x7709f0: ldr             x3, [x3, #0x2c8]
    // 0x7709f4: r0 = DefaultTypeTest()
    //     0x7709f4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7709f8: ldur            x1, [fp, #-0x90]
    // 0x7709fc: r0 = LoadClassIdInstr(r1)
    //     0x7709fc: ldur            x0, [x1, #-1]
    //     0x770a00: ubfx            x0, x0, #0xc, #0x14
    // 0x770a04: r16 = 2
    //     0x770a04: movz            x16, #0x2
    // 0x770a08: stp             x16, x1, [SP]
    // 0x770a0c: mov             lr, x0
    // 0x770a10: ldr             lr, [x21, lr, lsl #3]
    // 0x770a14: blr             lr
    // 0x770a18: mov             x3, x0
    // 0x770a1c: stur            x3, [fp, #-0xa0]
    // 0x770a20: cmp             w3, NULL
    // 0x770a24: b.eq            #0x770bb8
    // 0x770a28: mov             x0, x3
    // 0x770a2c: r2 = Null
    //     0x770a2c: mov             x2, NULL
    // 0x770a30: r1 = Null
    //     0x770a30: mov             x1, NULL
    // 0x770a34: r4 = 60
    //     0x770a34: movz            x4, #0x3c
    // 0x770a38: branchIfSmi(r0, 0x770a44)
    //     0x770a38: tbz             w0, #0, #0x770a44
    // 0x770a3c: r4 = LoadClassIdInstr(r0)
    //     0x770a3c: ldur            x4, [x0, #-1]
    //     0x770a40: ubfx            x4, x4, #0xc, #0x14
    // 0x770a44: cmp             x4, #0x18b
    // 0x770a48: b.eq            #0x770a60
    // 0x770a4c: r8 = fVa
    //     0x770a4c: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770a50: ldr             x8, [x8, #0xd48]
    // 0x770a54: r3 = Null
    //     0x770a54: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2d8] Null
    //     0x770a58: ldr             x3, [x3, #0x2d8]
    // 0x770a5c: r0 = DefaultTypeTest()
    //     0x770a5c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770a60: ldur            x0, [fp, #-0x90]
    // 0x770a64: r1 = LoadClassIdInstr(r0)
    //     0x770a64: ldur            x1, [x0, #-1]
    //     0x770a68: ubfx            x1, x1, #0xc, #0x14
    // 0x770a6c: r16 = 4
    //     0x770a6c: movz            x16, #0x4
    // 0x770a70: stp             x16, x0, [SP]
    // 0x770a74: mov             x0, x1
    // 0x770a78: mov             lr, x0
    // 0x770a7c: ldr             lr, [x21, lr, lsl #3]
    // 0x770a80: blr             lr
    // 0x770a84: mov             x3, x0
    // 0x770a88: stur            x3, [fp, #-0x90]
    // 0x770a8c: cmp             w3, NULL
    // 0x770a90: b.eq            #0x770bbc
    // 0x770a94: mov             x0, x3
    // 0x770a98: r2 = Null
    //     0x770a98: mov             x2, NULL
    // 0x770a9c: r1 = Null
    //     0x770a9c: mov             x1, NULL
    // 0x770aa0: r4 = 60
    //     0x770aa0: movz            x4, #0x3c
    // 0x770aa4: branchIfSmi(r0, 0x770ab0)
    //     0x770aa4: tbz             w0, #0, #0x770ab0
    // 0x770aa8: r4 = LoadClassIdInstr(r0)
    //     0x770aa8: ldur            x4, [x0, #-1]
    //     0x770aac: ubfx            x4, x4, #0xc, #0x14
    // 0x770ab0: cmp             x4, #0x17c
    // 0x770ab4: b.eq            #0x770acc
    // 0x770ab8: r8 = tVa
    //     0x770ab8: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a2e8] Type: tVa
    //     0x770abc: ldr             x8, [x8, #0x2e8]
    // 0x770ac0: r3 = Null
    //     0x770ac0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2f0] Null
    //     0x770ac4: ldr             x3, [x3, #0x2f0]
    // 0x770ac8: r0 = DefaultTypeTest()
    //     0x770ac8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770acc: ldur            x1, [fp, #-0x98]
    // 0x770ad0: LoadField: r2 = r1->field_43
    //     0x770ad0: ldur            w2, [x1, #0x43]
    // 0x770ad4: DecompressPointer r2
    //     0x770ad4: add             x2, x2, HEAP, lsl #32
    // 0x770ad8: stur            x2, [fp, #-0xa8]
    // 0x770adc: cmp             w2, NULL
    // 0x770ae0: b.eq            #0x770b04
    // 0x770ae4: stp             x1, x2, [SP, #0x10]
    // 0x770ae8: ldur            x16, [fp, #-0xa0]
    // 0x770aec: ldur            lr, [fp, #-0x90]
    // 0x770af0: stp             lr, x16, [SP]
    // 0x770af4: mov             x0, x2
    // 0x770af8: ClosureCall
    //     0x770af8: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x770afc: ldur            x2, [x0, #0x1f]
    //     0x770b00: blr             x2
    // 0x770b04: r16 = true
    //     0x770b04: add             x16, NULL, #0x20  ; true
    // 0x770b08: str             x16, [SP]
    // 0x770b0c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x770b0c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770b10: ldr             x4, [x4, #0x870]
    // 0x770b14: r0 = call 0x392d98
    //     0x770b14: bl              #0x392d98
    // 0x770b18: r0 = ReturnAsyncNotFuture()
    //     0x770b18: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770b1c: sub             SP, fp, #0xc8
    // 0x770b20: r1 = 60
    //     0x770b20: movz            x1, #0x3c
    // 0x770b24: branchIfSmi(r0, 0x770b30)
    //     0x770b24: tbz             w0, #0, #0x770b30
    // 0x770b28: r1 = LoadClassIdInstr(r0)
    //     0x770b28: ldur            x1, [x0, #-1]
    //     0x770b2c: ubfx            x1, x1, #0xc, #0x14
    // 0x770b30: cmp             x1, #0x5e5
    // 0x770b34: b.ne            #0x770b4c
    // 0x770b38: str             x0, [SP]
    // 0x770b3c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x770b3c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770b40: ldr             x4, [x4, #0x878]
    // 0x770b44: r0 = call 0x392d98
    //     0x770b44: bl              #0x392d98
    // 0x770b48: r0 = ReturnAsyncNotFuture()
    //     0x770b48: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770b4c: r1 = 60
    //     0x770b4c: movz            x1, #0x3c
    // 0x770b50: branchIfSmi(r0, 0x770b5c)
    //     0x770b50: tbz             w0, #0, #0x770b5c
    // 0x770b54: r1 = LoadClassIdInstr(r0)
    //     0x770b54: ldur            x1, [x0, #-1]
    //     0x770b58: ubfx            x1, x1, #0xc, #0x14
    // 0x770b5c: str             x0, [SP]
    // 0x770b60: mov             x0, x1
    // 0x770b64: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x770b64: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x770b68: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x770b68: movz            x17, #0x3a5d
    //     0x770b6c: add             lr, x0, x17
    //     0x770b70: ldr             lr, [x21, lr, lsl #3]
    //     0x770b74: blr             lr
    // 0x770b78: stur            x0, [fp, #-0x88]
    // 0x770b7c: r0 = Mha()
    //     0x770b7c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x770b80: mov             x1, x0
    // 0x770b84: r0 = "error"
    //     0x770b84: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x770b88: StoreField: r1->field_7 = r0
    //     0x770b88: stur            w0, [x1, #7]
    // 0x770b8c: ldur            x0, [fp, #-0x88]
    // 0x770b90: StoreField: r1->field_b = r0
    //     0x770b90: stur            w0, [x1, #0xb]
    // 0x770b94: str             x1, [SP]
    // 0x770b98: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x770b98: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770b9c: ldr             x4, [x4, #0x878]
    // 0x770ba0: r0 = call 0x392d98
    //     0x770ba0: bl              #0x392d98
    // 0x770ba4: r0 = ReturnAsyncNotFuture()
    //     0x770ba4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770ba8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x770ba8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x770bac: b               #0x770944
    // 0x770bb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770bb0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770bb4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770bb4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770bb8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770bb8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770bbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770bbc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x770bc0, size: 0x26c
    // 0x770bc0: EnterFrame
    //     0x770bc0: stp             fp, lr, [SP, #-0x10]!
    //     0x770bc4: mov             fp, SP
    // 0x770bc8: AllocStack(0xa0)
    //     0x770bc8: sub             SP, SP, #0xa0
    // 0x770bcc: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x770bcc: stur            NULL, [fp, #-8]
    //     0x770bd0: movz            x0, #0
    //     0x770bd4: add             x1, fp, w0, sxtw #2
    //     0x770bd8: ldr             x1, [x1, #0x18]
    //     0x770bdc: add             x2, fp, w0, sxtw #2
    //     0x770be0: ldr             x2, [x2, #0x10]
    //     0x770be4: stur            x2, [fp, #-0x88]
    //     0x770be8: ldur            w3, [x1, #0x17]
    //     0x770bec: add             x3, x3, HEAP, lsl #32
    //     0x770bf0: stur            x3, [fp, #-0x80]
    // 0x770bf4: CheckStackOverflow
    //     0x770bf4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x770bf8: cmp             SP, x16
    //     0x770bfc: b.ls            #0x770e14
    // 0x770c00: InitAsync() -> Future<List<Object?>>
    //     0x770c00: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x770c04: ldr             x0, [x0, #0x1d0]
    //     0x770c08: bl              #0x74ada8  ; InitAsyncStub
    // 0x770c0c: ldur            x3, [fp, #-0x88]
    // 0x770c10: cmp             w3, NULL
    // 0x770c14: b.eq            #0x770e1c
    // 0x770c18: mov             x0, x3
    // 0x770c1c: r2 = Null
    //     0x770c1c: mov             x2, NULL
    // 0x770c20: r1 = Null
    //     0x770c20: mov             x1, NULL
    // 0x770c24: r4 = 60
    //     0x770c24: movz            x4, #0x3c
    // 0x770c28: branchIfSmi(r0, 0x770c34)
    //     0x770c28: tbz             w0, #0, #0x770c34
    // 0x770c2c: r4 = LoadClassIdInstr(r0)
    //     0x770c2c: ldur            x4, [x0, #-1]
    //     0x770c30: ubfx            x4, x4, #0xc, #0x14
    // 0x770c34: sub             x4, x4, #0x5a
    // 0x770c38: cmp             x4, #2
    // 0x770c3c: b.ls            #0x770c50
    // 0x770c40: r8 = List<Object?>
    //     0x770c40: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770c44: r3 = Null
    //     0x770c44: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a300] Null
    //     0x770c48: ldr             x3, [x3, #0x300]
    // 0x770c4c: r0 = List<Object?>()
    //     0x770c4c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770c50: ldur            x1, [fp, #-0x88]
    // 0x770c54: r0 = LoadClassIdInstr(r1)
    //     0x770c54: ldur            x0, [x1, #-1]
    //     0x770c58: ubfx            x0, x0, #0xc, #0x14
    // 0x770c5c: stp             xzr, x1, [SP]
    // 0x770c60: mov             lr, x0
    // 0x770c64: ldr             lr, [x21, lr, lsl #3]
    // 0x770c68: blr             lr
    // 0x770c6c: mov             x3, x0
    // 0x770c70: stur            x3, [fp, #-0x90]
    // 0x770c74: cmp             w3, NULL
    // 0x770c78: b.eq            #0x770e20
    // 0x770c7c: mov             x0, x3
    // 0x770c80: r2 = Null
    //     0x770c80: mov             x2, NULL
    // 0x770c84: r1 = Null
    //     0x770c84: mov             x1, NULL
    // 0x770c88: r4 = 60
    //     0x770c88: movz            x4, #0x3c
    // 0x770c8c: branchIfSmi(r0, 0x770c98)
    //     0x770c8c: tbz             w0, #0, #0x770c98
    // 0x770c90: r4 = LoadClassIdInstr(r0)
    //     0x770c90: ldur            x4, [x0, #-1]
    //     0x770c94: ubfx            x4, x4, #0xc, #0x14
    // 0x770c98: cmp             x4, #0x187
    // 0x770c9c: b.eq            #0x770cb4
    // 0x770ca0: r8 = iVa
    //     0x770ca0: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x770ca4: ldr             x8, [x8, #0x1b0]
    // 0x770ca8: r3 = Null
    //     0x770ca8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a310] Null
    //     0x770cac: ldr             x3, [x3, #0x310]
    // 0x770cb0: r0 = DefaultTypeTest()
    //     0x770cb0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770cb4: ldur            x1, [fp, #-0x88]
    // 0x770cb8: r0 = LoadClassIdInstr(r1)
    //     0x770cb8: ldur            x0, [x1, #-1]
    //     0x770cbc: ubfx            x0, x0, #0xc, #0x14
    // 0x770cc0: r16 = 2
    //     0x770cc0: movz            x16, #0x2
    // 0x770cc4: stp             x16, x1, [SP]
    // 0x770cc8: mov             lr, x0
    // 0x770ccc: ldr             lr, [x21, lr, lsl #3]
    // 0x770cd0: blr             lr
    // 0x770cd4: cmp             w0, NULL
    // 0x770cd8: b.eq            #0x770e24
    // 0x770cdc: r2 = Null
    //     0x770cdc: mov             x2, NULL
    // 0x770ce0: r1 = Null
    //     0x770ce0: mov             x1, NULL
    // 0x770ce4: r4 = 60
    //     0x770ce4: movz            x4, #0x3c
    // 0x770ce8: branchIfSmi(r0, 0x770cf4)
    //     0x770ce8: tbz             w0, #0, #0x770cf4
    // 0x770cec: r4 = LoadClassIdInstr(r0)
    //     0x770cec: ldur            x4, [x0, #-1]
    //     0x770cf0: ubfx            x4, x4, #0xc, #0x14
    // 0x770cf4: cmp             x4, #0x18b
    // 0x770cf8: b.eq            #0x770d10
    // 0x770cfc: r8 = fVa
    //     0x770cfc: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770d00: ldr             x8, [x8, #0xd48]
    // 0x770d04: r3 = Null
    //     0x770d04: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a320] Null
    //     0x770d08: ldr             x3, [x3, #0x320]
    // 0x770d0c: r0 = DefaultTypeTest()
    //     0x770d0c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770d10: ldur            x0, [fp, #-0x88]
    // 0x770d14: r1 = LoadClassIdInstr(r0)
    //     0x770d14: ldur            x1, [x0, #-1]
    //     0x770d18: ubfx            x1, x1, #0xc, #0x14
    // 0x770d1c: r16 = 4
    //     0x770d1c: movz            x16, #0x4
    // 0x770d20: stp             x16, x0, [SP]
    // 0x770d24: mov             x0, x1
    // 0x770d28: mov             lr, x0
    // 0x770d2c: ldr             lr, [x21, lr, lsl #3]
    // 0x770d30: blr             lr
    // 0x770d34: cmp             w0, NULL
    // 0x770d38: b.eq            #0x770e28
    // 0x770d3c: r2 = Null
    //     0x770d3c: mov             x2, NULL
    // 0x770d40: r1 = Null
    //     0x770d40: mov             x1, NULL
    // 0x770d44: r4 = 60
    //     0x770d44: movz            x4, #0x3c
    // 0x770d48: branchIfSmi(r0, 0x770d54)
    //     0x770d48: tbz             w0, #0, #0x770d54
    // 0x770d4c: r4 = LoadClassIdInstr(r0)
    //     0x770d4c: ldur            x4, [x0, #-1]
    //     0x770d50: ubfx            x4, x4, #0xc, #0x14
    // 0x770d54: sub             x4, x4, #0x5e
    // 0x770d58: cmp             x4, #1
    // 0x770d5c: b.ls            #0x770d70
    // 0x770d60: r8 = String
    //     0x770d60: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x770d64: r3 = Null
    //     0x770d64: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a330] Null
    //     0x770d68: ldr             x3, [x3, #0x330]
    // 0x770d6c: r0 = String()
    //     0x770d6c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x770d70: r16 = true
    //     0x770d70: add             x16, NULL, #0x20  ; true
    // 0x770d74: str             x16, [SP]
    // 0x770d78: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x770d78: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770d7c: ldr             x4, [x4, #0x870]
    // 0x770d80: r0 = call 0x392d98
    //     0x770d80: bl              #0x392d98
    // 0x770d84: r0 = ReturnAsyncNotFuture()
    //     0x770d84: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770d88: sub             SP, fp, #0xa0
    // 0x770d8c: r1 = 60
    //     0x770d8c: movz            x1, #0x3c
    // 0x770d90: branchIfSmi(r0, 0x770d9c)
    //     0x770d90: tbz             w0, #0, #0x770d9c
    // 0x770d94: r1 = LoadClassIdInstr(r0)
    //     0x770d94: ldur            x1, [x0, #-1]
    //     0x770d98: ubfx            x1, x1, #0xc, #0x14
    // 0x770d9c: cmp             x1, #0x5e5
    // 0x770da0: b.ne            #0x770db8
    // 0x770da4: str             x0, [SP]
    // 0x770da8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x770da8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770dac: ldr             x4, [x4, #0x878]
    // 0x770db0: r0 = call 0x392d98
    //     0x770db0: bl              #0x392d98
    // 0x770db4: r0 = ReturnAsyncNotFuture()
    //     0x770db4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770db8: r1 = 60
    //     0x770db8: movz            x1, #0x3c
    // 0x770dbc: branchIfSmi(r0, 0x770dc8)
    //     0x770dbc: tbz             w0, #0, #0x770dc8
    // 0x770dc0: r1 = LoadClassIdInstr(r0)
    //     0x770dc0: ldur            x1, [x0, #-1]
    //     0x770dc4: ubfx            x1, x1, #0xc, #0x14
    // 0x770dc8: str             x0, [SP]
    // 0x770dcc: mov             x0, x1
    // 0x770dd0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x770dd0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x770dd4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x770dd4: movz            x17, #0x3a5d
    //     0x770dd8: add             lr, x0, x17
    //     0x770ddc: ldr             lr, [x21, lr, lsl #3]
    //     0x770de0: blr             lr
    // 0x770de4: stur            x0, [fp, #-0x80]
    // 0x770de8: r0 = Mha()
    //     0x770de8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x770dec: mov             x1, x0
    // 0x770df0: r0 = "error"
    //     0x770df0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x770df4: StoreField: r1->field_7 = r0
    //     0x770df4: stur            w0, [x1, #7]
    // 0x770df8: ldur            x0, [fp, #-0x80]
    // 0x770dfc: StoreField: r1->field_b = r0
    //     0x770dfc: stur            w0, [x1, #0xb]
    // 0x770e00: str             x1, [SP]
    // 0x770e04: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x770e04: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x770e08: ldr             x4, [x4, #0x878]
    // 0x770e0c: r0 = call 0x392d98
    //     0x770e0c: bl              #0x392d98
    // 0x770e10: r0 = ReturnAsyncNotFuture()
    //     0x770e10: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770e14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x770e14: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x770e18: b               #0x770c00
    // 0x770e1c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770e1c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770e20: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770e20: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770e24: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770e24: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x770e28: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x770e28: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x770e2c, size: 0x26c
    // 0x770e2c: EnterFrame
    //     0x770e2c: stp             fp, lr, [SP, #-0x10]!
    //     0x770e30: mov             fp, SP
    // 0x770e34: AllocStack(0xa0)
    //     0x770e34: sub             SP, SP, #0xa0
    // 0x770e38: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x770e38: stur            NULL, [fp, #-8]
    //     0x770e3c: movz            x0, #0
    //     0x770e40: add             x1, fp, w0, sxtw #2
    //     0x770e44: ldr             x1, [x1, #0x18]
    //     0x770e48: add             x2, fp, w0, sxtw #2
    //     0x770e4c: ldr             x2, [x2, #0x10]
    //     0x770e50: stur            x2, [fp, #-0x88]
    //     0x770e54: ldur            w3, [x1, #0x17]
    //     0x770e58: add             x3, x3, HEAP, lsl #32
    //     0x770e5c: stur            x3, [fp, #-0x80]
    // 0x770e60: CheckStackOverflow
    //     0x770e60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x770e64: cmp             SP, x16
    //     0x770e68: b.ls            #0x771080
    // 0x770e6c: InitAsync() -> Future<List<Object?>>
    //     0x770e6c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x770e70: ldr             x0, [x0, #0x1d0]
    //     0x770e74: bl              #0x74ada8  ; InitAsyncStub
    // 0x770e78: ldur            x3, [fp, #-0x88]
    // 0x770e7c: cmp             w3, NULL
    // 0x770e80: b.eq            #0x771088
    // 0x770e84: mov             x0, x3
    // 0x770e88: r2 = Null
    //     0x770e88: mov             x2, NULL
    // 0x770e8c: r1 = Null
    //     0x770e8c: mov             x1, NULL
    // 0x770e90: r4 = 60
    //     0x770e90: movz            x4, #0x3c
    // 0x770e94: branchIfSmi(r0, 0x770ea0)
    //     0x770e94: tbz             w0, #0, #0x770ea0
    // 0x770e98: r4 = LoadClassIdInstr(r0)
    //     0x770e98: ldur            x4, [x0, #-1]
    //     0x770e9c: ubfx            x4, x4, #0xc, #0x14
    // 0x770ea0: sub             x4, x4, #0x5a
    // 0x770ea4: cmp             x4, #2
    // 0x770ea8: b.ls            #0x770ebc
    // 0x770eac: r8 = List<Object?>
    //     0x770eac: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x770eb0: r3 = Null
    //     0x770eb0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a340] Null
    //     0x770eb4: ldr             x3, [x3, #0x340]
    // 0x770eb8: r0 = List<Object?>()
    //     0x770eb8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x770ebc: ldur            x1, [fp, #-0x88]
    // 0x770ec0: r0 = LoadClassIdInstr(r1)
    //     0x770ec0: ldur            x0, [x1, #-1]
    //     0x770ec4: ubfx            x0, x0, #0xc, #0x14
    // 0x770ec8: stp             xzr, x1, [SP]
    // 0x770ecc: mov             lr, x0
    // 0x770ed0: ldr             lr, [x21, lr, lsl #3]
    // 0x770ed4: blr             lr
    // 0x770ed8: mov             x3, x0
    // 0x770edc: stur            x3, [fp, #-0x90]
    // 0x770ee0: cmp             w3, NULL
    // 0x770ee4: b.eq            #0x77108c
    // 0x770ee8: mov             x0, x3
    // 0x770eec: r2 = Null
    //     0x770eec: mov             x2, NULL
    // 0x770ef0: r1 = Null
    //     0x770ef0: mov             x1, NULL
    // 0x770ef4: r4 = 60
    //     0x770ef4: movz            x4, #0x3c
    // 0x770ef8: branchIfSmi(r0, 0x770f04)
    //     0x770ef8: tbz             w0, #0, #0x770f04
    // 0x770efc: r4 = LoadClassIdInstr(r0)
    //     0x770efc: ldur            x4, [x0, #-1]
    //     0x770f00: ubfx            x4, x4, #0xc, #0x14
    // 0x770f04: cmp             x4, #0x187
    // 0x770f08: b.eq            #0x770f20
    // 0x770f0c: r8 = iVa
    //     0x770f0c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x770f10: ldr             x8, [x8, #0x1b0]
    // 0x770f14: r3 = Null
    //     0x770f14: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a350] Null
    //     0x770f18: ldr             x3, [x3, #0x350]
    // 0x770f1c: r0 = DefaultTypeTest()
    //     0x770f1c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770f20: ldur            x1, [fp, #-0x88]
    // 0x770f24: r0 = LoadClassIdInstr(r1)
    //     0x770f24: ldur            x0, [x1, #-1]
    //     0x770f28: ubfx            x0, x0, #0xc, #0x14
    // 0x770f2c: r16 = 2
    //     0x770f2c: movz            x16, #0x2
    // 0x770f30: stp             x16, x1, [SP]
    // 0x770f34: mov             lr, x0
    // 0x770f38: ldr             lr, [x21, lr, lsl #3]
    // 0x770f3c: blr             lr
    // 0x770f40: cmp             w0, NULL
    // 0x770f44: b.eq            #0x771090
    // 0x770f48: r2 = Null
    //     0x770f48: mov             x2, NULL
    // 0x770f4c: r1 = Null
    //     0x770f4c: mov             x1, NULL
    // 0x770f50: r4 = 60
    //     0x770f50: movz            x4, #0x3c
    // 0x770f54: branchIfSmi(r0, 0x770f60)
    //     0x770f54: tbz             w0, #0, #0x770f60
    // 0x770f58: r4 = LoadClassIdInstr(r0)
    //     0x770f58: ldur            x4, [x0, #-1]
    //     0x770f5c: ubfx            x4, x4, #0xc, #0x14
    // 0x770f60: cmp             x4, #0x18b
    // 0x770f64: b.eq            #0x770f7c
    // 0x770f68: r8 = fVa
    //     0x770f68: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x770f6c: ldr             x8, [x8, #0xd48]
    // 0x770f70: r3 = Null
    //     0x770f70: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a360] Null
    //     0x770f74: ldr             x3, [x3, #0x360]
    // 0x770f78: r0 = DefaultTypeTest()
    //     0x770f78: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x770f7c: ldur            x0, [fp, #-0x88]
    // 0x770f80: r1 = LoadClassIdInstr(r0)
    //     0x770f80: ldur            x1, [x0, #-1]
    //     0x770f84: ubfx            x1, x1, #0xc, #0x14
    // 0x770f88: r16 = 4
    //     0x770f88: movz            x16, #0x4
    // 0x770f8c: stp             x16, x0, [SP]
    // 0x770f90: mov             x0, x1
    // 0x770f94: mov             lr, x0
    // 0x770f98: ldr             lr, [x21, lr, lsl #3]
    // 0x770f9c: blr             lr
    // 0x770fa0: cmp             w0, NULL
    // 0x770fa4: b.eq            #0x771094
    // 0x770fa8: r2 = Null
    //     0x770fa8: mov             x2, NULL
    // 0x770fac: r1 = Null
    //     0x770fac: mov             x1, NULL
    // 0x770fb0: r4 = 60
    //     0x770fb0: movz            x4, #0x3c
    // 0x770fb4: branchIfSmi(r0, 0x770fc0)
    //     0x770fb4: tbz             w0, #0, #0x770fc0
    // 0x770fb8: r4 = LoadClassIdInstr(r0)
    //     0x770fb8: ldur            x4, [x0, #-1]
    //     0x770fbc: ubfx            x4, x4, #0xc, #0x14
    // 0x770fc0: sub             x4, x4, #0x5e
    // 0x770fc4: cmp             x4, #1
    // 0x770fc8: b.ls            #0x770fdc
    // 0x770fcc: r8 = String
    //     0x770fcc: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x770fd0: r3 = Null
    //     0x770fd0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a370] Null
    //     0x770fd4: ldr             x3, [x3, #0x370]
    // 0x770fd8: r0 = String()
    //     0x770fd8: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x770fdc: r16 = true
    //     0x770fdc: add             x16, NULL, #0x20  ; true
    // 0x770fe0: str             x16, [SP]
    // 0x770fe4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x770fe4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x770fe8: ldr             x4, [x4, #0x870]
    // 0x770fec: r0 = call 0x392d98
    //     0x770fec: bl              #0x392d98
    // 0x770ff0: r0 = ReturnAsyncNotFuture()
    //     0x770ff0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x770ff4: sub             SP, fp, #0xa0
    // 0x770ff8: r1 = 60
    //     0x770ff8: movz            x1, #0x3c
    // 0x770ffc: branchIfSmi(r0, 0x771008)
    //     0x770ffc: tbz             w0, #0, #0x771008
    // 0x771000: r1 = LoadClassIdInstr(r0)
    //     0x771000: ldur            x1, [x0, #-1]
    //     0x771004: ubfx            x1, x1, #0xc, #0x14
    // 0x771008: cmp             x1, #0x5e5
    // 0x77100c: b.ne            #0x771024
    // 0x771010: str             x0, [SP]
    // 0x771014: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771014: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771018: ldr             x4, [x4, #0x878]
    // 0x77101c: r0 = call 0x392d98
    //     0x77101c: bl              #0x392d98
    // 0x771020: r0 = ReturnAsyncNotFuture()
    //     0x771020: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771024: r1 = 60
    //     0x771024: movz            x1, #0x3c
    // 0x771028: branchIfSmi(r0, 0x771034)
    //     0x771028: tbz             w0, #0, #0x771034
    // 0x77102c: r1 = LoadClassIdInstr(r0)
    //     0x77102c: ldur            x1, [x0, #-1]
    //     0x771030: ubfx            x1, x1, #0xc, #0x14
    // 0x771034: str             x0, [SP]
    // 0x771038: mov             x0, x1
    // 0x77103c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x77103c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x771040: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x771040: movz            x17, #0x3a5d
    //     0x771044: add             lr, x0, x17
    //     0x771048: ldr             lr, [x21, lr, lsl #3]
    //     0x77104c: blr             lr
    // 0x771050: stur            x0, [fp, #-0x80]
    // 0x771054: r0 = Mha()
    //     0x771054: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771058: mov             x1, x0
    // 0x77105c: r0 = "error"
    //     0x77105c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x771060: StoreField: r1->field_7 = r0
    //     0x771060: stur            w0, [x1, #7]
    // 0x771064: ldur            x0, [fp, #-0x80]
    // 0x771068: StoreField: r1->field_b = r0
    //     0x771068: stur            w0, [x1, #0xb]
    // 0x77106c: str             x1, [SP]
    // 0x771070: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771070: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771074: ldr             x4, [x4, #0x878]
    // 0x771078: r0 = call 0x392d98
    //     0x771078: bl              #0x392d98
    // 0x77107c: r0 = ReturnAsyncNotFuture()
    //     0x77107c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771080: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x771080: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x771084: b               #0x770e6c
    // 0x771088: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771088: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77108c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77108c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771090: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771090: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771094: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771094: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x771098, size: 0x330
    // 0x771098: EnterFrame
    //     0x771098: stp             fp, lr, [SP, #-0x10]!
    //     0x77109c: mov             fp, SP
    // 0x7710a0: AllocStack(0xe0)
    //     0x7710a0: sub             SP, SP, #0xe0
    // 0x7710a4: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x7710a4: stur            NULL, [fp, #-8]
    //     0x7710a8: movz            x0, #0
    //     0x7710ac: add             x1, fp, w0, sxtw #2
    //     0x7710b0: ldr             x1, [x1, #0x18]
    //     0x7710b4: add             x2, fp, w0, sxtw #2
    //     0x7710b8: ldr             x2, [x2, #0x10]
    //     0x7710bc: stur            x2, [fp, #-0x98]
    //     0x7710c0: ldur            w3, [x1, #0x17]
    //     0x7710c4: add             x3, x3, HEAP, lsl #32
    //     0x7710c8: stur            x3, [fp, #-0x90]
    // 0x7710cc: CheckStackOverflow
    //     0x7710cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7710d0: cmp             SP, x16
    //     0x7710d4: b.ls            #0x7713ac
    // 0x7710d8: InitAsync() -> Future<List<Object?>>
    //     0x7710d8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7710dc: ldr             x0, [x0, #0x1d0]
    //     0x7710e0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7710e4: ldur            x3, [fp, #-0x98]
    // 0x7710e8: cmp             w3, NULL
    // 0x7710ec: b.eq            #0x7713b4
    // 0x7710f0: mov             x0, x3
    // 0x7710f4: r2 = Null
    //     0x7710f4: mov             x2, NULL
    // 0x7710f8: r1 = Null
    //     0x7710f8: mov             x1, NULL
    // 0x7710fc: r4 = 60
    //     0x7710fc: movz            x4, #0x3c
    // 0x771100: branchIfSmi(r0, 0x77110c)
    //     0x771100: tbz             w0, #0, #0x77110c
    // 0x771104: r4 = LoadClassIdInstr(r0)
    //     0x771104: ldur            x4, [x0, #-1]
    //     0x771108: ubfx            x4, x4, #0xc, #0x14
    // 0x77110c: sub             x4, x4, #0x5a
    // 0x771110: cmp             x4, #2
    // 0x771114: b.ls            #0x771128
    // 0x771118: r8 = List<Object?>
    //     0x771118: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x77111c: r3 = Null
    //     0x77111c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a380] Null
    //     0x771120: ldr             x3, [x3, #0x380]
    // 0x771124: r0 = List<Object?>()
    //     0x771124: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x771128: ldur            x1, [fp, #-0x98]
    // 0x77112c: r0 = LoadClassIdInstr(r1)
    //     0x77112c: ldur            x0, [x1, #-1]
    //     0x771130: ubfx            x0, x0, #0xc, #0x14
    // 0x771134: stp             xzr, x1, [SP]
    // 0x771138: mov             lr, x0
    // 0x77113c: ldr             lr, [x21, lr, lsl #3]
    // 0x771140: blr             lr
    // 0x771144: mov             x3, x0
    // 0x771148: stur            x3, [fp, #-0xa0]
    // 0x77114c: cmp             w3, NULL
    // 0x771150: b.eq            #0x7713b8
    // 0x771154: mov             x0, x3
    // 0x771158: r2 = Null
    //     0x771158: mov             x2, NULL
    // 0x77115c: r1 = Null
    //     0x77115c: mov             x1, NULL
    // 0x771160: r4 = 60
    //     0x771160: movz            x4, #0x3c
    // 0x771164: branchIfSmi(r0, 0x771170)
    //     0x771164: tbz             w0, #0, #0x771170
    // 0x771168: r4 = LoadClassIdInstr(r0)
    //     0x771168: ldur            x4, [x0, #-1]
    //     0x77116c: ubfx            x4, x4, #0xc, #0x14
    // 0x771170: cmp             x4, #0x187
    // 0x771174: b.eq            #0x77118c
    // 0x771178: r8 = iVa
    //     0x771178: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x77117c: ldr             x8, [x8, #0x1b0]
    // 0x771180: r3 = Null
    //     0x771180: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a390] Null
    //     0x771184: ldr             x3, [x3, #0x390]
    // 0x771188: r0 = DefaultTypeTest()
    //     0x771188: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77118c: ldur            x1, [fp, #-0x98]
    // 0x771190: r0 = LoadClassIdInstr(r1)
    //     0x771190: ldur            x0, [x1, #-1]
    //     0x771194: ubfx            x0, x0, #0xc, #0x14
    // 0x771198: r16 = 2
    //     0x771198: movz            x16, #0x2
    // 0x77119c: stp             x16, x1, [SP]
    // 0x7711a0: mov             lr, x0
    // 0x7711a4: ldr             lr, [x21, lr, lsl #3]
    // 0x7711a8: blr             lr
    // 0x7711ac: mov             x3, x0
    // 0x7711b0: stur            x3, [fp, #-0xa8]
    // 0x7711b4: cmp             w3, NULL
    // 0x7711b8: b.eq            #0x7713bc
    // 0x7711bc: mov             x0, x3
    // 0x7711c0: r2 = Null
    //     0x7711c0: mov             x2, NULL
    // 0x7711c4: r1 = Null
    //     0x7711c4: mov             x1, NULL
    // 0x7711c8: r4 = 60
    //     0x7711c8: movz            x4, #0x3c
    // 0x7711cc: branchIfSmi(r0, 0x7711d8)
    //     0x7711cc: tbz             w0, #0, #0x7711d8
    // 0x7711d0: r4 = LoadClassIdInstr(r0)
    //     0x7711d0: ldur            x4, [x0, #-1]
    //     0x7711d4: ubfx            x4, x4, #0xc, #0x14
    // 0x7711d8: cmp             x4, #0x18b
    // 0x7711dc: b.eq            #0x7711f4
    // 0x7711e0: r8 = fVa
    //     0x7711e0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x7711e4: ldr             x8, [x8, #0xd48]
    // 0x7711e8: r3 = Null
    //     0x7711e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3a0] Null
    //     0x7711ec: ldr             x3, [x3, #0x3a0]
    // 0x7711f0: r0 = DefaultTypeTest()
    //     0x7711f0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7711f4: ldur            x1, [fp, #-0x98]
    // 0x7711f8: r0 = LoadClassIdInstr(r1)
    //     0x7711f8: ldur            x0, [x1, #-1]
    //     0x7711fc: ubfx            x0, x0, #0xc, #0x14
    // 0x771200: r16 = 4
    //     0x771200: movz            x16, #0x4
    // 0x771204: stp             x16, x1, [SP]
    // 0x771208: mov             lr, x0
    // 0x77120c: ldr             lr, [x21, lr, lsl #3]
    // 0x771210: blr             lr
    // 0x771214: mov             x3, x0
    // 0x771218: stur            x3, [fp, #-0xb0]
    // 0x77121c: cmp             w3, NULL
    // 0x771220: b.eq            #0x7713c0
    // 0x771224: mov             x0, x3
    // 0x771228: r2 = Null
    //     0x771228: mov             x2, NULL
    // 0x77122c: r1 = Null
    //     0x77122c: mov             x1, NULL
    // 0x771230: r4 = 60
    //     0x771230: movz            x4, #0x3c
    // 0x771234: branchIfSmi(r0, 0x771240)
    //     0x771234: tbz             w0, #0, #0x771240
    // 0x771238: r4 = LoadClassIdInstr(r0)
    //     0x771238: ldur            x4, [x0, #-1]
    //     0x77123c: ubfx            x4, x4, #0xc, #0x14
    // 0x771240: cmp             x4, #0x17d
    // 0x771244: b.eq            #0x77125c
    // 0x771248: r8 = sVa
    //     0x771248: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Type: sVa
    //     0x77124c: ldr             x8, [x8, #0x3b0]
    // 0x771250: r3 = Null
    //     0x771250: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3b8] Null
    //     0x771254: ldr             x3, [x3, #0x3b8]
    // 0x771258: r0 = DefaultTypeTest()
    //     0x771258: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77125c: ldur            x0, [fp, #-0x98]
    // 0x771260: r1 = LoadClassIdInstr(r0)
    //     0x771260: ldur            x1, [x0, #-1]
    //     0x771264: ubfx            x1, x1, #0xc, #0x14
    // 0x771268: r16 = 6
    //     0x771268: movz            x16, #0x6
    // 0x77126c: stp             x16, x0, [SP]
    // 0x771270: mov             x0, x1
    // 0x771274: mov             lr, x0
    // 0x771278: ldr             lr, [x21, lr, lsl #3]
    // 0x77127c: blr             lr
    // 0x771280: mov             x3, x0
    // 0x771284: stur            x3, [fp, #-0x98]
    // 0x771288: cmp             w3, NULL
    // 0x77128c: b.eq            #0x7713c4
    // 0x771290: mov             x0, x3
    // 0x771294: r2 = Null
    //     0x771294: mov             x2, NULL
    // 0x771298: r1 = Null
    //     0x771298: mov             x1, NULL
    // 0x77129c: r4 = 60
    //     0x77129c: movz            x4, #0x3c
    // 0x7712a0: branchIfSmi(r0, 0x7712ac)
    //     0x7712a0: tbz             w0, #0, #0x7712ac
    // 0x7712a4: r4 = LoadClassIdInstr(r0)
    //     0x7712a4: ldur            x4, [x0, #-1]
    //     0x7712a8: ubfx            x4, x4, #0xc, #0x14
    // 0x7712ac: cmp             x4, #0x17d
    // 0x7712b0: b.eq            #0x7712c8
    // 0x7712b4: r8 = sVa
    //     0x7712b4: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Type: sVa
    //     0x7712b8: ldr             x8, [x8, #0x3b0]
    // 0x7712bc: r3 = Null
    //     0x7712bc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3c8] Null
    //     0x7712c0: ldr             x3, [x3, #0x3c8]
    // 0x7712c4: r0 = DefaultTypeTest()
    //     0x7712c4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7712c8: ldur            x1, [fp, #-0xa0]
    // 0x7712cc: LoadField: r2 = r1->field_37
    //     0x7712cc: ldur            w2, [x1, #0x37]
    // 0x7712d0: DecompressPointer r2
    //     0x7712d0: add             x2, x2, HEAP, lsl #32
    // 0x7712d4: stur            x2, [fp, #-0xb8]
    // 0x7712d8: cmp             w2, NULL
    // 0x7712dc: b.eq            #0x771308
    // 0x7712e0: stp             x1, x2, [SP, #0x18]
    // 0x7712e4: ldur            x16, [fp, #-0xa8]
    // 0x7712e8: ldur            lr, [fp, #-0xb0]
    // 0x7712ec: stp             lr, x16, [SP, #8]
    // 0x7712f0: ldur            x16, [fp, #-0x98]
    // 0x7712f4: str             x16, [SP]
    // 0x7712f8: mov             x0, x2
    // 0x7712fc: ClosureCall
    //     0x7712fc: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x771300: ldur            x2, [x0, #0x1f]
    //     0x771304: blr             x2
    // 0x771308: r16 = true
    //     0x771308: add             x16, NULL, #0x20  ; true
    // 0x77130c: str             x16, [SP]
    // 0x771310: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x771310: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x771314: ldr             x4, [x4, #0x870]
    // 0x771318: r0 = call 0x392d98
    //     0x771318: bl              #0x392d98
    // 0x77131c: r0 = ReturnAsyncNotFuture()
    //     0x77131c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771320: sub             SP, fp, #0xe0
    // 0x771324: r1 = 60
    //     0x771324: movz            x1, #0x3c
    // 0x771328: branchIfSmi(r0, 0x771334)
    //     0x771328: tbz             w0, #0, #0x771334
    // 0x77132c: r1 = LoadClassIdInstr(r0)
    //     0x77132c: ldur            x1, [x0, #-1]
    //     0x771330: ubfx            x1, x1, #0xc, #0x14
    // 0x771334: cmp             x1, #0x5e5
    // 0x771338: b.ne            #0x771350
    // 0x77133c: str             x0, [SP]
    // 0x771340: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771340: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771344: ldr             x4, [x4, #0x878]
    // 0x771348: r0 = call 0x392d98
    //     0x771348: bl              #0x392d98
    // 0x77134c: r0 = ReturnAsyncNotFuture()
    //     0x77134c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771350: r1 = 60
    //     0x771350: movz            x1, #0x3c
    // 0x771354: branchIfSmi(r0, 0x771360)
    //     0x771354: tbz             w0, #0, #0x771360
    // 0x771358: r1 = LoadClassIdInstr(r0)
    //     0x771358: ldur            x1, [x0, #-1]
    //     0x77135c: ubfx            x1, x1, #0xc, #0x14
    // 0x771360: str             x0, [SP]
    // 0x771364: mov             x0, x1
    // 0x771368: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x771368: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x77136c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x77136c: movz            x17, #0x3a5d
    //     0x771370: add             lr, x0, x17
    //     0x771374: ldr             lr, [x21, lr, lsl #3]
    //     0x771378: blr             lr
    // 0x77137c: stur            x0, [fp, #-0x90]
    // 0x771380: r0 = Mha()
    //     0x771380: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771384: mov             x1, x0
    // 0x771388: r0 = "error"
    //     0x771388: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x77138c: StoreField: r1->field_7 = r0
    //     0x77138c: stur            w0, [x1, #7]
    // 0x771390: ldur            x0, [fp, #-0x90]
    // 0x771394: StoreField: r1->field_b = r0
    //     0x771394: stur            w0, [x1, #0xb]
    // 0x771398: str             x1, [SP]
    // 0x77139c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x77139c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7713a0: ldr             x4, [x4, #0x878]
    // 0x7713a4: r0 = call 0x392d98
    //     0x7713a4: bl              #0x392d98
    // 0x7713a8: r0 = ReturnAsyncNotFuture()
    //     0x7713a8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7713ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7713ac: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7713b0: b               #0x7710d8
    // 0x7713b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7713b4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7713b8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7713b8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7713bc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7713bc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7713c0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7713c0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7713c4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7713c4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x7713c8, size: 0x3a0
    // 0x7713c8: EnterFrame
    //     0x7713c8: stp             fp, lr, [SP, #-0x10]!
    //     0x7713cc: mov             fp, SP
    // 0x7713d0: AllocStack(0xf8)
    //     0x7713d0: sub             SP, SP, #0xf8
    // 0x7713d4: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0xa0 */)
    //     0x7713d4: stur            NULL, [fp, #-8]
    //     0x7713d8: movz            x0, #0
    //     0x7713dc: add             x1, fp, w0, sxtw #2
    //     0x7713e0: ldr             x1, [x1, #0x18]
    //     0x7713e4: add             x2, fp, w0, sxtw #2
    //     0x7713e8: ldr             x2, [x2, #0x10]
    //     0x7713ec: stur            x2, [fp, #-0xa0]
    //     0x7713f0: ldur            w3, [x1, #0x17]
    //     0x7713f4: add             x3, x3, HEAP, lsl #32
    //     0x7713f8: stur            x3, [fp, #-0x98]
    // 0x7713fc: CheckStackOverflow
    //     0x7713fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x771400: cmp             SP, x16
    //     0x771404: b.ls            #0x771748
    // 0x771408: InitAsync() -> Future<List<Object?>>
    //     0x771408: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x77140c: ldr             x0, [x0, #0x1d0]
    //     0x771410: bl              #0x74ada8  ; InitAsyncStub
    // 0x771414: ldur            x3, [fp, #-0xa0]
    // 0x771418: cmp             w3, NULL
    // 0x77141c: b.eq            #0x771750
    // 0x771420: mov             x0, x3
    // 0x771424: r2 = Null
    //     0x771424: mov             x2, NULL
    // 0x771428: r1 = Null
    //     0x771428: mov             x1, NULL
    // 0x77142c: r4 = 60
    //     0x77142c: movz            x4, #0x3c
    // 0x771430: branchIfSmi(r0, 0x77143c)
    //     0x771430: tbz             w0, #0, #0x77143c
    // 0x771434: r4 = LoadClassIdInstr(r0)
    //     0x771434: ldur            x4, [x0, #-1]
    //     0x771438: ubfx            x4, x4, #0xc, #0x14
    // 0x77143c: sub             x4, x4, #0x5a
    // 0x771440: cmp             x4, #2
    // 0x771444: b.ls            #0x771458
    // 0x771448: r8 = List<Object?>
    //     0x771448: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x77144c: r3 = Null
    //     0x77144c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3d8] Null
    //     0x771450: ldr             x3, [x3, #0x3d8]
    // 0x771454: r0 = List<Object?>()
    //     0x771454: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x771458: ldur            x1, [fp, #-0xa0]
    // 0x77145c: r0 = LoadClassIdInstr(r1)
    //     0x77145c: ldur            x0, [x1, #-1]
    //     0x771460: ubfx            x0, x0, #0xc, #0x14
    // 0x771464: stp             xzr, x1, [SP]
    // 0x771468: mov             lr, x0
    // 0x77146c: ldr             lr, [x21, lr, lsl #3]
    // 0x771470: blr             lr
    // 0x771474: mov             x3, x0
    // 0x771478: stur            x3, [fp, #-0xa8]
    // 0x77147c: cmp             w3, NULL
    // 0x771480: b.eq            #0x771754
    // 0x771484: mov             x0, x3
    // 0x771488: r2 = Null
    //     0x771488: mov             x2, NULL
    // 0x77148c: r1 = Null
    //     0x77148c: mov             x1, NULL
    // 0x771490: r4 = 60
    //     0x771490: movz            x4, #0x3c
    // 0x771494: branchIfSmi(r0, 0x7714a0)
    //     0x771494: tbz             w0, #0, #0x7714a0
    // 0x771498: r4 = LoadClassIdInstr(r0)
    //     0x771498: ldur            x4, [x0, #-1]
    //     0x77149c: ubfx            x4, x4, #0xc, #0x14
    // 0x7714a0: cmp             x4, #0x187
    // 0x7714a4: b.eq            #0x7714bc
    // 0x7714a8: r8 = iVa
    //     0x7714a8: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x7714ac: ldr             x8, [x8, #0x1b0]
    // 0x7714b0: r3 = Null
    //     0x7714b0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3e8] Null
    //     0x7714b4: ldr             x3, [x3, #0x3e8]
    // 0x7714b8: r0 = DefaultTypeTest()
    //     0x7714b8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7714bc: ldur            x1, [fp, #-0xa0]
    // 0x7714c0: r0 = LoadClassIdInstr(r1)
    //     0x7714c0: ldur            x0, [x1, #-1]
    //     0x7714c4: ubfx            x0, x0, #0xc, #0x14
    // 0x7714c8: r16 = 2
    //     0x7714c8: movz            x16, #0x2
    // 0x7714cc: stp             x16, x1, [SP]
    // 0x7714d0: mov             lr, x0
    // 0x7714d4: ldr             lr, [x21, lr, lsl #3]
    // 0x7714d8: blr             lr
    // 0x7714dc: mov             x3, x0
    // 0x7714e0: stur            x3, [fp, #-0xb0]
    // 0x7714e4: cmp             w3, NULL
    // 0x7714e8: b.eq            #0x771758
    // 0x7714ec: mov             x0, x3
    // 0x7714f0: r2 = Null
    //     0x7714f0: mov             x2, NULL
    // 0x7714f4: r1 = Null
    //     0x7714f4: mov             x1, NULL
    // 0x7714f8: r4 = 60
    //     0x7714f8: movz            x4, #0x3c
    // 0x7714fc: branchIfSmi(r0, 0x771508)
    //     0x7714fc: tbz             w0, #0, #0x771508
    // 0x771500: r4 = LoadClassIdInstr(r0)
    //     0x771500: ldur            x4, [x0, #-1]
    //     0x771504: ubfx            x4, x4, #0xc, #0x14
    // 0x771508: cmp             x4, #0x18b
    // 0x77150c: b.eq            #0x771524
    // 0x771510: r8 = fVa
    //     0x771510: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x771514: ldr             x8, [x8, #0xd48]
    // 0x771518: r3 = Null
    //     0x771518: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3f8] Null
    //     0x77151c: ldr             x3, [x3, #0x3f8]
    // 0x771520: r0 = DefaultTypeTest()
    //     0x771520: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771524: ldur            x1, [fp, #-0xa0]
    // 0x771528: r0 = LoadClassIdInstr(r1)
    //     0x771528: ldur            x0, [x1, #-1]
    //     0x77152c: ubfx            x0, x0, #0xc, #0x14
    // 0x771530: r16 = 4
    //     0x771530: movz            x16, #0x4
    // 0x771534: stp             x16, x1, [SP]
    // 0x771538: mov             lr, x0
    // 0x77153c: ldr             lr, [x21, lr, lsl #3]
    // 0x771540: blr             lr
    // 0x771544: mov             x3, x0
    // 0x771548: stur            x3, [fp, #-0xb8]
    // 0x77154c: cmp             w3, NULL
    // 0x771550: b.eq            #0x77175c
    // 0x771554: mov             x0, x3
    // 0x771558: r2 = Null
    //     0x771558: mov             x2, NULL
    // 0x77155c: r1 = Null
    //     0x77155c: mov             x1, NULL
    // 0x771560: r4 = 60
    //     0x771560: movz            x4, #0x3c
    // 0x771564: branchIfSmi(r0, 0x771570)
    //     0x771564: tbz             w0, #0, #0x771570
    // 0x771568: r4 = LoadClassIdInstr(r0)
    //     0x771568: ldur            x4, [x0, #-1]
    //     0x77156c: ubfx            x4, x4, #0xc, #0x14
    // 0x771570: cmp             x4, #0x17e
    // 0x771574: b.eq            #0x77158c
    // 0x771578: r8 = rVa
    //     0x771578: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a408] Type: rVa
    //     0x77157c: ldr             x8, [x8, #0x408]
    // 0x771580: r3 = Null
    //     0x771580: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a410] Null
    //     0x771584: ldr             x3, [x3, #0x410]
    // 0x771588: r0 = DefaultTypeTest()
    //     0x771588: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77158c: ldur            x1, [fp, #-0xa0]
    // 0x771590: r0 = LoadClassIdInstr(r1)
    //     0x771590: ldur            x0, [x1, #-1]
    //     0x771594: ubfx            x0, x0, #0xc, #0x14
    // 0x771598: r16 = 6
    //     0x771598: movz            x16, #0x6
    // 0x77159c: stp             x16, x1, [SP]
    // 0x7715a0: mov             lr, x0
    // 0x7715a4: ldr             lr, [x21, lr, lsl #3]
    // 0x7715a8: blr             lr
    // 0x7715ac: mov             x3, x0
    // 0x7715b0: stur            x3, [fp, #-0xc0]
    // 0x7715b4: cmp             w3, NULL
    // 0x7715b8: b.eq            #0x771760
    // 0x7715bc: mov             x0, x3
    // 0x7715c0: r2 = Null
    //     0x7715c0: mov             x2, NULL
    // 0x7715c4: r1 = Null
    //     0x7715c4: mov             x1, NULL
    // 0x7715c8: r4 = 60
    //     0x7715c8: movz            x4, #0x3c
    // 0x7715cc: branchIfSmi(r0, 0x7715d8)
    //     0x7715cc: tbz             w0, #0, #0x7715d8
    // 0x7715d0: r4 = LoadClassIdInstr(r0)
    //     0x7715d0: ldur            x4, [x0, #-1]
    //     0x7715d4: ubfx            x4, x4, #0xc, #0x14
    // 0x7715d8: sub             x4, x4, #0x5e
    // 0x7715dc: cmp             x4, #1
    // 0x7715e0: b.ls            #0x7715f4
    // 0x7715e4: r8 = String
    //     0x7715e4: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7715e8: r3 = Null
    //     0x7715e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a420] Null
    //     0x7715ec: ldr             x3, [x3, #0x420]
    // 0x7715f0: r0 = String()
    //     0x7715f0: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x7715f4: ldur            x0, [fp, #-0xa0]
    // 0x7715f8: r1 = LoadClassIdInstr(r0)
    //     0x7715f8: ldur            x1, [x0, #-1]
    //     0x7715fc: ubfx            x1, x1, #0xc, #0x14
    // 0x771600: r16 = 8
    //     0x771600: movz            x16, #0x8
    // 0x771604: stp             x16, x0, [SP]
    // 0x771608: mov             x0, x1
    // 0x77160c: mov             lr, x0
    // 0x771610: ldr             lr, [x21, lr, lsl #3]
    // 0x771614: blr             lr
    // 0x771618: mov             x3, x0
    // 0x77161c: stur            x3, [fp, #-0xa0]
    // 0x771620: cmp             w3, NULL
    // 0x771624: b.eq            #0x771764
    // 0x771628: mov             x0, x3
    // 0x77162c: r2 = Null
    //     0x77162c: mov             x2, NULL
    // 0x771630: r1 = Null
    //     0x771630: mov             x1, NULL
    // 0x771634: r4 = 60
    //     0x771634: movz            x4, #0x3c
    // 0x771638: branchIfSmi(r0, 0x771644)
    //     0x771638: tbz             w0, #0, #0x771644
    // 0x77163c: r4 = LoadClassIdInstr(r0)
    //     0x77163c: ldur            x4, [x0, #-1]
    //     0x771640: ubfx            x4, x4, #0xc, #0x14
    // 0x771644: sub             x4, x4, #0x5e
    // 0x771648: cmp             x4, #1
    // 0x77164c: b.ls            #0x771660
    // 0x771650: r8 = String
    //     0x771650: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x771654: r3 = Null
    //     0x771654: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a430] Null
    //     0x771658: ldr             x3, [x3, #0x430]
    // 0x77165c: r0 = String()
    //     0x77165c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x771660: ldur            x1, [fp, #-0xa8]
    // 0x771664: LoadField: r2 = r1->field_33
    //     0x771664: ldur            w2, [x1, #0x33]
    // 0x771668: DecompressPointer r2
    //     0x771668: add             x2, x2, HEAP, lsl #32
    // 0x77166c: stur            x2, [fp, #-0xc8]
    // 0x771670: cmp             w2, NULL
    // 0x771674: b.eq            #0x7716a4
    // 0x771678: stp             x1, x2, [SP, #0x20]
    // 0x77167c: ldur            x16, [fp, #-0xb0]
    // 0x771680: ldur            lr, [fp, #-0xb8]
    // 0x771684: stp             lr, x16, [SP, #0x10]
    // 0x771688: ldur            x16, [fp, #-0xc0]
    // 0x77168c: ldur            lr, [fp, #-0xa0]
    // 0x771690: stp             lr, x16, [SP]
    // 0x771694: mov             x0, x2
    // 0x771698: ClosureCall
    //     0x771698: ldr             x4, [PP, #0x8b0]  ; [pp+0x8b0] List(5) [0, 0x6, 0x6, 0x6, Null]
    //     0x77169c: ldur            x2, [x0, #0x1f]
    //     0x7716a0: blr             x2
    // 0x7716a4: r16 = true
    //     0x7716a4: add             x16, NULL, #0x20  ; true
    // 0x7716a8: str             x16, [SP]
    // 0x7716ac: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7716ac: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7716b0: ldr             x4, [x4, #0x870]
    // 0x7716b4: r0 = call 0x392d98
    //     0x7716b4: bl              #0x392d98
    // 0x7716b8: r0 = ReturnAsyncNotFuture()
    //     0x7716b8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7716bc: sub             SP, fp, #0xf8
    // 0x7716c0: r1 = 60
    //     0x7716c0: movz            x1, #0x3c
    // 0x7716c4: branchIfSmi(r0, 0x7716d0)
    //     0x7716c4: tbz             w0, #0, #0x7716d0
    // 0x7716c8: r1 = LoadClassIdInstr(r0)
    //     0x7716c8: ldur            x1, [x0, #-1]
    //     0x7716cc: ubfx            x1, x1, #0xc, #0x14
    // 0x7716d0: cmp             x1, #0x5e5
    // 0x7716d4: b.ne            #0x7716ec
    // 0x7716d8: str             x0, [SP]
    // 0x7716dc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7716dc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7716e0: ldr             x4, [x4, #0x878]
    // 0x7716e4: r0 = call 0x392d98
    //     0x7716e4: bl              #0x392d98
    // 0x7716e8: r0 = ReturnAsyncNotFuture()
    //     0x7716e8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7716ec: r1 = 60
    //     0x7716ec: movz            x1, #0x3c
    // 0x7716f0: branchIfSmi(r0, 0x7716fc)
    //     0x7716f0: tbz             w0, #0, #0x7716fc
    // 0x7716f4: r1 = LoadClassIdInstr(r0)
    //     0x7716f4: ldur            x1, [x0, #-1]
    //     0x7716f8: ubfx            x1, x1, #0xc, #0x14
    // 0x7716fc: str             x0, [SP]
    // 0x771700: mov             x0, x1
    // 0x771704: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x771704: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x771708: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x771708: movz            x17, #0x3a5d
    //     0x77170c: add             lr, x0, x17
    //     0x771710: ldr             lr, [x21, lr, lsl #3]
    //     0x771714: blr             lr
    // 0x771718: stur            x0, [fp, #-0x98]
    // 0x77171c: r0 = Mha()
    //     0x77171c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771720: mov             x1, x0
    // 0x771724: r0 = "error"
    //     0x771724: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x771728: StoreField: r1->field_7 = r0
    //     0x771728: stur            w0, [x1, #7]
    // 0x77172c: ldur            x0, [fp, #-0x98]
    // 0x771730: StoreField: r1->field_b = r0
    //     0x771730: stur            w0, [x1, #0xb]
    // 0x771734: str             x1, [SP]
    // 0x771738: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771738: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x77173c: ldr             x4, [x4, #0x878]
    // 0x771740: r0 = call 0x392d98
    //     0x771740: bl              #0x392d98
    // 0x771744: r0 = ReturnAsyncNotFuture()
    //     0x771744: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771748: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x771748: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77174c: b               #0x771408
    // 0x771750: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771750: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771754: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771754: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771758: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771758: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77175c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77175c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771760: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771760: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771764: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771764: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x771768, size: 0x32c
    // 0x771768: EnterFrame
    //     0x771768: stp             fp, lr, [SP, #-0x10]!
    //     0x77176c: mov             fp, SP
    // 0x771770: AllocStack(0xe0)
    //     0x771770: sub             SP, SP, #0xe0
    // 0x771774: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x771774: stur            NULL, [fp, #-8]
    //     0x771778: movz            x0, #0
    //     0x77177c: add             x1, fp, w0, sxtw #2
    //     0x771780: ldr             x1, [x1, #0x18]
    //     0x771784: add             x2, fp, w0, sxtw #2
    //     0x771788: ldr             x2, [x2, #0x10]
    //     0x77178c: stur            x2, [fp, #-0x98]
    //     0x771790: ldur            w3, [x1, #0x17]
    //     0x771794: add             x3, x3, HEAP, lsl #32
    //     0x771798: stur            x3, [fp, #-0x90]
    // 0x77179c: CheckStackOverflow
    //     0x77179c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7717a0: cmp             SP, x16
    //     0x7717a4: b.ls            #0x771a78
    // 0x7717a8: InitAsync() -> Future<List<Object?>>
    //     0x7717a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7717ac: ldr             x0, [x0, #0x1d0]
    //     0x7717b0: bl              #0x74ada8  ; InitAsyncStub
    // 0x7717b4: ldur            x3, [fp, #-0x98]
    // 0x7717b8: cmp             w3, NULL
    // 0x7717bc: b.eq            #0x771a80
    // 0x7717c0: mov             x0, x3
    // 0x7717c4: r2 = Null
    //     0x7717c4: mov             x2, NULL
    // 0x7717c8: r1 = Null
    //     0x7717c8: mov             x1, NULL
    // 0x7717cc: r4 = 60
    //     0x7717cc: movz            x4, #0x3c
    // 0x7717d0: branchIfSmi(r0, 0x7717dc)
    //     0x7717d0: tbz             w0, #0, #0x7717dc
    // 0x7717d4: r4 = LoadClassIdInstr(r0)
    //     0x7717d4: ldur            x4, [x0, #-1]
    //     0x7717d8: ubfx            x4, x4, #0xc, #0x14
    // 0x7717dc: sub             x4, x4, #0x5a
    // 0x7717e0: cmp             x4, #2
    // 0x7717e4: b.ls            #0x7717f8
    // 0x7717e8: r8 = List<Object?>
    //     0x7717e8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7717ec: r3 = Null
    //     0x7717ec: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a440] Null
    //     0x7717f0: ldr             x3, [x3, #0x440]
    // 0x7717f4: r0 = List<Object?>()
    //     0x7717f4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7717f8: ldur            x1, [fp, #-0x98]
    // 0x7717fc: r0 = LoadClassIdInstr(r1)
    //     0x7717fc: ldur            x0, [x1, #-1]
    //     0x771800: ubfx            x0, x0, #0xc, #0x14
    // 0x771804: stp             xzr, x1, [SP]
    // 0x771808: mov             lr, x0
    // 0x77180c: ldr             lr, [x21, lr, lsl #3]
    // 0x771810: blr             lr
    // 0x771814: mov             x3, x0
    // 0x771818: stur            x3, [fp, #-0xa0]
    // 0x77181c: cmp             w3, NULL
    // 0x771820: b.eq            #0x771a84
    // 0x771824: mov             x0, x3
    // 0x771828: r2 = Null
    //     0x771828: mov             x2, NULL
    // 0x77182c: r1 = Null
    //     0x77182c: mov             x1, NULL
    // 0x771830: r4 = 60
    //     0x771830: movz            x4, #0x3c
    // 0x771834: branchIfSmi(r0, 0x771840)
    //     0x771834: tbz             w0, #0, #0x771840
    // 0x771838: r4 = LoadClassIdInstr(r0)
    //     0x771838: ldur            x4, [x0, #-1]
    //     0x77183c: ubfx            x4, x4, #0xc, #0x14
    // 0x771840: cmp             x4, #0x187
    // 0x771844: b.eq            #0x77185c
    // 0x771848: r8 = iVa
    //     0x771848: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x77184c: ldr             x8, [x8, #0x1b0]
    // 0x771850: r3 = Null
    //     0x771850: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a450] Null
    //     0x771854: ldr             x3, [x3, #0x450]
    // 0x771858: r0 = DefaultTypeTest()
    //     0x771858: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77185c: ldur            x1, [fp, #-0x98]
    // 0x771860: r0 = LoadClassIdInstr(r1)
    //     0x771860: ldur            x0, [x1, #-1]
    //     0x771864: ubfx            x0, x0, #0xc, #0x14
    // 0x771868: r16 = 2
    //     0x771868: movz            x16, #0x2
    // 0x77186c: stp             x16, x1, [SP]
    // 0x771870: mov             lr, x0
    // 0x771874: ldr             lr, [x21, lr, lsl #3]
    // 0x771878: blr             lr
    // 0x77187c: mov             x3, x0
    // 0x771880: stur            x3, [fp, #-0xa8]
    // 0x771884: cmp             w3, NULL
    // 0x771888: b.eq            #0x771a88
    // 0x77188c: mov             x0, x3
    // 0x771890: r2 = Null
    //     0x771890: mov             x2, NULL
    // 0x771894: r1 = Null
    //     0x771894: mov             x1, NULL
    // 0x771898: r4 = 60
    //     0x771898: movz            x4, #0x3c
    // 0x77189c: branchIfSmi(r0, 0x7718a8)
    //     0x77189c: tbz             w0, #0, #0x7718a8
    // 0x7718a0: r4 = LoadClassIdInstr(r0)
    //     0x7718a0: ldur            x4, [x0, #-1]
    //     0x7718a4: ubfx            x4, x4, #0xc, #0x14
    // 0x7718a8: cmp             x4, #0x18b
    // 0x7718ac: b.eq            #0x7718c4
    // 0x7718b0: r8 = fVa
    //     0x7718b0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x7718b4: ldr             x8, [x8, #0xd48]
    // 0x7718b8: r3 = Null
    //     0x7718b8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a460] Null
    //     0x7718bc: ldr             x3, [x3, #0x460]
    // 0x7718c0: r0 = DefaultTypeTest()
    //     0x7718c0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7718c4: ldur            x1, [fp, #-0x98]
    // 0x7718c8: r0 = LoadClassIdInstr(r1)
    //     0x7718c8: ldur            x0, [x1, #-1]
    //     0x7718cc: ubfx            x0, x0, #0xc, #0x14
    // 0x7718d0: r16 = 4
    //     0x7718d0: movz            x16, #0x4
    // 0x7718d4: stp             x16, x1, [SP]
    // 0x7718d8: mov             lr, x0
    // 0x7718dc: ldr             lr, [x21, lr, lsl #3]
    // 0x7718e0: blr             lr
    // 0x7718e4: mov             x3, x0
    // 0x7718e8: stur            x3, [fp, #-0xb0]
    // 0x7718ec: cmp             w3, NULL
    // 0x7718f0: b.eq            #0x771a8c
    // 0x7718f4: mov             x0, x3
    // 0x7718f8: r2 = Null
    //     0x7718f8: mov             x2, NULL
    // 0x7718fc: r1 = Null
    //     0x7718fc: mov             x1, NULL
    // 0x771900: r4 = 60
    //     0x771900: movz            x4, #0x3c
    // 0x771904: branchIfSmi(r0, 0x771910)
    //     0x771904: tbz             w0, #0, #0x771910
    // 0x771908: r4 = LoadClassIdInstr(r0)
    //     0x771908: ldur            x4, [x0, #-1]
    //     0x77190c: ubfx            x4, x4, #0xc, #0x14
    // 0x771910: sub             x4, x4, #0x5e
    // 0x771914: cmp             x4, #1
    // 0x771918: b.ls            #0x77192c
    // 0x77191c: r8 = String
    //     0x77191c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x771920: r3 = Null
    //     0x771920: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a470] Null
    //     0x771924: ldr             x3, [x3, #0x470]
    // 0x771928: r0 = String()
    //     0x771928: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x77192c: ldur            x0, [fp, #-0x98]
    // 0x771930: r1 = LoadClassIdInstr(r0)
    //     0x771930: ldur            x1, [x0, #-1]
    //     0x771934: ubfx            x1, x1, #0xc, #0x14
    // 0x771938: r16 = 6
    //     0x771938: movz            x16, #0x6
    // 0x77193c: stp             x16, x0, [SP]
    // 0x771940: mov             x0, x1
    // 0x771944: mov             lr, x0
    // 0x771948: ldr             lr, [x21, lr, lsl #3]
    // 0x77194c: blr             lr
    // 0x771950: mov             x3, x0
    // 0x771954: stur            x3, [fp, #-0x98]
    // 0x771958: cmp             w3, NULL
    // 0x77195c: b.eq            #0x771a90
    // 0x771960: mov             x0, x3
    // 0x771964: r2 = Null
    //     0x771964: mov             x2, NULL
    // 0x771968: r1 = Null
    //     0x771968: mov             x1, NULL
    // 0x77196c: r4 = 60
    //     0x77196c: movz            x4, #0x3c
    // 0x771970: branchIfSmi(r0, 0x77197c)
    //     0x771970: tbz             w0, #0, #0x77197c
    // 0x771974: r4 = LoadClassIdInstr(r0)
    //     0x771974: ldur            x4, [x0, #-1]
    //     0x771978: ubfx            x4, x4, #0xc, #0x14
    // 0x77197c: cmp             x4, #0x3f
    // 0x771980: b.eq            #0x771994
    // 0x771984: r8 = bool
    //     0x771984: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x771988: r3 = Null
    //     0x771988: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a480] Null
    //     0x77198c: ldr             x3, [x3, #0x480]
    // 0x771990: r0 = bool()
    //     0x771990: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x771994: ldur            x1, [fp, #-0xa0]
    // 0x771998: LoadField: r2 = r1->field_2f
    //     0x771998: ldur            w2, [x1, #0x2f]
    // 0x77199c: DecompressPointer r2
    //     0x77199c: add             x2, x2, HEAP, lsl #32
    // 0x7719a0: stur            x2, [fp, #-0xb8]
    // 0x7719a4: cmp             w2, NULL
    // 0x7719a8: b.eq            #0x7719d4
    // 0x7719ac: stp             x1, x2, [SP, #0x18]
    // 0x7719b0: ldur            x16, [fp, #-0xa8]
    // 0x7719b4: ldur            lr, [fp, #-0xb0]
    // 0x7719b8: stp             lr, x16, [SP, #8]
    // 0x7719bc: ldur            x16, [fp, #-0x98]
    // 0x7719c0: str             x16, [SP]
    // 0x7719c4: mov             x0, x2
    // 0x7719c8: ClosureCall
    //     0x7719c8: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x7719cc: ldur            x2, [x0, #0x1f]
    //     0x7719d0: blr             x2
    // 0x7719d4: r16 = true
    //     0x7719d4: add             x16, NULL, #0x20  ; true
    // 0x7719d8: str             x16, [SP]
    // 0x7719dc: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7719dc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7719e0: ldr             x4, [x4, #0x870]
    // 0x7719e4: r0 = call 0x392d98
    //     0x7719e4: bl              #0x392d98
    // 0x7719e8: r0 = ReturnAsyncNotFuture()
    //     0x7719e8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7719ec: sub             SP, fp, #0xe0
    // 0x7719f0: r1 = 60
    //     0x7719f0: movz            x1, #0x3c
    // 0x7719f4: branchIfSmi(r0, 0x771a00)
    //     0x7719f4: tbz             w0, #0, #0x771a00
    // 0x7719f8: r1 = LoadClassIdInstr(r0)
    //     0x7719f8: ldur            x1, [x0, #-1]
    //     0x7719fc: ubfx            x1, x1, #0xc, #0x14
    // 0x771a00: cmp             x1, #0x5e5
    // 0x771a04: b.ne            #0x771a1c
    // 0x771a08: str             x0, [SP]
    // 0x771a0c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771a0c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771a10: ldr             x4, [x4, #0x878]
    // 0x771a14: r0 = call 0x392d98
    //     0x771a14: bl              #0x392d98
    // 0x771a18: r0 = ReturnAsyncNotFuture()
    //     0x771a18: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771a1c: r1 = 60
    //     0x771a1c: movz            x1, #0x3c
    // 0x771a20: branchIfSmi(r0, 0x771a2c)
    //     0x771a20: tbz             w0, #0, #0x771a2c
    // 0x771a24: r1 = LoadClassIdInstr(r0)
    //     0x771a24: ldur            x1, [x0, #-1]
    //     0x771a28: ubfx            x1, x1, #0xc, #0x14
    // 0x771a2c: str             x0, [SP]
    // 0x771a30: mov             x0, x1
    // 0x771a34: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x771a34: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x771a38: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x771a38: movz            x17, #0x3a5d
    //     0x771a3c: add             lr, x0, x17
    //     0x771a40: ldr             lr, [x21, lr, lsl #3]
    //     0x771a44: blr             lr
    // 0x771a48: stur            x0, [fp, #-0x90]
    // 0x771a4c: r0 = Mha()
    //     0x771a4c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771a50: mov             x1, x0
    // 0x771a54: r0 = "error"
    //     0x771a54: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x771a58: StoreField: r1->field_7 = r0
    //     0x771a58: stur            w0, [x1, #7]
    // 0x771a5c: ldur            x0, [fp, #-0x90]
    // 0x771a60: StoreField: r1->field_b = r0
    //     0x771a60: stur            w0, [x1, #0xb]
    // 0x771a64: str             x1, [SP]
    // 0x771a68: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771a68: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771a6c: ldr             x4, [x4, #0x878]
    // 0x771a70: r0 = call 0x392d98
    //     0x771a70: bl              #0x392d98
    // 0x771a74: r0 = ReturnAsyncNotFuture()
    //     0x771a74: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771a78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x771a78: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x771a7c: b               #0x7717a8
    // 0x771a80: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771a80: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771a84: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771a84: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771a88: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771a88: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771a8c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771a8c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771a90: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771a90: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x771a94, size: 0x2bc
    // 0x771a94: EnterFrame
    //     0x771a94: stp             fp, lr, [SP, #-0x10]!
    //     0x771a98: mov             fp, SP
    // 0x771a9c: AllocStack(0xc8)
    //     0x771a9c: sub             SP, SP, #0xc8
    // 0x771aa0: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x771aa0: stur            NULL, [fp, #-8]
    //     0x771aa4: movz            x0, #0
    //     0x771aa8: add             x1, fp, w0, sxtw #2
    //     0x771aac: ldr             x1, [x1, #0x18]
    //     0x771ab0: add             x2, fp, w0, sxtw #2
    //     0x771ab4: ldr             x2, [x2, #0x10]
    //     0x771ab8: stur            x2, [fp, #-0x90]
    //     0x771abc: ldur            w3, [x1, #0x17]
    //     0x771ac0: add             x3, x3, HEAP, lsl #32
    //     0x771ac4: stur            x3, [fp, #-0x88]
    // 0x771ac8: CheckStackOverflow
    //     0x771ac8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x771acc: cmp             SP, x16
    //     0x771ad0: b.ls            #0x771d38
    // 0x771ad4: InitAsync() -> Future<List<Object?>>
    //     0x771ad4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x771ad8: ldr             x0, [x0, #0x1d0]
    //     0x771adc: bl              #0x74ada8  ; InitAsyncStub
    // 0x771ae0: ldur            x3, [fp, #-0x90]
    // 0x771ae4: cmp             w3, NULL
    // 0x771ae8: b.eq            #0x771d40
    // 0x771aec: mov             x0, x3
    // 0x771af0: r2 = Null
    //     0x771af0: mov             x2, NULL
    // 0x771af4: r1 = Null
    //     0x771af4: mov             x1, NULL
    // 0x771af8: r4 = 60
    //     0x771af8: movz            x4, #0x3c
    // 0x771afc: branchIfSmi(r0, 0x771b08)
    //     0x771afc: tbz             w0, #0, #0x771b08
    // 0x771b00: r4 = LoadClassIdInstr(r0)
    //     0x771b00: ldur            x4, [x0, #-1]
    //     0x771b04: ubfx            x4, x4, #0xc, #0x14
    // 0x771b08: sub             x4, x4, #0x5a
    // 0x771b0c: cmp             x4, #2
    // 0x771b10: b.ls            #0x771b24
    // 0x771b14: r8 = List<Object?>
    //     0x771b14: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x771b18: r3 = Null
    //     0x771b18: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a490] Null
    //     0x771b1c: ldr             x3, [x3, #0x490]
    // 0x771b20: r0 = List<Object?>()
    //     0x771b20: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x771b24: ldur            x1, [fp, #-0x90]
    // 0x771b28: r0 = LoadClassIdInstr(r1)
    //     0x771b28: ldur            x0, [x1, #-1]
    //     0x771b2c: ubfx            x0, x0, #0xc, #0x14
    // 0x771b30: stp             xzr, x1, [SP]
    // 0x771b34: mov             lr, x0
    // 0x771b38: ldr             lr, [x21, lr, lsl #3]
    // 0x771b3c: blr             lr
    // 0x771b40: mov             x3, x0
    // 0x771b44: stur            x3, [fp, #-0x98]
    // 0x771b48: cmp             w3, NULL
    // 0x771b4c: b.eq            #0x771d44
    // 0x771b50: mov             x0, x3
    // 0x771b54: r2 = Null
    //     0x771b54: mov             x2, NULL
    // 0x771b58: r1 = Null
    //     0x771b58: mov             x1, NULL
    // 0x771b5c: r4 = 60
    //     0x771b5c: movz            x4, #0x3c
    // 0x771b60: branchIfSmi(r0, 0x771b6c)
    //     0x771b60: tbz             w0, #0, #0x771b6c
    // 0x771b64: r4 = LoadClassIdInstr(r0)
    //     0x771b64: ldur            x4, [x0, #-1]
    //     0x771b68: ubfx            x4, x4, #0xc, #0x14
    // 0x771b6c: cmp             x4, #0x187
    // 0x771b70: b.eq            #0x771b88
    // 0x771b74: r8 = iVa
    //     0x771b74: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x771b78: ldr             x8, [x8, #0x1b0]
    // 0x771b7c: r3 = Null
    //     0x771b7c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4a0] Null
    //     0x771b80: ldr             x3, [x3, #0x4a0]
    // 0x771b84: r0 = DefaultTypeTest()
    //     0x771b84: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771b88: ldur            x1, [fp, #-0x90]
    // 0x771b8c: r0 = LoadClassIdInstr(r1)
    //     0x771b8c: ldur            x0, [x1, #-1]
    //     0x771b90: ubfx            x0, x0, #0xc, #0x14
    // 0x771b94: r16 = 2
    //     0x771b94: movz            x16, #0x2
    // 0x771b98: stp             x16, x1, [SP]
    // 0x771b9c: mov             lr, x0
    // 0x771ba0: ldr             lr, [x21, lr, lsl #3]
    // 0x771ba4: blr             lr
    // 0x771ba8: mov             x3, x0
    // 0x771bac: stur            x3, [fp, #-0xa0]
    // 0x771bb0: cmp             w3, NULL
    // 0x771bb4: b.eq            #0x771d48
    // 0x771bb8: mov             x0, x3
    // 0x771bbc: r2 = Null
    //     0x771bbc: mov             x2, NULL
    // 0x771bc0: r1 = Null
    //     0x771bc0: mov             x1, NULL
    // 0x771bc4: r4 = 60
    //     0x771bc4: movz            x4, #0x3c
    // 0x771bc8: branchIfSmi(r0, 0x771bd4)
    //     0x771bc8: tbz             w0, #0, #0x771bd4
    // 0x771bcc: r4 = LoadClassIdInstr(r0)
    //     0x771bcc: ldur            x4, [x0, #-1]
    //     0x771bd0: ubfx            x4, x4, #0xc, #0x14
    // 0x771bd4: cmp             x4, #0x18b
    // 0x771bd8: b.eq            #0x771bf0
    // 0x771bdc: r8 = fVa
    //     0x771bdc: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x771be0: ldr             x8, [x8, #0xd48]
    // 0x771be4: r3 = Null
    //     0x771be4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4b0] Null
    //     0x771be8: ldr             x3, [x3, #0x4b0]
    // 0x771bec: r0 = DefaultTypeTest()
    //     0x771bec: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771bf0: ldur            x0, [fp, #-0x90]
    // 0x771bf4: r1 = LoadClassIdInstr(r0)
    //     0x771bf4: ldur            x1, [x0, #-1]
    //     0x771bf8: ubfx            x1, x1, #0xc, #0x14
    // 0x771bfc: r16 = 4
    //     0x771bfc: movz            x16, #0x4
    // 0x771c00: stp             x16, x0, [SP]
    // 0x771c04: mov             x0, x1
    // 0x771c08: mov             lr, x0
    // 0x771c0c: ldr             lr, [x21, lr, lsl #3]
    // 0x771c10: blr             lr
    // 0x771c14: mov             x3, x0
    // 0x771c18: stur            x3, [fp, #-0x90]
    // 0x771c1c: cmp             w3, NULL
    // 0x771c20: b.eq            #0x771d4c
    // 0x771c24: mov             x0, x3
    // 0x771c28: r2 = Null
    //     0x771c28: mov             x2, NULL
    // 0x771c2c: r1 = Null
    //     0x771c2c: mov             x1, NULL
    // 0x771c30: r4 = 60
    //     0x771c30: movz            x4, #0x3c
    // 0x771c34: branchIfSmi(r0, 0x771c40)
    //     0x771c34: tbz             w0, #0, #0x771c40
    // 0x771c38: r4 = LoadClassIdInstr(r0)
    //     0x771c38: ldur            x4, [x0, #-1]
    //     0x771c3c: ubfx            x4, x4, #0xc, #0x14
    // 0x771c40: sub             x4, x4, #0x5e
    // 0x771c44: cmp             x4, #1
    // 0x771c48: b.ls            #0x771c5c
    // 0x771c4c: r8 = String
    //     0x771c4c: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x771c50: r3 = Null
    //     0x771c50: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4c0] Null
    //     0x771c54: ldr             x3, [x3, #0x4c0]
    // 0x771c58: r0 = String()
    //     0x771c58: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x771c5c: ldur            x1, [fp, #-0x98]
    // 0x771c60: LoadField: r2 = r1->field_2b
    //     0x771c60: ldur            w2, [x1, #0x2b]
    // 0x771c64: DecompressPointer r2
    //     0x771c64: add             x2, x2, HEAP, lsl #32
    // 0x771c68: stur            x2, [fp, #-0xa8]
    // 0x771c6c: cmp             w2, NULL
    // 0x771c70: b.eq            #0x771c94
    // 0x771c74: stp             x1, x2, [SP, #0x10]
    // 0x771c78: ldur            x16, [fp, #-0xa0]
    // 0x771c7c: ldur            lr, [fp, #-0x90]
    // 0x771c80: stp             lr, x16, [SP]
    // 0x771c84: mov             x0, x2
    // 0x771c88: ClosureCall
    //     0x771c88: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x771c8c: ldur            x2, [x0, #0x1f]
    //     0x771c90: blr             x2
    // 0x771c94: r16 = true
    //     0x771c94: add             x16, NULL, #0x20  ; true
    // 0x771c98: str             x16, [SP]
    // 0x771c9c: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x771c9c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x771ca0: ldr             x4, [x4, #0x870]
    // 0x771ca4: r0 = call 0x392d98
    //     0x771ca4: bl              #0x392d98
    // 0x771ca8: r0 = ReturnAsyncNotFuture()
    //     0x771ca8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771cac: sub             SP, fp, #0xc8
    // 0x771cb0: r1 = 60
    //     0x771cb0: movz            x1, #0x3c
    // 0x771cb4: branchIfSmi(r0, 0x771cc0)
    //     0x771cb4: tbz             w0, #0, #0x771cc0
    // 0x771cb8: r1 = LoadClassIdInstr(r0)
    //     0x771cb8: ldur            x1, [x0, #-1]
    //     0x771cbc: ubfx            x1, x1, #0xc, #0x14
    // 0x771cc0: cmp             x1, #0x5e5
    // 0x771cc4: b.ne            #0x771cdc
    // 0x771cc8: str             x0, [SP]
    // 0x771ccc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771ccc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771cd0: ldr             x4, [x4, #0x878]
    // 0x771cd4: r0 = call 0x392d98
    //     0x771cd4: bl              #0x392d98
    // 0x771cd8: r0 = ReturnAsyncNotFuture()
    //     0x771cd8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771cdc: r1 = 60
    //     0x771cdc: movz            x1, #0x3c
    // 0x771ce0: branchIfSmi(r0, 0x771cec)
    //     0x771ce0: tbz             w0, #0, #0x771cec
    // 0x771ce4: r1 = LoadClassIdInstr(r0)
    //     0x771ce4: ldur            x1, [x0, #-1]
    //     0x771ce8: ubfx            x1, x1, #0xc, #0x14
    // 0x771cec: str             x0, [SP]
    // 0x771cf0: mov             x0, x1
    // 0x771cf4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x771cf4: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x771cf8: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x771cf8: movz            x17, #0x3a5d
    //     0x771cfc: add             lr, x0, x17
    //     0x771d00: ldr             lr, [x21, lr, lsl #3]
    //     0x771d04: blr             lr
    // 0x771d08: stur            x0, [fp, #-0x88]
    // 0x771d0c: r0 = Mha()
    //     0x771d0c: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771d10: mov             x1, x0
    // 0x771d14: r0 = "error"
    //     0x771d14: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x771d18: StoreField: r1->field_7 = r0
    //     0x771d18: stur            w0, [x1, #7]
    // 0x771d1c: ldur            x0, [fp, #-0x88]
    // 0x771d20: StoreField: r1->field_b = r0
    //     0x771d20: stur            w0, [x1, #0xb]
    // 0x771d24: str             x1, [SP]
    // 0x771d28: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771d28: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771d2c: ldr             x4, [x4, #0x878]
    // 0x771d30: r0 = call 0x392d98
    //     0x771d30: bl              #0x392d98
    // 0x771d34: r0 = ReturnAsyncNotFuture()
    //     0x771d34: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771d38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x771d38: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x771d3c: b               #0x771ad4
    // 0x771d40: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771d40: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771d44: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771d44: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771d48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771d48: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x771d4c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771d4c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x771d50, size: 0x2bc
    // 0x771d50: EnterFrame
    //     0x771d50: stp             fp, lr, [SP, #-0x10]!
    //     0x771d54: mov             fp, SP
    // 0x771d58: AllocStack(0xc8)
    //     0x771d58: sub             SP, SP, #0xc8
    // 0x771d5c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x771d5c: stur            NULL, [fp, #-8]
    //     0x771d60: movz            x0, #0
    //     0x771d64: add             x1, fp, w0, sxtw #2
    //     0x771d68: ldr             x1, [x1, #0x18]
    //     0x771d6c: add             x2, fp, w0, sxtw #2
    //     0x771d70: ldr             x2, [x2, #0x10]
    //     0x771d74: stur            x2, [fp, #-0x90]
    //     0x771d78: ldur            w3, [x1, #0x17]
    //     0x771d7c: add             x3, x3, HEAP, lsl #32
    //     0x771d80: stur            x3, [fp, #-0x88]
    // 0x771d84: CheckStackOverflow
    //     0x771d84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x771d88: cmp             SP, x16
    //     0x771d8c: b.ls            #0x771ff4
    // 0x771d90: InitAsync() -> Future<List<Object?>>
    //     0x771d90: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x771d94: ldr             x0, [x0, #0x1d0]
    //     0x771d98: bl              #0x74ada8  ; InitAsyncStub
    // 0x771d9c: ldur            x3, [fp, #-0x90]
    // 0x771da0: cmp             w3, NULL
    // 0x771da4: b.eq            #0x771ffc
    // 0x771da8: mov             x0, x3
    // 0x771dac: r2 = Null
    //     0x771dac: mov             x2, NULL
    // 0x771db0: r1 = Null
    //     0x771db0: mov             x1, NULL
    // 0x771db4: r4 = 60
    //     0x771db4: movz            x4, #0x3c
    // 0x771db8: branchIfSmi(r0, 0x771dc4)
    //     0x771db8: tbz             w0, #0, #0x771dc4
    // 0x771dbc: r4 = LoadClassIdInstr(r0)
    //     0x771dbc: ldur            x4, [x0, #-1]
    //     0x771dc0: ubfx            x4, x4, #0xc, #0x14
    // 0x771dc4: sub             x4, x4, #0x5a
    // 0x771dc8: cmp             x4, #2
    // 0x771dcc: b.ls            #0x771de0
    // 0x771dd0: r8 = List<Object?>
    //     0x771dd0: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x771dd4: r3 = Null
    //     0x771dd4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4d0] Null
    //     0x771dd8: ldr             x3, [x3, #0x4d0]
    // 0x771ddc: r0 = List<Object?>()
    //     0x771ddc: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x771de0: ldur            x1, [fp, #-0x90]
    // 0x771de4: r0 = LoadClassIdInstr(r1)
    //     0x771de4: ldur            x0, [x1, #-1]
    //     0x771de8: ubfx            x0, x0, #0xc, #0x14
    // 0x771dec: stp             xzr, x1, [SP]
    // 0x771df0: mov             lr, x0
    // 0x771df4: ldr             lr, [x21, lr, lsl #3]
    // 0x771df8: blr             lr
    // 0x771dfc: mov             x3, x0
    // 0x771e00: stur            x3, [fp, #-0x98]
    // 0x771e04: cmp             w3, NULL
    // 0x771e08: b.eq            #0x772000
    // 0x771e0c: mov             x0, x3
    // 0x771e10: r2 = Null
    //     0x771e10: mov             x2, NULL
    // 0x771e14: r1 = Null
    //     0x771e14: mov             x1, NULL
    // 0x771e18: r4 = 60
    //     0x771e18: movz            x4, #0x3c
    // 0x771e1c: branchIfSmi(r0, 0x771e28)
    //     0x771e1c: tbz             w0, #0, #0x771e28
    // 0x771e20: r4 = LoadClassIdInstr(r0)
    //     0x771e20: ldur            x4, [x0, #-1]
    //     0x771e24: ubfx            x4, x4, #0xc, #0x14
    // 0x771e28: cmp             x4, #0x187
    // 0x771e2c: b.eq            #0x771e44
    // 0x771e30: r8 = iVa
    //     0x771e30: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x771e34: ldr             x8, [x8, #0x1b0]
    // 0x771e38: r3 = Null
    //     0x771e38: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4e0] Null
    //     0x771e3c: ldr             x3, [x3, #0x4e0]
    // 0x771e40: r0 = DefaultTypeTest()
    //     0x771e40: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771e44: ldur            x1, [fp, #-0x90]
    // 0x771e48: r0 = LoadClassIdInstr(r1)
    //     0x771e48: ldur            x0, [x1, #-1]
    //     0x771e4c: ubfx            x0, x0, #0xc, #0x14
    // 0x771e50: r16 = 2
    //     0x771e50: movz            x16, #0x2
    // 0x771e54: stp             x16, x1, [SP]
    // 0x771e58: mov             lr, x0
    // 0x771e5c: ldr             lr, [x21, lr, lsl #3]
    // 0x771e60: blr             lr
    // 0x771e64: mov             x3, x0
    // 0x771e68: stur            x3, [fp, #-0xa0]
    // 0x771e6c: cmp             w3, NULL
    // 0x771e70: b.eq            #0x772004
    // 0x771e74: mov             x0, x3
    // 0x771e78: r2 = Null
    //     0x771e78: mov             x2, NULL
    // 0x771e7c: r1 = Null
    //     0x771e7c: mov             x1, NULL
    // 0x771e80: r4 = 60
    //     0x771e80: movz            x4, #0x3c
    // 0x771e84: branchIfSmi(r0, 0x771e90)
    //     0x771e84: tbz             w0, #0, #0x771e90
    // 0x771e88: r4 = LoadClassIdInstr(r0)
    //     0x771e88: ldur            x4, [x0, #-1]
    //     0x771e8c: ubfx            x4, x4, #0xc, #0x14
    // 0x771e90: cmp             x4, #0x18b
    // 0x771e94: b.eq            #0x771eac
    // 0x771e98: r8 = fVa
    //     0x771e98: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x771e9c: ldr             x8, [x8, #0xd48]
    // 0x771ea0: r3 = Null
    //     0x771ea0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a4f0] Null
    //     0x771ea4: ldr             x3, [x3, #0x4f0]
    // 0x771ea8: r0 = DefaultTypeTest()
    //     0x771ea8: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771eac: ldur            x0, [fp, #-0x90]
    // 0x771eb0: r1 = LoadClassIdInstr(r0)
    //     0x771eb0: ldur            x1, [x0, #-1]
    //     0x771eb4: ubfx            x1, x1, #0xc, #0x14
    // 0x771eb8: r16 = 4
    //     0x771eb8: movz            x16, #0x4
    // 0x771ebc: stp             x16, x0, [SP]
    // 0x771ec0: mov             x0, x1
    // 0x771ec4: mov             lr, x0
    // 0x771ec8: ldr             lr, [x21, lr, lsl #3]
    // 0x771ecc: blr             lr
    // 0x771ed0: mov             x3, x0
    // 0x771ed4: stur            x3, [fp, #-0x90]
    // 0x771ed8: cmp             w3, NULL
    // 0x771edc: b.eq            #0x772008
    // 0x771ee0: mov             x0, x3
    // 0x771ee4: r2 = Null
    //     0x771ee4: mov             x2, NULL
    // 0x771ee8: r1 = Null
    //     0x771ee8: mov             x1, NULL
    // 0x771eec: r4 = 60
    //     0x771eec: movz            x4, #0x3c
    // 0x771ef0: branchIfSmi(r0, 0x771efc)
    //     0x771ef0: tbz             w0, #0, #0x771efc
    // 0x771ef4: r4 = LoadClassIdInstr(r0)
    //     0x771ef4: ldur            x4, [x0, #-1]
    //     0x771ef8: ubfx            x4, x4, #0xc, #0x14
    // 0x771efc: cmp             x4, #0x192
    // 0x771f00: b.eq            #0x771f18
    // 0x771f04: r8 = YUa
    //     0x771f04: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a500] Type: YUa
    //     0x771f08: ldr             x8, [x8, #0x500]
    // 0x771f0c: r3 = Null
    //     0x771f0c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a508] Null
    //     0x771f10: ldr             x3, [x3, #0x508]
    // 0x771f14: r0 = DefaultTypeTest()
    //     0x771f14: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x771f18: ldur            x1, [fp, #-0x98]
    // 0x771f1c: LoadField: r2 = r1->field_27
    //     0x771f1c: ldur            w2, [x1, #0x27]
    // 0x771f20: DecompressPointer r2
    //     0x771f20: add             x2, x2, HEAP, lsl #32
    // 0x771f24: stur            x2, [fp, #-0xa8]
    // 0x771f28: cmp             w2, NULL
    // 0x771f2c: b.eq            #0x771f50
    // 0x771f30: stp             x1, x2, [SP, #0x10]
    // 0x771f34: ldur            x16, [fp, #-0xa0]
    // 0x771f38: ldur            lr, [fp, #-0x90]
    // 0x771f3c: stp             lr, x16, [SP]
    // 0x771f40: mov             x0, x2
    // 0x771f44: ClosureCall
    //     0x771f44: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x771f48: ldur            x2, [x0, #0x1f]
    //     0x771f4c: blr             x2
    // 0x771f50: r16 = true
    //     0x771f50: add             x16, NULL, #0x20  ; true
    // 0x771f54: str             x16, [SP]
    // 0x771f58: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x771f58: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x771f5c: ldr             x4, [x4, #0x870]
    // 0x771f60: r0 = call 0x392d98
    //     0x771f60: bl              #0x392d98
    // 0x771f64: r0 = ReturnAsyncNotFuture()
    //     0x771f64: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771f68: sub             SP, fp, #0xc8
    // 0x771f6c: r1 = 60
    //     0x771f6c: movz            x1, #0x3c
    // 0x771f70: branchIfSmi(r0, 0x771f7c)
    //     0x771f70: tbz             w0, #0, #0x771f7c
    // 0x771f74: r1 = LoadClassIdInstr(r0)
    //     0x771f74: ldur            x1, [x0, #-1]
    //     0x771f78: ubfx            x1, x1, #0xc, #0x14
    // 0x771f7c: cmp             x1, #0x5e5
    // 0x771f80: b.ne            #0x771f98
    // 0x771f84: str             x0, [SP]
    // 0x771f88: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771f88: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771f8c: ldr             x4, [x4, #0x878]
    // 0x771f90: r0 = call 0x392d98
    //     0x771f90: bl              #0x392d98
    // 0x771f94: r0 = ReturnAsyncNotFuture()
    //     0x771f94: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771f98: r1 = 60
    //     0x771f98: movz            x1, #0x3c
    // 0x771f9c: branchIfSmi(r0, 0x771fa8)
    //     0x771f9c: tbz             w0, #0, #0x771fa8
    // 0x771fa0: r1 = LoadClassIdInstr(r0)
    //     0x771fa0: ldur            x1, [x0, #-1]
    //     0x771fa4: ubfx            x1, x1, #0xc, #0x14
    // 0x771fa8: str             x0, [SP]
    // 0x771fac: mov             x0, x1
    // 0x771fb0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x771fb0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x771fb4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x771fb4: movz            x17, #0x3a5d
    //     0x771fb8: add             lr, x0, x17
    //     0x771fbc: ldr             lr, [x21, lr, lsl #3]
    //     0x771fc0: blr             lr
    // 0x771fc4: stur            x0, [fp, #-0x88]
    // 0x771fc8: r0 = Mha()
    //     0x771fc8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x771fcc: mov             x1, x0
    // 0x771fd0: r0 = "error"
    //     0x771fd0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x771fd4: StoreField: r1->field_7 = r0
    //     0x771fd4: stur            w0, [x1, #7]
    // 0x771fd8: ldur            x0, [fp, #-0x88]
    // 0x771fdc: StoreField: r1->field_b = r0
    //     0x771fdc: stur            w0, [x1, #0xb]
    // 0x771fe0: str             x1, [SP]
    // 0x771fe4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x771fe4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x771fe8: ldr             x4, [x4, #0x878]
    // 0x771fec: r0 = call 0x392d98
    //     0x771fec: bl              #0x392d98
    // 0x771ff0: r0 = ReturnAsyncNotFuture()
    //     0x771ff0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x771ff4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x771ff4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x771ff8: b               #0x771d90
    // 0x771ffc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x771ffc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772000: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772000: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772004: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772004: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772008: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772008: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77200c, size: 0x330
    // 0x77200c: EnterFrame
    //     0x77200c: stp             fp, lr, [SP, #-0x10]!
    //     0x772010: mov             fp, SP
    // 0x772014: AllocStack(0xe0)
    //     0x772014: sub             SP, SP, #0xe0
    // 0x772018: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x772018: stur            NULL, [fp, #-8]
    //     0x77201c: movz            x0, #0
    //     0x772020: add             x1, fp, w0, sxtw #2
    //     0x772024: ldr             x1, [x1, #0x18]
    //     0x772028: add             x2, fp, w0, sxtw #2
    //     0x77202c: ldr             x2, [x2, #0x10]
    //     0x772030: stur            x2, [fp, #-0x98]
    //     0x772034: ldur            w3, [x1, #0x17]
    //     0x772038: add             x3, x3, HEAP, lsl #32
    //     0x77203c: stur            x3, [fp, #-0x90]
    // 0x772040: CheckStackOverflow
    //     0x772040: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x772044: cmp             SP, x16
    //     0x772048: b.ls            #0x772320
    // 0x77204c: InitAsync() -> Future<List<Object?>>
    //     0x77204c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x772050: ldr             x0, [x0, #0x1d0]
    //     0x772054: bl              #0x74ada8  ; InitAsyncStub
    // 0x772058: ldur            x3, [fp, #-0x98]
    // 0x77205c: cmp             w3, NULL
    // 0x772060: b.eq            #0x772328
    // 0x772064: mov             x0, x3
    // 0x772068: r2 = Null
    //     0x772068: mov             x2, NULL
    // 0x77206c: r1 = Null
    //     0x77206c: mov             x1, NULL
    // 0x772070: r4 = 60
    //     0x772070: movz            x4, #0x3c
    // 0x772074: branchIfSmi(r0, 0x772080)
    //     0x772074: tbz             w0, #0, #0x772080
    // 0x772078: r4 = LoadClassIdInstr(r0)
    //     0x772078: ldur            x4, [x0, #-1]
    //     0x77207c: ubfx            x4, x4, #0xc, #0x14
    // 0x772080: sub             x4, x4, #0x5a
    // 0x772084: cmp             x4, #2
    // 0x772088: b.ls            #0x77209c
    // 0x77208c: r8 = List<Object?>
    //     0x77208c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x772090: r3 = Null
    //     0x772090: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a518] Null
    //     0x772094: ldr             x3, [x3, #0x518]
    // 0x772098: r0 = List<Object?>()
    //     0x772098: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x77209c: ldur            x1, [fp, #-0x98]
    // 0x7720a0: r0 = LoadClassIdInstr(r1)
    //     0x7720a0: ldur            x0, [x1, #-1]
    //     0x7720a4: ubfx            x0, x0, #0xc, #0x14
    // 0x7720a8: stp             xzr, x1, [SP]
    // 0x7720ac: mov             lr, x0
    // 0x7720b0: ldr             lr, [x21, lr, lsl #3]
    // 0x7720b4: blr             lr
    // 0x7720b8: mov             x3, x0
    // 0x7720bc: stur            x3, [fp, #-0xa0]
    // 0x7720c0: cmp             w3, NULL
    // 0x7720c4: b.eq            #0x77232c
    // 0x7720c8: mov             x0, x3
    // 0x7720cc: r2 = Null
    //     0x7720cc: mov             x2, NULL
    // 0x7720d0: r1 = Null
    //     0x7720d0: mov             x1, NULL
    // 0x7720d4: r4 = 60
    //     0x7720d4: movz            x4, #0x3c
    // 0x7720d8: branchIfSmi(r0, 0x7720e4)
    //     0x7720d8: tbz             w0, #0, #0x7720e4
    // 0x7720dc: r4 = LoadClassIdInstr(r0)
    //     0x7720dc: ldur            x4, [x0, #-1]
    //     0x7720e0: ubfx            x4, x4, #0xc, #0x14
    // 0x7720e4: cmp             x4, #0x187
    // 0x7720e8: b.eq            #0x772100
    // 0x7720ec: r8 = iVa
    //     0x7720ec: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x7720f0: ldr             x8, [x8, #0x1b0]
    // 0x7720f4: r3 = Null
    //     0x7720f4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a528] Null
    //     0x7720f8: ldr             x3, [x3, #0x528]
    // 0x7720fc: r0 = DefaultTypeTest()
    //     0x7720fc: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772100: ldur            x1, [fp, #-0x98]
    // 0x772104: r0 = LoadClassIdInstr(r1)
    //     0x772104: ldur            x0, [x1, #-1]
    //     0x772108: ubfx            x0, x0, #0xc, #0x14
    // 0x77210c: r16 = 2
    //     0x77210c: movz            x16, #0x2
    // 0x772110: stp             x16, x1, [SP]
    // 0x772114: mov             lr, x0
    // 0x772118: ldr             lr, [x21, lr, lsl #3]
    // 0x77211c: blr             lr
    // 0x772120: mov             x3, x0
    // 0x772124: stur            x3, [fp, #-0xa8]
    // 0x772128: cmp             w3, NULL
    // 0x77212c: b.eq            #0x772330
    // 0x772130: mov             x0, x3
    // 0x772134: r2 = Null
    //     0x772134: mov             x2, NULL
    // 0x772138: r1 = Null
    //     0x772138: mov             x1, NULL
    // 0x77213c: r4 = 60
    //     0x77213c: movz            x4, #0x3c
    // 0x772140: branchIfSmi(r0, 0x77214c)
    //     0x772140: tbz             w0, #0, #0x77214c
    // 0x772144: r4 = LoadClassIdInstr(r0)
    //     0x772144: ldur            x4, [x0, #-1]
    //     0x772148: ubfx            x4, x4, #0xc, #0x14
    // 0x77214c: cmp             x4, #0x18b
    // 0x772150: b.eq            #0x772168
    // 0x772154: r8 = fVa
    //     0x772154: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x772158: ldr             x8, [x8, #0xd48]
    // 0x77215c: r3 = Null
    //     0x77215c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a538] Null
    //     0x772160: ldr             x3, [x3, #0x538]
    // 0x772164: r0 = DefaultTypeTest()
    //     0x772164: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772168: ldur            x1, [fp, #-0x98]
    // 0x77216c: r0 = LoadClassIdInstr(r1)
    //     0x77216c: ldur            x0, [x1, #-1]
    //     0x772170: ubfx            x0, x0, #0xc, #0x14
    // 0x772174: r16 = 4
    //     0x772174: movz            x16, #0x4
    // 0x772178: stp             x16, x1, [SP]
    // 0x77217c: mov             lr, x0
    // 0x772180: ldr             lr, [x21, lr, lsl #3]
    // 0x772184: blr             lr
    // 0x772188: mov             x3, x0
    // 0x77218c: stur            x3, [fp, #-0xb0]
    // 0x772190: cmp             w3, NULL
    // 0x772194: b.eq            #0x772334
    // 0x772198: mov             x0, x3
    // 0x77219c: r2 = Null
    //     0x77219c: mov             x2, NULL
    // 0x7721a0: r1 = Null
    //     0x7721a0: mov             x1, NULL
    // 0x7721a4: r4 = 60
    //     0x7721a4: movz            x4, #0x3c
    // 0x7721a8: branchIfSmi(r0, 0x7721b4)
    //     0x7721a8: tbz             w0, #0, #0x7721b4
    // 0x7721ac: r4 = LoadClassIdInstr(r0)
    //     0x7721ac: ldur            x4, [x0, #-1]
    //     0x7721b0: ubfx            x4, x4, #0xc, #0x14
    // 0x7721b4: cmp             x4, #0x192
    // 0x7721b8: b.eq            #0x7721d0
    // 0x7721bc: r8 = YUa
    //     0x7721bc: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a500] Type: YUa
    //     0x7721c0: ldr             x8, [x8, #0x500]
    // 0x7721c4: r3 = Null
    //     0x7721c4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a548] Null
    //     0x7721c8: ldr             x3, [x3, #0x548]
    // 0x7721cc: r0 = DefaultTypeTest()
    //     0x7721cc: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7721d0: ldur            x0, [fp, #-0x98]
    // 0x7721d4: r1 = LoadClassIdInstr(r0)
    //     0x7721d4: ldur            x1, [x0, #-1]
    //     0x7721d8: ubfx            x1, x1, #0xc, #0x14
    // 0x7721dc: r16 = 6
    //     0x7721dc: movz            x16, #0x6
    // 0x7721e0: stp             x16, x0, [SP]
    // 0x7721e4: mov             x0, x1
    // 0x7721e8: mov             lr, x0
    // 0x7721ec: ldr             lr, [x21, lr, lsl #3]
    // 0x7721f0: blr             lr
    // 0x7721f4: mov             x3, x0
    // 0x7721f8: stur            x3, [fp, #-0x98]
    // 0x7721fc: cmp             w3, NULL
    // 0x772200: b.eq            #0x772338
    // 0x772204: mov             x0, x3
    // 0x772208: r2 = Null
    //     0x772208: mov             x2, NULL
    // 0x77220c: r1 = Null
    //     0x77220c: mov             x1, NULL
    // 0x772210: r4 = 60
    //     0x772210: movz            x4, #0x3c
    // 0x772214: branchIfSmi(r0, 0x772220)
    //     0x772214: tbz             w0, #0, #0x772220
    // 0x772218: r4 = LoadClassIdInstr(r0)
    //     0x772218: ldur            x4, [x0, #-1]
    //     0x77221c: ubfx            x4, x4, #0xc, #0x14
    // 0x772220: cmp             x4, #0x18f
    // 0x772224: b.eq            #0x77223c
    // 0x772228: r8 = bVa
    //     0x772228: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a558] Type: bVa
    //     0x77222c: ldr             x8, [x8, #0x558]
    // 0x772230: r3 = Null
    //     0x772230: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a560] Null
    //     0x772234: ldr             x3, [x3, #0x560]
    // 0x772238: r0 = DefaultTypeTest()
    //     0x772238: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77223c: ldur            x1, [fp, #-0xa0]
    // 0x772240: LoadField: r2 = r1->field_23
    //     0x772240: ldur            w2, [x1, #0x23]
    // 0x772244: DecompressPointer r2
    //     0x772244: add             x2, x2, HEAP, lsl #32
    // 0x772248: stur            x2, [fp, #-0xb8]
    // 0x77224c: cmp             w2, NULL
    // 0x772250: b.eq            #0x77227c
    // 0x772254: stp             x1, x2, [SP, #0x18]
    // 0x772258: ldur            x16, [fp, #-0xa8]
    // 0x77225c: ldur            lr, [fp, #-0xb0]
    // 0x772260: stp             lr, x16, [SP, #8]
    // 0x772264: ldur            x16, [fp, #-0x98]
    // 0x772268: str             x16, [SP]
    // 0x77226c: mov             x0, x2
    // 0x772270: ClosureCall
    //     0x772270: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x772274: ldur            x2, [x0, #0x1f]
    //     0x772278: blr             x2
    // 0x77227c: r16 = true
    //     0x77227c: add             x16, NULL, #0x20  ; true
    // 0x772280: str             x16, [SP]
    // 0x772284: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x772284: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x772288: ldr             x4, [x4, #0x870]
    // 0x77228c: r0 = call 0x392d98
    //     0x77228c: bl              #0x392d98
    // 0x772290: r0 = ReturnAsyncNotFuture()
    //     0x772290: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772294: sub             SP, fp, #0xe0
    // 0x772298: r1 = 60
    //     0x772298: movz            x1, #0x3c
    // 0x77229c: branchIfSmi(r0, 0x7722a8)
    //     0x77229c: tbz             w0, #0, #0x7722a8
    // 0x7722a0: r1 = LoadClassIdInstr(r0)
    //     0x7722a0: ldur            x1, [x0, #-1]
    //     0x7722a4: ubfx            x1, x1, #0xc, #0x14
    // 0x7722a8: cmp             x1, #0x5e5
    // 0x7722ac: b.ne            #0x7722c4
    // 0x7722b0: str             x0, [SP]
    // 0x7722b4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7722b4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7722b8: ldr             x4, [x4, #0x878]
    // 0x7722bc: r0 = call 0x392d98
    //     0x7722bc: bl              #0x392d98
    // 0x7722c0: r0 = ReturnAsyncNotFuture()
    //     0x7722c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7722c4: r1 = 60
    //     0x7722c4: movz            x1, #0x3c
    // 0x7722c8: branchIfSmi(r0, 0x7722d4)
    //     0x7722c8: tbz             w0, #0, #0x7722d4
    // 0x7722cc: r1 = LoadClassIdInstr(r0)
    //     0x7722cc: ldur            x1, [x0, #-1]
    //     0x7722d0: ubfx            x1, x1, #0xc, #0x14
    // 0x7722d4: str             x0, [SP]
    // 0x7722d8: mov             x0, x1
    // 0x7722dc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7722dc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7722e0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7722e0: movz            x17, #0x3a5d
    //     0x7722e4: add             lr, x0, x17
    //     0x7722e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7722ec: blr             lr
    // 0x7722f0: stur            x0, [fp, #-0x90]
    // 0x7722f4: r0 = Mha()
    //     0x7722f4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7722f8: mov             x1, x0
    // 0x7722fc: r0 = "error"
    //     0x7722fc: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x772300: StoreField: r1->field_7 = r0
    //     0x772300: stur            w0, [x1, #7]
    // 0x772304: ldur            x0, [fp, #-0x90]
    // 0x772308: StoreField: r1->field_b = r0
    //     0x772308: stur            w0, [x1, #0xb]
    // 0x77230c: str             x1, [SP]
    // 0x772310: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772310: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772314: ldr             x4, [x4, #0x878]
    // 0x772318: r0 = call 0x392d98
    //     0x772318: bl              #0x392d98
    // 0x77231c: r0 = ReturnAsyncNotFuture()
    //     0x77231c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772320: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x772320: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x772324: b               #0x77204c
    // 0x772328: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772328: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77232c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77232c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772330: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772330: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772334: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772334: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772338: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772338: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77233c, size: 0x330
    // 0x77233c: EnterFrame
    //     0x77233c: stp             fp, lr, [SP, #-0x10]!
    //     0x772340: mov             fp, SP
    // 0x772344: AllocStack(0xe0)
    //     0x772344: sub             SP, SP, #0xe0
    // 0x772348: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x772348: stur            NULL, [fp, #-8]
    //     0x77234c: movz            x0, #0
    //     0x772350: add             x1, fp, w0, sxtw #2
    //     0x772354: ldr             x1, [x1, #0x18]
    //     0x772358: add             x2, fp, w0, sxtw #2
    //     0x77235c: ldr             x2, [x2, #0x10]
    //     0x772360: stur            x2, [fp, #-0x98]
    //     0x772364: ldur            w3, [x1, #0x17]
    //     0x772368: add             x3, x3, HEAP, lsl #32
    //     0x77236c: stur            x3, [fp, #-0x90]
    // 0x772370: CheckStackOverflow
    //     0x772370: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x772374: cmp             SP, x16
    //     0x772378: b.ls            #0x772650
    // 0x77237c: InitAsync() -> Future<List<Object?>>
    //     0x77237c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x772380: ldr             x0, [x0, #0x1d0]
    //     0x772384: bl              #0x74ada8  ; InitAsyncStub
    // 0x772388: ldur            x3, [fp, #-0x98]
    // 0x77238c: cmp             w3, NULL
    // 0x772390: b.eq            #0x772658
    // 0x772394: mov             x0, x3
    // 0x772398: r2 = Null
    //     0x772398: mov             x2, NULL
    // 0x77239c: r1 = Null
    //     0x77239c: mov             x1, NULL
    // 0x7723a0: r4 = 60
    //     0x7723a0: movz            x4, #0x3c
    // 0x7723a4: branchIfSmi(r0, 0x7723b0)
    //     0x7723a4: tbz             w0, #0, #0x7723b0
    // 0x7723a8: r4 = LoadClassIdInstr(r0)
    //     0x7723a8: ldur            x4, [x0, #-1]
    //     0x7723ac: ubfx            x4, x4, #0xc, #0x14
    // 0x7723b0: sub             x4, x4, #0x5a
    // 0x7723b4: cmp             x4, #2
    // 0x7723b8: b.ls            #0x7723cc
    // 0x7723bc: r8 = List<Object?>
    //     0x7723bc: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7723c0: r3 = Null
    //     0x7723c0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a570] Null
    //     0x7723c4: ldr             x3, [x3, #0x570]
    // 0x7723c8: r0 = List<Object?>()
    //     0x7723c8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7723cc: ldur            x1, [fp, #-0x98]
    // 0x7723d0: r0 = LoadClassIdInstr(r1)
    //     0x7723d0: ldur            x0, [x1, #-1]
    //     0x7723d4: ubfx            x0, x0, #0xc, #0x14
    // 0x7723d8: stp             xzr, x1, [SP]
    // 0x7723dc: mov             lr, x0
    // 0x7723e0: ldr             lr, [x21, lr, lsl #3]
    // 0x7723e4: blr             lr
    // 0x7723e8: mov             x3, x0
    // 0x7723ec: stur            x3, [fp, #-0xa0]
    // 0x7723f0: cmp             w3, NULL
    // 0x7723f4: b.eq            #0x77265c
    // 0x7723f8: mov             x0, x3
    // 0x7723fc: r2 = Null
    //     0x7723fc: mov             x2, NULL
    // 0x772400: r1 = Null
    //     0x772400: mov             x1, NULL
    // 0x772404: r4 = 60
    //     0x772404: movz            x4, #0x3c
    // 0x772408: branchIfSmi(r0, 0x772414)
    //     0x772408: tbz             w0, #0, #0x772414
    // 0x77240c: r4 = LoadClassIdInstr(r0)
    //     0x77240c: ldur            x4, [x0, #-1]
    //     0x772410: ubfx            x4, x4, #0xc, #0x14
    // 0x772414: cmp             x4, #0x187
    // 0x772418: b.eq            #0x772430
    // 0x77241c: r8 = iVa
    //     0x77241c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x772420: ldr             x8, [x8, #0x1b0]
    // 0x772424: r3 = Null
    //     0x772424: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a580] Null
    //     0x772428: ldr             x3, [x3, #0x580]
    // 0x77242c: r0 = DefaultTypeTest()
    //     0x77242c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772430: ldur            x1, [fp, #-0x98]
    // 0x772434: r0 = LoadClassIdInstr(r1)
    //     0x772434: ldur            x0, [x1, #-1]
    //     0x772438: ubfx            x0, x0, #0xc, #0x14
    // 0x77243c: r16 = 2
    //     0x77243c: movz            x16, #0x2
    // 0x772440: stp             x16, x1, [SP]
    // 0x772444: mov             lr, x0
    // 0x772448: ldr             lr, [x21, lr, lsl #3]
    // 0x77244c: blr             lr
    // 0x772450: mov             x3, x0
    // 0x772454: stur            x3, [fp, #-0xa8]
    // 0x772458: cmp             w3, NULL
    // 0x77245c: b.eq            #0x772660
    // 0x772460: mov             x0, x3
    // 0x772464: r2 = Null
    //     0x772464: mov             x2, NULL
    // 0x772468: r1 = Null
    //     0x772468: mov             x1, NULL
    // 0x77246c: r4 = 60
    //     0x77246c: movz            x4, #0x3c
    // 0x772470: branchIfSmi(r0, 0x77247c)
    //     0x772470: tbz             w0, #0, #0x77247c
    // 0x772474: r4 = LoadClassIdInstr(r0)
    //     0x772474: ldur            x4, [x0, #-1]
    //     0x772478: ubfx            x4, x4, #0xc, #0x14
    // 0x77247c: cmp             x4, #0x18b
    // 0x772480: b.eq            #0x772498
    // 0x772484: r8 = fVa
    //     0x772484: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x772488: ldr             x8, [x8, #0xd48]
    // 0x77248c: r3 = Null
    //     0x77248c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a590] Null
    //     0x772490: ldr             x3, [x3, #0x590]
    // 0x772494: r0 = DefaultTypeTest()
    //     0x772494: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772498: ldur            x1, [fp, #-0x98]
    // 0x77249c: r0 = LoadClassIdInstr(r1)
    //     0x77249c: ldur            x0, [x1, #-1]
    //     0x7724a0: ubfx            x0, x0, #0xc, #0x14
    // 0x7724a4: r16 = 4
    //     0x7724a4: movz            x16, #0x4
    // 0x7724a8: stp             x16, x1, [SP]
    // 0x7724ac: mov             lr, x0
    // 0x7724b0: ldr             lr, [x21, lr, lsl #3]
    // 0x7724b4: blr             lr
    // 0x7724b8: mov             x3, x0
    // 0x7724bc: stur            x3, [fp, #-0xb0]
    // 0x7724c0: cmp             w3, NULL
    // 0x7724c4: b.eq            #0x772664
    // 0x7724c8: mov             x0, x3
    // 0x7724cc: r2 = Null
    //     0x7724cc: mov             x2, NULL
    // 0x7724d0: r1 = Null
    //     0x7724d0: mov             x1, NULL
    // 0x7724d4: r4 = 60
    //     0x7724d4: movz            x4, #0x3c
    // 0x7724d8: branchIfSmi(r0, 0x7724e4)
    //     0x7724d8: tbz             w0, #0, #0x7724e4
    // 0x7724dc: r4 = LoadClassIdInstr(r0)
    //     0x7724dc: ldur            x4, [x0, #-1]
    //     0x7724e0: ubfx            x4, x4, #0xc, #0x14
    // 0x7724e4: cmp             x4, #0x192
    // 0x7724e8: b.eq            #0x772500
    // 0x7724ec: r8 = YUa
    //     0x7724ec: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a500] Type: YUa
    //     0x7724f0: ldr             x8, [x8, #0x500]
    // 0x7724f4: r3 = Null
    //     0x7724f4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5a0] Null
    //     0x7724f8: ldr             x3, [x3, #0x5a0]
    // 0x7724fc: r0 = DefaultTypeTest()
    //     0x7724fc: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772500: ldur            x0, [fp, #-0x98]
    // 0x772504: r1 = LoadClassIdInstr(r0)
    //     0x772504: ldur            x1, [x0, #-1]
    //     0x772508: ubfx            x1, x1, #0xc, #0x14
    // 0x77250c: r16 = 6
    //     0x77250c: movz            x16, #0x6
    // 0x772510: stp             x16, x0, [SP]
    // 0x772514: mov             x0, x1
    // 0x772518: mov             lr, x0
    // 0x77251c: ldr             lr, [x21, lr, lsl #3]
    // 0x772520: blr             lr
    // 0x772524: mov             x3, x0
    // 0x772528: stur            x3, [fp, #-0x98]
    // 0x77252c: cmp             w3, NULL
    // 0x772530: b.eq            #0x772668
    // 0x772534: mov             x0, x3
    // 0x772538: r2 = Null
    //     0x772538: mov             x2, NULL
    // 0x77253c: r1 = Null
    //     0x77253c: mov             x1, NULL
    // 0x772540: r4 = 60
    //     0x772540: movz            x4, #0x3c
    // 0x772544: branchIfSmi(r0, 0x772550)
    //     0x772544: tbz             w0, #0, #0x772550
    // 0x772548: r4 = LoadClassIdInstr(r0)
    //     0x772548: ldur            x4, [x0, #-1]
    //     0x77254c: ubfx            x4, x4, #0xc, #0x14
    // 0x772550: cmp             x4, #0x190
    // 0x772554: b.eq            #0x77256c
    // 0x772558: r8 = aVa
    //     0x772558: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a5b0] Type: aVa
    //     0x77255c: ldr             x8, [x8, #0x5b0]
    // 0x772560: r3 = Null
    //     0x772560: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5b8] Null
    //     0x772564: ldr             x3, [x3, #0x5b8]
    // 0x772568: r0 = DefaultTypeTest()
    //     0x772568: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77256c: ldur            x1, [fp, #-0xa0]
    // 0x772570: LoadField: r2 = r1->field_1f
    //     0x772570: ldur            w2, [x1, #0x1f]
    // 0x772574: DecompressPointer r2
    //     0x772574: add             x2, x2, HEAP, lsl #32
    // 0x772578: stur            x2, [fp, #-0xb8]
    // 0x77257c: cmp             w2, NULL
    // 0x772580: b.eq            #0x7725ac
    // 0x772584: stp             x1, x2, [SP, #0x18]
    // 0x772588: ldur            x16, [fp, #-0xa8]
    // 0x77258c: ldur            lr, [fp, #-0xb0]
    // 0x772590: stp             lr, x16, [SP, #8]
    // 0x772594: ldur            x16, [fp, #-0x98]
    // 0x772598: str             x16, [SP]
    // 0x77259c: mov             x0, x2
    // 0x7725a0: ClosureCall
    //     0x7725a0: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x7725a4: ldur            x2, [x0, #0x1f]
    //     0x7725a8: blr             x2
    // 0x7725ac: r16 = true
    //     0x7725ac: add             x16, NULL, #0x20  ; true
    // 0x7725b0: str             x16, [SP]
    // 0x7725b4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7725b4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7725b8: ldr             x4, [x4, #0x870]
    // 0x7725bc: r0 = call 0x392d98
    //     0x7725bc: bl              #0x392d98
    // 0x7725c0: r0 = ReturnAsyncNotFuture()
    //     0x7725c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7725c4: sub             SP, fp, #0xe0
    // 0x7725c8: r1 = 60
    //     0x7725c8: movz            x1, #0x3c
    // 0x7725cc: branchIfSmi(r0, 0x7725d8)
    //     0x7725cc: tbz             w0, #0, #0x7725d8
    // 0x7725d0: r1 = LoadClassIdInstr(r0)
    //     0x7725d0: ldur            x1, [x0, #-1]
    //     0x7725d4: ubfx            x1, x1, #0xc, #0x14
    // 0x7725d8: cmp             x1, #0x5e5
    // 0x7725dc: b.ne            #0x7725f4
    // 0x7725e0: str             x0, [SP]
    // 0x7725e4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7725e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7725e8: ldr             x4, [x4, #0x878]
    // 0x7725ec: r0 = call 0x392d98
    //     0x7725ec: bl              #0x392d98
    // 0x7725f0: r0 = ReturnAsyncNotFuture()
    //     0x7725f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7725f4: r1 = 60
    //     0x7725f4: movz            x1, #0x3c
    // 0x7725f8: branchIfSmi(r0, 0x772604)
    //     0x7725f8: tbz             w0, #0, #0x772604
    // 0x7725fc: r1 = LoadClassIdInstr(r0)
    //     0x7725fc: ldur            x1, [x0, #-1]
    //     0x772600: ubfx            x1, x1, #0xc, #0x14
    // 0x772604: str             x0, [SP]
    // 0x772608: mov             x0, x1
    // 0x77260c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x77260c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x772610: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x772610: movz            x17, #0x3a5d
    //     0x772614: add             lr, x0, x17
    //     0x772618: ldr             lr, [x21, lr, lsl #3]
    //     0x77261c: blr             lr
    // 0x772620: stur            x0, [fp, #-0x90]
    // 0x772624: r0 = Mha()
    //     0x772624: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x772628: mov             x1, x0
    // 0x77262c: r0 = "error"
    //     0x77262c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x772630: StoreField: r1->field_7 = r0
    //     0x772630: stur            w0, [x1, #7]
    // 0x772634: ldur            x0, [fp, #-0x90]
    // 0x772638: StoreField: r1->field_b = r0
    //     0x772638: stur            w0, [x1, #0xb]
    // 0x77263c: str             x1, [SP]
    // 0x772640: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772640: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772644: ldr             x4, [x4, #0x878]
    // 0x772648: r0 = call 0x392d98
    //     0x772648: bl              #0x392d98
    // 0x77264c: r0 = ReturnAsyncNotFuture()
    //     0x77264c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772650: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x772650: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x772654: b               #0x77237c
    // 0x772658: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772658: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77265c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77265c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772660: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772660: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772664: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772664: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772668: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772668: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77266c, size: 0x330
    // 0x77266c: EnterFrame
    //     0x77266c: stp             fp, lr, [SP, #-0x10]!
    //     0x772670: mov             fp, SP
    // 0x772674: AllocStack(0xe0)
    //     0x772674: sub             SP, SP, #0xe0
    // 0x772678: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x772678: stur            NULL, [fp, #-8]
    //     0x77267c: movz            x0, #0
    //     0x772680: add             x1, fp, w0, sxtw #2
    //     0x772684: ldr             x1, [x1, #0x18]
    //     0x772688: add             x2, fp, w0, sxtw #2
    //     0x77268c: ldr             x2, [x2, #0x10]
    //     0x772690: stur            x2, [fp, #-0x98]
    //     0x772694: ldur            w3, [x1, #0x17]
    //     0x772698: add             x3, x3, HEAP, lsl #32
    //     0x77269c: stur            x3, [fp, #-0x90]
    // 0x7726a0: CheckStackOverflow
    //     0x7726a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7726a4: cmp             SP, x16
    //     0x7726a8: b.ls            #0x772980
    // 0x7726ac: InitAsync() -> Future<List<Object?>>
    //     0x7726ac: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7726b0: ldr             x0, [x0, #0x1d0]
    //     0x7726b4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7726b8: ldur            x3, [fp, #-0x98]
    // 0x7726bc: cmp             w3, NULL
    // 0x7726c0: b.eq            #0x772988
    // 0x7726c4: mov             x0, x3
    // 0x7726c8: r2 = Null
    //     0x7726c8: mov             x2, NULL
    // 0x7726cc: r1 = Null
    //     0x7726cc: mov             x1, NULL
    // 0x7726d0: r4 = 60
    //     0x7726d0: movz            x4, #0x3c
    // 0x7726d4: branchIfSmi(r0, 0x7726e0)
    //     0x7726d4: tbz             w0, #0, #0x7726e0
    // 0x7726d8: r4 = LoadClassIdInstr(r0)
    //     0x7726d8: ldur            x4, [x0, #-1]
    //     0x7726dc: ubfx            x4, x4, #0xc, #0x14
    // 0x7726e0: sub             x4, x4, #0x5a
    // 0x7726e4: cmp             x4, #2
    // 0x7726e8: b.ls            #0x7726fc
    // 0x7726ec: r8 = List<Object?>
    //     0x7726ec: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7726f0: r3 = Null
    //     0x7726f0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5c8] Null
    //     0x7726f4: ldr             x3, [x3, #0x5c8]
    // 0x7726f8: r0 = List<Object?>()
    //     0x7726f8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7726fc: ldur            x1, [fp, #-0x98]
    // 0x772700: r0 = LoadClassIdInstr(r1)
    //     0x772700: ldur            x0, [x1, #-1]
    //     0x772704: ubfx            x0, x0, #0xc, #0x14
    // 0x772708: stp             xzr, x1, [SP]
    // 0x77270c: mov             lr, x0
    // 0x772710: ldr             lr, [x21, lr, lsl #3]
    // 0x772714: blr             lr
    // 0x772718: mov             x3, x0
    // 0x77271c: stur            x3, [fp, #-0xa0]
    // 0x772720: cmp             w3, NULL
    // 0x772724: b.eq            #0x77298c
    // 0x772728: mov             x0, x3
    // 0x77272c: r2 = Null
    //     0x77272c: mov             x2, NULL
    // 0x772730: r1 = Null
    //     0x772730: mov             x1, NULL
    // 0x772734: r4 = 60
    //     0x772734: movz            x4, #0x3c
    // 0x772738: branchIfSmi(r0, 0x772744)
    //     0x772738: tbz             w0, #0, #0x772744
    // 0x77273c: r4 = LoadClassIdInstr(r0)
    //     0x77273c: ldur            x4, [x0, #-1]
    //     0x772740: ubfx            x4, x4, #0xc, #0x14
    // 0x772744: cmp             x4, #0x187
    // 0x772748: b.eq            #0x772760
    // 0x77274c: r8 = iVa
    //     0x77274c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x772750: ldr             x8, [x8, #0x1b0]
    // 0x772754: r3 = Null
    //     0x772754: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5d8] Null
    //     0x772758: ldr             x3, [x3, #0x5d8]
    // 0x77275c: r0 = DefaultTypeTest()
    //     0x77275c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772760: ldur            x1, [fp, #-0x98]
    // 0x772764: r0 = LoadClassIdInstr(r1)
    //     0x772764: ldur            x0, [x1, #-1]
    //     0x772768: ubfx            x0, x0, #0xc, #0x14
    // 0x77276c: r16 = 2
    //     0x77276c: movz            x16, #0x2
    // 0x772770: stp             x16, x1, [SP]
    // 0x772774: mov             lr, x0
    // 0x772778: ldr             lr, [x21, lr, lsl #3]
    // 0x77277c: blr             lr
    // 0x772780: mov             x3, x0
    // 0x772784: stur            x3, [fp, #-0xa8]
    // 0x772788: cmp             w3, NULL
    // 0x77278c: b.eq            #0x772990
    // 0x772790: mov             x0, x3
    // 0x772794: r2 = Null
    //     0x772794: mov             x2, NULL
    // 0x772798: r1 = Null
    //     0x772798: mov             x1, NULL
    // 0x77279c: r4 = 60
    //     0x77279c: movz            x4, #0x3c
    // 0x7727a0: branchIfSmi(r0, 0x7727ac)
    //     0x7727a0: tbz             w0, #0, #0x7727ac
    // 0x7727a4: r4 = LoadClassIdInstr(r0)
    //     0x7727a4: ldur            x4, [x0, #-1]
    //     0x7727a8: ubfx            x4, x4, #0xc, #0x14
    // 0x7727ac: cmp             x4, #0x18b
    // 0x7727b0: b.eq            #0x7727c8
    // 0x7727b4: r8 = fVa
    //     0x7727b4: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x7727b8: ldr             x8, [x8, #0xd48]
    // 0x7727bc: r3 = Null
    //     0x7727bc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5e8] Null
    //     0x7727c0: ldr             x3, [x3, #0x5e8]
    // 0x7727c4: r0 = DefaultTypeTest()
    //     0x7727c4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7727c8: ldur            x1, [fp, #-0x98]
    // 0x7727cc: r0 = LoadClassIdInstr(r1)
    //     0x7727cc: ldur            x0, [x1, #-1]
    //     0x7727d0: ubfx            x0, x0, #0xc, #0x14
    // 0x7727d4: r16 = 4
    //     0x7727d4: movz            x16, #0x4
    // 0x7727d8: stp             x16, x1, [SP]
    // 0x7727dc: mov             lr, x0
    // 0x7727e0: ldr             lr, [x21, lr, lsl #3]
    // 0x7727e4: blr             lr
    // 0x7727e8: mov             x3, x0
    // 0x7727ec: stur            x3, [fp, #-0xb0]
    // 0x7727f0: cmp             w3, NULL
    // 0x7727f4: b.eq            #0x772994
    // 0x7727f8: mov             x0, x3
    // 0x7727fc: r2 = Null
    //     0x7727fc: mov             x2, NULL
    // 0x772800: r1 = Null
    //     0x772800: mov             x1, NULL
    // 0x772804: r4 = 60
    //     0x772804: movz            x4, #0x3c
    // 0x772808: branchIfSmi(r0, 0x772814)
    //     0x772808: tbz             w0, #0, #0x772814
    // 0x77280c: r4 = LoadClassIdInstr(r0)
    //     0x77280c: ldur            x4, [x0, #-1]
    //     0x772810: ubfx            x4, x4, #0xc, #0x14
    // 0x772814: cmp             x4, #0x192
    // 0x772818: b.eq            #0x772830
    // 0x77281c: r8 = YUa
    //     0x77281c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a500] Type: YUa
    //     0x772820: ldr             x8, [x8, #0x500]
    // 0x772824: r3 = Null
    //     0x772824: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a5f8] Null
    //     0x772828: ldr             x3, [x3, #0x5f8]
    // 0x77282c: r0 = DefaultTypeTest()
    //     0x77282c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772830: ldur            x0, [fp, #-0x98]
    // 0x772834: r1 = LoadClassIdInstr(r0)
    //     0x772834: ldur            x1, [x0, #-1]
    //     0x772838: ubfx            x1, x1, #0xc, #0x14
    // 0x77283c: r16 = 6
    //     0x77283c: movz            x16, #0x6
    // 0x772840: stp             x16, x0, [SP]
    // 0x772844: mov             x0, x1
    // 0x772848: mov             lr, x0
    // 0x77284c: ldr             lr, [x21, lr, lsl #3]
    // 0x772850: blr             lr
    // 0x772854: mov             x3, x0
    // 0x772858: stur            x3, [fp, #-0x98]
    // 0x77285c: cmp             w3, NULL
    // 0x772860: b.eq            #0x772998
    // 0x772864: mov             x0, x3
    // 0x772868: r2 = Null
    //     0x772868: mov             x2, NULL
    // 0x77286c: r1 = Null
    //     0x77286c: mov             x1, NULL
    // 0x772870: r4 = 60
    //     0x772870: movz            x4, #0x3c
    // 0x772874: branchIfSmi(r0, 0x772880)
    //     0x772874: tbz             w0, #0, #0x772880
    // 0x772878: r4 = LoadClassIdInstr(r0)
    //     0x772878: ldur            x4, [x0, #-1]
    //     0x77287c: ubfx            x4, x4, #0xc, #0x14
    // 0x772880: cmp             x4, #0x191
    // 0x772884: b.eq            #0x77289c
    // 0x772888: r8 = ZUa
    //     0x772888: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a608] Type: ZUa
    //     0x77288c: ldr             x8, [x8, #0x608]
    // 0x772890: r3 = Null
    //     0x772890: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a610] Null
    //     0x772894: ldr             x3, [x3, #0x610]
    // 0x772898: r0 = DefaultTypeTest()
    //     0x772898: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x77289c: ldur            x1, [fp, #-0xa0]
    // 0x7728a0: LoadField: r2 = r1->field_1b
    //     0x7728a0: ldur            w2, [x1, #0x1b]
    // 0x7728a4: DecompressPointer r2
    //     0x7728a4: add             x2, x2, HEAP, lsl #32
    // 0x7728a8: stur            x2, [fp, #-0xb8]
    // 0x7728ac: cmp             w2, NULL
    // 0x7728b0: b.eq            #0x7728dc
    // 0x7728b4: stp             x1, x2, [SP, #0x18]
    // 0x7728b8: ldur            x16, [fp, #-0xa8]
    // 0x7728bc: ldur            lr, [fp, #-0xb0]
    // 0x7728c0: stp             lr, x16, [SP, #8]
    // 0x7728c4: ldur            x16, [fp, #-0x98]
    // 0x7728c8: str             x16, [SP]
    // 0x7728cc: mov             x0, x2
    // 0x7728d0: ClosureCall
    //     0x7728d0: ldr             x4, [PP, #0xcb0]  ; [pp+0xcb0] List(5) [0, 0x5, 0x5, 0x5, Null]
    //     0x7728d4: ldur            x2, [x0, #0x1f]
    //     0x7728d8: blr             x2
    // 0x7728dc: r16 = true
    //     0x7728dc: add             x16, NULL, #0x20  ; true
    // 0x7728e0: str             x16, [SP]
    // 0x7728e4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7728e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7728e8: ldr             x4, [x4, #0x870]
    // 0x7728ec: r0 = call 0x392d98
    //     0x7728ec: bl              #0x392d98
    // 0x7728f0: r0 = ReturnAsyncNotFuture()
    //     0x7728f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7728f4: sub             SP, fp, #0xe0
    // 0x7728f8: r1 = 60
    //     0x7728f8: movz            x1, #0x3c
    // 0x7728fc: branchIfSmi(r0, 0x772908)
    //     0x7728fc: tbz             w0, #0, #0x772908
    // 0x772900: r1 = LoadClassIdInstr(r0)
    //     0x772900: ldur            x1, [x0, #-1]
    //     0x772904: ubfx            x1, x1, #0xc, #0x14
    // 0x772908: cmp             x1, #0x5e5
    // 0x77290c: b.ne            #0x772924
    // 0x772910: str             x0, [SP]
    // 0x772914: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772914: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772918: ldr             x4, [x4, #0x878]
    // 0x77291c: r0 = call 0x392d98
    //     0x77291c: bl              #0x392d98
    // 0x772920: r0 = ReturnAsyncNotFuture()
    //     0x772920: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772924: r1 = 60
    //     0x772924: movz            x1, #0x3c
    // 0x772928: branchIfSmi(r0, 0x772934)
    //     0x772928: tbz             w0, #0, #0x772934
    // 0x77292c: r1 = LoadClassIdInstr(r0)
    //     0x77292c: ldur            x1, [x0, #-1]
    //     0x772930: ubfx            x1, x1, #0xc, #0x14
    // 0x772934: str             x0, [SP]
    // 0x772938: mov             x0, x1
    // 0x77293c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x77293c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x772940: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x772940: movz            x17, #0x3a5d
    //     0x772944: add             lr, x0, x17
    //     0x772948: ldr             lr, [x21, lr, lsl #3]
    //     0x77294c: blr             lr
    // 0x772950: stur            x0, [fp, #-0x90]
    // 0x772954: r0 = Mha()
    //     0x772954: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x772958: mov             x1, x0
    // 0x77295c: r0 = "error"
    //     0x77295c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x772960: StoreField: r1->field_7 = r0
    //     0x772960: stur            w0, [x1, #7]
    // 0x772964: ldur            x0, [fp, #-0x90]
    // 0x772968: StoreField: r1->field_b = r0
    //     0x772968: stur            w0, [x1, #0xb]
    // 0x77296c: str             x1, [SP]
    // 0x772970: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772970: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772974: ldr             x4, [x4, #0x878]
    // 0x772978: r0 = call 0x392d98
    //     0x772978: bl              #0x392d98
    // 0x77297c: r0 = ReturnAsyncNotFuture()
    //     0x77297c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772980: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x772980: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x772984: b               #0x7726ac
    // 0x772988: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772988: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77298c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77298c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772990: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772990: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772994: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772994: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772998: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772998: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77299c, size: 0x2bc
    // 0x77299c: EnterFrame
    //     0x77299c: stp             fp, lr, [SP, #-0x10]!
    //     0x7729a0: mov             fp, SP
    // 0x7729a4: AllocStack(0xc8)
    //     0x7729a4: sub             SP, SP, #0xc8
    // 0x7729a8: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x7729a8: stur            NULL, [fp, #-8]
    //     0x7729ac: movz            x0, #0
    //     0x7729b0: add             x1, fp, w0, sxtw #2
    //     0x7729b4: ldr             x1, [x1, #0x18]
    //     0x7729b8: add             x2, fp, w0, sxtw #2
    //     0x7729bc: ldr             x2, [x2, #0x10]
    //     0x7729c0: stur            x2, [fp, #-0x90]
    //     0x7729c4: ldur            w3, [x1, #0x17]
    //     0x7729c8: add             x3, x3, HEAP, lsl #32
    //     0x7729cc: stur            x3, [fp, #-0x88]
    // 0x7729d0: CheckStackOverflow
    //     0x7729d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7729d4: cmp             SP, x16
    //     0x7729d8: b.ls            #0x772c40
    // 0x7729dc: InitAsync() -> Future<List<Object?>>
    //     0x7729dc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7729e0: ldr             x0, [x0, #0x1d0]
    //     0x7729e4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7729e8: ldur            x3, [fp, #-0x90]
    // 0x7729ec: cmp             w3, NULL
    // 0x7729f0: b.eq            #0x772c48
    // 0x7729f4: mov             x0, x3
    // 0x7729f8: r2 = Null
    //     0x7729f8: mov             x2, NULL
    // 0x7729fc: r1 = Null
    //     0x7729fc: mov             x1, NULL
    // 0x772a00: r4 = 60
    //     0x772a00: movz            x4, #0x3c
    // 0x772a04: branchIfSmi(r0, 0x772a10)
    //     0x772a04: tbz             w0, #0, #0x772a10
    // 0x772a08: r4 = LoadClassIdInstr(r0)
    //     0x772a08: ldur            x4, [x0, #-1]
    //     0x772a0c: ubfx            x4, x4, #0xc, #0x14
    // 0x772a10: sub             x4, x4, #0x5a
    // 0x772a14: cmp             x4, #2
    // 0x772a18: b.ls            #0x772a2c
    // 0x772a1c: r8 = List<Object?>
    //     0x772a1c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x772a20: r3 = Null
    //     0x772a20: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a620] Null
    //     0x772a24: ldr             x3, [x3, #0x620]
    // 0x772a28: r0 = List<Object?>()
    //     0x772a28: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x772a2c: ldur            x1, [fp, #-0x90]
    // 0x772a30: r0 = LoadClassIdInstr(r1)
    //     0x772a30: ldur            x0, [x1, #-1]
    //     0x772a34: ubfx            x0, x0, #0xc, #0x14
    // 0x772a38: stp             xzr, x1, [SP]
    // 0x772a3c: mov             lr, x0
    // 0x772a40: ldr             lr, [x21, lr, lsl #3]
    // 0x772a44: blr             lr
    // 0x772a48: mov             x3, x0
    // 0x772a4c: stur            x3, [fp, #-0x98]
    // 0x772a50: cmp             w3, NULL
    // 0x772a54: b.eq            #0x772c4c
    // 0x772a58: mov             x0, x3
    // 0x772a5c: r2 = Null
    //     0x772a5c: mov             x2, NULL
    // 0x772a60: r1 = Null
    //     0x772a60: mov             x1, NULL
    // 0x772a64: r4 = 60
    //     0x772a64: movz            x4, #0x3c
    // 0x772a68: branchIfSmi(r0, 0x772a74)
    //     0x772a68: tbz             w0, #0, #0x772a74
    // 0x772a6c: r4 = LoadClassIdInstr(r0)
    //     0x772a6c: ldur            x4, [x0, #-1]
    //     0x772a70: ubfx            x4, x4, #0xc, #0x14
    // 0x772a74: cmp             x4, #0x187
    // 0x772a78: b.eq            #0x772a90
    // 0x772a7c: r8 = iVa
    //     0x772a7c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x772a80: ldr             x8, [x8, #0x1b0]
    // 0x772a84: r3 = Null
    //     0x772a84: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a630] Null
    //     0x772a88: ldr             x3, [x3, #0x630]
    // 0x772a8c: r0 = DefaultTypeTest()
    //     0x772a8c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772a90: ldur            x1, [fp, #-0x90]
    // 0x772a94: r0 = LoadClassIdInstr(r1)
    //     0x772a94: ldur            x0, [x1, #-1]
    //     0x772a98: ubfx            x0, x0, #0xc, #0x14
    // 0x772a9c: r16 = 2
    //     0x772a9c: movz            x16, #0x2
    // 0x772aa0: stp             x16, x1, [SP]
    // 0x772aa4: mov             lr, x0
    // 0x772aa8: ldr             lr, [x21, lr, lsl #3]
    // 0x772aac: blr             lr
    // 0x772ab0: mov             x3, x0
    // 0x772ab4: stur            x3, [fp, #-0xa0]
    // 0x772ab8: cmp             w3, NULL
    // 0x772abc: b.eq            #0x772c50
    // 0x772ac0: mov             x0, x3
    // 0x772ac4: r2 = Null
    //     0x772ac4: mov             x2, NULL
    // 0x772ac8: r1 = Null
    //     0x772ac8: mov             x1, NULL
    // 0x772acc: r4 = 60
    //     0x772acc: movz            x4, #0x3c
    // 0x772ad0: branchIfSmi(r0, 0x772adc)
    //     0x772ad0: tbz             w0, #0, #0x772adc
    // 0x772ad4: r4 = LoadClassIdInstr(r0)
    //     0x772ad4: ldur            x4, [x0, #-1]
    //     0x772ad8: ubfx            x4, x4, #0xc, #0x14
    // 0x772adc: cmp             x4, #0x18b
    // 0x772ae0: b.eq            #0x772af8
    // 0x772ae4: r8 = fVa
    //     0x772ae4: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x772ae8: ldr             x8, [x8, #0xd48]
    // 0x772aec: r3 = Null
    //     0x772aec: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a640] Null
    //     0x772af0: ldr             x3, [x3, #0x640]
    // 0x772af4: r0 = DefaultTypeTest()
    //     0x772af4: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772af8: ldur            x0, [fp, #-0x90]
    // 0x772afc: r1 = LoadClassIdInstr(r0)
    //     0x772afc: ldur            x1, [x0, #-1]
    //     0x772b00: ubfx            x1, x1, #0xc, #0x14
    // 0x772b04: r16 = 4
    //     0x772b04: movz            x16, #0x4
    // 0x772b08: stp             x16, x0, [SP]
    // 0x772b0c: mov             x0, x1
    // 0x772b10: mov             lr, x0
    // 0x772b14: ldr             lr, [x21, lr, lsl #3]
    // 0x772b18: blr             lr
    // 0x772b1c: mov             x3, x0
    // 0x772b20: stur            x3, [fp, #-0x90]
    // 0x772b24: cmp             w3, NULL
    // 0x772b28: b.eq            #0x772c54
    // 0x772b2c: mov             x0, x3
    // 0x772b30: r2 = Null
    //     0x772b30: mov             x2, NULL
    // 0x772b34: r1 = Null
    //     0x772b34: mov             x1, NULL
    // 0x772b38: r4 = 60
    //     0x772b38: movz            x4, #0x3c
    // 0x772b3c: branchIfSmi(r0, 0x772b48)
    //     0x772b3c: tbz             w0, #0, #0x772b48
    // 0x772b40: r4 = LoadClassIdInstr(r0)
    //     0x772b40: ldur            x4, [x0, #-1]
    //     0x772b44: ubfx            x4, x4, #0xc, #0x14
    // 0x772b48: sub             x4, x4, #0x5e
    // 0x772b4c: cmp             x4, #1
    // 0x772b50: b.ls            #0x772b64
    // 0x772b54: r8 = String
    //     0x772b54: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x772b58: r3 = Null
    //     0x772b58: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a650] Null
    //     0x772b5c: ldr             x3, [x3, #0x650]
    // 0x772b60: r0 = String()
    //     0x772b60: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x772b64: ldur            x1, [fp, #-0x98]
    // 0x772b68: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x772b68: ldur            w2, [x1, #0x17]
    // 0x772b6c: DecompressPointer r2
    //     0x772b6c: add             x2, x2, HEAP, lsl #32
    // 0x772b70: stur            x2, [fp, #-0xa8]
    // 0x772b74: cmp             w2, NULL
    // 0x772b78: b.eq            #0x772b9c
    // 0x772b7c: stp             x1, x2, [SP, #0x10]
    // 0x772b80: ldur            x16, [fp, #-0xa0]
    // 0x772b84: ldur            lr, [fp, #-0x90]
    // 0x772b88: stp             lr, x16, [SP]
    // 0x772b8c: mov             x0, x2
    // 0x772b90: ClosureCall
    //     0x772b90: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x772b94: ldur            x2, [x0, #0x1f]
    //     0x772b98: blr             x2
    // 0x772b9c: r16 = true
    //     0x772b9c: add             x16, NULL, #0x20  ; true
    // 0x772ba0: str             x16, [SP]
    // 0x772ba4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x772ba4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x772ba8: ldr             x4, [x4, #0x870]
    // 0x772bac: r0 = call 0x392d98
    //     0x772bac: bl              #0x392d98
    // 0x772bb0: r0 = ReturnAsyncNotFuture()
    //     0x772bb0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772bb4: sub             SP, fp, #0xc8
    // 0x772bb8: r1 = 60
    //     0x772bb8: movz            x1, #0x3c
    // 0x772bbc: branchIfSmi(r0, 0x772bc8)
    //     0x772bbc: tbz             w0, #0, #0x772bc8
    // 0x772bc0: r1 = LoadClassIdInstr(r0)
    //     0x772bc0: ldur            x1, [x0, #-1]
    //     0x772bc4: ubfx            x1, x1, #0xc, #0x14
    // 0x772bc8: cmp             x1, #0x5e5
    // 0x772bcc: b.ne            #0x772be4
    // 0x772bd0: str             x0, [SP]
    // 0x772bd4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772bd4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772bd8: ldr             x4, [x4, #0x878]
    // 0x772bdc: r0 = call 0x392d98
    //     0x772bdc: bl              #0x392d98
    // 0x772be0: r0 = ReturnAsyncNotFuture()
    //     0x772be0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772be4: r1 = 60
    //     0x772be4: movz            x1, #0x3c
    // 0x772be8: branchIfSmi(r0, 0x772bf4)
    //     0x772be8: tbz             w0, #0, #0x772bf4
    // 0x772bec: r1 = LoadClassIdInstr(r0)
    //     0x772bec: ldur            x1, [x0, #-1]
    //     0x772bf0: ubfx            x1, x1, #0xc, #0x14
    // 0x772bf4: str             x0, [SP]
    // 0x772bf8: mov             x0, x1
    // 0x772bfc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x772bfc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x772c00: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x772c00: movz            x17, #0x3a5d
    //     0x772c04: add             lr, x0, x17
    //     0x772c08: ldr             lr, [x21, lr, lsl #3]
    //     0x772c0c: blr             lr
    // 0x772c10: stur            x0, [fp, #-0x88]
    // 0x772c14: r0 = Mha()
    //     0x772c14: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x772c18: mov             x1, x0
    // 0x772c1c: r0 = "error"
    //     0x772c1c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x772c20: StoreField: r1->field_7 = r0
    //     0x772c20: stur            w0, [x1, #7]
    // 0x772c24: ldur            x0, [fp, #-0x88]
    // 0x772c28: StoreField: r1->field_b = r0
    //     0x772c28: stur            w0, [x1, #0xb]
    // 0x772c2c: str             x1, [SP]
    // 0x772c30: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772c30: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772c34: ldr             x4, [x4, #0x878]
    // 0x772c38: r0 = call 0x392d98
    //     0x772c38: bl              #0x392d98
    // 0x772c3c: r0 = ReturnAsyncNotFuture()
    //     0x772c3c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772c40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x772c40: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x772c44: b               #0x7729dc
    // 0x772c48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772c48: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772c4c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772c4c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772c50: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772c50: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772c54: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772c54: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x772c58, size: 0x2bc
    // 0x772c58: EnterFrame
    //     0x772c58: stp             fp, lr, [SP, #-0x10]!
    //     0x772c5c: mov             fp, SP
    // 0x772c60: AllocStack(0xc8)
    //     0x772c60: sub             SP, SP, #0xc8
    // 0x772c64: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x90 */)
    //     0x772c64: stur            NULL, [fp, #-8]
    //     0x772c68: movz            x0, #0
    //     0x772c6c: add             x1, fp, w0, sxtw #2
    //     0x772c70: ldr             x1, [x1, #0x18]
    //     0x772c74: add             x2, fp, w0, sxtw #2
    //     0x772c78: ldr             x2, [x2, #0x10]
    //     0x772c7c: stur            x2, [fp, #-0x90]
    //     0x772c80: ldur            w3, [x1, #0x17]
    //     0x772c84: add             x3, x3, HEAP, lsl #32
    //     0x772c88: stur            x3, [fp, #-0x88]
    // 0x772c8c: CheckStackOverflow
    //     0x772c8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x772c90: cmp             SP, x16
    //     0x772c94: b.ls            #0x772efc
    // 0x772c98: InitAsync() -> Future<List<Object?>>
    //     0x772c98: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x772c9c: ldr             x0, [x0, #0x1d0]
    //     0x772ca0: bl              #0x74ada8  ; InitAsyncStub
    // 0x772ca4: ldur            x3, [fp, #-0x90]
    // 0x772ca8: cmp             w3, NULL
    // 0x772cac: b.eq            #0x772f04
    // 0x772cb0: mov             x0, x3
    // 0x772cb4: r2 = Null
    //     0x772cb4: mov             x2, NULL
    // 0x772cb8: r1 = Null
    //     0x772cb8: mov             x1, NULL
    // 0x772cbc: r4 = 60
    //     0x772cbc: movz            x4, #0x3c
    // 0x772cc0: branchIfSmi(r0, 0x772ccc)
    //     0x772cc0: tbz             w0, #0, #0x772ccc
    // 0x772cc4: r4 = LoadClassIdInstr(r0)
    //     0x772cc4: ldur            x4, [x0, #-1]
    //     0x772cc8: ubfx            x4, x4, #0xc, #0x14
    // 0x772ccc: sub             x4, x4, #0x5a
    // 0x772cd0: cmp             x4, #2
    // 0x772cd4: b.ls            #0x772ce8
    // 0x772cd8: r8 = List<Object?>
    //     0x772cd8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x772cdc: r3 = Null
    //     0x772cdc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a660] Null
    //     0x772ce0: ldr             x3, [x3, #0x660]
    // 0x772ce4: r0 = List<Object?>()
    //     0x772ce4: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x772ce8: ldur            x1, [fp, #-0x90]
    // 0x772cec: r0 = LoadClassIdInstr(r1)
    //     0x772cec: ldur            x0, [x1, #-1]
    //     0x772cf0: ubfx            x0, x0, #0xc, #0x14
    // 0x772cf4: stp             xzr, x1, [SP]
    // 0x772cf8: mov             lr, x0
    // 0x772cfc: ldr             lr, [x21, lr, lsl #3]
    // 0x772d00: blr             lr
    // 0x772d04: mov             x3, x0
    // 0x772d08: stur            x3, [fp, #-0x98]
    // 0x772d0c: cmp             w3, NULL
    // 0x772d10: b.eq            #0x772f08
    // 0x772d14: mov             x0, x3
    // 0x772d18: r2 = Null
    //     0x772d18: mov             x2, NULL
    // 0x772d1c: r1 = Null
    //     0x772d1c: mov             x1, NULL
    // 0x772d20: r4 = 60
    //     0x772d20: movz            x4, #0x3c
    // 0x772d24: branchIfSmi(r0, 0x772d30)
    //     0x772d24: tbz             w0, #0, #0x772d30
    // 0x772d28: r4 = LoadClassIdInstr(r0)
    //     0x772d28: ldur            x4, [x0, #-1]
    //     0x772d2c: ubfx            x4, x4, #0xc, #0x14
    // 0x772d30: cmp             x4, #0x187
    // 0x772d34: b.eq            #0x772d4c
    // 0x772d38: r8 = iVa
    //     0x772d38: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Type: iVa
    //     0x772d3c: ldr             x8, [x8, #0x1b0]
    // 0x772d40: r3 = Null
    //     0x772d40: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a670] Null
    //     0x772d44: ldr             x3, [x3, #0x670]
    // 0x772d48: r0 = DefaultTypeTest()
    //     0x772d48: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772d4c: ldur            x1, [fp, #-0x90]
    // 0x772d50: r0 = LoadClassIdInstr(r1)
    //     0x772d50: ldur            x0, [x1, #-1]
    //     0x772d54: ubfx            x0, x0, #0xc, #0x14
    // 0x772d58: r16 = 2
    //     0x772d58: movz            x16, #0x2
    // 0x772d5c: stp             x16, x1, [SP]
    // 0x772d60: mov             lr, x0
    // 0x772d64: ldr             lr, [x21, lr, lsl #3]
    // 0x772d68: blr             lr
    // 0x772d6c: mov             x3, x0
    // 0x772d70: stur            x3, [fp, #-0xa0]
    // 0x772d74: cmp             w3, NULL
    // 0x772d78: b.eq            #0x772f0c
    // 0x772d7c: mov             x0, x3
    // 0x772d80: r2 = Null
    //     0x772d80: mov             x2, NULL
    // 0x772d84: r1 = Null
    //     0x772d84: mov             x1, NULL
    // 0x772d88: r4 = 60
    //     0x772d88: movz            x4, #0x3c
    // 0x772d8c: branchIfSmi(r0, 0x772d98)
    //     0x772d8c: tbz             w0, #0, #0x772d98
    // 0x772d90: r4 = LoadClassIdInstr(r0)
    //     0x772d90: ldur            x4, [x0, #-1]
    //     0x772d94: ubfx            x4, x4, #0xc, #0x14
    // 0x772d98: cmp             x4, #0x18b
    // 0x772d9c: b.eq            #0x772db4
    // 0x772da0: r8 = fVa
    //     0x772da0: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x772da4: ldr             x8, [x8, #0xd48]
    // 0x772da8: r3 = Null
    //     0x772da8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a680] Null
    //     0x772dac: ldr             x3, [x3, #0x680]
    // 0x772db0: r0 = DefaultTypeTest()
    //     0x772db0: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x772db4: ldur            x0, [fp, #-0x90]
    // 0x772db8: r1 = LoadClassIdInstr(r0)
    //     0x772db8: ldur            x1, [x0, #-1]
    //     0x772dbc: ubfx            x1, x1, #0xc, #0x14
    // 0x772dc0: r16 = 4
    //     0x772dc0: movz            x16, #0x4
    // 0x772dc4: stp             x16, x0, [SP]
    // 0x772dc8: mov             x0, x1
    // 0x772dcc: mov             lr, x0
    // 0x772dd0: ldr             lr, [x21, lr, lsl #3]
    // 0x772dd4: blr             lr
    // 0x772dd8: mov             x3, x0
    // 0x772ddc: stur            x3, [fp, #-0x90]
    // 0x772de0: cmp             w3, NULL
    // 0x772de4: b.eq            #0x772f10
    // 0x772de8: mov             x0, x3
    // 0x772dec: r2 = Null
    //     0x772dec: mov             x2, NULL
    // 0x772df0: r1 = Null
    //     0x772df0: mov             x1, NULL
    // 0x772df4: r4 = 60
    //     0x772df4: movz            x4, #0x3c
    // 0x772df8: branchIfSmi(r0, 0x772e04)
    //     0x772df8: tbz             w0, #0, #0x772e04
    // 0x772dfc: r4 = LoadClassIdInstr(r0)
    //     0x772dfc: ldur            x4, [x0, #-1]
    //     0x772e00: ubfx            x4, x4, #0xc, #0x14
    // 0x772e04: sub             x4, x4, #0x5e
    // 0x772e08: cmp             x4, #1
    // 0x772e0c: b.ls            #0x772e20
    // 0x772e10: r8 = String
    //     0x772e10: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x772e14: r3 = Null
    //     0x772e14: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a690] Null
    //     0x772e18: ldr             x3, [x3, #0x690]
    // 0x772e1c: r0 = String()
    //     0x772e1c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x772e20: ldur            x1, [fp, #-0x98]
    // 0x772e24: LoadField: r2 = r1->field_13
    //     0x772e24: ldur            w2, [x1, #0x13]
    // 0x772e28: DecompressPointer r2
    //     0x772e28: add             x2, x2, HEAP, lsl #32
    // 0x772e2c: stur            x2, [fp, #-0xa8]
    // 0x772e30: cmp             w2, NULL
    // 0x772e34: b.eq            #0x772e58
    // 0x772e38: stp             x1, x2, [SP, #0x10]
    // 0x772e3c: ldur            x16, [fp, #-0xa0]
    // 0x772e40: ldur            lr, [fp, #-0x90]
    // 0x772e44: stp             lr, x16, [SP]
    // 0x772e48: mov             x0, x2
    // 0x772e4c: ClosureCall
    //     0x772e4c: ldr             x4, [PP, #0x2b0]  ; [pp+0x2b0] List(5) [0, 0x4, 0x4, 0x4, Null]
    //     0x772e50: ldur            x2, [x0, #0x1f]
    //     0x772e54: blr             x2
    // 0x772e58: r16 = true
    //     0x772e58: add             x16, NULL, #0x20  ; true
    // 0x772e5c: str             x16, [SP]
    // 0x772e60: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x772e60: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x772e64: ldr             x4, [x4, #0x870]
    // 0x772e68: r0 = call 0x392d98
    //     0x772e68: bl              #0x392d98
    // 0x772e6c: r0 = ReturnAsyncNotFuture()
    //     0x772e6c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772e70: sub             SP, fp, #0xc8
    // 0x772e74: r1 = 60
    //     0x772e74: movz            x1, #0x3c
    // 0x772e78: branchIfSmi(r0, 0x772e84)
    //     0x772e78: tbz             w0, #0, #0x772e84
    // 0x772e7c: r1 = LoadClassIdInstr(r0)
    //     0x772e7c: ldur            x1, [x0, #-1]
    //     0x772e80: ubfx            x1, x1, #0xc, #0x14
    // 0x772e84: cmp             x1, #0x5e5
    // 0x772e88: b.ne            #0x772ea0
    // 0x772e8c: str             x0, [SP]
    // 0x772e90: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772e90: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772e94: ldr             x4, [x4, #0x878]
    // 0x772e98: r0 = call 0x392d98
    //     0x772e98: bl              #0x392d98
    // 0x772e9c: r0 = ReturnAsyncNotFuture()
    //     0x772e9c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772ea0: r1 = 60
    //     0x772ea0: movz            x1, #0x3c
    // 0x772ea4: branchIfSmi(r0, 0x772eb0)
    //     0x772ea4: tbz             w0, #0, #0x772eb0
    // 0x772ea8: r1 = LoadClassIdInstr(r0)
    //     0x772ea8: ldur            x1, [x0, #-1]
    //     0x772eac: ubfx            x1, x1, #0xc, #0x14
    // 0x772eb0: str             x0, [SP]
    // 0x772eb4: mov             x0, x1
    // 0x772eb8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x772eb8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x772ebc: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x772ebc: movz            x17, #0x3a5d
    //     0x772ec0: add             lr, x0, x17
    //     0x772ec4: ldr             lr, [x21, lr, lsl #3]
    //     0x772ec8: blr             lr
    // 0x772ecc: stur            x0, [fp, #-0x88]
    // 0x772ed0: r0 = Mha()
    //     0x772ed0: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x772ed4: mov             x1, x0
    // 0x772ed8: r0 = "error"
    //     0x772ed8: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x772edc: StoreField: r1->field_7 = r0
    //     0x772edc: stur            w0, [x1, #7]
    // 0x772ee0: ldur            x0, [fp, #-0x88]
    // 0x772ee4: StoreField: r1->field_b = r0
    //     0x772ee4: stur            w0, [x1, #0xb]
    // 0x772ee8: str             x1, [SP]
    // 0x772eec: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x772eec: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x772ef0: ldr             x4, [x4, #0x878]
    // 0x772ef4: r0 = call 0x392d98
    //     0x772ef4: bl              #0x392d98
    // 0x772ef8: r0 = ReturnAsyncNotFuture()
    //     0x772ef8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x772efc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x772efc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x772f00: b               #0x772c98
    // 0x772f04: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772f04: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772f08: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772f08: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772f0c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772f0c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x772f10: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x772f10: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x772f14, size: 0x1f0
    // 0x772f14: EnterFrame
    //     0x772f14: stp             fp, lr, [SP, #-0x10]!
    //     0x772f18: mov             fp, SP
    // 0x772f1c: AllocStack(0x98)
    //     0x772f1c: sub             SP, SP, #0x98
    // 0x772f20: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x772f20: stur            NULL, [fp, #-8]
    //     0x772f24: movz            x0, #0
    //     0x772f28: add             x1, fp, w0, sxtw #2
    //     0x772f2c: ldr             x1, [x1, #0x18]
    //     0x772f30: add             x2, fp, w0, sxtw #2
    //     0x772f34: ldr             x2, [x2, #0x10]
    //     0x772f38: stur            x2, [fp, #-0x78]
    //     0x772f3c: ldur            w3, [x1, #0x17]
    //     0x772f40: add             x3, x3, HEAP, lsl #32
    //     0x772f44: stur            x3, [fp, #-0x70]
    // 0x772f48: CheckStackOverflow
    //     0x772f48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x772f4c: cmp             SP, x16
    //     0x772f50: b.ls            #0x7730f4
    // 0x772f54: InitAsync() -> Future<List<Object?>>
    //     0x772f54: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x772f58: ldr             x0, [x0, #0x1d0]
    //     0x772f5c: bl              #0x74ada8  ; InitAsyncStub
    // 0x772f60: ldur            x3, [fp, #-0x78]
    // 0x772f64: cmp             w3, NULL
    // 0x772f68: b.eq            #0x7730fc
    // 0x772f6c: mov             x0, x3
    // 0x772f70: r2 = Null
    //     0x772f70: mov             x2, NULL
    // 0x772f74: r1 = Null
    //     0x772f74: mov             x1, NULL
    // 0x772f78: r4 = 60
    //     0x772f78: movz            x4, #0x3c
    // 0x772f7c: branchIfSmi(r0, 0x772f88)
    //     0x772f7c: tbz             w0, #0, #0x772f88
    // 0x772f80: r4 = LoadClassIdInstr(r0)
    //     0x772f80: ldur            x4, [x0, #-1]
    //     0x772f84: ubfx            x4, x4, #0xc, #0x14
    // 0x772f88: sub             x4, x4, #0x5a
    // 0x772f8c: cmp             x4, #2
    // 0x772f90: b.ls            #0x772fa4
    // 0x772f94: r8 = List<Object?>
    //     0x772f94: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x772f98: r3 = Null
    //     0x772f98: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a6a0] Null
    //     0x772f9c: ldr             x3, [x3, #0x6a0]
    // 0x772fa0: r0 = List<Object?>()
    //     0x772fa0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x772fa4: ldur            x0, [fp, #-0x78]
    // 0x772fa8: r1 = LoadClassIdInstr(r0)
    //     0x772fa8: ldur            x1, [x0, #-1]
    //     0x772fac: ubfx            x1, x1, #0xc, #0x14
    // 0x772fb0: stp             xzr, x0, [SP]
    // 0x772fb4: mov             x0, x1
    // 0x772fb8: mov             lr, x0
    // 0x772fbc: ldr             lr, [x21, lr, lsl #3]
    // 0x772fc0: blr             lr
    // 0x772fc4: mov             x3, x0
    // 0x772fc8: stur            x3, [fp, #-0x78]
    // 0x772fcc: cmp             w3, NULL
    // 0x772fd0: b.eq            #0x773100
    // 0x772fd4: r3 as int
    //     0x772fd4: mov             x0, x3
    //     0x772fd8: mov             x2, NULL
    //     0x772fdc: mov             x1, NULL
    //     0x772fe0: tbz             w0, #0, #0x773008
    //     0x772fe4: ldur            x4, [x0, #-1]
    //     0x772fe8: ubfx            x4, x4, #0xc, #0x14
    //     0x772fec: sub             x4, x4, #0x3c
    //     0x772ff0: cmp             x4, #1
    //     0x772ff4: b.ls            #0x773008
    //     0x772ff8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x772ffc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a6b0] Null
    //     0x773000: ldr             x3, [x3, #0x6b0]
    //     0x773004: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773008: ldur            x1, [fp, #-0x70]
    // 0x77300c: ldur            x0, [fp, #-0x78]
    // 0x773010: LoadField: r2 = r1->field_f
    //     0x773010: ldur            w2, [x1, #0xf]
    // 0x773014: DecompressPointer r2
    //     0x773014: add             x2, x2, HEAP, lsl #32
    // 0x773018: stur            x2, [fp, #-0x80]
    // 0x77301c: r0 = iVa()
    //     0x77301c: bl              #0x773104  ; AllocateiVaStub -> iVa (size=0x54)
    // 0x773020: mov             x1, x0
    // 0x773024: ldur            x2, [fp, #-0x80]
    // 0x773028: stur            x0, [fp, #-0x88]
    // 0x77302c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x77302c: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x773030: r0 = call 0x394388
    //     0x773030: bl              #0x394388
    // 0x773034: ldur            x0, [fp, #-0x78]
    // 0x773038: r3 = LoadInt32Instr(r0)
    //     0x773038: sbfx            x3, x0, #1, #0x1f
    //     0x77303c: tbz             w0, #0, #0x773044
    //     0x773040: ldur            x3, [x0, #7]
    // 0x773044: ldur            x1, [fp, #-0x80]
    // 0x773048: ldur            x2, [fp, #-0x88]
    // 0x77304c: r0 = call 0x392f90
    //     0x77304c: bl              #0x392f90
    // 0x773050: r16 = true
    //     0x773050: add             x16, NULL, #0x20  ; true
    // 0x773054: str             x16, [SP]
    // 0x773058: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x773058: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x77305c: ldr             x4, [x4, #0x870]
    // 0x773060: r0 = call 0x392d98
    //     0x773060: bl              #0x392d98
    // 0x773064: r0 = ReturnAsyncNotFuture()
    //     0x773064: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773068: sub             SP, fp, #0x98
    // 0x77306c: r1 = 60
    //     0x77306c: movz            x1, #0x3c
    // 0x773070: branchIfSmi(r0, 0x77307c)
    //     0x773070: tbz             w0, #0, #0x77307c
    // 0x773074: r1 = LoadClassIdInstr(r0)
    //     0x773074: ldur            x1, [x0, #-1]
    //     0x773078: ubfx            x1, x1, #0xc, #0x14
    // 0x77307c: cmp             x1, #0x5e5
    // 0x773080: b.ne            #0x773098
    // 0x773084: str             x0, [SP]
    // 0x773088: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773088: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x77308c: ldr             x4, [x4, #0x878]
    // 0x773090: r0 = call 0x392d98
    //     0x773090: bl              #0x392d98
    // 0x773094: r0 = ReturnAsyncNotFuture()
    //     0x773094: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773098: r1 = 60
    //     0x773098: movz            x1, #0x3c
    // 0x77309c: branchIfSmi(r0, 0x7730a8)
    //     0x77309c: tbz             w0, #0, #0x7730a8
    // 0x7730a0: r1 = LoadClassIdInstr(r0)
    //     0x7730a0: ldur            x1, [x0, #-1]
    //     0x7730a4: ubfx            x1, x1, #0xc, #0x14
    // 0x7730a8: str             x0, [SP]
    // 0x7730ac: mov             x0, x1
    // 0x7730b0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7730b0: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7730b4: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7730b4: movz            x17, #0x3a5d
    //     0x7730b8: add             lr, x0, x17
    //     0x7730bc: ldr             lr, [x21, lr, lsl #3]
    //     0x7730c0: blr             lr
    // 0x7730c4: stur            x0, [fp, #-0x70]
    // 0x7730c8: r0 = Mha()
    //     0x7730c8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7730cc: mov             x1, x0
    // 0x7730d0: r0 = "error"
    //     0x7730d0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7730d4: StoreField: r1->field_7 = r0
    //     0x7730d4: stur            w0, [x1, #7]
    // 0x7730d8: ldur            x0, [fp, #-0x70]
    // 0x7730dc: StoreField: r1->field_b = r0
    //     0x7730dc: stur            w0, [x1, #0xb]
    // 0x7730e0: str             x1, [SP]
    // 0x7730e4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7730e4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7730e8: ldr             x4, [x4, #0x878]
    // 0x7730ec: r0 = call 0x392d98
    //     0x7730ec: bl              #0x392d98
    // 0x7730f0: r0 = ReturnAsyncNotFuture()
    //     0x7730f0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7730f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7730f4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7730f8: b               #0x772f54
    // 0x7730fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7730fc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773100: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773100: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7abf34, size: 0xb0
    // 0x7abf34: EnterFrame
    //     0x7abf34: stp             fp, lr, [SP, #-0x10]!
    //     0x7abf38: mov             fp, SP
    // 0x7abf3c: AllocStack(0x18)
    //     0x7abf3c: sub             SP, SP, #0x18
    // 0x7abf40: SetupParameters(iVa this /* r1 */)
    //     0x7abf40: stur            NULL, [fp, #-8]
    //     0x7abf44: movz            x0, #0
    //     0x7abf48: add             x1, fp, w0, sxtw #2
    //     0x7abf4c: ldr             x1, [x1, #0x10]
    //     0x7abf50: ldur            w2, [x1, #0x17]
    //     0x7abf54: add             x2, x2, HEAP, lsl #32
    //     0x7abf58: stur            x2, [fp, #-0x10]
    // 0x7abf5c: CheckStackOverflow
    //     0x7abf5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7abf60: cmp             SP, x16
    //     0x7abf64: b.ls            #0x7abfdc
    // 0x7abf68: InitAsync() -> Future<Null?>
    //     0x7abf68: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7abf6c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7abf70: ldur            x1, [fp, #-0x10]
    // 0x7abf74: LoadField: r2 = r1->field_f
    //     0x7abf74: ldur            w2, [x1, #0xf]
    // 0x7abf78: DecompressPointer r2
    //     0x7abf78: add             x2, x2, HEAP, lsl #32
    // 0x7abf7c: mov             x0, x2
    // 0x7abf80: stur            x2, [fp, #-0x18]
    // 0x7abf84: r0 = Await()
    //     0x7abf84: bl              #0x74ab64  ; AwaitStub
    // 0x7abf88: mov             x3, x0
    // 0x7abf8c: r2 = Null
    //     0x7abf8c: mov             x2, NULL
    // 0x7abf90: r1 = Null
    //     0x7abf90: mov             x1, NULL
    // 0x7abf94: stur            x3, [fp, #-0x10]
    // 0x7abf98: r4 = 60
    //     0x7abf98: movz            x4, #0x3c
    // 0x7abf9c: branchIfSmi(r0, 0x7abfa8)
    //     0x7abf9c: tbz             w0, #0, #0x7abfa8
    // 0x7abfa0: r4 = LoadClassIdInstr(r0)
    //     0x7abfa0: ldur            x4, [x0, #-1]
    //     0x7abfa4: ubfx            x4, x4, #0xc, #0x14
    // 0x7abfa8: sub             x4, x4, #0x5a
    // 0x7abfac: cmp             x4, #2
    // 0x7abfb0: b.ls            #0x7abfc4
    // 0x7abfb4: r8 = List<Object?>?
    //     0x7abfb4: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x7abfb8: r3 = Null
    //     0x7abfb8: add             x3, PP, #0x23, lsl #12  ; [pp+0x23060] Null
    //     0x7abfbc: ldr             x3, [x3, #0x60]
    // 0x7abfc0: r0 = List<Object?>?()
    //     0x7abfc0: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x7abfc4: ldur            x1, [fp, #-0x10]
    // 0x7abfc8: r2 = "dev.flutter.pigeon.webview_flutter_android.WebViewClient.pigeon_defaultConstructor"
    //     0x7abfc8: add             x2, PP, #0x23, lsl #12  ; [pp+0x23050] "dev.flutter.pigeon.webview_flutter_android.WebViewClient.pigeon_defaultConstructor"
    //     0x7abfcc: ldr             x2, [x2, #0x50]
    // 0x7abfd0: r0 = call 0x3951e4
    //     0x7abfd0: bl              #0x3951e4
    // 0x7abfd4: r0 = Null
    //     0x7abfd4: mov             x0, NULL
    // 0x7abfd8: r0 = ReturnAsyncNotFuture()
    //     0x7abfd8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7abfdc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7abfdc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7abfe0: b               #0x7abf68
  }
}

// class id: 392, size: 0x10, field offset: 0x10
abstract class hVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x773110, size: 0x1f0
    // 0x773110: EnterFrame
    //     0x773110: stp             fp, lr, [SP, #-0x10]!
    //     0x773114: mov             fp, SP
    // 0x773118: AllocStack(0x90)
    //     0x773118: sub             SP, SP, #0x90
    // 0x77311c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x77311c: stur            NULL, [fp, #-8]
    //     0x773120: movz            x0, #0
    //     0x773124: add             x1, fp, w0, sxtw #2
    //     0x773128: ldr             x1, [x1, #0x18]
    //     0x77312c: add             x2, fp, w0, sxtw #2
    //     0x773130: ldr             x2, [x2, #0x10]
    //     0x773134: stur            x2, [fp, #-0x80]
    //     0x773138: ldur            w3, [x1, #0x17]
    //     0x77313c: add             x3, x3, HEAP, lsl #32
    //     0x773140: stur            x3, [fp, #-0x78]
    // 0x773144: CheckStackOverflow
    //     0x773144: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x773148: cmp             SP, x16
    //     0x77314c: b.ls            #0x7732ec
    // 0x773150: InitAsync() -> Future<List<Object?>>
    //     0x773150: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x773154: ldr             x0, [x0, #0x1d0]
    //     0x773158: bl              #0x74ada8  ; InitAsyncStub
    // 0x77315c: ldur            x3, [fp, #-0x80]
    // 0x773160: cmp             w3, NULL
    // 0x773164: b.eq            #0x7732f4
    // 0x773168: mov             x0, x3
    // 0x77316c: r2 = Null
    //     0x77316c: mov             x2, NULL
    // 0x773170: r1 = Null
    //     0x773170: mov             x1, NULL
    // 0x773174: r4 = 60
    //     0x773174: movz            x4, #0x3c
    // 0x773178: branchIfSmi(r0, 0x773184)
    //     0x773178: tbz             w0, #0, #0x773184
    // 0x77317c: r4 = LoadClassIdInstr(r0)
    //     0x77317c: ldur            x4, [x0, #-1]
    //     0x773180: ubfx            x4, x4, #0xc, #0x14
    // 0x773184: sub             x4, x4, #0x5a
    // 0x773188: cmp             x4, #2
    // 0x77318c: b.ls            #0x7731a0
    // 0x773190: r8 = List<Object?>
    //     0x773190: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773194: r3 = Null
    //     0x773194: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a730] Null
    //     0x773198: ldr             x3, [x3, #0x730]
    // 0x77319c: r0 = List<Object?>()
    //     0x77319c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7731a0: ldur            x1, [fp, #-0x80]
    // 0x7731a4: r0 = LoadClassIdInstr(r1)
    //     0x7731a4: ldur            x0, [x1, #-1]
    //     0x7731a8: ubfx            x0, x0, #0xc, #0x14
    // 0x7731ac: stp             xzr, x1, [SP]
    // 0x7731b0: mov             lr, x0
    // 0x7731b4: ldr             lr, [x21, lr, lsl #3]
    // 0x7731b8: blr             lr
    // 0x7731bc: cmp             w0, NULL
    // 0x7731c0: b.eq            #0x7732f8
    // 0x7731c4: r2 = Null
    //     0x7731c4: mov             x2, NULL
    // 0x7731c8: r1 = Null
    //     0x7731c8: mov             x1, NULL
    // 0x7731cc: r4 = 60
    //     0x7731cc: movz            x4, #0x3c
    // 0x7731d0: branchIfSmi(r0, 0x7731dc)
    //     0x7731d0: tbz             w0, #0, #0x7731dc
    // 0x7731d4: r4 = LoadClassIdInstr(r0)
    //     0x7731d4: ldur            x4, [x0, #-1]
    //     0x7731d8: ubfx            x4, x4, #0xc, #0x14
    // 0x7731dc: r8 = hVa
    //     0x7731dc: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a740] Type: hVa
    //     0x7731e0: ldr             x8, [x8, #0x740]
    // 0x7731e4: r3 = Null
    //     0x7731e4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a748] Null
    //     0x7731e8: ldr             x3, [x3, #0x748]
    // 0x7731ec: r0 = DefaultTypeTest()
    //     0x7731ec: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7731f0: ldur            x0, [fp, #-0x80]
    // 0x7731f4: r1 = LoadClassIdInstr(r0)
    //     0x7731f4: ldur            x1, [x0, #-1]
    //     0x7731f8: ubfx            x1, x1, #0xc, #0x14
    // 0x7731fc: r16 = 2
    //     0x7731fc: movz            x16, #0x2
    // 0x773200: stp             x16, x0, [SP]
    // 0x773204: mov             x0, x1
    // 0x773208: mov             lr, x0
    // 0x77320c: ldr             lr, [x21, lr, lsl #3]
    // 0x773210: blr             lr
    // 0x773214: cmp             w0, NULL
    // 0x773218: b.eq            #0x7732fc
    // 0x77321c: r2 = Null
    //     0x77321c: mov             x2, NULL
    // 0x773220: r1 = Null
    //     0x773220: mov             x1, NULL
    // 0x773224: r4 = 60
    //     0x773224: movz            x4, #0x3c
    // 0x773228: branchIfSmi(r0, 0x773234)
    //     0x773228: tbz             w0, #0, #0x773234
    // 0x77322c: r4 = LoadClassIdInstr(r0)
    //     0x77322c: ldur            x4, [x0, #-1]
    //     0x773230: ubfx            x4, x4, #0xc, #0x14
    // 0x773234: sub             x4, x4, #0x5e
    // 0x773238: cmp             x4, #1
    // 0x77323c: b.ls            #0x773250
    // 0x773240: r8 = String
    //     0x773240: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x773244: r3 = Null
    //     0x773244: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a758] Null
    //     0x773248: ldr             x3, [x3, #0x758]
    // 0x77324c: r0 = String()
    //     0x77324c: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x773250: b               #0x7732dc
    // 0x773254: sub             SP, fp, #0x90
    // 0x773258: r1 = 60
    //     0x773258: movz            x1, #0x3c
    // 0x77325c: branchIfSmi(r0, 0x773268)
    //     0x77325c: tbz             w0, #0, #0x773268
    // 0x773260: r1 = LoadClassIdInstr(r0)
    //     0x773260: ldur            x1, [x0, #-1]
    //     0x773264: ubfx            x1, x1, #0xc, #0x14
    // 0x773268: cmp             x1, #0x5e5
    // 0x77326c: b.ne            #0x773284
    // 0x773270: str             x0, [SP]
    // 0x773274: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773274: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773278: ldr             x4, [x4, #0x878]
    // 0x77327c: r0 = call 0x392d98
    //     0x77327c: bl              #0x392d98
    // 0x773280: r0 = ReturnAsyncNotFuture()
    //     0x773280: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773284: r1 = 60
    //     0x773284: movz            x1, #0x3c
    // 0x773288: branchIfSmi(r0, 0x773294)
    //     0x773288: tbz             w0, #0, #0x773294
    // 0x77328c: r1 = LoadClassIdInstr(r0)
    //     0x77328c: ldur            x1, [x0, #-1]
    //     0x773290: ubfx            x1, x1, #0xc, #0x14
    // 0x773294: str             x0, [SP]
    // 0x773298: mov             x0, x1
    // 0x77329c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x77329c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7732a0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7732a0: movz            x17, #0x3a5d
    //     0x7732a4: add             lr, x0, x17
    //     0x7732a8: ldr             lr, [x21, lr, lsl #3]
    //     0x7732ac: blr             lr
    // 0x7732b0: stur            x0, [fp, #-0x80]
    // 0x7732b4: r0 = Mha()
    //     0x7732b4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7732b8: r1 = "error"
    //     0x7732b8: ldr             x1, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7732bc: StoreField: r0->field_7 = r1
    //     0x7732bc: stur            w1, [x0, #7]
    // 0x7732c0: ldur            x1, [fp, #-0x80]
    // 0x7732c4: StoreField: r0->field_b = r1
    //     0x7732c4: stur            w1, [x0, #0xb]
    // 0x7732c8: str             x0, [SP]
    // 0x7732cc: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7732cc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7732d0: ldr             x4, [x4, #0x878]
    // 0x7732d4: r0 = call 0x392d98
    //     0x7732d4: bl              #0x392d98
    // 0x7732d8: r0 = ReturnAsyncNotFuture()
    //     0x7732d8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7732dc: r1 = "error"
    //     0x7732dc: ldr             x1, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7732e0: r0 = "Attempt to execute code removed by Dart AOT compiler (TFA)"
    //     0x7732e0: ldr             x0, [PP, #0x6e0]  ; [pp+0x6e0] "Attempt to execute code removed by Dart AOT compiler (TFA)"
    // 0x7732e4: r0 = Throw()
    //     0x7732e4: bl              #0x7dc520  ; ThrowStub
    // 0x7732e8: brk             #0
    // 0x7732ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7732ec: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7732f0: b               #0x773150
    // 0x7732f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7732f4: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7732f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7732f8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7732fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7732fc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 393, size: 0x14, field offset: 0x10
class gVa extends OUa {

  late final _RUa _Uvf; // offset: 0x10

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x773300, size: 0x1f0
    // 0x773300: EnterFrame
    //     0x773300: stp             fp, lr, [SP, #-0x10]!
    //     0x773304: mov             fp, SP
    // 0x773308: AllocStack(0x90)
    //     0x773308: sub             SP, SP, #0x90
    // 0x77330c: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x77330c: stur            NULL, [fp, #-8]
    //     0x773310: movz            x0, #0
    //     0x773314: add             x1, fp, w0, sxtw #2
    //     0x773318: ldr             x1, [x1, #0x18]
    //     0x77331c: add             x2, fp, w0, sxtw #2
    //     0x773320: ldr             x2, [x2, #0x10]
    //     0x773324: stur            x2, [fp, #-0x78]
    //     0x773328: ldur            w3, [x1, #0x17]
    //     0x77332c: add             x3, x3, HEAP, lsl #32
    //     0x773330: stur            x3, [fp, #-0x70]
    // 0x773334: CheckStackOverflow
    //     0x773334: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x773338: cmp             SP, x16
    //     0x77333c: b.ls            #0x7734e0
    // 0x773340: InitAsync() -> Future<List<Object?>>
    //     0x773340: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x773344: ldr             x0, [x0, #0x1d0]
    //     0x773348: bl              #0x74ada8  ; InitAsyncStub
    // 0x77334c: ldur            x3, [fp, #-0x78]
    // 0x773350: cmp             w3, NULL
    // 0x773354: b.eq            #0x7734e8
    // 0x773358: mov             x0, x3
    // 0x77335c: r2 = Null
    //     0x77335c: mov             x2, NULL
    // 0x773360: r1 = Null
    //     0x773360: mov             x1, NULL
    // 0x773364: r4 = 60
    //     0x773364: movz            x4, #0x3c
    // 0x773368: branchIfSmi(r0, 0x773374)
    //     0x773368: tbz             w0, #0, #0x773374
    // 0x77336c: r4 = LoadClassIdInstr(r0)
    //     0x77336c: ldur            x4, [x0, #-1]
    //     0x773370: ubfx            x4, x4, #0xc, #0x14
    // 0x773374: sub             x4, x4, #0x5a
    // 0x773378: cmp             x4, #2
    // 0x77337c: b.ls            #0x773390
    // 0x773380: r8 = List<Object?>
    //     0x773380: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773384: r3 = Null
    //     0x773384: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a778] Null
    //     0x773388: ldr             x3, [x3, #0x778]
    // 0x77338c: r0 = List<Object?>()
    //     0x77338c: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x773390: ldur            x0, [fp, #-0x78]
    // 0x773394: r1 = LoadClassIdInstr(r0)
    //     0x773394: ldur            x1, [x0, #-1]
    //     0x773398: ubfx            x1, x1, #0xc, #0x14
    // 0x77339c: stp             xzr, x0, [SP]
    // 0x7733a0: mov             x0, x1
    // 0x7733a4: mov             lr, x0
    // 0x7733a8: ldr             lr, [x21, lr, lsl #3]
    // 0x7733ac: blr             lr
    // 0x7733b0: mov             x3, x0
    // 0x7733b4: stur            x3, [fp, #-0x78]
    // 0x7733b8: cmp             w3, NULL
    // 0x7733bc: b.eq            #0x7734ec
    // 0x7733c0: r3 as int
    //     0x7733c0: mov             x0, x3
    //     0x7733c4: mov             x2, NULL
    //     0x7733c8: mov             x1, NULL
    //     0x7733cc: tbz             w0, #0, #0x7733f4
    //     0x7733d0: ldur            x4, [x0, #-1]
    //     0x7733d4: ubfx            x4, x4, #0xc, #0x14
    //     0x7733d8: sub             x4, x4, #0x3c
    //     0x7733dc: cmp             x4, #1
    //     0x7733e0: b.ls            #0x7733f4
    //     0x7733e4: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x7733e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a788] Null
    //     0x7733ec: ldr             x3, [x3, #0x788]
    //     0x7733f0: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7733f4: ldur            x1, [fp, #-0x70]
    // 0x7733f8: ldur            x0, [fp, #-0x78]
    // 0x7733fc: LoadField: r2 = r1->field_f
    //     0x7733fc: ldur            w2, [x1, #0xf]
    // 0x773400: DecompressPointer r2
    //     0x773400: add             x2, x2, HEAP, lsl #32
    // 0x773404: stur            x2, [fp, #-0x80]
    // 0x773408: r0 = gVa()
    //     0x773408: bl              #0x7734f0  ; AllocategVaStub -> gVa (size=0x14)
    // 0x77340c: mov             x1, x0
    // 0x773410: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x773414: StoreField: r1->field_f = r0
    //     0x773414: stur            w0, [x1, #0xf]
    // 0x773418: ldur            x0, [fp, #-0x80]
    // 0x77341c: StoreField: r1->field_b = r0
    //     0x77341c: stur            w0, [x1, #0xb]
    // 0x773420: ldur            x4, [fp, #-0x78]
    // 0x773424: r3 = LoadInt32Instr(r4)
    //     0x773424: sbfx            x3, x4, #1, #0x1f
    //     0x773428: tbz             w4, #0, #0x773430
    //     0x77342c: ldur            x3, [x4, #7]
    // 0x773430: mov             x2, x1
    // 0x773434: mov             x1, x0
    // 0x773438: r0 = call 0x392f90
    //     0x773438: bl              #0x392f90
    // 0x77343c: r16 = true
    //     0x77343c: add             x16, NULL, #0x20  ; true
    // 0x773440: str             x16, [SP]
    // 0x773444: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x773444: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x773448: ldr             x4, [x4, #0x870]
    // 0x77344c: r0 = call 0x392d98
    //     0x77344c: bl              #0x392d98
    // 0x773450: r0 = ReturnAsyncNotFuture()
    //     0x773450: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773454: sub             SP, fp, #0x90
    // 0x773458: r1 = 60
    //     0x773458: movz            x1, #0x3c
    // 0x77345c: branchIfSmi(r0, 0x773468)
    //     0x77345c: tbz             w0, #0, #0x773468
    // 0x773460: r1 = LoadClassIdInstr(r0)
    //     0x773460: ldur            x1, [x0, #-1]
    //     0x773464: ubfx            x1, x1, #0xc, #0x14
    // 0x773468: cmp             x1, #0x5e5
    // 0x77346c: b.ne            #0x773484
    // 0x773470: str             x0, [SP]
    // 0x773474: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773474: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773478: ldr             x4, [x4, #0x878]
    // 0x77347c: r0 = call 0x392d98
    //     0x77347c: bl              #0x392d98
    // 0x773480: r0 = ReturnAsyncNotFuture()
    //     0x773480: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773484: r1 = 60
    //     0x773484: movz            x1, #0x3c
    // 0x773488: branchIfSmi(r0, 0x773494)
    //     0x773488: tbz             w0, #0, #0x773494
    // 0x77348c: r1 = LoadClassIdInstr(r0)
    //     0x77348c: ldur            x1, [x0, #-1]
    //     0x773490: ubfx            x1, x1, #0xc, #0x14
    // 0x773494: str             x0, [SP]
    // 0x773498: mov             x0, x1
    // 0x77349c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x77349c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7734a0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7734a0: movz            x17, #0x3a5d
    //     0x7734a4: add             lr, x0, x17
    //     0x7734a8: ldr             lr, [x21, lr, lsl #3]
    //     0x7734ac: blr             lr
    // 0x7734b0: stur            x0, [fp, #-0x70]
    // 0x7734b4: r0 = Mha()
    //     0x7734b4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7734b8: mov             x1, x0
    // 0x7734bc: r0 = "error"
    //     0x7734bc: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7734c0: StoreField: r1->field_7 = r0
    //     0x7734c0: stur            w0, [x1, #7]
    // 0x7734c4: ldur            x0, [fp, #-0x70]
    // 0x7734c8: StoreField: r1->field_b = r0
    //     0x7734c8: stur            w0, [x1, #0xb]
    // 0x7734cc: str             x1, [SP]
    // 0x7734d0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7734d0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7734d4: ldr             x4, [x4, #0x878]
    // 0x7734d8: r0 = call 0x392d98
    //     0x7734d8: bl              #0x392d98
    // 0x7734dc: r0 = ReturnAsyncNotFuture()
    //     0x7734dc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7734e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7734e0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7734e4: b               #0x773340
    // 0x7734e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7734e8: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7734ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7734ec: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 394, size: 0x10, field offset: 0x10
class Gx extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x76d004, size: 0x1e0
    // 0x76d004: EnterFrame
    //     0x76d004: stp             fp, lr, [SP, #-0x10]!
    //     0x76d008: mov             fp, SP
    // 0x76d00c: AllocStack(0x90)
    //     0x76d00c: sub             SP, SP, #0x90
    // 0x76d010: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x76d010: stur            NULL, [fp, #-8]
    //     0x76d014: movz            x0, #0
    //     0x76d018: add             x1, fp, w0, sxtw #2
    //     0x76d01c: ldr             x1, [x1, #0x18]
    //     0x76d020: add             x2, fp, w0, sxtw #2
    //     0x76d024: ldr             x2, [x2, #0x10]
    //     0x76d028: stur            x2, [fp, #-0x78]
    //     0x76d02c: ldur            w3, [x1, #0x17]
    //     0x76d030: add             x3, x3, HEAP, lsl #32
    //     0x76d034: stur            x3, [fp, #-0x70]
    // 0x76d038: CheckStackOverflow
    //     0x76d038: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x76d03c: cmp             SP, x16
    //     0x76d040: b.ls            #0x76d1d4
    // 0x76d044: InitAsync() -> Future<List<Object?>>
    //     0x76d044: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x76d048: ldr             x0, [x0, #0x1d0]
    //     0x76d04c: bl              #0x74ada8  ; InitAsyncStub
    // 0x76d050: ldur            x3, [fp, #-0x78]
    // 0x76d054: cmp             w3, NULL
    // 0x76d058: b.eq            #0x76d1dc
    // 0x76d05c: mov             x0, x3
    // 0x76d060: r2 = Null
    //     0x76d060: mov             x2, NULL
    // 0x76d064: r1 = Null
    //     0x76d064: mov             x1, NULL
    // 0x76d068: r4 = 60
    //     0x76d068: movz            x4, #0x3c
    // 0x76d06c: branchIfSmi(r0, 0x76d078)
    //     0x76d06c: tbz             w0, #0, #0x76d078
    // 0x76d070: r4 = LoadClassIdInstr(r0)
    //     0x76d070: ldur            x4, [x0, #-1]
    //     0x76d074: ubfx            x4, x4, #0xc, #0x14
    // 0x76d078: sub             x4, x4, #0x5a
    // 0x76d07c: cmp             x4, #2
    // 0x76d080: b.ls            #0x76d094
    // 0x76d084: r8 = List<Object?>
    //     0x76d084: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x76d088: r3 = Null
    //     0x76d088: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b08] Null
    //     0x76d08c: ldr             x3, [x3, #0xb08]
    // 0x76d090: r0 = List<Object?>()
    //     0x76d090: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x76d094: ldur            x0, [fp, #-0x78]
    // 0x76d098: r1 = LoadClassIdInstr(r0)
    //     0x76d098: ldur            x1, [x0, #-1]
    //     0x76d09c: ubfx            x1, x1, #0xc, #0x14
    // 0x76d0a0: stp             xzr, x0, [SP]
    // 0x76d0a4: mov             x0, x1
    // 0x76d0a8: mov             lr, x0
    // 0x76d0ac: ldr             lr, [x21, lr, lsl #3]
    // 0x76d0b0: blr             lr
    // 0x76d0b4: mov             x3, x0
    // 0x76d0b8: stur            x3, [fp, #-0x78]
    // 0x76d0bc: cmp             w3, NULL
    // 0x76d0c0: b.eq            #0x76d1e0
    // 0x76d0c4: r3 as int
    //     0x76d0c4: mov             x0, x3
    //     0x76d0c8: mov             x2, NULL
    //     0x76d0cc: mov             x1, NULL
    //     0x76d0d0: tbz             w0, #0, #0x76d0f8
    //     0x76d0d4: ldur            x4, [x0, #-1]
    //     0x76d0d8: ubfx            x4, x4, #0xc, #0x14
    //     0x76d0dc: sub             x4, x4, #0x3c
    //     0x76d0e0: cmp             x4, #1
    //     0x76d0e4: b.ls            #0x76d0f8
    //     0x76d0e8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x76d0ec: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b18] Null
    //     0x76d0f0: ldr             x3, [x3, #0xb18]
    //     0x76d0f4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x76d0f8: ldur            x1, [fp, #-0x70]
    // 0x76d0fc: ldur            x0, [fp, #-0x78]
    // 0x76d100: LoadField: r2 = r1->field_f
    //     0x76d100: ldur            w2, [x1, #0xf]
    // 0x76d104: DecompressPointer r2
    //     0x76d104: add             x2, x2, HEAP, lsl #32
    // 0x76d108: stur            x2, [fp, #-0x80]
    // 0x76d10c: r0 = Gx()
    //     0x76d10c: bl              #0x76d1e4  ; AllocateGxStub -> Gx (size=0x10)
    // 0x76d110: ldur            x1, [fp, #-0x80]
    // 0x76d114: StoreField: r0->field_b = r1
    //     0x76d114: stur            w1, [x0, #0xb]
    // 0x76d118: ldur            x4, [fp, #-0x78]
    // 0x76d11c: r3 = LoadInt32Instr(r4)
    //     0x76d11c: sbfx            x3, x4, #1, #0x1f
    //     0x76d120: tbz             w4, #0, #0x76d128
    //     0x76d124: ldur            x3, [x4, #7]
    // 0x76d128: mov             x2, x0
    // 0x76d12c: r0 = call 0x392f90
    //     0x76d12c: bl              #0x392f90
    // 0x76d130: r16 = true
    //     0x76d130: add             x16, NULL, #0x20  ; true
    // 0x76d134: str             x16, [SP]
    // 0x76d138: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x76d138: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x76d13c: ldr             x4, [x4, #0x870]
    // 0x76d140: r0 = call 0x392d98
    //     0x76d140: bl              #0x392d98
    // 0x76d144: r0 = ReturnAsyncNotFuture()
    //     0x76d144: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d148: sub             SP, fp, #0x90
    // 0x76d14c: r1 = 60
    //     0x76d14c: movz            x1, #0x3c
    // 0x76d150: branchIfSmi(r0, 0x76d15c)
    //     0x76d150: tbz             w0, #0, #0x76d15c
    // 0x76d154: r1 = LoadClassIdInstr(r0)
    //     0x76d154: ldur            x1, [x0, #-1]
    //     0x76d158: ubfx            x1, x1, #0xc, #0x14
    // 0x76d15c: cmp             x1, #0x5e5
    // 0x76d160: b.ne            #0x76d178
    // 0x76d164: str             x0, [SP]
    // 0x76d168: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d168: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d16c: ldr             x4, [x4, #0x878]
    // 0x76d170: r0 = call 0x392d98
    //     0x76d170: bl              #0x392d98
    // 0x76d174: r0 = ReturnAsyncNotFuture()
    //     0x76d174: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d178: r1 = 60
    //     0x76d178: movz            x1, #0x3c
    // 0x76d17c: branchIfSmi(r0, 0x76d188)
    //     0x76d17c: tbz             w0, #0, #0x76d188
    // 0x76d180: r1 = LoadClassIdInstr(r0)
    //     0x76d180: ldur            x1, [x0, #-1]
    //     0x76d184: ubfx            x1, x1, #0xc, #0x14
    // 0x76d188: str             x0, [SP]
    // 0x76d18c: mov             x0, x1
    // 0x76d190: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x76d190: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x76d194: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x76d194: movz            x17, #0x3a5d
    //     0x76d198: add             lr, x0, x17
    //     0x76d19c: ldr             lr, [x21, lr, lsl #3]
    //     0x76d1a0: blr             lr
    // 0x76d1a4: stur            x0, [fp, #-0x70]
    // 0x76d1a8: r0 = Mha()
    //     0x76d1a8: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x76d1ac: mov             x1, x0
    // 0x76d1b0: r0 = "error"
    //     0x76d1b0: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x76d1b4: StoreField: r1->field_7 = r0
    //     0x76d1b4: stur            w0, [x1, #7]
    // 0x76d1b8: ldur            x0, [fp, #-0x70]
    // 0x76d1bc: StoreField: r1->field_b = r0
    //     0x76d1bc: stur            w0, [x1, #0xb]
    // 0x76d1c0: str             x1, [SP]
    // 0x76d1c4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x76d1c4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x76d1c8: ldr             x4, [x4, #0x878]
    // 0x76d1cc: r0 = call 0x392d98
    //     0x76d1cc: bl              #0x392d98
    // 0x76d1d0: r0 = ReturnAsyncNotFuture()
    //     0x76d1d0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x76d1d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x76d1d4: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76d1d8: b               #0x76d044
    // 0x76d1dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d1dc: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x76d1e0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x76d1e0: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 395, size: 0x1c, field offset: 0x10
class fVa extends Gx {

  late final _RUa _gvf; // offset: 0x10
  late final gVa wbc; // offset: 0x18

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x7734fc, size: 0x390
    // 0x7734fc: EnterFrame
    //     0x7734fc: stp             fp, lr, [SP, #-0x10]!
    //     0x773500: mov             fp, SP
    // 0x773504: AllocStack(0xf8)
    //     0x773504: sub             SP, SP, #0xf8
    // 0x773508: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0xa0 */)
    //     0x773508: stur            NULL, [fp, #-8]
    //     0x77350c: movz            x0, #0
    //     0x773510: add             x1, fp, w0, sxtw #2
    //     0x773514: ldr             x1, [x1, #0x18]
    //     0x773518: add             x2, fp, w0, sxtw #2
    //     0x77351c: ldr             x2, [x2, #0x10]
    //     0x773520: stur            x2, [fp, #-0xa0]
    //     0x773524: ldur            w3, [x1, #0x17]
    //     0x773528: add             x3, x3, HEAP, lsl #32
    //     0x77352c: stur            x3, [fp, #-0x98]
    // 0x773530: CheckStackOverflow
    //     0x773530: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x773534: cmp             SP, x16
    //     0x773538: b.ls            #0x77386c
    // 0x77353c: InitAsync() -> Future<List<Object?>>
    //     0x77353c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x773540: ldr             x0, [x0, #0x1d0]
    //     0x773544: bl              #0x74ada8  ; InitAsyncStub
    // 0x773548: ldur            x3, [fp, #-0xa0]
    // 0x77354c: cmp             w3, NULL
    // 0x773550: b.eq            #0x773874
    // 0x773554: mov             x0, x3
    // 0x773558: r2 = Null
    //     0x773558: mov             x2, NULL
    // 0x77355c: r1 = Null
    //     0x77355c: mov             x1, NULL
    // 0x773560: r4 = 60
    //     0x773560: movz            x4, #0x3c
    // 0x773564: branchIfSmi(r0, 0x773570)
    //     0x773564: tbz             w0, #0, #0x773570
    // 0x773568: r4 = LoadClassIdInstr(r0)
    //     0x773568: ldur            x4, [x0, #-1]
    //     0x77356c: ubfx            x4, x4, #0xc, #0x14
    // 0x773570: sub             x4, x4, #0x5a
    // 0x773574: cmp             x4, #2
    // 0x773578: b.ls            #0x77358c
    // 0x77357c: r8 = List<Object?>
    //     0x77357c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773580: r3 = Null
    //     0x773580: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a7b8] Null
    //     0x773584: ldr             x3, [x3, #0x7b8]
    // 0x773588: r0 = List<Object?>()
    //     0x773588: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x77358c: ldur            x1, [fp, #-0xa0]
    // 0x773590: r0 = LoadClassIdInstr(r1)
    //     0x773590: ldur            x0, [x1, #-1]
    //     0x773594: ubfx            x0, x0, #0xc, #0x14
    // 0x773598: stp             xzr, x1, [SP]
    // 0x77359c: mov             lr, x0
    // 0x7735a0: ldr             lr, [x21, lr, lsl #3]
    // 0x7735a4: blr             lr
    // 0x7735a8: mov             x3, x0
    // 0x7735ac: stur            x3, [fp, #-0xa8]
    // 0x7735b0: cmp             w3, NULL
    // 0x7735b4: b.eq            #0x773878
    // 0x7735b8: mov             x0, x3
    // 0x7735bc: r2 = Null
    //     0x7735bc: mov             x2, NULL
    // 0x7735c0: r1 = Null
    //     0x7735c0: mov             x1, NULL
    // 0x7735c4: r4 = 60
    //     0x7735c4: movz            x4, #0x3c
    // 0x7735c8: branchIfSmi(r0, 0x7735d4)
    //     0x7735c8: tbz             w0, #0, #0x7735d4
    // 0x7735cc: r4 = LoadClassIdInstr(r0)
    //     0x7735cc: ldur            x4, [x0, #-1]
    //     0x7735d0: ubfx            x4, x4, #0xc, #0x14
    // 0x7735d4: cmp             x4, #0x18b
    // 0x7735d8: b.eq            #0x7735f0
    // 0x7735dc: r8 = fVa
    //     0x7735dc: add             x8, PP, #0x19, lsl #12  ; [pp+0x19d48] Type: fVa
    //     0x7735e0: ldr             x8, [x8, #0xd48]
    // 0x7735e4: r3 = Null
    //     0x7735e4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a7c8] Null
    //     0x7735e8: ldr             x3, [x3, #0x7c8]
    // 0x7735ec: r0 = DefaultTypeTest()
    //     0x7735ec: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x7735f0: ldur            x1, [fp, #-0xa0]
    // 0x7735f4: r0 = LoadClassIdInstr(r1)
    //     0x7735f4: ldur            x0, [x1, #-1]
    //     0x7735f8: ubfx            x0, x0, #0xc, #0x14
    // 0x7735fc: r16 = 2
    //     0x7735fc: movz            x16, #0x2
    // 0x773600: stp             x16, x1, [SP]
    // 0x773604: mov             lr, x0
    // 0x773608: ldr             lr, [x21, lr, lsl #3]
    // 0x77360c: blr             lr
    // 0x773610: mov             x3, x0
    // 0x773614: stur            x3, [fp, #-0xb0]
    // 0x773618: cmp             w3, NULL
    // 0x77361c: b.eq            #0x77387c
    // 0x773620: r3 as int
    //     0x773620: mov             x0, x3
    //     0x773624: mov             x2, NULL
    //     0x773628: mov             x1, NULL
    //     0x77362c: tbz             w0, #0, #0x773654
    //     0x773630: ldur            x4, [x0, #-1]
    //     0x773634: ubfx            x4, x4, #0xc, #0x14
    //     0x773638: sub             x4, x4, #0x3c
    //     0x77363c: cmp             x4, #1
    //     0x773640: b.ls            #0x773654
    //     0x773644: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773648: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a7d8] Null
    //     0x77364c: ldr             x3, [x3, #0x7d8]
    //     0x773650: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773654: ldur            x1, [fp, #-0xa0]
    // 0x773658: r0 = LoadClassIdInstr(r1)
    //     0x773658: ldur            x0, [x1, #-1]
    //     0x77365c: ubfx            x0, x0, #0xc, #0x14
    // 0x773660: r16 = 4
    //     0x773660: movz            x16, #0x4
    // 0x773664: stp             x16, x1, [SP]
    // 0x773668: mov             lr, x0
    // 0x77366c: ldr             lr, [x21, lr, lsl #3]
    // 0x773670: blr             lr
    // 0x773674: mov             x3, x0
    // 0x773678: stur            x3, [fp, #-0xb8]
    // 0x77367c: cmp             w3, NULL
    // 0x773680: b.eq            #0x773880
    // 0x773684: r3 as int
    //     0x773684: mov             x0, x3
    //     0x773688: mov             x2, NULL
    //     0x77368c: mov             x1, NULL
    //     0x773690: tbz             w0, #0, #0x7736b8
    //     0x773694: ldur            x4, [x0, #-1]
    //     0x773698: ubfx            x4, x4, #0xc, #0x14
    //     0x77369c: sub             x4, x4, #0x3c
    //     0x7736a0: cmp             x4, #1
    //     0x7736a4: b.ls            #0x7736b8
    //     0x7736a8: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x7736ac: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a7e8] Null
    //     0x7736b0: ldr             x3, [x3, #0x7e8]
    //     0x7736b4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7736b8: ldur            x1, [fp, #-0xa0]
    // 0x7736bc: r0 = LoadClassIdInstr(r1)
    //     0x7736bc: ldur            x0, [x1, #-1]
    //     0x7736c0: ubfx            x0, x0, #0xc, #0x14
    // 0x7736c4: r16 = 6
    //     0x7736c4: movz            x16, #0x6
    // 0x7736c8: stp             x16, x1, [SP]
    // 0x7736cc: mov             lr, x0
    // 0x7736d0: ldr             lr, [x21, lr, lsl #3]
    // 0x7736d4: blr             lr
    // 0x7736d8: mov             x3, x0
    // 0x7736dc: stur            x3, [fp, #-0xc0]
    // 0x7736e0: cmp             w3, NULL
    // 0x7736e4: b.eq            #0x773884
    // 0x7736e8: r3 as int
    //     0x7736e8: mov             x0, x3
    //     0x7736ec: mov             x2, NULL
    //     0x7736f0: mov             x1, NULL
    //     0x7736f4: tbz             w0, #0, #0x77371c
    //     0x7736f8: ldur            x4, [x0, #-1]
    //     0x7736fc: ubfx            x4, x4, #0xc, #0x14
    //     0x773700: sub             x4, x4, #0x3c
    //     0x773704: cmp             x4, #1
    //     0x773708: b.ls            #0x77371c
    //     0x77370c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773710: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a7f8] Null
    //     0x773714: ldr             x3, [x3, #0x7f8]
    //     0x773718: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x77371c: ldur            x0, [fp, #-0xa0]
    // 0x773720: r1 = LoadClassIdInstr(r0)
    //     0x773720: ldur            x1, [x0, #-1]
    //     0x773724: ubfx            x1, x1, #0xc, #0x14
    // 0x773728: r16 = 8
    //     0x773728: movz            x16, #0x8
    // 0x77372c: stp             x16, x0, [SP]
    // 0x773730: mov             x0, x1
    // 0x773734: mov             lr, x0
    // 0x773738: ldr             lr, [x21, lr, lsl #3]
    // 0x77373c: blr             lr
    // 0x773740: mov             x3, x0
    // 0x773744: stur            x3, [fp, #-0xa0]
    // 0x773748: cmp             w3, NULL
    // 0x77374c: b.eq            #0x773888
    // 0x773750: r3 as int
    //     0x773750: mov             x0, x3
    //     0x773754: mov             x2, NULL
    //     0x773758: mov             x1, NULL
    //     0x77375c: tbz             w0, #0, #0x773784
    //     0x773760: ldur            x4, [x0, #-1]
    //     0x773764: ubfx            x4, x4, #0xc, #0x14
    //     0x773768: sub             x4, x4, #0x3c
    //     0x77376c: cmp             x4, #1
    //     0x773770: b.ls            #0x773784
    //     0x773774: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773778: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a808] Null
    //     0x77377c: ldr             x3, [x3, #0x808]
    //     0x773780: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773784: ldur            x1, [fp, #-0xa8]
    // 0x773788: LoadField: r2 = r1->field_13
    //     0x773788: ldur            w2, [x1, #0x13]
    // 0x77378c: DecompressPointer r2
    //     0x77378c: add             x2, x2, HEAP, lsl #32
    // 0x773790: stur            x2, [fp, #-0xc8]
    // 0x773794: cmp             w2, NULL
    // 0x773798: b.eq            #0x7737c8
    // 0x77379c: stp             x1, x2, [SP, #0x20]
    // 0x7737a0: ldur            x16, [fp, #-0xb0]
    // 0x7737a4: ldur            lr, [fp, #-0xb8]
    // 0x7737a8: stp             lr, x16, [SP, #0x10]
    // 0x7737ac: ldur            x16, [fp, #-0xc0]
    // 0x7737b0: ldur            lr, [fp, #-0xa0]
    // 0x7737b4: stp             lr, x16, [SP]
    // 0x7737b8: mov             x0, x2
    // 0x7737bc: ClosureCall
    //     0x7737bc: ldr             x4, [PP, #0x8b0]  ; [pp+0x8b0] List(5) [0, 0x6, 0x6, 0x6, Null]
    //     0x7737c0: ldur            x2, [x0, #0x1f]
    //     0x7737c4: blr             x2
    // 0x7737c8: r16 = true
    //     0x7737c8: add             x16, NULL, #0x20  ; true
    // 0x7737cc: str             x16, [SP]
    // 0x7737d0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7737d0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7737d4: ldr             x4, [x4, #0x870]
    // 0x7737d8: r0 = call 0x392d98
    //     0x7737d8: bl              #0x392d98
    // 0x7737dc: r0 = ReturnAsyncNotFuture()
    //     0x7737dc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7737e0: sub             SP, fp, #0xf8
    // 0x7737e4: r1 = 60
    //     0x7737e4: movz            x1, #0x3c
    // 0x7737e8: branchIfSmi(r0, 0x7737f4)
    //     0x7737e8: tbz             w0, #0, #0x7737f4
    // 0x7737ec: r1 = LoadClassIdInstr(r0)
    //     0x7737ec: ldur            x1, [x0, #-1]
    //     0x7737f0: ubfx            x1, x1, #0xc, #0x14
    // 0x7737f4: cmp             x1, #0x5e5
    // 0x7737f8: b.ne            #0x773810
    // 0x7737fc: str             x0, [SP]
    // 0x773800: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773800: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773804: ldr             x4, [x4, #0x878]
    // 0x773808: r0 = call 0x392d98
    //     0x773808: bl              #0x392d98
    // 0x77380c: r0 = ReturnAsyncNotFuture()
    //     0x77380c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773810: r1 = 60
    //     0x773810: movz            x1, #0x3c
    // 0x773814: branchIfSmi(r0, 0x773820)
    //     0x773814: tbz             w0, #0, #0x773820
    // 0x773818: r1 = LoadClassIdInstr(r0)
    //     0x773818: ldur            x1, [x0, #-1]
    //     0x77381c: ubfx            x1, x1, #0xc, #0x14
    // 0x773820: str             x0, [SP]
    // 0x773824: mov             x0, x1
    // 0x773828: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x773828: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x77382c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x77382c: movz            x17, #0x3a5d
    //     0x773830: add             lr, x0, x17
    //     0x773834: ldr             lr, [x21, lr, lsl #3]
    //     0x773838: blr             lr
    // 0x77383c: stur            x0, [fp, #-0x98]
    // 0x773840: r0 = Mha()
    //     0x773840: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x773844: mov             x1, x0
    // 0x773848: r0 = "error"
    //     0x773848: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x77384c: StoreField: r1->field_7 = r0
    //     0x77384c: stur            w0, [x1, #7]
    // 0x773850: ldur            x0, [fp, #-0x98]
    // 0x773854: StoreField: r1->field_b = r0
    //     0x773854: stur            w0, [x1, #0xb]
    // 0x773858: str             x1, [SP]
    // 0x77385c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x77385c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773860: ldr             x4, [x4, #0x878]
    // 0x773864: r0 = call 0x392d98
    //     0x773864: bl              #0x392d98
    // 0x773868: r0 = ReturnAsyncNotFuture()
    //     0x773868: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x77386c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77386c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x773870: b               #0x77353c
    // 0x773874: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773874: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773878: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773878: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77387c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77387c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773880: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773880: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773884: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773884: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773888: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773888: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77388c, size: 0x1f4
    // 0x77388c: EnterFrame
    //     0x77388c: stp             fp, lr, [SP, #-0x10]!
    //     0x773890: mov             fp, SP
    // 0x773894: AllocStack(0x90)
    //     0x773894: sub             SP, SP, #0x90
    // 0x773898: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x773898: stur            NULL, [fp, #-8]
    //     0x77389c: movz            x0, #0
    //     0x7738a0: add             x1, fp, w0, sxtw #2
    //     0x7738a4: ldr             x1, [x1, #0x18]
    //     0x7738a8: add             x2, fp, w0, sxtw #2
    //     0x7738ac: ldr             x2, [x2, #0x10]
    //     0x7738b0: stur            x2, [fp, #-0x78]
    //     0x7738b4: ldur            w3, [x1, #0x17]
    //     0x7738b8: add             x3, x3, HEAP, lsl #32
    //     0x7738bc: stur            x3, [fp, #-0x70]
    // 0x7738c0: CheckStackOverflow
    //     0x7738c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7738c4: cmp             SP, x16
    //     0x7738c8: b.ls            #0x773a70
    // 0x7738cc: InitAsync() -> Future<List<Object?>>
    //     0x7738cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7738d0: ldr             x0, [x0, #0x1d0]
    //     0x7738d4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7738d8: ldur            x3, [fp, #-0x78]
    // 0x7738dc: cmp             w3, NULL
    // 0x7738e0: b.eq            #0x773a78
    // 0x7738e4: mov             x0, x3
    // 0x7738e8: r2 = Null
    //     0x7738e8: mov             x2, NULL
    // 0x7738ec: r1 = Null
    //     0x7738ec: mov             x1, NULL
    // 0x7738f0: r4 = 60
    //     0x7738f0: movz            x4, #0x3c
    // 0x7738f4: branchIfSmi(r0, 0x773900)
    //     0x7738f4: tbz             w0, #0, #0x773900
    // 0x7738f8: r4 = LoadClassIdInstr(r0)
    //     0x7738f8: ldur            x4, [x0, #-1]
    //     0x7738fc: ubfx            x4, x4, #0xc, #0x14
    // 0x773900: sub             x4, x4, #0x5a
    // 0x773904: cmp             x4, #2
    // 0x773908: b.ls            #0x77391c
    // 0x77390c: r8 = List<Object?>
    //     0x77390c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773910: r3 = Null
    //     0x773910: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a818] Null
    //     0x773914: ldr             x3, [x3, #0x818]
    // 0x773918: r0 = List<Object?>()
    //     0x773918: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x77391c: ldur            x0, [fp, #-0x78]
    // 0x773920: r1 = LoadClassIdInstr(r0)
    //     0x773920: ldur            x1, [x0, #-1]
    //     0x773924: ubfx            x1, x1, #0xc, #0x14
    // 0x773928: stp             xzr, x0, [SP]
    // 0x77392c: mov             x0, x1
    // 0x773930: mov             lr, x0
    // 0x773934: ldr             lr, [x21, lr, lsl #3]
    // 0x773938: blr             lr
    // 0x77393c: mov             x3, x0
    // 0x773940: stur            x3, [fp, #-0x78]
    // 0x773944: cmp             w3, NULL
    // 0x773948: b.eq            #0x773a7c
    // 0x77394c: r3 as int
    //     0x77394c: mov             x0, x3
    //     0x773950: mov             x2, NULL
    //     0x773954: mov             x1, NULL
    //     0x773958: tbz             w0, #0, #0x773980
    //     0x77395c: ldur            x4, [x0, #-1]
    //     0x773960: ubfx            x4, x4, #0xc, #0x14
    //     0x773964: sub             x4, x4, #0x3c
    //     0x773968: cmp             x4, #1
    //     0x77396c: b.ls            #0x773980
    //     0x773970: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773974: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a828] Null
    //     0x773978: ldr             x3, [x3, #0x828]
    //     0x77397c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773980: ldur            x1, [fp, #-0x70]
    // 0x773984: ldur            x0, [fp, #-0x78]
    // 0x773988: LoadField: r2 = r1->field_f
    //     0x773988: ldur            w2, [x1, #0xf]
    // 0x77398c: DecompressPointer r2
    //     0x77398c: add             x2, x2, HEAP, lsl #32
    // 0x773990: stur            x2, [fp, #-0x80]
    // 0x773994: r0 = fVa()
    //     0x773994: bl              #0x773a80  ; AllocatefVaStub -> fVa (size=0x1c)
    // 0x773998: mov             x1, x0
    // 0x77399c: ldr             x0, [THR, #0x90]  ; THR::object_sentinel
    // 0x7739a0: StoreField: r1->field_f = r0
    //     0x7739a0: stur            w0, [x1, #0xf]
    // 0x7739a4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7739a4: stur            w0, [x1, #0x17]
    // 0x7739a8: ldur            x0, [fp, #-0x80]
    // 0x7739ac: StoreField: r1->field_b = r0
    //     0x7739ac: stur            w0, [x1, #0xb]
    // 0x7739b0: ldur            x4, [fp, #-0x78]
    // 0x7739b4: r3 = LoadInt32Instr(r4)
    //     0x7739b4: sbfx            x3, x4, #1, #0x1f
    //     0x7739b8: tbz             w4, #0, #0x7739c0
    //     0x7739bc: ldur            x3, [x4, #7]
    // 0x7739c0: mov             x2, x1
    // 0x7739c4: mov             x1, x0
    // 0x7739c8: r0 = call 0x392f90
    //     0x7739c8: bl              #0x392f90
    // 0x7739cc: r16 = true
    //     0x7739cc: add             x16, NULL, #0x20  ; true
    // 0x7739d0: str             x16, [SP]
    // 0x7739d4: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x7739d4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x7739d8: ldr             x4, [x4, #0x870]
    // 0x7739dc: r0 = call 0x392d98
    //     0x7739dc: bl              #0x392d98
    // 0x7739e0: r0 = ReturnAsyncNotFuture()
    //     0x7739e0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7739e4: sub             SP, fp, #0x90
    // 0x7739e8: r1 = 60
    //     0x7739e8: movz            x1, #0x3c
    // 0x7739ec: branchIfSmi(r0, 0x7739f8)
    //     0x7739ec: tbz             w0, #0, #0x7739f8
    // 0x7739f0: r1 = LoadClassIdInstr(r0)
    //     0x7739f0: ldur            x1, [x0, #-1]
    //     0x7739f4: ubfx            x1, x1, #0xc, #0x14
    // 0x7739f8: cmp             x1, #0x5e5
    // 0x7739fc: b.ne            #0x773a14
    // 0x773a00: str             x0, [SP]
    // 0x773a04: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773a04: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773a08: ldr             x4, [x4, #0x878]
    // 0x773a0c: r0 = call 0x392d98
    //     0x773a0c: bl              #0x392d98
    // 0x773a10: r0 = ReturnAsyncNotFuture()
    //     0x773a10: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773a14: r1 = 60
    //     0x773a14: movz            x1, #0x3c
    // 0x773a18: branchIfSmi(r0, 0x773a24)
    //     0x773a18: tbz             w0, #0, #0x773a24
    // 0x773a1c: r1 = LoadClassIdInstr(r0)
    //     0x773a1c: ldur            x1, [x0, #-1]
    //     0x773a20: ubfx            x1, x1, #0xc, #0x14
    // 0x773a24: str             x0, [SP]
    // 0x773a28: mov             x0, x1
    // 0x773a2c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x773a2c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x773a30: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x773a30: movz            x17, #0x3a5d
    //     0x773a34: add             lr, x0, x17
    //     0x773a38: ldr             lr, [x21, lr, lsl #3]
    //     0x773a3c: blr             lr
    // 0x773a40: stur            x0, [fp, #-0x70]
    // 0x773a44: r0 = Mha()
    //     0x773a44: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x773a48: mov             x1, x0
    // 0x773a4c: r0 = "error"
    //     0x773a4c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x773a50: StoreField: r1->field_7 = r0
    //     0x773a50: stur            w0, [x1, #7]
    // 0x773a54: ldur            x0, [fp, #-0x70]
    // 0x773a58: StoreField: r1->field_b = r0
    //     0x773a58: stur            w0, [x1, #0xb]
    // 0x773a5c: str             x1, [SP]
    // 0x773a60: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773a60: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773a64: ldr             x4, [x4, #0x878]
    // 0x773a68: r0 = call 0x392d98
    //     0x773a68: bl              #0x392d98
    // 0x773a6c: r0 = ReturnAsyncNotFuture()
    //     0x773a6c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773a70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x773a70: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x773a74: b               #0x7738cc
    // 0x773a78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773a78: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773a7c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773a7c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x77577c, size: 0xb0
    // 0x77577c: EnterFrame
    //     0x77577c: stp             fp, lr, [SP, #-0x10]!
    //     0x775780: mov             fp, SP
    // 0x775784: AllocStack(0x18)
    //     0x775784: sub             SP, SP, #0x18
    // 0x775788: SetupParameters(fVa this /* r1 */)
    //     0x775788: stur            NULL, [fp, #-8]
    //     0x77578c: movz            x0, #0
    //     0x775790: add             x1, fp, w0, sxtw #2
    //     0x775794: ldr             x1, [x1, #0x10]
    //     0x775798: ldur            w2, [x1, #0x17]
    //     0x77579c: add             x2, x2, HEAP, lsl #32
    //     0x7757a0: stur            x2, [fp, #-0x10]
    // 0x7757a4: CheckStackOverflow
    //     0x7757a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7757a8: cmp             SP, x16
    //     0x7757ac: b.ls            #0x775824
    // 0x7757b0: InitAsync() -> Future<Null?>
    //     0x7757b0: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7757b4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7757b8: ldur            x1, [fp, #-0x10]
    // 0x7757bc: LoadField: r2 = r1->field_f
    //     0x7757bc: ldur            w2, [x1, #0xf]
    // 0x7757c0: DecompressPointer r2
    //     0x7757c0: add             x2, x2, HEAP, lsl #32
    // 0x7757c4: mov             x0, x2
    // 0x7757c8: stur            x2, [fp, #-0x18]
    // 0x7757cc: r0 = Await()
    //     0x7757cc: bl              #0x74ab64  ; AwaitStub
    // 0x7757d0: mov             x3, x0
    // 0x7757d4: r2 = Null
    //     0x7757d4: mov             x2, NULL
    // 0x7757d8: r1 = Null
    //     0x7757d8: mov             x1, NULL
    // 0x7757dc: stur            x3, [fp, #-0x10]
    // 0x7757e0: r4 = 60
    //     0x7757e0: movz            x4, #0x3c
    // 0x7757e4: branchIfSmi(r0, 0x7757f0)
    //     0x7757e4: tbz             w0, #0, #0x7757f0
    // 0x7757e8: r4 = LoadClassIdInstr(r0)
    //     0x7757e8: ldur            x4, [x0, #-1]
    //     0x7757ec: ubfx            x4, x4, #0xc, #0x14
    // 0x7757f0: sub             x4, x4, #0x5a
    // 0x7757f4: cmp             x4, #2
    // 0x7757f8: b.ls            #0x77580c
    // 0x7757fc: r8 = List<Object?>?
    //     0x7757fc: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x775800: r3 = Null
    //     0x775800: add             x3, PP, #0x19, lsl #12  ; [pp+0x197c0] Null
    //     0x775804: ldr             x3, [x3, #0x7c0]
    // 0x775808: r0 = List<Object?>?()
    //     0x775808: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x77580c: ldur            x1, [fp, #-0x10]
    // 0x775810: r2 = "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_defaultConstructor"
    //     0x775810: add             x2, PP, #0x19, lsl #12  ; [pp+0x197b0] "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_defaultConstructor"
    //     0x775814: ldr             x2, [x2, #0x7b0]
    // 0x775818: r0 = call 0x3951e4
    //     0x775818: bl              #0x3951e4
    // 0x77581c: r0 = Null
    //     0x77581c: mov             x0, NULL
    // 0x775820: r0 = ReturnAsyncNotFuture()
    //     0x775820: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x775824: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x775824: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x775828: b               #0x7757b0
  }
  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7ac638, size: 0x154
    // 0x7ac638: EnterFrame
    //     0x7ac638: stp             fp, lr, [SP, #-0x10]!
    //     0x7ac63c: mov             fp, SP
    // 0x7ac640: AllocStack(0x30)
    //     0x7ac640: sub             SP, SP, #0x30
    // 0x7ac644: SetupParameters(fVa this /* r1 */)
    //     0x7ac644: stur            NULL, [fp, #-8]
    //     0x7ac648: movz            x0, #0
    //     0x7ac64c: add             x1, fp, w0, sxtw #2
    //     0x7ac650: ldr             x1, [x1, #0x10]
    //     0x7ac654: ldur            w2, [x1, #0x17]
    //     0x7ac658: add             x2, x2, HEAP, lsl #32
    //     0x7ac65c: stur            x2, [fp, #-0x10]
    // 0x7ac660: CheckStackOverflow
    //     0x7ac660: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ac664: cmp             SP, x16
    //     0x7ac668: b.ls            #0x7ac784
    // 0x7ac66c: InitAsync() -> Future<Null?>
    //     0x7ac66c: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7ac670: bl              #0x74ada8  ; InitAsyncStub
    // 0x7ac674: ldur            x0, [fp, #-0x10]
    // 0x7ac678: LoadField: r2 = r0->field_13
    //     0x7ac678: ldur            w2, [x0, #0x13]
    // 0x7ac67c: DecompressPointer r2
    //     0x7ac67c: add             x2, x2, HEAP, lsl #32
    // 0x7ac680: stur            x2, [fp, #-0x20]
    // 0x7ac684: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7ac684: ldur            w3, [x0, #0x17]
    // 0x7ac688: DecompressPointer r3
    //     0x7ac688: add             x3, x3, HEAP, lsl #32
    // 0x7ac68c: stur            x3, [fp, #-0x18]
    // 0x7ac690: r1 = <Object?>
    //     0x7ac690: ldr             x1, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x7ac694: r0 = dia()
    //     0x7ac694: bl              #0x76b574  ; AllocatediaStub -> dia<X0> (size=0x18)
    // 0x7ac698: mov             x3, x0
    // 0x7ac69c: r0 = "dev.flutter.pigeon.webview_flutter_android.WebView.settings"
    //     0x7ac69c: add             x0, PP, #0x23, lsl #12  ; [pp+0x23080] "dev.flutter.pigeon.webview_flutter_android.WebView.settings"
    //     0x7ac6a0: ldr             x0, [x0, #0x80]
    // 0x7ac6a4: stur            x3, [fp, #-0x28]
    // 0x7ac6a8: StoreField: r3->field_b = r0
    //     0x7ac6a8: stur            w0, [x3, #0xb]
    // 0x7ac6ac: ldur            x1, [fp, #-0x20]
    // 0x7ac6b0: StoreField: r3->field_f = r1
    //     0x7ac6b0: stur            w1, [x3, #0xf]
    // 0x7ac6b4: ldur            x1, [fp, #-0x18]
    // 0x7ac6b8: StoreField: r3->field_13 = r1
    //     0x7ac6b8: stur            w1, [x3, #0x13]
    // 0x7ac6bc: ldur            x4, [fp, #-0x10]
    // 0x7ac6c0: LoadField: r5 = r4->field_f
    //     0x7ac6c0: ldur            w5, [x4, #0xf]
    // 0x7ac6c4: DecompressPointer r5
    //     0x7ac6c4: add             x5, x5, HEAP, lsl #32
    // 0x7ac6c8: stur            x5, [fp, #-0x20]
    // 0x7ac6cc: LoadField: r6 = r4->field_1b
    //     0x7ac6cc: ldur            w6, [x4, #0x1b]
    // 0x7ac6d0: DecompressPointer r6
    //     0x7ac6d0: add             x6, x6, HEAP, lsl #32
    // 0x7ac6d4: stur            x6, [fp, #-0x18]
    // 0x7ac6d8: r1 = Null
    //     0x7ac6d8: mov             x1, NULL
    // 0x7ac6dc: r2 = 4
    //     0x7ac6dc: movz            x2, #0x4
    // 0x7ac6e0: r0 = AllocateArray()
    //     0x7ac6e0: bl              #0x7de31c  ; AllocateArrayStub
    // 0x7ac6e4: mov             x2, x0
    // 0x7ac6e8: ldur            x0, [fp, #-0x20]
    // 0x7ac6ec: stur            x2, [fp, #-0x30]
    // 0x7ac6f0: StoreField: r2->field_f = r0
    //     0x7ac6f0: stur            w0, [x2, #0xf]
    // 0x7ac6f4: ldur            x0, [fp, #-0x18]
    // 0x7ac6f8: StoreField: r2->field_13 = r0
    //     0x7ac6f8: stur            w0, [x2, #0x13]
    // 0x7ac6fc: r1 = <Object?>
    //     0x7ac6fc: ldr             x1, [PP, #0x2ff8]  ; [pp+0x2ff8] TypeArguments: <Object?>
    // 0x7ac700: r0 = AllocateGrowableArray()
    //     0x7ac700: bl              #0x7dd1ec  ; AllocateGrowableArrayStub
    // 0x7ac704: mov             x1, x0
    // 0x7ac708: ldur            x0, [fp, #-0x30]
    // 0x7ac70c: StoreField: r1->field_f = r0
    //     0x7ac70c: stur            w0, [x1, #0xf]
    // 0x7ac710: r0 = 4
    //     0x7ac710: movz            x0, #0x4
    // 0x7ac714: StoreField: r1->field_b = r0
    //     0x7ac714: stur            w0, [x1, #0xb]
    // 0x7ac718: mov             x2, x1
    // 0x7ac71c: ldur            x1, [fp, #-0x28]
    // 0x7ac720: r0 = __unknown_function__()
    //     0x7ac720: bl              #0x760584  ; [] ::__unknown_function__
    // 0x7ac724: mov             x1, x0
    // 0x7ac728: stur            x1, [fp, #-0x18]
    // 0x7ac72c: r0 = Await()
    //     0x7ac72c: bl              #0x74ab64  ; AwaitStub
    // 0x7ac730: mov             x3, x0
    // 0x7ac734: r2 = Null
    //     0x7ac734: mov             x2, NULL
    // 0x7ac738: r1 = Null
    //     0x7ac738: mov             x1, NULL
    // 0x7ac73c: stur            x3, [fp, #-0x10]
    // 0x7ac740: r4 = 60
    //     0x7ac740: movz            x4, #0x3c
    // 0x7ac744: branchIfSmi(r0, 0x7ac750)
    //     0x7ac744: tbz             w0, #0, #0x7ac750
    // 0x7ac748: r4 = LoadClassIdInstr(r0)
    //     0x7ac748: ldur            x4, [x0, #-1]
    //     0x7ac74c: ubfx            x4, x4, #0xc, #0x14
    // 0x7ac750: sub             x4, x4, #0x5a
    // 0x7ac754: cmp             x4, #2
    // 0x7ac758: b.ls            #0x7ac76c
    // 0x7ac75c: r8 = List<Object?>?
    //     0x7ac75c: ldr             x8, [PP, #0x1400]  ; [pp+0x1400] Type: List<Object?>?
    // 0x7ac760: r3 = Null
    //     0x7ac760: add             x3, PP, #0x23, lsl #12  ; [pp+0x23088] Null
    //     0x7ac764: ldr             x3, [x3, #0x88]
    // 0x7ac768: r0 = List<Object?>?()
    //     0x7ac768: bl              #0x74b2dc  ; IsType_List<Object?>?_Stub
    // 0x7ac76c: ldur            x1, [fp, #-0x10]
    // 0x7ac770: r2 = "dev.flutter.pigeon.webview_flutter_android.WebView.settings"
    //     0x7ac770: add             x2, PP, #0x23, lsl #12  ; [pp+0x23080] "dev.flutter.pigeon.webview_flutter_android.WebView.settings"
    //     0x7ac774: ldr             x2, [x2, #0x80]
    // 0x7ac778: r0 = call 0x3951e4
    //     0x7ac778: bl              #0x3951e4
    // 0x7ac77c: r0 = Null
    //     0x7ac77c: mov             x0, NULL
    // 0x7ac780: r0 = ReturnAsyncNotFuture()
    //     0x7ac780: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7ac784: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ac784: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ac788: b               #0x7ac66c
  }
}

// class id: 396, size: 0x10, field offset: 0x10
class eVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x773a8c, size: 0x1e0
    // 0x773a8c: EnterFrame
    //     0x773a8c: stp             fp, lr, [SP, #-0x10]!
    //     0x773a90: mov             fp, SP
    // 0x773a94: AllocStack(0x90)
    //     0x773a94: sub             SP, SP, #0x90
    // 0x773a98: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x78 */)
    //     0x773a98: stur            NULL, [fp, #-8]
    //     0x773a9c: movz            x0, #0
    //     0x773aa0: add             x1, fp, w0, sxtw #2
    //     0x773aa4: ldr             x1, [x1, #0x18]
    //     0x773aa8: add             x2, fp, w0, sxtw #2
    //     0x773aac: ldr             x2, [x2, #0x10]
    //     0x773ab0: stur            x2, [fp, #-0x78]
    //     0x773ab4: ldur            w3, [x1, #0x17]
    //     0x773ab8: add             x3, x3, HEAP, lsl #32
    //     0x773abc: stur            x3, [fp, #-0x70]
    // 0x773ac0: CheckStackOverflow
    //     0x773ac0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x773ac4: cmp             SP, x16
    //     0x773ac8: b.ls            #0x773c5c
    // 0x773acc: InitAsync() -> Future<List<Object?>>
    //     0x773acc: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x773ad0: ldr             x0, [x0, #0x1d0]
    //     0x773ad4: bl              #0x74ada8  ; InitAsyncStub
    // 0x773ad8: ldur            x3, [fp, #-0x78]
    // 0x773adc: cmp             w3, NULL
    // 0x773ae0: b.eq            #0x773c64
    // 0x773ae4: mov             x0, x3
    // 0x773ae8: r2 = Null
    //     0x773ae8: mov             x2, NULL
    // 0x773aec: r1 = Null
    //     0x773aec: mov             x1, NULL
    // 0x773af0: r4 = 60
    //     0x773af0: movz            x4, #0x3c
    // 0x773af4: branchIfSmi(r0, 0x773b00)
    //     0x773af4: tbz             w0, #0, #0x773b00
    // 0x773af8: r4 = LoadClassIdInstr(r0)
    //     0x773af8: ldur            x4, [x0, #-1]
    //     0x773afc: ubfx            x4, x4, #0xc, #0x14
    // 0x773b00: sub             x4, x4, #0x5a
    // 0x773b04: cmp             x4, #2
    // 0x773b08: b.ls            #0x773b1c
    // 0x773b0c: r8 = List<Object?>
    //     0x773b0c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773b10: r3 = Null
    //     0x773b10: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a848] Null
    //     0x773b14: ldr             x3, [x3, #0x848]
    // 0x773b18: r0 = List<Object?>()
    //     0x773b18: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x773b1c: ldur            x0, [fp, #-0x78]
    // 0x773b20: r1 = LoadClassIdInstr(r0)
    //     0x773b20: ldur            x1, [x0, #-1]
    //     0x773b24: ubfx            x1, x1, #0xc, #0x14
    // 0x773b28: stp             xzr, x0, [SP]
    // 0x773b2c: mov             x0, x1
    // 0x773b30: mov             lr, x0
    // 0x773b34: ldr             lr, [x21, lr, lsl #3]
    // 0x773b38: blr             lr
    // 0x773b3c: mov             x3, x0
    // 0x773b40: stur            x3, [fp, #-0x78]
    // 0x773b44: cmp             w3, NULL
    // 0x773b48: b.eq            #0x773c68
    // 0x773b4c: r3 as int
    //     0x773b4c: mov             x0, x3
    //     0x773b50: mov             x2, NULL
    //     0x773b54: mov             x1, NULL
    //     0x773b58: tbz             w0, #0, #0x773b80
    //     0x773b5c: ldur            x4, [x0, #-1]
    //     0x773b60: ubfx            x4, x4, #0xc, #0x14
    //     0x773b64: sub             x4, x4, #0x3c
    //     0x773b68: cmp             x4, #1
    //     0x773b6c: b.ls            #0x773b80
    //     0x773b70: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773b74: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a858] Null
    //     0x773b78: ldr             x3, [x3, #0x858]
    //     0x773b7c: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773b80: ldur            x1, [fp, #-0x70]
    // 0x773b84: ldur            x0, [fp, #-0x78]
    // 0x773b88: LoadField: r2 = r1->field_f
    //     0x773b88: ldur            w2, [x1, #0xf]
    // 0x773b8c: DecompressPointer r2
    //     0x773b8c: add             x2, x2, HEAP, lsl #32
    // 0x773b90: stur            x2, [fp, #-0x80]
    // 0x773b94: r0 = eVa()
    //     0x773b94: bl              #0x773c6c  ; AllocateeVaStub -> eVa (size=0x10)
    // 0x773b98: ldur            x1, [fp, #-0x80]
    // 0x773b9c: StoreField: r0->field_b = r1
    //     0x773b9c: stur            w1, [x0, #0xb]
    // 0x773ba0: ldur            x4, [fp, #-0x78]
    // 0x773ba4: r3 = LoadInt32Instr(r4)
    //     0x773ba4: sbfx            x3, x4, #1, #0x1f
    //     0x773ba8: tbz             w4, #0, #0x773bb0
    //     0x773bac: ldur            x3, [x4, #7]
    // 0x773bb0: mov             x2, x0
    // 0x773bb4: r0 = call 0x392f90
    //     0x773bb4: bl              #0x392f90
    // 0x773bb8: r16 = true
    //     0x773bb8: add             x16, NULL, #0x20  ; true
    // 0x773bbc: str             x16, [SP]
    // 0x773bc0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x773bc0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x773bc4: ldr             x4, [x4, #0x870]
    // 0x773bc8: r0 = call 0x392d98
    //     0x773bc8: bl              #0x392d98
    // 0x773bcc: r0 = ReturnAsyncNotFuture()
    //     0x773bcc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773bd0: sub             SP, fp, #0x90
    // 0x773bd4: r1 = 60
    //     0x773bd4: movz            x1, #0x3c
    // 0x773bd8: branchIfSmi(r0, 0x773be4)
    //     0x773bd8: tbz             w0, #0, #0x773be4
    // 0x773bdc: r1 = LoadClassIdInstr(r0)
    //     0x773bdc: ldur            x1, [x0, #-1]
    //     0x773be0: ubfx            x1, x1, #0xc, #0x14
    // 0x773be4: cmp             x1, #0x5e5
    // 0x773be8: b.ne            #0x773c00
    // 0x773bec: str             x0, [SP]
    // 0x773bf0: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773bf0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773bf4: ldr             x4, [x4, #0x878]
    // 0x773bf8: r0 = call 0x392d98
    //     0x773bf8: bl              #0x392d98
    // 0x773bfc: r0 = ReturnAsyncNotFuture()
    //     0x773bfc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773c00: r1 = 60
    //     0x773c00: movz            x1, #0x3c
    // 0x773c04: branchIfSmi(r0, 0x773c10)
    //     0x773c04: tbz             w0, #0, #0x773c10
    // 0x773c08: r1 = LoadClassIdInstr(r0)
    //     0x773c08: ldur            x1, [x0, #-1]
    //     0x773c0c: ubfx            x1, x1, #0xc, #0x14
    // 0x773c10: str             x0, [SP]
    // 0x773c14: mov             x0, x1
    // 0x773c18: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x773c18: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x773c1c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x773c1c: movz            x17, #0x3a5d
    //     0x773c20: add             lr, x0, x17
    //     0x773c24: ldr             lr, [x21, lr, lsl #3]
    //     0x773c28: blr             lr
    // 0x773c2c: stur            x0, [fp, #-0x70]
    // 0x773c30: r0 = Mha()
    //     0x773c30: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x773c34: mov             x1, x0
    // 0x773c38: r0 = "error"
    //     0x773c38: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x773c3c: StoreField: r1->field_7 = r0
    //     0x773c3c: stur            w0, [x1, #7]
    // 0x773c40: ldur            x0, [fp, #-0x70]
    // 0x773c44: StoreField: r1->field_b = r0
    //     0x773c44: stur            w0, [x1, #0xb]
    // 0x773c48: str             x1, [SP]
    // 0x773c4c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773c4c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773c50: ldr             x4, [x4, #0x878]
    // 0x773c54: r0 = call 0x392d98
    //     0x773c54: bl              #0x392d98
    // 0x773c58: r0 = ReturnAsyncNotFuture()
    //     0x773c58: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773c5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x773c5c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x773c60: b               #0x773acc
    // 0x773c64: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773c64: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x773c68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x773c68: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 397, size: 0x24, field offset: 0x10
class dVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x773c78, size: 0x3d8
    // 0x773c78: EnterFrame
    //     0x773c78: stp             fp, lr, [SP, #-0x10]!
    //     0x773c7c: mov             fp, SP
    // 0x773c80: AllocStack(0xd0)
    //     0x773c80: sub             SP, SP, #0xd0
    // 0x773c84: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x98 */)
    //     0x773c84: stur            NULL, [fp, #-8]
    //     0x773c88: movz            x0, #0
    //     0x773c8c: add             x1, fp, w0, sxtw #2
    //     0x773c90: ldr             x1, [x1, #0x18]
    //     0x773c94: add             x2, fp, w0, sxtw #2
    //     0x773c98: ldr             x2, [x2, #0x10]
    //     0x773c9c: stur            x2, [fp, #-0x98]
    //     0x773ca0: ldur            w3, [x1, #0x17]
    //     0x773ca4: add             x3, x3, HEAP, lsl #32
    //     0x773ca8: stur            x3, [fp, #-0x90]
    // 0x773cac: CheckStackOverflow
    //     0x773cac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x773cb0: cmp             SP, x16
    //     0x773cb4: b.ls            #0x774030
    // 0x773cb8: InitAsync() -> Future<List<Object?>>
    //     0x773cb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x773cbc: ldr             x0, [x0, #0x1d0]
    //     0x773cc0: bl              #0x74ada8  ; InitAsyncStub
    // 0x773cc4: ldur            x3, [fp, #-0x98]
    // 0x773cc8: cmp             w3, NULL
    // 0x773ccc: b.eq            #0x774038
    // 0x773cd0: mov             x0, x3
    // 0x773cd4: r2 = Null
    //     0x773cd4: mov             x2, NULL
    // 0x773cd8: r1 = Null
    //     0x773cd8: mov             x1, NULL
    // 0x773cdc: r4 = 60
    //     0x773cdc: movz            x4, #0x3c
    // 0x773ce0: branchIfSmi(r0, 0x773cec)
    //     0x773ce0: tbz             w0, #0, #0x773cec
    // 0x773ce4: r4 = LoadClassIdInstr(r0)
    //     0x773ce4: ldur            x4, [x0, #-1]
    //     0x773ce8: ubfx            x4, x4, #0xc, #0x14
    // 0x773cec: sub             x4, x4, #0x5a
    // 0x773cf0: cmp             x4, #2
    // 0x773cf4: b.ls            #0x773d08
    // 0x773cf8: r8 = List<Object?>
    //     0x773cf8: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x773cfc: r3 = Null
    //     0x773cfc: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a878] Null
    //     0x773d00: ldr             x3, [x3, #0x878]
    // 0x773d04: r0 = List<Object?>()
    //     0x773d04: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x773d08: ldur            x1, [fp, #-0x98]
    // 0x773d0c: r0 = LoadClassIdInstr(r1)
    //     0x773d0c: ldur            x0, [x1, #-1]
    //     0x773d10: ubfx            x0, x0, #0xc, #0x14
    // 0x773d14: stp             xzr, x1, [SP]
    // 0x773d18: mov             lr, x0
    // 0x773d1c: ldr             lr, [x21, lr, lsl #3]
    // 0x773d20: blr             lr
    // 0x773d24: mov             x3, x0
    // 0x773d28: stur            x3, [fp, #-0xa0]
    // 0x773d2c: cmp             w3, NULL
    // 0x773d30: b.eq            #0x77403c
    // 0x773d34: r3 as int
    //     0x773d34: mov             x0, x3
    //     0x773d38: mov             x2, NULL
    //     0x773d3c: mov             x1, NULL
    //     0x773d40: tbz             w0, #0, #0x773d68
    //     0x773d44: ldur            x4, [x0, #-1]
    //     0x773d48: ubfx            x4, x4, #0xc, #0x14
    //     0x773d4c: sub             x4, x4, #0x3c
    //     0x773d50: cmp             x4, #1
    //     0x773d54: b.ls            #0x773d68
    //     0x773d58: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773d5c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a888] Null
    //     0x773d60: ldr             x3, [x3, #0x888]
    //     0x773d64: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773d68: ldur            x1, [fp, #-0x98]
    // 0x773d6c: r0 = LoadClassIdInstr(r1)
    //     0x773d6c: ldur            x0, [x1, #-1]
    //     0x773d70: ubfx            x0, x0, #0xc, #0x14
    // 0x773d74: r16 = 2
    //     0x773d74: movz            x16, #0x2
    // 0x773d78: stp             x16, x1, [SP]
    // 0x773d7c: mov             lr, x0
    // 0x773d80: ldr             lr, [x21, lr, lsl #3]
    // 0x773d84: blr             lr
    // 0x773d88: mov             x3, x0
    // 0x773d8c: stur            x3, [fp, #-0xa8]
    // 0x773d90: cmp             w3, NULL
    // 0x773d94: b.eq            #0x774040
    // 0x773d98: r3 as int
    //     0x773d98: mov             x0, x3
    //     0x773d9c: mov             x2, NULL
    //     0x773da0: mov             x1, NULL
    //     0x773da4: tbz             w0, #0, #0x773dcc
    //     0x773da8: ldur            x4, [x0, #-1]
    //     0x773dac: ubfx            x4, x4, #0xc, #0x14
    //     0x773db0: sub             x4, x4, #0x3c
    //     0x773db4: cmp             x4, #1
    //     0x773db8: b.ls            #0x773dcc
    //     0x773dbc: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x773dc0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a898] Null
    //     0x773dc4: ldr             x3, [x3, #0x898]
    //     0x773dc8: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x773dcc: ldur            x1, [fp, #-0x98]
    // 0x773dd0: r0 = LoadClassIdInstr(r1)
    //     0x773dd0: ldur            x0, [x1, #-1]
    //     0x773dd4: ubfx            x0, x0, #0xc, #0x14
    // 0x773dd8: r16 = 4
    //     0x773dd8: movz            x16, #0x4
    // 0x773ddc: stp             x16, x1, [SP]
    // 0x773de0: mov             lr, x0
    // 0x773de4: ldr             lr, [x21, lr, lsl #3]
    // 0x773de8: blr             lr
    // 0x773dec: mov             x3, x0
    // 0x773df0: stur            x3, [fp, #-0xb0]
    // 0x773df4: cmp             w3, NULL
    // 0x773df8: b.eq            #0x774044
    // 0x773dfc: mov             x0, x3
    // 0x773e00: r2 = Null
    //     0x773e00: mov             x2, NULL
    // 0x773e04: r1 = Null
    //     0x773e04: mov             x1, NULL
    // 0x773e08: r4 = 60
    //     0x773e08: movz            x4, #0x3c
    // 0x773e0c: branchIfSmi(r0, 0x773e18)
    //     0x773e0c: tbz             w0, #0, #0x773e18
    // 0x773e10: r4 = LoadClassIdInstr(r0)
    //     0x773e10: ldur            x4, [x0, #-1]
    //     0x773e14: ubfx            x4, x4, #0xc, #0x14
    // 0x773e18: sub             x4, x4, #0x5e
    // 0x773e1c: cmp             x4, #1
    // 0x773e20: b.ls            #0x773e34
    // 0x773e24: r8 = String
    //     0x773e24: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x773e28: r3 = Null
    //     0x773e28: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a8a8] Null
    //     0x773e2c: ldr             x3, [x3, #0x8a8]
    // 0x773e30: r0 = String()
    //     0x773e30: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x773e34: ldur            x1, [fp, #-0x98]
    // 0x773e38: r0 = LoadClassIdInstr(r1)
    //     0x773e38: ldur            x0, [x1, #-1]
    //     0x773e3c: ubfx            x0, x0, #0xc, #0x14
    // 0x773e40: r16 = 6
    //     0x773e40: movz            x16, #0x6
    // 0x773e44: stp             x16, x1, [SP]
    // 0x773e48: mov             lr, x0
    // 0x773e4c: ldr             lr, [x21, lr, lsl #3]
    // 0x773e50: blr             lr
    // 0x773e54: mov             x3, x0
    // 0x773e58: stur            x3, [fp, #-0xb8]
    // 0x773e5c: cmp             w3, NULL
    // 0x773e60: b.eq            #0x774048
    // 0x773e64: mov             x0, x3
    // 0x773e68: r2 = Null
    //     0x773e68: mov             x2, NULL
    // 0x773e6c: r1 = Null
    //     0x773e6c: mov             x1, NULL
    // 0x773e70: r4 = 60
    //     0x773e70: movz            x4, #0x3c
    // 0x773e74: branchIfSmi(r0, 0x773e80)
    //     0x773e74: tbz             w0, #0, #0x773e80
    // 0x773e78: r4 = LoadClassIdInstr(r0)
    //     0x773e78: ldur            x4, [x0, #-1]
    //     0x773e7c: ubfx            x4, x4, #0xc, #0x14
    // 0x773e80: r17 = 5364
    //     0x773e80: movz            x17, #0x14f4
    // 0x773e84: cmp             x4, x17
    // 0x773e88: b.eq            #0x773ea0
    // 0x773e8c: r8 = TUa
    //     0x773e8c: add             x8, PP, #0x1a, lsl #12  ; [pp+0x1a8b8] Type: TUa
    //     0x773e90: ldr             x8, [x8, #0x8b8]
    // 0x773e94: r3 = Null
    //     0x773e94: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a8c0] Null
    //     0x773e98: ldr             x3, [x3, #0x8c0]
    // 0x773e9c: r0 = DefaultTypeTest()
    //     0x773e9c: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x773ea0: ldur            x0, [fp, #-0x98]
    // 0x773ea4: r1 = LoadClassIdInstr(r0)
    //     0x773ea4: ldur            x1, [x0, #-1]
    //     0x773ea8: ubfx            x1, x1, #0xc, #0x14
    // 0x773eac: r16 = 8
    //     0x773eac: movz            x16, #0x8
    // 0x773eb0: stp             x16, x0, [SP]
    // 0x773eb4: mov             x0, x1
    // 0x773eb8: mov             lr, x0
    // 0x773ebc: ldr             lr, [x21, lr, lsl #3]
    // 0x773ec0: blr             lr
    // 0x773ec4: mov             x3, x0
    // 0x773ec8: stur            x3, [fp, #-0x98]
    // 0x773ecc: cmp             w3, NULL
    // 0x773ed0: b.eq            #0x77404c
    // 0x773ed4: mov             x0, x3
    // 0x773ed8: r2 = Null
    //     0x773ed8: mov             x2, NULL
    // 0x773edc: r1 = Null
    //     0x773edc: mov             x1, NULL
    // 0x773ee0: r4 = 60
    //     0x773ee0: movz            x4, #0x3c
    // 0x773ee4: branchIfSmi(r0, 0x773ef0)
    //     0x773ee4: tbz             w0, #0, #0x773ef0
    // 0x773ee8: r4 = LoadClassIdInstr(r0)
    //     0x773ee8: ldur            x4, [x0, #-1]
    //     0x773eec: ubfx            x4, x4, #0xc, #0x14
    // 0x773ef0: sub             x4, x4, #0x5e
    // 0x773ef4: cmp             x4, #1
    // 0x773ef8: b.ls            #0x773f0c
    // 0x773efc: r8 = String
    //     0x773efc: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x773f00: r3 = Null
    //     0x773f00: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a8d0] Null
    //     0x773f04: ldr             x3, [x3, #0x8d0]
    // 0x773f08: r0 = String()
    //     0x773f08: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x773f0c: ldur            x5, [fp, #-0x90]
    // 0x773f10: ldur            x4, [fp, #-0xa0]
    // 0x773f14: ldur            x3, [fp, #-0xa8]
    // 0x773f18: ldur            x2, [fp, #-0xb0]
    // 0x773f1c: ldur            x1, [fp, #-0xb8]
    // 0x773f20: ldur            x0, [fp, #-0x98]
    // 0x773f24: LoadField: r6 = r5->field_f
    //     0x773f24: ldur            w6, [x5, #0xf]
    // 0x773f28: DecompressPointer r6
    //     0x773f28: add             x6, x6, HEAP, lsl #32
    // 0x773f2c: stur            x6, [fp, #-0xc0]
    // 0x773f30: r0 = dVa()
    //     0x773f30: bl              #0x774050  ; AllocatedVaStub -> dVa (size=0x24)
    // 0x773f34: mov             x1, x0
    // 0x773f38: ldur            x0, [fp, #-0xa8]
    // 0x773f3c: r2 = LoadInt32Instr(r0)
    //     0x773f3c: sbfx            x2, x0, #1, #0x1f
    //     0x773f40: tbz             w0, #0, #0x773f48
    //     0x773f44: ldur            x2, [x0, #7]
    // 0x773f48: StoreField: r1->field_f = r2
    //     0x773f48: stur            x2, [x1, #0xf]
    // 0x773f4c: ldur            x4, [fp, #-0xb0]
    // 0x773f50: ArrayStore: r1[0] = r4  ; List_4
    //     0x773f50: stur            w4, [x1, #0x17]
    // 0x773f54: ldur            x5, [fp, #-0xb8]
    // 0x773f58: StoreField: r1->field_1b = r5
    //     0x773f58: stur            w5, [x1, #0x1b]
    // 0x773f5c: ldur            x6, [fp, #-0x98]
    // 0x773f60: StoreField: r1->field_1f = r6
    //     0x773f60: stur            w6, [x1, #0x1f]
    // 0x773f64: ldur            x2, [fp, #-0xc0]
    // 0x773f68: StoreField: r1->field_b = r2
    //     0x773f68: stur            w2, [x1, #0xb]
    // 0x773f6c: ldur            x7, [fp, #-0xa0]
    // 0x773f70: r3 = LoadInt32Instr(r7)
    //     0x773f70: sbfx            x3, x7, #1, #0x1f
    //     0x773f74: tbz             w7, #0, #0x773f7c
    //     0x773f78: ldur            x3, [x7, #7]
    // 0x773f7c: mov             x16, x1
    // 0x773f80: mov             x1, x2
    // 0x773f84: mov             x2, x16
    // 0x773f88: r0 = call 0x392f90
    //     0x773f88: bl              #0x392f90
    // 0x773f8c: r16 = true
    //     0x773f8c: add             x16, NULL, #0x20  ; true
    // 0x773f90: str             x16, [SP]
    // 0x773f94: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x773f94: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x773f98: ldr             x4, [x4, #0x870]
    // 0x773f9c: r0 = call 0x392d98
    //     0x773f9c: bl              #0x392d98
    // 0x773fa0: r0 = ReturnAsyncNotFuture()
    //     0x773fa0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773fa4: sub             SP, fp, #0xd0
    // 0x773fa8: r1 = 60
    //     0x773fa8: movz            x1, #0x3c
    // 0x773fac: branchIfSmi(r0, 0x773fb8)
    //     0x773fac: tbz             w0, #0, #0x773fb8
    // 0x773fb0: r1 = LoadClassIdInstr(r0)
    //     0x773fb0: ldur            x1, [x0, #-1]
    //     0x773fb4: ubfx            x1, x1, #0xc, #0x14
    // 0x773fb8: cmp             x1, #0x5e5
    // 0x773fbc: b.ne            #0x773fd4
    // 0x773fc0: str             x0, [SP]
    // 0x773fc4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x773fc4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x773fc8: ldr             x4, [x4, #0x878]
    // 0x773fcc: r0 = call 0x392d98
    //     0x773fcc: bl              #0x392d98
    // 0x773fd0: r0 = ReturnAsyncNotFuture()
    //     0x773fd0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x773fd4: r1 = 60
    //     0x773fd4: movz            x1, #0x3c
    // 0x773fd8: branchIfSmi(r0, 0x773fe4)
    //     0x773fd8: tbz             w0, #0, #0x773fe4
    // 0x773fdc: r1 = LoadClassIdInstr(r0)
    //     0x773fdc: ldur            x1, [x0, #-1]
    //     0x773fe0: ubfx            x1, x1, #0xc, #0x14
    // 0x773fe4: str             x0, [SP]
    // 0x773fe8: mov             x0, x1
    // 0x773fec: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x773fec: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x773ff0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x773ff0: movz            x17, #0x3a5d
    //     0x773ff4: add             lr, x0, x17
    //     0x773ff8: ldr             lr, [x21, lr, lsl #3]
    //     0x773ffc: blr             lr
    // 0x774000: stur            x0, [fp, #-0x90]
    // 0x774004: r0 = Mha()
    //     0x774004: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x774008: mov             x1, x0
    // 0x77400c: r0 = "error"
    //     0x77400c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x774010: StoreField: r1->field_7 = r0
    //     0x774010: stur            w0, [x1, #7]
    // 0x774014: ldur            x0, [fp, #-0x90]
    // 0x774018: StoreField: r1->field_b = r0
    //     0x774018: stur            w0, [x1, #0xb]
    // 0x77401c: str             x1, [SP]
    // 0x774020: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774020: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774024: ldr             x4, [x4, #0x878]
    // 0x774028: r0 = call 0x392d98
    //     0x774028: bl              #0x392d98
    // 0x77402c: r0 = ReturnAsyncNotFuture()
    //     0x77402c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774030: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x774030: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x774034: b               #0x773cb8
    // 0x774038: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774038: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77403c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77403c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774040: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774040: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774044: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774044: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774048: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774048: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77404c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77404c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 398, size: 0x20, field offset: 0x10
class cVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x77405c, size: 0x2ec
    // 0x77405c: EnterFrame
    //     0x77405c: stp             fp, lr, [SP, #-0x10]!
    //     0x774060: mov             fp, SP
    // 0x774064: AllocStack(0xb0)
    //     0x774064: sub             SP, SP, #0xb0
    // 0x774068: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x774068: stur            NULL, [fp, #-8]
    //     0x77406c: movz            x0, #0
    //     0x774070: add             x1, fp, w0, sxtw #2
    //     0x774074: ldr             x1, [x1, #0x18]
    //     0x774078: add             x2, fp, w0, sxtw #2
    //     0x77407c: ldr             x2, [x2, #0x10]
    //     0x774080: stur            x2, [fp, #-0x88]
    //     0x774084: ldur            w3, [x1, #0x17]
    //     0x774088: add             x3, x3, HEAP, lsl #32
    //     0x77408c: stur            x3, [fp, #-0x80]
    // 0x774090: CheckStackOverflow
    //     0x774090: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x774094: cmp             SP, x16
    //     0x774098: b.ls            #0x774330
    // 0x77409c: InitAsync() -> Future<List<Object?>>
    //     0x77409c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x7740a0: ldr             x0, [x0, #0x1d0]
    //     0x7740a4: bl              #0x74ada8  ; InitAsyncStub
    // 0x7740a8: ldur            x3, [fp, #-0x88]
    // 0x7740ac: cmp             w3, NULL
    // 0x7740b0: b.eq            #0x774338
    // 0x7740b4: mov             x0, x3
    // 0x7740b8: r2 = Null
    //     0x7740b8: mov             x2, NULL
    // 0x7740bc: r1 = Null
    //     0x7740bc: mov             x1, NULL
    // 0x7740c0: r4 = 60
    //     0x7740c0: movz            x4, #0x3c
    // 0x7740c4: branchIfSmi(r0, 0x7740d0)
    //     0x7740c4: tbz             w0, #0, #0x7740d0
    // 0x7740c8: r4 = LoadClassIdInstr(r0)
    //     0x7740c8: ldur            x4, [x0, #-1]
    //     0x7740cc: ubfx            x4, x4, #0xc, #0x14
    // 0x7740d0: sub             x4, x4, #0x5a
    // 0x7740d4: cmp             x4, #2
    // 0x7740d8: b.ls            #0x7740ec
    // 0x7740dc: r8 = List<Object?>
    //     0x7740dc: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7740e0: r3 = Null
    //     0x7740e0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a8f0] Null
    //     0x7740e4: ldr             x3, [x3, #0x8f0]
    // 0x7740e8: r0 = List<Object?>()
    //     0x7740e8: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7740ec: ldur            x1, [fp, #-0x88]
    // 0x7740f0: r0 = LoadClassIdInstr(r1)
    //     0x7740f0: ldur            x0, [x1, #-1]
    //     0x7740f4: ubfx            x0, x0, #0xc, #0x14
    // 0x7740f8: stp             xzr, x1, [SP]
    // 0x7740fc: mov             lr, x0
    // 0x774100: ldr             lr, [x21, lr, lsl #3]
    // 0x774104: blr             lr
    // 0x774108: mov             x3, x0
    // 0x77410c: stur            x3, [fp, #-0x90]
    // 0x774110: cmp             w3, NULL
    // 0x774114: b.eq            #0x77433c
    // 0x774118: r3 as int
    //     0x774118: mov             x0, x3
    //     0x77411c: mov             x2, NULL
    //     0x774120: mov             x1, NULL
    //     0x774124: tbz             w0, #0, #0x77414c
    //     0x774128: ldur            x4, [x0, #-1]
    //     0x77412c: ubfx            x4, x4, #0xc, #0x14
    //     0x774130: sub             x4, x4, #0x3c
    //     0x774134: cmp             x4, #1
    //     0x774138: b.ls            #0x77414c
    //     0x77413c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774140: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a900] Null
    //     0x774144: ldr             x3, [x3, #0x900]
    //     0x774148: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x77414c: ldur            x1, [fp, #-0x88]
    // 0x774150: r0 = LoadClassIdInstr(r1)
    //     0x774150: ldur            x0, [x1, #-1]
    //     0x774154: ubfx            x0, x0, #0xc, #0x14
    // 0x774158: r16 = 2
    //     0x774158: movz            x16, #0x2
    // 0x77415c: stp             x16, x1, [SP]
    // 0x774160: mov             lr, x0
    // 0x774164: ldr             lr, [x21, lr, lsl #3]
    // 0x774168: blr             lr
    // 0x77416c: mov             x3, x0
    // 0x774170: stur            x3, [fp, #-0x98]
    // 0x774174: cmp             w3, NULL
    // 0x774178: b.eq            #0x774340
    // 0x77417c: r3 as int
    //     0x77417c: mov             x0, x3
    //     0x774180: mov             x2, NULL
    //     0x774184: mov             x1, NULL
    //     0x774188: tbz             w0, #0, #0x7741b0
    //     0x77418c: ldur            x4, [x0, #-1]
    //     0x774190: ubfx            x4, x4, #0xc, #0x14
    //     0x774194: sub             x4, x4, #0x3c
    //     0x774198: cmp             x4, #1
    //     0x77419c: b.ls            #0x7741b0
    //     0x7741a0: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x7741a4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a910] Null
    //     0x7741a8: ldr             x3, [x3, #0x910]
    //     0x7741ac: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7741b0: ldur            x0, [fp, #-0x88]
    // 0x7741b4: r1 = LoadClassIdInstr(r0)
    //     0x7741b4: ldur            x1, [x0, #-1]
    //     0x7741b8: ubfx            x1, x1, #0xc, #0x14
    // 0x7741bc: r16 = 4
    //     0x7741bc: movz            x16, #0x4
    // 0x7741c0: stp             x16, x0, [SP]
    // 0x7741c4: mov             x0, x1
    // 0x7741c8: mov             lr, x0
    // 0x7741cc: ldr             lr, [x21, lr, lsl #3]
    // 0x7741d0: blr             lr
    // 0x7741d4: mov             x3, x0
    // 0x7741d8: stur            x3, [fp, #-0x88]
    // 0x7741dc: cmp             w3, NULL
    // 0x7741e0: b.eq            #0x774344
    // 0x7741e4: r3 as int
    //     0x7741e4: mov             x0, x3
    //     0x7741e8: mov             x2, NULL
    //     0x7741ec: mov             x1, NULL
    //     0x7741f0: tbz             w0, #0, #0x774218
    //     0x7741f4: ldur            x4, [x0, #-1]
    //     0x7741f8: ubfx            x4, x4, #0xc, #0x14
    //     0x7741fc: sub             x4, x4, #0x3c
    //     0x774200: cmp             x4, #1
    //     0x774204: b.ls            #0x774218
    //     0x774208: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x77420c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a920] Null
    //     0x774210: ldr             x3, [x3, #0x920]
    //     0x774214: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774218: ldur            x3, [fp, #-0x80]
    // 0x77421c: ldur            x2, [fp, #-0x90]
    // 0x774220: ldur            x1, [fp, #-0x98]
    // 0x774224: ldur            x0, [fp, #-0x88]
    // 0x774228: LoadField: r4 = r3->field_f
    //     0x774228: ldur            w4, [x3, #0xf]
    // 0x77422c: DecompressPointer r4
    //     0x77422c: add             x4, x4, HEAP, lsl #32
    // 0x774230: stur            x4, [fp, #-0xa0]
    // 0x774234: r0 = cVa()
    //     0x774234: bl              #0x774348  ; AllocatecVaStub -> cVa (size=0x20)
    // 0x774238: mov             x1, x0
    // 0x77423c: ldur            x0, [fp, #-0x98]
    // 0x774240: r2 = LoadInt32Instr(r0)
    //     0x774240: sbfx            x2, x0, #1, #0x1f
    //     0x774244: tbz             w0, #0, #0x77424c
    //     0x774248: ldur            x2, [x0, #7]
    // 0x77424c: StoreField: r1->field_f = r2
    //     0x77424c: stur            x2, [x1, #0xf]
    // 0x774250: ldur            x4, [fp, #-0x88]
    // 0x774254: r2 = LoadInt32Instr(r4)
    //     0x774254: sbfx            x2, x4, #1, #0x1f
    //     0x774258: tbz             w4, #0, #0x774260
    //     0x77425c: ldur            x2, [x4, #7]
    // 0x774260: ArrayStore: r1[0] = r2  ; List_8
    //     0x774260: stur            x2, [x1, #0x17]
    // 0x774264: ldur            x2, [fp, #-0xa0]
    // 0x774268: StoreField: r1->field_b = r2
    //     0x774268: stur            w2, [x1, #0xb]
    // 0x77426c: ldur            x5, [fp, #-0x90]
    // 0x774270: r3 = LoadInt32Instr(r5)
    //     0x774270: sbfx            x3, x5, #1, #0x1f
    //     0x774274: tbz             w5, #0, #0x77427c
    //     0x774278: ldur            x3, [x5, #7]
    // 0x77427c: mov             x16, x1
    // 0x774280: mov             x1, x2
    // 0x774284: mov             x2, x16
    // 0x774288: r0 = call 0x392f90
    //     0x774288: bl              #0x392f90
    // 0x77428c: r16 = true
    //     0x77428c: add             x16, NULL, #0x20  ; true
    // 0x774290: str             x16, [SP]
    // 0x774294: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x774294: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x774298: ldr             x4, [x4, #0x870]
    // 0x77429c: r0 = call 0x392d98
    //     0x77429c: bl              #0x392d98
    // 0x7742a0: r0 = ReturnAsyncNotFuture()
    //     0x7742a0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7742a4: sub             SP, fp, #0xb0
    // 0x7742a8: r1 = 60
    //     0x7742a8: movz            x1, #0x3c
    // 0x7742ac: branchIfSmi(r0, 0x7742b8)
    //     0x7742ac: tbz             w0, #0, #0x7742b8
    // 0x7742b0: r1 = LoadClassIdInstr(r0)
    //     0x7742b0: ldur            x1, [x0, #-1]
    //     0x7742b4: ubfx            x1, x1, #0xc, #0x14
    // 0x7742b8: cmp             x1, #0x5e5
    // 0x7742bc: b.ne            #0x7742d4
    // 0x7742c0: str             x0, [SP]
    // 0x7742c4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7742c4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7742c8: ldr             x4, [x4, #0x878]
    // 0x7742cc: r0 = call 0x392d98
    //     0x7742cc: bl              #0x392d98
    // 0x7742d0: r0 = ReturnAsyncNotFuture()
    //     0x7742d0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7742d4: r1 = 60
    //     0x7742d4: movz            x1, #0x3c
    // 0x7742d8: branchIfSmi(r0, 0x7742e4)
    //     0x7742d8: tbz             w0, #0, #0x7742e4
    // 0x7742dc: r1 = LoadClassIdInstr(r0)
    //     0x7742dc: ldur            x1, [x0, #-1]
    //     0x7742e0: ubfx            x1, x1, #0xc, #0x14
    // 0x7742e4: str             x0, [SP]
    // 0x7742e8: mov             x0, x1
    // 0x7742ec: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7742ec: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7742f0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7742f0: movz            x17, #0x3a5d
    //     0x7742f4: add             lr, x0, x17
    //     0x7742f8: ldr             lr, [x21, lr, lsl #3]
    //     0x7742fc: blr             lr
    // 0x774300: stur            x0, [fp, #-0x80]
    // 0x774304: r0 = Mha()
    //     0x774304: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x774308: mov             x1, x0
    // 0x77430c: r0 = "error"
    //     0x77430c: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x774310: StoreField: r1->field_7 = r0
    //     0x774310: stur            w0, [x1, #7]
    // 0x774314: ldur            x0, [fp, #-0x80]
    // 0x774318: StoreField: r1->field_b = r0
    //     0x774318: stur            w0, [x1, #0xb]
    // 0x77431c: str             x1, [SP]
    // 0x774320: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774320: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774324: ldr             x4, [x4, #0x878]
    // 0x774328: r0 = call 0x392d98
    //     0x774328: bl              #0x392d98
    // 0x77432c: r0 = ReturnAsyncNotFuture()
    //     0x77432c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x774330: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x774334: b               #0x77409c
    // 0x774338: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774338: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77433c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77433c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774340: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774340: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774344: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774344: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 399, size: 0x1c, field offset: 0x10
class bVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x774354, size: 0x2e4
    // 0x774354: EnterFrame
    //     0x774354: stp             fp, lr, [SP, #-0x10]!
    //     0x774358: mov             fp, SP
    // 0x77435c: AllocStack(0xb0)
    //     0x77435c: sub             SP, SP, #0xb0
    // 0x774360: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x774360: stur            NULL, [fp, #-8]
    //     0x774364: movz            x0, #0
    //     0x774368: add             x1, fp, w0, sxtw #2
    //     0x77436c: ldr             x1, [x1, #0x18]
    //     0x774370: add             x2, fp, w0, sxtw #2
    //     0x774374: ldr             x2, [x2, #0x10]
    //     0x774378: stur            x2, [fp, #-0x88]
    //     0x77437c: ldur            w3, [x1, #0x17]
    //     0x774380: add             x3, x3, HEAP, lsl #32
    //     0x774384: stur            x3, [fp, #-0x80]
    // 0x774388: CheckStackOverflow
    //     0x774388: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77438c: cmp             SP, x16
    //     0x774390: b.ls            #0x774620
    // 0x774394: InitAsync() -> Future<List<Object?>>
    //     0x774394: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x774398: ldr             x0, [x0, #0x1d0]
    //     0x77439c: bl              #0x74ada8  ; InitAsyncStub
    // 0x7743a0: ldur            x3, [fp, #-0x88]
    // 0x7743a4: cmp             w3, NULL
    // 0x7743a8: b.eq            #0x774628
    // 0x7743ac: mov             x0, x3
    // 0x7743b0: r2 = Null
    //     0x7743b0: mov             x2, NULL
    // 0x7743b4: r1 = Null
    //     0x7743b4: mov             x1, NULL
    // 0x7743b8: r4 = 60
    //     0x7743b8: movz            x4, #0x3c
    // 0x7743bc: branchIfSmi(r0, 0x7743c8)
    //     0x7743bc: tbz             w0, #0, #0x7743c8
    // 0x7743c0: r4 = LoadClassIdInstr(r0)
    //     0x7743c0: ldur            x4, [x0, #-1]
    //     0x7743c4: ubfx            x4, x4, #0xc, #0x14
    // 0x7743c8: sub             x4, x4, #0x5a
    // 0x7743cc: cmp             x4, #2
    // 0x7743d0: b.ls            #0x7743e4
    // 0x7743d4: r8 = List<Object?>
    //     0x7743d4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7743d8: r3 = Null
    //     0x7743d8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a940] Null
    //     0x7743dc: ldr             x3, [x3, #0x940]
    // 0x7743e0: r0 = List<Object?>()
    //     0x7743e0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7743e4: ldur            x1, [fp, #-0x88]
    // 0x7743e8: r0 = LoadClassIdInstr(r1)
    //     0x7743e8: ldur            x0, [x1, #-1]
    //     0x7743ec: ubfx            x0, x0, #0xc, #0x14
    // 0x7743f0: stp             xzr, x1, [SP]
    // 0x7743f4: mov             lr, x0
    // 0x7743f8: ldr             lr, [x21, lr, lsl #3]
    // 0x7743fc: blr             lr
    // 0x774400: mov             x3, x0
    // 0x774404: stur            x3, [fp, #-0x90]
    // 0x774408: cmp             w3, NULL
    // 0x77440c: b.eq            #0x77462c
    // 0x774410: r3 as int
    //     0x774410: mov             x0, x3
    //     0x774414: mov             x2, NULL
    //     0x774418: mov             x1, NULL
    //     0x77441c: tbz             w0, #0, #0x774444
    //     0x774420: ldur            x4, [x0, #-1]
    //     0x774424: ubfx            x4, x4, #0xc, #0x14
    //     0x774428: sub             x4, x4, #0x3c
    //     0x77442c: cmp             x4, #1
    //     0x774430: b.ls            #0x774444
    //     0x774434: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774438: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a950] Null
    //     0x77443c: ldr             x3, [x3, #0x950]
    //     0x774440: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774444: ldur            x1, [fp, #-0x88]
    // 0x774448: r0 = LoadClassIdInstr(r1)
    //     0x774448: ldur            x0, [x1, #-1]
    //     0x77444c: ubfx            x0, x0, #0xc, #0x14
    // 0x774450: r16 = 2
    //     0x774450: movz            x16, #0x2
    // 0x774454: stp             x16, x1, [SP]
    // 0x774458: mov             lr, x0
    // 0x77445c: ldr             lr, [x21, lr, lsl #3]
    // 0x774460: blr             lr
    // 0x774464: mov             x3, x0
    // 0x774468: stur            x3, [fp, #-0x98]
    // 0x77446c: cmp             w3, NULL
    // 0x774470: b.eq            #0x774630
    // 0x774474: r3 as int
    //     0x774474: mov             x0, x3
    //     0x774478: mov             x2, NULL
    //     0x77447c: mov             x1, NULL
    //     0x774480: tbz             w0, #0, #0x7744a8
    //     0x774484: ldur            x4, [x0, #-1]
    //     0x774488: ubfx            x4, x4, #0xc, #0x14
    //     0x77448c: sub             x4, x4, #0x3c
    //     0x774490: cmp             x4, #1
    //     0x774494: b.ls            #0x7744a8
    //     0x774498: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x77449c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a960] Null
    //     0x7744a0: ldr             x3, [x3, #0x960]
    //     0x7744a4: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x7744a8: ldur            x0, [fp, #-0x88]
    // 0x7744ac: r1 = LoadClassIdInstr(r0)
    //     0x7744ac: ldur            x1, [x0, #-1]
    //     0x7744b0: ubfx            x1, x1, #0xc, #0x14
    // 0x7744b4: r16 = 4
    //     0x7744b4: movz            x16, #0x4
    // 0x7744b8: stp             x16, x0, [SP]
    // 0x7744bc: mov             x0, x1
    // 0x7744c0: mov             lr, x0
    // 0x7744c4: ldr             lr, [x21, lr, lsl #3]
    // 0x7744c8: blr             lr
    // 0x7744cc: mov             x3, x0
    // 0x7744d0: stur            x3, [fp, #-0x88]
    // 0x7744d4: cmp             w3, NULL
    // 0x7744d8: b.eq            #0x774634
    // 0x7744dc: mov             x0, x3
    // 0x7744e0: r2 = Null
    //     0x7744e0: mov             x2, NULL
    // 0x7744e4: r1 = Null
    //     0x7744e4: mov             x1, NULL
    // 0x7744e8: r4 = 60
    //     0x7744e8: movz            x4, #0x3c
    // 0x7744ec: branchIfSmi(r0, 0x7744f8)
    //     0x7744ec: tbz             w0, #0, #0x7744f8
    // 0x7744f0: r4 = LoadClassIdInstr(r0)
    //     0x7744f0: ldur            x4, [x0, #-1]
    //     0x7744f4: ubfx            x4, x4, #0xc, #0x14
    // 0x7744f8: sub             x4, x4, #0x5e
    // 0x7744fc: cmp             x4, #1
    // 0x774500: b.ls            #0x774514
    // 0x774504: r8 = String
    //     0x774504: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x774508: r3 = Null
    //     0x774508: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a970] Null
    //     0x77450c: ldr             x3, [x3, #0x970]
    // 0x774510: r0 = String()
    //     0x774510: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x774514: ldur            x3, [fp, #-0x80]
    // 0x774518: ldur            x2, [fp, #-0x90]
    // 0x77451c: ldur            x1, [fp, #-0x98]
    // 0x774520: ldur            x0, [fp, #-0x88]
    // 0x774524: LoadField: r4 = r3->field_f
    //     0x774524: ldur            w4, [x3, #0xf]
    // 0x774528: DecompressPointer r4
    //     0x774528: add             x4, x4, HEAP, lsl #32
    // 0x77452c: stur            x4, [fp, #-0xa0]
    // 0x774530: r0 = bVa()
    //     0x774530: bl              #0x774638  ; AllocatebVaStub -> bVa (size=0x1c)
    // 0x774534: mov             x1, x0
    // 0x774538: ldur            x0, [fp, #-0x98]
    // 0x77453c: r2 = LoadInt32Instr(r0)
    //     0x77453c: sbfx            x2, x0, #1, #0x1f
    //     0x774540: tbz             w0, #0, #0x774548
    //     0x774544: ldur            x2, [x0, #7]
    // 0x774548: StoreField: r1->field_f = r2
    //     0x774548: stur            x2, [x1, #0xf]
    // 0x77454c: ldur            x4, [fp, #-0x88]
    // 0x774550: ArrayStore: r1[0] = r4  ; List_4
    //     0x774550: stur            w4, [x1, #0x17]
    // 0x774554: ldur            x2, [fp, #-0xa0]
    // 0x774558: StoreField: r1->field_b = r2
    //     0x774558: stur            w2, [x1, #0xb]
    // 0x77455c: ldur            x5, [fp, #-0x90]
    // 0x774560: r3 = LoadInt32Instr(r5)
    //     0x774560: sbfx            x3, x5, #1, #0x1f
    //     0x774564: tbz             w5, #0, #0x77456c
    //     0x774568: ldur            x3, [x5, #7]
    // 0x77456c: mov             x16, x1
    // 0x774570: mov             x1, x2
    // 0x774574: mov             x2, x16
    // 0x774578: r0 = call 0x392f90
    //     0x774578: bl              #0x392f90
    // 0x77457c: r16 = true
    //     0x77457c: add             x16, NULL, #0x20  ; true
    // 0x774580: str             x16, [SP]
    // 0x774584: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x774584: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x774588: ldr             x4, [x4, #0x870]
    // 0x77458c: r0 = call 0x392d98
    //     0x77458c: bl              #0x392d98
    // 0x774590: r0 = ReturnAsyncNotFuture()
    //     0x774590: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774594: sub             SP, fp, #0xb0
    // 0x774598: r1 = 60
    //     0x774598: movz            x1, #0x3c
    // 0x77459c: branchIfSmi(r0, 0x7745a8)
    //     0x77459c: tbz             w0, #0, #0x7745a8
    // 0x7745a0: r1 = LoadClassIdInstr(r0)
    //     0x7745a0: ldur            x1, [x0, #-1]
    //     0x7745a4: ubfx            x1, x1, #0xc, #0x14
    // 0x7745a8: cmp             x1, #0x5e5
    // 0x7745ac: b.ne            #0x7745c4
    // 0x7745b0: str             x0, [SP]
    // 0x7745b4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7745b4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7745b8: ldr             x4, [x4, #0x878]
    // 0x7745bc: r0 = call 0x392d98
    //     0x7745bc: bl              #0x392d98
    // 0x7745c0: r0 = ReturnAsyncNotFuture()
    //     0x7745c0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7745c4: r1 = 60
    //     0x7745c4: movz            x1, #0x3c
    // 0x7745c8: branchIfSmi(r0, 0x7745d4)
    //     0x7745c8: tbz             w0, #0, #0x7745d4
    // 0x7745cc: r1 = LoadClassIdInstr(r0)
    //     0x7745cc: ldur            x1, [x0, #-1]
    //     0x7745d0: ubfx            x1, x1, #0xc, #0x14
    // 0x7745d4: str             x0, [SP]
    // 0x7745d8: mov             x0, x1
    // 0x7745dc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7745dc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7745e0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7745e0: movz            x17, #0x3a5d
    //     0x7745e4: add             lr, x0, x17
    //     0x7745e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7745ec: blr             lr
    // 0x7745f0: stur            x0, [fp, #-0x80]
    // 0x7745f4: r0 = Mha()
    //     0x7745f4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7745f8: mov             x1, x0
    // 0x7745fc: r0 = "error"
    //     0x7745fc: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x774600: StoreField: r1->field_7 = r0
    //     0x774600: stur            w0, [x1, #7]
    // 0x774604: ldur            x0, [fp, #-0x80]
    // 0x774608: StoreField: r1->field_b = r0
    //     0x774608: stur            w0, [x1, #0xb]
    // 0x77460c: str             x1, [SP]
    // 0x774610: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774610: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774614: ldr             x4, [x4, #0x878]
    // 0x774618: r0 = call 0x392d98
    //     0x774618: bl              #0x392d98
    // 0x77461c: r0 = ReturnAsyncNotFuture()
    //     0x77461c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774620: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x774620: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x774624: b               #0x774394
    // 0x774628: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774628: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77462c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77462c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774630: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774630: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774634: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774634: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 400, size: 0x1c, field offset: 0x10
class aVa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x774644, size: 0x2e4
    // 0x774644: EnterFrame
    //     0x774644: stp             fp, lr, [SP, #-0x10]!
    //     0x774648: mov             fp, SP
    // 0x77464c: AllocStack(0xb0)
    //     0x77464c: sub             SP, SP, #0xb0
    // 0x774650: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x88 */)
    //     0x774650: stur            NULL, [fp, #-8]
    //     0x774654: movz            x0, #0
    //     0x774658: add             x1, fp, w0, sxtw #2
    //     0x77465c: ldr             x1, [x1, #0x18]
    //     0x774660: add             x2, fp, w0, sxtw #2
    //     0x774664: ldr             x2, [x2, #0x10]
    //     0x774668: stur            x2, [fp, #-0x88]
    //     0x77466c: ldur            w3, [x1, #0x17]
    //     0x774670: add             x3, x3, HEAP, lsl #32
    //     0x774674: stur            x3, [fp, #-0x80]
    // 0x774678: CheckStackOverflow
    //     0x774678: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77467c: cmp             SP, x16
    //     0x774680: b.ls            #0x774910
    // 0x774684: InitAsync() -> Future<List<Object?>>
    //     0x774684: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x774688: ldr             x0, [x0, #0x1d0]
    //     0x77468c: bl              #0x74ada8  ; InitAsyncStub
    // 0x774690: ldur            x3, [fp, #-0x88]
    // 0x774694: cmp             w3, NULL
    // 0x774698: b.eq            #0x774918
    // 0x77469c: mov             x0, x3
    // 0x7746a0: r2 = Null
    //     0x7746a0: mov             x2, NULL
    // 0x7746a4: r1 = Null
    //     0x7746a4: mov             x1, NULL
    // 0x7746a8: r4 = 60
    //     0x7746a8: movz            x4, #0x3c
    // 0x7746ac: branchIfSmi(r0, 0x7746b8)
    //     0x7746ac: tbz             w0, #0, #0x7746b8
    // 0x7746b0: r4 = LoadClassIdInstr(r0)
    //     0x7746b0: ldur            x4, [x0, #-1]
    //     0x7746b4: ubfx            x4, x4, #0xc, #0x14
    // 0x7746b8: sub             x4, x4, #0x5a
    // 0x7746bc: cmp             x4, #2
    // 0x7746c0: b.ls            #0x7746d4
    // 0x7746c4: r8 = List<Object?>
    //     0x7746c4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7746c8: r3 = Null
    //     0x7746c8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a990] Null
    //     0x7746cc: ldr             x3, [x3, #0x990]
    // 0x7746d0: r0 = List<Object?>()
    //     0x7746d0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7746d4: ldur            x1, [fp, #-0x88]
    // 0x7746d8: r0 = LoadClassIdInstr(r1)
    //     0x7746d8: ldur            x0, [x1, #-1]
    //     0x7746dc: ubfx            x0, x0, #0xc, #0x14
    // 0x7746e0: stp             xzr, x1, [SP]
    // 0x7746e4: mov             lr, x0
    // 0x7746e8: ldr             lr, [x21, lr, lsl #3]
    // 0x7746ec: blr             lr
    // 0x7746f0: mov             x3, x0
    // 0x7746f4: stur            x3, [fp, #-0x90]
    // 0x7746f8: cmp             w3, NULL
    // 0x7746fc: b.eq            #0x77491c
    // 0x774700: r3 as int
    //     0x774700: mov             x0, x3
    //     0x774704: mov             x2, NULL
    //     0x774708: mov             x1, NULL
    //     0x77470c: tbz             w0, #0, #0x774734
    //     0x774710: ldur            x4, [x0, #-1]
    //     0x774714: ubfx            x4, x4, #0xc, #0x14
    //     0x774718: sub             x4, x4, #0x3c
    //     0x77471c: cmp             x4, #1
    //     0x774720: b.ls            #0x774734
    //     0x774724: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774728: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a9a0] Null
    //     0x77472c: ldr             x3, [x3, #0x9a0]
    //     0x774730: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774734: ldur            x1, [fp, #-0x88]
    // 0x774738: r0 = LoadClassIdInstr(r1)
    //     0x774738: ldur            x0, [x1, #-1]
    //     0x77473c: ubfx            x0, x0, #0xc, #0x14
    // 0x774740: r16 = 2
    //     0x774740: movz            x16, #0x2
    // 0x774744: stp             x16, x1, [SP]
    // 0x774748: mov             lr, x0
    // 0x77474c: ldr             lr, [x21, lr, lsl #3]
    // 0x774750: blr             lr
    // 0x774754: mov             x3, x0
    // 0x774758: stur            x3, [fp, #-0x98]
    // 0x77475c: cmp             w3, NULL
    // 0x774760: b.eq            #0x774920
    // 0x774764: r3 as int
    //     0x774764: mov             x0, x3
    //     0x774768: mov             x2, NULL
    //     0x77476c: mov             x1, NULL
    //     0x774770: tbz             w0, #0, #0x774798
    //     0x774774: ldur            x4, [x0, #-1]
    //     0x774778: ubfx            x4, x4, #0xc, #0x14
    //     0x77477c: sub             x4, x4, #0x3c
    //     0x774780: cmp             x4, #1
    //     0x774784: b.ls            #0x774798
    //     0x774788: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x77478c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a9b0] Null
    //     0x774790: ldr             x3, [x3, #0x9b0]
    //     0x774794: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774798: ldur            x0, [fp, #-0x88]
    // 0x77479c: r1 = LoadClassIdInstr(r0)
    //     0x77479c: ldur            x1, [x0, #-1]
    //     0x7747a0: ubfx            x1, x1, #0xc, #0x14
    // 0x7747a4: r16 = 4
    //     0x7747a4: movz            x16, #0x4
    // 0x7747a8: stp             x16, x0, [SP]
    // 0x7747ac: mov             x0, x1
    // 0x7747b0: mov             lr, x0
    // 0x7747b4: ldr             lr, [x21, lr, lsl #3]
    // 0x7747b8: blr             lr
    // 0x7747bc: mov             x3, x0
    // 0x7747c0: stur            x3, [fp, #-0x88]
    // 0x7747c4: cmp             w3, NULL
    // 0x7747c8: b.eq            #0x774924
    // 0x7747cc: mov             x0, x3
    // 0x7747d0: r2 = Null
    //     0x7747d0: mov             x2, NULL
    // 0x7747d4: r1 = Null
    //     0x7747d4: mov             x1, NULL
    // 0x7747d8: r4 = 60
    //     0x7747d8: movz            x4, #0x3c
    // 0x7747dc: branchIfSmi(r0, 0x7747e8)
    //     0x7747dc: tbz             w0, #0, #0x7747e8
    // 0x7747e0: r4 = LoadClassIdInstr(r0)
    //     0x7747e0: ldur            x4, [x0, #-1]
    //     0x7747e4: ubfx            x4, x4, #0xc, #0x14
    // 0x7747e8: sub             x4, x4, #0x5e
    // 0x7747ec: cmp             x4, #1
    // 0x7747f0: b.ls            #0x774804
    // 0x7747f4: r8 = String
    //     0x7747f4: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x7747f8: r3 = Null
    //     0x7747f8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a9c0] Null
    //     0x7747fc: ldr             x3, [x3, #0x9c0]
    // 0x774800: r0 = String()
    //     0x774800: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x774804: ldur            x3, [fp, #-0x80]
    // 0x774808: ldur            x2, [fp, #-0x90]
    // 0x77480c: ldur            x1, [fp, #-0x98]
    // 0x774810: ldur            x0, [fp, #-0x88]
    // 0x774814: LoadField: r4 = r3->field_f
    //     0x774814: ldur            w4, [x3, #0xf]
    // 0x774818: DecompressPointer r4
    //     0x774818: add             x4, x4, HEAP, lsl #32
    // 0x77481c: stur            x4, [fp, #-0xa0]
    // 0x774820: r0 = aVa()
    //     0x774820: bl              #0x774928  ; AllocateaVaStub -> aVa (size=0x1c)
    // 0x774824: mov             x1, x0
    // 0x774828: ldur            x0, [fp, #-0x98]
    // 0x77482c: r2 = LoadInt32Instr(r0)
    //     0x77482c: sbfx            x2, x0, #1, #0x1f
    //     0x774830: tbz             w0, #0, #0x774838
    //     0x774834: ldur            x2, [x0, #7]
    // 0x774838: StoreField: r1->field_f = r2
    //     0x774838: stur            x2, [x1, #0xf]
    // 0x77483c: ldur            x4, [fp, #-0x88]
    // 0x774840: ArrayStore: r1[0] = r4  ; List_4
    //     0x774840: stur            w4, [x1, #0x17]
    // 0x774844: ldur            x2, [fp, #-0xa0]
    // 0x774848: StoreField: r1->field_b = r2
    //     0x774848: stur            w2, [x1, #0xb]
    // 0x77484c: ldur            x5, [fp, #-0x90]
    // 0x774850: r3 = LoadInt32Instr(r5)
    //     0x774850: sbfx            x3, x5, #1, #0x1f
    //     0x774854: tbz             w5, #0, #0x77485c
    //     0x774858: ldur            x3, [x5, #7]
    // 0x77485c: mov             x16, x1
    // 0x774860: mov             x1, x2
    // 0x774864: mov             x2, x16
    // 0x774868: r0 = call 0x392f90
    //     0x774868: bl              #0x392f90
    // 0x77486c: r16 = true
    //     0x77486c: add             x16, NULL, #0x20  ; true
    // 0x774870: str             x16, [SP]
    // 0x774874: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x774874: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x774878: ldr             x4, [x4, #0x870]
    // 0x77487c: r0 = call 0x392d98
    //     0x77487c: bl              #0x392d98
    // 0x774880: r0 = ReturnAsyncNotFuture()
    //     0x774880: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774884: sub             SP, fp, #0xb0
    // 0x774888: r1 = 60
    //     0x774888: movz            x1, #0x3c
    // 0x77488c: branchIfSmi(r0, 0x774898)
    //     0x77488c: tbz             w0, #0, #0x774898
    // 0x774890: r1 = LoadClassIdInstr(r0)
    //     0x774890: ldur            x1, [x0, #-1]
    //     0x774894: ubfx            x1, x1, #0xc, #0x14
    // 0x774898: cmp             x1, #0x5e5
    // 0x77489c: b.ne            #0x7748b4
    // 0x7748a0: str             x0, [SP]
    // 0x7748a4: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x7748a4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x7748a8: ldr             x4, [x4, #0x878]
    // 0x7748ac: r0 = call 0x392d98
    //     0x7748ac: bl              #0x392d98
    // 0x7748b0: r0 = ReturnAsyncNotFuture()
    //     0x7748b0: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7748b4: r1 = 60
    //     0x7748b4: movz            x1, #0x3c
    // 0x7748b8: branchIfSmi(r0, 0x7748c4)
    //     0x7748b8: tbz             w0, #0, #0x7748c4
    // 0x7748bc: r1 = LoadClassIdInstr(r0)
    //     0x7748bc: ldur            x1, [x0, #-1]
    //     0x7748c0: ubfx            x1, x1, #0xc, #0x14
    // 0x7748c4: str             x0, [SP]
    // 0x7748c8: mov             x0, x1
    // 0x7748cc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7748cc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7748d0: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7748d0: movz            x17, #0x3a5d
    //     0x7748d4: add             lr, x0, x17
    //     0x7748d8: ldr             lr, [x21, lr, lsl #3]
    //     0x7748dc: blr             lr
    // 0x7748e0: stur            x0, [fp, #-0x80]
    // 0x7748e4: r0 = Mha()
    //     0x7748e4: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x7748e8: mov             x1, x0
    // 0x7748ec: r0 = "error"
    //     0x7748ec: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x7748f0: StoreField: r1->field_7 = r0
    //     0x7748f0: stur            w0, [x1, #7]
    // 0x7748f4: ldur            x0, [fp, #-0x80]
    // 0x7748f8: StoreField: r1->field_b = r0
    //     0x7748f8: stur            w0, [x1, #0xb]
    // 0x7748fc: str             x1, [SP]
    // 0x774900: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774900: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774904: ldr             x4, [x4, #0x878]
    // 0x774908: r0 = call 0x392d98
    //     0x774908: bl              #0x392d98
    // 0x77490c: r0 = ReturnAsyncNotFuture()
    //     0x77490c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774910: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x774910: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x774914: b               #0x774684
    // 0x774918: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774918: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77491c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77491c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774920: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774920: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774924: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774924: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 401, size: 0x18, field offset: 0x10
class ZUa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x774934, size: 0x26c
    // 0x774934: EnterFrame
    //     0x774934: stp             fp, lr, [SP, #-0x10]!
    //     0x774938: mov             fp, SP
    // 0x77493c: AllocStack(0xa0)
    //     0x77493c: sub             SP, SP, #0xa0
    // 0x774940: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x80 */)
    //     0x774940: stur            NULL, [fp, #-8]
    //     0x774944: movz            x0, #0
    //     0x774948: add             x1, fp, w0, sxtw #2
    //     0x77494c: ldr             x1, [x1, #0x18]
    //     0x774950: add             x2, fp, w0, sxtw #2
    //     0x774954: ldr             x2, [x2, #0x10]
    //     0x774958: stur            x2, [fp, #-0x80]
    //     0x77495c: ldur            w3, [x1, #0x17]
    //     0x774960: add             x3, x3, HEAP, lsl #32
    //     0x774964: stur            x3, [fp, #-0x78]
    // 0x774968: CheckStackOverflow
    //     0x774968: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77496c: cmp             SP, x16
    //     0x774970: b.ls            #0x774b8c
    // 0x774974: InitAsync() -> Future<List<Object?>>
    //     0x774974: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x774978: ldr             x0, [x0, #0x1d0]
    //     0x77497c: bl              #0x74ada8  ; InitAsyncStub
    // 0x774980: ldur            x3, [fp, #-0x80]
    // 0x774984: cmp             w3, NULL
    // 0x774988: b.eq            #0x774b94
    // 0x77498c: mov             x0, x3
    // 0x774990: r2 = Null
    //     0x774990: mov             x2, NULL
    // 0x774994: r1 = Null
    //     0x774994: mov             x1, NULL
    // 0x774998: r4 = 60
    //     0x774998: movz            x4, #0x3c
    // 0x77499c: branchIfSmi(r0, 0x7749a8)
    //     0x77499c: tbz             w0, #0, #0x7749a8
    // 0x7749a0: r4 = LoadClassIdInstr(r0)
    //     0x7749a0: ldur            x4, [x0, #-1]
    //     0x7749a4: ubfx            x4, x4, #0xc, #0x14
    // 0x7749a8: sub             x4, x4, #0x5a
    // 0x7749ac: cmp             x4, #2
    // 0x7749b0: b.ls            #0x7749c4
    // 0x7749b4: r8 = List<Object?>
    //     0x7749b4: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x7749b8: r3 = Null
    //     0x7749b8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a9e0] Null
    //     0x7749bc: ldr             x3, [x3, #0x9e0]
    // 0x7749c0: r0 = List<Object?>()
    //     0x7749c0: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x7749c4: ldur            x1, [fp, #-0x80]
    // 0x7749c8: r0 = LoadClassIdInstr(r1)
    //     0x7749c8: ldur            x0, [x1, #-1]
    //     0x7749cc: ubfx            x0, x0, #0xc, #0x14
    // 0x7749d0: stp             xzr, x1, [SP]
    // 0x7749d4: mov             lr, x0
    // 0x7749d8: ldr             lr, [x21, lr, lsl #3]
    // 0x7749dc: blr             lr
    // 0x7749e0: mov             x3, x0
    // 0x7749e4: stur            x3, [fp, #-0x88]
    // 0x7749e8: cmp             w3, NULL
    // 0x7749ec: b.eq            #0x774b98
    // 0x7749f0: r3 as int
    //     0x7749f0: mov             x0, x3
    //     0x7749f4: mov             x2, NULL
    //     0x7749f8: mov             x1, NULL
    //     0x7749fc: tbz             w0, #0, #0x774a24
    //     0x774a00: ldur            x4, [x0, #-1]
    //     0x774a04: ubfx            x4, x4, #0xc, #0x14
    //     0x774a08: sub             x4, x4, #0x3c
    //     0x774a0c: cmp             x4, #1
    //     0x774a10: b.ls            #0x774a24
    //     0x774a14: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774a18: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a9f0] Null
    //     0x774a1c: ldr             x3, [x3, #0x9f0]
    //     0x774a20: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774a24: ldur            x0, [fp, #-0x80]
    // 0x774a28: r1 = LoadClassIdInstr(r0)
    //     0x774a28: ldur            x1, [x0, #-1]
    //     0x774a2c: ubfx            x1, x1, #0xc, #0x14
    // 0x774a30: r16 = 2
    //     0x774a30: movz            x16, #0x2
    // 0x774a34: stp             x16, x0, [SP]
    // 0x774a38: mov             x0, x1
    // 0x774a3c: mov             lr, x0
    // 0x774a40: ldr             lr, [x21, lr, lsl #3]
    // 0x774a44: blr             lr
    // 0x774a48: mov             x3, x0
    // 0x774a4c: stur            x3, [fp, #-0x80]
    // 0x774a50: cmp             w3, NULL
    // 0x774a54: b.eq            #0x774b9c
    // 0x774a58: r3 as int
    //     0x774a58: mov             x0, x3
    //     0x774a5c: mov             x2, NULL
    //     0x774a60: mov             x1, NULL
    //     0x774a64: tbz             w0, #0, #0x774a8c
    //     0x774a68: ldur            x4, [x0, #-1]
    //     0x774a6c: ubfx            x4, x4, #0xc, #0x14
    //     0x774a70: sub             x4, x4, #0x3c
    //     0x774a74: cmp             x4, #1
    //     0x774a78: b.ls            #0x774a8c
    //     0x774a7c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774a80: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa00] Null
    //     0x774a84: ldr             x3, [x3, #0xa00]
    //     0x774a88: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774a8c: ldur            x2, [fp, #-0x78]
    // 0x774a90: ldur            x1, [fp, #-0x88]
    // 0x774a94: ldur            x0, [fp, #-0x80]
    // 0x774a98: LoadField: r3 = r2->field_f
    //     0x774a98: ldur            w3, [x2, #0xf]
    // 0x774a9c: DecompressPointer r3
    //     0x774a9c: add             x3, x3, HEAP, lsl #32
    // 0x774aa0: stur            x3, [fp, #-0x90]
    // 0x774aa4: r0 = ZUa()
    //     0x774aa4: bl              #0x774ba0  ; AllocateZUaStub -> ZUa (size=0x18)
    // 0x774aa8: mov             x1, x0
    // 0x774aac: ldur            x0, [fp, #-0x80]
    // 0x774ab0: r2 = LoadInt32Instr(r0)
    //     0x774ab0: sbfx            x2, x0, #1, #0x1f
    //     0x774ab4: tbz             w0, #0, #0x774abc
    //     0x774ab8: ldur            x2, [x0, #7]
    // 0x774abc: StoreField: r1->field_f = r2
    //     0x774abc: stur            x2, [x1, #0xf]
    // 0x774ac0: ldur            x2, [fp, #-0x90]
    // 0x774ac4: StoreField: r1->field_b = r2
    //     0x774ac4: stur            w2, [x1, #0xb]
    // 0x774ac8: ldur            x4, [fp, #-0x88]
    // 0x774acc: r3 = LoadInt32Instr(r4)
    //     0x774acc: sbfx            x3, x4, #1, #0x1f
    //     0x774ad0: tbz             w4, #0, #0x774ad8
    //     0x774ad4: ldur            x3, [x4, #7]
    // 0x774ad8: mov             x16, x1
    // 0x774adc: mov             x1, x2
    // 0x774ae0: mov             x2, x16
    // 0x774ae4: r0 = call 0x392f90
    //     0x774ae4: bl              #0x392f90
    // 0x774ae8: r16 = true
    //     0x774ae8: add             x16, NULL, #0x20  ; true
    // 0x774aec: str             x16, [SP]
    // 0x774af0: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x774af0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x774af4: ldr             x4, [x4, #0x870]
    // 0x774af8: r0 = call 0x392d98
    //     0x774af8: bl              #0x392d98
    // 0x774afc: r0 = ReturnAsyncNotFuture()
    //     0x774afc: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774b00: sub             SP, fp, #0xa0
    // 0x774b04: r1 = 60
    //     0x774b04: movz            x1, #0x3c
    // 0x774b08: branchIfSmi(r0, 0x774b14)
    //     0x774b08: tbz             w0, #0, #0x774b14
    // 0x774b0c: r1 = LoadClassIdInstr(r0)
    //     0x774b0c: ldur            x1, [x0, #-1]
    //     0x774b10: ubfx            x1, x1, #0xc, #0x14
    // 0x774b14: cmp             x1, #0x5e5
    // 0x774b18: b.ne            #0x774b30
    // 0x774b1c: str             x0, [SP]
    // 0x774b20: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774b20: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774b24: ldr             x4, [x4, #0x878]
    // 0x774b28: r0 = call 0x392d98
    //     0x774b28: bl              #0x392d98
    // 0x774b2c: r0 = ReturnAsyncNotFuture()
    //     0x774b2c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774b30: r1 = 60
    //     0x774b30: movz            x1, #0x3c
    // 0x774b34: branchIfSmi(r0, 0x774b40)
    //     0x774b34: tbz             w0, #0, #0x774b40
    // 0x774b38: r1 = LoadClassIdInstr(r0)
    //     0x774b38: ldur            x1, [x0, #-1]
    //     0x774b3c: ubfx            x1, x1, #0xc, #0x14
    // 0x774b40: str             x0, [SP]
    // 0x774b44: mov             x0, x1
    // 0x774b48: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x774b48: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x774b4c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x774b4c: movz            x17, #0x3a5d
    //     0x774b50: add             lr, x0, x17
    //     0x774b54: ldr             lr, [x21, lr, lsl #3]
    //     0x774b58: blr             lr
    // 0x774b5c: stur            x0, [fp, #-0x78]
    // 0x774b60: r0 = Mha()
    //     0x774b60: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x774b64: mov             x1, x0
    // 0x774b68: r0 = "error"
    //     0x774b68: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x774b6c: StoreField: r1->field_7 = r0
    //     0x774b6c: stur            w0, [x1, #7]
    // 0x774b70: ldur            x0, [fp, #-0x78]
    // 0x774b74: StoreField: r1->field_b = r0
    //     0x774b74: stur            w0, [x1, #0xb]
    // 0x774b78: str             x1, [SP]
    // 0x774b7c: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774b7c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774b80: ldr             x4, [x4, #0x878]
    // 0x774b84: r0 = call 0x392d98
    //     0x774b84: bl              #0x392d98
    // 0x774b88: r0 = ReturnAsyncNotFuture()
    //     0x774b88: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774b8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x774b8c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x774b90: b               #0x774974
    // 0x774b94: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774b94: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774b98: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774b98: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x774b9c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x774b9c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 402, size: 0x28, field offset: 0x10
class YUa extends OUa {

  [closure] static Future<List<Object?>> <anonymous closure>(dynamic, Object?) async {
    // ** addr: 0x774bac, size: 0x4bc
    // 0x774bac: EnterFrame
    //     0x774bac: stp             fp, lr, [SP, #-0x10]!
    //     0x774bb0: mov             fp, SP
    // 0x774bb4: AllocStack(0xf8)
    //     0x774bb4: sub             SP, SP, #0xf8
    // 0x774bb8: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0xb0 */)
    //     0x774bb8: stur            NULL, [fp, #-8]
    //     0x774bbc: movz            x0, #0
    //     0x774bc0: add             x1, fp, w0, sxtw #2
    //     0x774bc4: ldr             x1, [x1, #0x18]
    //     0x774bc8: add             x2, fp, w0, sxtw #2
    //     0x774bcc: ldr             x2, [x2, #0x10]
    //     0x774bd0: stur            x2, [fp, #-0xb0]
    //     0x774bd4: ldur            w3, [x1, #0x17]
    //     0x774bd8: add             x3, x3, HEAP, lsl #32
    //     0x774bdc: stur            x3, [fp, #-0xa8]
    // 0x774be0: CheckStackOverflow
    //     0x774be0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x774be4: cmp             SP, x16
    //     0x774be8: b.ls            #0x775044
    // 0x774bec: InitAsync() -> Future<List<Object?>>
    //     0x774bec: add             x0, PP, #0x11, lsl #12  ; [pp+0x111d0] TypeArguments: <List<Object?>>
    //     0x774bf0: ldr             x0, [x0, #0x1d0]
    //     0x774bf4: bl              #0x74ada8  ; InitAsyncStub
    // 0x774bf8: ldur            x3, [fp, #-0xb0]
    // 0x774bfc: cmp             w3, NULL
    // 0x774c00: b.eq            #0x77504c
    // 0x774c04: mov             x0, x3
    // 0x774c08: r2 = Null
    //     0x774c08: mov             x2, NULL
    // 0x774c0c: r1 = Null
    //     0x774c0c: mov             x1, NULL
    // 0x774c10: r4 = 60
    //     0x774c10: movz            x4, #0x3c
    // 0x774c14: branchIfSmi(r0, 0x774c20)
    //     0x774c14: tbz             w0, #0, #0x774c20
    // 0x774c18: r4 = LoadClassIdInstr(r0)
    //     0x774c18: ldur            x4, [x0, #-1]
    //     0x774c1c: ubfx            x4, x4, #0xc, #0x14
    // 0x774c20: sub             x4, x4, #0x5a
    // 0x774c24: cmp             x4, #2
    // 0x774c28: b.ls            #0x774c3c
    // 0x774c2c: r8 = List<Object?>
    //     0x774c2c: ldr             x8, [PP, #0x3030]  ; [pp+0x3030] Type: List<Object?>
    // 0x774c30: r3 = Null
    //     0x774c30: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa20] Null
    //     0x774c34: ldr             x3, [x3, #0xa20]
    // 0x774c38: r0 = List<Object?>()
    //     0x774c38: bl              #0x7550cc  ; IsType_List<Object?>_Stub
    // 0x774c3c: ldur            x1, [fp, #-0xb0]
    // 0x774c40: r0 = LoadClassIdInstr(r1)
    //     0x774c40: ldur            x0, [x1, #-1]
    //     0x774c44: ubfx            x0, x0, #0xc, #0x14
    // 0x774c48: stp             xzr, x1, [SP]
    // 0x774c4c: mov             lr, x0
    // 0x774c50: ldr             lr, [x21, lr, lsl #3]
    // 0x774c54: blr             lr
    // 0x774c58: mov             x3, x0
    // 0x774c5c: stur            x3, [fp, #-0xb8]
    // 0x774c60: cmp             w3, NULL
    // 0x774c64: b.eq            #0x775050
    // 0x774c68: r3 as int
    //     0x774c68: mov             x0, x3
    //     0x774c6c: mov             x2, NULL
    //     0x774c70: mov             x1, NULL
    //     0x774c74: tbz             w0, #0, #0x774c9c
    //     0x774c78: ldur            x4, [x0, #-1]
    //     0x774c7c: ubfx            x4, x4, #0xc, #0x14
    //     0x774c80: sub             x4, x4, #0x3c
    //     0x774c84: cmp             x4, #1
    //     0x774c88: b.ls            #0x774c9c
    //     0x774c8c: ldr             x8, [PP, #0x298]  ; [pp+0x298] Type: int
    //     0x774c90: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa30] Null
    //     0x774c94: ldr             x3, [x3, #0xa30]
    //     0x774c98: bl              #0x7f17d8  ; IsType_int_Stub
    // 0x774c9c: ldur            x1, [fp, #-0xb0]
    // 0x774ca0: r0 = LoadClassIdInstr(r1)
    //     0x774ca0: ldur            x0, [x1, #-1]
    //     0x774ca4: ubfx            x0, x0, #0xc, #0x14
    // 0x774ca8: r16 = 2
    //     0x774ca8: movz            x16, #0x2
    // 0x774cac: stp             x16, x1, [SP]
    // 0x774cb0: mov             lr, x0
    // 0x774cb4: ldr             lr, [x21, lr, lsl #3]
    // 0x774cb8: blr             lr
    // 0x774cbc: mov             x3, x0
    // 0x774cc0: stur            x3, [fp, #-0xc0]
    // 0x774cc4: cmp             w3, NULL
    // 0x774cc8: b.eq            #0x775054
    // 0x774ccc: mov             x0, x3
    // 0x774cd0: r2 = Null
    //     0x774cd0: mov             x2, NULL
    // 0x774cd4: r1 = Null
    //     0x774cd4: mov             x1, NULL
    // 0x774cd8: r4 = 60
    //     0x774cd8: movz            x4, #0x3c
    // 0x774cdc: branchIfSmi(r0, 0x774ce8)
    //     0x774cdc: tbz             w0, #0, #0x774ce8
    // 0x774ce0: r4 = LoadClassIdInstr(r0)
    //     0x774ce0: ldur            x4, [x0, #-1]
    //     0x774ce4: ubfx            x4, x4, #0xc, #0x14
    // 0x774ce8: sub             x4, x4, #0x5e
    // 0x774cec: cmp             x4, #1
    // 0x774cf0: b.ls            #0x774d04
    // 0x774cf4: r8 = String
    //     0x774cf4: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x774cf8: r3 = Null
    //     0x774cf8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa40] Null
    //     0x774cfc: ldr             x3, [x3, #0xa40]
    // 0x774d00: r0 = String()
    //     0x774d00: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x774d04: ldur            x1, [fp, #-0xb0]
    // 0x774d08: r0 = LoadClassIdInstr(r1)
    //     0x774d08: ldur            x0, [x1, #-1]
    //     0x774d0c: ubfx            x0, x0, #0xc, #0x14
    // 0x774d10: r16 = 4
    //     0x774d10: movz            x16, #0x4
    // 0x774d14: stp             x16, x1, [SP]
    // 0x774d18: mov             lr, x0
    // 0x774d1c: ldr             lr, [x21, lr, lsl #3]
    // 0x774d20: blr             lr
    // 0x774d24: mov             x3, x0
    // 0x774d28: stur            x3, [fp, #-0xc8]
    // 0x774d2c: cmp             w3, NULL
    // 0x774d30: b.eq            #0x775058
    // 0x774d34: mov             x0, x3
    // 0x774d38: r2 = Null
    //     0x774d38: mov             x2, NULL
    // 0x774d3c: r1 = Null
    //     0x774d3c: mov             x1, NULL
    // 0x774d40: r4 = 60
    //     0x774d40: movz            x4, #0x3c
    // 0x774d44: branchIfSmi(r0, 0x774d50)
    //     0x774d44: tbz             w0, #0, #0x774d50
    // 0x774d48: r4 = LoadClassIdInstr(r0)
    //     0x774d48: ldur            x4, [x0, #-1]
    //     0x774d4c: ubfx            x4, x4, #0xc, #0x14
    // 0x774d50: cmp             x4, #0x3f
    // 0x774d54: b.eq            #0x774d68
    // 0x774d58: r8 = bool
    //     0x774d58: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x774d5c: r3 = Null
    //     0x774d5c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa50] Null
    //     0x774d60: ldr             x3, [x3, #0xa50]
    // 0x774d64: r0 = bool()
    //     0x774d64: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x774d68: ldur            x1, [fp, #-0xb0]
    // 0x774d6c: r0 = LoadClassIdInstr(r1)
    //     0x774d6c: ldur            x0, [x1, #-1]
    //     0x774d70: ubfx            x0, x0, #0xc, #0x14
    // 0x774d74: r16 = 6
    //     0x774d74: movz            x16, #0x6
    // 0x774d78: stp             x16, x1, [SP]
    // 0x774d7c: mov             lr, x0
    // 0x774d80: ldr             lr, [x21, lr, lsl #3]
    // 0x774d84: blr             lr
    // 0x774d88: mov             x3, x0
    // 0x774d8c: stur            x3, [fp, #-0xd0]
    // 0x774d90: cmp             w3, NULL
    // 0x774d94: b.eq            #0x77505c
    // 0x774d98: mov             x0, x3
    // 0x774d9c: r2 = Null
    //     0x774d9c: mov             x2, NULL
    // 0x774da0: r1 = Null
    //     0x774da0: mov             x1, NULL
    // 0x774da4: r4 = 60
    //     0x774da4: movz            x4, #0x3c
    // 0x774da8: branchIfSmi(r0, 0x774db4)
    //     0x774da8: tbz             w0, #0, #0x774db4
    // 0x774dac: r4 = LoadClassIdInstr(r0)
    //     0x774dac: ldur            x4, [x0, #-1]
    //     0x774db0: ubfx            x4, x4, #0xc, #0x14
    // 0x774db4: cmp             x4, #0x3f
    // 0x774db8: b.eq            #0x774dcc
    // 0x774dbc: r8 = bool
    //     0x774dbc: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x774dc0: r3 = Null
    //     0x774dc0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa60] Null
    //     0x774dc4: ldr             x3, [x3, #0xa60]
    // 0x774dc8: r0 = bool()
    //     0x774dc8: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x774dcc: ldur            x1, [fp, #-0xb0]
    // 0x774dd0: r0 = LoadClassIdInstr(r1)
    //     0x774dd0: ldur            x0, [x1, #-1]
    //     0x774dd4: ubfx            x0, x0, #0xc, #0x14
    // 0x774dd8: r16 = 8
    //     0x774dd8: movz            x16, #0x8
    // 0x774ddc: stp             x16, x1, [SP]
    // 0x774de0: mov             lr, x0
    // 0x774de4: ldr             lr, [x21, lr, lsl #3]
    // 0x774de8: blr             lr
    // 0x774dec: mov             x3, x0
    // 0x774df0: stur            x3, [fp, #-0xd8]
    // 0x774df4: cmp             w3, NULL
    // 0x774df8: b.eq            #0x775060
    // 0x774dfc: mov             x0, x3
    // 0x774e00: r2 = Null
    //     0x774e00: mov             x2, NULL
    // 0x774e04: r1 = Null
    //     0x774e04: mov             x1, NULL
    // 0x774e08: r4 = 60
    //     0x774e08: movz            x4, #0x3c
    // 0x774e0c: branchIfSmi(r0, 0x774e18)
    //     0x774e0c: tbz             w0, #0, #0x774e18
    // 0x774e10: r4 = LoadClassIdInstr(r0)
    //     0x774e10: ldur            x4, [x0, #-1]
    //     0x774e14: ubfx            x4, x4, #0xc, #0x14
    // 0x774e18: cmp             x4, #0x3f
    // 0x774e1c: b.eq            #0x774e30
    // 0x774e20: r8 = bool
    //     0x774e20: ldr             x8, [PP, #0x21c8]  ; [pp+0x21c8] Type: bool
    // 0x774e24: r3 = Null
    //     0x774e24: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa70] Null
    //     0x774e28: ldr             x3, [x3, #0xa70]
    // 0x774e2c: r0 = bool()
    //     0x774e2c: bl              #0x7f0af4  ; IsType_bool_Stub
    // 0x774e30: ldur            x1, [fp, #-0xb0]
    // 0x774e34: r0 = LoadClassIdInstr(r1)
    //     0x774e34: ldur            x0, [x1, #-1]
    //     0x774e38: ubfx            x0, x0, #0xc, #0x14
    // 0x774e3c: r16 = 10
    //     0x774e3c: movz            x16, #0xa
    // 0x774e40: stp             x16, x1, [SP]
    // 0x774e44: mov             lr, x0
    // 0x774e48: ldr             lr, [x21, lr, lsl #3]
    // 0x774e4c: blr             lr
    // 0x774e50: mov             x3, x0
    // 0x774e54: stur            x3, [fp, #-0xe0]
    // 0x774e58: cmp             w3, NULL
    // 0x774e5c: b.eq            #0x775064
    // 0x774e60: mov             x0, x3
    // 0x774e64: r2 = Null
    //     0x774e64: mov             x2, NULL
    // 0x774e68: r1 = Null
    //     0x774e68: mov             x1, NULL
    // 0x774e6c: r4 = 60
    //     0x774e6c: movz            x4, #0x3c
    // 0x774e70: branchIfSmi(r0, 0x774e7c)
    //     0x774e70: tbz             w0, #0, #0x774e7c
    // 0x774e74: r4 = LoadClassIdInstr(r0)
    //     0x774e74: ldur            x4, [x0, #-1]
    //     0x774e78: ubfx            x4, x4, #0xc, #0x14
    // 0x774e7c: sub             x4, x4, #0x5e
    // 0x774e80: cmp             x4, #1
    // 0x774e84: b.ls            #0x774e98
    // 0x774e88: r8 = String
    //     0x774e88: ldr             x8, [PP, #0x248]  ; [pp+0x248] Type: String
    // 0x774e8c: r3 = Null
    //     0x774e8c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa80] Null
    //     0x774e90: ldr             x3, [x3, #0xa80]
    // 0x774e94: r0 = String()
    //     0x774e94: bl              #0x7f0c14  ; IsType_String_Stub
    // 0x774e98: ldur            x0, [fp, #-0xb0]
    // 0x774e9c: r1 = LoadClassIdInstr(r0)
    //     0x774e9c: ldur            x1, [x0, #-1]
    //     0x774ea0: ubfx            x1, x1, #0xc, #0x14
    // 0x774ea4: r16 = 12
    //     0x774ea4: movz            x16, #0xc
    // 0x774ea8: stp             x16, x0, [SP]
    // 0x774eac: mov             x0, x1
    // 0x774eb0: mov             lr, x0
    // 0x774eb4: ldr             lr, [x21, lr, lsl #3]
    // 0x774eb8: blr             lr
    // 0x774ebc: mov             x3, x0
    // 0x774ec0: r2 = Null
    //     0x774ec0: mov             x2, NULL
    // 0x774ec4: r1 = Null
    //     0x774ec4: mov             x1, NULL
    // 0x774ec8: stur            x3, [fp, #-0xb0]
    // 0x774ecc: r8 = Map<Object?, Object?>?
    //     0x774ecc: ldr             x8, [PP, #0x1380]  ; [pp+0x1380] Type: Map<Object?, Object?>?
    // 0x774ed0: r3 = Null
    //     0x774ed0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1aa90] Null
    //     0x774ed4: ldr             x3, [x3, #0xa90]
    // 0x774ed8: r0 = Map<Object?, Object?>?()
    //     0x774ed8: bl              #0x75666c  ; IsType_Map<Object?, Object?>?_Stub
    // 0x774edc: ldur            x0, [fp, #-0xb0]
    // 0x774ee0: cmp             w0, NULL
    // 0x774ee4: b.ne            #0x774ef0
    // 0x774ee8: r0 = Null
    //     0x774ee8: mov             x0, NULL
    // 0x774eec: b               #0x774f14
    // 0x774ef0: r1 = LoadClassIdInstr(r0)
    //     0x774ef0: ldur            x1, [x0, #-1]
    //     0x774ef4: ubfx            x1, x1, #0xc, #0x14
    // 0x774ef8: r16 = <String, String>
    //     0x774ef8: ldr             x16, [PP, #0x6b68]  ; [pp+0x6b68] TypeArguments: <String, String>
    // 0x774efc: stp             x0, x16, [SP]
    // 0x774f00: mov             x0, x1
    // 0x774f04: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x774f04: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x774f08: r0 = GDT[cid_x0 + -0xda2]()
    //     0x774f08: sub             lr, x0, #0xda2
    //     0x774f0c: ldr             lr, [x21, lr, lsl #3]
    //     0x774f10: blr             lr
    // 0x774f14: stur            x0, [fp, #-0xe8]
    // 0x774f18: ldur            x7, [fp, #-0xa8]
    // 0x774f1c: ldur            x6, [fp, #-0xb8]
    // 0x774f20: ldur            x5, [fp, #-0xc0]
    // 0x774f24: ldur            x4, [fp, #-0xc8]
    // 0x774f28: ldur            x3, [fp, #-0xd0]
    // 0x774f2c: ldur            x2, [fp, #-0xd8]
    // 0x774f30: ldur            x1, [fp, #-0xe0]
    // 0x774f34: LoadField: r8 = r7->field_f
    //     0x774f34: ldur            w8, [x7, #0xf]
    // 0x774f38: DecompressPointer r8
    //     0x774f38: add             x8, x8, HEAP, lsl #32
    // 0x774f3c: stur            x8, [fp, #-0xb0]
    // 0x774f40: r0 = YUa()
    //     0x774f40: bl              #0x775068  ; AllocateYUaStub -> YUa (size=0x28)
    // 0x774f44: mov             x1, x0
    // 0x774f48: ldur            x0, [fp, #-0xc0]
    // 0x774f4c: StoreField: r1->field_f = r0
    //     0x774f4c: stur            w0, [x1, #0xf]
    // 0x774f50: ldur            x4, [fp, #-0xc8]
    // 0x774f54: StoreField: r1->field_13 = r4
    //     0x774f54: stur            w4, [x1, #0x13]
    // 0x774f58: ldur            x5, [fp, #-0xd0]
    // 0x774f5c: ArrayStore: r1[0] = r5  ; List_4
    //     0x774f5c: stur            w5, [x1, #0x17]
    // 0x774f60: ldur            x6, [fp, #-0xd8]
    // 0x774f64: StoreField: r1->field_1b = r6
    //     0x774f64: stur            w6, [x1, #0x1b]
    // 0x774f68: ldur            x7, [fp, #-0xe0]
    // 0x774f6c: StoreField: r1->field_1f = r7
    //     0x774f6c: stur            w7, [x1, #0x1f]
    // 0x774f70: ldur            x8, [fp, #-0xe8]
    // 0x774f74: StoreField: r1->field_23 = r8
    //     0x774f74: stur            w8, [x1, #0x23]
    // 0x774f78: ldur            x2, [fp, #-0xb0]
    // 0x774f7c: StoreField: r1->field_b = r2
    //     0x774f7c: stur            w2, [x1, #0xb]
    // 0x774f80: ldur            x9, [fp, #-0xb8]
    // 0x774f84: r3 = LoadInt32Instr(r9)
    //     0x774f84: sbfx            x3, x9, #1, #0x1f
    //     0x774f88: tbz             w9, #0, #0x774f90
    //     0x774f8c: ldur            x3, [x9, #7]
    // 0x774f90: mov             x16, x1
    // 0x774f94: mov             x1, x2
    // 0x774f98: mov             x2, x16
    // 0x774f9c: r0 = call 0x392f90
    //     0x774f9c: bl              #0x392f90
    // 0x774fa0: r16 = true
    //     0x774fa0: add             x16, NULL, #0x20  ; true
    // 0x774fa4: str             x16, [SP]
    // 0x774fa8: r4 = const [0, 0x1, 0x1, 0, Hj, 0, null]
    //     0x774fa8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19870] List(7) [0, 0x1, 0x1, 0, "Hj", 0, Null]
    //     0x774fac: ldr             x4, [x4, #0x870]
    // 0x774fb0: r0 = call 0x392d98
    //     0x774fb0: bl              #0x392d98
    // 0x774fb4: r0 = ReturnAsyncNotFuture()
    //     0x774fb4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774fb8: sub             SP, fp, #0xf8
    // 0x774fbc: r1 = 60
    //     0x774fbc: movz            x1, #0x3c
    // 0x774fc0: branchIfSmi(r0, 0x774fcc)
    //     0x774fc0: tbz             w0, #0, #0x774fcc
    // 0x774fc4: r1 = LoadClassIdInstr(r0)
    //     0x774fc4: ldur            x1, [x0, #-1]
    //     0x774fc8: ubfx            x1, x1, #0xc, #0x14
    // 0x774fcc: cmp             x1, #0x5e5
    // 0x774fd0: b.ne            #0x774fe8
    // 0x774fd4: str             x0, [SP]
    // 0x774fd8: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x774fd8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x774fdc: ldr             x4, [x4, #0x878]
    // 0x774fe0: r0 = call 0x392d98
    //     0x774fe0: bl              #0x392d98
    // 0x774fe4: r0 = ReturnAsyncNotFuture()
    //     0x774fe4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x774fe8: r1 = 60
    //     0x774fe8: movz            x1, #0x3c
    // 0x774fec: branchIfSmi(r0, 0x774ff8)
    //     0x774fec: tbz             w0, #0, #0x774ff8
    // 0x774ff0: r1 = LoadClassIdInstr(r0)
    //     0x774ff0: ldur            x1, [x0, #-1]
    //     0x774ff4: ubfx            x1, x1, #0xc, #0x14
    // 0x774ff8: str             x0, [SP]
    // 0x774ffc: mov             x0, x1
    // 0x775000: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x775000: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x775004: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x775004: movz            x17, #0x3a5d
    //     0x775008: add             lr, x0, x17
    //     0x77500c: ldr             lr, [x21, lr, lsl #3]
    //     0x775010: blr             lr
    // 0x775014: stur            x0, [fp, #-0xa8]
    // 0x775018: r0 = Mha()
    //     0x775018: bl              #0x76b76c  ; AllocateMhaStub -> Mha (size=0x18)
    // 0x77501c: mov             x1, x0
    // 0x775020: r0 = "error"
    //     0x775020: ldr             x0, [PP, #0x11d8]  ; [pp+0x11d8] "error"
    // 0x775024: StoreField: r1->field_7 = r0
    //     0x775024: stur            w0, [x1, #7]
    // 0x775028: ldur            x0, [fp, #-0xa8]
    // 0x77502c: StoreField: r1->field_b = r0
    //     0x77502c: stur            w0, [x1, #0xb]
    // 0x775030: str             x1, [SP]
    // 0x775034: r4 = const [0, 0x1, 0x1, 0, im, 0, null]
    //     0x775034: add             x4, PP, #0x19, lsl #12  ; [pp+0x19878] List(7) [0, 0x1, 0x1, 0, "im", 0, Null]
    //     0x775038: ldr             x4, [x4, #0x878]
    // 0x77503c: r0 = call 0x392d98
    //     0x77503c: bl              #0x392d98
    // 0x775040: r0 = ReturnAsyncNotFuture()
    //     0x775040: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x775044: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x775044: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x775048: b               #0x774bec
    // 0x77504c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77504c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775050: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775050: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775054: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775054: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775058: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775058: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x77505c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x77505c: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775060: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775060: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x775064: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x775064: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 1500, size: 0x8, field offset: 0x8
//   const constructor, 
class _xSa extends Rha {
}

// class id: 1501, size: 0xc, field offset: 0x8
//   const constructor, 
class _RUa extends _xSa {
}

// class id: 5360, size: 0x14, field offset: 0x14
enum XUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5361, size: 0x14, field offset: 0x14
enum WUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5362, size: 0x14, field offset: 0x14
enum VUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5363, size: 0x14, field offset: 0x14
enum UUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5364, size: 0x14, field offset: 0x14
enum TUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5365, size: 0x14, field offset: 0x14
enum SUa extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

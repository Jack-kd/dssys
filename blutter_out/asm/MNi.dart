// lib: , url: MNi

// class id: 1049552, size: 0x8
class :: {

  static late final W<String, RTa> _peg; // offset: 0x1128

  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7990f4, size: 0x264
    // 0x7990f4: EnterFrame
    //     0x7990f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7990f8: mov             fp, SP
    // 0x7990fc: AllocStack(0x80)
    //     0x7990fc: sub             SP, SP, #0x80
    // 0x799100: SetupParameters(dynamic _ /* r1 */)
    //     0x799100: stur            NULL, [fp, #-8]
    //     0x799104: movz            x0, #0
    //     0x799108: add             x1, fp, w0, sxtw #2
    //     0x79910c: ldr             x1, [x1, #0x10]
    //     0x799110: ldur            w2, [x1, #0x17]
    //     0x799114: add             x2, x2, HEAP, lsl #32
    //     0x799118: stur            x2, [fp, #-0x58]
    // 0x79911c: CheckStackOverflow
    //     0x79911c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x799120: cmp             SP, x16
    //     0x799124: b.ls            #0x799350
    // 0x799128: InitAsync() -> Future<void?>
    //     0x799128: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x79912c: bl              #0x74ada8  ; InitAsyncStub
    // 0x799130: ldur            x0, [fp, #-0x58]
    // 0x799134: LoadField: r2 = r0->field_f
    //     0x799134: ldur            w2, [x0, #0xf]
    // 0x799138: DecompressPointer r2
    //     0x799138: add             x2, x2, HEAP, lsl #32
    // 0x79913c: mov             x1, x2
    // 0x799140: stur            x2, [fp, #-0x60]
    // 0x799144: r0 = __unknown_function__()
    //     0x799144: bl              #0x79a120  ; [] ::__unknown_function__
    // 0x799148: mov             x1, x0
    // 0x79914c: stur            x1, [fp, #-0x68]
    // 0x799150: r0 = Await()
    //     0x799150: bl              #0x74ab64  ; AwaitStub
    // 0x799154: r16 = true
    //     0x799154: add             x16, NULL, #0x20  ; true
    // 0x799158: cmp             w0, w16
    // 0x79915c: b.eq            #0x799174
    // 0x799160: ldur            x1, [fp, #-0x60]
    // 0x799164: r0 = __unknown_function__()
    //     0x799164: bl              #0x79a018  ; [] ::__unknown_function__
    // 0x799168: mov             x1, x0
    // 0x79916c: stur            x1, [fp, #-0x68]
    // 0x799170: r0 = Await()
    //     0x799170: bl              #0x74ab64  ; AwaitStub
    // 0x799174: ldur            x0, [fp, #-0x58]
    // 0x799178: ldur            x2, [fp, #-0x60]
    // 0x79917c: mov             x1, x2
    // 0x799180: r0 = call 0x498ef4
    //     0x799180: bl              #0x498ef4
    // 0x799184: LoadField: r3 = r0->field_7
    //     0x799184: ldur            w3, [x0, #7]
    // 0x799188: DecompressPointer r3
    //     0x799188: add             x3, x3, HEAP, lsl #32
    // 0x79918c: stur            x3, [fp, #-0x68]
    // 0x799190: r1 = Null
    //     0x799190: mov             x1, NULL
    // 0x799194: r2 = 6
    //     0x799194: movz            x2, #0x6
    // 0x799198: r0 = AllocateArray()
    //     0x799198: bl              #0x7de31c  ; AllocateArrayStub
    // 0x79919c: stur            x0, [fp, #-0x78]
    // 0x7991a0: r16 = "."
    //     0x7991a0: ldr             x16, [PP, #0x810]  ; [pp+0x810] "."
    // 0x7991a4: StoreField: r0->field_f = r16
    //     0x7991a4: stur            w16, [x0, #0xf]
    // 0x7991a8: ldur            x1, [fp, #-0x60]
    // 0x7991ac: LoadField: r2 = r1->field_7
    //     0x7991ac: ldur            w2, [x1, #7]
    // 0x7991b0: DecompressPointer r2
    //     0x7991b0: add             x2, x2, HEAP, lsl #32
    // 0x7991b4: mov             x1, x2
    // 0x7991b8: stur            x2, [fp, #-0x70]
    // 0x7991bc: r0 = call 0x498d18
    //     0x7991bc: bl              #0x498d18
    // 0x7991c0: ldur            x1, [fp, #-0x78]
    // 0x7991c4: ArrayStore: r1[1] = r0  ; List_4
    //     0x7991c4: add             x25, x1, #0x13
    //     0x7991c8: str             w0, [x25]
    //     0x7991cc: tbz             w0, #0, #0x7991e8
    //     0x7991d0: ldurb           w16, [x1, #-1]
    //     0x7991d4: ldurb           w17, [x0, #-1]
    //     0x7991d8: and             x16, x17, x16, lsr #2
    //     0x7991dc: tst             x16, HEAP, lsr #32
    //     0x7991e0: b.eq            #0x7991e8
    //     0x7991e4: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7991e8: ldur            x0, [fp, #-0x78]
    // 0x7991ec: r16 = ".src"
    //     0x7991ec: add             x16, PP, #0x20, lsl #12  ; [pp+0x20bf0] ".src"
    //     0x7991f0: ldr             x16, [x16, #0xbf0]
    // 0x7991f4: ArrayStore: r0[0] = r16  ; List_4
    //     0x7991f4: stur            w16, [x0, #0x17]
    // 0x7991f8: str             x0, [SP]
    // 0x7991fc: r0 = _interpolate()
    //     0x7991fc: bl              #0x229e40  ; [dart:core] _StringBase::_interpolate
    // 0x799200: ldur            x1, [fp, #-0x68]
    // 0x799204: mov             x2, x0
    // 0x799208: r0 = call 0x497e34
    //     0x799208: bl              #0x497e34
    // 0x79920c: mov             x1, x0
    // 0x799210: r0 = call 0x493448
    //     0x799210: bl              #0x493448
    // 0x799214: ldur            x1, [fp, #-0x70]
    // 0x799218: stur            x0, [fp, #-0x60]
    // 0x79921c: r0 = call 0x493448
    //     0x79921c: bl              #0x493448
    // 0x799220: stur            x0, [fp, #-0x68]
    // 0x799224: r0 = call 0x23d09c
    //     0x799224: bl              #0x23d09c
    // 0x799228: r0 = _Fp()
    //     0x799228: bl              #0x74b050  ; Allocate_FpStub -> _Fp (size=0x10)
    // 0x79922c: mov             x2, x0
    // 0x799230: ldur            x0, [fp, #-0x60]
    // 0x799234: stur            x2, [fp, #-0x70]
    // 0x799238: StoreField: r2->field_7 = r0
    //     0x799238: stur            w0, [x2, #7]
    // 0x79923c: mov             x1, x0
    // 0x799240: r0 = call 0x23cffc
    //     0x799240: bl              #0x23cffc
    // 0x799244: ldur            x1, [fp, #-0x70]
    // 0x799248: StoreField: r1->field_b = r0
    //     0x799248: stur            w0, [x1, #0xb]
    //     0x79924c: ldurb           w16, [x1, #-1]
    //     0x799250: ldurb           w17, [x0, #-1]
    //     0x799254: and             x16, x17, x16, lsr #2
    //     0x799258: tst             x16, HEAP, lsr #32
    //     0x79925c: b.eq            #0x799264
    //     0x799260: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x799264: ldur            x0, [fp, #-0x58]
    // 0x799268: LoadField: r2 = r0->field_13
    //     0x799268: ldur            w2, [x0, #0x13]
    // 0x79926c: DecompressPointer r2
    //     0x79926c: add             x2, x2, HEAP, lsl #32
    // 0x799270: r3 = true
    //     0x799270: add             x3, NULL, #0x20  ; true
    // 0x799274: r0 = __unknown_function__()
    //     0x799274: bl              #0x799ce0  ; [] ::__unknown_function__
    // 0x799278: mov             x1, x0
    // 0x79927c: stur            x1, [fp, #-0x70]
    // 0x799280: r0 = Await()
    //     0x799280: bl              #0x74ab64  ; AwaitStub
    // 0x799284: r0 = call 0x23d09c
    //     0x799284: bl              #0x23d09c
    // 0x799288: r0 = _Fp()
    //     0x799288: bl              #0x74b050  ; Allocate_FpStub -> _Fp (size=0x10)
    // 0x79928c: mov             x2, x0
    // 0x799290: ldur            x0, [fp, #-0x60]
    // 0x799294: stur            x2, [fp, #-0x70]
    // 0x799298: StoreField: r2->field_7 = r0
    //     0x799298: stur            w0, [x2, #7]
    // 0x79929c: mov             x1, x0
    // 0x7992a0: r0 = call 0x23cffc
    //     0x7992a0: bl              #0x23cffc
    // 0x7992a4: ldur            x1, [fp, #-0x70]
    // 0x7992a8: StoreField: r1->field_b = r0
    //     0x7992a8: stur            w0, [x1, #0xb]
    //     0x7992ac: ldurb           w16, [x1, #-1]
    //     0x7992b0: ldurb           w17, [x0, #-1]
    //     0x7992b4: and             x16, x17, x16, lsr #2
    //     0x7992b8: tst             x16, HEAP, lsr #32
    //     0x7992bc: b.eq            #0x7992c4
    //     0x7992c0: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7992c4: ldur            x2, [fp, #-0x68]
    // 0x7992c8: r0 = __unknown_function__()
    //     0x7992c8: bl              #0x799358  ; [] ::__unknown_function__
    // 0x7992cc: mov             x1, x0
    // 0x7992d0: stur            x1, [fp, #-0x70]
    // 0x7992d4: r0 = Await()
    //     0x7992d4: bl              #0x74ab64  ; AwaitStub
    // 0x7992d8: b               #0x799348
    // 0x7992dc: sub             SP, fp, #0x80
    // 0x7992e0: stur            x1, [fp, #-0x58]
    // 0x7992e4: r2 = 60
    //     0x7992e4: movz            x2, #0x3c
    // 0x7992e8: branchIfSmi(r0, 0x7992f4)
    //     0x7992e8: tbz             w0, #0, #0x7992f4
    // 0x7992ec: r2 = LoadClassIdInstr(r0)
    //     0x7992ec: ldur            x2, [x0, #-1]
    //     0x7992f0: ubfx            x2, x2, #0xc, #0x14
    // 0x7992f4: str             x0, [SP]
    // 0x7992f8: mov             x0, x2
    // 0x7992fc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7992fc: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x799300: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x799300: movz            x17, #0x3a5d
    //     0x799304: add             lr, x0, x17
    //     0x799308: ldr             lr, [x21, lr, lsl #3]
    //     0x79930c: blr             lr
    // 0x799310: mov             x1, x0
    // 0x799314: r0 = call 0x465480
    //     0x799314: bl              #0x465480
    // 0x799318: ldur            x0, [fp, #-0x58]
    // 0x79931c: r1 = LoadClassIdInstr(r0)
    //     0x79931c: ldur            x1, [x0, #-1]
    //     0x799320: ubfx            x1, x1, #0xc, #0x14
    // 0x799324: str             x0, [SP]
    // 0x799328: mov             x0, x1
    // 0x79932c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x79932c: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x799330: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x799330: movz            x17, #0x3a5d
    //     0x799334: add             lr, x0, x17
    //     0x799338: ldr             lr, [x21, lr, lsl #3]
    //     0x79933c: blr             lr
    // 0x799340: mov             x1, x0
    // 0x799344: r0 = call 0x465480
    //     0x799344: bl              #0x465480
    // 0x799348: r0 = Null
    //     0x799348: mov             x0, NULL
    // 0x79934c: r0 = ReturnAsyncNotFuture()
    //     0x79934c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x799350: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x799350: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x799354: b               #0x799128
  }
  [closure] static Future<void> <anonymous closure>(dynamic, File) {
    // ** addr: 0x496c6c, size: -0x1
  }
  [closure] static void <anonymous closure>(dynamic, up) {
    // ** addr: 0x496b10, size: -0x1
  }
  [closure] static Null <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x496aa8, size: -0x1
  }
}

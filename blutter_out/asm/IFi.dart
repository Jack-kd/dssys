// lib: , url: IFi

// class id: 1049148, size: 0x8
class :: {
}

// class id: 3774, size: 0x58, field offset: 0x44
class mua extends pO
    implements Qfa {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7672c0, size: 0x2a8
    // 0x7672c0: EnterFrame
    //     0x7672c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7672c4: mov             fp, SP
    // 0x7672c8: AllocStack(0x78)
    //     0x7672c8: sub             SP, SP, #0x78
    // 0x7672cc: SetupParameters([dynamic _ /* r0 */])
    //     0x7672cc: ldr             x0, [fp, #0x10]
    //     0x7672d0: ldur            w3, [x0, #0x17]
    //     0x7672d4: add             x3, x3, HEAP, lsl #32
    //     0x7672d8: stur            x3, [fp, #-0x68]
    // 0x7672dc: CheckStackOverflow
    //     0x7672dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7672e0: cmp             SP, x16
    //     0x7672e4: b.ls            #0x767558
    // 0x7672e8: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x7672e8: ldur            w0, [x3, #0x17]
    // 0x7672ec: DecompressPointer r0
    //     0x7672ec: add             x0, x0, HEAP, lsl #32
    // 0x7672f0: LoadField: r4 = r3->field_f
    //     0x7672f0: ldur            w4, [x3, #0xf]
    // 0x7672f4: DecompressPointer r4
    //     0x7672f4: add             x4, x4, HEAP, lsl #32
    // 0x7672f8: stur            x4, [fp, #-0x60]
    // 0x7672fc: cmp             w0, NULL
    // 0x767300: b.ne            #0x767310
    // 0x767304: mov             x1, x4
    // 0x767308: r0 = Null
    //     0x767308: mov             x0, NULL
    // 0x76730c: b               #0x7673c0
    // 0x767310: LoadField: r2 = r4->field_47
    //     0x767310: ldur            w2, [x4, #0x47]
    // 0x767314: DecompressPointer r2
    //     0x767314: add             x2, x2, HEAP, lsl #32
    // 0x767318: LoadField: r0 = r3->field_13
    //     0x767318: ldur            w0, [x3, #0x13]
    // 0x76731c: DecompressPointer r0
    //     0x76731c: add             x0, x0, HEAP, lsl #32
    // 0x767320: r1 = LoadInt32Instr(r0)
    //     0x767320: sbfx            x1, x0, #1, #0x1f
    //     0x767324: tbz             w0, #0, #0x76732c
    //     0x767328: ldur            x1, [x0, #7]
    // 0x76732c: sub             x5, x1, #1
    // 0x767330: r0 = BoxInt64Instr(r5)
    //     0x767330: sbfiz           x0, x5, #1, #0x1f
    //     0x767334: cmp             x5, x0, asr #1
    //     0x767338: b.eq            #0x767344
    //     0x76733c: bl              #0x7de5a8  ; AllocateMintSharedWithoutFPURegsStub
    //     0x767340: stur            x5, [x0, #7]
    // 0x767344: mov             x1, x2
    // 0x767348: mov             x2, x0
    // 0x76734c: r0 = call 0x32e404
    //     0x76734c: bl              #0x32e404
    // 0x767350: cmp             w0, NULL
    // 0x767354: b.ne            #0x767360
    // 0x767358: r1 = Null
    //     0x767358: mov             x1, NULL
    // 0x76735c: b               #0x767368
    // 0x767360: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x767360: ldur            w1, [x0, #0x17]
    // 0x767364: DecompressPointer r1
    //     0x767364: add             x1, x1, HEAP, lsl #32
    // 0x767368: cmp             w1, NULL
    // 0x76736c: b.eq            #0x767560
    // 0x767370: r0 = LoadClassIdInstr(r1)
    //     0x767370: ldur            x0, [x1, #-1]
    //     0x767374: ubfx            x0, x0, #0xc, #0x14
    // 0x767378: mov             lr, x0
    // 0x76737c: ldr             lr, [x21, lr, lsl #3]
    // 0x767380: blr             lr
    // 0x767384: mov             x3, x0
    // 0x767388: r2 = Null
    //     0x767388: mov             x2, NULL
    // 0x76738c: r1 = Null
    //     0x76738c: mov             x1, NULL
    // 0x767390: stur            x3, [fp, #-0x70]
    // 0x767394: r4 = LoadClassIdInstr(r0)
    //     0x767394: ldur            x4, [x0, #-1]
    //     0x767398: ubfx            x4, x4, #0xc, #0x14
    // 0x76739c: sub             x4, x4, #0xb6f
    // 0x7673a0: cmp             x4, #0x91
    // 0x7673a4: b.ls            #0x7673b8
    // 0x7673a8: r8 = Tq?
    //     0x7673a8: ldr             x8, [PP, #0x4080]  ; [pp+0x4080] Type: Tq?
    // 0x7673ac: r3 = Null
    //     0x7673ac: add             x3, PP, #0x25, lsl #12  ; [pp+0x25d78] Null
    //     0x7673b0: ldr             x3, [x3, #0xd78]
    // 0x7673b4: r0 = Tq?()
    //     0x7673b4: bl              #0x75b42c  ; IsType_Tq?_Stub
    // 0x7673b8: ldur            x0, [fp, #-0x70]
    // 0x7673bc: ldur            x1, [fp, #-0x60]
    // 0x7673c0: StoreField: r1->field_4b = r0
    //     0x7673c0: stur            w0, [x1, #0x4b]
    //     0x7673c4: ldurb           w16, [x1, #-1]
    //     0x7673c8: ldurb           w17, [x0, #-1]
    //     0x7673cc: and             x16, x17, x16, lsr #2
    //     0x7673d0: tst             x16, HEAP, lsr #32
    //     0x7673d4: b.eq            #0x7673dc
    //     0x7673d8: bl              #0x7dc988  ; WriteBarrierWrappersStub
    // 0x7673dc: ldur            x3, [fp, #-0x68]
    // 0x7673e0: LoadField: r4 = r3->field_f
    //     0x7673e0: ldur            w4, [x3, #0xf]
    // 0x7673e4: DecompressPointer r4
    //     0x7673e4: add             x4, x4, HEAP, lsl #32
    // 0x7673e8: stur            x4, [fp, #-0x70]
    // 0x7673ec: ArrayLoad: r5 = r4[0]  ; List_4
    //     0x7673ec: ldur            w5, [x4, #0x17]
    // 0x7673f0: DecompressPointer r5
    //     0x7673f0: add             x5, x5, HEAP, lsl #32
    // 0x7673f4: stur            x5, [fp, #-0x60]
    // 0x7673f8: cmp             w5, NULL
    // 0x7673fc: b.eq            #0x767564
    // 0x767400: mov             x0, x5
    // 0x767404: r2 = Null
    //     0x767404: mov             x2, NULL
    // 0x767408: r1 = Null
    //     0x767408: mov             x1, NULL
    // 0x76740c: r4 = LoadClassIdInstr(r0)
    //     0x76740c: ldur            x4, [x0, #-1]
    //     0x767410: ubfx            x4, x4, #0xc, #0x14
    // 0x767414: r17 = -4388
    //     0x767414: movn            x17, #0x1123
    // 0x767418: add             x4, x4, x17
    // 0x76741c: cmp             x4, #5
    // 0x767420: b.ls            #0x767438
    // 0x767424: r8 = hua
    //     0x767424: add             x8, PP, #0x25, lsl #12  ; [pp+0x25d88] Type: hua
    //     0x767428: ldr             x8, [x8, #0xd88]
    // 0x76742c: r3 = Null
    //     0x76742c: add             x3, PP, #0x25, lsl #12  ; [pp+0x25d90] Null
    //     0x767430: ldr             x3, [x3, #0xd90]
    // 0x767434: r0 = DefaultTypeTest()
    //     0x767434: bl              #0x7dc198  ; DefaultTypeTestStub
    // 0x767438: ldur            x3, [fp, #-0x68]
    // 0x76743c: LoadField: r1 = r3->field_13
    //     0x76743c: ldur            w1, [x3, #0x13]
    // 0x767440: DecompressPointer r1
    //     0x767440: add             x1, x1, HEAP, lsl #32
    // 0x767444: mov             x0, x1
    // 0x767448: ldur            x4, [fp, #-0x70]
    // 0x76744c: StoreField: r4->field_4f = r0
    //     0x76744c: stur            w0, [x4, #0x4f]
    //     0x767450: tbz             w0, #0, #0x76746c
    //     0x767454: ldurb           w16, [x4, #-1]
    //     0x767458: ldurb           w17, [x0, #-1]
    //     0x76745c: and             x16, x17, x16, lsr #2
    //     0x767460: tst             x16, HEAP, lsr #32
    //     0x767464: b.eq            #0x76746c
    //     0x767468: bl              #0x7dc9e8  ; WriteBarrierWrappersStub
    // 0x76746c: LoadField: r0 = r4->field_47
    //     0x76746c: ldur            w0, [x4, #0x47]
    // 0x767470: DecompressPointer r0
    //     0x767470: add             x0, x0, HEAP, lsl #32
    // 0x767474: mov             x2, x1
    // 0x767478: mov             x1, x0
    // 0x76747c: r0 = call 0x5f163c
    //     0x76747c: bl              #0x5f163c
    // 0x767480: mov             x4, x0
    // 0x767484: ldur            x0, [fp, #-0x68]
    // 0x767488: stur            x4, [fp, #-0x78]
    // 0x76748c: LoadField: r1 = r0->field_f
    //     0x76748c: ldur            w1, [x0, #0xf]
    // 0x767490: DecompressPointer r1
    //     0x767490: add             x1, x1, HEAP, lsl #32
    // 0x767494: LoadField: r2 = r0->field_13
    //     0x767494: ldur            w2, [x0, #0x13]
    // 0x767498: DecompressPointer r2
    //     0x767498: add             x2, x2, HEAP, lsl #32
    // 0x76749c: r3 = LoadInt32Instr(r2)
    //     0x76749c: sbfx            x3, x2, #1, #0x1f
    //     0x7674a0: tbz             w2, #0, #0x7674a8
    //     0x7674a4: ldur            x3, [x2, #7]
    // 0x7674a8: mov             x2, x3
    // 0x7674ac: ldur            x3, [fp, #-0x60]
    // 0x7674b0: r0 = call 0x32e3ac
    //     0x7674b0: bl              #0x32e3ac
    // 0x7674b4: mov             x1, x0
    // 0x7674b8: ldur            x0, [fp, #-0x68]
    // 0x7674bc: LoadField: r5 = r0->field_13
    //     0x7674bc: ldur            w5, [x0, #0x13]
    // 0x7674c0: DecompressPointer r5
    //     0x7674c0: add             x5, x5, HEAP, lsl #32
    // 0x7674c4: mov             x3, x1
    // 0x7674c8: ldur            x1, [fp, #-0x70]
    // 0x7674cc: ldur            x2, [fp, #-0x78]
    // 0x7674d0: r0 = call 0x5d11e0
    //     0x7674d0: bl              #0x5d11e0
    // 0x7674d4: ldur            x2, [fp, #-0x68]
    // 0x7674d8: LoadField: r1 = r2->field_f
    //     0x7674d8: ldur            w1, [x2, #0xf]
    // 0x7674dc: DecompressPointer r1
    //     0x7674dc: add             x1, x1, HEAP, lsl #32
    // 0x7674e0: StoreField: r1->field_4f = rNULL
    //     0x7674e0: stur            NULL, [x1, #0x4f]
    // 0x7674e4: cmp             w0, NULL
    // 0x7674e8: b.eq            #0x767510
    // 0x7674ec: LoadField: r3 = r1->field_47
    //     0x7674ec: ldur            w3, [x1, #0x47]
    // 0x7674f0: DecompressPointer r3
    //     0x7674f0: add             x3, x3, HEAP, lsl #32
    // 0x7674f4: LoadField: r1 = r2->field_13
    //     0x7674f4: ldur            w1, [x2, #0x13]
    // 0x7674f8: DecompressPointer r1
    //     0x7674f8: add             x1, x1, HEAP, lsl #32
    // 0x7674fc: mov             x2, x1
    // 0x767500: mov             x1, x3
    // 0x767504: mov             x3, x0
    // 0x767508: r0 = call 0x6a0cb8
    //     0x767508: bl              #0x6a0cb8
    // 0x76750c: b               #0x76752c
    // 0x767510: LoadField: r0 = r1->field_47
    //     0x767510: ldur            w0, [x1, #0x47]
    // 0x767514: DecompressPointer r0
    //     0x767514: add             x0, x0, HEAP, lsl #32
    // 0x767518: LoadField: r1 = r2->field_13
    //     0x767518: ldur            w1, [x2, #0x13]
    // 0x76751c: DecompressPointer r1
    //     0x76751c: add             x1, x1, HEAP, lsl #32
    // 0x767520: mov             x2, x1
    // 0x767524: mov             x1, x0
    // 0x767528: r0 = call 0x695410
    //     0x767528: bl              #0x695410
    // 0x76752c: r0 = Null
    //     0x76752c: mov             x0, NULL
    // 0x767530: LeaveFrame
    //     0x767530: mov             SP, fp
    //     0x767534: ldp             fp, lr, [SP], #0x10
    // 0x767538: ret
    //     0x767538: ret             
    // 0x76753c: sub             SP, fp, #0x78
    // 0x767540: ldur            x2, [fp, #-0x68]
    // 0x767544: LoadField: r3 = r2->field_f
    //     0x767544: ldur            w3, [x2, #0xf]
    // 0x767548: DecompressPointer r3
    //     0x767548: add             x3, x3, HEAP, lsl #32
    // 0x76754c: StoreField: r3->field_4f = rNULL
    //     0x76754c: stur            NULL, [x3, #0x4f]
    // 0x767550: r0 = ReThrow()
    //     0x767550: bl              #0x7dc4f4  ; ReThrowStub
    // 0x767554: brk             #0
    // 0x767558: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x767558: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x76755c: b               #0x7672e8
    // 0x767560: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x767560: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x767564: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x767564: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x767664, size: 0xf4
    // 0x767664: EnterFrame
    //     0x767664: stp             fp, lr, [SP, #-0x10]!
    //     0x767668: mov             fp, SP
    // 0x76766c: AllocStack(0x58)
    //     0x76766c: sub             SP, SP, #0x58
    // 0x767670: SetupParameters([dynamic _ /* r0 */])
    //     0x767670: ldr             x0, [fp, #0x10]
    //     0x767674: ldur            w3, [x0, #0x17]
    //     0x767678: add             x3, x3, HEAP, lsl #32
    //     0x76767c: stur            x3, [fp, #-0x58]
    // 0x767680: CheckStackOverflow
    //     0x767680: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x767684: cmp             SP, x16
    //     0x767688: b.ls            #0x767750
    // 0x76768c: LoadField: r4 = r3->field_f
    //     0x76768c: ldur            w4, [x3, #0xf]
    // 0x767690: DecompressPointer r4
    //     0x767690: add             x4, x4, HEAP, lsl #32
    // 0x767694: stur            x4, [fp, #-0x50]
    // 0x767698: LoadField: r5 = r3->field_13
    //     0x767698: ldur            w5, [x3, #0x13]
    // 0x76769c: DecompressPointer r5
    //     0x76769c: add             x5, x5, HEAP, lsl #32
    // 0x7676a0: mov             x0, x5
    // 0x7676a4: stur            x5, [fp, #-0x48]
    // 0x7676a8: StoreField: r4->field_4f = r0
    //     0x7676a8: stur            w0, [x4, #0x4f]
    //     0x7676ac: tbz             w0, #0, #0x7676c8
    //     0x7676b0: ldurb           w16, [x4, #-1]
    //     0x7676b4: ldurb           w17, [x0, #-1]
    //     0x7676b8: and             x16, x17, x16, lsr #2
    //     0x7676bc: tst             x16, HEAP, lsr #32
    //     0x7676c0: b.eq            #0x7676c8
    //     0x7676c4: bl              #0x7dc9e8  ; WriteBarrierWrappersStub
    // 0x7676c8: LoadField: r1 = r4->field_47
    //     0x7676c8: ldur            w1, [x4, #0x47]
    // 0x7676cc: DecompressPointer r1
    //     0x7676cc: add             x1, x1, HEAP, lsl #32
    // 0x7676d0: mov             x2, x5
    // 0x7676d4: r0 = call 0x32e404
    //     0x7676d4: bl              #0x32e404
    // 0x7676d8: cmp             w0, NULL
    // 0x7676dc: b.ne            #0x7676e8
    // 0x7676e0: r2 = Null
    //     0x7676e0: mov             x2, NULL
    // 0x7676e4: b               #0x7676f4
    // 0x7676e8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7676e8: ldur            w1, [x0, #0x17]
    // 0x7676ec: DecompressPointer r1
    //     0x7676ec: add             x1, x1, HEAP, lsl #32
    // 0x7676f0: mov             x2, x1
    // 0x7676f4: ldur            x1, [fp, #-0x50]
    // 0x7676f8: ldur            x5, [fp, #-0x48]
    // 0x7676fc: r3 = Null
    //     0x7676fc: mov             x3, NULL
    // 0x767700: r0 = call 0x5d11e0
    //     0x767700: bl              #0x5d11e0
    // 0x767704: ldur            x2, [fp, #-0x58]
    // 0x767708: LoadField: r0 = r2->field_f
    //     0x767708: ldur            w0, [x2, #0xf]
    // 0x76770c: DecompressPointer r0
    //     0x76770c: add             x0, x0, HEAP, lsl #32
    // 0x767710: StoreField: r0->field_4f = rNULL
    //     0x767710: stur            NULL, [x0, #0x4f]
    // 0x767714: LoadField: r1 = r0->field_47
    //     0x767714: ldur            w1, [x0, #0x47]
    // 0x767718: DecompressPointer r1
    //     0x767718: add             x1, x1, HEAP, lsl #32
    // 0x76771c: ldur            x2, [fp, #-0x48]
    // 0x767720: r0 = call 0x695410
    //     0x767720: bl              #0x695410
    // 0x767724: r0 = Null
    //     0x767724: mov             x0, NULL
    // 0x767728: LeaveFrame
    //     0x767728: mov             SP, fp
    //     0x76772c: ldp             fp, lr, [SP], #0x10
    // 0x767730: ret
    //     0x767730: ret             
    // 0x767734: sub             SP, fp, #0x58
    // 0x767738: ldur            x2, [fp, #-0x58]
    // 0x76773c: LoadField: r3 = r2->field_f
    //     0x76773c: ldur            w3, [x2, #0xf]
    // 0x767740: DecompressPointer r3
    //     0x767740: add             x3, x3, HEAP, lsl #32
    // 0x767744: StoreField: r3->field_4f = rNULL
    //     0x767744: stur            NULL, [x3, #0x4f]
    // 0x767748: r0 = ReThrow()
    //     0x767748: bl              #0x7dc4f4  ; ReThrowStub
    // 0x76774c: brk             #0
    // 0x767750: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x767750: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x767754: b               #0x76768c
  }
  [closure] void dPh(dynamic, int) {
    // ** addr: 0x52c6e8, size: -0x1
  }
  [closure] ev? <anonymous closure>(dynamic) {
    // ** addr: 0x52c670, size: -0x1
  }
  [closure] void Jhd(dynamic, Tq) {
    // ** addr: 0x6c57b4, size: -0x1
  }
}

// class id: 3783, size: 0x4c, field offset: 0x4c
class _pua extends Ix {
}

// class id: 4386, size: 0xc, field offset: 0xc
//   const constructor, 
abstract class gua extends Dr {
}

// class id: 4387, size: 0x10, field offset: 0xc
//   const constructor, 
abstract class hua extends gua {
}

// class id: 4390, size: 0x14, field offset: 0x10
//   const constructor, 
class lua extends hua {
}

// class id: 4393, size: 0x10, field offset: 0x10
//   const constructor, 
class iua extends hua {
}

// class id: 4481, size: 0x10, field offset: 0x10
//   const constructor, 
class oua extends qL {
}

// class id: 4519, size: 0x18, field offset: 0x14
//   const constructor, 
class nua extends gla<dynamic> {
}

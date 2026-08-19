// lib: , url: xxi

// class id: 1048624, size: 0x8
class :: {
}

// class id: 2225, size: 0xc, field offset: 0x8
abstract class DH extends Object {

  [closure] String Vxh(dynamic, List<int>) {
    // ** addr: 0x7c774c, size: 0x8c
    // 0x7c774c: EnterFrame
    //     0x7c774c: stp             fp, lr, [SP, #-0x10]!
    //     0x7c7750: mov             fp, SP
    // 0x7c7754: AllocStack(0x50)
    //     0x7c7754: sub             SP, SP, #0x50
    // 0x7c7758: SetupParameters([dynamic _ /* r0 */])
    //     0x7c7758: ldr             x0, [fp, #0x18]
    //     0x7c775c: ldur            w3, [x0, #0x17]
    //     0x7c7760: add             x3, x3, HEAP, lsl #32
    //     0x7c7764: stur            x3, [fp, #-0x50]
    // 0x7c7768: CheckStackOverflow
    //     0x7c7768: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c776c: cmp             SP, x16
    //     0x7c7770: b.ls            #0x7c77d0
    // 0x7c7774: LoadField: r0 = r3->field_f
    //     0x7c7774: ldur            w0, [x3, #0xf]
    // 0x7c7778: DecompressPointer r0
    //     0x7c7778: add             x0, x0, HEAP, lsl #32
    // 0x7c777c: tbnz            w0, #4, #0x7c7794
    // 0x7c7780: ldr             x2, [fp, #0x10]
    // 0x7c7784: r1 = Instance_Yf
    //     0x7c7784: ldr             x1, [PP, #0x2ea8]  ; [pp+0x2ea8] Obj!Yf@44eeb1
    // 0x7c7788: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7c7788: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7c778c: r0 = call 0x5f4f04
    //     0x7c778c: bl              #0x5f4f04
    // 0x7c7790: b               #0x7c77a4
    // 0x7c7794: ldr             x1, [fp, #0x10]
    // 0x7c7798: r2 = 0
    //     0x7c7798: movz            x2, #0
    // 0x7c779c: r3 = Null
    //     0x7c779c: mov             x3, NULL
    // 0x7c77a0: r0 = call 0x22c000
    //     0x7c77a0: bl              #0x22c000
    // 0x7c77a4: LeaveFrame
    //     0x7c77a4: mov             SP, fp
    //     0x7c77a8: ldp             fp, lr, [SP], #0x10
    // 0x7c77ac: ret
    //     0x7c77ac: ret             
    // 0x7c77b0: sub             SP, fp, #0x50
    // 0x7c77b4: ldr             x1, [fp, #0x10]
    // 0x7c77b8: r2 = 0
    //     0x7c77b8: movz            x2, #0
    // 0x7c77bc: r3 = Null
    //     0x7c77bc: mov             x3, NULL
    // 0x7c77c0: r0 = call 0x22c000
    //     0x7c77c0: bl              #0x22c000
    // 0x7c77c4: LeaveFrame
    //     0x7c77c4: mov             SP, fp
    //     0x7c77c8: ldp             fp, lr, [SP], #0x10
    // 0x7c77cc: ret
    //     0x7c77cc: ret             
    // 0x7c77d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c77d0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c77d4: b               #0x7c7774
  }
}

// lib: , url: dAi

// class id: 1048768, size: 0x8
class :: {
}

// class id: 2783, size: 0x10, field offset: 0x8
abstract class Pu extends Object {

  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x77ac68, size: 0xb8
    // 0x77ac68: EnterFrame
    //     0x77ac68: stp             fp, lr, [SP, #-0x10]!
    //     0x77ac6c: mov             fp, SP
    // 0x77ac70: AllocStack(0x60)
    //     0x77ac70: sub             SP, SP, #0x60
    // 0x77ac74: SetupParameters([dynamic _ /* r0 */])
    //     0x77ac74: ldr             x0, [fp, #0x10]
    //     0x77ac78: ldur            w2, [x0, #0x17]
    //     0x77ac7c: add             x2, x2, HEAP, lsl #32
    //     0x77ac80: stur            x2, [fp, #-0x58]
    // 0x77ac84: CheckStackOverflow
    //     0x77ac84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x77ac88: cmp             SP, x16
    //     0x77ac8c: b.ls            #0x77ad18
    // 0x77ac90: LoadField: r1 = r2->field_f
    //     0x77ac90: ldur            w1, [x2, #0xf]
    // 0x77ac94: DecompressPointer r1
    //     0x77ac94: add             x1, x1, HEAP, lsl #32
    // 0x77ac98: LoadField: r0 = r1->field_7
    //     0x77ac98: ldur            x0, [x1, #7]
    // 0x77ac9c: sub             x3, x0, #1
    // 0x77aca0: StoreField: r1->field_7 = r3
    //     0x77aca0: stur            x3, [x1, #7]
    // 0x77aca4: cmp             x3, #0
    // 0x77aca8: b.gt            #0x77ad08
    // 0x77acac: r0 = call 0x3e99f4
    //     0x77acac: bl              #0x3e99f4
    // 0x77acb0: b               #0x77ad08
    // 0x77acb4: sub             SP, fp, #0x60
    // 0x77acb8: mov             x2, x0
    // 0x77acbc: stur            x0, [fp, #-0x58]
    // 0x77acc0: mov             x0, x1
    // 0x77acc4: stur            x1, [fp, #-0x60]
    // 0x77acc8: r1 = <List<Object>>
    //     0x77acc8: ldr             x1, [PP, #0x130]  ; [pp+0x130] TypeArguments: <List<Object>>
    // 0x77accc: r0 = OO()
    //     0x77accc: bl              #0x74be98  ; AllocateOOStub -> OO (size=0x2c)
    // 0x77acd0: mov             x1, x0
    // 0x77acd4: r2 = "while handling pending events"
    //     0x77acd4: add             x2, PP, #8, lsl #12  ; [pp+0x8820] "while handling pending events"
    //     0x77acd8: ldr             x2, [x2, #0x820]
    // 0x77acdc: r3 = Instance_GO
    //     0x77acdc: ldr             x3, [PP, #0x140]  ; [pp+0x140] Obj!GO@453511
    // 0x77ace0: r0 = call 0x24e36c
    //     0x77ace0: bl              #0x24e36c
    // 0x77ace4: r0 = SO()
    //     0x77ace4: bl              #0x74f350  ; AllocateSOStub -> SO (size=0x14)
    // 0x77ace8: mov             x1, x0
    // 0x77acec: ldur            x0, [fp, #-0x58]
    // 0x77acf0: StoreField: r1->field_7 = r0
    //     0x77acf0: stur            w0, [x1, #7]
    // 0x77acf4: ldur            x0, [fp, #-0x60]
    // 0x77acf8: StoreField: r1->field_b = r0
    //     0x77acf8: stur            w0, [x1, #0xb]
    // 0x77acfc: r0 = false
    //     0x77acfc: add             x0, NULL, #0x30  ; false
    // 0x77ad00: StoreField: r1->field_f = r0
    //     0x77ad00: stur            w0, [x1, #0xf]
    // 0x77ad04: r0 = call 0x262b70
    //     0x77ad04: bl              #0x262b70
    // 0x77ad08: r0 = Null
    //     0x77ad08: mov             x0, NULL
    // 0x77ad0c: LeaveFrame
    //     0x77ad0c: mov             SP, fp
    //     0x77ad10: ldp             fp, lr, [SP], #0x10
    // 0x77ad14: ret
    //     0x77ad14: ret             
    // 0x77ad18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x77ad18: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x77ad1c: b               #0x77ac90
  }
}

// lib: , url: Ovi

// class id: 1049581, size: 0x8
class :: {

  [closure] static Future<int> <anonymous closure>(dynamic, jTa?) async {
    // ** addr: 0x7905c4, size: 0x10c
    // 0x7905c4: EnterFrame
    //     0x7905c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7905c8: mov             fp, SP
    // 0x7905cc: AllocStack(0x40)
    //     0x7905cc: sub             SP, SP, #0x40
    // 0x7905d0: SetupParameters(dynamic _ /* r1 */)
    //     0x7905d0: stur            NULL, [fp, #-8]
    //     0x7905d4: movz            x0, #0
    //     0x7905d8: add             x1, fp, w0, sxtw #2
    //     0x7905dc: ldr             x1, [x1, #0x18]
    //     0x7905e0: ldur            w2, [x1, #0x17]
    //     0x7905e4: add             x2, x2, HEAP, lsl #32
    //     0x7905e8: stur            x2, [fp, #-0x10]
    // 0x7905ec: CheckStackOverflow
    //     0x7905ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7905f0: cmp             SP, x16
    //     0x7905f4: b.ls            #0x7906c8
    // 0x7905f8: InitAsync() -> Future<int>
    //     0x7905f8: ldr             x0, [PP, #0x8b8]  ; [pp+0x8b8] TypeArguments: <int>
    //     0x7905fc: bl              #0x74ada8  ; InitAsyncStub
    // 0x790600: ldur            x0, [fp, #-0x10]
    // 0x790604: LoadField: r3 = r0->field_f
    //     0x790604: ldur            w3, [x0, #0xf]
    // 0x790608: DecompressPointer r3
    //     0x790608: add             x3, x3, HEAP, lsl #32
    // 0x79060c: stur            x3, [fp, #-0x18]
    // 0x790610: r1 = Null
    //     0x790610: mov             x1, NULL
    // 0x790614: r2 = 8
    //     0x790614: movz            x2, #0x8
    // 0x790618: r0 = AllocateArray()
    //     0x790618: bl              #0x7de31c  ; AllocateArrayStub
    // 0x79061c: r16 = "sql"
    //     0x79061c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15058] "sql"
    //     0x790620: ldr             x16, [x16, #0x58]
    // 0x790624: StoreField: r0->field_f = r16
    //     0x790624: stur            w16, [x0, #0xf]
    // 0x790628: ldur            x1, [fp, #-0x10]
    // 0x79062c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x79062c: ldur            w2, [x1, #0x17]
    // 0x790630: DecompressPointer r2
    //     0x790630: add             x2, x2, HEAP, lsl #32
    // 0x790634: StoreField: r0->field_13 = r2
    //     0x790634: stur            w2, [x0, #0x13]
    // 0x790638: r16 = "arguments"
    //     0x790638: add             x16, PP, #0x15, lsl #12  ; [pp+0x15060] "arguments"
    //     0x79063c: ldr             x16, [x16, #0x60]
    // 0x790640: ArrayStore: r0[0] = r16  ; List_4
    //     0x790640: stur            w16, [x0, #0x17]
    // 0x790644: LoadField: r2 = r1->field_1b
    //     0x790644: ldur            w2, [x1, #0x1b]
    // 0x790648: DecompressPointer r2
    //     0x790648: add             x2, x2, HEAP, lsl #32
    // 0x79064c: StoreField: r0->field_1b = r2
    //     0x79064c: stur            w2, [x0, #0x1b]
    // 0x790650: r16 = <String, Object?>
    //     0x790650: add             x16, PP, #9, lsl #12  ; [pp+0x9188] TypeArguments: <String, Object?>
    //     0x790654: ldr             x16, [x16, #0x188]
    // 0x790658: stp             x0, x16, [SP]
    // 0x79065c: r0 = Map._fromLiteral()
    //     0x79065c: bl              #0x228bf4  ; [dart:core] Map::Map._fromLiteral
    // 0x790660: mov             x3, x0
    // 0x790664: ldur            x0, [fp, #-0x10]
    // 0x790668: stur            x3, [fp, #-0x20]
    // 0x79066c: LoadField: r2 = r0->field_13
    //     0x79066c: ldur            w2, [x0, #0x13]
    // 0x790670: DecompressPointer r2
    //     0x790670: add             x2, x2, HEAP, lsl #32
    // 0x790674: ldur            x1, [fp, #-0x18]
    // 0x790678: r0 = call 0x465dd8
    //     0x790678: bl              #0x465dd8
    // 0x79067c: ldur            x1, [fp, #-0x20]
    // 0x790680: mov             x2, x0
    // 0x790684: r0 = call 0x73039c
    //     0x790684: bl              #0x73039c
    // 0x790688: r16 = <int?>
    //     0x790688: ldr             x16, [PP, #0x12b8]  ; [pp+0x12b8] TypeArguments: <int?>
    // 0x79068c: ldur            lr, [fp, #-0x18]
    // 0x790690: stp             lr, x16, [SP, #0x10]
    // 0x790694: r16 = "update"
    //     0x790694: add             x16, PP, #0x15, lsl #12  ; [pp+0x154c0] "update"
    //     0x790698: ldr             x16, [x16, #0x4c0]
    // 0x79069c: ldur            lr, [fp, #-0x20]
    // 0x7906a0: stp             lr, x16, [SP]
    // 0x7906a4: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x7906a4: ldr             x4, [PP, #0x1160]  ; [pp+0x1160] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x7906a8: r0 = call 0x465b30
    //     0x7906a8: bl              #0x465b30
    // 0x7906ac: mov             x1, x0
    // 0x7906b0: stur            x1, [fp, #-0x18]
    // 0x7906b4: r0 = Await()
    //     0x7906b4: bl              #0x74ab64  ; AwaitStub
    // 0x7906b8: cmp             w0, NULL
    // 0x7906bc: b.ne            #0x7906c4
    // 0x7906c0: r0 = 0
    //     0x7906c0: movz            x0, #0
    // 0x7906c4: r0 = ReturnAsync()
    //     0x7906c4: b               #0x74ce60  ; ReturnAsyncStub
    // 0x7906c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7906c8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7906cc: b               #0x7905f8
  }
}

// class id: 2496, size: 0x8, field offset: 0x8
abstract class FB extends Object
    implements wTa {
}

// class id: 2497, size: 0x8, field offset: 0x8
abstract class DB extends Object
    implements yTa {
}

// class id: 2498, size: 0x8, field offset: 0x8
abstract class BB extends Object
    implements yTa {
}

// class id: 2502, size: 0x30, field offset: 0x30
class zTa extends _EB {
}

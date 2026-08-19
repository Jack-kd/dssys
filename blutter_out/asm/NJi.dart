// lib: , url: NJi

// class id: 1049378, size: 0x8
class :: {
}

// class id: 772, size: 0x1c, field offset: 0x8
class TKa extends Object {

  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e401c, size: 0x5ec
    // 0x7e401c: EnterFrame
    //     0x7e401c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e4020: mov             fp, SP
    // 0x7e4024: AllocStack(0xb0)
    //     0x7e4024: sub             SP, SP, #0xb0
    // 0x7e4028: SetupParameters(TKa this /* r1 */)
    //     0x7e4028: stur            NULL, [fp, #-8]
    //     0x7e402c: movz            x0, #0
    //     0x7e4030: add             x1, fp, w0, sxtw #2
    //     0x7e4034: ldr             x1, [x1, #0x10]
    //     0x7e4038: ldur            w2, [x1, #0x17]
    //     0x7e403c: add             x2, x2, HEAP, lsl #32
    //     0x7e4040: stur            x2, [fp, #-0x68]
    // 0x7e4044: CheckStackOverflow
    //     0x7e4044: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e4048: cmp             SP, x16
    //     0x7e404c: b.ls            #0x7e45fc
    // 0x7e4050: InitAsync() -> Future<Null?>
    //     0x7e4050: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7e4054: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e4058: r1 = 4
    //     0x7e4058: movz            x1, #0x4
    // 0x7e405c: r0 = AllocateContext()
    //     0x7e405c: bl              #0x7dd22c  ; AllocateContextStub
    // 0x7e4060: mov             x2, x0
    // 0x7e4064: ldur            x0, [fp, #-0x68]
    // 0x7e4068: stur            x2, [fp, #-0x70]
    // 0x7e406c: StoreField: r2->field_b = r0
    //     0x7e406c: stur            w0, [x2, #0xb]
    // 0x7e4070: r1 = Null
    //     0x7e4070: mov             x1, NULL
    // 0x7e4074: r0 = _Future()
    //     0x7e4074: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x7e4078: stur            x0, [fp, #-0x78]
    // 0x7e407c: StoreField: r0->field_b = rZR
    //     0x7e407c: stur            xzr, [x0, #0xb]
    // 0x7e4080: r0 = LoadStaticField(0x3a8)
    //     0x7e4080: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e4084: ldr             x0, [x0, #0x750]
    // 0x7e4088: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e408c: cmp             w0, w16
    // 0x7e4090: b.ne            #0x7e409c
    // 0x7e4094: r2 = _current
    //     0x7e4094: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x7e4098: r0 = InitLateStaticField()
    //     0x7e4098: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e409c: mov             x1, x0
    // 0x7e40a0: ldur            x0, [fp, #-0x78]
    // 0x7e40a4: StoreField: r0->field_13 = r1
    //     0x7e40a4: stur            w1, [x0, #0x13]
    // 0x7e40a8: r1 = Null
    //     0x7e40a8: mov             x1, NULL
    // 0x7e40ac: r0 = _AsyncCompleter()
    //     0x7e40ac: bl              #0x74ad2c  ; Allocate_AsyncCompleterStub -> _AsyncCompleter<X0> (size=0x10)
    // 0x7e40b0: mov             x1, x0
    // 0x7e40b4: ldur            x0, [fp, #-0x78]
    // 0x7e40b8: StoreField: r1->field_b = r0
    //     0x7e40b8: stur            w0, [x1, #0xb]
    // 0x7e40bc: ldur            x3, [fp, #-0x70]
    // 0x7e40c0: StoreField: r3->field_f = r1
    //     0x7e40c0: stur            w1, [x3, #0xf]
    // 0x7e40c4: r1 = LoadStaticField(0x4c8)
    //     0x7e40c4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7e40c8: ldr             x1, [x1, #0x990]
    // 0x7e40cc: cmp             w1, NULL
    // 0x7e40d0: b.eq            #0x7e4604
    // 0x7e40d4: LoadField: r4 = r1->field_53
    //     0x7e40d4: ldur            w4, [x1, #0x53]
    // 0x7e40d8: DecompressPointer r4
    //     0x7e40d8: add             x4, x4, HEAP, lsl #32
    // 0x7e40dc: stur            x4, [fp, #-0x88]
    // 0x7e40e0: LoadField: r5 = r4->field_7
    //     0x7e40e0: ldur            w5, [x4, #7]
    // 0x7e40e4: DecompressPointer r5
    //     0x7e40e4: add             x5, x5, HEAP, lsl #32
    // 0x7e40e8: mov             x2, x3
    // 0x7e40ec: stur            x5, [fp, #-0x80]
    // 0x7e40f0: r1 = Function '<anonymous closure>':.
    //     0x7e40f0: ldr             x1, [PP, #0x6aa8]  ; [pp+0x6aa8] AnonymousClosure: (0x73efd4), in [NJi] TKa::<anonymous closure> (0x7e401c)
    // 0x7e40f4: r0 = AllocateClosure()
    //     0x7e40f4: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e40f8: ldur            x2, [fp, #-0x80]
    // 0x7e40fc: mov             x3, x0
    // 0x7e4100: r1 = Null
    //     0x7e4100: mov             x1, NULL
    // 0x7e4104: stur            x3, [fp, #-0x80]
    // 0x7e4108: cmp             w2, NULL
    // 0x7e410c: b.eq            #0x7e4128
    // 0x7e4110: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x7e4110: ldur            w4, [x2, #0x17]
    // 0x7e4114: DecompressPointer r4
    //     0x7e4114: add             x4, x4, HEAP, lsl #32
    // 0x7e4118: r8 = X0
    //     0x7e4118: ldr             x8, [PP, #0x200]  ; [pp+0x200] TypeParameter: X0
    // 0x7e411c: LoadField: r9 = r4->field_7
    //     0x7e411c: ldur            x9, [x4, #7]
    // 0x7e4120: r3 = Null
    //     0x7e4120: ldr             x3, [PP, #0x6ab0]  ; [pp+0x6ab0] Null
    // 0x7e4124: blr             x9
    // 0x7e4128: ldur            x0, [fp, #-0x88]
    // 0x7e412c: LoadField: r1 = r0->field_b
    //     0x7e412c: ldur            w1, [x0, #0xb]
    // 0x7e4130: LoadField: r2 = r0->field_f
    //     0x7e4130: ldur            w2, [x0, #0xf]
    // 0x7e4134: DecompressPointer r2
    //     0x7e4134: add             x2, x2, HEAP, lsl #32
    // 0x7e4138: LoadField: r3 = r2->field_b
    //     0x7e4138: ldur            w3, [x2, #0xb]
    // 0x7e413c: r2 = LoadInt32Instr(r1)
    //     0x7e413c: sbfx            x2, x1, #1, #0x1f
    // 0x7e4140: stur            x2, [fp, #-0x90]
    // 0x7e4144: r1 = LoadInt32Instr(r3)
    //     0x7e4144: sbfx            x1, x3, #1, #0x1f
    // 0x7e4148: cmp             x2, x1
    // 0x7e414c: b.ne            #0x7e4158
    // 0x7e4150: mov             x1, x0
    // 0x7e4154: r0 = call 0x2271b8
    //     0x7e4154: bl              #0x2271b8
    // 0x7e4158: ldur            x0, [fp, #-0x88]
    // 0x7e415c: ldur            x2, [fp, #-0x90]
    // 0x7e4160: add             x1, x2, #1
    // 0x7e4164: lsl             x3, x1, #1
    // 0x7e4168: StoreField: r0->field_b = r3
    //     0x7e4168: stur            w3, [x0, #0xb]
    // 0x7e416c: LoadField: r1 = r0->field_f
    //     0x7e416c: ldur            w1, [x0, #0xf]
    // 0x7e4170: DecompressPointer r1
    //     0x7e4170: add             x1, x1, HEAP, lsl #32
    // 0x7e4174: ldur            x0, [fp, #-0x80]
    // 0x7e4178: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7e4178: add             x25, x1, x2, lsl #2
    //     0x7e417c: add             x25, x25, #0xf
    //     0x7e4180: str             w0, [x25]
    //     0x7e4184: tbz             w0, #0, #0x7e41a0
    //     0x7e4188: ldurb           w16, [x1, #-1]
    //     0x7e418c: ldurb           w17, [x0, #-1]
    //     0x7e4190: and             x16, x17, x16, lsr #2
    //     0x7e4194: tst             x16, HEAP, lsr #32
    //     0x7e4198: b.eq            #0x7e41a0
    //     0x7e419c: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e41a0: ldur            x0, [fp, #-0x78]
    // 0x7e41a4: r0 = Await()
    //     0x7e41a4: bl              #0x74ab64  ; AwaitStub
    // 0x7e41a8: ldur            x0, [fp, #-0x68]
    // 0x7e41ac: LoadField: r1 = r0->field_f
    //     0x7e41ac: ldur            w1, [x0, #0xf]
    // 0x7e41b0: DecompressPointer r1
    //     0x7e41b0: add             x1, x1, HEAP, lsl #32
    // 0x7e41b4: LoadField: r2 = r1->field_7
    //     0x7e41b4: ldur            w2, [x1, #7]
    // 0x7e41b8: DecompressPointer r2
    //     0x7e41b8: add             x2, x2, HEAP, lsl #32
    // 0x7e41bc: mov             x1, x2
    // 0x7e41c0: r2 = Instance_SKa
    //     0x7e41c0: ldr             x2, [PP, #0x6ac0]  ; [pp+0x6ac0] Obj!SKa@440931
    // 0x7e41c4: r0 = __unknown_function__()
    //     0x7e41c4: bl              #0x7e4608  ; [] ::__unknown_function__
    // 0x7e41c8: mov             x1, x0
    // 0x7e41cc: stur            x1, [fp, #-0x78]
    // 0x7e41d0: r0 = Await()
    //     0x7e41d0: bl              #0x74ab64  ; AwaitStub
    // 0x7e41d4: mov             x2, x0
    // 0x7e41d8: ldur            x0, [fp, #-0x68]
    // 0x7e41dc: stur            x2, [fp, #-0x78]
    // 0x7e41e0: LoadField: r1 = r0->field_f
    //     0x7e41e0: ldur            w1, [x0, #0xf]
    // 0x7e41e4: DecompressPointer r1
    //     0x7e41e4: add             x1, x1, HEAP, lsl #32
    // 0x7e41e8: LoadField: r3 = r1->field_b
    //     0x7e41e8: ldur            w3, [x1, #0xb]
    // 0x7e41ec: DecompressPointer r3
    //     0x7e41ec: add             x3, x3, HEAP, lsl #32
    // 0x7e41f0: str             x2, [SP]
    // 0x7e41f4: mov             x1, x3
    // 0x7e41f8: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e41f8: ldr             x4, [PP, #0x128]  ; [pp+0x128] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e41fc: r0 = call 0x5ee7a4
    //     0x7e41fc: bl              #0x5ee7a4
    // 0x7e4200: ldur            x0, [fp, #-0x68]
    // 0x7e4204: LoadField: r1 = r0->field_f
    //     0x7e4204: ldur            w1, [x0, #0xf]
    // 0x7e4208: DecompressPointer r1
    //     0x7e4208: add             x1, x1, HEAP, lsl #32
    // 0x7e420c: LoadField: r2 = r1->field_f
    //     0x7e420c: ldur            w2, [x1, #0xf]
    // 0x7e4210: DecompressPointer r2
    //     0x7e4210: add             x2, x2, HEAP, lsl #32
    // 0x7e4214: mov             x1, x2
    // 0x7e4218: ldur            x2, [fp, #-0x78]
    // 0x7e421c: r0 = call 0x2545cc
    //     0x7e421c: bl              #0x2545cc
    // 0x7e4220: ldur            x1, [fp, #-0x68]
    // 0x7e4224: LoadField: r0 = r1->field_f
    //     0x7e4224: ldur            w0, [x1, #0xf]
    // 0x7e4228: DecompressPointer r0
    //     0x7e4228: add             x0, x0, HEAP, lsl #32
    // 0x7e422c: LoadField: r2 = r0->field_b
    //     0x7e422c: ldur            w2, [x0, #0xb]
    // 0x7e4230: DecompressPointer r2
    //     0x7e4230: add             x2, x2, HEAP, lsl #32
    // 0x7e4234: stur            x2, [fp, #-0xa8]
    // 0x7e4238: LoadField: r3 = r2->field_b
    //     0x7e4238: ldur            w3, [x2, #0xb]
    // 0x7e423c: DecompressPointer r3
    //     0x7e423c: add             x3, x3, HEAP, lsl #32
    // 0x7e4240: stur            x3, [fp, #-0x78]
    // 0x7e4244: LoadField: r0 = r3->field_b
    //     0x7e4244: ldur            x0, [x3, #0xb]
    // 0x7e4248: tst             x0, #0x1e
    // 0x7e424c: b.eq            #0x7e4484
    // 0x7e4250: ldur            x2, [fp, #-0x70]
    // 0x7e4254: mov             x0, x3
    // 0x7e4258: r0 = Await()
    //     0x7e4258: bl              #0x74ab64  ; AwaitStub
    // 0x7e425c: mov             x4, x0
    // 0x7e4260: ldur            x3, [fp, #-0x70]
    // 0x7e4264: stur            x4, [fp, #-0x78]
    // 0x7e4268: StoreField: r3->field_13 = r0
    //     0x7e4268: stur            w0, [x3, #0x13]
    //     0x7e426c: tbz             w0, #0, #0x7e4288
    //     0x7e4270: ldurb           w16, [x3, #-1]
    //     0x7e4274: ldurb           w17, [x0, #-1]
    //     0x7e4278: and             x16, x17, x16, lsr #2
    //     0x7e427c: tst             x16, HEAP, lsr #32
    //     0x7e4280: b.eq            #0x7e4288
    //     0x7e4284: bl              #0x7dc9c8  ; WriteBarrierWrappersStub
    // 0x7e4288: mov             x2, x3
    // 0x7e428c: r1 = Function 'nMg':.
    //     0x7e428c: ldr             x1, [PP, #0x6ac8]  ; [pp+0x6ac8] AnonymousClosure: (0x73ef58), in [NJi] TKa::<anonymous closure> (0x7e401c)
    // 0x7e4290: r0 = AllocateClosure()
    //     0x7e4290: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e4294: mov             x4, x0
    // 0x7e4298: ldur            x3, [fp, #-0x70]
    // 0x7e429c: stur            x4, [fp, #-0x80]
    // 0x7e42a0: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e42a0: stur            w0, [x3, #0x17]
    //     0x7e42a4: ldurb           w16, [x3, #-1]
    //     0x7e42a8: ldurb           w17, [x0, #-1]
    //     0x7e42ac: and             x16, x17, x16, lsr #2
    //     0x7e42b0: tst             x16, HEAP, lsr #32
    //     0x7e42b4: b.eq            #0x7e42bc
    //     0x7e42b8: bl              #0x7dc9c8  ; WriteBarrierWrappersStub
    // 0x7e42bc: mov             x2, x3
    // 0x7e42c0: r1 = Function 'oMg':.
    //     0x7e42c0: ldr             x1, [PP, #0x6ad0]  ; [pp+0x6ad0] AnonymousClosure: (0x73eedc), in [NJi] TKa::<anonymous closure> (0x7e401c)
    // 0x7e42c4: r0 = AllocateClosure()
    //     0x7e42c4: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e42c8: mov             x4, x0
    // 0x7e42cc: ldur            x3, [fp, #-0x70]
    // 0x7e42d0: stur            x4, [fp, #-0xa0]
    // 0x7e42d4: StoreField: r3->field_1b = r0
    //     0x7e42d4: stur            w0, [x3, #0x1b]
    //     0x7e42d8: ldurb           w16, [x3, #-1]
    //     0x7e42dc: ldurb           w17, [x0, #-1]
    //     0x7e42e0: and             x16, x17, x16, lsr #2
    //     0x7e42e4: tst             x16, HEAP, lsr #32
    //     0x7e42e8: b.eq            #0x7e42f0
    //     0x7e42ec: bl              #0x7dc9c8  ; WriteBarrierWrappersStub
    // 0x7e42f0: ldur            x0, [fp, #-0x68]
    // 0x7e42f4: LoadField: r1 = r0->field_f
    //     0x7e42f4: ldur            w1, [x0, #0xf]
    // 0x7e42f8: DecompressPointer r1
    //     0x7e42f8: add             x1, x1, HEAP, lsl #32
    // 0x7e42fc: LoadField: r2 = r1->field_13
    //     0x7e42fc: ldur            w2, [x1, #0x13]
    // 0x7e4300: DecompressPointer r2
    //     0x7e4300: add             x2, x2, HEAP, lsl #32
    // 0x7e4304: ldur            x5, [fp, #-0x78]
    // 0x7e4308: LoadField: r6 = r5->field_f
    //     0x7e4308: ldur            w6, [x5, #0xf]
    // 0x7e430c: DecompressPointer r6
    //     0x7e430c: add             x6, x6, HEAP, lsl #32
    // 0x7e4310: stur            x6, [fp, #-0x98]
    // 0x7e4314: LoadField: r7 = r6->field_27
    //     0x7e4314: ldur            w7, [x6, #0x27]
    // 0x7e4318: DecompressPointer r7
    //     0x7e4318: add             x7, x7, HEAP, lsl #32
    // 0x7e431c: mov             x1, x2
    // 0x7e4320: mov             x2, x7
    // 0x7e4324: stur            x7, [fp, #-0x88]
    // 0x7e4328: r0 = call 0x2545cc
    //     0x7e4328: bl              #0x2545cc
    // 0x7e432c: ldur            x0, [fp, #-0x68]
    // 0x7e4330: LoadField: r1 = r0->field_f
    //     0x7e4330: ldur            w1, [x0, #0xf]
    // 0x7e4334: DecompressPointer r1
    //     0x7e4334: add             x1, x1, HEAP, lsl #32
    // 0x7e4338: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7e4338: ldur            w2, [x1, #0x17]
    // 0x7e433c: DecompressPointer r2
    //     0x7e433c: add             x2, x2, HEAP, lsl #32
    // 0x7e4340: ldur            x1, [fp, #-0x78]
    // 0x7e4344: LoadField: r3 = r1->field_13
    //     0x7e4344: ldur            w3, [x1, #0x13]
    // 0x7e4348: DecompressPointer r3
    //     0x7e4348: add             x3, x3, HEAP, lsl #32
    // 0x7e434c: stur            x3, [fp, #-0x88]
    // 0x7e4350: LoadField: r4 = r3->field_27
    //     0x7e4350: ldur            w4, [x3, #0x27]
    // 0x7e4354: DecompressPointer r4
    //     0x7e4354: add             x4, x4, HEAP, lsl #32
    // 0x7e4358: mov             x1, x2
    // 0x7e435c: mov             x2, x4
    // 0x7e4360: stur            x4, [fp, #-0x78]
    // 0x7e4364: r0 = call 0x2545cc
    //     0x7e4364: bl              #0x2545cc
    // 0x7e4368: ldur            x1, [fp, #-0x98]
    // 0x7e436c: ldur            x2, [fp, #-0x80]
    // 0x7e4370: r0 = call 0x5dd5b4
    //     0x7e4370: bl              #0x5dd5b4
    // 0x7e4374: ldur            x1, [fp, #-0x88]
    // 0x7e4378: ldur            x2, [fp, #-0xa0]
    // 0x7e437c: r0 = call 0x5dd5b4
    //     0x7e437c: bl              #0x5dd5b4
    // 0x7e4380: ldur            x0, [fp, #-0x68]
    // 0x7e4384: LoadField: r1 = r0->field_f
    //     0x7e4384: ldur            w1, [x0, #0xf]
    // 0x7e4388: DecompressPointer r1
    //     0x7e4388: add             x1, x1, HEAP, lsl #32
    // 0x7e438c: LoadField: r2 = r1->field_7
    //     0x7e438c: ldur            w2, [x1, #7]
    // 0x7e4390: DecompressPointer r2
    //     0x7e4390: add             x2, x2, HEAP, lsl #32
    // 0x7e4394: LoadField: r3 = r2->field_7
    //     0x7e4394: ldur            w3, [x2, #7]
    // 0x7e4398: DecompressPointer r3
    //     0x7e4398: add             x3, x3, HEAP, lsl #32
    // 0x7e439c: stur            x3, [fp, #-0x80]
    // 0x7e43a0: cmp             w3, NULL
    // 0x7e43a4: b.eq            #0x7e4574
    // 0x7e43a8: LoadField: r4 = r3->field_83
    //     0x7e43a8: ldur            w4, [x3, #0x83]
    // 0x7e43ac: DecompressPointer r4
    //     0x7e43ac: add             x4, x4, HEAP, lsl #32
    // 0x7e43b0: ldur            x2, [fp, #-0x70]
    // 0x7e43b4: stur            x4, [fp, #-0x78]
    // 0x7e43b8: r1 = Function '<anonymous closure>':.
    //     0x7e43b8: ldr             x1, [PP, #0x6ad8]  ; [pp+0x6ad8] AnonymousClosure: (0x7e6174), in [NJi] TKa::<anonymous closure> (0x7e401c)
    // 0x7e43bc: r0 = AllocateClosure()
    //     0x7e43bc: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e43c0: mov             x4, x0
    // 0x7e43c4: ldur            x3, [fp, #-0x78]
    // 0x7e43c8: stur            x4, [fp, #-0x98]
    // 0x7e43cc: LoadField: r5 = r3->field_7
    //     0x7e43cc: ldur            w5, [x3, #7]
    // 0x7e43d0: DecompressPointer r5
    //     0x7e43d0: add             x5, x5, HEAP, lsl #32
    // 0x7e43d4: mov             x0, x4
    // 0x7e43d8: mov             x2, x5
    // 0x7e43dc: stur            x5, [fp, #-0x88]
    // 0x7e43e0: r1 = Null
    //     0x7e43e0: mov             x1, NULL
    // 0x7e43e4: cmp             w2, NULL
    // 0x7e43e8: b.eq            #0x7e4404
    // 0x7e43ec: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x7e43ec: ldur            w4, [x2, #0x17]
    // 0x7e43f0: DecompressPointer r4
    //     0x7e43f0: add             x4, x4, HEAP, lsl #32
    // 0x7e43f4: r8 = X0
    //     0x7e43f4: ldr             x8, [PP, #0x200]  ; [pp+0x200] TypeParameter: X0
    // 0x7e43f8: LoadField: r9 = r4->field_7
    //     0x7e43f8: ldur            x9, [x4, #7]
    // 0x7e43fc: r3 = Null
    //     0x7e43fc: ldr             x3, [PP, #0x6ae0]  ; [pp+0x6ae0] Null
    // 0x7e4400: blr             x9
    // 0x7e4404: ldur            x0, [fp, #-0x78]
    // 0x7e4408: LoadField: r2 = r0->field_b
    //     0x7e4408: ldur            w2, [x0, #0xb]
    // 0x7e440c: stur            x2, [fp, #-0x88]
    // 0x7e4410: LoadField: r1 = r0->field_f
    //     0x7e4410: ldur            w1, [x0, #0xf]
    // 0x7e4414: DecompressPointer r1
    //     0x7e4414: add             x1, x1, HEAP, lsl #32
    // 0x7e4418: LoadField: r3 = r1->field_b
    //     0x7e4418: ldur            w3, [x1, #0xb]
    // 0x7e441c: r4 = LoadInt32Instr(r2)
    //     0x7e441c: sbfx            x4, x2, #1, #0x1f
    // 0x7e4420: stur            x4, [fp, #-0x90]
    // 0x7e4424: r1 = LoadInt32Instr(r3)
    //     0x7e4424: sbfx            x1, x3, #1, #0x1f
    // 0x7e4428: cmp             x4, x1
    // 0x7e442c: b.ne            #0x7e4438
    // 0x7e4430: mov             x1, x0
    // 0x7e4434: r0 = call 0x2271b8
    //     0x7e4434: bl              #0x2271b8
    // 0x7e4438: ldur            x0, [fp, #-0x78]
    // 0x7e443c: ldur            x2, [fp, #-0x90]
    // 0x7e4440: add             x1, x2, #1
    // 0x7e4444: lsl             x3, x1, #1
    // 0x7e4448: StoreField: r0->field_b = r3
    //     0x7e4448: stur            w3, [x0, #0xb]
    // 0x7e444c: LoadField: r1 = r0->field_f
    //     0x7e444c: ldur            w1, [x0, #0xf]
    // 0x7e4450: DecompressPointer r1
    //     0x7e4450: add             x1, x1, HEAP, lsl #32
    // 0x7e4454: ldur            x0, [fp, #-0x98]
    // 0x7e4458: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7e4458: add             x25, x1, x2, lsl #2
    //     0x7e445c: add             x25, x25, #0xf
    //     0x7e4460: str             w0, [x25]
    //     0x7e4464: tbz             w0, #0, #0x7e4480
    //     0x7e4468: ldurb           w16, [x1, #-1]
    //     0x7e446c: ldurb           w17, [x0, #-1]
    //     0x7e4470: and             x16, x17, x16, lsr #2
    //     0x7e4474: tst             x16, HEAP, lsr #32
    //     0x7e4478: b.eq            #0x7e4480
    //     0x7e447c: bl              #0x7dc544  ; ArrayWriteBarrierStub
    // 0x7e4480: b               #0x7e4574
    // 0x7e4484: r0 = qa()
    //     0x7e4484: bl              #0x74ce54  ; AllocateqaStub -> qa (size=0x10)
    // 0x7e4488: mov             x1, x0
    // 0x7e448c: r0 = "[VideoController] is unavailable for this platform."
    //     0x7e448c: ldr             x0, [PP, #0x6af0]  ; [pp+0x6af0] "[VideoController] is unavailable for this platform."
    // 0x7e4490: StoreField: r1->field_b = r0
    //     0x7e4490: stur            w0, [x1, #0xb]
    // 0x7e4494: mov             x2, x1
    // 0x7e4498: ldur            x1, [fp, #-0xa8]
    // 0x7e449c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e449c: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e44a0: r0 = call 0x24313c
    //     0x7e44a0: bl              #0x24313c
    // 0x7e44a4: b               #0x7e4574
    // 0x7e44a8: sub             SP, fp, #0xb0
    // 0x7e44ac: ldur            x3, [fp, #-0x68]
    // 0x7e44b0: mov             x4, x0
    // 0x7e44b4: stur            x0, [fp, #-0x70]
    // 0x7e44b8: mov             x0, x1
    // 0x7e44bc: stur            x1, [fp, #-0x78]
    // 0x7e44c0: LoadField: r1 = r3->field_f
    //     0x7e44c0: ldur            w1, [x3, #0xf]
    // 0x7e44c4: DecompressPointer r1
    //     0x7e44c4: add             x1, x1, HEAP, lsl #32
    // 0x7e44c8: LoadField: r2 = r1->field_b
    //     0x7e44c8: ldur            w2, [x1, #0xb]
    // 0x7e44cc: DecompressPointer r2
    //     0x7e44cc: add             x2, x2, HEAP, lsl #32
    // 0x7e44d0: mov             x1, x2
    // 0x7e44d4: mov             x2, x4
    // 0x7e44d8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e44d8: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e44dc: r0 = call 0x24313c
    //     0x7e44dc: bl              #0x24313c
    // 0x7e44e0: r0 = LoadStaticField(0x794)
    //     0x7e44e0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e44e4: ldr             x0, [x0, #0xf28]
    // 0x7e44e8: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e44ec: cmp             w0, w16
    // 0x7e44f0: b.ne            #0x7e44fc
    // 0x7e44f4: r2 = aVd
    //     0x7e44f4: ldr             x2, [PP, #0x168]  ; [pp+0x168] Field <::.aVd>: static late (offset: 0x794)
    // 0x7e44f8: r0 = InitLateStaticField()
    //     0x7e44f8: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e44fc: ldur            x0, [fp, #-0x70]
    // 0x7e4500: r1 = 60
    //     0x7e4500: movz            x1, #0x3c
    // 0x7e4504: branchIfSmi(r0, 0x7e4510)
    //     0x7e4504: tbz             w0, #0, #0x7e4510
    // 0x7e4508: r1 = LoadClassIdInstr(r0)
    //     0x7e4508: ldur            x1, [x0, #-1]
    //     0x7e450c: ubfx            x1, x1, #0xc, #0x14
    // 0x7e4510: str             x0, [SP]
    // 0x7e4514: mov             x0, x1
    // 0x7e4518: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e4518: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e451c: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e451c: movz            x17, #0x3a5d
    //     0x7e4520: add             lr, x0, x17
    //     0x7e4524: ldr             lr, [x21, lr, lsl #3]
    //     0x7e4528: blr             lr
    // 0x7e452c: str             NULL, [SP]
    // 0x7e4530: mov             x1, x0
    // 0x7e4534: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e4534: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e4538: r0 = call 0x254858
    //     0x7e4538: bl              #0x254858
    // 0x7e453c: ldur            x0, [fp, #-0x78]
    // 0x7e4540: r1 = LoadClassIdInstr(r0)
    //     0x7e4540: ldur            x1, [x0, #-1]
    //     0x7e4544: ubfx            x1, x1, #0xc, #0x14
    // 0x7e4548: str             x0, [SP]
    // 0x7e454c: mov             x0, x1
    // 0x7e4550: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e4550: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e4554: r0 = GDT[cid_x0 + 0x3a5d]()
    //     0x7e4554: movz            x17, #0x3a5d
    //     0x7e4558: add             lr, x0, x17
    //     0x7e455c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e4560: blr             lr
    // 0x7e4564: str             NULL, [SP]
    // 0x7e4568: mov             x1, x0
    // 0x7e456c: r4 = const [0, 0x2, 0x1, 0x1, bVd, 0x1, null]
    //     0x7e456c: ldr             x4, [PP, #0x178]  ; [pp+0x178] List(7) [0, 0x2, 0x1, 0x1, "bVd", 0x1, Null]
    // 0x7e4570: r0 = call 0x254858
    //     0x7e4570: bl              #0x254858
    // 0x7e4574: ldur            x0, [fp, #-0x68]
    // 0x7e4578: LoadField: r1 = r0->field_f
    //     0x7e4578: ldur            w1, [x0, #0xf]
    // 0x7e457c: DecompressPointer r1
    //     0x7e457c: add             x1, x1, HEAP, lsl #32
    // 0x7e4580: LoadField: r2 = r1->field_7
    //     0x7e4580: ldur            w2, [x1, #7]
    // 0x7e4584: DecompressPointer r2
    //     0x7e4584: add             x2, x2, HEAP, lsl #32
    // 0x7e4588: LoadField: r1 = r2->field_7
    //     0x7e4588: ldur            w1, [x2, #7]
    // 0x7e458c: DecompressPointer r1
    //     0x7e458c: add             x1, x1, HEAP, lsl #32
    // 0x7e4590: cmp             w1, NULL
    // 0x7e4594: b.ne            #0x7e45a0
    // 0x7e4598: r0 = Null
    //     0x7e4598: mov             x0, NULL
    // 0x7e459c: b               #0x7e45b0
    // 0x7e45a0: LoadField: r2 = r1->field_7f
    //     0x7e45a0: ldur            w2, [x1, #0x7f]
    // 0x7e45a4: DecompressPointer r2
    //     0x7e45a4: add             x2, x2, HEAP, lsl #32
    // 0x7e45a8: mov             x1, x2
    // 0x7e45ac: r0 = call 0x73de5c
    //     0x7e45ac: bl              #0x73de5c
    // 0x7e45b0: cmp             w0, NULL
    // 0x7e45b4: b.eq            #0x7e45f4
    // 0x7e45b8: tbz             w0, #4, #0x7e45f4
    // 0x7e45bc: ldur            x0, [fp, #-0x68]
    // 0x7e45c0: LoadField: r1 = r0->field_f
    //     0x7e45c0: ldur            w1, [x0, #0xf]
    // 0x7e45c4: DecompressPointer r1
    //     0x7e45c4: add             x1, x1, HEAP, lsl #32
    // 0x7e45c8: LoadField: r0 = r1->field_7
    //     0x7e45c8: ldur            w0, [x1, #7]
    // 0x7e45cc: DecompressPointer r0
    //     0x7e45cc: add             x0, x0, HEAP, lsl #32
    // 0x7e45d0: LoadField: r1 = r0->field_7
    //     0x7e45d0: ldur            w1, [x0, #7]
    // 0x7e45d4: DecompressPointer r1
    //     0x7e45d4: add             x1, x1, HEAP, lsl #32
    // 0x7e45d8: cmp             w1, NULL
    // 0x7e45dc: b.eq            #0x7e45f4
    // 0x7e45e0: LoadField: r0 = r1->field_7f
    //     0x7e45e0: ldur            w0, [x1, #0x7f]
    // 0x7e45e4: DecompressPointer r0
    //     0x7e45e4: add             x0, x0, HEAP, lsl #32
    // 0x7e45e8: mov             x1, x0
    // 0x7e45ec: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e45ec: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e45f0: r0 = call 0x5ee7a4
    //     0x7e45f0: bl              #0x5ee7a4
    // 0x7e45f4: r0 = Null
    //     0x7e45f4: mov             x0, NULL
    // 0x7e45f8: r0 = ReturnAsyncNotFuture()
    //     0x7e45f8: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e45fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e45fc: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e4600: b               #0x7e4050
    // 0x7e4604: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e4604: bl              #0x7deab8  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e6174, size: 0x8c
    // 0x7e6174: EnterFrame
    //     0x7e6174: stp             fp, lr, [SP, #-0x10]!
    //     0x7e6178: mov             fp, SP
    // 0x7e617c: AllocStack(0x18)
    //     0x7e617c: sub             SP, SP, #0x18
    // 0x7e6180: SetupParameters(TKa this /* r1 */)
    //     0x7e6180: stur            NULL, [fp, #-8]
    //     0x7e6184: movz            x0, #0
    //     0x7e6188: add             x1, fp, w0, sxtw #2
    //     0x7e618c: ldr             x1, [x1, #0x10]
    //     0x7e6190: ldur            w2, [x1, #0x17]
    //     0x7e6194: add             x2, x2, HEAP, lsl #32
    //     0x7e6198: stur            x2, [fp, #-0x10]
    // 0x7e619c: CheckStackOverflow
    //     0x7e619c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e61a0: cmp             SP, x16
    //     0x7e61a4: b.ls            #0x7e61f8
    // 0x7e61a8: InitAsync() -> Future<void?>
    //     0x7e61a8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7e61ac: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e61b0: ldur            x0, [fp, #-0x10]
    // 0x7e61b4: LoadField: r3 = r0->field_13
    //     0x7e61b4: ldur            w3, [x0, #0x13]
    // 0x7e61b8: DecompressPointer r3
    //     0x7e61b8: add             x3, x3, HEAP, lsl #32
    // 0x7e61bc: stur            x3, [fp, #-0x18]
    // 0x7e61c0: LoadField: r1 = r3->field_f
    //     0x7e61c0: ldur            w1, [x3, #0xf]
    // 0x7e61c4: DecompressPointer r1
    //     0x7e61c4: add             x1, x1, HEAP, lsl #32
    // 0x7e61c8: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7e61c8: ldur            w2, [x0, #0x17]
    // 0x7e61cc: DecompressPointer r2
    //     0x7e61cc: add             x2, x2, HEAP, lsl #32
    // 0x7e61d0: r0 = call 0x67e16c
    //     0x7e61d0: bl              #0x67e16c
    // 0x7e61d4: ldur            x0, [fp, #-0x18]
    // 0x7e61d8: LoadField: r1 = r0->field_13
    //     0x7e61d8: ldur            w1, [x0, #0x13]
    // 0x7e61dc: DecompressPointer r1
    //     0x7e61dc: add             x1, x1, HEAP, lsl #32
    // 0x7e61e0: ldur            x0, [fp, #-0x10]
    // 0x7e61e4: LoadField: r2 = r0->field_1b
    //     0x7e61e4: ldur            w2, [x0, #0x1b]
    // 0x7e61e8: DecompressPointer r2
    //     0x7e61e8: add             x2, x2, HEAP, lsl #32
    // 0x7e61ec: r0 = call 0x67e16c
    //     0x7e61ec: bl              #0x67e16c
    // 0x7e61f0: r0 = Null
    //     0x7e61f0: mov             x0, NULL
    // 0x7e61f4: r0 = ReturnAsyncNotFuture()
    //     0x7e61f4: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e61f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e61f8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e61fc: b               #0x7e61a8
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x73efd4, size: -0x1
  }
  [closure] void nMg(dynamic) {
    // ** addr: 0x73ef58, size: -0x1
  }
  [closure] void oMg(dynamic) {
    // ** addr: 0x73eedc, size: -0x1
  }
}

// lib: , url: eSi

// class id: 1049785, size: 0x8
class :: {

  static late final sSa<jab, kab, int> Xug; // offset: 0x1414
}

// class id: 2485, size: 0x18, field offset: 0x10
class jab extends Mq<dynamic> {

  [closure] Future<Null> <anonymous closure>(dynamic) async {
    // ** addr: 0x7b41d0, size: 0xb4
    // 0x7b41d0: EnterFrame
    //     0x7b41d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7b41d4: mov             fp, SP
    // 0x7b41d8: AllocStack(0x28)
    //     0x7b41d8: sub             SP, SP, #0x28
    // 0x7b41dc: SetupParameters(jab this /* r1 */)
    //     0x7b41dc: stur            NULL, [fp, #-8]
    //     0x7b41e0: movz            x0, #0
    //     0x7b41e4: add             x1, fp, w0, sxtw #2
    //     0x7b41e8: ldr             x1, [x1, #0x10]
    //     0x7b41ec: ldur            w2, [x1, #0x17]
    //     0x7b41f0: add             x2, x2, HEAP, lsl #32
    //     0x7b41f4: stur            x2, [fp, #-0x10]
    // 0x7b41f8: CheckStackOverflow
    //     0x7b41f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b41fc: cmp             SP, x16
    //     0x7b4200: b.ls            #0x7b427c
    // 0x7b4204: InitAsync() -> Future<Null?>
    //     0x7b4204: ldr             x0, [PP, #0x70]  ; [pp+0x70] TypeArguments: <Null?>
    //     0x7b4208: bl              #0x74ada8  ; InitAsyncStub
    // 0x7b420c: ldur            x0, [fp, #-0x10]
    // 0x7b4210: LoadField: r1 = r0->field_f
    //     0x7b4210: ldur            w1, [x0, #0xf]
    // 0x7b4214: DecompressPointer r1
    //     0x7b4214: add             x1, x1, HEAP, lsl #32
    // 0x7b4218: LoadField: r2 = r1->field_7
    //     0x7b4218: ldur            w2, [x1, #7]
    // 0x7b421c: DecompressPointer r2
    //     0x7b421c: add             x2, x2, HEAP, lsl #32
    // 0x7b4220: stp             x1, x2, [SP]
    // 0x7b4224: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x7b4224: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x7b4228: r0 = call 0x261258
    //     0x7b4228: bl              #0x261258
    // 0x7b422c: LoadField: r1 = r0->field_2b
    //     0x7b422c: ldur            w1, [x0, #0x2b]
    // 0x7b4230: DecompressPointer r1
    //     0x7b4230: add             x1, x1, HEAP, lsl #32
    // 0x7b4234: LoadField: r2 = r1->field_53
    //     0x7b4234: ldur            w2, [x1, #0x53]
    // 0x7b4238: DecompressPointer r2
    //     0x7b4238: add             x2, x2, HEAP, lsl #32
    // 0x7b423c: tbz             w2, #4, #0x7b4274
    // 0x7b4240: LoadField: r2 = r1->field_f
    //     0x7b4240: ldur            w2, [x1, #0xf]
    // 0x7b4244: DecompressPointer r2
    //     0x7b4244: add             x2, x2, HEAP, lsl #32
    // 0x7b4248: cmp             w2, w0
    // 0x7b424c: b.ne            #0x7b4274
    // 0x7b4250: ldur            x0, [fp, #-0x10]
    // 0x7b4254: LoadField: r1 = r0->field_f
    //     0x7b4254: ldur            w1, [x0, #0xf]
    // 0x7b4258: DecompressPointer r1
    //     0x7b4258: add             x1, x1, HEAP, lsl #32
    // 0x7b425c: r0 = __unknown_function__()
    //     0x7b425c: bl              #0x7b4284  ; [] ::__unknown_function__
    // 0x7b4260: mov             x1, x0
    // 0x7b4264: stur            x1, [fp, #-0x18]
    // 0x7b4268: r0 = Await()
    //     0x7b4268: bl              #0x74ab64  ; AwaitStub
    // 0x7b426c: r0 = Null
    //     0x7b426c: mov             x0, NULL
    // 0x7b4270: r0 = ReturnAsyncNotFuture()
    //     0x7b4270: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b4274: r0 = Null
    //     0x7b4274: mov             x0, NULL
    // 0x7b4278: r0 = ReturnAsyncNotFuture()
    //     0x7b4278: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7b427c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b427c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b4280: b               #0x7b4204
  }
  [closure] void <anonymous closure>(dynamic, la) {
    // ** addr: 0x6125e4, size: -0x1
  }
  [closure] static jab jab(dynamic, int) {
    // ** addr: 0x6126bc, size: -0x1
  }
  [closure] kab eac(dynamic) {
    // ** addr: 0x5ad4a0, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5adb44, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic, List<Map<String, dynamic>>) {
    // ** addr: 0x5adc14, size: -0x1
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x5adc8c, size: -0x1
  }
}

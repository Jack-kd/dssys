// lib: , url: aXi

// class id: 1050054, size: 0x8
class :: {

  static void main() async {
    // ** addr: 0x7e3340, size: 0x118
    // 0x7e3340: EnterFrame
    //     0x7e3340: stp             fp, lr, [SP, #-0x10]!
    //     0x7e3344: mov             fp, SP
    // 0x7e3348: AllocStack(0x18)
    //     0x7e3348: sub             SP, SP, #0x18
    // 0x7e334c: SetupParameters()
    //     0x7e334c: stur            NULL, [fp, #-8]
    // 0x7e3350: CheckStackOverflow
    //     0x7e3350: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3354: cmp             SP, x16
    //     0x7e3358: b.ls            #0x7e3450
    // 0x7e335c: InitAsync() -> Future<void?>
    //     0x7e335c: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7e3360: bl              #0x74ada8  ; InitAsyncStub
    // 0x7e3364: r0 = call 0x268fe8
    //     0x7e3364: bl              #0x268fe8
    // 0x7e3368: r1 = <bool>
    //     0x7e3368: ldr             x1, [PP, #0x13c8]  ; [pp+0x13c8] TypeArguments: <bool>
    // 0x7e336c: r0 = _Future()
    //     0x7e336c: bl              #0x74ad38  ; Allocate_FutureStub -> _Future<X0> (size=0x1c)
    // 0x7e3370: stur            x0, [fp, #-0x10]
    // 0x7e3374: StoreField: r0->field_b = rZR
    //     0x7e3374: stur            xzr, [x0, #0xb]
    // 0x7e3378: r0 = LoadStaticField(0x3a8)
    //     0x7e3378: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e337c: ldr             x0, [x0, #0x750]
    // 0x7e3380: ldr             x16, [THR, #0x90]  ; THR::object_sentinel
    // 0x7e3384: cmp             w0, w16
    // 0x7e3388: b.ne            #0x7e3394
    // 0x7e338c: r2 = _current
    //     0x7e338c: ldr             x2, [PP, #0x110]  ; [pp+0x110] Field <V._current@5048458>: static late (offset: 0x3a8)
    // 0x7e3390: r0 = InitLateStaticField()
    //     0x7e3390: bl              #0x7dc448  ; InitLateStaticFieldStub
    // 0x7e3394: mov             x1, x0
    // 0x7e3398: ldur            x0, [fp, #-0x10]
    // 0x7e339c: StoreField: r0->field_13 = r1
    //     0x7e339c: stur            w1, [x0, #0x13]
    // 0x7e33a0: mov             x1, x0
    // 0x7e33a4: r2 = false
    //     0x7e33a4: add             x2, NULL, #0x30  ; false
    // 0x7e33a8: r0 = call 0x23f18c
    //     0x7e33a8: bl              #0x23f18c
    // 0x7e33ac: r0 = fFa()
    //     0x7e33ac: bl              #0x7efc2c  ; AllocatefFaStub -> fFa (size=0x8)
    // 0x7e33b0: mov             x1, x0
    // 0x7e33b4: ldur            x0, [fp, #-0x10]
    // 0x7e33b8: stur            x1, [fp, #-0x18]
    // 0x7e33bc: r0 = Await()
    //     0x7e33bc: bl              #0x74ab64  ; AwaitStub
    // 0x7e33c0: r16 = true
    //     0x7e33c0: add             x16, NULL, #0x20  ; true
    // 0x7e33c4: cmp             w0, w16
    // 0x7e33c8: b.ne            #0x7e33f0
    // 0x7e33cc: ldur            x1, [fp, #-0x18]
    // 0x7e33d0: r0 = __unknown_function__()
    //     0x7e33d0: bl              #0x7efbe0  ; [] ::__unknown_function__
    // 0x7e33d4: mov             x1, x0
    // 0x7e33d8: stur            x1, [fp, #-0x10]
    // 0x7e33dc: r0 = Await()
    //     0x7e33dc: bl              #0x74ab64  ; AwaitStub
    // 0x7e33e0: mov             x1, x0
    // 0x7e33e4: r0 = call 0x74387c
    //     0x7e33e4: bl              #0x74387c
    // 0x7e33e8: r0 = Null
    //     0x7e33e8: mov             x0, NULL
    // 0x7e33ec: r0 = ReturnAsyncNotFuture()
    //     0x7e33ec: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e33f0: r0 = call 0x73d8f0
    //     0x7e33f0: bl              #0x73d8f0
    // 0x7e33f4: r0 = __unknown_function__()
    //     0x7e33f4: bl              #0x797bbc  ; [] ::__unknown_function__
    // 0x7e33f8: r0 = call 0x73d8a4
    //     0x7e33f8: bl              #0x73d8a4
    // 0x7e33fc: r0 = __unknown_function__()
    //     0x7e33fc: bl              #0x7e3470  ; [] ::__unknown_function__
    // 0x7e3400: mov             x1, x0
    // 0x7e3404: stur            x1, [fp, #-0x10]
    // 0x7e3408: r0 = Await()
    //     0x7e3408: bl              #0x74ab64  ; AwaitStub
    // 0x7e340c: r0 = call 0x73d848
    //     0x7e340c: bl              #0x73d848
    // 0x7e3410: r0 = YEa()
    //     0x7e3410: bl              #0x7e3464  ; AllocateYEaStub -> YEa (size=0x1c)
    // 0x7e3414: mov             x3, x0
    // 0x7e3418: r0 = const []
    //     0x7e3418: ldr             x0, [PP, #0x69f8]  ; [pp+0x69f8] List<vRa>(0)
    // 0x7e341c: stur            x3, [fp, #-0x10]
    // 0x7e3420: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e3420: stur            w0, [x3, #0x17]
    // 0x7e3424: r1 = Function '<anonymous closure>': static.
    //     0x7e3424: ldr             x1, [PP, #0x6a00]  ; [pp+0x6a00] Function: [dart:ui] _NativeScene::_NativeScene._ (0x735d04)
    // 0x7e3428: r2 = Null
    //     0x7e3428: mov             x2, NULL
    // 0x7e342c: r0 = AllocateClosure()
    //     0x7e342c: bl              #0x7dd600  ; AllocateClosureStub
    // 0x7e3430: ldur            x1, [fp, #-0x10]
    // 0x7e3434: StoreField: r1->field_b = r0
    //     0x7e3434: stur            w0, [x1, #0xb]
    // 0x7e3438: r0 = bgb()
    //     0x7e3438: bl              #0x7e3458  ; AllocatebgbStub -> bgb (size=0xc)
    // 0x7e343c: ldur            x1, [fp, #-0x10]
    // 0x7e3440: StoreField: r1->field_f = r0
    //     0x7e3440: stur            w0, [x1, #0xf]
    // 0x7e3444: r0 = call 0x74387c
    //     0x7e3444: bl              #0x74387c
    // 0x7e3448: r0 = Null
    //     0x7e3448: mov             x0, NULL
    // 0x7e344c: r0 = ReturnAsyncNotFuture()
    //     0x7e344c: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7e3450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e3450: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e3454: b               #0x7e335c
  }
}

// class id: 3939, size: 0xc, field offset: 0xc
//   const constructor, 
class bgb extends QEa {

  [closure] KX <anonymous closure>(dynamic, Tna, KX?) {
    // ** addr: 0x66ae98, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x66b870, size: -0x1
  }
}

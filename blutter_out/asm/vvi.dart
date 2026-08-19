// lib: , url: vvi

// class id: 1048983, size: 0x8
class :: {
}

// class id: 2673, size: 0x38, field offset: 0x24
class _hea extends dB {

  late (dynamic, bA) => Future<void> _Atc; // offset: 0x24
  late Set<dB> _Qie; // offset: 0x34

  [closure] dB <anonymous closure>(dynamic, YO<dB>) {
    // ** addr: 0x6704d8, size: -0x1
  }
  [closure] void BYb(dynamic, bA) {
    // ** addr: 0x6b6e80, size: -0x1
  }
}

// class id: 2937, size: 0x60, field offset: 0x5c
class gea extends _sz {
}

// class id: 2938, size: 0x78, field offset: 0x60
class fea extends gea {

  [closure] Future<void> <anonymous closure>(dynamic, la) async {
    // ** addr: 0x7bbbb4, size: 0x14c
    // 0x7bbbb4: EnterFrame
    //     0x7bbbb4: stp             fp, lr, [SP, #-0x10]!
    //     0x7bbbb8: mov             fp, SP
    // 0x7bbbbc: AllocStack(0x18)
    //     0x7bbbbc: sub             SP, SP, #0x18
    // 0x7bbbc0: SetupParameters(fea this /* r1 */)
    //     0x7bbbc0: stur            NULL, [fp, #-8]
    //     0x7bbbc4: movz            x0, #0
    //     0x7bbbc8: add             x1, fp, w0, sxtw #2
    //     0x7bbbcc: ldr             x1, [x1, #0x18]
    //     0x7bbbd0: ldur            w2, [x1, #0x17]
    //     0x7bbbd4: add             x2, x2, HEAP, lsl #32
    //     0x7bbbd8: stur            x2, [fp, #-0x10]
    // 0x7bbbdc: CheckStackOverflow
    //     0x7bbbdc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bbbe0: cmp             SP, x16
    //     0x7bbbe4: b.ls            #0x7bbcf8
    // 0x7bbbe8: InitAsync() -> Future<void?>
    //     0x7bbbe8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x7bbbec: bl              #0x74ada8  ; InitAsyncStub
    // 0x7bbbf0: ldur            x0, [fp, #-0x10]
    // 0x7bbbf4: LoadField: r1 = r0->field_f
    //     0x7bbbf4: ldur            w1, [x0, #0xf]
    // 0x7bbbf8: DecompressPointer r1
    //     0x7bbbf8: add             x1, x1, HEAP, lsl #32
    // 0x7bbbfc: LoadField: r2 = r1->field_67
    //     0x7bbbfc: ldur            w2, [x1, #0x67]
    // 0x7bbc00: DecompressPointer r2
    //     0x7bbc00: add             x2, x2, HEAP, lsl #32
    // 0x7bbc04: tbz             w2, #4, #0x7bbca8
    // 0x7bbc08: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7bbc08: ldur            w2, [x1, #0x17]
    // 0x7bbc0c: DecompressPointer r2
    //     0x7bbc0c: add             x2, x2, HEAP, lsl #32
    // 0x7bbc10: cmp             w2, NULL
    // 0x7bbc14: b.eq            #0x7bbc98
    // 0x7bbc18: LoadField: r3 = r1->field_6b
    //     0x7bbc18: ldur            w3, [x1, #0x6b]
    // 0x7bbc1c: DecompressPointer r3
    //     0x7bbc1c: add             x3, x3, HEAP, lsl #32
    // 0x7bbc20: stur            x3, [fp, #-0x18]
    // 0x7bbc24: r2 = Instance_dE
    //     0x7bbc24: ldr             x2, [PP, #0x24a8]  ; [pp+0x24a8] Obj!dE@444531
    // 0x7bbc28: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7bbc28: ldr             x4, [PP, #0x1c0]  ; [pp+0x1c0] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7bbc2c: r0 = call 0x27dd24
    //     0x7bbc2c: bl              #0x27dd24
    // 0x7bbc30: mov             x1, x0
    // 0x7bbc34: ldur            x0, [fp, #-0x18]
    // 0x7bbc38: r2 = LoadClassIdInstr(r0)
    //     0x7bbc38: ldur            x2, [x0, #-1]
    //     0x7bbc3c: ubfx            x2, x2, #0xc, #0x14
    // 0x7bbc40: cmp             x2, #0x5c5
    // 0x7bbc44: b.eq            #0x7bbcb0
    // 0x7bbc48: LoadField: r2 = r0->field_27
    //     0x7bbc48: ldur            w2, [x0, #0x27]
    // 0x7bbc4c: DecompressPointer r2
    //     0x7bbc4c: add             x2, x2, HEAP, lsl #32
    // 0x7bbc50: LoadField: r3 = r0->field_7
    //     0x7bbc50: ldur            x3, [x0, #7]
    // 0x7bbc54: LoadField: r5 = r0->field_1b
    //     0x7bbc54: ldur            w5, [x0, #0x1b]
    // 0x7bbc58: DecompressPointer r5
    //     0x7bbc58: add             x5, x5, HEAP, lsl #32
    // 0x7bbc5c: r0 = LoadClassIdInstr(r2)
    //     0x7bbc5c: ldur            x0, [x2, #-1]
    //     0x7bbc60: ubfx            x0, x0, #0xc, #0x14
    // 0x7bbc64: cmp             x0, #0x5c1
    // 0x7bbc68: b.eq            #0x7bbcd0
    // 0x7bbc6c: r0 = LoadClassIdInstr(r2)
    //     0x7bbc6c: ldur            x0, [x2, #-1]
    //     0x7bbc70: ubfx            x0, x0, #0xc, #0x14
    // 0x7bbc74: mov             x16, x1
    // 0x7bbc78: mov             x1, x2
    // 0x7bbc7c: mov             x2, x16
    // 0x7bbc80: r0 = GDT[cid_x0 + -0xfee]()
    //     0x7bbc80: sub             lr, x0, #0xfee
    //     0x7bbc84: ldr             lr, [x21, lr, lsl #3]
    //     0x7bbc88: blr             lr
    // 0x7bbc8c: mov             x1, x0
    // 0x7bbc90: stur            x1, [fp, #-0x18]
    // 0x7bbc94: r0 = Await()
    //     0x7bbc94: bl              #0x74ab64  ; AwaitStub
    // 0x7bbc98: ldur            x0, [fp, #-0x10]
    // 0x7bbc9c: LoadField: r1 = r0->field_f
    //     0x7bbc9c: ldur            w1, [x0, #0xf]
    // 0x7bbca0: DecompressPointer r1
    //     0x7bbca0: add             x1, x1, HEAP, lsl #32
    // 0x7bbca4: r0 = call 0x602cdc
    //     0x7bbca4: bl              #0x602cdc
    // 0x7bbca8: r0 = Null
    //     0x7bbca8: mov             x0, NULL
    // 0x7bbcac: r0 = ReturnAsyncNotFuture()
    //     0x7bbcac: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x7bbcb0: r0 = qa()
    //     0x7bbcb0: bl              #0x74ce54  ; AllocateqaStub -> qa (size=0x10)
    // 0x7bbcb4: mov             x1, x0
    // 0x7bbcb8: r0 = "Not supported for hybrid composition."
    //     0x7bbcb8: add             x0, PP, #0x32, lsl #12  ; [pp+0x327d8] "Not supported for hybrid composition."
    //     0x7bbcbc: ldr             x0, [x0, #0x7d8]
    // 0x7bbcc0: StoreField: r1->field_b = r0
    //     0x7bbcc0: stur            w0, [x1, #0xb]
    // 0x7bbcc4: mov             x0, x1
    // 0x7bbcc8: r0 = Throw()
    //     0x7bbcc8: bl              #0x7dc520  ; ThrowStub
    // 0x7bbccc: brk             #0
    // 0x7bbcd0: r0 = "Not supported for hybrid composition."
    //     0x7bbcd0: add             x0, PP, #0x32, lsl #12  ; [pp+0x327d8] "Not supported for hybrid composition."
    //     0x7bbcd4: ldr             x0, [x0, #0x7d8]
    // 0x7bbcd8: r0 = qa()
    //     0x7bbcd8: bl              #0x74ce54  ; AllocateqaStub -> qa (size=0x10)
    // 0x7bbcdc: mov             x1, x0
    // 0x7bbce0: r0 = "Not supported for hybrid composition."
    //     0x7bbce0: add             x0, PP, #0x32, lsl #12  ; [pp+0x327d8] "Not supported for hybrid composition."
    //     0x7bbce4: ldr             x0, [x0, #0x7d8]
    // 0x7bbce8: StoreField: r1->field_b = r0
    //     0x7bbce8: stur            w0, [x1, #0xb]
    // 0x7bbcec: mov             x0, x1
    // 0x7bbcf0: r0 = Throw()
    //     0x7bbcf0: bl              #0x7dc520  ; ThrowStub
    // 0x7bbcf4: brk             #0
    // 0x7bbcf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bbcf8: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bbcfc: b               #0x7bbbe8
  }
  [closure] void _SAe(dynamic, int) {
    // ** addr: 0x2f7868, size: -0x1
  }
  [closure] void _VAe(dynamic, Sda, dE) {
    // ** addr: 0x30ebf4, size: -0x1
  }
}

// class id: 2939, size: 0x50, field offset: 0x50
abstract class _tz extends Tq
    implements cO {
}

// class id: 5460, size: 0x14, field offset: 0x14
enum _eea extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

// class id: 5461, size: 0x14, field offset: 0x14
enum dea extends _Enum {

  _Mint field_8;
  _OneByteString field_10;
}

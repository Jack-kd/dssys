// lib: , url: sSi

// class id: 1049800, size: 0x8
class :: {
}

// class id: 3657, size: 0x24, field offset: 0x18
class _Aab extends Vt<dynamic> {

  late final zZa rvg; // offset: 0x20

  [closure] Future<void> <anonymous closure>(dynamic, (dynamic) => void) async {
    // ** addr: 0x791f88, size: 0x8c
    // 0x791f88: EnterFrame
    //     0x791f88: stp             fp, lr, [SP, #-0x10]!
    //     0x791f8c: mov             fp, SP
    // 0x791f90: AllocStack(0x28)
    //     0x791f90: sub             SP, SP, #0x28
    // 0x791f94: SetupParameters(_Aab this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x791f94: stur            NULL, [fp, #-8]
    //     0x791f98: movz            x0, #0
    //     0x791f9c: add             x1, fp, w0, sxtw #2
    //     0x791fa0: ldr             x1, [x1, #0x18]
    //     0x791fa4: add             x2, fp, w0, sxtw #2
    //     0x791fa8: ldr             x2, [x2, #0x10]
    //     0x791fac: stur            x2, [fp, #-0x18]
    //     0x791fb0: ldur            w3, [x1, #0x17]
    //     0x791fb4: add             x3, x3, HEAP, lsl #32
    //     0x791fb8: stur            x3, [fp, #-0x10]
    // 0x791fbc: CheckStackOverflow
    //     0x791fbc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x791fc0: cmp             SP, x16
    //     0x791fc4: b.ls            #0x79200c
    // 0x791fc8: InitAsync() -> Future<void?>
    //     0x791fc8: ldr             x0, [PP, #0x368]  ; [pp+0x368] TypeArguments: <void?>
    //     0x791fcc: bl              #0x74ada8  ; InitAsyncStub
    // 0x791fd0: ldur            x0, [fp, #-0x10]
    // 0x791fd4: LoadField: r1 = r0->field_f
    //     0x791fd4: ldur            w1, [x0, #0xf]
    // 0x791fd8: DecompressPointer r1
    //     0x791fd8: add             x1, x1, HEAP, lsl #32
    // 0x791fdc: r0 = __unknown_function__()
    //     0x791fdc: bl              #0x792014  ; [] ::__unknown_function__
    // 0x791fe0: mov             x1, x0
    // 0x791fe4: stur            x1, [fp, #-0x20]
    // 0x791fe8: r0 = Await()
    //     0x791fe8: bl              #0x74ab64  ; AwaitStub
    // 0x791fec: ldur            x16, [fp, #-0x18]
    // 0x791ff0: str             x16, [SP]
    // 0x791ff4: ldur            x0, [fp, #-0x18]
    // 0x791ff8: ClosureCall
    //     0x791ff8: ldr             x4, [PP, #0x160]  ; [pp+0x160] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x791ffc: ldur            x2, [x0, #0x1f]
    //     0x792000: blr             x2
    // 0x792004: r0 = Null
    //     0x792004: mov             x0, NULL
    // 0x792008: r0 = ReturnAsyncNotFuture()
    //     0x792008: b               #0x748c64  ; ReturnAsyncNotFutureStub
    // 0x79200c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x79200c: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x792010: b               #0x791fc8
  }
  [closure] bool <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x474eec, size: -0x1
  }
  [closure] void _uvg(dynamic) {
    // ** addr: 0x474e50, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x474b8c, size: -0x1
  }
  [closure] Future<void> _zvg(dynamic) {
    // ** addr: 0x474ab8, size: -0x1
  }
  [closure] List<KX> <anonymous closure>(dynamic, Tna) {
    // ** addr: 0x47460c, size: -0x1
  }
  [closure] yab <anonymous closure>(dynamic, Tna, int) {
    // ** addr: 0x4747dc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x4749cc, size: -0x1
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x474c84, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x474d34, size: -0x1
  }
  [closure] int <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x474120, size: -0x1
  }
}

// class id: 3930, size: 0x18, field offset: 0xc
//   const constructor, 
class zab extends REa {
}

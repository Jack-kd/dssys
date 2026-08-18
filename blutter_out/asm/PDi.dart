// lib: , url: PDi

// class id: 1049014, size: 0x8
class :: {
}

// class id: 1524, size: 0x1c, field offset: 0x8
//   const constructor, 
class mha extends Object {

  bool field_8;
  _OneByteString field_c;
  _ImmutableList<String> field_10;
  jha field_14;

  Map<String, dynamic>? TTb(mha) {
    // ** addr: 0x7b3988, size: 0x48
    // 0x7b3988: EnterFrame
    //     0x7b3988: stp             fp, lr, [SP, #-0x10]!
    //     0x7b398c: mov             fp, SP
    // 0x7b3990: CheckStackOverflow
    //     0x7b3990: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7b3994: cmp             SP, x16
    //     0x7b3998: b.ls            #0x7b39b0
    // 0x7b399c: ldr             x1, [fp, #0x10]
    // 0x7b39a0: r0 = call 0x29bfd4
    //     0x7b39a0: bl              #0x29bfd4
    // 0x7b39a4: LeaveFrame
    //     0x7b39a4: mov             SP, fp
    //     0x7b39a8: ldp             fp, lr, [SP], #0x10
    // 0x7b39ac: ret
    //     0x7b39ac: ret             
    // 0x7b39b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7b39b0: bl              #0x7de428  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7b39b4: b               #0x7b399c
  }
}

// class id: 1686, size: 0x8, field offset: 0x8
abstract class DZ extends Object {
}

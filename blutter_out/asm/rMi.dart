// lib: TXi, url: rMi

// class id: 1049485, size: 0x8
class :: {
}

// class id: 628, size: 0x10, field offset: 0x8
abstract class oPa extends Object
    implements FNa {
}

// class id: 630, size: 0x18, field offset: 0x8
abstract class nPa extends Object
    implements ENa {

  nPa? *(nPa, ha?) {
    // ** addr: 0x787ec4, size: 0x60
    // 0x787ec4: EnterFrame
    //     0x787ec4: stp             fp, lr, [SP, #-0x10]!
    //     0x787ec8: mov             fp, SP
    // 0x787ecc: ldr             x0, [fp, #0x10]
    // 0x787ed0: r2 = Null
    //     0x787ed0: mov             x2, NULL
    // 0x787ed4: r1 = Null
    //     0x787ed4: mov             x1, NULL
    // 0x787ed8: r4 = LoadClassIdInstr(r0)
    //     0x787ed8: ldur            x4, [x0, #-1]
    //     0x787edc: ubfx            x4, x4, #0xc, #0x14
    // 0x787ee0: r17 = 5171
    //     0x787ee0: movz            x17, #0x1433
    // 0x787ee4: cmp             x4, x17
    // 0x787ee8: b.eq            #0x787f00
    // 0x787eec: r8 = ha?
    //     0x787eec: add             x8, PP, #0x1c, lsl #12  ; [pp+0x1c7a0] Type: ha?
    //     0x787ef0: ldr             x8, [x8, #0x7a0]
    // 0x787ef4: r3 = Null
    //     0x787ef4: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c7a8] Null
    //     0x787ef8: ldr             x3, [x3, #0x7a8]
    // 0x787efc: r0 = DefaultNullableTypeTest()
    //     0x787efc: bl              #0x7dc180  ; DefaultNullableTypeTestStub
    // 0x787f00: r0 = "Attempt to execute code removed by Dart AOT compiler (TFA)"
    //     0x787f00: ldr             x0, [PP, #0x6e0]  ; [pp+0x6e0] "Attempt to execute code removed by Dart AOT compiler (TFA)"
    // 0x787f04: r0 = Throw()
    //     0x787f04: bl              #0x7dc520  ; ThrowStub
    // 0x787f08: brk             #0
  }
}

// class id: 632, size: 0x8, field offset: 0x8
abstract class mPa extends Object
    implements DNa {
}

// class id: 634, size: 0xc, field offset: 0x8
abstract class INa extends Object
    implements CNa {
}

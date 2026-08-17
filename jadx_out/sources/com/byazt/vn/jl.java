package com.byazt.vn;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1312, 19})
/* loaded from: classes3.dex */
public class jl {
    public static void hp(eb ebVar) throws IOException {
        ebVar.l(1835009, 0);
        int i2 = ebVar.readInt();
        int i3 = ebVar.readInt();
        int i4 = ebVar.readInt();
        ebVar.hp();
        int i5 = ebVar.readInt();
        int i6 = ebVar.readInt();
        ebVar.skipBytes(i3 * 4);
        if (i4 != 0) {
            ebVar.skipBytes(i4 * 4);
        }
        ebVar.skipBytes((i6 == 0 ? i2 : i6) - i5);
        if (i6 == 0) {
            return;
        }
        int i7 = i2 - i6;
        ebVar.skipBytes(i7);
        int i8 = i7 % 4;
        if (i8 <= 0) {
            return;
        }
        while (true) {
            int i9 = i8 - 1;
            if (i8 <= 0) {
                return;
            }
            ebVar.readByte();
            i8 = i9;
        }
    }
}

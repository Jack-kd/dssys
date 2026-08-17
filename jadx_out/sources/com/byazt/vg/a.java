package com.byazt.vg;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1750, 54})
/* loaded from: classes3.dex */
public class a {
    public int[] hp;

    /* renamed from: l, reason: collision with root package name */
    public int[] f26555l;

    private a() {
    }

    public static a hp(l lVar) throws IOException {
        lVar.l(1835009);
        int iL = lVar.l();
        int iL2 = lVar.l();
        int iL3 = lVar.l();
        lVar.l();
        int iL4 = lVar.l();
        int iL5 = lVar.l();
        a aVar = new a();
        aVar.hp = lVar.hp(iL2);
        if (iL3 != 0) {
            lVar.hp(iL3);
        }
        int i2 = (iL5 == 0 ? iL : iL5) - iL4;
        if (i2 % 4 != 0) {
            throw new IOException();
        }
        aVar.f26555l = lVar.hp(i2 / 4);
        if (iL5 == 0) {
            return aVar;
        }
        int i3 = iL - iL5;
        if (i3 % 4 != 0) {
            throw new IOException();
        }
        lVar.hp(i3 / 4);
        return aVar;
    }

    public String hp(int i2) {
        int[] iArr;
        if (i2 < 0 || (iArr = this.hp) == null || i2 >= iArr.length) {
            return null;
        }
        int i3 = iArr[i2];
        int iHp = hp(this.f26555l, i3);
        StringBuilder sb = new StringBuilder(iHp);
        while (iHp != 0) {
            i3 += 2;
            sb.append((char) hp(this.f26555l, i3));
            iHp--;
        }
        return sb.toString();
    }

    private static final int hp(int[] iArr, int i2) {
        int i3 = iArr[i2 / 4];
        return (i2 % 4) / 2 == 0 ? i3 & 65535 : i3 >>> 16;
    }
}

package com.byazt.gb;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 861, 54})
/* loaded from: classes2.dex */
public class a {
    public int[] hp;

    /* renamed from: l, reason: collision with root package name */
    public int[] f20359l;

    private a() {
    }

    public static a hp(j jVar) throws IOException {
        l.hp(jVar, 1835009);
        int iL = jVar.l();
        int iL2 = jVar.l();
        int iL3 = jVar.l();
        jVar.l();
        int iL4 = jVar.l();
        int iL5 = jVar.l();
        a aVar = new a();
        aVar.hp = jVar.l(iL2);
        if (iL3 != 0) {
            jVar.l(iL3);
        }
        int i2 = (iL5 == 0 ? iL : iL5) - iL4;
        if (i2 % 4 != 0) {
            throw new IOException("String data size is not multiple of 4 (" + i2 + ").");
        }
        aVar.f20359l = jVar.l(i2 / 4);
        if (iL5 == 0) {
            return aVar;
        }
        int i3 = iL - iL5;
        if (i3 % 4 == 0) {
            jVar.l(i3 / 4);
            return aVar;
        }
        throw new IOException("Style data size is not multiple of 4 (" + i3 + ").");
    }

    public String hp(int i2) {
        int[] iArr;
        if (i2 < 0 || (iArr = this.hp) == null || i2 >= iArr.length) {
            return null;
        }
        int i3 = iArr[i2];
        int iHp = hp(this.f20359l, i3);
        StringBuilder sb = new StringBuilder(iHp);
        while (iHp != 0) {
            i3 += 2;
            sb.append((char) hp(this.f20359l, i3));
            iHp--;
        }
        return sb.toString();
    }

    private static final int hp(int[] iArr, int i2) {
        int i3 = iArr[i2 / 4];
        return (i2 % 4) / 2 == 0 ? i3 & 65535 : i3 >>> 16;
    }
}

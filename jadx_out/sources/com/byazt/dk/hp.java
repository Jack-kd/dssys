package com.byazt.dk;

import android.text.TextUtils;
import androidx.core.view.PointerIconCompat;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ALL_SCROLL, 28})
/* loaded from: classes2.dex */
public class hp extends w {

    /* renamed from: l, reason: collision with root package name */
    public static ThreadLocal<byte[]> f19158l = new ThreadLocal<>();

    public hp(a aVar) {
        super(aVar);
    }

    public static byte[] hp() {
        byte[] bArr = f19158l.get();
        if (bArr != null) {
            return bArr;
        }
        byte[] bArr2 = new byte[4];
        f19158l.set(bArr2);
        return bArr2;
    }

    public short a_() throws IOException {
        byte[] bArrHp = hp();
        hp(bArrHp, 0, 2);
        return (short) (((bArrHp[0] & 255) << 8) | (bArrHp[1] & 255));
    }

    public int b_() throws IOException {
        byte[] bArrHp = hp();
        hp(bArrHp, 0, 4);
        return ((bArrHp[3] & 255) << 24) | (bArrHp[0] & 255) | ((bArrHp[1] & 255) << 8) | ((bArrHp[2] & 255) << 16);
    }

    public int l() throws IOException {
        byte[] bArrHp = hp();
        hp(bArrHp, 0, 4);
        return ((bArrHp[0] & 255) << 24) | (bArrHp[3] & 255) | ((bArrHp[2] & 255) << 8) | ((bArrHp[1] & 255) << 16);
    }

    public boolean hp(String str) throws IOException {
        if (TextUtils.isEmpty(str) || str.length() != 4) {
            return false;
        }
        int iB_ = b_();
        for (int i2 = 0; i2 < 4; i2++) {
            if (((iB_ >> (i2 * 8)) & 255) != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }
}

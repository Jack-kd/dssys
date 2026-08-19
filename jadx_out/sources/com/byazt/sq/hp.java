package com.byazt.sq;

import com.umeng.analytics.pro.ek;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 1453, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final byte[] hp = {-119, 80, 78, 71, ek.f49293k, 10, 26, 10};

    /* renamed from: l, reason: collision with root package name */
    public static final byte[] f25510l = {97, 99, 84, com.sigmob.sdk.archives.tar.e.f35450P};

    public static boolean hp(byte[] bArr) {
        if (!hp(bArr, hp)) {
            return false;
        }
        int i2 = 8;
        while (i2 >= 0) {
            if (i2 + 12 > bArr.length) {
                break;
            }
            int iHp = hp(bArr, i2);
            byte[] bArr2 = new byte[4];
            System.arraycopy(bArr, i2 + 4, bArr2, 0, 4);
            int i3 = i2 + 8;
            if (Arrays.equals(bArr2, f25510l)) {
                return true;
            }
            i2 = i3 + iHp + 4;
        }
        return false;
    }

    private static boolean hp(byte[] bArr, byte[] bArr2) {
        if (bArr.length < bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static int hp(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}

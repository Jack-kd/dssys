package com.byazt.raq;

import com.umeng.analytics.pro.ek;
import java.io.UnsupportedEncodingException;

@com.byazt.kj.hp(hp = {0, 1, 1165, 34})
/* loaded from: classes3.dex */
public final class l {
    public static final byte[] hp = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.f35450P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.f35451Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.f35452R, 121, 122, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 43, 47};

    /* renamed from: l, reason: collision with root package name */
    public static final byte[] f25112l = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.f35450P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.f35451Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.f35453S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.f35454T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.f35452R, 121, 122, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 45, 95};

    public static String hp(byte[] bArr) {
        return hp(bArr, hp);
    }

    private static String hp(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            bArr3[i2] = bArr2[(bArr[i3] & 255) >> 2];
            int i4 = i3 + 1;
            bArr3[i2 + 1] = bArr2[((bArr[i3] & 3) << 4) | ((bArr[i4] & 255) >> 4)];
            int i5 = i2 + 3;
            int i6 = (bArr[i4] & ek.f49295m) << 2;
            int i7 = i3 + 2;
            bArr3[i2 + 2] = bArr2[i6 | ((bArr[i7] & 255) >> 6)];
            i2 += 4;
            bArr3[i5] = bArr2[bArr[i7] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            bArr3[i2 + 1] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            int i8 = (bArr[length] & 3) << 4;
            int i9 = length + 1;
            bArr3[i2 + 1] = bArr2[((bArr[i9] & 255) >> 4) | i8];
            bArr3[i2 + 2] = bArr2[(bArr[i9] & ek.f49295m) << 2];
            bArr3[i2 + 3] = 61;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}

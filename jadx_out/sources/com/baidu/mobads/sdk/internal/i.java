package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.umeng.analytics.pro.ek;

/* loaded from: classes2.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f11535a = {com.sigmob.sdk.archives.tar.e.f35442H, 75, 97, 106, 68, com.sigmob.sdk.archives.tar.e.f35449O, 65, 90, 99, 70, com.sigmob.sdk.archives.tar.e.f35444J, 81, 110, 80, 114, com.sigmob.sdk.archives.tar.e.f35447M, 102, 119, 105, 72, 82, 78, 121, com.sigmob.sdk.archives.tar.e.f35454T, 109, 117, 112, 85, 84, 73, com.sigmob.sdk.archives.tar.e.f35453S, com.sigmob.sdk.archives.tar.e.f35452R, com.sigmob.sdk.archives.tar.e.f35448N, 57, 66, 87, 98, 45, 104, 77, 67, 71, 74, 111, 95, 86, 56, 69, 115, 107, 122, com.sigmob.sdk.archives.tar.e.f35443I, 89, 100, 118, com.sigmob.sdk.archives.tar.e.f35450P, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, 108, 101, 116, 113, com.sigmob.sdk.archives.tar.e.f35451Q, 79};

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f11536b = new byte[128];

    static {
        int i2 = 0;
        while (true) {
            byte[] bArr = f11535a;
            if (i2 >= bArr.length) {
                return;
            }
            f11536b[bArr[i2]] = (byte) i2;
            i2++;
        }
    }

    public static String b(String str) {
        if (str == null || str.length() < 4) {
            return null;
        }
        try {
            String str2 = new String(c(str));
            while (str2.endsWith("$")) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            return str2;
        } catch (Exception unused) {
            return "";
        }
    }

    private static byte[] c(String str) {
        if (d(str) || str == null || str.length() < 4) {
            return null;
        }
        byte[] bArr = str.charAt(str.length() + (-2)) == '$' ? new byte[(((str.length() / 4) - 1) * 3) + 1] : str.charAt(str.length() + (-1)) == '$' ? new byte[(((str.length() / 4) - 1) * 3) + 2] : new byte[(str.length() / 4) * 3];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length() - 4) {
            byte[] bArr2 = f11536b;
            byte b3 = bArr2[str.charAt(i2)];
            byte b4 = bArr2[str.charAt(i2 + 1)];
            byte b5 = bArr2[str.charAt(i2 + 2)];
            byte b6 = bArr2[str.charAt(i2 + 3)];
            bArr[i3] = (byte) ((b3 << 2) | (b4 >> 4));
            bArr[i3 + 1] = (byte) ((b4 << 4) | (b5 >> 2));
            bArr[i3 + 2] = (byte) (b6 | (b5 << 6));
            i2 += 4;
            i3 += 3;
        }
        if (str.charAt(str.length() - 2) == '$') {
            byte[] bArr3 = f11536b;
            bArr[bArr.length - 1] = (byte) ((bArr3[str.charAt(str.length() - 3)] >> 4) | (bArr3[str.charAt(str.length() - 4)] << 2));
            return bArr;
        }
        if (str.charAt(str.length() - 1) == '$') {
            byte[] bArr4 = f11536b;
            byte b7 = bArr4[str.charAt(str.length() - 4)];
            byte b8 = bArr4[str.charAt(str.length() - 3)];
            byte b9 = bArr4[str.charAt(str.length() - 2)];
            bArr[bArr.length - 2] = (byte) ((b7 << 2) | (b8 >> 4));
            bArr[bArr.length - 1] = (byte) ((b9 >> 2) | (b8 << 4));
            return bArr;
        }
        byte[] bArr5 = f11536b;
        byte b10 = bArr5[str.charAt(str.length() - 4)];
        byte b11 = bArr5[str.charAt(str.length() - 3)];
        byte b12 = bArr5[str.charAt(str.length() - 2)];
        byte b13 = bArr5[str.charAt(str.length() - 1)];
        bArr[bArr.length - 3] = (byte) ((b10 << 2) | (b11 >> 4));
        bArr[bArr.length - 2] = (byte) ((b11 << 4) | (b12 >> 2));
        bArr[bArr.length - 1] = (byte) (b13 | (b12 << 6));
        return bArr;
    }

    private static boolean d(String str) {
        if (str == null) {
            return true;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (!a((byte) str.charAt(i2))) {
                return true;
            }
        }
        return false;
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (int length = str.getBytes().length % 3; length > 0 && length < 3; length++) {
            str = str + "$";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[(bytes.length / 3) * 4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < bytes.length) {
            byte[] bArr2 = f11535a;
            bArr[i3] = bArr2[(bytes[i2] & 252) >> 2];
            int i4 = i2 + 1;
            bArr[i3 + 1] = bArr2[((bytes[i2] & 3) << 4) + ((bytes[i4] & 240) >> 4)];
            int i5 = (bytes[i4] & ek.f49295m) << 2;
            int i6 = i2 + 2;
            bArr[i3 + 2] = bArr2[i5 + ((bytes[i6] & 192) >> 6)];
            bArr[i3 + 3] = bArr2[bytes[i6] & 63];
            i2 += 3;
            i3 += 4;
        }
        return new String(bArr);
    }

    private static boolean a(byte b3) {
        if (b3 == 36) {
            return true;
        }
        return b3 >= 0 && b3 < 128 && f11536b[b3] != -1;
    }
}

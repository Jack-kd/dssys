package com.anythink.core.common.v;

import com.umeng.analytics.pro.ek;

/* loaded from: classes2.dex */
final class w {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f8315a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b, reason: collision with root package name */
    private static final char[] f8316b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private w() {
    }

    private static char[] a(byte[] bArr, boolean z2) {
        return a(bArr, z2 ? f8316b : f8315a);
    }

    private static char[] b(byte[] bArr) {
        return a(bArr, false);
    }

    private static char[] a(byte[] bArr, char[] cArr) {
        char[] cArr2 = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            cArr2[i2] = cArr[(b3 & 240) >>> 4];
            i2 += 2;
            cArr2[i3] = cArr[b3 & ek.f49295m];
        }
        return cArr2;
    }

    public static String a(byte[] bArr) {
        return new String(a(bArr, true));
    }
}

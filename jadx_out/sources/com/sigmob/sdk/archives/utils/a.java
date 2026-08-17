package com.sigmob.sdk.archives.utils;

import java.io.UnsupportedEncodingException;

/* loaded from: classes4.dex */
public class a {
    private a() {
    }

    public static String a(com.sigmob.sdk.archives.a aVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(aVar.c() ? 'd' : '-');
        String string = Long.toString(aVar.b());
        stringBuffer.append(' ');
        for (int i2 = 7; i2 > string.length(); i2--) {
            stringBuffer.append(' ');
        }
        stringBuffer.append(string);
        stringBuffer.append(' ');
        stringBuffer.append(aVar.a());
        return stringBuffer.toString();
    }

    public static boolean b(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
        return a(bArr, i2, i3, bArr2, i4, i5, true);
    }

    public static String a(byte[] bArr) {
        try {
            return new String(bArr, "ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String a(byte[] bArr, int i2, int i3) {
        try {
            return new String(bArr, i2, i3, "ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean a(String str, byte[] bArr) {
        return a(str, bArr, 0, bArr.length);
    }

    public static boolean a(String str, byte[] bArr, int i2, int i3) throws UnsupportedEncodingException {
        try {
            byte[] bytes = str.getBytes("ASCII");
            return a(bytes, 0, bytes.length, bArr, i2, i3, false);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean a(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
        return a(bArr, i2, i3, bArr2, i4, i5, false);
    }

    public static boolean a(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5, boolean z2) {
        int i6 = i3 < i5 ? i3 : i5;
        for (int i7 = 0; i7 < i6; i7++) {
            if (bArr[i2 + i7] != bArr2[i4 + i7]) {
                return false;
            }
        }
        if (i3 == i5) {
            return true;
        }
        if (!z2) {
            return false;
        }
        if (i3 > i5) {
            while (i5 < i3) {
                if (bArr[i2 + i5] != 0) {
                    return false;
                }
                i5++;
            }
        } else {
            while (i3 < i5) {
                if (bArr2[i4 + i3] != 0) {
                    return false;
                }
                i3++;
            }
        }
        return true;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        return a(bArr, 0, bArr.length, bArr2, 0, bArr2.length, false);
    }

    public static boolean a(byte[] bArr, byte[] bArr2, boolean z2) {
        return a(bArr, 0, bArr.length, bArr2, 0, bArr2.length, z2);
    }

    public static byte[] a(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }
}

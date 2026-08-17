package com.kwad.sdk.pngencrypt;

import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public final class n {
    public static Charset bld = Charset.forName("ISO-8859-1");
    public static Charset ble = Charset.forName("UTF-8");
    private static ThreadLocal<Boolean> blf = new ThreadLocal<Boolean>() { // from class: com.kwad.sdk.pngencrypt.n.1
        private static Boolean Th() {
            return Boolean.FALSE;
        }

        @Override // java.lang.ThreadLocal
        public final /* synthetic */ Boolean initialValue() {
            return Th();
        }
    };

    public static byte[] Tg() {
        return new byte[]{-119, 80, 78, 71, ek.f49293k, 10, 26, 10};
    }

    public static final int d(int i2, int i3, int i4) {
        int i5 = (i2 + i3) - i4;
        int i6 = i5 >= i2 ? i5 - i2 : i2 - i5;
        int i7 = i5 >= i3 ? i5 - i3 : i3 - i5;
        int i8 = i5 >= i4 ? i5 - i4 : i4 - i5;
        return (i6 > i7 || i6 > i8) ? i7 <= i8 ? i3 : i4 : i2;
    }

    public static int e(InputStream inputStream) {
        try {
            return inputStream.read();
        } catch (IOException unused) {
            return -1;
        }
    }

    public static int f(InputStream inputStream) throws IOException {
        try {
            int i2 = inputStream.read();
            int i3 = inputStream.read();
            int i4 = inputStream.read();
            int i5 = inputStream.read();
            if (i2 != -1 && i3 != -1 && i4 != -1 && i5 != -1) {
                return (i2 << 24) | (i3 << 16) | ((i4 << 8) + i5);
            }
        } catch (IOException unused) {
        }
        return -1;
    }

    public static final int g(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static int e(byte[] bArr, int i2) {
        return bArr[i2] & 255;
    }

    public static int f(byte[] bArr, int i2) {
        return (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8);
    }
}

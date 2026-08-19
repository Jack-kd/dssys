package com.byazt.vn;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1312, 38})
/* loaded from: classes3.dex */
public final class j {
    public static <T> T hp(T t2) {
        t2.getClass();
        return t2;
    }

    public static int l(InputStream inputStream, byte[] bArr, int i2, int i3) throws IOException {
        hp(inputStream);
        hp(bArr);
        if (i3 < 0) {
            throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i3)));
        }
        hp(i2, i2 + i3, bArr.length);
        int i4 = 0;
        while (i4 < i3) {
            int i5 = inputStream.read(bArr, i2 + i4, i3 - i4);
            if (i5 == -1) {
                break;
            }
            i4 += i5;
        }
        return i4;
    }

    public static void hp(InputStream inputStream, byte[] bArr) throws IOException {
        hp(inputStream, bArr, 0, bArr.length);
    }

    public static void hp(InputStream inputStream, byte[] bArr, int i2, int i3) throws IOException {
        int iL = l(inputStream, bArr, i2, i3);
        if (iL == i3) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + iL + " bytes; " + i3 + " bytes expected");
    }

    public static void hp(int i2, int i3, int i4) {
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2);
            sb.append(i3);
            sb.append(i4);
            throw new IndexOutOfBoundsException(sb.toString());
        }
    }
}

package com.byazt.ymw;

import com.umeng.analytics.pro.ek;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;

@com.byazt.kj.hp(hp = {0, 1, 68, 19})
/* loaded from: classes3.dex */
public class jl {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f28098a;
    public static final int eb;
    public static final byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f28099j;
    public static final byte[] jx;

    /* renamed from: l, reason: collision with root package name */
    public static final byte[] f28100l;

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f28101w;

    static {
        byte[] bArr = {-1, -40, -1};
        hp = bArr;
        byte[] bArr2 = {-119, 80, 78, 71, ek.f49293k, 10, 26, 10};
        f28100l = bArr2;
        byte[] bArr3 = {0, 0, 1, 0};
        jx = bArr3;
        byte[] bArrHp = hp("BM");
        f28099j = bArrHp;
        f28101w = hp("GIF87a");
        f28098a = hp("GIF89a");
        eb = ((Integer) Collections.max(Arrays.asList(Integer.valueOf(bArr.length), Integer.valueOf(bArr2.length), Integer.valueOf(bArr3.length), Integer.valueOf(bArrHp.length), 6))).intValue();
    }

    private static boolean a(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = jx;
        return length >= bArr2.length && hp(bArr, bArr2);
    }

    public static int hp() {
        return eb;
    }

    private static boolean j(byte[] bArr) {
        return (bArr.length >= 6 && hp(bArr, f28101w)) || hp(bArr, f28098a);
    }

    private static boolean jx(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f28100l;
        return length >= bArr2.length && hp(bArr, bArr2);
    }

    private static boolean l(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = hp;
        return length >= bArr2.length && hp(bArr, bArr2);
    }

    private static boolean w(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f28099j;
        return length >= bArr2.length && hp(bArr, bArr2);
    }

    public static final String hp(byte[] bArr) {
        return l(bArr) ? "jpeg" : jx(bArr) ? "png" : j(bArr) ? "gif" : w(bArr) ? "bmp" : a(bArr) ? "ico" : "other";
    }

    private static boolean hp(byte[] bArr, byte[] bArr2) {
        return hp(bArr, bArr2, 0);
    }

    private static boolean hp(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr2.length + i2 > bArr.length) {
            return false;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            if (bArr[i2 + i3] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] hp(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }
}

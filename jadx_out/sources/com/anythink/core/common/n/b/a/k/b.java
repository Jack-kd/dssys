package com.anythink.core.common.n.b.a.k;

import com.anythink.core.common.n.c.c;
import com.anythink.core.common.n.c.f;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    static final String f6609a = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";

    /* renamed from: b, reason: collision with root package name */
    static final int f6610b = 128;

    /* renamed from: c, reason: collision with root package name */
    static final int f6611c = 64;

    /* renamed from: d, reason: collision with root package name */
    static final int f6612d = 32;

    /* renamed from: e, reason: collision with root package name */
    static final int f6613e = 16;

    /* renamed from: f, reason: collision with root package name */
    static final int f6614f = 15;

    /* renamed from: g, reason: collision with root package name */
    static final int f6615g = 8;

    /* renamed from: h, reason: collision with root package name */
    static final int f6616h = 128;

    /* renamed from: i, reason: collision with root package name */
    static final int f6617i = 127;

    /* renamed from: j, reason: collision with root package name */
    static final int f6618j = 0;

    /* renamed from: k, reason: collision with root package name */
    static final int f6619k = 1;

    /* renamed from: l, reason: collision with root package name */
    static final int f6620l = 2;

    /* renamed from: m, reason: collision with root package name */
    static final int f6621m = 8;

    /* renamed from: n, reason: collision with root package name */
    static final int f6622n = 9;

    /* renamed from: o, reason: collision with root package name */
    static final int f6623o = 10;

    /* renamed from: p, reason: collision with root package name */
    static final long f6624p = 125;

    /* renamed from: q, reason: collision with root package name */
    static final long f6625q = 123;

    /* renamed from: r, reason: collision with root package name */
    static final int f6626r = 126;

    /* renamed from: s, reason: collision with root package name */
    static final long f6627s = 65535;

    /* renamed from: t, reason: collision with root package name */
    static final int f6628t = 127;

    /* renamed from: u, reason: collision with root package name */
    static final int f6629u = 1001;

    /* renamed from: v, reason: collision with root package name */
    static final int f6630v = 1005;

    private b() {
        throw new AssertionError("No instances.");
    }

    public static void a(c.a aVar, byte[] bArr) {
        int length = bArr.length;
        int i2 = 0;
        do {
            byte[] bArr2 = aVar.f7066d;
            int i3 = aVar.f7067e;
            int i4 = aVar.f7068f;
            while (i3 < i4) {
                int i5 = i2 % length;
                bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i5]);
                i3++;
                i2 = i5 + 1;
            }
        } while (aVar.a() != -1);
    }

    public static void b(int i2) {
        String strA = a(i2);
        if (strA != null) {
            throw new IllegalArgumentException(strA);
        }
    }

    public static String a(int i2) {
        if (i2 < 1000 || i2 >= 5000) {
            return "Code must be in range [1000,5000): ".concat(String.valueOf(i2));
        }
        if ((i2 < 1004 || i2 > 1006) && (i2 < 1012 || i2 > 2999)) {
            return null;
        }
        return "Code " + i2 + " is reserved and may not be used.";
    }

    private static String a(String str) {
        return f.a(str + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").d().b();
    }
}

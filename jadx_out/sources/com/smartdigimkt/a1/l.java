package com.smartdigimkt.a1;

import java.nio.charset.Charset;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f39286a;

    /* renamed from: b, reason: collision with root package name */
    public int f39287b;

    /* renamed from: c, reason: collision with root package name */
    public int f39288c;

    public l() {
    }

    public final void a(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.f39286a, this.f39287b, bArr, i2, i3);
        this.f39287b += i3;
    }

    public final void b(int i2) {
        byte[] bArr = this.f39286a;
        if ((bArr == null ? 0 : bArr.length) < i2) {
            bArr = new byte[i2];
        }
        this.f39286a = bArr;
        this.f39288c = i2;
        this.f39287b = 0;
    }

    public final String c() {
        int i2 = this.f39288c;
        int i3 = this.f39287b;
        if (i2 - i3 == 0) {
            return null;
        }
        while (i3 < this.f39288c && this.f39286a[i3] != 0) {
            i3++;
        }
        byte[] bArr = this.f39286a;
        int i4 = this.f39287b;
        String strA = t.a(bArr, i4, i3 - i4);
        this.f39287b = i3;
        if (i3 < this.f39288c) {
            this.f39287b = i3 + 1;
        }
        return strA;
    }

    public final String d() {
        String str = new String(this.f39286a, this.f39287b, 4, Charset.forName("UTF-8"));
        this.f39287b += 4;
        return str;
    }

    public final int e() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        this.f39287b = i2 + 1;
        return bArr[i2] & 255;
    }

    public final long f() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        int i3 = i2 + 3;
        long j2 = ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
        this.f39287b = i2 + 4;
        return (bArr[i3] & 255) | j2;
    }

    public final int g() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        int i3 = i2 + 2;
        int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
        this.f39287b = i2 + 3;
        return (bArr[i3] & 255) | i4;
    }

    public final int h() {
        int iA = a();
        if (iA >= 0) {
            return iA;
        }
        throw new IllegalStateException("Top bit not zero: " + iA);
    }

    public final long i() {
        long jB = b();
        if (jB >= 0) {
            return jB;
        }
        throw new IllegalStateException("Top bit not zero: " + jB);
    }

    public final int j() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        int i3 = i2 + 1;
        int i4 = (bArr[i2] & 255) << 8;
        this.f39287b = i2 + 2;
        return (bArr[i3] & 255) | i4;
    }

    public l(int i2) {
        this.f39286a = new byte[i2];
        this.f39288c = i2;
    }

    public final int a() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        int i3 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24);
        int i4 = i2 + 3;
        int i5 = i3 | ((bArr[i2 + 2] & 255) << 8);
        this.f39287b = i2 + 4;
        return (bArr[i4] & 255) | i5;
    }

    public final String a(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = this.f39287b;
        int i4 = (i3 + i2) - 1;
        String strA = t.a(this.f39286a, i3, (i4 >= this.f39288c || this.f39286a[i4] != 0) ? i2 : i2 - 1);
        this.f39287b += i2;
        return strA;
    }

    public l(byte[] bArr) {
        this.f39286a = bArr;
        this.f39288c = bArr.length;
    }

    public final long b() {
        byte[] bArr = this.f39286a;
        int i2 = this.f39287b;
        int i3 = i2 + 7;
        long j2 = ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        this.f39287b = i2 + 8;
        return (bArr[i3] & 255) | j2;
    }

    public final void c(int i2) {
        if (i2 >= 0 && i2 <= this.f39288c) {
            this.f39287b = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public l(int i2, byte[] bArr) {
        this.f39286a = bArr;
        this.f39288c = i2;
    }
}

package com.smartdigimkt.a1;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f39289a;

    /* renamed from: b, reason: collision with root package name */
    public final int f39290b;

    /* renamed from: c, reason: collision with root package name */
    public int f39291c;

    /* renamed from: d, reason: collision with root package name */
    public int f39292d = 0;

    public m(byte[] bArr, int i2, int i3) {
        this.f39289a = bArr;
        this.f39291c = i2;
        this.f39290b = i3;
        a();
    }

    public final int a(int i2) {
        int i3;
        this.f39292d += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f39292d;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f39292d = i5;
            byte[] bArr = this.f39289a;
            int i6 = this.f39291c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!b(i6 + 1)) {
                i = 1;
            }
            this.f39291c = i6 + i;
        }
        byte[] bArr2 = this.f39289a;
        int i7 = this.f39291c;
        int i8 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i7] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f39292d = 0;
            this.f39291c = i7 + (b(i7 + 1) ? 2 : 1);
        }
        a();
        return i8;
    }

    public final boolean b() {
        boolean z2 = (this.f39289a[this.f39291c] & (128 >> this.f39292d)) != 0;
        d();
        return z2;
    }

    public final void c(int i2) {
        int i3 = this.f39291c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        this.f39291c = i5;
        int i6 = (i2 - (i4 * 8)) + this.f39292d;
        this.f39292d = i6;
        if (i6 > 7) {
            this.f39291c = i5 + 1;
            this.f39292d = i6 - 8;
        }
        while (true) {
            int i7 = i3 + 1;
            if (i7 > this.f39291c) {
                a();
                return;
            } else if (b(i7)) {
                this.f39291c++;
                i3 += 3;
            } else {
                i3 = i7;
            }
        }
    }

    public final void d() {
        int i2 = this.f39292d + 1;
        this.f39292d = i2;
        if (i2 == 8) {
            this.f39292d = 0;
            int i3 = this.f39291c;
            this.f39291c = i3 + (b(i3 + 1) ? 2 : 1);
        }
        a();
    }

    public final boolean b(int i2) {
        if (2 > i2 || i2 >= this.f39290b) {
            return false;
        }
        byte[] bArr = this.f39289a;
        return bArr[i2] == 3 && bArr[i2 + (-2)] == 0 && bArr[i2 - 1] == 0;
    }

    public final void a() {
        int i2 = this.f39291c;
        if (i2 >= 0) {
            int i3 = this.f39290b;
            if (i2 < i3) {
                return;
            }
            if (i2 == i3 && this.f39292d == 0) {
                return;
            }
        }
        throw new IllegalStateException();
    }

    public final int c() {
        int i2 = 0;
        while (!b()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? a(i2) : 0);
    }
}

package com.smartdigimkt.a1;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f39282a;

    /* renamed from: b, reason: collision with root package name */
    public int f39283b;

    /* renamed from: c, reason: collision with root package name */
    public int f39284c;

    /* renamed from: d, reason: collision with root package name */
    public int f39285d;

    public k() {
    }

    public final int a(int i2) {
        int i3;
        int i4;
        if (i2 == 0) {
            return 0;
        }
        this.f39284c += i2;
        int i5 = 0;
        while (true) {
            i3 = this.f39284c;
            if (i3 <= 8) {
                break;
            }
            int i6 = i3 - 8;
            this.f39284c = i6;
            byte[] bArr = this.f39282a;
            int i7 = this.f39283b;
            this.f39283b = i7 + 1;
            i5 |= (bArr[i7] & 255) << i6;
        }
        byte[] bArr2 = this.f39282a;
        int i8 = this.f39283b;
        int i9 = ((-1) >>> (32 - i2)) & (i5 | ((bArr2[i8] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f39284c = 0;
            this.f39283b = i8 + 1;
        }
        int i10 = this.f39283b;
        if (i10 < 0 || (i10 >= (i4 = this.f39285d) && !(i10 == i4 && this.f39284c == 0))) {
            throw new IllegalStateException();
        }
        return i9;
    }

    public k(byte[] bArr) {
        int length = bArr.length;
        this.f39282a = bArr;
        this.f39285d = length;
    }
}

package com.umeng.analytics.pro;

/* loaded from: classes5.dex */
public final class eq extends er {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f49299a;

    /* renamed from: b, reason: collision with root package name */
    private int f49300b;

    /* renamed from: c, reason: collision with root package name */
    private int f49301c;

    public eq() {
    }

    @Override // com.umeng.analytics.pro.er
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.er
    public void b() throws es {
    }

    @Override // com.umeng.analytics.pro.er
    public void c() {
    }

    public void e() {
        this.f49299a = null;
    }

    @Override // com.umeng.analytics.pro.er
    public byte[] f() {
        return this.f49299a;
    }

    @Override // com.umeng.analytics.pro.er
    public int g() {
        return this.f49300b;
    }

    @Override // com.umeng.analytics.pro.er
    public int h() {
        return this.f49301c - this.f49300b;
    }

    public eq(byte[] bArr) {
        a(bArr);
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.analytics.pro.er
    public void b(byte[] bArr, int i2, int i3) throws es {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public void c(byte[] bArr, int i2, int i3) {
        this.f49299a = bArr;
        this.f49300b = i2;
        this.f49301c = i2 + i3;
    }

    @Override // com.umeng.analytics.pro.er
    public int a(byte[] bArr, int i2, int i3) throws es {
        int iH = h();
        if (i3 > iH) {
            i3 = iH;
        }
        if (i3 > 0) {
            System.arraycopy(this.f49299a, this.f49300b, bArr, i2, i3);
            a(i3);
        }
        return i3;
    }

    public eq(byte[] bArr, int i2, int i3) {
        c(bArr, i2, i3);
    }

    @Override // com.umeng.analytics.pro.er
    public void a(int i2) {
        this.f49300b += i2;
    }
}

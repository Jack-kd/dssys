package com.umeng.analytics.pro;

/* loaded from: classes5.dex */
public class dc {

    /* renamed from: a, reason: collision with root package name */
    private short[] f49159a;

    /* renamed from: b, reason: collision with root package name */
    private int f49160b = -1;

    public dc(int i2) {
        this.f49159a = new short[i2];
    }

    private void d() {
        short[] sArr = this.f49159a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.f49159a = sArr2;
    }

    public short a() {
        short[] sArr = this.f49159a;
        int i2 = this.f49160b;
        this.f49160b = i2 - 1;
        return sArr[i2];
    }

    public short b() {
        return this.f49159a[this.f49160b];
    }

    public void c() {
        this.f49160b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i2 = 0; i2 < this.f49159a.length; i2++) {
            if (i2 != 0) {
                sb.append(" ");
            }
            if (i2 == this.f49160b) {
                sb.append(">>");
            }
            sb.append((int) this.f49159a[i2]);
            if (i2 == this.f49160b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }

    public void a(short s2) {
        if (this.f49159a.length == this.f49160b + 1) {
            d();
        }
        short[] sArr = this.f49159a;
        int i2 = this.f49160b + 1;
        this.f49160b = i2;
        sArr[i2] = s2;
    }
}

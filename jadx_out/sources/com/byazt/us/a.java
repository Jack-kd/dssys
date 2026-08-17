package com.byazt.us;

@com.byazt.kj.hp(hp = {0, 1, 226, 54})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public float[] f26357a;
    public float[] eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public float[] f26358j;
    public float[] jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26359l;

    /* renamed from: q, reason: collision with root package name */
    public int[] f26360q;

    /* renamed from: s, reason: collision with root package name */
    public int[] f26361s;

    /* renamed from: w, reason: collision with root package name */
    public float[] f26362w;

    public void hp(int i2) {
        float[] fArr = this.jx;
        if (fArr == null || fArr.length < i2) {
            this.jx = new float[i2];
            this.f26358j = new float[i2];
            this.f26362w = new float[i2];
            this.f26357a = new float[i2];
            this.eb = new float[i2];
            this.f26361s = new int[i2];
            this.f26360q = new int[i2];
        }
    }
}

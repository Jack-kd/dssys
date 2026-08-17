package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39559a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f39560b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f39561c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ float f39562d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f39563e;

    public p(s sVar, int i2, int i3, int i4, float f2) {
        this.f39563e = sVar;
        this.f39559a = i2;
        this.f39560b = i3;
        this.f39561c = i4;
        this.f39562d = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39563e.f39569b.a(this.f39559a, this.f39560b, this.f39561c, this.f39562d);
    }
}

package com.smartdigimkt.l0;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41538a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f41539b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f41540c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f41541d;

    public i(l lVar, int i2, long j2, long j3) {
        this.f41541d = lVar;
        this.f41538a = i2;
        this.f41539b = j2;
        this.f41540c = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f41541d.f41558b.a(this.f41538a, this.f41539b, this.f41540c);
    }
}

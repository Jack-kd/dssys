package com.smartdigimkt.l0;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41497a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f41498b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f41499c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f41500d;

    public g(l lVar, String str, long j2, long j3) {
        this.f41500d = lVar;
        this.f41497a = str;
        this.f41498b = j2;
        this.f41499c = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f41500d.f41558b.a(this.f41497a, this.f41498b, this.f41499c);
    }
}

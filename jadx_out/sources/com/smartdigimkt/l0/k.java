package com.smartdigimkt.l0;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41555a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f41556b;

    public k(l lVar, int i2) {
        this.f41556b = lVar;
        this.f41555a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f41556b.f41558b.b(this.f41555a);
    }
}

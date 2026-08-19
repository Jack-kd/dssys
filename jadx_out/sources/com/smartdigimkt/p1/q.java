package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.i0.f f42568a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42569b;

    public q(r rVar, com.smartdigimkt.i0.f fVar) {
        this.f42569b = rVar;
        this.f42568a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42569b.f42576g;
        if (aVar != null) {
            aVar.onShowFailed(this.f42568a);
        }
    }
}

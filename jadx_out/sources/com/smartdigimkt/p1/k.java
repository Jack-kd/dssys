package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f42561a;

    public k(r rVar) {
        this.f42561a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42561a.f42576g;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onVideoAdPlayStart();
    }
}

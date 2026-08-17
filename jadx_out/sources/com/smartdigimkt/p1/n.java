package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f42564a;

    public n(r rVar) {
        this.f42564a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42564a.f42576g;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onRewarded();
    }
}

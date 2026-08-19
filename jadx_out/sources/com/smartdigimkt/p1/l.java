package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f42562a;

    public l(r rVar) {
        this.f42562a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42562a.f42576g;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onVideoAdPlayEnd();
    }
}

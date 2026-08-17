package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f42565a;

    public o(r rVar) {
        this.f42565a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42565a.f42576g;
        if (aVar != null) {
            aVar.onAdClosed();
        }
    }
}

package com.smartdigimkt.k;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41141a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f41142b;

    public f(o oVar, r rVar) {
        this.f41142b = oVar;
        this.f41141a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o oVar = this.f41142b;
        com.smartdigimkt.k3.g gVar = oVar.f41162b;
        if (gVar != null) {
            try {
                gVar.a(o.a(oVar, this.f41141a));
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }
}

package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f42555a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42556b;

    public h(r rVar, int i2) {
        this.f42556b = rVar;
        this.f42555a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42556b.f42576g;
        if (aVar == null || !(aVar instanceof s)) {
            return;
        }
        ((s) aVar).a(this.f42555a);
    }
}

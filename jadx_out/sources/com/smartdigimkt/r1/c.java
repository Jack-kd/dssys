package com.smartdigimkt.r1;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.f f42943a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f42944b;

    public c(d dVar, com.smartdigimkt.i5.j jVar) {
        this.f42944b = dVar;
        this.f42943a = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f42944b.d()) {
            com.smartdigimkt.p1.f fVar = this.f42943a;
            if (fVar != null) {
                fVar.b();
                return;
            }
            return;
        }
        com.smartdigimkt.p1.f fVar2 = this.f42943a;
        if (fVar2 != null) {
            fVar2.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4561D));
        }
    }
}

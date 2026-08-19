package com.smartdigimkt.g5;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.x3.b {

    /* renamed from: a, reason: collision with root package name */
    public final a f40414a;

    /* renamed from: b, reason: collision with root package name */
    public final c f40415b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f40416c;

    public b(c cVar, a aVar, c cVar2) {
        this.f40416c = cVar;
        this.f40414a = aVar;
        this.f40415b = cVar2;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f40414a.f40398e;
        this.f40414a.f40399f.get();
        if (this.f40414a.f40399f.get()) {
            return;
        }
        c cVar = this.f40415b;
        if (cVar != null) {
            cVar.c(this.f40414a);
        } else {
            this.f40414a.a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4592i, "load ad timeout."));
            this.f40416c.d(this.f40414a);
        }
    }
}

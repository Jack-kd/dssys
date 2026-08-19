package com.smartdigimkt.z4;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.x3.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.e f45488a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f45489b;

    public n(o oVar, com.smartdigimkt.a5.e eVar) {
        this.f45489b = oVar;
        this.f45488a = eVar;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f45489b.f45494e.set(true);
        this.f45489b.b(this.f45488a);
    }
}

package com.smartdigimkt.l0;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j0.s f41523a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f41524b;

    public h(l lVar, com.smartdigimkt.j0.s sVar) {
        this.f41524b = lVar;
        this.f41523a = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f41524b.f41558b.a(this.f41523a);
    }
}

package com.smartdigimkt.j;

/* loaded from: classes5.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40815a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f40816b;

    public s(u uVar, com.smartdigimkt.k.r rVar) {
        this.f40816b = uVar;
        this.f40815a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.k.r rVar = this.f40815a;
        com.smartdigimkt.k.o oVar = this.f40816b.f40834o;
        if (oVar != null) {
            oVar.a(rVar, "at_offer_action_3");
        }
        com.smartdigimkt.m3.c cVar = this.f40815a.f41187j;
        if (cVar != null && (eVar = cVar.f41832w) != null && eVar.f41962p1 == 1) {
            u.a(this.f40816b);
        }
        this.f40816b.d(this.f40815a);
        this.f40816b.f(this.f40815a);
    }
}

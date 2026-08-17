package com.smartdigimkt.j;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40792a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f40793b;

    public j(u uVar, com.smartdigimkt.m3.c cVar) {
        this.f40793b = uVar;
        this.f40792a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.c cVar = this.f40792a;
        if (cVar == null || (eVar = cVar.f41832w) == null || eVar.f41962p1 != 1) {
            return;
        }
        this.f40793b.f40829j.put(cVar.f41822m, cVar);
        u.a(this.f40793b);
    }
}

package com.smartdigimkt.k;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41156a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f41157b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o f41158c;

    public l(o oVar, String str, n nVar) {
        this.f41158c = oVar;
        this.f41156a = str;
        this.f41157b = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.g gVar = this.f41158c.f41162b;
        if (gVar == null) {
            n nVar = this.f41157b;
            if (nVar != null) {
                nVar.onCallback(null);
                return;
            }
            return;
        }
        com.smartdigimkt.m3.f fVarA = gVar.a(this.f41156a);
        n nVar2 = this.f41157b;
        if (nVar2 != null) {
            if (fVarA != null) {
                nVar2.onCallback(o.a(this.f41158c, fVarA));
            } else {
                nVar2.onCallback(null);
            }
        }
    }
}

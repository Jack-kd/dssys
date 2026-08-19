package com.smartdigimkt.j;

/* loaded from: classes5.dex */
public final class p implements com.smartdigimkt.k.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f40808a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f40810c;

    public p(u uVar, long j2, com.smartdigimkt.k.r rVar) {
        this.f40810c = uVar;
        this.f40808a = j2;
        this.f40809b = rVar;
    }

    @Override // com.smartdigimkt.k.n
    public final void onCallback(com.smartdigimkt.k.r rVar) {
        if (rVar.f41185h <= this.f40808a) {
            this.f40810c.b(rVar);
        } else {
            this.f40810c.g(this.f40809b);
        }
    }
}

package com.smartdigimkt.r1;

import com.smartdigimkt.p1.u;

/* loaded from: classes5.dex */
public final class e extends com.smartdigimkt.p1.d {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f42951d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f42952e;

    public e(f fVar, String str) {
        this.f42952e = fVar;
        this.f42951d = str;
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(com.smartdigimkt.i0.f fVar) {
        fVar.a();
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onShowFailed(fVar);
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void b() {
    }

    @Override // com.smartdigimkt.p1.d
    public final void d() {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onVideoAdPlayEnd();
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void e() {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onVideoAdPlayStart();
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void b(u uVar) {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onAdShow(uVar);
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void a() {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onAdClosed();
        }
        com.smartdigimkt.p1.e eVar = com.smartdigimkt.p1.b.f42548a;
        eVar.f42554a.remove(this.f42951d);
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(u uVar) {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onAdClick(uVar);
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(boolean z2) {
        com.smartdigimkt.p1.g gVar = this.f42952e.f42954g;
        if (gVar != null) {
            gVar.onDeeplinkCallback(z2);
        }
    }
}

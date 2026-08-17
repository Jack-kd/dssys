package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.MraidMediaView;
import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;

/* loaded from: classes5.dex */
public final class y3 implements u3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidMediaView f44657a;

    public y3(MraidMediaView mraidMediaView) {
        this.f44657a = mraidMediaView;
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a(String str) {
        z3 z3Var = this.f44657a.f43499l;
        if (z3Var != null) {
            com.smartdigimkt.m1.s sVar = ((com.smartdigimkt.m1.q) z3Var).f41740a;
            com.smartdigimkt.m3.k kVar = sVar.f41744b;
            if (kVar != null) {
                kVar.f41821l = str;
            }
            sVar.a(sVar.f41741E, 1, 13, false);
        }
    }

    @Override // com.smartdigimkt.v1.u3
    public final void b() {
    }

    @Override // com.smartdigimkt.v1.u3
    public final void c() {
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a() {
        com.smartdigimkt.m1.s sVar;
        OwnNativeATView ownNativeATView;
        MraidMediaView mraidMediaView = this.f44657a;
        mraidMediaView.f43500m = true;
        synchronized (mraidMediaView) {
            if (mraidMediaView.f43500m && mraidMediaView.f43501n && !mraidMediaView.f43502o) {
                mraidMediaView.f43502o = true;
                com.smartdigimkt.y3.h.a(mraidMediaView.f43250a, mraidMediaView.f43252c);
            }
        }
        z3 z3Var = this.f44657a.f43499l;
        if (z3Var == null || (ownNativeATView = (sVar = ((com.smartdigimkt.m1.q) z3Var).f41740a).f41724p) == null) {
            return;
        }
        sVar.a(ownNativeATView);
    }
}

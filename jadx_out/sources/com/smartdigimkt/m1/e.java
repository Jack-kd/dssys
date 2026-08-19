package com.smartdigimkt.m1;

import com.smartdigimkt.p1.u;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;
import com.smartdigimkt.z.w;

/* loaded from: classes5.dex */
public final class e implements w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41709a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41710b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f41711c;

    public e(l lVar, int i2, int i3) {
        this.f41711c = lVar;
        this.f41709a = i2;
        this.f41710b = i3;
    }

    @Override // com.smartdigimkt.z.w
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        return false;
    }

    @Override // com.smartdigimkt.z.w
    public final void b() {
        this.f41711c.e();
    }

    @Override // com.smartdigimkt.z.w
    public final void c() {
        com.smartdigimkt.k2.s sVarA = com.smartdigimkt.k2.s.a();
        synchronized (sVarA.f41341b) {
            sVarA.f41343d = true;
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void a() {
        com.smartdigimkt.k2.p pVarA;
        if (this.f41711c.f41723o) {
            return;
        }
        com.smartdigimkt.m3.k kVar = this.f41711c.f41744b;
        if (kVar != null && kVar.k()) {
            l lVar = this.f41711c;
            com.smartdigimkt.m3.k kVar2 = lVar.f41744b;
            com.smartdigimkt.m3.e eVar = kVar2.f41832w;
            if (eVar == null || eVar.f41858G1 != 2) {
                com.smartdigimkt.y3.h.b(1, lVar.f41745c, kVar2);
                return;
            }
            com.smartdigimkt.y3.h.b(2, lVar.f41745c, kVar2);
        }
        l lVar2 = this.f41711c;
        if (lVar2.f41747e != null) {
            u uVar = new u();
            int i2 = this.f41709a;
            int i3 = this.f41710b;
            uVar.f42577a = i2;
            uVar.f42578b = i3;
            uVar.f42581e = lVar2.f41745c.f41644r.f41863I0;
            j jVar = lVar2.f41729u;
            if (jVar != null && (pVarA = jVar.a()) != null) {
                BaseIncentiveTaskView baseIncentiveTaskView = pVarA.f41326j;
                if (baseIncentiveTaskView instanceof CountDownSkipIncentiveTaskView) {
                    ((CountDownSkipIncentiveTaskView) baseIncentiveTaskView).isShowingTaskCompletedManualClaimUi();
                }
            }
            this.f41711c.f41747e.onAdClick(uVar);
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void a(boolean z2) {
        com.smartdigimkt.p1.a aVar;
        com.smartdigimkt.m3.e eVar;
        if (this.f41711c.f41723o) {
            return;
        }
        com.smartdigimkt.m3.k kVar = this.f41711c.f41744b;
        if ((kVar == null || !kVar.k() || (eVar = this.f41711c.f41744b.f41832w) == null || eVar.f41858G1 == 2) && (aVar = this.f41711c.f41747e) != null) {
            aVar.onDeeplinkCallback(z2);
        }
    }
}

package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.BaseATView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class t implements com.smartdigimkt.z.w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.u f44612a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44613b;

    public t(BaseATView baseATView, com.smartdigimkt.p1.u uVar) {
        this.f44613b = baseATView;
        this.f44612a = uVar;
    }

    @Override // com.smartdigimkt.z.w
    public final void a() {
        com.smartdigimkt.k2.p pVarA;
        com.smartdigimkt.m3.e eVar;
        if (this.f44613b.f43221g) {
            return;
        }
        com.smartdigimkt.m3.c cVar = this.f44613b.f43217c;
        if ((cVar instanceof com.smartdigimkt.m3.k) && ((com.smartdigimkt.m3.k) cVar).k()) {
            BaseATView baseATView = this.f44613b;
            com.smartdigimkt.m3.c cVar2 = baseATView.f43217c;
            if (cVar2 == null || (eVar = cVar2.f41832w) == null || eVar.f41858G1 != 2) {
                com.smartdigimkt.y3.h.b(1, baseATView.f43216b, cVar2);
                return;
            }
            com.smartdigimkt.y3.h.b(2, baseATView.f43216b, cVar2);
        }
        BaseATView baseATView2 = this.f44613b;
        if (this.f44612a != null) {
            r rVar = baseATView2.f43230p;
            if (rVar != null && (pVarA = rVar.a()) != null) {
                BaseIncentiveTaskView baseIncentiveTaskView = pVarA.f41326j;
                if (baseIncentiveTaskView instanceof CountDownSkipIncentiveTaskView) {
                    ((CountDownSkipIncentiveTaskView) baseIncentiveTaskView).isShowingTaskCompletedManualClaimUi();
                }
            }
        } else {
            baseATView2.getClass();
        }
        this.f44613b.a(this.f44612a);
        BaseATView baseATView3 = this.f44613b;
        if (baseATView3.f43214C) {
            return;
        }
        baseATView3.f43214C = true;
        com.smartdigimkt.m3.c cVar3 = baseATView3.f43217c;
        if ((cVar3 instanceof com.smartdigimkt.m3.k) && baseATView3.f43216b.f41636j == 67) {
            if (((com.smartdigimkt.m3.k) cVar3).a(true, false)) {
                com.smartdigimkt.g3.c.a(baseATView3.getContext()).a(baseATView3.f43217c.f41806a, 1, 0);
            }
            if (((com.smartdigimkt.m3.k) baseATView3.f43217c).a(false, false)) {
                com.smartdigimkt.g3.b.a(baseATView3.getContext()).a(baseATView3.f43217c.f41808b, 1, 0);
            }
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void b() {
        this.f44613b.j();
    }

    @Override // com.smartdigimkt.z.w
    public final void c() {
        this.f44613b.i();
    }

    @Override // com.smartdigimkt.z.w
    public final void a(boolean z2) {
        com.smartdigimkt.m3.c cVar;
        com.smartdigimkt.m3.e eVar;
        if (this.f44613b.f43221g) {
            return;
        }
        com.smartdigimkt.m3.c cVar2 = this.f44613b.f43217c;
        if (!(cVar2 instanceof com.smartdigimkt.m3.k) || !((com.smartdigimkt.m3.k) cVar2).k() || (cVar = this.f44613b.f43217c) == null || (eVar = cVar.f41832w) == null || eVar.f41858G1 == 2) {
            this.f44613b.a(z2);
        }
    }

    @Override // com.smartdigimkt.z.w
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        return this.f44613b.a(str, iOfferClickHandler);
    }
}

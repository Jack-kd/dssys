package com.smartdigimkt.k2;

import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.FullScreenATView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.v1.q2;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f41320a;

    public l(p pVar) {
        this.f41320a = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.e eVar;
        p pVar = this.f41320a;
        BaseIncentiveTaskView baseIncentiveTaskViewA = pVar.a();
        pVar.f41326j = baseIncentiveTaskViewA;
        if (baseIncentiveTaskViewA != null) {
            pVar.f41328l = System.currentTimeMillis();
            pVar.f41326j.initSetting(pVar.f41305b, pVar.f41306c.f41644r, pVar.f41327k, new n(pVar));
            if (pVar.f41309f != null) {
                pVar.f41309f.addView(pVar.f41326j, new RelativeLayout.LayoutParams(-1, -1));
                e eVar2 = pVar.f41311h;
                if (eVar2 instanceof q2) {
                    q2 q2Var = (q2) eVar2;
                    com.smartdigimkt.c2.d dVar = q2Var.f44581a.f43229o;
                    if (dVar != null) {
                        dVar.f39650q = false;
                        dVar.b();
                    }
                    com.smartdigimkt.l3.a aVar = pVar.f41306c;
                    if (aVar == null || (eVar = aVar.f41644r) == null || !com.smartdigimkt.m3.h.a(eVar.f41897T1)) {
                        return;
                    }
                    FullScreenATView fullScreenATView = q2Var.f44581a;
                    String str = FullScreenATView.TAG;
                    fullScreenATView.S();
                }
            }
        }
    }
}

package com.smartdigimkt.k2;

import android.content.Context;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class m extends CountDownSkipIncentiveTaskView {

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ p f41321n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(p pVar, Context context) {
        super(context);
        this.f41321n = pVar;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final void e() {
        com.smartdigimkt.m3.e eVar;
        p pVar = this.f41321n;
        if (pVar.c()) {
            pVar.f41332p = true;
            pVar.f41329m = true;
            com.smartdigimkt.l3.a aVar = pVar.f41306c;
            if (aVar == null || (eVar = aVar.f41644r) == null) {
                return;
            }
            com.smartdigimkt.m3.o.b(eVar.f41897T1);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView
    public final boolean k() {
        return this.f41321n.f41332p;
    }
}

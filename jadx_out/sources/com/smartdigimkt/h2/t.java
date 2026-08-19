package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View;

/* loaded from: classes5.dex */
public final class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f40531a;

    public t(v vVar) {
        this.f40531a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseLifecycleG2CV2View baseLifecycleG2CV2View;
        com.smartdigimkt.k2.e eVar;
        v vVar = this.f40531a;
        if (vVar == null || (eVar = (baseLifecycleG2CV2View = ((c) vVar).f40462a).f43840e) == null) {
            return;
        }
        eVar.a(11, baseLifecycleG2CV2View.getClickArea());
    }
}

package com.smartdigimkt.h2;

import android.view.View;

/* loaded from: classes5.dex */
public final class u implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f40533a;

    public u(v vVar) {
        this.f40533a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        v vVar = this.f40533a;
        if (vVar != null) {
            ((c) vVar).f40462a.a();
        }
    }
}

package com.smartdigimkt.g2;

import android.view.View;

/* loaded from: classes5.dex */
public final class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f40357a;

    public r(v vVar) {
        this.f40357a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a aVar = this.f40357a.f40324e;
        if (aVar != null) {
            aVar.a(14, 32);
        }
    }
}

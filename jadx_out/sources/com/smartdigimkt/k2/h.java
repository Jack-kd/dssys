package com.smartdigimkt.k2;

import android.view.View;

/* loaded from: classes5.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f41314a;

    public h(i iVar) {
        this.f41314a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e eVar = this.f41314a.f41311h;
        if (eVar != null) {
            eVar.a(1, 12);
        }
    }
}

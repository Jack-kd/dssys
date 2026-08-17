package com.smartdigimkt.g2;

import android.view.View;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f40335a;

    public e(g gVar) {
        this.f40335a = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g gVar = this.f40335a;
        a aVar = gVar.f40324e;
        if (aVar != null) {
            aVar.a(14, 26);
        } else {
            gVar.a();
        }
    }
}

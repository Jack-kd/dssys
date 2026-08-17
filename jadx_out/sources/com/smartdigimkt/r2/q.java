package com.smartdigimkt.r2;

import android.view.View;

/* loaded from: classes5.dex */
public final class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f43022a;

    public q(t tVar) {
        this.f43022a = tVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.n2.a aVar = this.f43022a.f43036l;
        if (aVar != null) {
            aVar.a(10, 14);
        }
    }
}

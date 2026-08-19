package com.smartdigimkt.r2;

import android.content.Context;
import android.view.View;

/* loaded from: classes5.dex */
public final class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f42987a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f42988b;

    public k(l lVar, Context context) {
        this.f42988b = lVar;
        this.f42987a = context;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.x.n nVar = new com.smartdigimkt.x.n();
        Context context = this.f42987a;
        l lVar = this.f42988b;
        nVar.a(context, lVar.f42990b, lVar.f42991c, new j());
    }
}

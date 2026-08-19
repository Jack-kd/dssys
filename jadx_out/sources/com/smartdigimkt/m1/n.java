package com.smartdigimkt.m1;

import android.content.Context;
import android.view.View;

/* loaded from: classes5.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f41735a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f41736b;

    public n(o oVar, Context context) {
        this.f41736b = oVar;
        this.f41735a = context;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.x.n nVar = new com.smartdigimkt.x.n();
        Context context = this.f41735a;
        o oVar = this.f41736b;
        nVar.a(context, oVar.f41744b, oVar.f41745c, new m());
    }
}

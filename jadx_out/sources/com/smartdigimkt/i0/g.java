package com.smartdigimkt.i0;

import android.app.Dialog;
import android.view.View;

/* loaded from: classes5.dex */
public final class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Dialog f40653a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f40654b;

    public g(i iVar, Dialog dialog) {
        this.f40654b = iVar;
        this.f40653a = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i iVar = this.f40654b;
        String str = iVar.f40660c;
        com.smartdigimkt.m3.c cVar = iVar.f40658a;
        com.smartdigimkt.y3.h.a(str, cVar.f41806a, iVar.f40659b, 7, (String) null, 0L, 0L, cVar, 0, 0L);
        try {
            this.f40653a.dismiss();
        } catch (Throwable unused) {
        }
    }
}

package com.smartdigimkt.h1;

import android.view.View;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40428a;

    public e(i iVar) {
        this.f40428a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i iVar = this.f40428a;
        iVar.getClass();
        com.smartdigimkt.b4.e.a().a(30L, (Runnable) new h(iVar));
    }
}

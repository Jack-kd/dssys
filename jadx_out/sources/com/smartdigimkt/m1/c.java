package com.smartdigimkt.m1;

import android.view.View;

/* loaded from: classes5.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f41707a;

    public c(l lVar) {
        this.f41707a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f41707a.a(view, false);
    }
}

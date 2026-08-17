package com.smartdigimkt.m1;

import android.view.View;

/* loaded from: classes5.dex */
public final class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f41708a;

    public d(l lVar) {
        this.f41708a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f41708a.a(view, true);
    }
}

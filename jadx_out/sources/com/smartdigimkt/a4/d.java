package com.smartdigimkt.a4;

import android.view.ViewTreeObserver;

/* loaded from: classes5.dex */
public final class d implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f39319a;

    public d(h hVar) {
        this.f39319a = hVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        h hVar = this.f39319a;
        if (!hVar.f39338i) {
            hVar.f39338i = true;
            hVar.f39337h.postDelayed(hVar.f39336g, 100);
        }
        return true;
    }
}

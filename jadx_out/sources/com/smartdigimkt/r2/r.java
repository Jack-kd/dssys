package com.smartdigimkt.r2;

import android.view.View;

/* loaded from: classes5.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f43023a;

    public r(t tVar) {
        this.f43023a = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view = this.f43023a.f43033i;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}

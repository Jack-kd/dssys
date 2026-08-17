package com.smartdigimkt.v1;

import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44524a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f44525b;

    public l(n nVar, Bitmap bitmap) {
        this.f44525b = nVar;
        this.f44524a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f44525b;
        nVar.f44549b.setBitmapAndResize(this.f44524a, nVar.f44548a.getWidth(), this.f44525b.f44548a.getHeight());
        this.f44525b.f44549b.setVisibility(0);
    }
}

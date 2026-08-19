package com.smartdigimkt.v1;

import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44456a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f44457b;

    public e(g gVar, Bitmap bitmap) {
        this.f44457b = gVar;
        this.f44456a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar = this.f44457b;
        gVar.f44475b.setBitmapAndResize(this.f44456a, gVar.f44474a.getWidth(), this.f44457b.f44474a.getHeight());
        this.f44457b.f44475b.setVisibility(0);
    }
}

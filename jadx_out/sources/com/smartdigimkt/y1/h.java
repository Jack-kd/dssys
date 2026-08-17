package com.smartdigimkt.y1;

import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f45175a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f45176b;

    public h(j jVar, Bitmap bitmap) {
        this.f45176b = jVar;
        this.f45175a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f45176b.f45178a.setBitmapAndResize(this.f45175a, this.f45176b.f45179b.getWidth(), this.f45176b.f45179b.getHeight());
    }
}

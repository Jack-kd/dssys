package com.smartdigimkt.b1;

import android.view.Surface;

/* loaded from: classes5.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Surface f39564a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f39565b;

    public q(s sVar, Surface surface) {
        this.f39565b = sVar;
        this.f39564a = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39565b.f39569b.a(this.f39564a);
    }
}

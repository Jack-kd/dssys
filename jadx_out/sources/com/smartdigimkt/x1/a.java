package com.smartdigimkt.x1;

import android.animation.ValueAnimator;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f45058a;

    public a(b bVar) {
        this.f45058a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ValueAnimator valueAnimator = this.f45058a.f45060b;
        if (valueAnimator == null || valueAnimator.isStarted()) {
            return;
        }
        this.f45058a.c();
        try {
            this.f45058a.f45060b.start();
        } catch (Throwable unused) {
        }
    }
}

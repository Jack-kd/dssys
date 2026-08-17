package com.smartdigimkt.f0;

import android.animation.ValueAnimator;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f40185a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f40186b;

    public f(g gVar, RelativeLayout relativeLayout) {
        this.f40186b = gVar;
        this.f40185a = relativeLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40186b.f40191e = ValueAnimator.ofFloat(0.0f, 720.0f);
        this.f40186b.f40191e.setDuration(2000L);
        this.f40186b.f40191e.addUpdateListener(new e(this));
        if (this.f40186b.f40191e.isStarted()) {
            return;
        }
        this.f40186b.f40191e.start();
    }
}

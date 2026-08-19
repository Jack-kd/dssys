package com.smartdigimkt.p2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimpleCircleView;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleCircleView f42585a;

    public b(SimpleCircleView simpleCircleView) {
        this.f42585a = simpleCircleView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f42585a.setScaleX(0.1f);
        this.f42585a.setScaleY(0.1f);
        this.f42585a.f44002b = ValueAnimator.ofFloat(0.1f, Math.max((this.f42585a.getWidth() <= 0 || this.f42585a.getHeight() <= 0) ? 3.0f : (float) (Math.hypot(this.f42585a.getWidth() / 2, this.f42585a.getHeight() / 2) / (Math.min(this.f42585a.getWidth(), this.f42585a.getHeight()) / 2)), 3.0f));
        this.f42585a.f44002b.setDuration(500L);
        this.f42585a.f44002b.addUpdateListener(new a(this));
        this.f42585a.f44002b.start();
    }
}

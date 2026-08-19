package com.octopus.ad.internal.a;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Interpolator;

/* loaded from: classes4.dex */
public class c implements g {

    /* renamed from: a, reason: collision with root package name */
    private Animation f34121a;

    /* renamed from: b, reason: collision with root package name */
    private Animation f34122b;

    public c(long j2) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        a(accelerateInterpolator, j2);
        b(accelerateInterpolator, j2);
    }

    private void a(Interpolator interpolator, long j2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f34121a = alphaAnimation;
        alphaAnimation.setDuration(j2);
        this.f34121a.setInterpolator(interpolator);
    }

    private void b(Interpolator interpolator, long j2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f34122b = alphaAnimation;
        alphaAnimation.setDuration(j2);
        this.f34122b.setInterpolator(interpolator);
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation a() {
        return this.f34121a;
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation b() {
        return this.f34122b;
    }
}

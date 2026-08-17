package com.smartdigimkt.v1;

import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;

/* loaded from: classes5.dex */
public final class h3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j3 f44490a;

    public h3(j3 j3Var) {
        this.f44490a = j3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f44490a.f44510b.setAlpha(1.0f);
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setDuration(1000L);
            rotateAnimation.setInterpolator(new LinearInterpolator());
            rotateAnimation.setRepeatCount(-1);
            this.f44490a.f44510b.startAnimation(rotateAnimation);
        } catch (Throwable unused) {
        }
    }
}

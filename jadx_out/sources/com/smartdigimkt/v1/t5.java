package com.smartdigimkt.v1;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.SinglePictureBottomSlideSplashATView;

/* loaded from: classes5.dex */
public final class t5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureBottomSlideSplashATView f44619a;

    public t5(SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView) {
        this.f44619a = singlePictureBottomSlideSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ObjectAnimator objectAnimator = this.f44619a.f43640t0;
            if (objectAnimator != null) {
                objectAnimator.start();
            }
            ValueAnimator valueAnimator = this.f44619a.f43641u0;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        } catch (Throwable unused) {
        }
    }
}

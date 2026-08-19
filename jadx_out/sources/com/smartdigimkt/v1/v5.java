package com.smartdigimkt.v1;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.SinglePictureBottomSlideSplashATView;

/* loaded from: classes5.dex */
public final class v5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureBottomSlideSplashATView f44633a;

    public v5(SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView) {
        this.f44633a = singlePictureBottomSlideSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ObjectAnimator objectAnimator = this.f44633a.f43640t0;
            if (objectAnimator != null) {
                objectAnimator.removeAllListeners();
                this.f44633a.f43640t0.cancel();
            }
            ValueAnimator valueAnimator = this.f44633a.f43641u0;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.f44633a.f43641u0.cancel();
            }
        } catch (Throwable unused) {
        }
    }
}

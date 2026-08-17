package com.smartdigimkt.v1;

import android.util.Log;
import com.smartdigimkt.sdk.basead.ui.SinglePictureBottomSlideSplashATView;

/* loaded from: classes5.dex */
public final class z5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureBottomSlideSplashATView f44666a;

    public z5(SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView) {
        this.f44666a = singlePictureBottomSlideSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView = this.f44666a;
        if (singlePictureBottomSlideSplashATView.f43335K == null) {
            return;
        }
        int width = singlePictureBottomSlideSplashATView.getWidth();
        int height = this.f44666a.getHeight();
        int i2 = (int) (this.f44666a.getResources().getDisplayMetrics().heightPixels * 0.5d);
        if (width < ((int) (this.f44666a.getResources().getDisplayMetrics().widthPixels * 0.5d))) {
            this.f44666a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "Splash display width is less than 50% of screen width!"));
            Log.e("sdm", "Splash display width is less than 50% of screen width!");
        } else if (height >= i2) {
            this.f44666a.k();
        } else {
            this.f44666a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "Splash display height is less than 50% of screen height!"));
            Log.e("sdm", "Splash display height is less than 50% of screen height!");
        }
    }
}

package com.smartdigimkt.v1;

import android.util.Log;
import com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView;

/* loaded from: classes5.dex */
public final class e6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureSplashATView f44465a;

    public e6(SinglePictureSplashATView singlePictureSplashATView) {
        this.f44465a = singlePictureSplashATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SinglePictureSplashATView singlePictureSplashATView = this.f44465a;
        if (singlePictureSplashATView.f43335K == null) {
            return;
        }
        int width = singlePictureSplashATView.getWidth();
        int height = this.f44465a.getHeight();
        int i2 = (int) (this.f44465a.getResources().getDisplayMetrics().heightPixels * 0.5d);
        if (width < ((int) (this.f44465a.getResources().getDisplayMetrics().widthPixels * 0.5d))) {
            this.f44465a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "Splash display width is less than 50% of screen width!"));
            Log.e("sdm", "Splash display width is less than 50% of screen width!");
        } else if (height < i2) {
            this.f44465a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "Splash display height is less than 50% of screen height!"));
            Log.e("sdm", "Splash display height is less than 50% of screen height!");
        } else {
            SinglePictureSplashATView singlePictureSplashATView2 = this.f44465a;
            int i3 = SinglePictureSplashATView.f43642l0;
            singlePictureSplashATView2.k();
        }
    }
}

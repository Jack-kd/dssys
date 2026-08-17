package com.smartdigimkt.h2;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.SwipeG2CV2View;

/* loaded from: classes5.dex */
public final class c1 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeG2CV2View f40466a;

    public c1(SwipeG2CV2View swipeG2CV2View) {
        this.f40466a = swipeG2CV2View;
    }

    public final /* synthetic */ void a() {
        SwipeG2CV2View swipeG2CV2View = this.f40466a;
        int i2 = SwipeG2CV2View.SWIPE_TYPE_HORIZONTAL;
        swipeG2CV2View.b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        this.f40466a.f43933h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        SwipeG2CV2View swipeG2CV2View = this.f40466a;
        int i2 = swipeG2CV2View.f43945t;
        if (i2 == 1 ? (imageView = swipeG2CV2View.f43941p) == null || imageView.getWidth() <= 0 : i2 == 2 ? (imageView2 = swipeG2CV2View.f43942q) == null || imageView2.getHeight() <= 0 : (imageView3 = swipeG2CV2View.f43943r) == null || imageView3.getWidth() <= 0 || (imageView4 = swipeG2CV2View.f43944s) == null || imageView4.getHeight() <= 0) {
            this.f40466a.f43933h.post(new Runnable() { // from class: Z0.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f730b.a();
                }
            });
        } else {
            this.f40466a.b();
        }
    }
}

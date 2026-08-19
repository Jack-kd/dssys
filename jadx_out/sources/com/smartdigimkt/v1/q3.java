package com.smartdigimkt.v1;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.MraidContainerView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class q3 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver f44582a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MraidContainerView f44583b;

    public q3(MraidContainerView mraidContainerView, ViewTreeObserver viewTreeObserver) {
        this.f44583b = mraidContainerView;
        this.f44582a = viewTreeObserver;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            MraidContainerView mraidContainerView = this.f44583b;
            if (!mraidContainerView.f43494r) {
                mraidContainerView.f43494r = true;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mraidContainerView.f43482f.getLayoutParams();
                layoutParams.width = com.smartdigimkt.c5.k.a(SDKContext.getInstance().d(), this.f44583b.f43477a.f41784E);
                layoutParams.height = com.smartdigimkt.c5.k.a(SDKContext.getInstance().d(), this.f44583b.f43477a.f41785F);
                int width = (this.f44583b.getWidth() - this.f44583b.getPaddingLeft()) - this.f44583b.getPaddingRight();
                int height = (this.f44583b.getHeight() - this.f44583b.getPaddingBottom()) - this.f44583b.getPaddingTop();
                com.smartdigimkt.m3.c cVar = this.f44583b.f43477a;
                float f2 = cVar.f41784E / (cVar.f41785F * 1.0f);
                layoutParams.width = Math.min(width, layoutParams.width);
                int iMin = Math.min(height, layoutParams.height);
                layoutParams.height = iMin;
                float f3 = layoutParams.width;
                float f4 = iMin;
                float f5 = f3 / (1.0f * f4);
                if (f5 > f2) {
                    layoutParams.width = (int) (f4 * f2);
                } else if (f5 < f2) {
                    layoutParams.height = (int) (f3 / f2);
                }
                layoutParams.gravity = 17;
                this.f44583b.f43482f.setLayoutParams(layoutParams);
            }
            this.f44582a.removeGlobalOnLayoutListener(this);
        } catch (Throwable unused) {
        }
    }
}

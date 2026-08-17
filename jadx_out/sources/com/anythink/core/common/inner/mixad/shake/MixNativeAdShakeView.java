package com.anythink.core.common.inner.mixad.shake;

import android.content.Context;
import android.widget.FrameLayout;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.ShakeThumbView;

/* loaded from: classes2.dex */
public class MixNativeAdShakeView extends FrameLayout implements com.anythink.core.common.l.a {

    /* renamed from: a, reason: collision with root package name */
    private y f4778a;

    /* renamed from: b, reason: collision with root package name */
    private int f4779b;

    /* renamed from: c, reason: collision with root package name */
    private ATShakeViewListener f4780c;

    public MixNativeAdShakeView(Context context) {
        super(context);
    }

    public void initView(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        this.f4780c = aTShakeViewListener;
        ShakeThumbView shakeThumbView = new ShakeThumbView(getContext());
        if (i2 <= 0) {
            i2 = -2;
        }
        if (i3 <= 0) {
            i3 = -2;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
        layoutParams.gravity = 17;
        shakeThumbView.setLayoutParams(layoutParams);
        addView(shakeThumbView);
        shakeThumbView.setShakeSetting(this.f4778a, this.f4779b != 1 ? 3 : 1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ATShakeViewListener aTShakeViewListener = this.f4780c;
        if (aTShakeViewListener != null) {
            aTShakeViewListener.onDismiss();
        }
    }

    public MixNativeAdShakeView(Context context, y yVar, int i2) {
        super(context);
        this.f4778a = yVar;
        this.f4779b = i2;
    }
}

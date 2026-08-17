package com.anythink.core.common.inner.mixad.shake;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class MixNativeAdNetworkShakeView extends FrameLayout implements com.anythink.core.common.l.a {
    public MixNativeAdNetworkShakeView(Context context) {
        super(context);
    }

    public MixNativeAdNetworkShakeView(Context context, View view, int i2, int i3) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
        layoutParams.gravity = 17;
        addView(view, layoutParams);
    }
}

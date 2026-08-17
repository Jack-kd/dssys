package com.smartdigimkt.sdk.basead.ui.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public class SplashBottomContainer extends LinearLayout {
    public SplashBottomContainer(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public SplashBottomContainer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SplashBottomContainer(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

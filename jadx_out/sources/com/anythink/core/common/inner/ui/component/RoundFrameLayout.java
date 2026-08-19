package com.anythink.core.common.inner.ui.component;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.anythink.core.common.v.ak;

/* loaded from: classes2.dex */
public class RoundFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    int f5155a;

    public RoundFrameLayout(Context context) {
        super(context);
        this.f5155a = dip2px(getContext(), 10.0f);
    }

    public static int dip2px(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        super.dispatchDraw(canvas);
        ak.a(canvas, getWidth(), getHeight(), this.f5155a);
        canvas.restoreToCount(iSaveLayer);
    }

    public void setRadius(int i2) {
        this.f5155a = dip2px(getContext(), i2);
        postInvalidate();
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5155a = dip2px(getContext(), 10.0f);
    }

    public RoundFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5155a = dip2px(getContext(), 10.0f);
    }
}

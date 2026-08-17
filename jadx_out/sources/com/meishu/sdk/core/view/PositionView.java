package com.meishu.sdk.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.meishu.sdk.core.view.TouchAdContainer;

/* loaded from: classes4.dex */
public class PositionView extends View {
    private TouchAdContainer.OnWindownEventListener windownEventListener;

    public interface OnWindownEventListener {
        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onWindowFocusChanged(boolean z2);
    }

    public PositionView(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TouchAdContainer.OnWindownEventListener onWindownEventListener = this.windownEventListener;
        if (onWindownEventListener != null) {
            onWindownEventListener.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        TouchAdContainer.OnWindownEventListener onWindownEventListener = this.windownEventListener;
        if (onWindownEventListener != null) {
            onWindownEventListener.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        TouchAdContainer.OnWindownEventListener onWindownEventListener = this.windownEventListener;
        if (onWindownEventListener != null) {
            onWindownEventListener.onWindowFocusChanged(z2);
        }
    }

    public void setOnWindownEventListener(TouchAdContainer.OnWindownEventListener onWindownEventListener) {
        this.windownEventListener = onWindownEventListener;
    }

    public PositionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PositionView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

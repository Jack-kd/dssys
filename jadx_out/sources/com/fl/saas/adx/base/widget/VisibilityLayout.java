package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.fl.saas.B;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class VisibilityLayout extends FrameLayout {
    private Runnable checkAreaRatioRunnable;
    private Runnable checkValidAreaRunnable;
    private B mVisibilityChanged;
    private B mVisibilityRatioChanged;
    private int maxRatio;
    private OnViewWindowChangedListener onViewWindowChangedListener;

    public interface OnViewWindowChangedListener {
        void onDetachedFromWindow();

        void onViewWindowVisibility(boolean z2);
    }

    public VisibilityLayout(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAreaRatio() {
        try {
            if (this.mVisibilityRatioChanged != null && isAttachedToWindow()) {
                Rect rect = new Rect();
                getGlobalVisibleRect(rect);
                int areaEffectiveRatio = getAreaEffectiveRatio(rect);
                if (areaEffectiveRatio > this.maxRatio) {
                    this.maxRatio = areaEffectiveRatio;
                    B b3 = this.mVisibilityRatioChanged;
                    if (b3 != null) {
                        b3.a(Integer.valueOf(areaEffectiveRatio));
                    }
                }
                if (areaEffectiveRatio > 95) {
                    unOnVisibilityRatioChanged();
                    return;
                }
                if (this.checkAreaRatioRunnable == null) {
                    this.checkAreaRatioRunnable = new Runnable() { // from class: com.fl.saas.adx.base.widget.u
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f30310b.checkAreaRatio();
                        }
                    };
                }
                DeviceUtil.removePostUI(this.checkAreaRatioRunnable);
                DeviceUtil.postUIDelayed(300L, this.checkAreaRatioRunnable);
            }
        } catch (Throwable th) {
            LogcatUtil.d("checkAreaRatio" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkValidArea() {
        try {
            if (this.mVisibilityChanged != null && isAttachedToWindow()) {
                if (this.checkValidAreaRunnable == null) {
                    this.checkValidAreaRunnable = new Runnable() { // from class: com.fl.saas.adx.base.widget.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f30311b.checkValidArea();
                        }
                    };
                }
                int width = getWidth();
                int height = getHeight();
                if (width != 0 && height != 0) {
                    Rect rect = new Rect();
                    boolean globalVisibleRect = getGlobalVisibleRect(rect);
                    int areaEffectiveRatio = getAreaEffectiveRatio(rect);
                    LogcatUtil.d("w=" + width + ", h=" + height + ", rect=" + rect + ", ratio=" + areaEffectiveRatio + ", isVisible=" + globalVisibleRect);
                    if (areaEffectiveRatio > this.maxRatio) {
                        this.maxRatio = areaEffectiveRatio;
                        B b3 = this.mVisibilityRatioChanged;
                        if (b3 != null) {
                            b3.a(Integer.valueOf(areaEffectiveRatio));
                        }
                    }
                    B b4 = this.mVisibilityChanged;
                    if (b4 != null) {
                        b4.a(Boolean.valueOf(globalVisibleRect && areaEffectiveRatio > 50));
                    }
                    if (areaEffectiveRatio > 95) {
                        unOnVisibilityRatioChanged();
                    }
                    DeviceUtil.removePostUI(this.checkValidAreaRunnable);
                    DeviceUtil.postUIDelayed(200L, this.checkValidAreaRunnable);
                    return;
                }
                DeviceUtil.removePostUI(this.checkValidAreaRunnable);
                DeviceUtil.postUIDelayed(50L, this.checkValidAreaRunnable);
            }
        } catch (Throwable th) {
            LogcatUtil.d("checkValidArea" + th.getMessage());
        }
    }

    private void clearRunnable() {
        Runnable runnable = this.checkValidAreaRunnable;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.checkValidAreaRunnable = null;
        }
        Runnable runnable2 = this.checkAreaRatioRunnable;
        if (runnable2 != null) {
            DeviceUtil.removePostUI(runnable2);
            this.checkAreaRatioRunnable = null;
        }
    }

    private int getAreaEffectiveRatio(Rect rect) {
        try {
            Object parent = getParent();
            float scaleX = 1.0f;
            float scaleY = 1.0f;
            while (parent instanceof View) {
                View view = (View) parent;
                scaleX *= view.getScaleX();
                scaleY *= view.getScaleY();
                parent = view.getParent();
            }
            int width = (int) (getWidth() * scaleX);
            int height = (int) (getHeight() * scaleY);
            if (width <= 0 || height <= 0) {
                return 0;
            }
            return ((rect.width() * rect.height()) * 100) / (width * height);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return 0;
        }
    }

    public void detachedView() {
        this.mVisibilityChanged = null;
        this.mVisibilityRatioChanged = null;
        OnViewWindowChangedListener onViewWindowChangedListener = this.onViewWindowChangedListener;
        if (onViewWindowChangedListener != null) {
            onViewWindowChangedListener.onDetachedFromWindow();
            this.onViewWindowChangedListener = null;
        }
        clearRunnable();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mVisibilityChanged != null) {
            checkValidArea();
        }
        if (this.mVisibilityRatioChanged != null) {
            checkAreaRatio();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        detachedView();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 != 0) {
            clearRunnable();
        }
        checkValidArea();
        checkAreaRatio();
        OnViewWindowChangedListener onViewWindowChangedListener = this.onViewWindowChangedListener;
        if (onViewWindowChangedListener != null) {
            onViewWindowChangedListener.onViewWindowVisibility(i2 == 0);
        }
    }

    public void setOnViewWindowChangedListener(OnViewWindowChangedListener onViewWindowChangedListener) {
        this.onViewWindowChangedListener = onViewWindowChangedListener;
    }

    public void setOnVisibilityChanged(B b3) {
        this.mVisibilityChanged = b3;
        checkValidArea();
    }

    public void setVisibilityRatioChanged(B b3) {
        this.mVisibilityRatioChanged = b3;
        checkAreaRatio();
    }

    public void unOnVisibilityChanged() {
        this.mVisibilityChanged = null;
        Runnable runnable = this.checkValidAreaRunnable;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.checkValidAreaRunnable = null;
        }
    }

    public void unOnVisibilityRatioChanged() {
        this.mVisibilityRatioChanged = null;
        Runnable runnable = this.checkAreaRatioRunnable;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.checkAreaRatioRunnable = null;
        }
    }

    public VisibilityLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VisibilityLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.fl.saas.adx.util.ViewHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class InterceptClickLayout extends FrameLayout {
    private int filterPattern;
    private boolean isMatchParent;
    private Set<View> mFilterViews;
    private OnIntercept mOutIntercept;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FilterPattern {
        public static final int ALL = 1;
        public static final int FILTER = 2;
        public static final int NORMAL = 0;
    }

    public interface OnIntercept {
        boolean isIntercept(float f2, float f3);
    }

    public InterceptClickLayout(Context context) {
        super(context);
        this.filterPattern = 0;
        this.isMatchParent = false;
    }

    public InterceptClickLayout addFilterViews(View... viewArr) {
        if (this.mFilterViews == null) {
            this.mFilterViews = new HashSet();
        }
        for (View view : viewArr) {
            if (view != null && !this.mFilterViews.contains(view) && ViewHelper.isViewInParent(this, view)) {
                this.mFilterViews.add(view);
            }
        }
        return this;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i2 = this.filterPattern;
        if (i2 == 1) {
            return true;
        }
        if (i2 != 2) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        OnIntercept onIntercept = this.mOutIntercept;
        if (onIntercept != null && onIntercept.isIntercept(motionEvent.getRawX(), motionEvent.getRawY())) {
            return false;
        }
        Set<View> set = this.mFilterViews;
        if (set != null && !set.isEmpty()) {
            for (View view : this.mFilterViews) {
                if (view.getVisibility() == 0 && ViewHelper.isPointInsideView(view, motionEvent.getRawX(), motionEvent.getRawY())) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (!this.isMatchParent) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (mode != 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), C.ENCODING_PCM_32BIT);
        }
        if (mode2 != 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), C.ENCODING_PCM_32BIT);
        }
        super.onMeasure(i2, i3);
    }

    public InterceptClickLayout setFilterPattern(int i2) {
        this.filterPattern = i2;
        return this;
    }

    public void setMatchParent() {
        this.isMatchParent = true;
    }

    public InterceptClickLayout setOutIntercept(OnIntercept onIntercept) {
        this.mOutIntercept = onIntercept;
        return this;
    }

    public InterceptClickLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.filterPattern = 0;
        this.isMatchParent = false;
    }

    public InterceptClickLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.filterPattern = 0;
        this.isMatchParent = false;
    }
}

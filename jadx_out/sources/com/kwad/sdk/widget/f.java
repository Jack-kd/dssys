package com.kwad.sdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes4.dex */
public class f extends ViewPager {
    private int btE;
    private boolean btF;

    public f(@NonNull Context context) {
        super(context);
        this.btF = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.btF) {
            return super.canScrollHorizontally(i2);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.btF) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int x2 = (int) motionEvent.getX();
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 2) {
            int i2 = x2 - this.btE;
            if (getCurrentItem() == 0 && i2 > 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.btE = x2;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.btF && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.btF && super.onTouchEvent(motionEvent);
    }

    public void setScrollable(boolean z2) {
        this.btF = z2;
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.btF = false;
    }
}

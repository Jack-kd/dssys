package com.kwad.components.core.page.recycle;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes4.dex */
public class b extends g {
    private Rect aeQ;
    private int aeR;
    private int aeS;
    private boolean aeT;
    private int aeU;
    private a aeV;
    private boolean aeW;
    private boolean aeX;

    public interface a {
        boolean uJ();
    }

    public b(Context context) {
        this(context, null);
    }

    private void a(int i2, int i3, int i4) {
        while (true) {
            if (this.aeU == Integer.MIN_VALUE) {
                int[] iArr = new int[2];
                getLocationOnScreen(iArr);
                this.aeU = iArr[1];
            }
            int iFindFirstVisibleItemPosition = f.b(this).findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = f.b(this).findLastVisibleItemPosition();
            if (iFindFirstVisibleItemPosition == -1 || iFindLastVisibleItemPosition == -1) {
                return;
            }
            if (i2 >= iFindFirstVisibleItemPosition && i2 <= iFindLastVisibleItemPosition) {
                int i5 = i2 - iFindFirstVisibleItemPosition;
                if (getChildCount() > i5) {
                    int[] iArr2 = new int[2];
                    getChildAt(i5).getLocationOnScreen(iArr2);
                    scrollBy(0, (iArr2[1] - this.aeU) - i4);
                    return;
                }
                return;
            }
            if (i2 > iFindLastVisibleItemPosition) {
                scrollBy(0, i3);
                a(i2, i3, i4);
                return;
            }
            scrollBy(0, -i3);
        }
    }

    private void scrollToPositionWithOffset(int i2, int i3) {
        a(i2, getHeight(), 0);
    }

    private void uH() {
        Rect rect = this.aeQ;
        if (rect == null) {
            this.aeQ = new Rect();
        } else {
            rect.setEmpty();
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                this.aeQ.union(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
            }
        }
    }

    private void uI() {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter instanceof d) {
            ((d) adapter).uM();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uI();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.aeR != 0) {
            uH();
            Rect rect = this.aeQ;
            if (rect != null && !rect.isEmpty()) {
                canvas.save();
                canvas.clipRect(this.aeQ);
                canvas.drawColor(this.aeR);
                canvas.restore();
            }
        }
        super.onDraw(canvas);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.aeW) {
            return false;
        }
        if (motionEvent.getAction() == 0 && this.aeX) {
            stopScroll();
        }
        a aVar = this.aeV;
        if (aVar == null || !aVar.uJ()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i3);
        int i4 = this.aeS;
        if (i4 > 0 && i4 < size) {
            i3 = View.MeasureSpec.makeMeasureSpec(this.aeS, View.MeasureSpec.getMode(i3));
        }
        super.onMeasure(i2, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.aeW) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i2) {
        if (this.aeT) {
            scrollToPositionWithOffset(i2, 0);
        } else {
            super.scrollToPosition(i2);
        }
    }

    public void setDisableScroll(boolean z2) {
        this.aeW = z2;
    }

    public void setDownStop(boolean z2) {
        this.aeX = z2;
    }

    public void setIgnoreTouchSwipeHandler(a aVar) {
        this.aeV = aVar;
    }

    public void setUnderneathColor(int i2) {
        this.aeR = i2;
        uH();
        invalidate();
    }

    public void setUseCustomScrollToPosition(boolean z2) {
        this.aeT = z2;
    }

    public b(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public b(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.aeU = Integer.MIN_VALUE;
        this.aeX = false;
    }
}

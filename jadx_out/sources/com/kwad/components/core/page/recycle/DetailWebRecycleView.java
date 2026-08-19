package com.kwad.components.core.page.recycle;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.kwad.components.core.t.y;
import com.kwad.sdk.utils.ab;

/* loaded from: classes4.dex */
public class DetailWebRecycleView extends b {
    private int aeY;
    private boolean aeZ;
    private boolean afa;
    private int afb;
    private int afc;
    private boolean afd;
    a afe;
    private Runnable aff;
    private y afg;
    private int ph;

    public interface a {
        boolean uK();
    }

    public DetailWebRecycleView(Context context) {
        this(context, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        postDelayed(this.afg, 50L);
    }

    @Override // com.kwad.components.core.page.recycle.b, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.afg);
    }

    @Override // com.kwad.components.core.page.recycle.b, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a aVar = this.afe;
        if (aVar != null && aVar.uK()) {
            return true;
        }
        this.afc = computeVerticalScrollOffset();
        if (motionEvent.getY() <= this.afb - this.afc) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        this.afc = iComputeVerticalScrollOffset;
        if (iComputeVerticalScrollOffset >= this.afb) {
            return false;
        }
        fling((int) f2, (int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        this.afc = iComputeVerticalScrollOffset;
        if (i3 > 0 && iComputeVerticalScrollOffset < this.afb && !this.afd && iComputeVerticalScrollOffset < this.ph) {
            scrollBy(0, i3);
            iArr[1] = i3;
        }
        if (i3 >= 0 || this.afc <= 0 || ViewCompat.canScrollVertically(view, -1)) {
            return;
        }
        scrollBy(0, i3);
        iArr[1] = i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i2) {
        super.onScrollStateChanged(i2);
        if (i2 == 0) {
            View childAt = getLayoutManager().getChildAt(getLayoutManager().getChildCount() - 1);
            if (childAt != null) {
                int bottom = childAt.getBottom();
                int bottom2 = getBottom() - getPaddingBottom();
                int position = getLayoutManager().getPosition(childAt);
                if (bottom == bottom2 && position == getLayoutManager().getItemCount() - 1) {
                    this.afd = true;
                    return;
                }
            }
            this.afd = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (i2 & 2) != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.afa) {
            this.afa = false;
        } else {
            if (this.aeZ) {
                return;
            }
            super.requestChildFocus(view, view2);
        }
    }

    public void setInterceptRequestFocusForWeb(boolean z2) {
        this.aeZ = z2;
    }

    public void setInterceptRequestFocusForWebFiredOnce(boolean z2) {
        this.afa = z2;
    }

    public void setInterceptTouchListener(a aVar) {
        this.afe = aVar;
    }

    public void setTopViewHeight(int i2) {
        this.afb = i2;
    }

    public DetailWebRecycleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DetailWebRecycleView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.aeY = 1000;
        this.aeZ = false;
        this.afa = false;
        Runnable runnable = new Runnable() { // from class: com.kwad.components.core.page.recycle.DetailWebRecycleView.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Object field = ab.getField(DetailWebRecycleView.this, "mGapWorker");
                    if (field != null) {
                        ab.callMethod(field, "postFromTraversal", DetailWebRecycleView.this, 0, Integer.valueOf(DetailWebRecycleView.this.aeY));
                    }
                } catch (RuntimeException e2) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
                }
            }
        };
        this.aff = runnable;
        this.afg = new y(runnable);
        if (context instanceof Activity) {
            this.ph = com.kwad.sdk.c.a.a.k((Activity) context);
        } else {
            this.ph = com.kwad.sdk.c.a.a.getScreenHeight(context);
        }
    }
}

package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.material.badge.BadgeDrawable;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.util.List;

@Keep
/* loaded from: classes4.dex */
abstract class KSHeaderScrollingViewBehavior extends KSViewOffsetBehavior<View> {
    private int mOverlayTop;
    final Rect mTempRect1;
    final Rect mTempRect2;
    private int mVerticalLayoutGap;

    public KSHeaderScrollingViewBehavior() {
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }

    private static int resolveGravity(int i2) {
        return i2 == 0 ? BadgeDrawable.TOP_START : i2;
    }

    public abstract View findFirstDependency(List<View> list);

    public final int getOverlapPixelsForOffset(View view) {
        if (this.mOverlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i2 = this.mOverlayTop;
        return MathUtils.clamp((int) (overlapRatioForOffset * i2), 0, i2);
    }

    public float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.mOverlayTop;
    }

    public int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    public final int getVerticalLayoutGap() {
        return this.mVerticalLayoutGap;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSViewOffsetBehavior
    public void layoutChild(KSCoordinatorLayout kSCoordinatorLayout, View view, int i2) {
        View viewFindFirstDependency = findFirstDependency(kSCoordinatorLayout.getDependencies(view));
        if (viewFindFirstDependency == null) {
            super.layoutChild(kSCoordinatorLayout, view, i2);
            this.mVerticalLayoutGap = 0;
            return;
        }
        KSCoordinatorLayout.LayoutParams layoutParams = (KSCoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.mTempRect1;
        rect.set(kSCoordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (kSCoordinatorLayout.getWidth() - kSCoordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((kSCoordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - kSCoordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = kSCoordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(kSCoordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.mTempRect2;
        GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
        int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
        view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
        this.mVerticalLayoutGap = rect2.top - viewFindFirstDependency.getBottom();
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        View viewFindFirstDependency;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (viewFindFirstDependency = findFirstDependency(kSCoordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(viewFindFirstDependency) && !ViewCompat.getFitsSystemWindows(view)) {
            ViewCompat.setFitsSystemWindows(view, true);
            if (ViewCompat.getFitsSystemWindows(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size == 0) {
            size = kSCoordinatorLayout.getHeight();
        }
        kSCoordinatorLayout.onMeasureChild(view, i2, i3, View.MeasureSpec.makeMeasureSpec((size - viewFindFirstDependency.getMeasuredHeight()) + getScrollRange(viewFindFirstDependency), i6 == -1 ? C.ENCODING_PCM_32BIT : Integer.MIN_VALUE), i5);
        return true;
    }

    public final void setOverlayTop(int i2) {
        this.mOverlayTop = i2;
    }

    public KSHeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }
}

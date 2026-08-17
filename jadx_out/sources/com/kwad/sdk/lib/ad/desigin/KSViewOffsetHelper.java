package com.kwad.sdk.lib.ad.desigin;

import android.view.View;
import androidx.annotation.Keep;
import androidx.core.view.ViewCompat;

@Keep
/* loaded from: classes4.dex */
class KSViewOffsetHelper {
    private int mLayoutLeft;
    private int mLayoutTop;
    private int mOffsetLeft;
    private int mOffsetTop;
    private final View mView;

    public KSViewOffsetHelper(View view) {
        this.mView = view;
    }

    private void updateOffsets() {
        View view = this.mView;
        ViewCompat.offsetTopAndBottom(view, this.mOffsetTop - (view.getTop() - this.mLayoutTop));
        View view2 = this.mView;
        ViewCompat.offsetLeftAndRight(view2, this.mOffsetLeft - (view2.getLeft() - this.mLayoutLeft));
    }

    public int getLayoutLeft() {
        return this.mLayoutLeft;
    }

    public int getLayoutTop() {
        return this.mLayoutTop;
    }

    public int getLeftAndRightOffset() {
        return this.mOffsetLeft;
    }

    public int getTopAndBottomOffset() {
        return this.mOffsetTop;
    }

    public void onViewLayout() {
        this.mLayoutTop = this.mView.getTop();
        this.mLayoutLeft = this.mView.getLeft();
        updateOffsets();
    }

    public boolean setLeftAndRightOffset(int i2) {
        if (this.mOffsetLeft == i2) {
            return false;
        }
        this.mOffsetLeft = i2;
        updateOffsets();
        return true;
    }

    public boolean setTopAndBottomOffset(int i2) {
        if (this.mOffsetTop == i2) {
            return false;
        }
        this.mOffsetTop = i2;
        updateOffsets();
        return true;
    }
}

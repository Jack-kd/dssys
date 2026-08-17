package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;

@Keep
/* loaded from: classes4.dex */
public class KSViewOffsetBehavior<V extends View> extends KSCoordinatorLayout.Behavior<V> {
    private int mTempLeftRightOffset;
    private int mTempTopBottomOffset;
    private KSViewOffsetHelper mViewOffsetHelper;

    public KSViewOffsetBehavior() {
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public int getLeftAndRightOffset() {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.getLeftAndRightOffset();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.getTopAndBottomOffset();
        }
        return 0;
    }

    public void layoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2) {
        kSCoordinatorLayout.onLayoutChild(v2, i2);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onLayoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2) {
        layoutChild(kSCoordinatorLayout, v2, i2);
        if (this.mViewOffsetHelper == null) {
            this.mViewOffsetHelper = new KSViewOffsetHelper(v2);
        }
        this.mViewOffsetHelper.onViewLayout();
        int i3 = this.mTempTopBottomOffset;
        if (i3 != 0) {
            this.mViewOffsetHelper.setTopAndBottomOffset(i3);
            this.mTempTopBottomOffset = 0;
        }
        int i4 = this.mTempLeftRightOffset;
        if (i4 == 0) {
            return true;
        }
        this.mViewOffsetHelper.setLeftAndRightOffset(i4);
        this.mTempLeftRightOffset = 0;
        return true;
    }

    public boolean setLeftAndRightOffset(int i2) {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.setLeftAndRightOffset(i2);
        }
        this.mTempLeftRightOffset = i2;
        return false;
    }

    public boolean setTopAndBottomOffset(int i2) {
        KSViewOffsetHelper kSViewOffsetHelper = this.mViewOffsetHelper;
        if (kSViewOffsetHelper != null) {
            return kSViewOffsetHelper.setTopAndBottomOffset(i2);
        }
        this.mTempTopBottomOffset = i2;
        return false;
    }

    public KSViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }
}

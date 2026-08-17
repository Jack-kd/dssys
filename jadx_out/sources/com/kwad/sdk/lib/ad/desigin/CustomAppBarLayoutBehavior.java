package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import com.kwad.sdk.R;
import com.kwad.sdk.lib.ad.desigin.KSAppBarLayout;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes4.dex */
public class CustomAppBarLayoutBehavior extends KSAppBarLayout.a implements CustomAppBarCustomAttrListener, CustomAppBarFlingConsumer {
    private static final String TAG = CustomAppBarLayoutBehavior.class.toString();
    private CustomAppBarFlingConsumer mCustomAppBarFlingConsumer;
    private int mExtraFixedSize;
    private final int mFlingConsumeViewId;
    private CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> mHeaderExBehavior;
    private int mOffsetDelta;
    private int mScrollableSize;
    private boolean mScrollableSizeChangeable;

    public CustomAppBarLayoutBehavior(CustomAppBarBehaviorParams customAppBarBehaviorParams) {
        this.mScrollableSizeChangeable = true;
        this.mExtraFixedSize = customAppBarBehaviorParams.mExtraFixedSize;
        this.mFlingConsumeViewId = customAppBarBehaviorParams.mFlingConsumeViewId;
        if (customAppBarBehaviorParams.mEnableNestedFling) {
            CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = new CustomHeaderBehaviorEx<>(this);
            this.mHeaderExBehavior = customHeaderBehaviorEx;
            customHeaderBehaviorEx.setExtraFixedSize(this.mExtraFixedSize);
        }
    }

    private void cancelTargetIfNeeded(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 1 && iArr[1] == 0 && i3 < 0 && kSAppBarLayout.getTop() == 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    private static View getAppBarChildOnOffset(KSAppBarLayout kSAppBarLayout, int i2) {
        int iAbs = Math.abs(i2);
        int childCount = kSAppBarLayout.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = kSAppBarLayout.getChildAt(i3);
            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private boolean shouldJumpElevationState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
        List<View> dependents = kSCoordinatorLayout.getDependents(kSAppBarLayout);
        int size = dependents.size();
        for (int i2 = 0; i2 < size; i2++) {
            KSCoordinatorLayout.Behavior behavior = ((KSCoordinatorLayout.LayoutParams) dependents.get(i2).getLayoutParams()).getBehavior();
            if (behavior instanceof KSAppBarLayout.d) {
                return ((KSAppBarLayout.d) behavior).getOverlayTop() != 0;
            }
        }
        return false;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer
    public void consumeAppBarFling(int i2, int i3) {
        CustomAppBarFlingConsumer customAppBarFlingConsumer = this.mCustomAppBarFlingConsumer;
        if (customAppBarFlingConsumer != null) {
            customAppBarFlingConsumer.consumeAppBarFling(i2, i3);
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarCustomAttrListener
    public int getExtraFixedSize() {
        return this.mExtraFixedSize;
    }

    public int getScrollRange(KSAppBarLayout kSAppBarLayout) {
        return kSAppBarLayout.getTotalScrollRange() - this.mExtraFixedSize;
    }

    public int getScrollableSize() {
        return this.mScrollableSize;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset() + this.mOffsetDelta;
    }

    public int interpolateOffset(KSAppBarLayout kSAppBarLayout, int i2) {
        int iAbs = Math.abs(i2);
        int childCount = kSAppBarLayout.getChildCount();
        int topInset = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = kSAppBarLayout.getChildAt(i3);
            KSAppBarLayout.b bVar = (KSAppBarLayout.b) childAt.getLayoutParams();
            Interpolator interpolatorRG = bVar.RG();
            if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                i3++;
            } else if (interpolatorRG != null) {
                int iRF = bVar.RF();
                if ((iRF & 1) != 0) {
                    topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) bVar).topMargin + ((LinearLayout.LayoutParams) bVar).bottomMargin;
                    if ((iRF & 2) != 0) {
                        topInset -= ViewCompat.getMinimumHeight(childAt);
                    }
                }
                if (ViewCompat.getFitsSystemWindows(childAt)) {
                    topInset -= kSAppBarLayout.getTopInset();
                }
                if (topInset > 0) {
                    float f2 = topInset;
                    return Integer.signum(i2) * (childAt.getTop() + Math.round(f2 * interpolatorRG.getInterpolation((iAbs - childAt.getTop()) / f2)));
                }
            }
        }
        return i2;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a
    public boolean isOffsetAnimatorRunning() {
        return false;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer
    public void onAppBarTouchDown() {
        CustomAppBarFlingConsumer customAppBarFlingConsumer = this.mCustomAppBarFlingConsumer;
        if (customAppBarFlingConsumer != null) {
            customAppBarFlingConsumer.onAppBarTouchDown();
        }
    }

    public void setExtraFixedSize(int i2) {
        this.mExtraFixedSize = i2;
        CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = this.mHeaderExBehavior;
        if (customHeaderBehaviorEx != null) {
            customHeaderBehaviorEx.setExtraFixedSize(i2);
        }
    }

    public void setScrollableSize(int i2) {
        this.mScrollableSize = i2;
    }

    public void setScrollableSizeChangeable(boolean z2) {
        this.mScrollableSizeChangeable = z2;
    }

    public void stopFling() {
        CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = this.mHeaderExBehavior;
        if (customHeaderBehaviorEx != null) {
            customHeaderBehaviorEx.stopFling();
        }
    }

    public void updateAppBarLayoutDrawableState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, boolean z2) {
        View appBarChildOnOffset = getAppBarChildOnOffset(kSAppBarLayout, i2);
        if (appBarChildOnOffset != null) {
            int iRF = ((KSAppBarLayout.b) appBarChildOnOffset.getLayoutParams()).RF();
            if ((iRF & 1) != 0) {
                ViewCompat.getMinimumHeight(appBarChildOnOffset);
                if ((i3 > 0 && (iRF & 12) != 0) || (iRF & 2) != 0) {
                    appBarChildOnOffset.getBottom();
                    kSAppBarLayout.getTopInset();
                }
            }
            if (z2 || shouldJumpElevationState(kSCoordinatorLayout, kSAppBarLayout)) {
                kSAppBarLayout.jumpDrawablesToCurrentState();
            }
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, MotionEvent motionEvent) {
        CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = this.mHeaderExBehavior;
        return customHeaderBehaviorEx == null ? super.onInterceptTouchEvent(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, motionEvent) : customHeaderBehaviorEx.onInterceptTouchEvent(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, motionEvent);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, int i4, int i5) {
        boolean zOnMeasureChild = super.onMeasureChild(kSCoordinatorLayout, kSAppBarLayout, i2, i3, i4, i5);
        if (this.mCustomAppBarFlingConsumer != null) {
            return zOnMeasureChild;
        }
        KeyEvent.Callback callbackFindViewById = kSCoordinatorLayout.findViewById(this.mFlingConsumeViewId);
        if (!(callbackFindViewById instanceof CustomAppBarFlingConsumer)) {
            throw new IllegalArgumentException(String.format("find fling consume view with id %d is not instanceof HeaderFlingConsumer", Integer.valueOf(this.mFlingConsumeViewId)));
        }
        this.mCustomAppBarFlingConsumer = (CustomAppBarFlingConsumer) callbackFindViewById;
        return zOnMeasureChild;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public void onNestedPreScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2, int i3, int[] iArr, int i4) {
        int i5;
        int downNestedPreScrollRange;
        cancelTargetIfNeeded(kSCoordinatorLayout, kSAppBarLayout, view, i2, i3, iArr, i4);
        if (i3 != 0) {
            if (i3 < 0) {
                i5 = -getScrollRange(kSAppBarLayout);
                downNestedPreScrollRange = kSAppBarLayout.getDownNestedPreScrollRange() + i5;
            } else {
                i5 = -getScrollRange(kSAppBarLayout);
                downNestedPreScrollRange = 0;
            }
            if (i5 != downNestedPreScrollRange) {
                iArr[1] = scroll(kSCoordinatorLayout, kSAppBarLayout, i3, i5, downNestedPreScrollRange);
            }
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public void onNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2, int i3, int i4, int i5, int i6) {
        if (i5 < 0) {
            if (i6 == 1) {
                super.setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, getTopBottomOffsetForScrollingSibling() - i5, -kSAppBarLayout.getDownNestedScrollRange(), 0);
            } else {
                setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, getTopBottomOffsetForScrollingSibling() - i5, -kSAppBarLayout.getDownNestedScrollRange(), 0, i6);
            }
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, MotionEvent motionEvent) {
        CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = this.mHeaderExBehavior;
        return customHeaderBehaviorEx == null ? super.onTouchEvent(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, motionEvent) : customHeaderBehaviorEx.onTouchEvent(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, motionEvent);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i2, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a, com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, int i4) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i2, i3, i4, -1);
    }

    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, int i4, int i5) {
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        if (this.mScrollableSizeChangeable) {
            int scrollableSize = getScrollableSize();
            int i6 = i2 - topBottomOffsetForScrollingSibling;
            if (i6 <= 0) {
                if (scrollableSize <= 0) {
                    return -i6;
                }
                int i7 = scrollableSize + i2;
                if (i7 <= 0) {
                    setTopAndBottomOffset(-scrollableSize);
                    return i7;
                }
            }
        }
        if (i3 != 0 && topBottomOffsetForScrollingSibling >= i3 && topBottomOffsetForScrollingSibling <= i4) {
            int iClamp = MathUtils.clamp(i2, i3, i4);
            if (topBottomOffsetForScrollingSibling == iClamp) {
                return 0;
            }
            int iInterpolateOffset = kSAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(kSAppBarLayout, iClamp) : iClamp;
            boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
            int i8 = topBottomOffsetForScrollingSibling - iClamp;
            this.mOffsetDelta = iClamp - iInterpolateOffset;
            if (!topAndBottomOffset && kSAppBarLayout.hasChildWithInterpolator()) {
                kSCoordinatorLayout.dispatchDependentViewsChanged(kSAppBarLayout);
            }
            kSAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            updateAppBarLayoutDrawableState(kSCoordinatorLayout, kSAppBarLayout, iClamp, iClamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
            return i8;
        }
        this.mOffsetDelta = 0;
        return 0;
    }

    public CustomAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScrollableSizeChangeable = true;
        int i2 = R.attr.ksad_headerFlingNested;
        int i3 = R.attr.ksad_extraFixedSize;
        int i4 = R.attr.ksad_flingConsumeViewId;
        int[] iArr = {i2, i3, i4};
        Arrays.sort(iArr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(Arrays.binarySearch(iArr, i2), false);
        this.mExtraFixedSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(Arrays.binarySearch(iArr, i3), 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(Arrays.binarySearch(iArr, i4), 0);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId != 0) {
            this.mFlingConsumeViewId = resourceId;
            if (z2) {
                CustomHeaderBehaviorEx<KSAppBarLayout, CustomAppBarLayoutBehavior> customHeaderBehaviorEx = new CustomHeaderBehaviorEx<>(context, attributeSet, this);
                this.mHeaderExBehavior = customHeaderBehaviorEx;
                customHeaderBehaviorEx.setExtraFixedSize(this.mExtraFixedSize);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should set head fling offset consume view , with 'flingConsumeViewId'");
    }
}

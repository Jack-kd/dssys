package com.kwad.sdk.lib.ad.desigin;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.kwad.sdk.R;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@Keep
@KSCoordinatorLayout.a(a.class)
/* loaded from: classes4.dex */
public class KSAppBarLayout extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private boolean mCollapsed;
    private boolean mCollapsible;
    private int mDownPreScrollRange;
    private int mDownScrollRange;
    private boolean mHaveChildWithInterpolator;
    private WindowInsetsCompat mLastInsets;
    private List<c> mListeners;
    private int mPendingAction;
    private int[] mTmpStatesArray;
    private int mTotalScrollRange;

    public static class a extends KSHeaderBehavior<KSAppBarLayout> {
        private static final int INVALID_POSITION = -1;
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private WeakReference<View> mLastNestedScrollingChildRef;
        private ValueAnimator mOffsetAnimator;
        private int mOffsetDelta;
        private int mOffsetToChildIndexOnLayout;
        private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
        private float mOffsetToChildIndexOnLayoutPerc;
        private AbstractC0628a mOnDragCallback;

        /* renamed from: com.kwad.sdk.lib.ad.desigin.KSAppBarLayout$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0628a {
            public abstract boolean RE();
        }

        public a() {
            this.mOffsetToChildIndexOnLayout = -1;
        }

        private void animateOffsetTo(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, float f2) {
            int iAbs = Math.abs(getTopBottomOffsetForScrollingSibling() - i2);
            float fAbs = Math.abs(f2);
            animateOffsetWithDuration(kSCoordinatorLayout, kSAppBarLayout, i2, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / kSAppBarLayout.getHeight()) + 1.0f) * 150.0f));
        }

        private void animateOffsetWithDuration(final KSCoordinatorLayout kSCoordinatorLayout, final KSAppBarLayout kSAppBarLayout, int i2, int i3) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i2) {
                ValueAnimator valueAnimator = this.mOffsetAnimator;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.mOffsetAnimator.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.mOffsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.mOffsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(KSAnimationUtils.DECELERATE_INTERPOLATOR);
                this.mOffsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        a.this.setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.mOffsetAnimator.setDuration(Math.min(i3, 600));
            this.mOffsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i2);
            this.mOffsetAnimator.start();
        }

        private static boolean checkFlag(int i2, int i3) {
            return (i2 & i3) == i3;
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

        private int getChildIndexOnOffset(KSAppBarLayout kSAppBarLayout, int i2) {
            int childCount = kSAppBarLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = kSAppBarLayout.getChildAt(i3);
                int i4 = -i2;
                if (childAt.getTop() <= i4 && childAt.getBottom() >= i4) {
                    return i3;
                }
            }
            return -1;
        }

        private int interpolateOffset(KSAppBarLayout kSAppBarLayout, int i2) {
            int iAbs = Math.abs(i2);
            int childCount = kSAppBarLayout.getChildCount();
            int topInset = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = kSAppBarLayout.getChildAt(i3);
                b bVar = (b) childAt.getLayoutParams();
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

        private boolean shouldJumpElevationState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
            List<View> dependents = kSCoordinatorLayout.getDependents(kSAppBarLayout);
            int size = dependents.size();
            for (int i2 = 0; i2 < size; i2++) {
                KSCoordinatorLayout.Behavior behavior = ((KSCoordinatorLayout.LayoutParams) dependents.get(i2).getLayoutParams()).getBehavior();
                if (behavior instanceof d) {
                    return ((d) behavior).getOverlayTop() != 0;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int childIndexOnOffset = getChildIndexOnOffset(kSAppBarLayout, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = kSAppBarLayout.getChildAt(childIndexOnOffset);
                int iRF = ((b) childAt.getLayoutParams()).RF();
                if ((iRF & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int minimumHeight = -childAt.getBottom();
                    if (childIndexOnOffset == kSAppBarLayout.getChildCount() - 1) {
                        minimumHeight += kSAppBarLayout.getTopInset();
                    }
                    if (checkFlag(iRF, 2)) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt);
                    } else if (checkFlag(iRF, 5)) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                        if (topBottomOffsetForScrollingSibling < minimumHeight2) {
                            i2 = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (topBottomOffsetForScrollingSibling < (minimumHeight + i2) / 2) {
                        i2 = minimumHeight;
                    }
                    animateOffsetTo(kSCoordinatorLayout, kSAppBarLayout, MathUtils.clamp(i2, -kSAppBarLayout.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAppBarLayoutDrawableState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, boolean z2) {
            View appBarChildOnOffset = getAppBarChildOnOffset(kSAppBarLayout, i2);
            if (appBarChildOnOffset != null) {
                int iRF = ((b) appBarChildOnOffset.getLayoutParams()).RF();
                boolean z3 = false;
                if ((iRF & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                    if (i3 <= 0 || (iRF & 12) == 0 ? !((iRF & 2) == 0 || (-i2) < (appBarChildOnOffset.getBottom() - minimumHeight) - kSAppBarLayout.getTopInset()) : (-i2) >= (appBarChildOnOffset.getBottom() - minimumHeight) - kSAppBarLayout.getTopInset()) {
                        z3 = true;
                    }
                }
                boolean collapsedState = kSAppBarLayout.setCollapsedState(z3);
                if (z2 || (collapsedState && shouldJumpElevationState(kSCoordinatorLayout, kSAppBarLayout))) {
                    kSAppBarLayout.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.mOffsetDelta;
        }

        @VisibleForTesting
        public boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.mOffsetAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        public void setDragCallback(@Nullable AbstractC0628a abstractC0628a) {
            this.mOnDragCallback = abstractC0628a;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public boolean canDragView(KSAppBarLayout kSAppBarLayout) {
            AbstractC0628a abstractC0628a = this.mOnDragCallback;
            if (abstractC0628a != null) {
                return abstractC0628a.RE();
            }
            WeakReference<View> weakReference = this.mLastNestedScrollingChildRef;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public int getMaxDragOffset(KSAppBarLayout kSAppBarLayout) {
            return -kSAppBarLayout.getDownNestedScrollRange();
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public int getScrollRangeForDragFling(KSAppBarLayout kSAppBarLayout) {
            return kSAppBarLayout.getTotalScrollRange();
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public void onFlingFinished(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
            snapToChildIfNeeded(kSCoordinatorLayout, kSAppBarLayout);
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSViewOffsetBehavior, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean onLayoutChild(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2) {
            boolean zOnLayoutChild = super.onLayoutChild(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, i2);
            int pendingAction = kSAppBarLayout.getPendingAction();
            int i3 = this.mOffsetToChildIndexOnLayout;
            if (i3 >= 0 && (pendingAction & 8) == 0) {
                View childAt = kSAppBarLayout.getChildAt(i3);
                setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, (-childAt.getBottom()) + (this.mOffsetToChildIndexOnLayoutIsMinHeight ? ViewCompat.getMinimumHeight(childAt) + kSAppBarLayout.getTopInset() : Math.round(childAt.getHeight() * this.mOffsetToChildIndexOnLayoutPerc)));
            } else if (pendingAction != 0) {
                boolean z2 = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i4 = -kSAppBarLayout.getUpNestedPreScrollRange();
                    if (z2) {
                        animateOffsetTo(kSCoordinatorLayout, kSAppBarLayout, i4, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, i4);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z2) {
                        animateOffsetTo(kSCoordinatorLayout, kSAppBarLayout, 0, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(kSCoordinatorLayout, kSAppBarLayout, 0);
                    }
                }
            }
            kSAppBarLayout.resetPendingAction();
            this.mOffsetToChildIndexOnLayout = -1;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -kSAppBarLayout.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(kSCoordinatorLayout, kSAppBarLayout, getTopAndBottomOffset(), 0, true);
            kSAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            return zOnLayoutChild;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, int i4, int i5) {
            if (((ViewGroup.MarginLayoutParams) ((KSCoordinatorLayout.LayoutParams) kSAppBarLayout.getLayoutParams())).height != -2) {
                return super.onMeasureChild(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, i2, i3, i4, i5);
            }
            kSCoordinatorLayout.onMeasureChild(kSAppBarLayout, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0), i5);
            return true;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public void onNestedPreScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2, int i3, int[] iArr, int i4) {
            int i5;
            int downNestedPreScrollRange;
            if (i3 != 0) {
                if (i3 < 0) {
                    i5 = -kSAppBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = kSAppBarLayout.getDownNestedPreScrollRange() + i5;
                } else {
                    i5 = -kSAppBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i6 = i5;
                int i7 = downNestedPreScrollRange;
                if (i6 != i7) {
                    iArr[1] = scroll(kSCoordinatorLayout, kSAppBarLayout, i3, i6, i7);
                }
            }
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public void onNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i5 < 0) {
                scroll(kSCoordinatorLayout, kSAppBarLayout, i5, -kSAppBarLayout.getDownNestedScrollRange(), 0);
            }
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public void onRestoreInstanceState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, Parcelable parcelable) {
            if (!(parcelable instanceof b)) {
                super.onRestoreInstanceState(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, parcelable);
                this.mOffsetToChildIndexOnLayout = -1;
                return;
            }
            b bVar = (b) parcelable;
            super.onRestoreInstanceState(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout, bVar.getSuperState());
            this.mOffsetToChildIndexOnLayout = bVar.bhL;
            this.mOffsetToChildIndexOnLayoutPerc = bVar.bhM;
            this.mOffsetToChildIndexOnLayoutIsMinHeight = bVar.bhN;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public Parcelable onSaveInstanceState(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(kSCoordinatorLayout, (KSCoordinatorLayout) kSAppBarLayout);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = kSAppBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = kSAppBarLayout.getChildAt(i2);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    b bVar = new b(parcelableOnSaveInstanceState);
                    bVar.bhL = i2;
                    bVar.bhN = bottom == ViewCompat.getMinimumHeight(childAt) + kSAppBarLayout.getTopInset();
                    bVar.bhM = bottom / childAt.getHeight();
                    return bVar;
                }
            }
            return parcelableOnSaveInstanceState;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean onStartNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, View view2, int i2, int i3) {
            ValueAnimator valueAnimator;
            boolean z2 = (i2 & 2) != 0 && kSAppBarLayout.hasScrollableChildren() && kSCoordinatorLayout.getHeight() - view.getHeight() <= kSAppBarLayout.getHeight();
            if (z2 && (valueAnimator = this.mOffsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.mLastNestedScrollingChildRef = null;
            return z2;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public void onStopNestedScroll(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, View view, int i2) {
            if (i2 == 0) {
                snapToChildIfNeeded(kSCoordinatorLayout, kSAppBarLayout);
            }
            this.mLastNestedScrollingChildRef = new WeakReference<>(view);
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior
        public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, KSAppBarLayout kSAppBarLayout, int i2, int i3, int i4) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (i3 == 0 || topBottomOffsetForScrollingSibling < i3 || topBottomOffsetForScrollingSibling > i4) {
                this.mOffsetDelta = 0;
                return 0;
            }
            int iClamp = MathUtils.clamp(i2, i3, i4);
            if (topBottomOffsetForScrollingSibling == iClamp) {
                return 0;
            }
            int iInterpolateOffset = kSAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(kSAppBarLayout, iClamp) : iClamp;
            boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
            int i5 = topBottomOffsetForScrollingSibling - iClamp;
            this.mOffsetDelta = iClamp - iInterpolateOffset;
            if (!topAndBottomOffset && kSAppBarLayout.hasChildWithInterpolator()) {
                kSCoordinatorLayout.dispatchDependentViewsChanged(kSAppBarLayout);
            }
            kSAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            updateAppBarLayoutDrawableState(kSCoordinatorLayout, kSAppBarLayout, iClamp, iClamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
            return i5;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOffsetToChildIndexOnLayout = -1;
        }

        public static class b extends AbsSavedState {
            public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator<b>() { // from class: com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a.b.1
                private static b b(Parcel parcel, ClassLoader classLoader) {
                    return new b(parcel, classLoader);
                }

                private static b f(Parcel parcel) {
                    return new b(parcel, null);
                }

                private static b[] fd(int i2) {
                    return new b[i2];
                }

                @Override // android.os.Parcelable.Creator
                public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return f(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public final /* synthetic */ Object[] newArray(int i2) {
                    return fd(i2);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public final /* synthetic */ b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return b(parcel, classLoader);
                }
            };
            int bhL;
            float bhM;
            boolean bhN;

            public b(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.bhL = parcel.readInt();
                this.bhM = parcel.readFloat();
                this.bhN = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeInt(this.bhL);
                parcel.writeFloat(this.bhM);
                parcel.writeByte(this.bhN ? (byte) 1 : (byte) 0);
            }

            public b(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public interface c {
    }

    public static class d extends KSHeaderScrollingViewBehavior {
        public d() {
        }

        private static int getAppBarLayoutOffset(KSAppBarLayout kSAppBarLayout) {
            KSCoordinatorLayout.Behavior behavior = ((KSCoordinatorLayout.LayoutParams) kSAppBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof a) {
                return ((a) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(KSCoordinatorLayout kSCoordinatorLayout, View view, View view2) {
            KSCoordinatorLayout.Behavior behavior = ((KSCoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof a) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((a) behavior).mOffsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderScrollingViewBehavior
        public /* bridge */ /* synthetic */ View findFirstDependency(List list) {
            return findFirstDependency((List<View>) list);
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderScrollingViewBehavior
        public float getOverlapRatioForOffset(View view) {
            int i2;
            if (view instanceof KSAppBarLayout) {
                KSAppBarLayout kSAppBarLayout = (KSAppBarLayout) view;
                int totalScrollRange = kSAppBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = kSAppBarLayout.getDownNestedPreScrollRange();
                int appBarLayoutOffset = getAppBarLayoutOffset(kSAppBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (appBarLayoutOffset / i2) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderScrollingViewBehavior
        public int getScrollRange(View view) {
            return view instanceof KSAppBarLayout ? ((KSAppBarLayout) view).getTotalScrollRange() : super.getScrollRange(view);
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean layoutDependsOn(KSCoordinatorLayout kSCoordinatorLayout, View view, View view2) {
            return view2 instanceof KSAppBarLayout;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean onDependentViewChanged(KSCoordinatorLayout kSCoordinatorLayout, View view, View view2) {
            offsetChildAsNeeded(kSCoordinatorLayout, view, view2);
            return false;
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderScrollingViewBehavior, com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, View view, int i2, int i3, int i4, int i5) {
            return super.onMeasureChild(kSCoordinatorLayout, view, i2, i3, i4, i5);
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(KSCoordinatorLayout kSCoordinatorLayout, View view, Rect rect, boolean z2) {
            KSAppBarLayout kSAppBarLayoutFindFirstDependency = findFirstDependency(kSCoordinatorLayout.getDependencies(view));
            if (kSAppBarLayoutFindFirstDependency != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.mTempRect1;
                rect2.set(0, 0, kSCoordinatorLayout.getWidth(), kSCoordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    kSAppBarLayoutFindFirstDependency.setExpanded(false, !z2);
                    return true;
                }
            }
            return false;
        }

        public d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_ScrollingViewBehavior_Layout);
            setOverlayTop(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ksad_ScrollingViewBehavior_Layout_ksad_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // com.kwad.sdk.lib.ad.desigin.KSHeaderScrollingViewBehavior
        public KSAppBarLayout findFirstDependency(List<View> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = list.get(i2);
                if (view instanceof KSAppBarLayout) {
                    return (KSAppBarLayout) view;
                }
            }
            return null;
        }
    }

    public KSAppBarLayout(Context context) {
        this(context, null);
    }

    private void invalidateScrollRanges() {
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
    }

    private boolean setCollapsibleState(boolean z2) {
        if (this.mCollapsible == z2) {
            return false;
        }
        this.mCollapsible = z2;
        refreshDrawableState();
        return true;
    }

    private void updateCollapsible() {
        int childCount = getChildCount();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (((b) getChildAt(i2).getLayoutParams()).RH()) {
                z2 = true;
                break;
            }
            i2++;
        }
        setCollapsibleState(z2);
    }

    public void addOnOffsetChangedListener(c cVar) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (cVar == null || this.mListeners.contains(cVar)) {
            return;
        }
        this.mListeners.add(cVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    public void dispatchOffsetUpdates(int i2) {
        List<c> list = this.mListeners;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.mListeners.get(i3);
            }
        }
    }

    public int getDownNestedPreScrollRange() {
        int i2 = this.mDownPreScrollRange;
        if (i2 != -1) {
            return i2;
        }
        int minimumHeight = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = bVar.bhO;
            if ((i3 & 5) != 5) {
                if (minimumHeight > 0) {
                    break;
                }
            } else {
                int i4 = minimumHeight + ((LinearLayout.LayoutParams) bVar).topMargin + ((LinearLayout.LayoutParams) bVar).bottomMargin;
                minimumHeight = (i3 & 8) != 0 ? i4 + ViewCompat.getMinimumHeight(childAt) : i4 + (measuredHeight - ((i3 & 2) != 0 ? ViewCompat.getMinimumHeight(childAt) : getTopInset()));
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.mDownPreScrollRange = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i2 = this.mDownScrollRange;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) bVar).topMargin + ((LinearLayout.LayoutParams) bVar).bottomMargin;
            int i4 = bVar.bhO;
            if ((i4 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i4 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt) + getTopInset();
                break;
            }
            i3++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.mDownScrollRange = iMax;
        return iMax;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount > 0 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.mPendingAction;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.mLastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.mTotalScrollRange;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = bVar.bhO;
            if ((i4 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight + ((LinearLayout.LayoutParams) bVar).topMargin + ((LinearLayout.LayoutParams) bVar).bottomMargin;
            if ((i4 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i3++;
        }
        int iMax = Math.max(0, minimumHeight - getTopInset());
        this.mTotalScrollRange = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public boolean hasChildWithInterpolator() {
        return this.mHaveChildWithInterpolator;
    }

    public boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        if (this.mTmpStatesArray == null) {
            this.mTmpStatesArray = new int[2];
        }
        int[] iArr = this.mTmpStatesArray;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        boolean z2 = this.mCollapsible;
        int i3 = R.attr.ksad_state_collapsible;
        if (!z2) {
            i3 = -i3;
        }
        iArr[0] = i3;
        iArr[1] = (z2 && this.mCollapsed) ? R.attr.ksad_state_collapsed : -R.attr.ksad_state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        invalidateScrollRanges();
        int i6 = 0;
        this.mHaveChildWithInterpolator = false;
        int childCount = getChildCount();
        while (true) {
            if (i6 >= childCount) {
                break;
            }
            if (((b) getChildAt(i6).getLayoutParams()).RG() != null) {
                this.mHaveChildWithInterpolator = true;
                break;
            }
            i6++;
        }
        updateCollapsible();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        invalidateScrollRanges();
    }

    public WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.mLastInsets, windowInsetsCompat2)) {
            this.mLastInsets = windowInsetsCompat2;
            invalidateScrollRanges();
        }
        return windowInsetsCompat;
    }

    public void removeOnOffsetChangedListener(c cVar) {
        List<c> list = this.mListeners;
        if (list == null || cVar == null) {
            return;
        }
        list.remove(cVar);
    }

    public void resetPendingAction() {
        this.mPendingAction = 0;
    }

    public boolean setCollapsedState(boolean z2) {
        if (this.mCollapsed == z2) {
            return false;
        }
        this.mCollapsed = z2;
        refreshDrawableState();
        return true;
    }

    public void setExpanded(boolean z2) {
        setExpanded(z2, ViewCompat.isLaidOut(this));
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (i2 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i2);
    }

    @Deprecated
    public void setTargetElevation(float f2) throws Resources.NotFoundException {
        KSViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f2);
    }

    public KSAppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
        this.mPendingAction = 0;
        setOrientation(1);
        int i2 = Build.VERSION.SDK_INT;
        KSViewUtilsLollipop.setBoundsViewOutlineProvider(this);
        KSViewUtilsLollipop.setStateListAnimatorFromAttrs(this, attributeSet, 0, R.style.ksad_Widget_Design_KSAppBarLayout);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_AppBarLayout, 0, R.style.ksad_Widget_Design_KSAppBarLayout);
        ViewCompat.setBackground(this, typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_AppBarLayout_ksad_background));
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ksad_AppBarLayout_ksad_expanded)) {
            setExpanded(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_AppBarLayout_ksad_expanded, false), false, false);
        }
        if (i2 >= 26) {
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ksad_AppBarLayout_ksad_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_AppBarLayout_ksad_keyboardNavigationCluster, false));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ksad_AppBarLayout_ksad_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_AppBarLayout_ksad_touchscreenBlocksFocus, false));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return KSAppBarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    public void setExpanded(boolean z2, boolean z3) {
        setExpanded(z2, z3, true);
    }

    private void setExpanded(boolean z2, boolean z3, boolean z4) {
        this.mPendingAction = (z2 ? 1 : 2) | (z3 ? 4 : 0) | (z4 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public b generateDefaultLayoutParams() {
        return new b(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new b((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public static class b extends LinearLayout.LayoutParams {
        int bhO;
        Interpolator bhP;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.bhO = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_AppBarLayout_Layout);
            this.bhO = typedArrayObtainStyledAttributes.getInt(R.styleable.ksad_AppBarLayout_Layout_ksad_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ksad_AppBarLayout_Layout_ksad_layout_scrollInterpolator)) {
                this.bhP = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.ksad_AppBarLayout_Layout_ksad_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final int RF() {
            return this.bhO;
        }

        public final Interpolator RG() {
            return this.bhP;
        }

        public final boolean RH() {
            int i2 = this.bhO;
            return (i2 & 1) == 1 && (i2 & 10) != 0;
        }

        public b(int i2, int i3) {
            super(-1, -2);
            this.bhO = 1;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.bhO = 1;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.bhO = 1;
        }

        @RequiresApi(19)
        public b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.bhO = 1;
        }
    }
}

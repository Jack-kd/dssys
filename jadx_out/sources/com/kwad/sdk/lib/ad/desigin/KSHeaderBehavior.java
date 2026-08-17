package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

@Keep
/* loaded from: classes4.dex */
public abstract class KSHeaderBehavior<V extends View> extends KSViewOffsetBehavior<V> {
    private static final int INVALID_POINTER = -1;
    private int mActivePointerId;
    private Runnable mFlingRunnable;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    OverScroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public class a implements Runnable {
        private final KSCoordinatorLayout bhB;
        private final V bhS;

        public a(KSCoordinatorLayout kSCoordinatorLayout, V v2) {
            this.bhB = kSCoordinatorLayout;
            this.bhS = v2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OverScroller overScroller;
            if (this.bhS == null || (overScroller = KSHeaderBehavior.this.mScroller) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                KSHeaderBehavior.this.onFlingFinished(this.bhB, this.bhS);
                return;
            }
            KSHeaderBehavior kSHeaderBehavior = KSHeaderBehavior.this;
            kSHeaderBehavior.setHeaderTopBottomOffset(this.bhB, this.bhS, kSHeaderBehavior.mScroller.getCurrY());
            ViewCompat.postOnAnimation(this.bhS, this);
        }
    }

    public KSHeaderBehavior() {
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    public boolean canDragView(V v2) {
        return false;
    }

    public final boolean fling(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2, int i3, float f2) {
        Runnable runnable = this.mFlingRunnable;
        if (runnable != null) {
            v2.removeCallbacks(runnable);
            this.mFlingRunnable = null;
        }
        if (this.mScroller == null) {
            this.mScroller = new OverScroller(v2.getContext());
        }
        this.mScroller.fling(0, getTopAndBottomOffset(), 0, Math.round(f2), 0, 0, i2, i3);
        if (!this.mScroller.computeScrollOffset()) {
            onFlingFinished(kSCoordinatorLayout, v2);
            return false;
        }
        a aVar = new a(kSCoordinatorLayout, v2);
        this.mFlingRunnable = aVar;
        ViewCompat.postOnAnimation(v2, aVar);
        return true;
    }

    public int getMaxDragOffset(V v2) {
        return -v2.getHeight();
    }

    public int getScrollRangeForDragFling(V v2) {
        return v2.getHeight();
    }

    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    public void onFlingFinished(KSCoordinatorLayout kSCoordinatorLayout, V v2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.mTouchSlop
            if (r0 >= 0) goto L12
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.mTouchSlop = r0
        L12:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L1f
            boolean r0 = r4.mIsBeingDragged
            if (r0 == 0) goto L1f
            return r2
        L1f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L5e
            r5 = -1
            if (r0 == r2) goto L4f
            if (r0 == r1) goto L2f
            r6 = 3
            if (r0 == r6) goto L4f
            goto L81
        L2f:
            int r6 = r4.mActivePointerId
            if (r6 == r5) goto L81
            int r6 = r7.findPointerIndex(r6)
            if (r6 == r5) goto L81
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.mLastMotionY
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.mTouchSlop
            if (r6 <= r0) goto L81
            r4.mIsBeingDragged = r2
            r4.mLastMotionY = r5
            goto L81
        L4f:
            r4.mIsBeingDragged = r3
            r4.mActivePointerId = r5
            android.view.VelocityTracker r5 = r4.mVelocityTracker
            if (r5 == 0) goto L81
            r5.recycle()
            r5 = 0
            r4.mVelocityTracker = r5
            goto L81
        L5e:
            r4.mIsBeingDragged = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.canDragView(r6)
            if (r2 == 0) goto L81
            boolean r5 = r5.isPointInChildBounds(r6, r0, r1)
            if (r5 == 0) goto L81
            r4.mLastMotionY = r1
            int r5 = r7.getPointerId(r3)
            r4.mActivePointerId = r5
            r4.ensureVelocityTracker()
        L81:
            android.view.VelocityTracker r5 = r4.mVelocityTracker
            if (r5 == 0) goto L88
            r5.addMovement(r7)
        L88:
            boolean r5 = r4.mIsBeingDragged
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.lib.ad.desigin.KSHeaderBehavior.onInterceptTouchEvent(com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v2, MotionEvent motionEvent) {
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(kSCoordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    fling(kSCoordinatorLayout, v2, -getScrollRangeForDragFling(v2), 0, this.mVelocityTracker.getYVelocity(this.mActivePointerId));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                int i2 = this.mLastMotionY - y2;
                if (!this.mIsBeingDragged) {
                    int iAbs = Math.abs(i2);
                    int i3 = this.mTouchSlop;
                    if (iAbs > i3) {
                        this.mIsBeingDragged = true;
                        i2 = i2 > 0 ? i2 - i3 : i2 + i3;
                    }
                }
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = y2;
                    scroll(kSCoordinatorLayout, v2, i2, getMaxDragOffset(v2), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
        } else {
            int x2 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            if (!kSCoordinatorLayout.isPointInChildBounds(v2, x2, y3) || !canDragView(v2)) {
                return false;
            }
            this.mLastMotionY = y3;
            this.mActivePointerId = motionEvent.getPointerId(0);
            ensureVelocityTracker();
        }
        VelocityTracker velocityTracker3 = this.mVelocityTracker;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    public final int scroll(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2, int i3, int i4) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, v2, getTopBottomOffsetForScrollingSibling() - i2, i3, i4);
    }

    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, v2, i2, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2, int i3, int i4) {
        int iClamp;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i3 == 0 || topAndBottomOffset < i3 || topAndBottomOffset > i4 || topAndBottomOffset == (iClamp = MathUtils.clamp(i2, i3, i4))) {
            return 0;
        }
        setTopAndBottomOffset(iClamp);
        return topAndBottomOffset - iClamp;
    }

    public KSHeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }
}

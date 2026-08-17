package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.Keep;
import androidx.core.view.ViewCompat;
import com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer;
import com.kwad.sdk.lib.ad.desigin.KSAppBarLayout;
import com.kwad.sdk.lib.ad.desigin.KSAppBarLayout.a;

@Keep
/* loaded from: classes4.dex */
public final class CustomHeaderBehaviorEx<V extends KSAppBarLayout, B extends KSAppBarLayout.a & CustomAppBarFlingConsumer> extends KSViewOffsetBehavior<V> {
    private static final int FLING_MAX_VELOCITY = 10000;
    private static final int INVALID_POINTER = -1;
    private static final String TAG = CustomHeaderBehaviorEx.class.toString();
    private int mActivePointerId;
    private B mBehavior;
    private boolean mEnabled;
    private int mExtraFixedSize;
    private Runnable mFlingRunnable;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    private OverScroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public class a implements Runnable {
        private final KSCoordinatorLayout bhB;
        private final V bhC;
        private int bhD;

        public a(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2) {
            this.bhB = kSCoordinatorLayout;
            this.bhC = v2;
            this.bhD = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.bhC == null || CustomHeaderBehaviorEx.this.mScroller == null) {
                return;
            }
            if (!CustomHeaderBehaviorEx.this.mScroller.computeScrollOffset()) {
                CustomHeaderBehaviorEx.this.mBehavior.onFlingFinished(this.bhB, (KSAppBarLayout) this.bhC);
                return;
            }
            int currY = CustomHeaderBehaviorEx.this.mScroller.getCurrY();
            int i2 = currY - this.bhD;
            int bottom = this.bhC.getBottom();
            int measuredHeight = (this.bhC.getMeasuredHeight() - this.bhC.getTotalScrollRange()) + CustomHeaderBehaviorEx.this.mExtraFixedSize;
            if (bottom == measuredHeight) {
                ((CustomAppBarFlingConsumer) CustomHeaderBehaviorEx.this.mBehavior).consumeAppBarFling(0, -i2);
            } else if (bottom <= 0 || bottom + i2 >= measuredHeight) {
                KSAppBarLayout.a aVar = CustomHeaderBehaviorEx.this.mBehavior;
                KSCoordinatorLayout kSCoordinatorLayout = this.bhB;
                V v2 = this.bhC;
                aVar.setHeaderTopBottomOffset(kSCoordinatorLayout, v2, v2.getTop() + i2);
            } else {
                KSAppBarLayout.a aVar2 = CustomHeaderBehaviorEx.this.mBehavior;
                KSCoordinatorLayout kSCoordinatorLayout2 = this.bhB;
                V v3 = this.bhC;
                aVar2.setHeaderTopBottomOffset(kSCoordinatorLayout2, v3, (v3.getTop() - bottom) + measuredHeight);
            }
            ViewCompat.postOnAnimation(this.bhC, this);
            this.bhD = currY;
        }
    }

    public CustomHeaderBehaviorEx(B b3) {
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
        this.mBehavior = b3;
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean fling(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2, int i3, float f2) {
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
            this.mBehavior.onFlingFinished(kSCoordinatorLayout, v2);
            return false;
        }
        a aVar = new a(kSCoordinatorLayout, v2, this.mScroller.getCurrY());
        this.mFlingRunnable = aVar;
        ViewCompat.postOnAnimation(v2, aVar);
        return true;
    }

    public final boolean isEnabled() {
        return this.mEnabled;
    }

    public final void setEnabled(boolean z2) {
        this.mEnabled = z2;
    }

    public final void setExtraFixedSize(int i2) {
        this.mExtraFixedSize = i2;
    }

    public final void stopFling() {
        OverScroller overScroller;
        if (this.mFlingRunnable == null || (overScroller = this.mScroller) == null || !overScroller.computeScrollOffset()) {
            return;
        }
        this.mScroller.abortAnimation();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout r7, V r8, android.view.MotionEvent r9) {
        /*
            r6 = this;
            int r0 = r6.mTouchSlop
            if (r0 >= 0) goto L12
            android.content.Context r0 = r7.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r6.mTouchSlop = r0
        L12:
            int r0 = r9.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L1f
            boolean r0 = r6.mIsBeingDragged
            if (r0 == 0) goto L1f
            return r2
        L1f:
            float r0 = r9.getX()
            int r0 = (int) r0
            float r3 = r9.getY()
            int r3 = (int) r3
            int r4 = r9.getActionMasked()
            r5 = 0
            if (r4 == 0) goto L68
            r7 = -1
            if (r4 == r2) goto L59
            if (r4 == r1) goto L39
            r8 = 3
            if (r4 == r8) goto L59
            goto L8d
        L39:
            int r8 = r6.mActivePointerId
            if (r8 == r7) goto L8d
            int r8 = r9.findPointerIndex(r8)
            if (r8 == r7) goto L8d
            float r7 = r9.getY(r8)
            int r7 = (int) r7
            int r8 = r6.mLastMotionY
            int r8 = r7 - r8
            int r8 = java.lang.Math.abs(r8)
            int r0 = r6.mTouchSlop
            if (r8 <= r0) goto L8d
            r6.mIsBeingDragged = r2
            r6.mLastMotionY = r7
            goto L8d
        L59:
            r6.mIsBeingDragged = r5
            r6.mActivePointerId = r7
            android.view.VelocityTracker r7 = r6.mVelocityTracker
            if (r7 == 0) goto L8d
            r7.recycle()
            r7 = 0
            r6.mVelocityTracker = r7
            goto L8d
        L68:
            r6.mIsBeingDragged = r5
            r6.stopFling()
            B extends com.kwad.sdk.lib.ad.desigin.KSAppBarLayout$a & com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer r1 = r6.mBehavior
            boolean r1 = r1.canDragView(r8)
            if (r1 == 0) goto L8d
            boolean r7 = r7.isPointInChildBounds(r8, r0, r3)
            if (r7 == 0) goto L8d
            r6.mLastMotionY = r3
            int r7 = r9.getPointerId(r5)
            r6.mActivePointerId = r7
            r6.ensureVelocityTracker()
            B extends com.kwad.sdk.lib.ad.desigin.KSAppBarLayout$a & com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer r7 = r6.mBehavior
            com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer r7 = (com.kwad.sdk.lib.ad.desigin.CustomAppBarFlingConsumer) r7
            r7.onAppBarTouchDown()
        L8d:
            android.view.VelocityTracker r7 = r6.mVelocityTracker
            if (r7 == 0) goto L94
            r7.addMovement(r9)
        L94:
            boolean r7 = r6.mIsBeingDragged
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.lib.ad.desigin.CustomHeaderBehaviorEx.onInterceptTouchEvent(com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout, com.kwad.sdk.lib.ad.desigin.KSAppBarLayout, android.view.MotionEvent):boolean");
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v2, MotionEvent motionEvent) {
        int i2;
        CustomHeaderBehaviorEx<V, B> customHeaderBehaviorEx;
        V v3;
        KSCoordinatorLayout kSCoordinatorLayout2;
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(kSCoordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                    int i3 = yVelocity < 0.0f ? -10000 : 0;
                    if (yVelocity < 0.0f) {
                        i2 = 0;
                        customHeaderBehaviorEx = this;
                        kSCoordinatorLayout2 = kSCoordinatorLayout;
                        v3 = v2;
                    } else {
                        i2 = -v2.getTop();
                        customHeaderBehaviorEx = this;
                        v3 = v2;
                        kSCoordinatorLayout2 = kSCoordinatorLayout;
                    }
                    customHeaderBehaviorEx.fling(kSCoordinatorLayout2, v3, i3, i2, yVelocity);
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y3 = (int) motionEvent.getY(iFindPointerIndex);
                int i4 = this.mLastMotionY - y3;
                if (!this.mIsBeingDragged) {
                    int iAbs = Math.abs(i4);
                    int i5 = this.mTouchSlop;
                    if (iAbs > i5) {
                        this.mIsBeingDragged = true;
                        i4 = i4 > 0 ? i4 - i5 : i4 + i5;
                    }
                }
                int i6 = i4;
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = y3;
                    B b3 = this.mBehavior;
                    b3.scroll(kSCoordinatorLayout, v2, i6, b3.getMaxDragOffset(v2), 0);
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
            if (!kSCoordinatorLayout.isPointInChildBounds(v2, x2, y2) || !this.mBehavior.canDragView(v2)) {
                return false;
            }
            this.mLastMotionY = y2;
            this.mActivePointerId = motionEvent.getPointerId(0);
            ensureVelocityTracker();
        }
        VelocityTracker velocityTracker3 = this.mVelocityTracker;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    public CustomHeaderBehaviorEx(Context context, AttributeSet attributeSet, B b3) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
        this.mBehavior = b3;
    }
}

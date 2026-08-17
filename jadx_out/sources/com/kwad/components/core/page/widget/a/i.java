package com.kwad.components.core.page.widget.a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ScrollerCompat;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class i {
    private static final Interpolator ahI = new Interpolator() { // from class: com.kwad.components.core.page.widget.a.i.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private final a ahJ;
    private final ViewGroup ahK;
    private int ahL;
    private float[] ahM;
    private float[] ahN;
    private float[] ahO;
    private float[] ahP;
    private int[] ahQ;
    private int[] ahR;
    private int[] ahS;
    private int ahT;
    private float ahU;
    private float ahV;
    private int ahW;
    private int ahX;
    private ScrollerCompat ahY;
    private View ahZ;
    private boolean aib;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private int duration = 0;
    private int mActivePointerId = -1;
    private final Runnable aia = new Runnable() { // from class: com.kwad.components.core.page.widget.a.i.2
        @Override // java.lang.Runnable
        public final void run() {
            i.this.bN(0);
        }
    };

    public static abstract class a {
        public static int getOrderedChildIndex(int i2) {
            return i2;
        }

        public int E(View view) {
            return 0;
        }

        public void bH(int i2) {
        }

        public int bI(int i2) {
            return 0;
        }

        public void onViewDragStateChanged(int i2) {
        }

        public void onViewReleased(View view, float f2, float f3) {
        }

        public abstract boolean tryCaptureView(View view, int i2);

        public int vm() {
            return 0;
        }
    }

    private i(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.ahK = viewGroup;
        this.ahJ = aVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.ahW = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.ahU = viewConfiguration.getScaledMaximumFlingVelocity();
        this.ahV = viewConfiguration.getScaledMinimumFlingVelocity();
        this.ahY = ScrollerCompat.create(context, ahI);
    }

    public static i a(ViewGroup viewGroup, a aVar) {
        return new i(viewGroup.getContext(), viewGroup, aVar);
    }

    private int b(View view, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int iC = c(i4, (int) this.ahV, (int) this.ahU);
        int iC2 = c(i5, (int) this.ahV, (int) this.ahU);
        int iAbs = Math.abs(i2);
        int iAbs2 = Math.abs(i3);
        int iAbs3 = Math.abs(iC);
        int iAbs4 = Math.abs(iC2);
        int i6 = iAbs3 + iAbs4;
        int i7 = iAbs + iAbs2;
        if (iC != 0) {
            f2 = iAbs3;
            f3 = i6;
        } else {
            f2 = iAbs;
            f3 = i7;
        }
        float f6 = f2 / f3;
        if (iC2 != 0) {
            f4 = iAbs4;
            f5 = i6;
        } else {
            f4 = iAbs2;
            f5 = i7;
        }
        return (int) ((b(i2, iC, 0) * f6) + (b(i3, iC2, this.ahJ.vm()) * (f4 / f5)));
    }

    private void bL(int i2) {
        float[] fArr = this.ahM;
        if (fArr == null) {
            return;
        }
        fArr[i2] = 0.0f;
        this.ahN[i2] = 0.0f;
        this.ahO[i2] = 0.0f;
        this.ahP[i2] = 0.0f;
        this.ahQ[i2] = 0;
        this.ahR[i2] = 0;
        this.ahS[i2] = 0;
        this.ahT = (~(1 << i2)) & this.ahT;
    }

    private void bM(int i2) {
        float[] fArr = this.ahM;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.ahN;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.ahO;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.ahP;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.ahQ;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.ahR;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.ahS;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.ahM = fArr2;
            this.ahN = fArr3;
            this.ahO = fArr4;
            this.ahP = fArr5;
            this.ahQ = iArr;
            this.ahR = iArr2;
            this.ahS = iArr3;
        }
    }

    private boolean bO(int i2) {
        if (isPointerDown(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private static int c(int i2, int i3, int i4) {
        int iAbs = Math.abs(i2);
        if (iAbs < i3) {
            return 0;
        }
        return iAbs > i4 ? i2 > 0 ? i4 : -i4 : i2;
    }

    private void cancel() {
        this.mActivePointerId = -1;
        vp();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private View findTopChildUnder(int i2, int i3) {
        for (int childCount = this.ahK.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.ahK.getChildAt(a.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private void g(float f2, float f3) {
        this.aib = true;
        this.ahJ.onViewReleased(this.ahZ, f2, f3);
        this.aib = false;
        if (this.ahL == 1) {
            bN(0);
        }
    }

    private void i(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i2);
            float x2 = MotionEventCompat.getX(motionEvent, i2);
            float y2 = MotionEventCompat.getY(motionEvent, i2);
            this.ahO[pointerId] = x2;
            this.ahP[pointerId] = y2;
        }
    }

    private boolean isCapturedViewUnder(int i2, int i3) {
        return isViewUnder(this.ahZ, i2, i3);
    }

    private boolean isPointerDown(int i2) {
        return ((1 << i2) & this.ahT) != 0;
    }

    private static boolean isViewUnder(View view, int i2, int i3) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom();
    }

    private static float l(float f2) {
        return (float) Math.sin((float) ((f2 - 0.5f) * 0.4712389167638204d));
    }

    private boolean m(View view, int i2) {
        if (view == this.ahZ && this.mActivePointerId == i2) {
            return true;
        }
        if (view == null || !this.ahJ.tryCaptureView(view, i2)) {
            return false;
        }
        this.mActivePointerId = i2;
        captureChildView(view, i2);
        return true;
    }

    private int p(int i2, int i3) {
        int i4 = i2 < this.ahK.getLeft() + this.ahW ? 1 : 0;
        if (i3 < this.ahK.getTop() + this.ahW) {
            i4 |= 4;
        }
        if (i2 > this.ahK.getRight() - this.ahW) {
            i4 |= 2;
        }
        return i3 > this.ahK.getBottom() - this.ahW ? i4 | 8 : i4;
    }

    private void vp() {
        float[] fArr = this.ahM;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.ahN, 0.0f);
        Arrays.fill(this.ahO, 0.0f);
        Arrays.fill(this.ahP, 0.0f);
        Arrays.fill(this.ahQ, 0);
        Arrays.fill(this.ahR, 0);
        Arrays.fill(this.ahS, 0);
        this.ahT = 0;
    }

    private void vq() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.ahU);
        g(a(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.ahV, this.ahU), a(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.ahV, this.ahU));
    }

    public final void bN(int i2) {
        this.ahK.removeCallbacks(this.aia);
        if (this.ahL != i2) {
            this.ahL = i2;
            this.ahJ.onViewDragStateChanged(i2);
            if (this.ahL == 0) {
                this.ahZ = null;
            }
        }
    }

    public final void captureChildView(View view, int i2) {
        if (view.getParent() == this.ahK) {
            this.ahZ = view;
            this.mActivePointerId = i2;
            bN(1);
        } else {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.ahK + ")");
        }
    }

    public final boolean continueSettling(boolean z2) {
        if (this.ahL == 2) {
            boolean zComputeScrollOffset = this.ahY.computeScrollOffset();
            int currX = this.ahY.getCurrX();
            int currY = this.ahY.getCurrY();
            int left = currX - this.ahZ.getLeft();
            int top = currY - this.ahZ.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.ahZ, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.ahZ, top);
            }
            if (left != 0 || top != 0) {
                this.ahJ.bH(currY);
            }
            if (zComputeScrollOffset && currX == this.ahY.getFinalX() && currY == this.ahY.getFinalY()) {
                this.ahY.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.ahK.post(this.aia);
            }
        }
        return this.ahL == 2;
    }

    public final int getTouchSlop() {
        return this.mTouchSlop;
    }

    public final void processTouchEvent(MotionEvent motionEvent) {
        float x2;
        int i2;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x3 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            View viewFindTopChildUnder = findTopChildUnder((int) x3, (int) y2);
            a(x3, y2, pointerId);
            m(viewFindTopChildUnder, pointerId);
            int i4 = this.ahQ[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.ahL == 1) {
                vq();
            }
            cancel();
            return;
        }
        float y3 = 0.0f;
        if (actionMasked == 2) {
            if (this.ahL == 1) {
                if (bO(this.mActivePointerId)) {
                    int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                    try {
                        x2 = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
                        try {
                            y3 = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
                        } catch (IllegalArgumentException unused) {
                        }
                    } catch (IllegalArgumentException unused2) {
                        x2 = 0.0f;
                    }
                    float[] fArr = this.ahO;
                    int i5 = this.mActivePointerId;
                    int i6 = (int) (x2 - fArr[i5]);
                    int i7 = (int) (y3 - this.ahP[i5]);
                    b(this.ahZ.getLeft() + i6, this.ahZ.getTop() + i7, i6, i7);
                    i(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            while (i3 < pointerCount) {
                int pointerId2 = MotionEventCompat.getPointerId(motionEvent, i3);
                if (bO(pointerId2)) {
                    float x4 = MotionEventCompat.getX(motionEvent, i3);
                    float y4 = MotionEventCompat.getY(motionEvent, i3);
                    float f2 = x4 - this.ahM[pointerId2];
                    float f3 = y4 - this.ahN[pointerId2];
                    b(f2, f3, pointerId2);
                    if (this.ahL == 1) {
                        break;
                    }
                    View viewFindTopChildUnder2 = findTopChildUnder((int) x4, (int) y4);
                    if (a(viewFindTopChildUnder2, f2, f3) && m(viewFindTopChildUnder2, pointerId2)) {
                        break;
                    }
                }
                i3++;
            }
            i(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.ahL == 1) {
                g(0.0f, 0.0f);
            }
            cancel();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            float x5 = MotionEventCompat.getX(motionEvent, actionIndex);
            float y5 = MotionEventCompat.getY(motionEvent, actionIndex);
            a(x5, y5, pointerId3);
            if (this.ahL == 0) {
                m(findTopChildUnder((int) x5, (int) y5), pointerId3);
                return;
            } else {
                if (isCapturedViewUnder((int) x5, (int) y5)) {
                    m(this.ahZ, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
        if (this.ahL == 1 && pointerId4 == this.mActivePointerId) {
            int pointerCount2 = MotionEventCompat.getPointerCount(motionEvent);
            while (true) {
                if (i3 >= pointerCount2) {
                    i2 = -1;
                    break;
                }
                int pointerId5 = MotionEventCompat.getPointerId(motionEvent, i3);
                if (pointerId5 != this.mActivePointerId) {
                    View viewFindTopChildUnder3 = findTopChildUnder((int) MotionEventCompat.getX(motionEvent, i3), (int) MotionEventCompat.getY(motionEvent, i3));
                    View view = this.ahZ;
                    if (viewFindTopChildUnder3 == view && m(view, pointerId5)) {
                        i2 = this.mActivePointerId;
                        break;
                    }
                }
                i3++;
            }
            if (i2 == -1) {
                vq();
            }
        }
        bL(pointerId4);
    }

    public final boolean settleCapturedViewAt(int i2, int i3) {
        if (this.aib) {
            return a(i2, i3, (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldInterceptTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.core.page.widget.a.i.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public final boolean smoothSlideViewTo(View view, int i2, int i3) {
        this.ahZ = view;
        this.mActivePointerId = -1;
        boolean zA = a(i2, i3, 0, 0);
        if (!zA && this.ahL == 0 && this.ahZ != null) {
            this.ahZ = null;
        }
        return zA;
    }

    private boolean a(int i2, int i3, int i4, int i5) {
        i iVar;
        int i6;
        int left = this.ahZ.getLeft();
        int top = this.ahZ.getTop();
        int i7 = i2 - left;
        int i8 = i3 - top;
        if (i7 == 0 && i8 == 0) {
            this.ahY.abortAnimation();
            bN(0);
            return false;
        }
        int iB = this.duration;
        if (iB == 0) {
            i6 = i8;
            iB = b(this.ahZ, i7, i6, i4, i5);
            iVar = this;
            i7 = i7;
        } else {
            iVar = this;
            i6 = i8;
        }
        iVar.ahY.startScroll(left, top, i7, i6, iB);
        bN(2);
        return true;
    }

    private static float a(float f2, float f3, float f4) {
        float fAbs = Math.abs(f2);
        if (fAbs < f3) {
            return 0.0f;
        }
        return fAbs > f4 ? f2 > 0.0f ? f4 : -f4 : f2;
    }

    private int b(int i2, int i3, int i4) {
        int iAbs;
        if (i2 == 0) {
            return 0;
        }
        int width = this.ahK.getWidth();
        float f2 = width / 2;
        float fL = f2 + (l(Math.min(1.0f, Math.abs(i2) / width)) * f2);
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fL / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f);
        }
        return Math.min(iAbs, 600);
    }

    private void a(float f2, float f3, int i2) {
        bM(i2);
        float[] fArr = this.ahM;
        this.ahO[i2] = f2;
        fArr[i2] = f2;
        float[] fArr2 = this.ahN;
        this.ahP[i2] = f3;
        fArr2[i2] = f3;
        this.ahQ[i2] = p((int) f2, (int) f3);
        this.ahT |= 1 << i2;
    }

    private boolean a(float f2, float f3, int i2, int i3) {
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        if ((this.ahQ[i2] & i3) == i3 && (this.ahX & i3) != 0 && (this.ahS[i2] & i3) != i3) {
            int i4 = this.ahR[i2];
            if ((i4 & i3) != i3) {
                int i5 = this.mTouchSlop;
                if ((fAbs > i5 || fAbs2 > i5) && (i4 & i3) == 0 && fAbs > i5) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private void b(float f2, float f3, int i2) {
        boolean zA = a(f2, f3, i2, 1);
        boolean z2 = zA;
        if (a(f3, f2, i2, 4)) {
            z2 = (zA ? 1 : 0) | 4;
        }
        boolean z3 = z2;
        if (a(f2, f3, i2, 2)) {
            z3 = (z2 ? 1 : 0) | 2;
        }
        ?? r02 = z3;
        if (a(f3, f2, i2, 8)) {
            r02 = (z3 ? 1 : 0) | 8;
        }
        if (r02 != 0) {
            int[] iArr = this.ahR;
            iArr[i2] = iArr[i2] | r02;
        }
    }

    private boolean a(View view, float f2, float f3) {
        return view != null && this.ahJ.vm() > 0 && Math.abs(f3) > ((float) this.mTouchSlop);
    }

    private void b(int i2, int i3, int i4, int i5) {
        int left = this.ahZ.getLeft();
        int top = this.ahZ.getTop();
        if (i4 != 0) {
            ViewCompat.offsetLeftAndRight(this.ahZ, this.ahJ.E(this.ahZ) - left);
        }
        if (i5 != 0) {
            i3 = this.ahJ.bI(i3);
            ViewCompat.offsetTopAndBottom(this.ahZ, i3 - top);
        }
        if (i4 == 0 && i5 == 0) {
            return;
        }
        this.ahJ.bH(i3);
    }
}

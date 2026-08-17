package com.kwad.components.core.page.widget.a;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.kwad.components.core.page.widget.a.i;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class c<V extends View> extends KSCoordinatorLayout.Behavior<V> {
    private float agL;
    private int agM;
    private boolean agN;
    private int agO;
    protected int agP;
    private int agQ;
    private int agR;
    protected int agS;
    private float agT;
    private boolean agU;
    private boolean agV;
    protected i agW;
    private boolean agX;
    private boolean agY;
    private int agZ;
    private boolean aha;
    private int ahb;
    private WeakReference<V> ahc;
    protected WeakReference<View> ahd;
    private a ahe;
    protected int ahf;
    private boolean ahg;
    private Map<View, Integer> ahh;
    protected boolean ahm;
    private c<V>.RunnableC0554c ahn;
    private int mActivePointerId;
    private VelocityTracker mVelocityTracker;
    private boolean agK = true;
    private int mState = 4;
    protected float ahi = 1.0f;
    protected float ahj = 1.0f;
    protected float ahk = 0.5f;
    protected float ahl = 0.5f;
    private final i.a aho = new i.a() { // from class: com.kwad.components.core.page.widget.a.c.2
        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int E(@NonNull View view) {
            return view.getLeft();
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void bH(int i2) {
            c.this.bG(i2);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int bI(int i2) {
            return MathUtils.clamp(i2, c.this.vl(), c.this.agU ? c.this.ahb : c.this.agS);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void onViewDragStateChanged(int i2) {
            if (i2 == 1) {
                c.this.bE(1);
            }
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void onViewReleased(@NonNull View view, float f2, float f3) {
            int iVl = 0;
            int i2 = 6;
            if (f3 < 0.0f) {
                if (c.this.agK) {
                    if (c.this.e(view, f3)) {
                        iVl = c.this.agQ;
                    } else {
                        iVl = c.this.agS;
                        i2 = 4;
                    }
                } else if (view.getTop() > c.this.agR) {
                    iVl = c.this.agR;
                }
                i2 = 3;
            } else if (c.this.agU && c.this.d(view, f3) && (view.getTop() > c.this.agS || Math.abs(f2) < Math.abs(f3))) {
                iVl = c.this.ahb;
                i2 = 5;
            } else if (f3 == 0.0f || Math.abs(f2) > Math.abs(f3)) {
                int top = view.getTop();
                if (c.this.agK) {
                    if (c.this.e(view, f3)) {
                        iVl = c.this.agQ;
                        i2 = 3;
                    } else {
                        iVl = c.this.agS;
                        i2 = 4;
                    }
                } else if (top < c.this.agR) {
                    if (top < Math.abs(top - c.this.agS)) {
                        i2 = 3;
                    } else {
                        iVl = c.this.agR;
                    }
                } else if (Math.abs(top - c.this.agR) < Math.abs(top - c.this.agS)) {
                    iVl = c.this.agR;
                } else {
                    iVl = c.this.agS;
                    i2 = 4;
                }
            } else if (c.this.e(view, f3)) {
                iVl = c.this.vl();
                i2 = 3;
            } else {
                iVl = c.this.agS;
                i2 = 4;
            }
            if (!c.this.agW.settleCapturedViewAt(view.getLeft(), iVl)) {
                c.this.bE(i2);
                return;
            }
            c.this.bE(2);
            c cVar = c.this;
            cVar.ahn = new RunnableC0554c(view, i2);
            ViewCompat.postOnAnimation(view, c.this.ahn);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final boolean tryCaptureView(@NonNull View view, int i2) {
            View view2;
            if (c.this.mState == 1 || c.this.ahg) {
                return false;
            }
            return ((c.this.mState == 3 && c.this.mActivePointerId == i2 && (view2 = c.this.ahd.get()) != null && view2.canScrollVertically(-1)) || c.this.ahc == null || c.this.ahc.get() != view) ? false : true;
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int vm() {
            return c.this.agU ? c.this.ahb : c.this.agS;
        }
    };

    public interface a {
        void bA(int i2);

        void i(float f2);
    }

    /* renamed from: com.kwad.components.core.page.widget.a.c$c, reason: collision with other inner class name */
    public class RunnableC0554c implements Runnable {
        private final int ahs;
        private final View mView;

        public RunnableC0554c(View view, int i2) {
            this.mView = view;
            this.ahs = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            i iVar = c.this.agW;
            if (iVar != null && iVar.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.mView, this);
                return;
            }
            c.this.bE(this.ahs);
            if (c.this.ahn == this) {
                c.this.ahn = null;
            }
        }
    }

    @VisibleForTesting
    private View D(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            if (view.getVisibility() == 0) {
                return view;
            }
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View viewD = D(viewGroup.getChildAt(i2));
                if (viewD != null) {
                    return viewD;
                }
            }
        }
        return null;
    }

    @SuppressLint({"ObsoleteSdkInt"})
    private void aX(boolean z2) {
        WeakReference<V> weakReference = this.ahc;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof KSCoordinatorLayout) {
            KSCoordinatorLayout kSCoordinatorLayout = (KSCoordinatorLayout) parent;
            int childCount = kSCoordinatorLayout.getChildCount();
            if (z2) {
                if (this.ahh != null) {
                    return;
                } else {
                    this.ahh = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = kSCoordinatorLayout.getChildAt(i2);
                if (childAt != this.ahc.get()) {
                    if (z2) {
                        this.ahh.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    } else {
                        Map<View, Integer> map = this.ahh;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.ahh.get(childAt).intValue());
                        }
                    }
                }
            }
            if (z2) {
                return;
            }
            this.ahh = null;
        }
    }

    private void bF(int i2) {
        if (i2 == 3) {
            this.ahm = true;
        } else if (i2 == 4 || i2 == 5 || i2 == 6) {
            this.ahm = false;
        }
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.agL);
        return this.mVelocityTracker.getYVelocity(this.mActivePointerId);
    }

    private void reset() {
        this.mActivePointerId = -1;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void vk() {
        if (this.agK) {
            this.agS = Math.max(this.ahb - this.agP, this.agQ);
        } else {
            this.agS = this.ahb - this.agP;
        }
    }

    public final void aW(boolean z2) {
        this.agU = true;
    }

    public final void bD(int i2) {
        WeakReference<V> weakReference;
        V v2;
        if (i2 == -1) {
            if (this.agN) {
                return;
            } else {
                this.agN = true;
            }
        } else {
            if (!this.agN && this.agM == i2) {
                return;
            }
            this.agN = false;
            this.agM = Math.max(0, i2);
            this.agS = this.ahb - i2;
        }
        if (this.mState != 4 || (weakReference = this.ahc) == null || (v2 = weakReference.get()) == null) {
            return;
        }
        v2.requestLayout();
    }

    public final void bE(int i2) {
        a aVar;
        if (this.mState == i2) {
            return;
        }
        this.mState = i2;
        bF(i2);
        if (i2 == 6 || i2 == 3) {
            aX(true);
        } else if (i2 == 5 || i2 == 4) {
            aX(false);
        }
        if (this.ahc.get() == null || (aVar = this.ahe) == null) {
            return;
        }
        aVar.bA(i2);
    }

    public final void bG(int i2) {
        if (this.ahc.get() == null || this.ahe == null) {
            return;
        }
        int i3 = this.agS;
        int iVl = i2 > i3 ? this.ahb - i3 : i3 - vl();
        if (iVl != 0) {
            this.agT = (this.agS - i2) / iVl;
        }
        this.ahe.i(this.agT);
    }

    public final void k(@FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f2) {
        this.ahl = 0.8f;
    }

    public final void l(View view, int i2) {
        int iVl;
        int i3;
        if (i2 == 4) {
            iVl = this.agS;
        } else if (i2 == 6) {
            iVl = this.agR;
            if (this.agK && iVl <= (i3 = this.agQ)) {
                i2 = 3;
                iVl = i3;
            }
        } else if (i2 == 3) {
            iVl = vl();
        } else {
            if (!this.agU || i2 != 5) {
                throw new IllegalArgumentException("Illegal mState argument: " + i2);
            }
            iVl = this.ahb;
        }
        if (!this.agW.smoothSlideViewTo(view, view.getLeft(), iVl)) {
            bE(i2);
        } else {
            bE(2);
            ViewCompat.postOnAnimation(view, new RunnableC0554c(view, i2));
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v2, MotionEvent motionEvent) {
        i iVar;
        if (!v2.isShown()) {
            this.agX = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.ahf = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.ahd;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && kSCoordinatorLayout.isPointInChildBounds(view, x2, this.ahf)) {
                this.mActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.ahg = true;
            }
            this.agX = (this.agY || this.mActivePointerId != -1 || kSCoordinatorLayout.isPointInChildBounds(v2, x2, this.ahf)) ? false : true;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.ahg = false;
            this.mActivePointerId = -1;
            if (this.agX) {
                this.agX = false;
                return false;
            }
        }
        if (!this.agX && (iVar = this.agW) != null && iVar.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.ahd;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.agX || this.mState == 1 || kSCoordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.agW == null || Math.abs(((float) this.ahf) - motionEvent.getY()) <= ((float) this.agW.getTouchSlop())) ? false : true;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onLayoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v2, int i2) {
        if (ViewCompat.getFitsSystemWindows(kSCoordinatorLayout) && !ViewCompat.getFitsSystemWindows(v2)) {
            v2.setFitsSystemWindows(true);
        }
        int top = v2.getTop();
        kSCoordinatorLayout.onLayoutChild(v2, i2);
        int height = kSCoordinatorLayout.getHeight();
        this.ahb = height;
        if (this.agN) {
            if (this.agO == 0) {
                this.agO = 64;
            }
            this.agP = Math.max(this.agO, height - ((kSCoordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.agP = this.agM;
        }
        this.agQ = Math.max(0, this.ahb - v2.getHeight());
        this.agR = this.ahb / 2;
        vk();
        v2.getTop();
        int i3 = this.mState;
        if (i3 == 3) {
            ViewCompat.offsetTopAndBottom(v2, vl());
        } else if (i3 == 6) {
            ViewCompat.offsetTopAndBottom(v2, this.agR);
        } else if (this.agU && i3 == 5) {
            ViewCompat.offsetTopAndBottom(v2, this.ahb);
        } else if (i3 == 4) {
            ViewCompat.offsetTopAndBottom(v2, this.agS);
        } else if (i3 == 1 || i3 == 2) {
            ViewCompat.offsetTopAndBottom(v2, top - v2.getTop());
        }
        if (this.agW == null) {
            this.agW = i.a(kSCoordinatorLayout, this.aho);
        }
        this.ahc = new WeakReference<>(v2);
        this.ahd = new WeakReference<>(D(v2));
        return true;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onNestedPreFling(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v2, @NonNull View view, float f2, float f3) {
        if (view == this.ahd.get()) {
            return this.mState != 3 || super.onNestedPreFling(kSCoordinatorLayout, v2, view, f2, f3);
        }
        return false;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onNestedPreScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v2, @NonNull View view, int i2, int i3, @NonNull int[] iArr, int i4) {
        if (i4 != 1 && view == this.ahd.get()) {
            int top = v2.getTop();
            int i5 = top - i3;
            if (i3 > 0) {
                if (i5 < vl()) {
                    int iVl = top - vl();
                    iArr[1] = iVl;
                    ViewCompat.offsetTopAndBottom(v2, -iVl);
                    bE(3);
                } else {
                    iArr[1] = i3;
                    ViewCompat.offsetTopAndBottom(v2, -i3);
                    bE(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.agS;
                if (i5 <= i6 || this.agU) {
                    iArr[1] = i3;
                    ViewCompat.offsetTopAndBottom(v2, -i3);
                    bE(1);
                } else {
                    int i7 = top - i6;
                    iArr[1] = i7;
                    ViewCompat.offsetTopAndBottom(v2, -i7);
                    bE(4);
                }
            }
            bG(v2.getTop());
            this.agZ = i3;
            this.aha = true;
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onRestoreInstanceState(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v2, @NonNull Parcelable parcelable) {
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(kSCoordinatorLayout, v2, bVar.getSuperState());
        int i2 = bVar.mState;
        if (i2 == 1 || i2 == 2) {
            this.mState = 4;
        } else {
            this.mState = i2;
        }
        bF(this.mState);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(KSCoordinatorLayout kSCoordinatorLayout, V v2) {
        return new b(super.onSaveInstanceState(kSCoordinatorLayout, v2), this.mState);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v2, @NonNull View view, @NonNull View view2, int i2, int i3) {
        this.agZ = 0;
        this.aha = false;
        return (i2 & 2) != 0;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onStopNestedScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v2, @NonNull View view, int i2) {
        int iVl;
        int i3 = 3;
        if (v2.getTop() == vl()) {
            bE(3);
            return;
        }
        if (this.ahe != null) {
            this.ahd.get();
        }
        if (view == this.ahd.get() && this.aha) {
            if (this.agZ > 0) {
                if (e(v2, getYVelocity())) {
                    iVl = vl();
                } else {
                    iVl = this.agS;
                    i3 = 4;
                }
            } else if (this.agU && d(v2, getYVelocity())) {
                iVl = this.ahb;
                i3 = 5;
            } else if (this.agZ == 0) {
                int top = v2.getTop();
                if (!this.agK) {
                    int i4 = this.agR;
                    if (top < i4) {
                        if (top < Math.abs(top - this.agS)) {
                            iVl = 0;
                        } else {
                            iVl = this.agR;
                        }
                    } else if (Math.abs(top - i4) < Math.abs(top - this.agS)) {
                        iVl = this.agR;
                    } else {
                        iVl = this.agS;
                        i3 = 4;
                    }
                    i3 = 6;
                } else if (e(v2, getYVelocity())) {
                    iVl = this.agQ;
                } else {
                    iVl = this.agS;
                    i3 = 4;
                }
            } else if (e(v2, getYVelocity())) {
                iVl = vl();
            } else {
                iVl = this.agS;
                i3 = 4;
            }
            if (this.agW.smoothSlideViewTo(v2, v2.getLeft(), iVl)) {
                bE(2);
                ViewCompat.postOnAnimation(v2, new RunnableC0554c(v2, i3));
            } else {
                bE(i3);
            }
            this.aha = false;
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onTouchEvent(@NonNull KSCoordinatorLayout kSCoordinatorLayout, V v2, @NonNull MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.mState == 1 && actionMasked == 0) {
            return true;
        }
        i iVar = this.agW;
        if (iVar != null) {
            iVar.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.agX && this.agW != null && Math.abs(this.ahf - motionEvent.getY()) > this.agW.getTouchSlop()) {
            this.agW.captureChildView(v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.agX;
    }

    public final void setState(final int i2) {
        if (i2 == this.mState) {
            return;
        }
        WeakReference<V> weakReference = this.ahc;
        if (weakReference == null) {
            if (i2 == 4 || i2 == 3 || i2 == 6 || (this.agU && i2 == 5)) {
                this.mState = i2;
                bF(i2);
                return;
            }
            return;
        }
        final V v2 = weakReference.get();
        if (v2 == null) {
            return;
        }
        ViewParent parent = v2.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v2)) {
            v2.post(new Runnable() { // from class: com.kwad.components.core.page.widget.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.l(v2, i2);
                }
            });
        } else {
            l(v2, i2);
        }
    }

    public final int vl() {
        if (this.agK) {
            return this.agQ;
        }
        return 0;
    }

    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator<b>() { // from class: com.kwad.components.core.page.widget.a.c.b.1
            private static b a(Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            private static b[] bJ(int i2) {
                return new b[i2];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object[] newArray(int i2) {
                return bJ(i2);
            }

            private static b a(Parcel parcel) {
                return new b(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return a(parcel, classLoader);
            }
        };
        final int mState;

        public b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mState = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.mState);
        }

        public b(Parcelable parcelable, int i2) {
            super(parcelable);
            this.mState = i2;
        }
    }

    public final boolean d(View view, float f2) {
        if (this.agV) {
            return true;
        }
        return view.getTop() >= this.agS && Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.agS)) / ((float) this.agM) > this.ahl;
    }

    public final boolean e(View view, float f2) {
        if (view.getTop() > this.agS) {
            return false;
        }
        int iVl = vl();
        float f3 = iVl;
        float fMax = Math.max(f3, view.getTop() + (f2 * (this.ahm ? this.ahj : this.ahi)));
        if (fMax == f3) {
            return true;
        }
        int i2 = this.agS;
        int i3 = i2 - iVl;
        if (!this.ahm) {
            f3 = i2;
        }
        float fAbs = Math.abs(fMax - f3) / i3;
        return this.ahm ? fAbs <= this.ahl : fAbs >= this.ahk;
    }

    public final void a(a aVar) {
        this.ahe = aVar;
    }
}

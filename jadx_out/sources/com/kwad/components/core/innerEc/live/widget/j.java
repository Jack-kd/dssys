package com.kwad.components.core.innerEc.live.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.utils.by;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes4.dex */
public final class j implements View.OnTouchListener {
    private GestureDetector MT;

    @NonNull
    private final LiveCommentsView Zq;

    @NonNull
    private final i Zr;
    private float Zt;
    private boolean Zu;

    @Nullable
    private a Zx;
    private final Activity mActivity;

    @NonNull
    private final Set<Object> Zs = new HashSet();
    private boolean Zv = true;
    private boolean Zw = true;
    private Runnable Zy = new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.j.1
        @Override // java.lang.Runnable
        public final void run() {
            j.this.Zw = true;
        }
    };

    @NonNull
    private final int[] Zz = new int[2];
    private int ZA = 0;
    private float ZB = 0.0f;
    private float ZC = 0.0f;
    private final Runnable ZD = new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.j.2
        @Override // java.lang.Runnable
        public final void run() {
            j.b(j.this, false);
        }
    };

    public static final class a {
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public j(@NonNull i iVar, @NonNull LiveCommentsView liveCommentsView, @NonNull Activity activity) {
        this.Zr = iVar;
        this.mActivity = activity;
        this.Zq = liveCommentsView;
        liveCommentsView.setOnTouchListener(this);
        this.MT = new GestureDetector(activity, new GestureDetector.SimpleOnGestureListener() { // from class: com.kwad.components.core.innerEc.live.widget.j.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                if (motionEvent == null) {
                    return true;
                }
                Iterator it = j.this.Zs.iterator();
                while (it.hasNext()) {
                    it.next();
                }
                j.this.Zw = false;
                by.b(j.this.Zy);
                by.a(j.this.Zy, j.this, 1000L);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
                super.onLongPress(motionEvent);
                if (!j.this.MT.isLongpressEnabled() || motionEvent.getY() <= j.this.Zq.getCustomFadingEdgeTop()) {
                    return;
                }
                j.this.sX();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                j.a(j.this, f3);
                return super.onScroll(motionEvent, motionEvent2, f2, f3);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (j.this.Zv && !j.this.mActivity.isFinishing() && motionEvent.getY() > j.this.Zq.getCustomFadingEdgeTop()) {
                    j.this.sY();
                }
                return true;
            }
        });
    }

    public static /* synthetic */ int a(j jVar, float f2) {
        int i2 = (int) (jVar.ZA + f2);
        jVar.ZA = i2;
        return i2;
    }

    private void aM(boolean z2) {
        this.MT.setIsLongpressEnabled(z2);
    }

    private void aN(boolean z2) {
        if (!z2) {
            by.runOnUiThreadDelay(this.ZD, 1000L);
        } else {
            by.b(this.ZD);
            this.Zu = true;
        }
    }

    private void h(@NonNull MotionEvent motionEvent) {
        if (!this.Zr.Zm || motionEvent.getAction() == 1) {
            float f2 = this.ZC;
            if (f2 == 0.0f) {
                return;
            }
            if (f2 < 0.0f) {
                Iterator<Object> it = this.Zs.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } else {
                Iterator<Object> it2 = this.Zs.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }
    }

    private void ta() {
        float scaledTouchSlop = ViewConfiguration.get(this.mActivity) != null ? r0.getScaledTouchSlop() : 0.0f;
        if (this.ZA == 0 || Math.abs(r1) <= scaledTouchSlop) {
            return;
        }
        if (this.ZA > 0) {
            int[] iArr = this.Zz;
            iArr[0] = iArr[0] + 1;
        } else {
            int[] iArr2 = this.Zz;
            iArr2[1] = iArr2[1] + 1;
        }
        this.ZA = 0;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.Zt = motionEvent.getRawY();
            aN(true);
            aM(true);
            Iterator<Object> it = this.Zs.iterator();
            while (it.hasNext()) {
                it.next();
            }
            this.ZB = motionEvent.getY();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            aN(false);
            ViewConfiguration.getLongPressTimeout();
            aM(false);
            Iterator<Object> it2 = this.Zs.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            if (motionEvent.getAction() == 1) {
                ta();
            }
            h(motionEvent);
        } else if (motionEvent.getAction() == 2) {
            if (Math.abs(motionEvent.getRawY() - this.Zt) > 10.0f) {
                aM(false);
            }
            this.ZC = motionEvent.getY() - this.ZB;
        }
        return this.MT.onTouchEvent(motionEvent);
    }

    public final void sX() {
        if (this.Zx != null) {
            Iterator<Object> it = this.Zs.iterator();
            while (it.hasNext()) {
                it.next();
            }
            this.Zx = null;
        }
    }

    public final void sY() {
        if (!this.Zw || this.Zx == null) {
            return;
        }
        Iterator<Object> it = this.Zs.iterator();
        while (it.hasNext()) {
            it.next();
        }
        this.Zx = null;
    }

    public final boolean sZ() {
        return this.Zu;
    }

    public static /* synthetic */ boolean b(j jVar, boolean z2) {
        jVar.Zu = false;
        return false;
    }
}

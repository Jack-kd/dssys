package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.smartdigimkt.k2.c0;
import com.smartdigimkt.k2.d0;
import com.smartdigimkt.k2.e;
import com.smartdigimkt.k2.e0;
import com.smartdigimkt.v1.o6;
import com.smartdigimkt.v1.p6;
import java.util.Map;

/* loaded from: classes5.dex */
public class SwipeOverlayView extends FrameLayout {
    public static final int SWIPE_TYPE_ALL_DIRECTION = 3;
    public static final int SWIPE_TYPE_HORIZONTAL = 1;
    public static final int SWIPE_TYPE_VERTICAL = 2;

    /* renamed from: a, reason: collision with root package name */
    public int f43663a;

    /* renamed from: b, reason: collision with root package name */
    public int f43664b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f43665c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43666d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f43667e;

    /* renamed from: f, reason: collision with root package name */
    public Map f43668f;

    /* renamed from: g, reason: collision with root package name */
    public float f43669g;

    /* renamed from: h, reason: collision with root package name */
    public float f43670h;

    /* renamed from: i, reason: collision with root package name */
    public long f43671i;

    /* renamed from: j, reason: collision with root package name */
    public p6 f43672j;

    /* renamed from: k, reason: collision with root package name */
    public o6 f43673k;

    public SwipeOverlayView(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkSwipeTrigger(float r6, float r7) {
        /*
            r5 = this;
            int r0 = r5.f43663a
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L29
            r3 = 2
            if (r0 == r3) goto L1d
            r3 = 3
            if (r0 == r3) goto Ld
            return r1
        Ld:
            float r6 = r6 * r6
            float r7 = r7 * r7
            float r7 = r7 + r6
            double r6 = (double) r7
            double r6 = java.lang.Math.sqrt(r6)
            int r0 = r5.f43664b
            double r3 = (double) r0
            int r6 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r6 < 0) goto L35
            goto L34
        L1d:
            float r6 = java.lang.Math.abs(r7)
            int r7 = r5.f43664b
            float r7 = (float) r7
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 < 0) goto L35
            goto L34
        L29:
            float r6 = java.lang.Math.abs(r6)
            int r7 = r5.f43664b
            float r7 = (float) r7
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 < 0) goto L35
        L34:
            return r2
        L35:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.SwipeOverlayView.checkSwipeTrigger(float, float):boolean");
    }

    public Integer findClickAreaAt(float f2, float f3) {
        int i2;
        try {
            Map map = this.f43668f;
            if (map != null && !map.isEmpty()) {
                getLocationOnScreen(new int[2]);
                int i3 = (int) (r2[0] + f2);
                int i4 = (int) (r2[1] + f3);
                for (Map.Entry entry : this.f43668f.entrySet()) {
                    View view = (View) entry.getKey();
                    if (view != null && view.getVisibility() == 0 && view.getWidth() != 0 && view.getHeight() != 0) {
                        int[] iArr = new int[2];
                        view.getLocationOnScreen(iArr);
                        int i5 = iArr[0];
                        if (i3 >= i5 && i3 < i5 + view.getWidth() && i4 >= (i2 = iArr[1]) && i4 < i2 + view.getHeight()) {
                            return (Integer) entry.getValue();
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
    
        if (r6.getY() >= (getHeight() / 2)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        if (r6 <= r1) goto L29;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            int r1 = r6.getAction()
            if (r1 != 0) goto L64
            java.util.Map r1 = r5.f43668f
            if (r1 == 0) goto L25
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L25
            float r1 = r6.getX()
            float r2 = r6.getY()
            java.lang.Integer r1 = r5.findClickAreaAt(r1, r2)
            if (r1 == 0) goto L25
            r5.f43666d = r0
            return r0
        L25:
            boolean r1 = r5.f43667e
            if (r1 == 0) goto L60
            android.content.Context r1 = r5.getContext()
            boolean r1 = com.smartdigimkt.c5.k.f(r1)
            if (r1 != 0) goto L43
            int r1 = r5.getHeight()
            int r1 = r1 / 2
            float r6 = r6.getY()
            float r1 = (float) r1
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 < 0) goto L5d
            goto L60
        L43:
            int r1 = r5.getWidth()
            float r1 = (float) r1
            r2 = 1082130432(0x40800000, float:4.0)
            float r3 = r1 / r2
            r4 = 1077936128(0x40400000, float:3.0)
            float r1 = r1 * r4
            float r1 = r1 / r2
            float r6 = r6.getX()
            int r2 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r2 < 0) goto L5d
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 > 0) goto L5d
            goto L60
        L5d:
            r5.f43666d = r0
            return r0
        L60:
            r6 = 1
            r5.f43666d = r6
            return r6
        L64:
            boolean r6 = r5.f43666d
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.SwipeOverlayView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null || !this.f43666d) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f43669g = motionEvent.getX();
            this.f43670h = motionEvent.getY();
            this.f43671i = System.currentTimeMillis();
            this.f43665c = false;
            return true;
        }
        int iIntValue = 3;
        if (action != 1) {
            if (action == 2) {
                if (this.f43665c) {
                    return true;
                }
                if (checkSwipeTrigger(motionEvent.getX() - this.f43669g, motionEvent.getY() - this.f43670h)) {
                    this.f43665c = true;
                    p6 p6Var = this.f43672j;
                    if (p6Var != null) {
                        e0 e0Var = ((c0) p6Var).f41298a;
                        e0Var.getClass();
                        try {
                            e eVar = e0Var.f41311h;
                            if (eVar != null) {
                                eVar.a(18, 51);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
                return true;
            }
            if (action != 3) {
                return false;
            }
        }
        if (findClickAreaAt(motionEvent.getX(), motionEvent.getY()) != null) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        long jCurrentTimeMillis = System.currentTimeMillis();
        float f2 = x2 - this.f43669g;
        float f3 = y2 - this.f43670h;
        float fSqrt = (float) Math.sqrt((f3 * f3) + (f2 * f2));
        long j2 = jCurrentTimeMillis - this.f43671i;
        if (fSqrt > 10.0f || j2 > 300) {
            return false;
        }
        o6 o6Var = this.f43673k;
        if (o6Var != null) {
            e0 e0Var2 = ((d0) o6Var).f41301a;
            e0Var2.getClass();
            try {
                if (e0Var2.f41311h != null) {
                    SwipeOverlayView swipeOverlayView = e0Var2.f41303j;
                    Integer numFindClickAreaAt = swipeOverlayView != null ? swipeOverlayView.findClickAreaAt(x2, y2) : null;
                    if (numFindClickAreaAt != null && numFindClickAreaAt.intValue() >= 0) {
                        iIntValue = numFindClickAreaAt.intValue();
                    }
                    e0Var2.f41311h.a(1, iIntValue);
                }
            } catch (Throwable unused2) {
            }
        }
        return true;
    }

    public void setEndCardClickArea(int i2) {
        this.f43667e = i2 == 1;
    }

    public void setExcludeViews(Map<View, Integer> map) {
        if (map != null) {
            this.f43668f = map;
        }
    }

    public void setOnCommonClickListener(o6 o6Var) {
        this.f43673k = o6Var;
    }

    public void setOnSwipeClickListener(p6 p6Var) {
        this.f43672j = p6Var;
    }

    public void setSwipeThreshold(int i2) {
        this.f43664b = i2;
    }

    public void setSwipeType(int i2) {
        this.f43663a = i2;
    }
}

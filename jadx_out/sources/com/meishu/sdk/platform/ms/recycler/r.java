package com.meishu.sdk.platform.ms.recycler;

import android.view.MotionEvent;
import android.view.View;
import com.meishu.sdk.core.utils.t1;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class r implements View.OnTouchListener {

    /* renamed from: m, reason: collision with root package name */
    public static final String f33067m = "r";

    /* renamed from: a, reason: collision with root package name */
    public final View f33068a;

    /* renamed from: b, reason: collision with root package name */
    public final List<View> f33069b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f33070c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f33071d;

    /* renamed from: e, reason: collision with root package name */
    public float f33072e;

    /* renamed from: f, reason: collision with root package name */
    public float f33073f;

    /* renamed from: g, reason: collision with root package name */
    public float f33074g;

    /* renamed from: h, reason: collision with root package name */
    public float f33075h;

    /* renamed from: i, reason: collision with root package name */
    public int f33076i;

    /* renamed from: j, reason: collision with root package name */
    public long f33077j;

    /* renamed from: k, reason: collision with root package name */
    public final int f33078k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f33079l;

    public r(View view, int i2) {
        this(view, i2, null);
    }

    public void a(float f2, float f3, long j2, float f4, float f5, int i2) {
    }

    public void b(MotionEvent motionEvent) {
        View view;
        this.f33079l = false;
        this.f33072e = 0.0f;
        this.f33073f = 0.0f;
        this.f33074g = 0.0f;
        this.f33075h = 0.0f;
        this.f33076i = 0;
        if (motionEvent == null) {
            return;
        }
        if (!this.f33071d || (view = this.f33068a) == null || view.isShown()) {
            List<View> list = this.f33069b;
            if (list != null && !list.isEmpty()) {
                List<View> list2 = this.f33069b;
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (list2 != null) {
                    try {
                        if (list2.isEmpty()) {
                            return;
                        }
                        Iterator<View> it = list2.iterator();
                        while (it.hasNext()) {
                            if (t1.a(it.next(), rawX, rawY)) {
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                return;
            }
            this.f33072e = motionEvent.getX();
            this.f33073f = motionEvent.getY();
            this.f33074g = motionEvent.getRawX();
            this.f33075h = motionEvent.getRawY();
            this.f33076i = 0;
            this.f33077j = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009d A[Catch: all -> 0x00dc, TryCatch #2 {all -> 0x00dc, blocks: (B:36:0x0099, B:38:0x009d, B:40:0x00a1, B:43:0x00a8), top: B:52:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a8 A[Catch: all -> 0x00dc, TRY_LEAVE, TryCatch #2 {all -> 0x00dc, blocks: (B:36:0x0099, B:38:0x009d, B:40:0x00a1, B:43:0x00a8), top: B:52:0x0099 }] */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            r12 = this;
            android.view.View r13 = r12.f33068a
            r1 = 0
            if (r13 == 0) goto L9
            int r13 = r12.f33078k
            if (r13 > 0) goto Lc
        L9:
            r2 = r12
            goto Ldc
        Lc:
            int r13 = r14.getAction()     // Catch: java.lang.Throwable -> L91
            if (r13 != 0) goto L20
            r12.a(r14)     // Catch: java.lang.Throwable -> L1b
            r12.b(r14)     // Catch: java.lang.Throwable -> L1b
        L18:
            r2 = r12
            goto L99
        L1b:
            r0 = move-exception
            r13 = r0
            r2 = r12
            goto L94
        L20:
            int r13 = r14.getAction()     // Catch: java.lang.Throwable -> L91
            r0 = 1
            if (r13 == r0) goto L2e
            int r13 = r14.getAction()     // Catch: java.lang.Throwable -> L1b
            r2 = 3
            if (r13 != r2) goto L18
        L2e:
            android.view.View r13 = r12.f33068a     // Catch: java.lang.Throwable -> L91
            android.content.Context r13 = r13.getContext()     // Catch: java.lang.Throwable -> L91
            android.content.res.Resources r13 = r13.getResources()     // Catch: java.lang.Throwable -> L91
            android.util.DisplayMetrics r13 = r13.getDisplayMetrics()     // Catch: java.lang.Throwable -> L91
            float r13 = r13.density     // Catch: java.lang.Throwable -> L91
            float r2 = r12.f33074g     // Catch: java.lang.Throwable -> L91
            float r3 = r14.getRawX()     // Catch: java.lang.Throwable -> L91
            float r2 = r2 - r3
            float r2 = java.lang.Math.abs(r2)     // Catch: java.lang.Throwable -> L91
            float r3 = r12.f33075h     // Catch: java.lang.Throwable -> L91
            float r4 = r14.getRawY()     // Catch: java.lang.Throwable -> L91
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)     // Catch: java.lang.Throwable -> L91
            float r2 = java.lang.Math.max(r2, r3)     // Catch: java.lang.Throwable -> L91
            int r2 = (int) r2     // Catch: java.lang.Throwable -> L91
            r12.f33076i = r2     // Catch: java.lang.Throwable -> L91
            float r2 = (float) r2     // Catch: java.lang.Throwable -> L91
            float r2 = r2 / r13
            int r13 = r12.f33078k     // Catch: java.lang.Throwable -> L91
            float r13 = (float) r13     // Catch: java.lang.Throwable -> L91
            int r13 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r13 <= 0) goto L18
            float r13 = r12.f33072e     // Catch: java.lang.Throwable -> L91
            r2 = 0
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 <= 0) goto L18
            float r13 = r12.f33073f     // Catch: java.lang.Throwable -> L91
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 <= 0) goto L18
            boolean r13 = r12.f33079l     // Catch: java.lang.Throwable -> L91
            if (r13 != 0) goto L18
            r12.f33079l = r0     // Catch: java.lang.Throwable -> L91
            float r3 = r12.f33072e     // Catch: java.lang.Throwable -> L91
            float r4 = r12.f33073f     // Catch: java.lang.Throwable -> L91
            long r5 = r12.f33077j     // Catch: java.lang.Throwable -> L91
            float r7 = r14.getX()     // Catch: java.lang.Throwable -> L91
            float r8 = r14.getY()     // Catch: java.lang.Throwable -> L91
            int r9 = r12.f33076i     // Catch: java.lang.Throwable -> L91
            r2 = r12
            r2.a(r3, r4, r5, r7, r8, r9)     // Catch: java.lang.Throwable -> L8e
            boolean r13 = r2.f33070c     // Catch: java.lang.Throwable -> L8e
            return r13
        L8e:
            r0 = move-exception
        L8f:
            r13 = r0
            goto L94
        L91:
            r0 = move-exception
            r2 = r12
            goto L8f
        L94:
            java.lang.String r0 = com.meishu.sdk.platform.ms.recycler.r.f33067m
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r13)
        L99:
            boolean r13 = r2.f33071d     // Catch: java.lang.Throwable -> Ldc
            if (r13 == 0) goto La8
            android.view.View r13 = r2.f33068a     // Catch: java.lang.Throwable -> Ldc
            if (r13 == 0) goto La8
            boolean r13 = r13.isShown()     // Catch: java.lang.Throwable -> Ldc
            if (r13 != 0) goto La8
            goto Ld9
        La8:
            android.view.View r13 = r2.f33068a     // Catch: java.lang.Throwable -> Ldc
            float r0 = r14.getX()     // Catch: java.lang.Throwable -> Ldc
            int r3 = r13.getLeft()     // Catch: java.lang.Throwable -> Ldc
            float r3 = (float) r3     // Catch: java.lang.Throwable -> Ldc
            float r9 = r0 - r3
            float r0 = r14.getY()     // Catch: java.lang.Throwable -> Ldc
            int r13 = r13.getTop()     // Catch: java.lang.Throwable -> Ldc
            float r13 = (float) r13     // Catch: java.lang.Throwable -> Ldc
            float r10 = r0 - r13
            long r4 = r14.getDownTime()     // Catch: java.lang.Throwable -> Ldc
            long r6 = r14.getEventTime()     // Catch: java.lang.Throwable -> Ldc
            int r8 = r14.getAction()     // Catch: java.lang.Throwable -> Ldc
            int r11 = r14.getMetaState()     // Catch: java.lang.Throwable -> Ldc
            android.view.MotionEvent r13 = android.view.MotionEvent.obtain(r4, r6, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> Ldc
            android.view.View r14 = r2.f33068a     // Catch: java.lang.Throwable -> Ldc
            r14.dispatchTouchEvent(r13)     // Catch: java.lang.Throwable -> Ldc
        Ld9:
            boolean r13 = r2.f33070c
            return r13
        Ldc:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.recycler.r.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public r(View view, int i2, List<View> list) {
        this.f33070c = true;
        this.f33071d = false;
        this.f33079l = false;
        this.f33068a = view;
        this.f33078k = i2;
        this.f33069b = list;
    }

    public void a(MotionEvent motionEvent) {
    }
}

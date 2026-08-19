package com.byazt.it;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.gg.zy;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 836, 38})
/* loaded from: classes.dex */
public class j extends l {
    public zy ec;
    public float gu;
    public float jl;

    /* renamed from: k, reason: collision with root package name */
    public AtomicInteger f21217k;

    /* renamed from: u, reason: collision with root package name */
    public AtomicBoolean f21218u;

    /* renamed from: v, reason: collision with root package name */
    public int f21219v;
    public String vv;
    public int xs;
    public int zy;

    public j(Context context) {
        super(context);
        this.zy = 0;
        this.f21217k = new AtomicInteger(Integer.MAX_VALUE);
        this.f21219v = Integer.MAX_VALUE;
        this.f21218u = new AtomicBoolean(true);
        this.xs = 0;
        this.vv = "up";
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        Object obj;
        Object obj2;
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        Map<String, Object> map = this.f21226w;
        if (map != null) {
            Object obj3 = map.get("direction");
            String strValueOf = "all";
            if (obj3 != null && !TextUtils.isEmpty(String.valueOf(obj3))) {
                strValueOf = String.valueOf(obj3);
            }
            this.vv = strValueOf;
            Object obj4 = this.f21226w.get("distance");
            if (obj4 == null) {
                this.zy = 0;
            } else {
                this.zy = com.byazt.xa.jx.hp(String.valueOf(obj4), 0);
            }
            if (this.f21217k.get() == Integer.MAX_VALUE && (obj2 = this.f21226w.get("frequency")) != null) {
                this.f21217k.set(com.byazt.xa.jx.hp(String.valueOf(obj2), Integer.MAX_VALUE));
            }
            if (this.f21219v == Integer.MAX_VALUE && (obj = this.f21226w.get("effectiveDuration")) != null) {
                this.f21219v = com.byazt.xa.jx.hp(String.valueOf(obj), Integer.MAX_VALUE);
            }
            Object obj5 = this.f21226w.get("inView");
            if (obj5 != null) {
                this.xs = com.byazt.xa.jx.hp(String.valueOf(obj5), 0);
            }
            this.f21218u.get();
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        hp();
        zy zyVar = this.ec;
        return zyVar != null ? zyVar.hp(this.f21223l, motionEvent, this.hp, this, this.vv, this.zy, this.f21217k, this.xs, this.f21218u.get()) : hp(this.f21223l, motionEvent);
    }

    private void hp() {
        if (this.f21219v == Integer.MAX_VALUE || this.f21223l == null || System.currentTimeMillis() - this.f21223l.cx() < this.f21219v) {
            return;
        }
        this.f21218u.set(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(com.byazt.xs.jx r12, android.view.MotionEvent r13) {
        /*
            r11 = this;
            int r0 = r13.getAction()
            r1 = 1
            if (r0 == 0) goto Lbd
            r2 = 3
            r3 = 0
            if (r0 == r1) goto L1f
            if (r0 == r2) goto Lf
            goto Lc9
        Lf:
            float r0 = r13.getRawX()
            float r4 = r13.getRawY()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 != 0) goto L1f
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 == 0) goto Lc9
        L1f:
            float r0 = r13.getX()
            float r13 = r13.getY()
            int r4 = r11.zy
            if (r4 != 0) goto L34
            com.byazt.gg.gu r4 = r11.hp
            if (r4 == 0) goto L34
            boolean r12 = r11.hp(r12, r0, r13)
            return r12
        L34:
            android.content.Context r4 = r11.f21221e
            float r5 = r11.gu
            float r5 = r0 - r5
            int r4 = com.byazt.xa.s.l(r4, r5)
            android.content.Context r5 = r11.f21221e
            float r6 = r11.jl
            float r6 = r13 - r6
            int r5 = com.byazt.xa.s.l(r5, r6)
            java.lang.String r6 = r11.vv
            int r7 = r6.hashCode()
            r8 = 0
            r9 = 2
            switch(r7) {
                case 3739: goto L7c;
                case 96673: goto L72;
                case 3089570: goto L68;
                case 3317767: goto L5e;
                case 108511772: goto L54;
                default: goto L53;
            }
        L53:
            goto L86
        L54:
            java.lang.String r7 = "right"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L86
            r6 = r2
            goto L87
        L5e:
            java.lang.String r7 = "left"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L86
            r6 = r9
            goto L87
        L68:
            java.lang.String r7 = "down"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L86
            r6 = r1
            goto L87
        L72:
            java.lang.String r7 = "all"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L86
            r6 = 4
            goto L87
        L7c:
            java.lang.String r7 = "up"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L86
            r6 = r8
            goto L87
        L86:
            r6 = -1
        L87:
            if (r6 == 0) goto Laa
            if (r6 == r1) goto La8
            if (r6 == r9) goto La6
            if (r6 == r2) goto Lab
            double r6 = (double) r4
            r9 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r6 = java.lang.Math.pow(r6, r9)
            double r4 = (double) r5
            double r4 = java.lang.Math.pow(r4, r9)
            double r6 = r6 + r4
            double r4 = java.lang.Math.sqrt(r6)
            double r4 = java.lang.Math.abs(r4)
            int r4 = (int) r4
            goto Lab
        La6:
            int r4 = -r4
            goto Lab
        La8:
            r4 = r5
            goto Lab
        Laa:
            int r4 = -r5
        Lab:
            int r2 = r11.zy
            if (r4 < r2) goto Lbc
            com.byazt.gg.gu r2 = r11.hp
            if (r2 == 0) goto Lc9
            r11.gu = r3
            r11.jl = r3
            boolean r12 = r11.hp(r12, r0, r13)
            return r12
        Lbc:
            return r8
        Lbd:
            float r12 = r13.getX()
            r11.gu = r12
            float r12 = r13.getY()
            r11.jl = r12
        Lc9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.it.j.hp(com.byazt.xs.jx, android.view.MotionEvent):boolean");
    }

    private boolean hp(com.byazt.xs.jx jxVar, float f2, float f3) {
        if (this.f21217k.get() <= 0 || !this.f21218u.get()) {
            return false;
        }
        if (this.xs == 1 && !hp(jxVar.q(), f2, f3)) {
            return false;
        }
        this.hp.hp(jxVar, this.f21220a, this.jx.l(), this.jx);
        if (this.f21217k.get() != Integer.MAX_VALUE) {
            this.f21217k.decrementAndGet();
        }
        return true;
    }

    private boolean hp(View view, float f2, float f3) {
        return f2 >= 0.0f && f2 < ((float) view.getWidth()) && f3 >= 0.0f && f3 < ((float) view.getHeight());
    }

    public void hp(zy zyVar) {
        this.ec = zyVar;
    }
}

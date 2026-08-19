package com.anythink.core.common.inner.c;

import android.hardware.SensorEvent;
import com.anythink.core.common.d.s;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class c extends b {

    /* renamed from: e, reason: collision with root package name */
    List<Double> f4629e;

    /* renamed from: f, reason: collision with root package name */
    long f4630f;

    /* renamed from: n, reason: collision with root package name */
    a f4638n;

    /* renamed from: o, reason: collision with root package name */
    float f4639o;

    /* renamed from: p, reason: collision with root package name */
    float f4640p;

    /* renamed from: q, reason: collision with root package name */
    float f4641q;

    /* renamed from: d, reason: collision with root package name */
    public long f4628d = 0;

    /* renamed from: t, reason: collision with root package name */
    private long f4644t = 0;

    /* renamed from: r, reason: collision with root package name */
    String f4642r = "";

    /* renamed from: k, reason: collision with root package name */
    List<Double> f4635k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    List<Double> f4636l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    List<Double> f4637m = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    long f4631g = 0;

    /* renamed from: h, reason: collision with root package name */
    int f4632h = 0;

    /* renamed from: i, reason: collision with root package name */
    int f4633i = 0;

    /* renamed from: j, reason: collision with root package name */
    int f4634j = 0;

    /* renamed from: s, reason: collision with root package name */
    boolean f4643s = false;

    private void c() {
        this.f4631g = 0L;
        this.f4632h = 0;
        this.f4635k.clear();
        this.f4633i = 0;
        this.f4636l.clear();
        this.f4634j = 0;
        this.f4637m.clear();
    }

    private boolean d() {
        if (this.f4638n == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f4628d <= this.f4644t) {
            return false;
        }
        b();
        if (!this.f4638n.a()) {
            return false;
        }
        this.f4628d = jCurrentTimeMillis;
        a();
        return true;
    }

    @Override // com.anythink.core.common.inner.c.d
    public final void a(e eVar) {
        this.f4644t = eVar.d();
        this.f4629e = eVar.f4645a;
        this.f4630f = eVar.f4646b;
        this.f4642r = eVar.toString();
    }

    @Override // com.anythink.core.common.inner.c.d
    public final boolean b(SensorEvent sensorEvent) {
        float[] fArr;
        if (this.f4638n != null && (fArr = sensorEvent.values) != null && fArr.length >= 3) {
            try {
                float f2 = this.f4639o;
                if (f2 == 0.0f) {
                    this.f4639o = -fArr[0];
                    this.f4640p = -fArr[1];
                    this.f4641q = -fArr[2];
                    return false;
                }
                float f3 = (-fArr[0]) - f2;
                float f4 = (-fArr[1]) - this.f4640p;
                float f5 = (-fArr[2]) - this.f4641q;
                a(sensorEvent);
                if (this.f4631g == 0) {
                    this.f4631g = a(f3, f4, f5);
                } else if (System.currentTimeMillis() - this.f4631g > this.f4630f) {
                    c();
                } else {
                    if (this.f4632h > 0 && this.f4635k.size() > 0) {
                        if (this.f4632h >= this.f4635k.size()) {
                            c();
                            return d();
                        }
                        double dDoubleValue = this.f4635k.get(this.f4632h).doubleValue();
                        if (f3 * dDoubleValue > 0.0d && Math.abs(f3) > Math.abs(dDoubleValue)) {
                            this.f4632h++;
                        }
                    }
                    if (this.f4633i > 0 && this.f4636l.size() > 0) {
                        if (this.f4633i >= this.f4636l.size()) {
                            c();
                            return d();
                        }
                        double dDoubleValue2 = this.f4636l.get(this.f4633i).doubleValue();
                        if (f4 * dDoubleValue2 > 0.0d && Math.abs(f4) > Math.abs(dDoubleValue2)) {
                            this.f4633i++;
                        }
                    }
                    if (this.f4634j > 0 && this.f4637m.size() > 0) {
                        if (this.f4634j >= this.f4637m.size()) {
                            c();
                            return d();
                        }
                        double dDoubleValue3 = this.f4637m.get(this.f4634j).doubleValue();
                        if (f5 * dDoubleValue3 > 0.0d && Math.abs(f5) > Math.abs(dDoubleValue3)) {
                            this.f4634j++;
                        }
                    }
                    a(f3, f4, f5);
                }
            } catch (Throwable th) {
                if (!this.f4643s) {
                    com.anythink.core.common.u.f.b("ShakeHandler", "Throwable:" + th.getMessage() + ",params:" + this.f4642r, s.b().r());
                    this.f4643s = true;
                }
            }
        }
        return false;
    }

    @Override // com.anythink.core.common.inner.c.d
    public final void a(a aVar) {
        this.f4638n = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(float r12, float r13, float r14) {
        /*
            r11 = this;
            r0 = 0
            double r1 = r11.a(r0)
            int r3 = r11.f4632h
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L25
            float r3 = java.lang.Math.abs(r12)
            double r7 = (double) r3
            int r3 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r3 < 0) goto L25
            r11.a(r0, r12)
            r11.f4632h = r4
            long r7 = r11.f4631g
            int r12 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r12 != 0) goto L25
            long r7 = java.lang.System.currentTimeMillis()
            goto L26
        L25:
            r7 = r5
        L26:
            int r12 = r11.f4633i
            if (r12 != 0) goto L42
            float r12 = java.lang.Math.abs(r13)
            double r9 = (double) r12
            int r12 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r12 < 0) goto L42
            r11.a(r4, r13)
            r11.f4633i = r4
            long r12 = r11.f4631g
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 != 0) goto L42
            long r7 = java.lang.System.currentTimeMillis()
        L42:
            int r12 = r11.f4634j
            if (r12 != 0) goto L60
            float r12 = java.lang.Math.abs(r14)
            double r12 = (double) r12
            int r12 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r12 < 0) goto L60
            r12 = 2
            r11.a(r12, r14)
            r11.f4634j = r4
            long r12 = r11.f4631g
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 != 0) goto L60
            long r12 = java.lang.System.currentTimeMillis()
            return r12
        L60:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.c.c.a(float, float, float):long");
    }

    private void a(int i2, float f2) {
        List<Double> list;
        if (i2 == 1) {
            list = this.f4636l;
        } else if (i2 != 2) {
            list = this.f4635k;
        } else {
            list = this.f4637m;
        }
        list.clear();
        for (int i3 = 0; i3 < this.f4629e.size() - 1; i3++) {
            double dA = a(i3);
            if (f2 < 0.0f) {
                list.add(Double.valueOf((-1.0d) * dA));
                list.add(Double.valueOf(dA * 1.0d));
            } else {
                list.add(Double.valueOf(1.0d * dA));
                list.add(Double.valueOf(dA * (-1.0d)));
            }
        }
        double dA2 = a(this.f4629e.size() - 1);
        if (f2 < 0.0f) {
            list.add(Double.valueOf(dA2 * (-1.0d)));
        } else {
            list.add(Double.valueOf(dA2 * 1.0d));
        }
    }

    private double a(int i2) {
        List<Double> list = this.f4629e;
        if (list == null || list.size() <= i2) {
            return Double.MAX_VALUE;
        }
        return this.f4629e.get(i2).doubleValue();
    }

    @Override // com.anythink.core.common.inner.c.b
    public final void a() {
        super.a();
        c();
    }
}

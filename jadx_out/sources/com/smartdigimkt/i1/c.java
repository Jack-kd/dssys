package com.smartdigimkt.i1;

import android.hardware.SensorEvent;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class c extends b {

    /* renamed from: t, reason: collision with root package name */
    public static volatile long f40694t;

    /* renamed from: d, reason: collision with root package name */
    public List f40695d;

    /* renamed from: f, reason: collision with root package name */
    public long f40697f;

    /* renamed from: n, reason: collision with root package name */
    public a f40705n;

    /* renamed from: o, reason: collision with root package name */
    public float f40706o;

    /* renamed from: p, reason: collision with root package name */
    public float f40707p;

    /* renamed from: q, reason: collision with root package name */
    public float f40708q;

    /* renamed from: e, reason: collision with root package name */
    public long f40696e = 0;

    /* renamed from: r, reason: collision with root package name */
    public String f40709r = "";

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f40702k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f40703l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f40704m = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public long f40698g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f40699h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f40700i = 0;

    /* renamed from: j, reason: collision with root package name */
    public int f40701j = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f40710s = false;

    @Override // com.smartdigimkt.i1.d
    public final void a(f fVar) {
        this.f40696e = fVar.f40715e;
        this.f40695d = fVar.f40713c;
        this.f40697f = fVar.f40714d;
        this.f40709r = fVar.toString();
    }

    public final void b() {
        this.f40698g = 0L;
        this.f40699h = 0;
        this.f40702k.clear();
        this.f40700i = 0;
        this.f40703l.clear();
        this.f40701j = 0;
        this.f40704m.clear();
    }

    public final boolean c() {
        if (this.f40705n == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f40694t <= this.f40696e) {
            return false;
        }
        a();
        if (!this.f40705n.a()) {
            return false;
        }
        f40694t = jCurrentTimeMillis;
        this.f40691a = 0.0f;
        this.f40692b = 0.0f;
        this.f40693c = 0.0f;
        b();
        return true;
    }

    @Override // com.smartdigimkt.i1.d
    public final void a(a aVar) {
        this.f40705n = aVar;
    }

    @Override // com.smartdigimkt.i1.d
    public final boolean a(SensorEvent sensorEvent) {
        float[] fArr;
        if (this.f40705n != null && (fArr = sensorEvent.values) != null && fArr.length >= 3) {
            try {
                float f2 = this.f40706o;
                if (f2 == 0.0f) {
                    this.f40706o = -fArr[0];
                    this.f40707p = -fArr[1];
                    this.f40708q = -fArr[2];
                    return false;
                }
                float f3 = (-fArr[0]) - f2;
                float f4 = (-fArr[1]) - this.f40707p;
                float f5 = (-fArr[2]) - this.f40708q;
                b(sensorEvent);
                if (this.f40698g == 0) {
                    this.f40698g = a(f3, f4, f5);
                } else if (System.currentTimeMillis() - this.f40698g > this.f40697f) {
                    b();
                } else {
                    if (this.f40699h > 0 && this.f40702k.size() > 0) {
                        if (this.f40699h >= this.f40702k.size()) {
                            b();
                            return c();
                        }
                        double dDoubleValue = ((Double) this.f40702k.get(this.f40699h)).doubleValue();
                        if (f3 * dDoubleValue > 0.0d && Math.abs(f3) > Math.abs(dDoubleValue)) {
                            this.f40699h++;
                        }
                    }
                    if (this.f40700i > 0 && this.f40703l.size() > 0) {
                        if (this.f40700i >= this.f40703l.size()) {
                            b();
                            return c();
                        }
                        double dDoubleValue2 = ((Double) this.f40703l.get(this.f40700i)).doubleValue();
                        if (f4 * dDoubleValue2 > 0.0d && Math.abs(f4) > Math.abs(dDoubleValue2)) {
                            this.f40700i++;
                        }
                    }
                    if (this.f40701j > 0 && this.f40704m.size() > 0) {
                        if (this.f40701j >= this.f40704m.size()) {
                            b();
                            return c();
                        }
                        double dDoubleValue3 = ((Double) this.f40704m.get(this.f40701j)).doubleValue();
                        if (f5 * dDoubleValue3 > 0.0d && Math.abs(f5) > Math.abs(dDoubleValue3)) {
                            this.f40701j++;
                        }
                    }
                    a(f3, f4, f5);
                }
            } catch (Throwable th) {
                if (!this.f40710s) {
                    StringBuilder sb = new StringBuilder("Throwable:");
                    sb.append(th.getMessage() + ", " + k.a(th.getStackTrace()));
                    sb.append(",params:");
                    sb.append(this.f40709r);
                    h.a("ShakeHandler", sb.toString(), SDKContext.getInstance().f(), "");
                    this.f40710s = true;
                }
            }
        }
        return false;
    }

    public final void a(int i2, float f2) {
        ArrayList arrayList;
        double dDoubleValue;
        if (i2 == 1) {
            arrayList = this.f40703l;
        } else if (i2 != 2) {
            arrayList = this.f40702k;
        } else {
            arrayList = this.f40704m;
        }
        arrayList.clear();
        int i3 = 0;
        while (true) {
            dDoubleValue = Double.MAX_VALUE;
            if (i3 >= this.f40695d.size() - 1) {
                break;
            }
            List list = this.f40695d;
            if (list != null && list.size() > i3) {
                dDoubleValue = ((Double) this.f40695d.get(i3)).doubleValue();
            }
            if (f2 < 0.0f) {
                arrayList.add(Double.valueOf((-1.0d) * dDoubleValue));
                arrayList.add(Double.valueOf(dDoubleValue * 1.0d));
            } else {
                arrayList.add(Double.valueOf(1.0d * dDoubleValue));
                arrayList.add(Double.valueOf(dDoubleValue * (-1.0d)));
            }
            i3++;
        }
        int size = this.f40695d.size() - 1;
        List list2 = this.f40695d;
        if (list2 != null && list2.size() > size) {
            dDoubleValue = ((Double) this.f40695d.get(size)).doubleValue();
        }
        if (f2 < 0.0f) {
            arrayList.add(Double.valueOf(dDoubleValue * (-1.0d)));
        } else {
            arrayList.add(Double.valueOf(dDoubleValue * 1.0d));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(float r10, float r11, float r12) {
        /*
            r9 = this;
            java.util.List r0 = r9.f40695d
            r1 = 0
            if (r0 == 0) goto L18
            int r0 = r0.size()
            if (r0 <= 0) goto L18
            java.util.List r0 = r9.f40695d
            java.lang.Object r0 = r0.get(r1)
            java.lang.Double r0 = (java.lang.Double) r0
            double r2 = r0.doubleValue()
            goto L1d
        L18:
            r2 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
        L1d:
            int r0 = r9.f40699h
            r4 = 1
            r5 = 0
            if (r0 != 0) goto L3d
            float r0 = java.lang.Math.abs(r10)
            double r7 = (double) r0
            int r0 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r0 < 0) goto L3d
            r9.a(r1, r10)
            r9.f40699h = r4
            long r0 = r9.f40698g
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r10 != 0) goto L3d
            long r0 = java.lang.System.currentTimeMillis()
            goto L3e
        L3d:
            r0 = r5
        L3e:
            int r10 = r9.f40700i
            if (r10 != 0) goto L5a
            float r10 = java.lang.Math.abs(r11)
            double r7 = (double) r10
            int r10 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r10 < 0) goto L5a
            r9.a(r4, r11)
            r9.f40700i = r4
            long r10 = r9.f40698g
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 != 0) goto L5a
            long r0 = java.lang.System.currentTimeMillis()
        L5a:
            int r10 = r9.f40701j
            if (r10 != 0) goto L78
            float r10 = java.lang.Math.abs(r12)
            double r10 = (double) r10
            int r10 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r10 < 0) goto L78
            r10 = 2
            r9.a(r10, r12)
            r9.f40701j = r4
            long r10 = r9.f40698g
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 != 0) goto L78
            long r10 = java.lang.System.currentTimeMillis()
            return r10
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.i1.c.a(float, float, float):long");
    }
}

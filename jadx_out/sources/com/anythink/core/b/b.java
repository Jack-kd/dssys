package com.anythink.core.b;

import android.hardware.Sensor;
import android.hardware.SensorEventListener;

/* loaded from: classes.dex */
public abstract class b implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1569a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f1570b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1571c = 2;

    /* renamed from: d, reason: collision with root package name */
    public float f1572d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f1573e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f1574f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public long f1575g = 0;

    /* renamed from: h, reason: collision with root package name */
    private int f1576h;

    /* renamed from: i, reason: collision with root package name */
    private int f1577i;

    private b(int i2, int i3) {
        this.f1576h = i2;
        this.f1577i = i3;
    }

    public abstract void a();

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    @Override // android.hardware.SensorEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSensorChanged(android.hardware.SensorEvent r9) {
        /*
            r8 = this;
            float[] r9 = r9.values
            r0 = 0
            r0 = r9[r0]
            float r0 = -r0
            r1 = 1
            r1 = r9[r1]
            float r1 = -r1
            r2 = 2
            r9 = r9[r2]
            float r9 = -r9
            float r2 = r8.f1572d
            r3 = 0
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 == 0) goto L22
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r4 = r8.f1576h
            float r4 = (float) r4
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L48
        L22:
            float r2 = r8.f1573e
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 == 0) goto L35
            float r2 = r1 - r2
            float r2 = java.lang.Math.abs(r2)
            int r4 = r8.f1576h
            float r4 = (float) r4
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L48
        L35:
            float r2 = r8.f1574f
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 == 0) goto L59
            float r2 = r9 - r2
            float r2 = java.lang.Math.abs(r2)
            int r3 = r8.f1576h
            float r3 = (float) r3
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L59
        L48:
            long r2 = java.lang.System.currentTimeMillis()
            long r4 = r8.f1575g
            long r4 = r2 - r4
            int r6 = r8.f1577i
            long r6 = (long) r6
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto L59
            r8.f1575g = r2
        L59:
            r8.f1572d = r0
            r8.f1573e = r1
            r8.f1574f = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.b.b.onSensorChanged(android.hardware.SensorEvent):void");
    }
}

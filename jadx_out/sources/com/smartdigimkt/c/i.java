package com.smartdigimkt.c;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.smartdigimkt.china.based.twist.TwistG2CV2View;

/* loaded from: classes5.dex */
public final class i implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final float f39603a;

    /* renamed from: b, reason: collision with root package name */
    public final float f39604b;

    /* renamed from: c, reason: collision with root package name */
    public final float f39605c;

    /* renamed from: d, reason: collision with root package name */
    public float f39606d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f39607e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f39608f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public long f39609g = 0;

    /* renamed from: h, reason: collision with root package name */
    public long f39610h = 0;

    /* renamed from: i, reason: collision with root package name */
    public long f39611i = 0;

    /* renamed from: j, reason: collision with root package name */
    public boolean f39612j = false;

    /* renamed from: k, reason: collision with root package name */
    public final d f39613k;

    public i(float f2, float f3, float f4, d dVar) {
        this.f39603a = f2;
        this.f39604b = f3;
        this.f39605c = f4;
        this.f39613k = dVar;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == null) {
                    return;
                }
                if (sensor.getType() != 4) {
                    sensorEvent.sensor.getType();
                    return;
                }
                if (this.f39612j) {
                    return;
                }
                if (this.f39609g == 0) {
                    this.f39609g = sensorEvent.timestamp;
                    this.f39610h = System.currentTimeMillis();
                    if (this.f39611i <= 0) {
                        this.f39611i = System.currentTimeMillis();
                        return;
                    }
                    return;
                }
                float f2 = (r4 - r0) * 1.0E-9f;
                this.f39609g = sensorEvent.timestamp;
                float[] fArr = sensorEvent.values;
                if (fArr != null && fArr.length >= 3) {
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float degrees = ((float) Math.toDegrees(f3)) * f2;
                    float degrees2 = ((float) Math.toDegrees(f4)) * f2;
                    float degrees3 = ((float) Math.toDegrees(f5)) * f2;
                    if (Math.abs(degrees) < 0.01f) {
                        degrees = 0.0f;
                    }
                    if (Math.abs(degrees2) < 0.01f) {
                        degrees2 = 0.0f;
                    }
                    if (Math.abs(degrees3) < 0.01f) {
                        degrees3 = 0.0f;
                    }
                    this.f39606d += Math.abs(degrees);
                    this.f39607e += Math.abs(degrees2);
                    float fAbs = this.f39608f + Math.abs(degrees3);
                    this.f39608f = fAbs;
                    if (this.f39606d <= 5.0f && this.f39607e <= 5.0f && fAbs <= 5.0f && !this.f39612j) {
                        this.f39611i = System.currentTimeMillis();
                    }
                    float f6 = this.f39603a;
                    if (f6 > 0.0f || this.f39604b > 0.0f || this.f39605c > 0.0f) {
                        boolean z2 = f6 <= 0.0f || this.f39606d >= f6;
                        float f7 = this.f39604b;
                        boolean z3 = f7 <= 0.0f || this.f39607e >= f7;
                        float f8 = this.f39605c;
                        boolean z4 = f8 <= 0.0f || this.f39608f >= f8;
                        if (z2 && z3 && z4) {
                            this.f39612j = true;
                            if (this.f39613k != null) {
                                if (a.f39595a == null) {
                                    synchronized (a.class) {
                                        try {
                                            if (a.f39595a == null) {
                                                a.f39595a = new a();
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                a aVar = a.f39595a;
                                float f9 = this.f39606d;
                                float f10 = this.f39607e;
                                float f11 = this.f39608f;
                                if (this.f39610h > 0) {
                                    System.currentTimeMillis();
                                }
                                if (this.f39611i > 0) {
                                    System.currentTimeMillis();
                                }
                                aVar.a(f9, f10, f11);
                                TwistG2CV2View twistG2CV2View = this.f39613k.f39598a;
                                int i2 = TwistG2CV2View.f39826s;
                                twistG2CV2View.getClass();
                                e eVar = twistG2CV2View.f39836q;
                                if (eVar != null) {
                                    h hVar = ((g) eVar).f39600a;
                                    TwistG2CV2View twistG2CV2View2 = hVar.f39601i;
                                    if (twistG2CV2View2 != null) {
                                        twistG2CV2View2.getTwistSensorEventListener();
                                    }
                                    com.smartdigimkt.k2.e eVar2 = hVar.f41311h;
                                    if (eVar2 != null) {
                                        eVar2.a(19, 50);
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}

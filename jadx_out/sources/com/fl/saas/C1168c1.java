package com.fl.saas;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.c1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1168c1 implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    private SensorManager f30343a;

    /* renamed from: b, reason: collision with root package name */
    private Sensor f30344b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f30345c;

    /* renamed from: d, reason: collision with root package name */
    private float f30346d;

    /* renamed from: e, reason: collision with root package name */
    private float f30347e;

    /* renamed from: f, reason: collision with root package name */
    private float f30348f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f30349g;

    private boolean a() {
        if (!DeviceUtil.deviceHasAccelerometerSensor) {
            return false;
        }
        C1213r0 c1213r0 = DeviceUtil.controlBean;
        return c1213r0 != null ? c1213r0.g() : DeviceUtil.isCanUseSensor;
    }

    private void h() {
        this.f30346d = 0.0f;
        this.f30347e = 0.0f;
        this.f30348f = 0.0f;
        this.f30349g = false;
    }

    public void b() {
        Sensor sensor;
        SensorManager sensorManager;
        if (!this.f30345c && a()) {
            try {
                h();
                if (this.f30343a == null) {
                    this.f30343a = (SensorManager) DeviceUtil.getContext().getSystemService("sensor");
                }
                if (this.f30344b == null && (sensorManager = this.f30343a) != null) {
                    this.f30344b = sensorManager.getDefaultSensor(1);
                }
                SensorManager sensorManager2 = this.f30343a;
                if (sensorManager2 != null && (sensor = this.f30344b) != null) {
                    sensorManager2.registerListener(this, sensor, 3);
                    this.f30345c = true;
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public void c() {
        d();
        this.f30343a = null;
        this.f30344b = null;
        h();
    }

    public void d() {
        if (this.f30345c) {
            try {
                SensorManager sensorManager = this.f30343a;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public float e() {
        return this.f30346d;
    }

    public float f() {
        return this.f30347e;
    }

    public float g() {
        return this.f30348f;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.f30345c && sensorEvent.sensor.getType() == 1) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            if (!this.f30349g) {
                this.f30346d = f2;
                this.f30347e = f3;
                this.f30348f = f4;
                this.f30349g = true;
                return;
            }
            if (Math.abs(f2) > Math.abs(this.f30346d)) {
                this.f30346d = f2;
            }
            if (Math.abs(f3) > Math.abs(this.f30347e)) {
                this.f30347e = f3;
            }
            if (Math.abs(f4) > Math.abs(this.f30348f)) {
                this.f30348f = f4;
            }
        }
    }
}

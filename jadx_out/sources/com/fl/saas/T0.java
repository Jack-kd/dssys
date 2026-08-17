package com.fl.saas;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class T0 implements SensorEventListener {

    /* renamed from: c, reason: collision with root package name */
    private static T0 f30060c;

    /* renamed from: a, reason: collision with root package name */
    private SensorManager f30061a;

    /* renamed from: b, reason: collision with root package name */
    private Sensor f30062b;

    private T0() {
    }

    public static T0 b() {
        if (f30060c == null) {
            synchronized (T0.class) {
                f30060c = new T0();
            }
        }
        return f30060c;
    }

    private void c() {
        try {
            DeviceUtil.deviceHasAccelerometerSensor = false;
            if (this.f30061a == null) {
                this.f30061a = (SensorManager) DeviceUtil.getContext().getSystemService("sensor");
            }
            if (this.f30062b == null) {
                this.f30062b = this.f30061a.getDefaultSensor(1);
            }
            this.f30061a.registerListener(this, this.f30062b, 3);
            DeviceUtil.postUIDelayed(200L, new E1(this));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            SensorManager sensorManager = this.f30061a;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this);
                this.f30061a = null;
                this.f30062b = null;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        DeviceUtil.deviceHasAccelerometerSensor = true;
        d();
    }

    public void a() {
        c();
        DeviceUtil.postUIDelayed(500L, new E1(this));
    }
}

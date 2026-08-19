package com.anythink.core.b;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.anythink.core.common.d.s;

/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    private static volatile a f1564d;

    /* renamed from: a, reason: collision with root package name */
    Sensor f1565a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1566b = a.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    private SensorManager f1567c;

    /* renamed from: e, reason: collision with root package name */
    private float[] f1568e;

    private a() {
        Context contextG = s.b().g();
        if (contextG != null) {
            try {
                if (this.f1567c == null) {
                    this.f1567c = (SensorManager) contextG.getSystemService("sensor");
                }
                if (this.f1565a == null) {
                    this.f1565a = this.f1567c.getDefaultSensor(1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static a a() {
        if (f1564d == null) {
            synchronized (a.class) {
                try {
                    if (f1564d == null) {
                        f1564d = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1564d;
    }

    private boolean b() {
        return this.f1565a != null;
    }

    private synchronized float[] c() {
        return this.f1568e;
    }

    public final void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.f1567c;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(SensorEventListener sensorEventListener) {
        try {
            this.f1567c.registerListener(sensorEventListener, this.f1565a, 2);
        } catch (Throwable unused) {
        }
    }

    public final synchronized void a(float[] fArr) {
        this.f1568e = fArr;
    }
}

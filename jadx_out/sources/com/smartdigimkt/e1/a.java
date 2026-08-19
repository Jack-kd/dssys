package com.smartdigimkt.e1;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static volatile a f40044d;

    /* renamed from: a, reason: collision with root package name */
    public final SensorManager f40045a;

    /* renamed from: b, reason: collision with root package name */
    public final Sensor f40046b;

    /* renamed from: c, reason: collision with root package name */
    public float[] f40047c;

    public a() {
        Context contextD = SDKContext.getInstance().d();
        if (contextD != null) {
            try {
                if (this.f40045a == null) {
                    this.f40045a = (SensorManager) contextD.getSystemService("sensor");
                }
                if (this.f40046b == null) {
                    this.f40046b = this.f40045a.getDefaultSensor(1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static a a() {
        if (f40044d == null) {
            synchronized (a.class) {
                try {
                    if (f40044d == null) {
                        f40044d = new a();
                    }
                } finally {
                }
            }
        }
        return f40044d;
    }

    public final void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.f40045a;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
                sensorEventListener.hashCode();
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(SensorEventListener sensorEventListener) {
        try {
            this.f40045a.registerListener(sensorEventListener, this.f40046b, 2);
            sensorEventListener.hashCode();
        } catch (Throwable unused) {
        }
    }
}

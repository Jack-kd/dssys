package com.smartdigimkt.i0;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* loaded from: classes5.dex */
public abstract class k implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.i1.b f40664a;

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        com.smartdigimkt.i1.b bVar = this.f40664a;
        if (bVar != null) {
            bVar.a(sensorEvent);
        }
    }
}

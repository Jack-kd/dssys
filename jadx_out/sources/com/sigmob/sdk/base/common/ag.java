package com.sigmob.sdk.base.common;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes4.dex */
public class ag implements SensorEventListener {

    /* renamed from: c, reason: collision with root package name */
    private static final String f35720c = "SensorManagerHelper";

    /* renamed from: d, reason: collision with root package name */
    private static volatile ag f35721d;

    /* renamed from: a, reason: collision with root package name */
    public final Set<SensorEventListener> f35722a = new CopyOnWriteArraySet();

    /* renamed from: b, reason: collision with root package name */
    public boolean f35723b = false;

    /* renamed from: e, reason: collision with root package name */
    private final SensorManager f35724e;

    private ag(Context context) {
        this.f35724e = (SensorManager) context.getSystemService("sensor");
    }

    public static ag a(Context context) {
        if (f35721d == null) {
            synchronized (ag.class) {
                try {
                    if (f35721d == null) {
                        f35721d = new ag(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f35721d;
    }

    private void b() {
        if (this.f35723b || this.f35722a.isEmpty()) {
            return;
        }
        this.f35724e.unregisterListener(this);
        try {
            com.sigmob.sdk.base.utils.k.c(f35720c, "startListeningIfNeeded: registeredSensors = " + a(new int[]{4, 1, 10, 2}), new Object[0]);
            this.f35723b = true;
        } catch (Exception e2) {
            Log.e(f35720c, "Failed to register listener for sensor.", e2);
        }
    }

    private void c() {
        if (this.f35723b && this.f35722a.isEmpty()) {
            this.f35724e.unregisterListener(this);
            this.f35723b = false;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
        Iterator<SensorEventListener> it = this.f35722a.iterator();
        while (it.hasNext()) {
            it.next().onAccuracyChanged(sensor, i2);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        Iterator<SensorEventListener> it = this.f35722a.iterator();
        while (it.hasNext()) {
            it.next().onSensorChanged(sensorEvent);
        }
    }

    private List<Integer> a(int[] iArr) {
        if (this.f35724e == null || iArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            Sensor defaultSensor = this.f35724e.getDefaultSensor(i2);
            if (defaultSensor != null) {
                this.f35724e.registerListener(this, defaultSensor, 3);
                arrayList.add(Integer.valueOf(i2));
            }
        }
        return arrayList;
    }

    public void b(SensorEventListener sensorEventListener) {
        if (this.f35722a.remove(sensorEventListener)) {
            c();
        }
    }

    public void a() {
        if (this.f35723b) {
            this.f35724e.unregisterListener(this);
            this.f35723b = false;
        }
        this.f35722a.clear();
        f35721d = null;
    }

    public void a(SensorEventListener sensorEventListener) {
        if (this.f35722a.add(sensorEventListener)) {
            b();
        }
    }
}

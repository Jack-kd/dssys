package com.anythink.core.common.inner.b;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.c.e;
import com.anythink.core.common.inner.c.f;

/* loaded from: classes2.dex */
public abstract class c implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    final String f4610a = "ShakeEventListenerImpl";

    /* renamed from: b, reason: collision with root package name */
    com.anythink.core.common.inner.c.d f4611b;

    private void a(y yVar) {
        e eVar = new e(yVar);
        if (eVar.a() != 1 || eVar.c() == null || eVar.c().size() <= 0) {
            this.f4611b = new f();
        } else {
            this.f4611b = new com.anythink.core.common.inner.c.c();
        }
        this.f4611b.a(new e(yVar));
        this.f4611b.a(new com.anythink.core.common.inner.c.a() { // from class: com.anythink.core.common.inner.b.c.1
            @Override // com.anythink.core.common.inner.c.a
            public final boolean a() {
                return c.this.a();
            }
        });
    }

    public abstract boolean a();

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        com.anythink.core.common.inner.c.d dVar = this.f4611b;
        if (dVar != null) {
            dVar.b(sensorEvent);
        }
    }
}

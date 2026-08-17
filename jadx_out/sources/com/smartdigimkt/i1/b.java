package com.smartdigimkt.i1;

import android.hardware.SensorEvent;

/* loaded from: classes5.dex */
public abstract class b implements d {

    /* renamed from: a, reason: collision with root package name */
    public float f40691a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public float f40692b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public float f40693c = 0.0f;

    public final void a() {
        float[] fArr;
        com.smartdigimkt.e1.a aVarA = com.smartdigimkt.e1.a.a();
        try {
            fArr = new float[]{this.f40691a, this.f40692b, this.f40693c};
        } catch (Throwable unused) {
            fArr = null;
        }
        synchronized (aVarA) {
            aVarA.f40047c = fArr;
        }
    }

    public final void b(SensorEvent sensorEvent) {
        try {
            float[] fArr = sensorEvent.values;
            if (Math.abs(fArr[0]) > this.f40691a) {
                this.f40691a = Math.abs(fArr[0]);
            }
            if (Math.abs(fArr[1]) > this.f40692b) {
                this.f40692b = Math.abs(fArr[1]);
            }
            if (Math.abs(fArr[2]) > this.f40693c) {
                this.f40693c = Math.abs(fArr[2]);
            }
        } catch (Throwable unused) {
        }
    }
}

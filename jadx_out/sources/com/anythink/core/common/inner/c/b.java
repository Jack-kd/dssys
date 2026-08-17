package com.anythink.core.common.inner.c;

import android.hardware.SensorEvent;

/* loaded from: classes2.dex */
public abstract class b implements d {

    /* renamed from: a, reason: collision with root package name */
    protected final int f4622a = 0;

    /* renamed from: b, reason: collision with root package name */
    protected final int f4623b = 1;

    /* renamed from: c, reason: collision with root package name */
    protected final int f4624c = 2;

    /* renamed from: d, reason: collision with root package name */
    private float f4625d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    private float f4626e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    private float f4627f = 0.0f;

    private float[] c() {
        try {
            return new float[]{this.f4625d, this.f4626e, this.f4627f};
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(SensorEvent sensorEvent) {
        try {
            float[] fArr = sensorEvent.values;
            if (Math.abs(fArr[0]) > this.f4625d) {
                this.f4625d = Math.abs(fArr[0]);
            }
            if (Math.abs(fArr[1]) > this.f4626e) {
                this.f4626e = Math.abs(fArr[1]);
            }
            if (Math.abs(fArr[2]) > this.f4627f) {
                this.f4627f = Math.abs(fArr[2]);
            }
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        com.anythink.core.b.a.a().a(c());
    }

    public void a() {
        this.f4625d = 0.0f;
        this.f4626e = 0.0f;
        this.f4627f = 0.0f;
    }
}

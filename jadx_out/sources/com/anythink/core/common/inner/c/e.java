package com.anythink.core.common.inner.c;

import com.anythink.core.common.h.y;
import java.util.List;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    List<Double> f4645a;

    /* renamed from: b, reason: collision with root package name */
    long f4646b;

    /* renamed from: c, reason: collision with root package name */
    private int f4647c;

    /* renamed from: d, reason: collision with root package name */
    private int f4648d;

    /* renamed from: e, reason: collision with root package name */
    private long f4649e;

    public e(y yVar) {
        this.f4648d = 0;
        this.f4649e = 0L;
        this.f4647c = yVar.F();
        this.f4648d = yVar.I();
        this.f4645a = yVar.H();
        this.f4646b = yVar.G();
        this.f4649e = yVar.x();
    }

    private long e() {
        return this.f4646b;
    }

    public final int a() {
        return this.f4647c;
    }

    public final int b() {
        return this.f4648d;
    }

    public final List<Double> c() {
        return this.f4645a;
    }

    public final long d() {
        return this.f4649e;
    }

    public final String toString() {
        return "ShakeSensorSetting{shakeWay=" + this.f4647c + ", shakeStrength=" + this.f4648d + ", shakeStrengthList=" + this.f4645a + ", shakeDetectDurationTime=" + this.f4646b + ", shakeTimeMs=" + this.f4649e + '}';
    }
}

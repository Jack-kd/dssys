package com.smartdigimkt.i1;

import java.util.List;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f40711a;

    /* renamed from: b, reason: collision with root package name */
    public final int f40712b;

    /* renamed from: c, reason: collision with root package name */
    public final List f40713c;

    /* renamed from: d, reason: collision with root package name */
    public final long f40714d;

    /* renamed from: e, reason: collision with root package name */
    public final long f40715e;

    public f(com.smartdigimkt.m3.e eVar) {
        this.f40712b = 0;
        this.f40715e = 0L;
        this.f40711a = eVar.f41882O1;
        this.f40712b = eVar.f41891R1;
        this.f40713c = eVar.f41888Q1;
        this.f40714d = eVar.f41885P1;
        long j2 = eVar.f41874M;
        this.f40715e = j2 <= 0 ? 5000L : j2;
    }

    public final String toString() {
        return "ShakeSensorSetting{shakeWay=" + this.f40711a + ", shakeStrength=" + this.f40712b + ", shakeStrengthList=" + this.f40713c + ", shakeDetectDurationTime=" + this.f40714d + ", shakeTimeMs=" + this.f40715e + '}';
    }
}

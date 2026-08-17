package com.czhj.sdk.common.mta;

/* loaded from: classes3.dex */
public abstract class PointEntityCrash extends PointEntitySuper {

    /* renamed from: a, reason: collision with root package name */
    private String f29340a;

    /* renamed from: b, reason: collision with root package name */
    private long f29341b = 0;

    public String getCrashMessage() {
        return this.f29340a;
    }

    public long getCrashTime() {
        return this.f29341b;
    }

    public void setCrashMessage(String str) {
        this.f29340a = str;
    }

    public void setCrashTime(long j2) {
        this.f29341b = j2;
    }
}

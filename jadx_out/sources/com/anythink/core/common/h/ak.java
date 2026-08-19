package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class ak {

    /* renamed from: a, reason: collision with root package name */
    private String f3752a;

    /* renamed from: b, reason: collision with root package name */
    private int f3753b;

    /* renamed from: c, reason: collision with root package name */
    private long f3754c;

    /* renamed from: d, reason: collision with root package name */
    private long f3755d;

    private ak() {
    }

    public static ak a(String str, int i2) {
        ak akVar = new ak();
        akVar.f3752a = str;
        akVar.f3753b = i2;
        return akVar;
    }

    public final long b() {
        return this.f3754c;
    }

    public final String c() {
        String str = this.f3752a;
        return str == null ? "" : str;
    }

    public final int d() {
        return this.f3753b;
    }

    public final String toString() {
        return "DynWFAdSourceFilterEntity{adSourceId='" + this.f3752a + "', filterReason=" + this.f3753b + ", reqLimitIntervalTime=" + this.f3754c + ", reqLimitEndTime=" + this.f3755d + '}';
    }

    public final void a(long j2) {
        this.f3754c = j2;
        if (j2 > 0) {
            this.f3755d = System.currentTimeMillis() + j2;
        }
    }

    public final long a() {
        return this.f3755d;
    }
}

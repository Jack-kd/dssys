package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private String f4236a;

    /* renamed from: b, reason: collision with root package name */
    private int f4237b;

    /* renamed from: c, reason: collision with root package name */
    private int f4238c;

    /* renamed from: d, reason: collision with root package name */
    private String f4239d;

    /* renamed from: e, reason: collision with root package name */
    private long f4240e;

    /* renamed from: f, reason: collision with root package name */
    private long f4241f;

    /* renamed from: g, reason: collision with root package name */
    private int f4242g;

    /* renamed from: h, reason: collision with root package name */
    private int f4243h = 2;

    /* renamed from: i, reason: collision with root package name */
    private int f4244i;

    public final void a(String str, int i2, int i3) {
        this.f4236a = str;
        this.f4237b = i2;
        this.f4238c = i3;
    }

    public final int b() {
        return this.f4237b;
    }

    public final int c() {
        return this.f4238c;
    }

    public final String d() {
        return this.f4239d;
    }

    public final long e() {
        return this.f4240e;
    }

    public final long f() {
        return this.f4241f;
    }

    public final int g() {
        return this.f4242g;
    }

    public final int h() {
        return this.f4243h;
    }

    public final int i() {
        return this.f4244i;
    }

    public final String toString() {
        return "AdCallExtraInfo{realPlacementId='" + this.f4236a + "', realGroupId=" + this.f4237b + ", realTrafficGroupId=" + this.f4238c + ", realRequestId='" + this.f4239d + "', realPLSharedPLReqTimeGap=" + this.f4240e + ", sharedPLFailReqReqTime=" + this.f4241f + ", sharedPLFailRetryReqCount=" + this.f4242g + ", appStrategyType=" + this.f4243h + ", isReadyResultType=" + this.f4244i + '}';
    }

    public final void b(long j2) {
        this.f4241f = j2;
    }

    public final void b(int i2) {
        this.f4244i = i2;
    }

    public final String a() {
        return this.f4236a;
    }

    public final void a(String str) {
        this.f4239d = str;
    }

    public final void a(long j2) {
        this.f4240e = j2;
    }

    public final void a(int i2) {
        this.f4242g = i2;
    }

    public final void a(boolean z2) {
        if (z2) {
            this.f4243h = 1;
        } else {
            this.f4243h = 2;
        }
    }
}

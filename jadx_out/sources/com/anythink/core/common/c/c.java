package com.anythink.core.common.c;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private String f2412a;

    /* renamed from: b, reason: collision with root package name */
    private long f2413b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f2414c;

    /* renamed from: d, reason: collision with root package name */
    private String f2415d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f2416e;

    /* renamed from: f, reason: collision with root package name */
    private String f2417f;

    private c(String str, String str2, boolean z2, long j2, boolean z3) {
        this(str, str2, z2, j2, z3, null);
    }

    private String b() {
        return this.f2412a;
    }

    private long c() {
        return this.f2413b;
    }

    private boolean d() {
        return this.f2414c;
    }

    private String e() {
        return this.f2415d;
    }

    private String f() {
        return this.f2417f;
    }

    public final boolean a() {
        return this.f2416e;
    }

    public final String toString() {
        return "ApkInspectResult{pkgName='" + this.f2412a + "', inspectTime=" + this.f2413b + ", inspectResult=" + this.f2414c + ", appVersion='" + this.f2415d + "', isRealTimeInspect=" + this.f2416e + ", uploadKey='" + this.f2417f + "'}";
    }

    private c(String str, String str2, boolean z2, long j2, boolean z3, String str3) {
        this.f2412a = str;
        this.f2417f = str2;
        this.f2416e = z2;
        this.f2413b = j2;
        this.f2414c = z3;
        this.f2415d = str3;
    }
}

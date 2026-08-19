package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f4252a;

    /* renamed from: b, reason: collision with root package name */
    private String f4253b;

    /* renamed from: c, reason: collision with root package name */
    private String f4254c;

    /* renamed from: d, reason: collision with root package name */
    private String f4255d;

    /* renamed from: e, reason: collision with root package name */
    private String f4256e;

    /* renamed from: f, reason: collision with root package name */
    private String f4257f;

    /* renamed from: g, reason: collision with root package name */
    private String f4258g;

    /* renamed from: h, reason: collision with root package name */
    private int f4259h;

    /* renamed from: i, reason: collision with root package name */
    private int f4260i;

    /* renamed from: j, reason: collision with root package name */
    private int f4261j;

    /* renamed from: k, reason: collision with root package name */
    private long f4262k;

    /* renamed from: l, reason: collision with root package name */
    private String f4263l;

    /* renamed from: m, reason: collision with root package name */
    private String f4264m;

    /* renamed from: n, reason: collision with root package name */
    private int f4265n;

    /* renamed from: o, reason: collision with root package name */
    private int f4266o;

    /* renamed from: p, reason: collision with root package name */
    private long f4267p;

    public f(String str) {
        this.f4253b = str;
    }

    private String o() {
        return this.f4258g;
    }

    private int p() {
        return this.f4252a;
    }

    public final String a() {
        return this.f4253b;
    }

    public final String b() {
        return this.f4254c;
    }

    public final String c() {
        return this.f4255d;
    }

    public final String d() {
        return this.f4256e;
    }

    public final String e() {
        return this.f4257f;
    }

    public final int f() {
        return this.f4259h;
    }

    public final int g() {
        return this.f4260i;
    }

    public final int h() {
        return this.f4261j;
    }

    public final long i() {
        return this.f4262k;
    }

    public final String j() {
        return this.f4263l;
    }

    public final String k() {
        return this.f4264m;
    }

    public final int l() {
        return this.f4265n;
    }

    public final int m() {
        return this.f4266o;
    }

    public final long n() {
        return this.f4267p;
    }

    public final String toString() {
        return "{eventType='" + this.f4253b + "', networkId='" + this.f4254c + "', format='" + this.f4255d + "', placementId='" + this.f4256e + "', sourceId='" + this.f4257f + "', extra='" + this.f4258g + "', month=" + this.f4259h + ", day=" + this.f4260i + ", hour=" + this.f4261j + ", timeStamp=" + this.f4262k + ", reqNum=" + this.f4252a + ", app='" + this.f4263l + "', networkFormat='" + this.f4264m + "'}";
    }

    private void c(int i2) {
        this.f4252a = i2;
    }

    public final void a(long j2) {
        this.f4262k = j2;
    }

    public final void b(int i2) {
        this.f4266o = i2;
    }

    public f(String str, String str2, String str3, long j2, int i2) {
        this.f4253b = str;
        this.f4262k = j2;
        this.f4252a = i2;
        str3.getClass();
        switch (str3) {
            case "network_format":
                this.f4264m = str2;
                break;
            case "source_id":
                this.f4257f = str2;
                break;
            case "format":
                this.f4255d = str2;
                break;
            case "network_id":
                this.f4254c = str2;
                break;
            case "app":
                this.f4263l = str2;
                break;
            case "placement_id":
                this.f4256e = str2;
                break;
        }
    }

    public final void a(String str) {
        this.f4257f = str;
    }

    public final void b(long j2) {
        this.f4267p = j2;
    }

    public final void a(int i2) {
        this.f4265n = i2;
    }

    public f(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, int i3, int i4, long j2) {
        this.f4253b = str;
        this.f4263l = str2;
        this.f4254c = str3;
        this.f4255d = str4;
        this.f4264m = str5;
        this.f4256e = str6;
        this.f4257f = str7;
        this.f4259h = i2;
        this.f4260i = i3;
        this.f4261j = i4;
        this.f4262k = j2;
    }
}

package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class am {

    /* renamed from: a, reason: collision with root package name */
    private String f3760a;

    /* renamed from: b, reason: collision with root package name */
    private String f3761b;

    /* renamed from: c, reason: collision with root package name */
    private String f3762c;

    /* renamed from: d, reason: collision with root package name */
    private String f3763d;

    /* renamed from: e, reason: collision with root package name */
    private int f3764e;

    /* renamed from: f, reason: collision with root package name */
    private long f3765f;

    /* renamed from: g, reason: collision with root package name */
    private long f3766g;

    /* renamed from: h, reason: collision with root package name */
    private int f3767h;

    /* renamed from: i, reason: collision with root package name */
    private String f3768i;

    /* renamed from: j, reason: collision with root package name */
    private String f3769j;

    /* renamed from: k, reason: collision with root package name */
    private n f3770k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f3771l;

    private am() {
    }

    public static am a(n nVar, String str, String str2, int i2) {
        am amVar = new am();
        amVar.f3761b = nVar.N();
        amVar.f3763d = nVar.aR();
        amVar.f3760a = nVar.aQ();
        amVar.f3764e = nVar.Z();
        amVar.f3765f = System.currentTimeMillis();
        amVar.f3767h = i2;
        amVar.f3768i = str;
        amVar.f3769j = str2;
        amVar.f3770k = nVar;
        return amVar;
    }

    public final String b() {
        String str = this.f3760a;
        return str != null ? str : "";
    }

    public final int c() {
        return this.f3764e;
    }

    public final int d() {
        return this.f3767h;
    }

    public final String e() {
        return this.f3768i + "," + this.f3769j;
    }

    public final long f() {
        return this.f3765f + this.f3766g;
    }

    public final String g() {
        return this.f3763d;
    }

    public final String h() {
        return this.f3762c;
    }

    public final n i() {
        return this.f3770k;
    }

    public final boolean j() {
        return this.f3771l;
    }

    public final String toString() {
        return "DynWFAdSourceRecordEntity{placementId='" + this.f3760a + "', adSourceId='" + this.f3761b + "', requestId='" + this.f3763d + "', networkFirmId=" + this.f3764e + "', recordTimeStamp=" + this.f3765f + "', recordTimeInterval=" + this.f3766g + "', recordTimeType=" + this.f3767h + "', networkErrorCode='" + this.f3768i + "', networkErrorMsg='" + this.f3769j + "', serverErrorCode='" + this.f3762c + "'}";
    }

    public final String a() {
        return this.f3761b;
    }

    public final void a(long j2) {
        this.f3766g = j2;
    }

    public final void a(String str) {
        this.f3762c = str;
    }

    public final void a(boolean z2) {
        this.f3771l = z2;
    }
}

package com.beizi.fusion;

/* loaded from: classes2.dex */
public class a5 extends z3 {

    /* renamed from: a, reason: collision with root package name */
    private String f12625a;

    /* renamed from: b, reason: collision with root package name */
    private String f12626b;

    /* renamed from: c, reason: collision with root package name */
    private String f12627c;

    /* renamed from: d, reason: collision with root package name */
    private String f12628d;

    public long a() {
        return so.d(this.f12626b);
    }

    public void b(String str) {
        this.f12625a = str;
    }

    public String c() {
        return this.f12628d;
    }

    public String d() {
        return this.f12625a;
    }

    public String toString() {
        return "{\"spaceId\":\"" + this.f12625a + "\",\"cacheTime\":\"" + this.f12626b + "\",\"expireTime\":\"" + this.f12627c + "\",\"requestId\":\"" + this.f12628d + "\"}";
    }

    public void a(long j2) {
        this.f12626b = String.valueOf(j2);
    }

    public long b() {
        return so.d(this.f12627c);
    }

    public void a(String str) {
        this.f12628d = str;
    }

    public void b(long j2) {
        this.f12627c = String.valueOf(j2);
    }
}

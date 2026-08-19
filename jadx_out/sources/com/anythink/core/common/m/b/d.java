package com.anythink.core.common.m.b;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private String f5629a = "";

    /* renamed from: b, reason: collision with root package name */
    private String f5630b = "";

    private d() {
    }

    public static d a(String str) {
        d dVar = new d();
        dVar.f5629a = str;
        return dVar;
    }

    private static d c() {
        return new d();
    }

    public final String b() {
        return this.f5629a;
    }

    public final String toString() {
        return "HttpReqEntity{urlType='" + this.f5629a + "', interceptKey='" + this.f5630b + "'}";
    }

    private void b(String str) {
        this.f5630b = str;
    }

    public static d a(String str, String str2) {
        d dVar = new d();
        dVar.f5629a = str;
        dVar.f5630b = str2;
        return dVar;
    }

    public final String a() {
        return this.f5630b;
    }
}

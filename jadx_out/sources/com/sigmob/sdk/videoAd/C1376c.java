package com.sigmob.sdk.videoAd;

/* renamed from: com.sigmob.sdk.videoAd.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1376c {

    /* renamed from: a, reason: collision with root package name */
    private String f38753a;

    /* renamed from: b, reason: collision with root package name */
    private String f38754b;

    /* renamed from: c, reason: collision with root package name */
    private String f38755c;
    private String title;

    public C1376c(String str, String str2, String str3, String str4) {
        this.title = str;
        this.f38753a = str2;
        this.f38754b = str3;
        this.f38755c = str4;
    }

    public String a() {
        return this.title;
    }

    public String b() {
        return this.f38753a;
    }

    public String c() {
        return this.f38754b;
    }

    public String d() {
        return this.f38755c;
    }

    public String toString() {
        return "DialogConfig{title='" + this.title + "', context='" + this.f38753a + "', cancelTxt='" + this.f38754b + "', closeTxtl='" + this.f38755c + "'}";
    }

    public void a(String str) {
        this.title = str;
    }

    public void b(String str) {
        this.f38753a = str;
    }

    public void c(String str) {
        this.f38754b = str;
    }

    public void d(String str) {
        this.f38755c = str;
    }
}

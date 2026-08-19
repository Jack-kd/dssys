package com.beizi.fusion;

/* loaded from: classes2.dex */
public enum fm {
    POST("POST"),
    GET("GET"),
    DOWNLOAD("DOWNLOAD"),
    STREAM("STREAM"),
    CACHE_IMAGE("CACHE");


    /* renamed from: a, reason: collision with root package name */
    private final String f13890a;

    fm(String str) {
        this.f13890a = str;
    }

    public String b() {
        return this.f13890a;
    }
}

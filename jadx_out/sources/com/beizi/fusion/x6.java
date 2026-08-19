package com.beizi.fusion;

/* loaded from: classes2.dex */
public enum x6 {
    CONNECT_TYPE_UNKNOWN(0, "unknown"),
    CONNECT_TYPE_WIFI(1, "wifi"),
    CONNECT_TYPE_2G(2, "2G"),
    CONNECT_TYPE_3G(3, "3G"),
    CONNECT_TYPE_4G(4, "4G"),
    CONNECT_TYPE_5G(5, "5G");


    /* renamed from: a, reason: collision with root package name */
    private final int f17434a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17435b;

    x6(int i2, String str) {
        this.f17434a = i2;
        this.f17435b = str;
    }

    public int b() {
        return this.f17434a;
    }
}

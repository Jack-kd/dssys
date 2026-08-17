package com.beizi.fusion;

import com.octopus.ad.ADBidEvent;

/* loaded from: classes2.dex */
public enum y6 {
    COUNTRY_OTHER_TYPE(0, ADBidEvent.OTHER),
    COUNTRY_CHINA_TYPE(1, "CN");


    /* renamed from: a, reason: collision with root package name */
    private final int f17663a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17664b;

    y6(int i2, String str) {
        this.f17663a = i2;
        this.f17664b = str;
    }

    public int b() {
        return this.f17663a;
    }

    public String c() {
        return this.f17664b;
    }
}

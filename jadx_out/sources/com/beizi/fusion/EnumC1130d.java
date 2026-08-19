package com.beizi.fusion;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* renamed from: com.beizi.fusion.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC1130d {
    BANNER("banner", "4"),
    NATIVE("native", "3"),
    UNIFIED("unified", ""),
    INTERSTITIAL(MediationConstant.RIT_TYPE_INTERSTITIAL, "2"),
    VIDEO("video", ""),
    SPLASH(MediationConstant.RIT_TYPE_SPLASH, "1"),
    S2S("S2S", "");


    /* renamed from: a, reason: collision with root package name */
    private final String f13271a;

    /* renamed from: b, reason: collision with root package name */
    private final String f13272b;

    EnumC1130d(String str, String str2) {
        this.f13271a = str;
        this.f13272b = str2;
    }

    public String b() {
        return this.f13272b;
    }

    public String c() {
        return this.f13271a;
    }
}

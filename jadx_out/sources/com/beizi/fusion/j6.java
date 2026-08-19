package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class j6 {

    /* renamed from: a, reason: collision with root package name */
    private final String f14649a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14650b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14651c;

    public j6(String str, String str2) {
        this.f14649a = str;
        this.f14650b = str2;
        this.f14651c = a(str);
    }

    private String a(String str) {
        return str.contains("biz.beizi.adn") ? "AdScope-ASNP" : str.contains("xyz.adscope.common") ? "AdScope-Foundation" : "";
    }

    public String b() {
        return this.f14649a;
    }

    public String c() {
        return TextUtils.isEmpty(this.f14650b) ? "" : this.f14650b;
    }

    public String a() {
        return this.f14651c;
    }
}

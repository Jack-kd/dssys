package com.baidu.oauth.sdkbqt.auth;

import android.text.TextUtils;

/* renamed from: com.baidu.oauth.sdkbqt.auth.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1121b {

    /* renamed from: c, reason: collision with root package name */
    public static C1121b f11779c = new C1121b();

    /* renamed from: a, reason: collision with root package name */
    public boolean f11780a = false;

    /* renamed from: b, reason: collision with root package name */
    public C1120a f11781b;

    public static void a() {
        if (!f11779c.f11780a) {
            throw new RuntimeException("bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function");
        }
    }

    public static C1120a b() {
        a();
        return f11779c.f11781b;
    }

    public static void c(C1120a c1120a) {
        if (f11779c.f11780a) {
            return;
        }
        if (c1120a == null || TextUtils.isEmpty(c1120a.a()) || TextUtils.isEmpty(c1120a.f())) {
            throw new RuntimeException("please set right app info (appKey,redirect");
        }
        C1121b c1121b = f11779c;
        c1121b.f11781b = c1120a;
        c1121b.f11780a = true;
    }
}

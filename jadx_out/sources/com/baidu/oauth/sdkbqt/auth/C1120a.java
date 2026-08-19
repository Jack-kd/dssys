package com.baidu.oauth.sdkbqt.auth;

import android.content.Context;

/* renamed from: com.baidu.oauth.sdkbqt.auth.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1120a {

    /* renamed from: a, reason: collision with root package name */
    public Context f11770a;

    /* renamed from: b, reason: collision with root package name */
    public String f11771b;

    /* renamed from: c, reason: collision with root package name */
    public String f11772c;

    /* renamed from: d, reason: collision with root package name */
    public String f11773d;

    /* renamed from: e, reason: collision with root package name */
    public String f11774e;

    /* renamed from: f, reason: collision with root package name */
    public String f11775f;

    /* renamed from: g, reason: collision with root package name */
    public String f11776g;

    /* renamed from: h, reason: collision with root package name */
    public InterfaceC0141a f11777h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f11778i;

    /* renamed from: com.baidu.oauth.sdkbqt.auth.a$a, reason: collision with other inner class name */
    public interface InterfaceC0141a {
        int oauthResID(String str);
    }

    public C1120a(Context context, String str, String str2, String str3, boolean z2, String str4) {
        this.f11771b = "";
        this.f11772c = "";
        this.f11773d = "";
        this.f11774e = "";
        this.f11775f = "";
        this.f11776g = "";
        this.f11778i = false;
        o.g.g(context, "AuthInfo Constructor params context is null");
        o.g.g(str, "AuthInfo Constructor params appKey is null");
        o.g.g(str2, "AuthInfo Constructor params redirectUrl is null");
        o.g.g(str3, "AuthInfo Constructor params scope is null");
        this.f11770a = context.getApplicationContext();
        this.f11771b = str;
        this.f11772c = str2;
        this.f11773d = str3;
        String packageName = context.getPackageName();
        this.f11774e = packageName;
        this.f11776g = str4;
        this.f11778i = z2;
        if (z2) {
            this.f11775f = o.g.k(context, packageName);
        } else {
            this.f11775f = o.g.a(context, packageName);
        }
    }

    public String a() {
        return this.f11771b;
    }

    public String b() {
        return this.f11776g;
    }

    public InterfaceC0141a c() {
        return this.f11777h;
    }

    public String d() {
        return this.f11775f;
    }

    public String e() {
        return this.f11774e;
    }

    public String f() {
        return this.f11772c;
    }

    public String g() {
        return this.f11773d;
    }

    public Context getContext() {
        return this.f11770a;
    }

    public C1120a h(boolean z2) {
        o.d.f52027a = z2;
        o.d.b("oauthAuthInfo", "packageName:" + this.f11774e + " ,packSign= " + this.f11775f + " ,useSha1= " + this.f11778i);
        return this;
    }

    public boolean i() {
        return this.f11778i;
    }

    public void j(InterfaceC0141a interfaceC0141a) {
        this.f11777h = interfaceC0141a;
    }
}

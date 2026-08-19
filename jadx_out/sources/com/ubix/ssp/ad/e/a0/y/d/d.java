package com.ubix.ssp.ad.e.a0.y.d;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static d f46511a;

    /* renamed from: h, reason: collision with root package name */
    private long f46518h;

    /* renamed from: i, reason: collision with root package name */
    private long f46519i;

    /* renamed from: j, reason: collision with root package name */
    private a f46520j;

    /* renamed from: b, reason: collision with root package name */
    private String f46512b = "";

    /* renamed from: c, reason: collision with root package name */
    private String f46513c = "";

    /* renamed from: d, reason: collision with root package name */
    private String f46514d = "";

    /* renamed from: e, reason: collision with root package name */
    private String f46515e = "";

    /* renamed from: f, reason: collision with root package name */
    private String f46516f = "";

    /* renamed from: g, reason: collision with root package name */
    private String f46517g = "";

    /* renamed from: k, reason: collision with root package name */
    private boolean f46521k = false;

    private d() {
    }

    public static d e() {
        if (f46511a == null) {
            f46511a = new d();
        }
        return f46511a;
    }

    public void a() {
        this.f46517g = "";
        this.f46516f = "";
        this.f46515e = "";
        this.f46514d = "";
        this.f46513c = "";
        this.f46512b = "";
        this.f46520j = null;
        this.f46521k = false;
        this.f46519i = 0L;
        this.f46518h = 0L;
    }

    public a b() {
        return this.f46520j;
    }

    public long c() {
        return this.f46518h;
    }

    public String d() {
        return this.f46515e;
    }

    public long f() {
        return this.f46519i;
    }

    public String g() {
        return this.f46513c;
    }

    public String h() {
        return this.f46512b;
    }

    public String i() {
        return this.f46517g;
    }

    public String j() {
        return this.f46516f;
    }

    public String k() {
        return this.f46514d;
    }

    public boolean l() {
        return this.f46521k;
    }

    public boolean m() {
        return TextUtils.isEmpty(this.f46512b) && TextUtils.isEmpty(this.f46513c) && TextUtils.isEmpty(this.f46514d) && TextUtils.isEmpty(this.f46515e);
    }

    public void a(long j2) {
        this.f46519i = j2;
    }

    public void b(String str) {
        this.f46516f = str;
    }

    public void c(String str) {
        this.f46514d = str;
    }

    public void a(a aVar) {
        this.f46520j = aVar;
    }

    public void a(String str) {
        this.f46517g = str;
    }

    public void a(String str, String str2, String str3) {
        this.f46512b = str;
        this.f46515e = str2;
        this.f46513c = str3;
        this.f46518h = System.currentTimeMillis();
    }

    public void a(boolean z2) {
        this.f46521k = z2;
    }
}

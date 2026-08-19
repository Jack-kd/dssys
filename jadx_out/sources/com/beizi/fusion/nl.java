package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class nl {

    /* renamed from: a, reason: collision with root package name */
    private String f15333a;

    /* renamed from: b, reason: collision with root package name */
    private String f15334b;

    /* renamed from: c, reason: collision with root package name */
    private String f15335c;

    /* renamed from: d, reason: collision with root package name */
    private String f15336d;

    /* renamed from: e, reason: collision with root package name */
    private int f15337e;

    /* renamed from: f, reason: collision with root package name */
    private String f15338f;

    /* renamed from: g, reason: collision with root package name */
    private String f15339g;

    /* renamed from: h, reason: collision with root package name */
    private String f15340h;

    /* renamed from: i, reason: collision with root package name */
    private String f15341i;

    /* renamed from: j, reason: collision with root package name */
    private String f15342j;

    /* renamed from: k, reason: collision with root package name */
    private String f15343k;

    /* renamed from: l, reason: collision with root package name */
    private String f15344l;

    /* renamed from: m, reason: collision with root package name */
    private String f15345m;

    /* renamed from: n, reason: collision with root package name */
    private String f15346n;

    private boolean n() {
        int i2 = this.f15337e;
        return i2 == 2 ? !TextUtils.isEmpty(this.f15345m) && this.f15345m.startsWith("http") : i2 == 5 && !TextUtils.isEmpty(this.f15345m) && this.f15345m.contains(com.anythink.core.basead.a.e.f1620e);
    }

    private boolean o() {
        if (TextUtils.isEmpty(this.f15338f) || TextUtils.isEmpty(this.f15339g) || TextUtils.isEmpty(this.f15340h) || TextUtils.isEmpty(this.f15343k) || TextUtils.isEmpty(this.f15344l)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f15341i) && TextUtils.isEmpty(this.f15342j)) {
            return false;
        }
        int i2 = this.f15337e;
        return i2 == 2 || i2 == 5;
    }

    public void a(int i2) {
        this.f15337e = i2;
    }

    public String b() {
        return this.f15338f;
    }

    public void c(String str) {
        this.f15338f = str;
    }

    public String d() {
        return this.f15341i;
    }

    public void e(String str) {
        this.f15341i = str;
    }

    public String f() {
        return this.f15340h;
    }

    public void g(String str) {
        this.f15340h = str;
    }

    public String h() {
        return this.f15333a;
    }

    public String i() {
        return this.f15336d;
    }

    public void j(String str) {
        this.f15333a = str;
    }

    public String k() {
        return this.f15335c;
    }

    public String l() {
        return this.f15334b;
    }

    public void m(String str) {
        this.f15334b = str;
    }

    public String a() {
        return this.f15339g;
    }

    public void b(String str) {
        this.f15345m = str;
    }

    public String c() {
        return this.f15342j;
    }

    public void d(String str) {
        this.f15342j = str;
    }

    public String e() {
        return this.f15343k;
    }

    public void f(String str) {
        this.f15343k = str;
    }

    public String g() {
        return this.f15344l;
    }

    public void h(String str) {
        this.f15344l = str;
    }

    public void i(String str) {
        this.f15346n = str;
    }

    public int j() {
        return this.f15337e;
    }

    public void k(String str) {
        this.f15336d = str;
    }

    public void l(String str) {
        this.f15335c = str;
    }

    public boolean m() {
        return TextUtils.isEmpty(this.f15346n) && o() && n();
    }

    public void a(String str) {
        this.f15339g = str;
    }
}

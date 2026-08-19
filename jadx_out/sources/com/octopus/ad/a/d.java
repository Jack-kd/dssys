package com.octopus.ad.a;

import java.util.Locale;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final int f33508a;

    /* renamed from: b, reason: collision with root package name */
    private String f33509b;

    /* renamed from: c, reason: collision with root package name */
    private String f33510c;

    /* renamed from: d, reason: collision with root package name */
    private String f33511d;

    /* renamed from: e, reason: collision with root package name */
    private String f33512e;

    /* renamed from: f, reason: collision with root package name */
    private String f33513f;

    /* renamed from: g, reason: collision with root package name */
    private String f33514g;

    /* renamed from: h, reason: collision with root package name */
    private String f33515h;

    /* renamed from: i, reason: collision with root package name */
    private String f33516i;

    /* renamed from: j, reason: collision with root package name */
    private String f33517j;

    /* renamed from: k, reason: collision with root package name */
    private String f33518k;

    /* renamed from: l, reason: collision with root package name */
    private String f33519l;

    /* renamed from: m, reason: collision with root package name */
    private String f33520m;

    /* renamed from: n, reason: collision with root package name */
    private String f33521n;

    /* renamed from: o, reason: collision with root package name */
    private String f33522o;

    /* renamed from: p, reason: collision with root package name */
    private String f33523p;

    /* renamed from: q, reason: collision with root package name */
    private String f33524q;

    /* renamed from: r, reason: collision with root package name */
    private String f33525r;

    /* renamed from: s, reason: collision with root package name */
    private String f33526s;

    /* renamed from: t, reason: collision with root package name */
    private String f33527t;

    /* renamed from: u, reason: collision with root package name */
    private String f33528u;

    public d(int i2) {
        this.f33508a = i2;
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f33525r = String.valueOf(i2);
        this.f33526s = String.valueOf(i3);
        this.f33527t = String.valueOf(i4);
        this.f33528u = String.valueOf(i5);
    }

    public String b() {
        return this.f33509b;
    }

    public String c() {
        return this.f33510c;
    }

    public String d() {
        return this.f33511d;
    }

    public String e() {
        return this.f33512e;
    }

    public String f() {
        return this.f33513f;
    }

    public String g() {
        return this.f33514g;
    }

    public String h() {
        return this.f33515h;
    }

    public String i() {
        return this.f33516i;
    }

    public String j() {
        return this.f33517j;
    }

    public String k() {
        return this.f33518k;
    }

    public String l() {
        return this.f33519l;
    }

    public String m() {
        return this.f33520m;
    }

    public String n() {
        return this.f33521n;
    }

    public String o() {
        return this.f33522o;
    }

    public String p() {
        return this.f33523p;
    }

    public String q() {
        return this.f33524q;
    }

    public String r() {
        return this.f33525r;
    }

    public String s() {
        return this.f33526s;
    }

    public String t() {
        return this.f33527t;
    }

    public String u() {
        return this.f33528u;
    }

    public void b(int i2) {
        this.f33510c = String.valueOf(i2);
    }

    public void c(int i2) {
        this.f33512e = String.valueOf(i2);
    }

    public void d(int i2) {
        this.f33513f = String.valueOf(i2);
    }

    public void e(int i2) {
        this.f33517j = String.valueOf(i2);
    }

    public void f(int i2) {
        this.f33518k = String.valueOf(i2);
    }

    public d(int i2, int i3, int i4, float f2, float f3, float f4, int i5, int i6, int i7) {
        this.f33508a = i2 == 0 ? 2 : 5;
        this.f33517j = String.valueOf(i3);
        this.f33518k = String.valueOf(i4);
        this.f33519l = a(f2);
        this.f33520m = a(f3);
        this.f33521n = a(f4);
        this.f33522o = String.valueOf(i5);
        this.f33523p = String.valueOf(i6);
        this.f33524q = String.valueOf(i7);
        this.f33516i = String.valueOf(System.currentTimeMillis());
        this.f33515h = String.valueOf(System.currentTimeMillis() / 1000);
    }

    public void b(String str) {
        this.f33514g = str;
    }

    public void c(String str) {
        this.f33515h = str;
    }

    public void d(String str) {
        this.f33516i = str;
    }

    public String a(double d2) {
        return String.format(Locale.US, "%.2f", Double.valueOf(d2));
    }

    public int a() {
        return this.f33508a;
    }

    public void a(int i2) {
        this.f33509b = String.valueOf(i2);
    }

    public void a(String str) {
        this.f33511d = str;
    }
}

package com.ubix.ssp.ad.e.a0.y;

import java.io.Serializable;

/* loaded from: classes5.dex */
public class a implements Comparable<a>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    private double f46488a;

    /* renamed from: b, reason: collision with root package name */
    private double f46489b;

    /* renamed from: c, reason: collision with root package name */
    private double f46490c;

    /* renamed from: d, reason: collision with root package name */
    private double f46491d;

    public a(double d2, double d3, double d4, double d5) {
        this.f46488a = d2;
        this.f46489b = d3;
        this.f46490c = d4;
        this.f46491d = d5;
    }

    public double a() {
        return this.f46490c * this.f46491d;
    }

    public double b() {
        return this.f46490c;
    }

    public double c() {
        return this.f46491d;
    }

    public double d() {
        return this.f46488a;
    }

    public double e() {
        return this.f46489b;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        return Double.compare(a(), aVar.a());
    }
}

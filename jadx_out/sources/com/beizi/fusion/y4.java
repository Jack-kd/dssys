package com.beizi.fusion;

import java.util.List;

/* loaded from: classes2.dex */
public class y4 {

    /* renamed from: a, reason: collision with root package name */
    private List f17654a;

    /* renamed from: b, reason: collision with root package name */
    private String f17655b;

    public List a() {
        return this.f17654a;
    }

    public String b() {
        return this.f17655b;
    }

    public String toString() {
        return "{\"version\":\"" + this.f17655b + "\", \"list\":" + ro.a(this.f17654a) + '}';
    }

    public void a(List list) {
        this.f17654a = list;
    }

    public void a(String str) {
        this.f17655b = str;
    }
}

package com.anythink.core.common.h;

import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    private final String f4419a;

    /* renamed from: b, reason: collision with root package name */
    private final String f4420b;

    /* renamed from: c, reason: collision with root package name */
    private String f4421c;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f4422d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f4423e;

    /* renamed from: f, reason: collision with root package name */
    private String f4424f = UUID.randomUUID().toString();

    /* renamed from: g, reason: collision with root package name */
    private String f4425g;

    public v(String str, String str2) {
        this.f4419a = str;
        this.f4420b = str2;
    }

    private boolean h() {
        return this.f4423e;
    }

    public final String a() {
        return this.f4419a;
    }

    public final String b() {
        return this.f4420b;
    }

    public final String c() {
        return this.f4421c;
    }

    public final Map<String, String> d() {
        return this.f4422d;
    }

    public final void e() {
        this.f4423e = true;
    }

    public final String f() {
        return this.f4424f;
    }

    public final String g() {
        return this.f4425g;
    }

    public final void a(String str) {
        this.f4421c = str;
    }

    public final void b(String str) {
        this.f4424f = str;
    }

    public final void c(String str) {
        this.f4425g = str;
    }

    public final void a(Map<String, String> map) {
        this.f4422d = map;
    }
}

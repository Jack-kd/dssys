package com.anythink.core.e;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8814a = "h";

    /* renamed from: b, reason: collision with root package name */
    private long f8815b = System.currentTimeMillis();

    /* renamed from: c, reason: collision with root package name */
    private long f8816c = 86400000;

    /* renamed from: d, reason: collision with root package name */
    private List<com.anythink.core.common.i.b> f8817d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    private int f8818e = 1;

    /* renamed from: f, reason: collision with root package name */
    private long f8819f = 28800000;

    private h() {
    }

    private List<com.anythink.core.common.i.b> a() {
        return this.f8817d;
    }

    private boolean b() {
        return System.currentTimeMillis() >= this.f8815b + this.f8816c;
    }

    private long c() {
        return this.f8815b;
    }

    private int d() {
        return this.f8818e;
    }

    private long e() {
        return this.f8819f;
    }

    private void a(long j2) {
        this.f8815b = j2;
    }
}

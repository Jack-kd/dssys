package com.anythink.core.common.h;

import java.util.List;

/* loaded from: classes2.dex */
public final class br {

    /* renamed from: a, reason: collision with root package name */
    com.anythink.core.e.m f4031a;

    /* renamed from: b, reason: collision with root package name */
    n f4032b;

    /* renamed from: c, reason: collision with root package name */
    List<by> f4033c;

    /* renamed from: d, reason: collision with root package name */
    List<by> f4034d;

    /* renamed from: e, reason: collision with root package name */
    List<by> f4035e;

    /* renamed from: f, reason: collision with root package name */
    List<by> f4036f;

    /* renamed from: g, reason: collision with root package name */
    List<by> f4037g;

    /* renamed from: h, reason: collision with root package name */
    int f4038h;

    public br(com.anythink.core.e.m mVar, n nVar, int i2) {
        this.f4031a = mVar;
        this.f4032b = nVar;
        this.f4038h = i2;
    }

    public final com.anythink.core.e.m a() {
        return this.f4031a;
    }

    public final int b() {
        return this.f4038h;
    }

    public final n c() {
        return this.f4032b;
    }

    public final List<by> d() {
        return this.f4033c;
    }

    public final List<by> e() {
        return this.f4034d;
    }

    public final List<by> f() {
        return this.f4036f;
    }

    public final List<by> g() {
        return this.f4037g;
    }

    public final List<by> h() {
        return this.f4035e;
    }

    public final boolean i() {
        List<by> list = this.f4033c;
        if (list != null && list.size() > 0) {
            return true;
        }
        List<by> list2 = this.f4034d;
        if (list2 != null && list2.size() > 0) {
            return true;
        }
        List<by> list3 = this.f4035e;
        if (list3 != null && list3.size() > 0) {
            return true;
        }
        List<by> list4 = this.f4036f;
        if (list4 != null && list4.size() > 0) {
            return true;
        }
        List<by> list5 = this.f4037g;
        return list5 != null && list5.size() > 0;
    }

    public final boolean j() {
        List<by> list = this.f4036f;
        if (list != null && list.size() > 0) {
            return true;
        }
        List<by> list2 = this.f4037g;
        return list2 != null && list2.size() > 0;
    }

    public final boolean k() {
        List<by> list = this.f4033c;
        if (list != null && list.size() > 0) {
            return false;
        }
        List<by> list2 = this.f4035e;
        return list2 == null || list2.size() <= 0;
    }

    public final void a(List<by> list) {
        this.f4033c = list;
    }

    public final void b(List<by> list) {
        this.f4034d = list;
    }

    public final void c(List<by> list) {
        this.f4036f = list;
    }

    public final void d(List<by> list) {
        this.f4037g = list;
    }

    public final void e(List<by> list) {
        this.f4035e = list;
    }
}

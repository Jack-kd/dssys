package com.anythink.core.common.r;

import com.anythink.core.api.ATAdRequest;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    h f7270a;

    /* renamed from: b, reason: collision with root package name */
    int f7271b;

    /* renamed from: c, reason: collision with root package name */
    boolean f7272c;

    /* renamed from: d, reason: collision with root package name */
    long f7273d;

    /* renamed from: e, reason: collision with root package name */
    d f7274e;

    /* renamed from: f, reason: collision with root package name */
    ATAdRequest f7275f;

    public b(h hVar, int i2, ATAdRequest aTAdRequest) {
        this.f7270a = hVar;
        this.f7271b = i2;
        this.f7275f = aTAdRequest;
    }

    private boolean c() {
        return this.f7272c;
    }

    private long d() {
        return this.f7273d;
    }

    public final ATAdRequest a() {
        return this.f7275f;
    }

    public final void b() {
        this.f7272c = true;
    }

    public final void a(long j2) {
        this.f7273d = j2;
    }

    public final void a(d dVar) {
        this.f7274e = dVar;
    }
}

package com.anythink.core.common.n.c;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class j extends x {

    /* renamed from: a, reason: collision with root package name */
    private x f7081a;

    public j(x xVar) {
        if (xVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7081a = xVar;
    }

    public final x a() {
        return this.f7081a;
    }

    @Override // com.anythink.core.common.n.c.x
    public final boolean b_() {
        return this.f7081a.b_();
    }

    @Override // com.anythink.core.common.n.c.x
    public final long c_() {
        return this.f7081a.c_();
    }

    @Override // com.anythink.core.common.n.c.x
    public final x d_() {
        return this.f7081a.d_();
    }

    @Override // com.anythink.core.common.n.c.x
    public final long e_() {
        return this.f7081a.e_();
    }

    @Override // com.anythink.core.common.n.c.x
    public final x f() {
        return this.f7081a.f();
    }

    @Override // com.anythink.core.common.n.c.x
    public final void g() throws InterruptedIOException {
        this.f7081a.g();
    }

    public final j a(x xVar) {
        if (xVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7081a = xVar;
        return this;
    }

    @Override // com.anythink.core.common.n.c.x
    public final x a(long j2, TimeUnit timeUnit) {
        return this.f7081a.a(j2, timeUnit);
    }

    @Override // com.anythink.core.common.n.c.x
    public final x a(long j2) {
        return this.f7081a.a(j2);
    }
}

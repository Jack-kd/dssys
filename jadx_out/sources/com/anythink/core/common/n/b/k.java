package com.anythink.core.common.n.b;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.b.f f6869a;

    public k() {
        this(5, TimeUnit.MINUTES);
    }

    public final int a() {
        return this.f6869a.a();
    }

    public final int b() {
        return this.f6869a.b();
    }

    public final void c() throws IOException {
        this.f6869a.c();
    }

    public k(int i2, TimeUnit timeUnit) {
        this.f6869a = new com.anythink.core.common.n.b.a.b.f(i2, timeUnit);
    }
}

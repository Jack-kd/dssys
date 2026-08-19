package com.anythink.core.common.m.c;

import android.content.Context;
import com.anythink.core.common.m.c.h;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public final class j extends d {

    /* renamed from: e, reason: collision with root package name */
    private static final int f5686e = 5;

    /* renamed from: f, reason: collision with root package name */
    private static final long f5687f = 86400000;

    /* renamed from: g, reason: collision with root package name */
    private volatile h f5688g;

    public j(Context context) {
        super(context);
    }

    @Override // com.anythink.core.common.m.c.d, com.anythink.core.common.m.c.i
    public final com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d dVar) {
        if (!b(dVar)) {
            return null;
        }
        if (this.f5688g == null) {
            synchronized (this.f5667d) {
                try {
                    if (this.f5688g == null) {
                        this.f5688g = new h(this.f5665b, this.f5666c, new h.a(86400000L));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f5688g.a(dVar, super.a(dVar));
    }

    @Override // com.anythink.core.common.m.c.d
    public final boolean b(com.anythink.core.common.m.b.d dVar) {
        Context context = this.f5665b;
        return context != null && dVar != null && p.a(context) && com.anythink.core.common.m.b.g.f5651m.equals(dVar.b());
    }

    @Override // com.anythink.core.common.m.c.d
    public final String c(com.anythink.core.common.m.b.d dVar) {
        return this.f5688g != null ? h.a(dVar) : dVar.b();
    }

    @Override // com.anythink.core.common.m.c.i
    public final void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar) {
        if (b(dVar) && this.f5688g != null) {
            this.f5688g.a(fVar, dVar);
        }
    }
}

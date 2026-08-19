package com.anythink.core.common.t;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes2.dex */
public class c implements a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7679a = "TimeOutHandlerImpl";

    /* renamed from: b, reason: collision with root package name */
    private static volatile c f7680b;

    /* renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<com.anythink.core.common.v.b.d, ScheduledFuture<?>> f7681c = new ConcurrentHashMap<>();

    private c() {
    }

    public static a a() {
        if (f7680b == null) {
            synchronized (c.class) {
                try {
                    if (f7680b == null) {
                        f7680b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7680b;
    }

    @Override // com.anythink.core.common.t.a
    public final void a(com.anythink.core.common.v.b.d dVar, long j2) {
        if (dVar == null) {
            return;
        }
        this.f7681c.put(dVar, com.anythink.core.common.v.b.c.a().b(dVar, j2));
    }

    @Override // com.anythink.core.common.t.a
    public final void a(com.anythink.core.common.v.b.d dVar) {
        if (dVar == null) {
            return;
        }
        ScheduledFuture<?> scheduledFutureRemove = this.f7681c.remove(dVar);
        com.anythink.core.common.v.b.c.a();
        com.anythink.core.common.v.b.c.a(scheduledFutureRemove);
    }
}

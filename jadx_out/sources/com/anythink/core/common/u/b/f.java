package com.anythink.core.common.u.b;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7836a = "anythink_" + f.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, ScheduledFuture<?>> f7837b = new ConcurrentHashMap();

    public final void a(String str, Runnable runnable) {
        a(str);
        this.f7837b.put(str, com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cV, runnable), 3000L));
    }

    public final boolean b(String str) {
        return str != null && this.f7837b.containsKey(str);
    }

    public final void a(String str) {
        ScheduledFuture<?> scheduledFutureRemove;
        if (str == null || (scheduledFutureRemove = this.f7837b.remove(str)) == null) {
            return;
        }
        com.anythink.core.common.v.b.c.a();
        com.anythink.core.common.v.b.c.a(scheduledFutureRemove);
    }

    private void a() {
        for (ScheduledFuture<?> scheduledFuture : this.f7837b.values()) {
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(scheduledFuture);
        }
        this.f7837b.clear();
    }
}

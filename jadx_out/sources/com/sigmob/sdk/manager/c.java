package com.sigmob.sdk.manager;

import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public final class c extends ThreadPoolExecutor implements AutoCloseable {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f37780a;

    public c() {
        super(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue());
    }

    public static c a() {
        if (f37780a == null) {
            synchronized (c.class) {
                try {
                    if (f37780a == null) {
                        f37780a = new c();
                    }
                } finally {
                }
            }
        }
        return f37780a;
    }

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() throws InterruptedException {
        androidx.core.content.res.b.a(this);
    }
}

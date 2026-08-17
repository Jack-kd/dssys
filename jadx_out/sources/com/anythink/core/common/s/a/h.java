package com.anythink.core.common.s.a;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    static volatile Executor f7598b;

    /* renamed from: c, reason: collision with root package name */
    static volatile Executor f7599c;

    /* renamed from: a, reason: collision with root package name */
    static com.anythink.core.common.s.a.a.c f7597a = new d();

    /* renamed from: d, reason: collision with root package name */
    static int f7600d = 4096;

    private h() {
    }

    private static void a(int i2) {
        if (i2 < 2048 || i2 > 65535) {
            return;
        }
        f7600d = i2;
    }

    public static void b(Executor executor) {
        f7599c = executor;
    }

    public static void a(com.anythink.core.common.s.a.a.c cVar) {
        f7597a = cVar;
    }

    public static Executor b() {
        return f7599c != null ? f7599c : a();
    }

    public static void a(Executor executor) {
        f7598b = executor;
    }

    public static Executor a() {
        if (f7598b == null) {
            synchronized (h.class) {
                try {
                    if (f7598b == null) {
                        f7598b = Executors.newCachedThreadPool();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7598b;
    }
}

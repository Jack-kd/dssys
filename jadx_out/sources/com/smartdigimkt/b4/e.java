package com.smartdigimkt.b4;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static volatile e f39590c;

    /* renamed from: a, reason: collision with root package name */
    public final b f39591a = new b();

    /* renamed from: b, reason: collision with root package name */
    public final Handler f39592b = new Handler(Looper.getMainLooper());

    public static e a() {
        if (f39590c == null) {
            synchronized (e.class) {
                try {
                    if (f39590c == null) {
                        f39590c = new e();
                    }
                } finally {
                }
            }
        }
        return f39590c;
    }

    public final void b(Runnable runnable) {
        if (b()) {
            a(runnable, 0L, 13);
        } else {
            runnable.run();
        }
    }

    public final void c(Runnable runnable) {
        a(runnable, 0L, 2);
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public final void a(g gVar, int i2) {
        try {
            this.f39591a.a(gVar, i2);
        } catch (Throwable unused) {
        }
    }

    public final void a(int i2, Runnable runnable) {
        a(runnable, 0L, i2);
    }

    public final void a(Runnable runnable, long j2, int i2) {
        if (runnable != null) {
            c cVar = new c(j2, runnable);
            Long.valueOf(System.currentTimeMillis() / 1000).intValue();
            a(cVar, i2);
        }
    }

    public final void a(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f39592b.post(runnable);
        }
    }

    public final void a(long j2, Runnable runnable) {
        if (j2 <= 0 && Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f39592b.postDelayed(runnable, j2);
        }
    }
}

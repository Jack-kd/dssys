package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static Handler f46102a;

    /* renamed from: b, reason: collision with root package name */
    private static Context f46103b;

    public static synchronized Handler a() {
        return f46102a;
    }

    public static void b(Runnable runnable) {
        if (b()) {
            runnable.run();
        } else {
            a(runnable);
        }
    }

    public static synchronized void a(Context context) {
        f46103b = context;
        if (f46102a == null) {
            f46102a = new Handler(f46103b.getMainLooper());
        }
    }

    public static boolean b() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }

    public static void a(Runnable runnable) {
        a().post(runnable);
    }
}

package com.beizi.fusion;

import android.app.Application;

/* loaded from: classes2.dex */
public abstract class v6 {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f16639a = false;

    public static void a(Application application) {
        if (f16639a) {
            return;
        }
        synchronized (v6.class) {
            try {
                if (!f16639a) {
                    t6.a(application);
                    f16639a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

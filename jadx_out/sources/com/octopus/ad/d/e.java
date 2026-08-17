package com.octopus.ad.d;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final Handler f34023a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable, long j2) {
        f34023a.postDelayed(runnable, j2);
    }
}

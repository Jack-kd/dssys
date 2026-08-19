package com.beizi.fusion;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public abstract class d9 {

    /* renamed from: a, reason: collision with root package name */
    private static final Handler f13390a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable, long j2) {
        f13390a.postDelayed(runnable, j2);
    }
}

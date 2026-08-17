package com.smartdigimkt.w0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: b, reason: collision with root package name */
    public final m f44870b;

    /* renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f44871c;

    /* renamed from: a, reason: collision with root package name */
    public final int f44869a = 0;

    /* renamed from: d, reason: collision with root package name */
    public final long f44872d = 0;

    public x(CopyOnWriteArrayList copyOnWriteArrayList, m mVar) {
        this.f44871c = copyOnWriteArrayList;
        this.f44870b = mVar;
    }

    public final long a(long j2) {
        long jB = com.smartdigimkt.j0.b.b(j2);
        if (jB == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.f44872d + jB;
    }

    public static void a(Handler handler, Runnable runnable) {
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }
}

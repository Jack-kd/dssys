package com.smartdigimkt.x3;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class f implements a {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f45116a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f45117b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f45118c;

    public f() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        com.smartdigimkt.b4.b bVar = com.smartdigimkt.b4.e.a().f39591a;
        if (bVar != null) {
            if (bVar.f39585i == null) {
                synchronized (com.smartdigimkt.b4.b.class) {
                    try {
                        if (bVar.f39585i == null) {
                            bVar.f39585i = new ScheduledThreadPoolExecutor(0, new com.smartdigimkt.b4.f(), new com.smartdigimkt.b4.a(bVar));
                        }
                    } finally {
                    }
                }
            }
            scheduledThreadPoolExecutor = bVar.f39585i;
        } else {
            scheduledThreadPoolExecutor = null;
        }
        this.f45117b = scheduledThreadPoolExecutor;
        this.f45118c = new ConcurrentHashMap();
        this.f45116a = new Handler(Looper.getMainLooper());
    }

    @Override // com.smartdigimkt.x3.a
    public final void a(b bVar, long j2) {
        if (bVar == null) {
            return;
        }
        if (bVar.a()) {
            this.f45116a.postDelayed(bVar, j2);
            return;
        }
        try {
            this.f45118c.put(bVar, this.f45117b.schedule(new e(this, bVar), j2, TimeUnit.MILLISECONDS));
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.x3.a
    public final void a(b bVar) {
        Future future;
        try {
            if (this.f45116a != null && bVar != null && bVar.a()) {
                this.f45116a.removeCallbacks(bVar);
            }
            if (bVar == null || bVar.a() || (future = (Future) this.f45118c.remove(bVar)) == null) {
                return;
            }
            future.cancel(true);
        } catch (Throwable unused) {
        }
    }
}

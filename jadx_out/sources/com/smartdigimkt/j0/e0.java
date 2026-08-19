package com.smartdigimkt.j0;

import android.os.Handler;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final a f40870a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f40871b;

    /* renamed from: c, reason: collision with root package name */
    public int f40872c;

    /* renamed from: d, reason: collision with root package name */
    public Object f40873d;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f40874e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f40875f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f40876g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f40877h;

    public e0(p pVar, a aVar, n0 n0Var, int i2, Handler handler) {
        this.f40871b = pVar;
        this.f40870a = aVar;
        this.f40874e = handler;
    }

    public final synchronized void a() {
        boolean z2;
        if (!this.f40875f) {
            throw new IllegalStateException();
        }
        if (this.f40874e.getLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException();
        }
        long jElapsedRealtime = 500;
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() + 500;
        while (true) {
            z2 = this.f40877h;
            if (z2 || jElapsedRealtime <= 0) {
                break;
            }
            wait(jElapsedRealtime);
            jElapsedRealtime = jElapsedRealtime2 - SystemClock.elapsedRealtime();
        }
        if (!z2) {
            throw new TimeoutException("Message delivery time out");
        }
    }

    public final e0 b() {
        if (this.f40875f) {
            throw new IllegalStateException();
        }
        this.f40875f = true;
        p pVar = (p) this.f40871b;
        synchronized (pVar) {
            if (pVar.f40978u) {
                a(false);
                return this;
            }
            pVar.f40963f.f39298a.obtainMessage(14, this).sendToTarget();
            return this;
        }
    }

    public final synchronized void a(boolean z2) {
        this.f40876g = z2 | this.f40876g;
        this.f40877h = true;
        notifyAll();
    }
}

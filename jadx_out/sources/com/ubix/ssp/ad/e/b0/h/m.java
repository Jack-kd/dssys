package com.ubix.ssp.ad.e.b0.h;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
class m {

    /* renamed from: a, reason: collision with root package name */
    private final p f46738a;

    /* renamed from: b, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.b0.h.a f46739b;

    /* renamed from: f, reason: collision with root package name */
    private volatile Thread f46743f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f46744g;

    /* renamed from: c, reason: collision with root package name */
    private final Object f46740c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final Object f46741d = new Object();

    /* renamed from: h, reason: collision with root package name */
    private volatile int f46745h = -1;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f46742e = new AtomicInteger();

    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m.this.e();
        }
    }

    public m(p pVar, com.ubix.ssp.ad.e.b0.h.a aVar) {
        this.f46738a = (p) l.a(pVar);
        this.f46739b = (com.ubix.ssp.ad.e.b0.h.a) l.a(aVar);
    }

    private void b() {
        try {
            this.f46738a.close();
        } catch (n e2) {
            a(new n("Error closing source " + this.f46738a, e2));
        }
    }

    private boolean c() {
        return Thread.currentThread().isInterrupted() || this.f46744g;
    }

    private void d() {
        this.f46745h = 100;
        a(this.f46745h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        r2 = r2 + r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e() {
        /*
            r8 = this;
            r0 = -1
            r2 = 0
            com.ubix.ssp.ad.e.b0.h.a r4 = r8.f46739b     // Catch: java.lang.Throwable -> L41
            long r2 = r4.b()     // Catch: java.lang.Throwable -> L41
            com.ubix.ssp.ad.e.b0.h.p r4 = r8.f46738a     // Catch: java.lang.Throwable -> L41
            r4.a(r2)     // Catch: java.lang.Throwable -> L41
            com.ubix.ssp.ad.e.b0.h.p r4 = r8.f46738a     // Catch: java.lang.Throwable -> L41
            long r0 = r4.a()     // Catch: java.lang.Throwable -> L41
            r4 = 8192(0x2000, float:1.148E-41)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L41
        L19:
            com.ubix.ssp.ad.e.b0.h.p r5 = r8.f46738a     // Catch: java.lang.Throwable -> L41
            int r5 = r5.a(r4)     // Catch: java.lang.Throwable -> L41
            r6 = -1
            if (r5 == r6) goto L45
            java.lang.Object r6 = r8.f46741d     // Catch: java.lang.Throwable -> L41
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L41
            boolean r7 = r8.c()     // Catch: java.lang.Throwable -> L33
            if (r7 == 0) goto L35
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
        L2c:
            r8.b()
            r8.a(r2, r0)
            return
        L33:
            r4 = move-exception
            goto L43
        L35:
            com.ubix.ssp.ad.e.b0.h.a r7 = r8.f46739b     // Catch: java.lang.Throwable -> L33
            r7.a(r4, r5)     // Catch: java.lang.Throwable -> L33
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            long r5 = (long) r5
            long r2 = r2 + r5
            r8.a(r2, r0)     // Catch: java.lang.Throwable -> L41
            goto L19
        L41:
            r4 = move-exception
            goto L4c
        L43:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            throw r4     // Catch: java.lang.Throwable -> L41
        L45:
            r8.h()     // Catch: java.lang.Throwable -> L41
            r8.d()     // Catch: java.lang.Throwable -> L41
            goto L2c
        L4c:
            java.util.concurrent.atomic.AtomicInteger r5 = r8.f46742e     // Catch: java.lang.Throwable -> L55
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L55
            r8.a(r4)     // Catch: java.lang.Throwable -> L55
            goto L2c
        L55:
            r4 = move-exception
            r8.b()
            r8.a(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.b0.h.m.e():void");
    }

    private synchronized void f() {
        try {
            boolean z2 = (this.f46743f == null || this.f46743f.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.f46744g && !this.f46739b.c() && !z2) {
                this.f46743f = new Thread(new b(), "Source reader for " + this.f46738a);
                this.f46743f.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void h() {
        synchronized (this.f46741d) {
            try {
                if (!c() && this.f46739b.b() == this.f46738a.a()) {
                    this.f46739b.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void i() {
        synchronized (this.f46740c) {
            try {
                try {
                    this.f46740c.wait(1000L);
                } catch (InterruptedException e2) {
                    throw new n("Waiting source data is interrupted!", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int a(byte[] bArr, long j2, int i2) throws n {
        o.a(bArr, j2, i2);
        while (!this.f46739b.c() && this.f46739b.b() < i2 + j2 && !this.f46744g) {
            f();
            i();
            a();
        }
        int iA = this.f46739b.a(bArr, j2, i2);
        if (this.f46739b.c() && this.f46745h != 100) {
            this.f46745h = 100;
            a(100);
        }
        return iA;
    }

    public void g() {
        synchronized (this.f46741d) {
            try {
                try {
                    this.f46744g = true;
                    if (this.f46743f != null) {
                        this.f46743f.interrupt();
                    }
                    this.f46739b.close();
                } catch (n e2) {
                    a(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a() throws n {
        int i2 = this.f46742e.get();
        if (i2 < 1) {
            return;
        }
        this.f46742e.set(0);
        throw new n("Error reading source " + i2 + " times");
    }

    public void b(long j2, long j3) {
        int i2 = j3 == 0 ? 100 : (int) ((j2 / j3) * 100.0f);
        boolean z2 = i2 != this.f46745h;
        if (j3 >= 0 && z2) {
            a(i2);
        }
        this.f46745h = i2;
    }

    public void a(int i2) {
    }

    private void a(long j2, long j3) {
        b(j2, j3);
        synchronized (this.f46740c) {
            this.f46740c.notifyAll();
        }
    }

    public final void a(Throwable th) {
    }
}

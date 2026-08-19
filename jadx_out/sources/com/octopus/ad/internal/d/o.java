package com.octopus.ad.internal.d;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
class o {

    /* renamed from: a, reason: collision with root package name */
    private final r f34707a;

    /* renamed from: b, reason: collision with root package name */
    private final com.octopus.ad.internal.d.a f34708b;

    /* renamed from: f, reason: collision with root package name */
    private volatile Thread f34712f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f34713g;

    /* renamed from: c, reason: collision with root package name */
    private final Object f34709c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final Object f34710d = new Object();

    /* renamed from: h, reason: collision with root package name */
    private volatile int f34714h = -1;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f34711e = new AtomicInteger();

    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.e();
        }
    }

    public o(r rVar, com.octopus.ad.internal.d.a aVar) {
        this.f34707a = (r) n.a(rVar);
        this.f34708b = (com.octopus.ad.internal.d.a) n.a(aVar);
    }

    private void b() throws p {
        int i2 = this.f34711e.get();
        if (i2 < 1) {
            return;
        }
        this.f34711e.set(0);
        throw new p("Error reading source " + i2 + " times");
    }

    private synchronized void c() throws p {
        try {
            boolean z2 = (this.f34712f == null || this.f34712f.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.f34713g && !this.f34708b.d() && !z2) {
                this.f34712f = new Thread(new a(), "Source reader for " + this.f34707a);
                this.f34712f.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void d() throws p {
        synchronized (this.f34709c) {
            try {
                try {
                    this.f34709c.wait(1000L);
                } catch (InterruptedException e2) {
                    throw new p("Waiting source data is interrupted!", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
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
            com.octopus.ad.internal.d.a r4 = r8.f34708b     // Catch: java.lang.Throwable -> L41
            long r2 = r4.a()     // Catch: java.lang.Throwable -> L41
            com.octopus.ad.internal.d.r r4 = r8.f34707a     // Catch: java.lang.Throwable -> L41
            r4.a(r2)     // Catch: java.lang.Throwable -> L41
            com.octopus.ad.internal.d.r r4 = r8.f34707a     // Catch: java.lang.Throwable -> L41
            long r0 = r4.a()     // Catch: java.lang.Throwable -> L41
            r4 = 8192(0x2000, float:1.148E-41)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L41
        L19:
            com.octopus.ad.internal.d.r r5 = r8.f34707a     // Catch: java.lang.Throwable -> L41
            int r5 = r5.a(r4)     // Catch: java.lang.Throwable -> L41
            r6 = -1
            if (r5 == r6) goto L45
            java.lang.Object r6 = r8.f34710d     // Catch: java.lang.Throwable -> L41
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L41
            boolean r7 = r8.h()     // Catch: java.lang.Throwable -> L33
            if (r7 == 0) goto L35
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
        L2c:
            r8.i()
            r8.b(r2, r0)
            return
        L33:
            r4 = move-exception
            goto L43
        L35:
            com.octopus.ad.internal.d.a r7 = r8.f34708b     // Catch: java.lang.Throwable -> L33
            r7.a(r4, r5)     // Catch: java.lang.Throwable -> L33
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            long r5 = (long) r5
            long r2 = r2 + r5
            r8.b(r2, r0)     // Catch: java.lang.Throwable -> L41
            goto L19
        L41:
            r4 = move-exception
            goto L4c
        L43:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            throw r4     // Catch: java.lang.Throwable -> L41
        L45:
            r8.g()     // Catch: java.lang.Throwable -> L41
            r8.f()     // Catch: java.lang.Throwable -> L41
            goto L2c
        L4c:
            java.util.concurrent.atomic.AtomicInteger r5 = r8.f34711e     // Catch: java.lang.Throwable -> L55
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L55
            r8.a(r4)     // Catch: java.lang.Throwable -> L55
            goto L2c
        L55:
            r4 = move-exception
            r8.i()
            r8.b(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.d.o.e():void");
    }

    private void f() {
        this.f34714h = 100;
        a(this.f34714h);
    }

    private void g() throws p {
        synchronized (this.f34710d) {
            try {
                if (!h() && this.f34708b.a() == this.f34707a.a()) {
                    this.f34708b.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean h() {
        return Thread.currentThread().isInterrupted() || this.f34713g;
    }

    private void i() {
        try {
            this.f34707a.b();
        } catch (p e2) {
            a(new p("Error closing source " + this.f34707a, e2));
        }
    }

    public void a(int i2) {
    }

    public int a(byte[] bArr, long j2, int i2) throws p {
        q.a(bArr, j2, i2);
        while (!this.f34708b.d() && this.f34708b.a() < i2 + j2 && !this.f34713g) {
            c();
            d();
            b();
        }
        int iA = this.f34708b.a(bArr, j2, i2);
        a(this.f34714h);
        if (this.f34708b.d() && this.f34714h != 100) {
            this.f34714h = 100;
            a(100);
        }
        return iA;
    }

    private void b(long j2, long j3) {
        a(j2, j3);
        synchronized (this.f34709c) {
            this.f34709c.notifyAll();
        }
    }

    public void a() {
        synchronized (this.f34710d) {
            try {
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34583s, "Shutdown proxy for " + this.f34707a);
                try {
                    this.f34713g = true;
                    if (this.f34712f != null) {
                        this.f34712f.interrupt();
                    }
                    this.f34708b.b();
                } catch (p e2) {
                    a(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(long j2, long j3) {
        int i2 = j3 == 0 ? 100 : (int) ((j2 / j3) * 100.0f);
        boolean z2 = i2 != this.f34714h;
        if (j3 >= 0 && z2) {
            a(i2);
        }
        this.f34714h = i2;
    }

    public final void a(Throwable th) {
        if (th instanceof l) {
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34583s, "ProxyCache is interrupted");
        } else {
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34583s, "ProxyCache error", th);
        }
    }
}

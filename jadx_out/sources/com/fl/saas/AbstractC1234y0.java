package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.fl.saas.y0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
abstract class AbstractC1234y0 {

    /* renamed from: a, reason: collision with root package name */
    private final V0 f30710a;

    /* renamed from: b, reason: collision with root package name */
    private final InterfaceC1206p f30711b;

    /* renamed from: f, reason: collision with root package name */
    private volatile Thread f30715f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f30716g;

    /* renamed from: c, reason: collision with root package name */
    private final Object f30712c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final Object f30713d = new Object();

    /* renamed from: h, reason: collision with root package name */
    private volatile int f30717h = -1;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f30714e = new AtomicInteger();

    /* renamed from: com.fl.saas.y0$b */
    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC1234y0.this.e();
        }
    }

    public AbstractC1234y0(V0 v02, InterfaceC1206p interfaceC1206p) {
        this.f30710a = (V0) AbstractC1228w0.a(v02);
        this.f30711b = (InterfaceC1206p) AbstractC1228w0.a(interfaceC1206p);
    }

    private void b() {
        try {
            this.f30710a.close();
        } catch (C1237z0 e2) {
            a(new C1237z0("Error closing source " + this.f30710a, e2));
        }
    }

    private boolean c() {
        return Thread.currentThread().isInterrupted() || this.f30716g;
    }

    private void d() {
        this.f30717h = 100;
        a(this.f30717h);
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
            com.fl.saas.p r4 = r8.f30711b     // Catch: java.lang.Throwable -> L41
            long r2 = r4.b()     // Catch: java.lang.Throwable -> L41
            com.fl.saas.V0 r4 = r8.f30710a     // Catch: java.lang.Throwable -> L41
            r4.a(r2)     // Catch: java.lang.Throwable -> L41
            com.fl.saas.V0 r4 = r8.f30710a     // Catch: java.lang.Throwable -> L41
            long r0 = r4.a()     // Catch: java.lang.Throwable -> L41
            r4 = 8192(0x2000, float:1.148E-41)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L41
        L19:
            com.fl.saas.V0 r5 = r8.f30710a     // Catch: java.lang.Throwable -> L41
            int r5 = r5.a(r4)     // Catch: java.lang.Throwable -> L41
            r6 = -1
            if (r5 == r6) goto L45
            java.lang.Object r6 = r8.f30713d     // Catch: java.lang.Throwable -> L41
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
            com.fl.saas.p r7 = r8.f30711b     // Catch: java.lang.Throwable -> L33
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
            java.util.concurrent.atomic.AtomicInteger r5 = r8.f30714e     // Catch: java.lang.Throwable -> L55
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L55
            r8.a(r4)     // Catch: java.lang.Throwable -> L55
            goto L2c
        L55:
            r4 = move-exception
            r8.b()
            r8.a(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.AbstractC1234y0.e():void");
    }

    private synchronized void f() {
        try {
            boolean z2 = (this.f30715f == null || this.f30715f.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.f30716g && !this.f30711b.c() && !z2) {
                this.f30715f = new Thread(new b(), "Source reader for " + this.f30710a);
                this.f30715f.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void h() {
        synchronized (this.f30713d) {
            try {
                if (!c() && this.f30711b.b() == this.f30710a.a()) {
                    this.f30711b.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void i() {
        synchronized (this.f30712c) {
            try {
                try {
                    this.f30712c.wait(1000L);
                } catch (InterruptedException e2) {
                    throw new C1237z0("Waiting source data is interrupted!", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a(int i2);

    public void g() {
        synchronized (this.f30713d) {
            try {
                LogcatUtil.d("Shutdown proxy for " + this.f30710a);
                try {
                    this.f30716g = true;
                    if (this.f30715f != null) {
                        this.f30715f.interrupt();
                    }
                    this.f30711b.close();
                } catch (C1237z0 e2) {
                    a(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a() throws C1237z0 {
        int i2 = this.f30714e.get();
        if (i2 < 1) {
            return;
        }
        this.f30714e.set(0);
        throw new C1237z0("Error reading source " + i2 + " times");
    }

    public void b(long j2, long j3) {
        int i2 = j3 == 0 ? 100 : (int) ((j2 / j3) * 100.0f);
        boolean z2 = i2 != this.f30717h;
        if (j3 >= 0 && z2) {
            a(i2);
        }
        this.f30717h = i2;
    }

    private void a(long j2, long j3) {
        b(j2, j3);
        synchronized (this.f30712c) {
            this.f30712c.notifyAll();
        }
    }

    public final void a(Throwable th) {
        if (th instanceof C1163b0) {
            LogcatUtil.d("ProxyCache is interrupted");
            return;
        }
        LogcatUtil.e("ProxyCache error" + th.getMessage());
    }

    public int a(byte[] bArr, long j2, int i2) throws C1237z0 {
        A0.a(bArr, j2, i2);
        while (!this.f30711b.c() && this.f30711b.b() < i2 + j2 && !this.f30716g) {
            f();
            i();
            a();
        }
        int iA = this.f30711b.a(bArr, j2, i2);
        if (this.f30711b.c() && this.f30717h != 100) {
            this.f30717h = 100;
            a(100);
        }
        return iA;
    }
}

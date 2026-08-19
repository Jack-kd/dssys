package com.sigmob.sdk.videocache;

import com.czhj.sdk.logger.SigmobLog;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
class o {

    /* renamed from: a, reason: collision with root package name */
    private static final int f38944a = 1;

    /* renamed from: b, reason: collision with root package name */
    private final t f38945b;

    /* renamed from: c, reason: collision with root package name */
    private final c f38946c;

    /* renamed from: g, reason: collision with root package name */
    private volatile Thread f38950g;

    /* renamed from: h, reason: collision with root package name */
    private volatile boolean f38951h;

    /* renamed from: d, reason: collision with root package name */
    private final Object f38947d = new Object();

    /* renamed from: e, reason: collision with root package name */
    private final Object f38948e = new Object();

    /* renamed from: i, reason: collision with root package name */
    private volatile int f38952i = -1;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f38949f = new AtomicInteger();

    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.e();
        }
    }

    public o(t tVar, c cVar) {
        this.f38945b = (t) n.a(tVar);
        this.f38946c = (c) n.a(cVar);
    }

    private void b() throws p {
        int i2 = this.f38949f.get();
        if (i2 < 1) {
            return;
        }
        this.f38949f.set(0);
        throw new p("Error reading source " + i2 + " times");
    }

    private synchronized void c() throws p {
        try {
            boolean z2 = (this.f38950g == null || this.f38950g.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.f38951h && !this.f38946c.d() && !z2) {
                SigmobLog.d("Thread create ,current thread num :" + Thread.activeCount());
                this.f38950g = new Thread(new a(), "Source reader for " + this.f38945b);
                this.f38950g.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void d() throws p {
        synchronized (this.f38947d) {
            try {
                try {
                    this.f38947d.wait(1000L);
                } catch (InterruptedException e2) {
                    throw new p("Waiting source data is interrupted!", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        long jA = -1;
        long jA2 = 0;
        try {
            jA2 = this.f38946c.a();
            this.f38945b.a(jA2);
            jA = this.f38945b.a();
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = this.f38945b.a(bArr);
                if (iA == -1) {
                    g();
                    f();
                    i();
                    b(jA2, jA);
                    synchronized (this.f38947d) {
                        this.f38947d.notifyAll();
                    }
                    return;
                }
                synchronized (this.f38948e) {
                    if (h()) {
                        SigmobLog.d("SourceReaderRunnable停止从服务器下载视频数据");
                        i();
                        b(jA2, jA);
                        synchronized (this.f38947d) {
                            this.f38947d.notifyAll();
                        }
                        return;
                    }
                    this.f38946c.a(bArr, iA);
                }
                jA2 += iA;
                b(jA2, jA);
            }
        } catch (Throwable th) {
            try {
                this.f38949f.incrementAndGet();
                b(th);
                c(th);
                i();
                b(jA2, jA);
                synchronized (this.f38947d) {
                    this.f38947d.notifyAll();
                }
            } catch (Throwable th2) {
                i();
                b(jA2, jA);
                synchronized (this.f38947d) {
                    this.f38947d.notifyAll();
                    throw th2;
                }
            }
        }
    }

    private void f() {
        this.f38952i = 100;
        a(this.f38952i);
    }

    private void g() throws p {
        synchronized (this.f38948e) {
            try {
                if (!h() && this.f38946c.a() == this.f38945b.a()) {
                    this.f38946c.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean h() {
        return Thread.currentThread().isInterrupted() || this.f38951h;
    }

    private void i() {
        try {
            this.f38945b.b();
        } catch (p e2) {
            b(new p("Error closing source " + this.f38945b, e2));
        }
    }

    public int a(byte[] bArr, long j2, int i2) throws p {
        q.a(bArr, j2, i2);
        while (!this.f38946c.d() && this.f38946c.a() < i2 + j2 && !this.f38951h) {
            c();
            d();
            b();
        }
        int iA = this.f38946c.a(bArr, j2, i2);
        if (this.f38946c.d() && this.f38952i != 100) {
            this.f38952i = 100;
            a(100);
        }
        return iA;
    }

    private void b(long j2, long j3) {
        a(j2, j3);
        synchronized (this.f38947d) {
            this.f38947d.notifyAll();
        }
    }

    private void c(Throwable th) {
        a(th);
    }

    public void a() {
        synchronized (this.f38948e) {
            try {
                SigmobLog.d("Shutdown proxy for " + this.f38945b);
                try {
                    this.f38951h = true;
                    if (this.f38950g != null) {
                        this.f38950g.interrupt();
                    }
                    this.f38946c.b();
                } catch (p e2) {
                    b(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i2) {
    }

    public final void b(Throwable th) {
        if (th instanceof k) {
            SigmobLog.d("ProxyCache is interrupted");
        } else {
            SigmobLog.e("ProxyCache error", th);
        }
    }

    public void a(long j2, long j3) {
        int i2 = j3 == 0 ? 100 : (int) ((j2 / j3) * 100.0f);
        boolean z2 = i2 != this.f38952i;
        if (j3 >= 0 && z2) {
            a(i2);
        }
        this.f38952i = i2;
    }

    public void a(Throwable th) {
    }
}

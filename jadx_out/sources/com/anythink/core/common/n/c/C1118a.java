package com.anythink.core.common.n.c;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.anythink.core.common.n.c.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1118a extends x {

    /* renamed from: a, reason: collision with root package name */
    private static final int f7044a = 65536;

    /* renamed from: b, reason: collision with root package name */
    static C1118a f7045b;

    /* renamed from: d, reason: collision with root package name */
    private static final long f7046d;

    /* renamed from: e, reason: collision with root package name */
    private static final long f7047e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f7048f;

    /* renamed from: g, reason: collision with root package name */
    private C1118a f7049g;

    /* renamed from: h, reason: collision with root package name */
    private long f7050h;

    /* renamed from: com.anythink.core.common.n.c.a$2, reason: invalid class name */
    public class AnonymousClass2 implements w {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f7053a;

        public AnonymousClass2(w wVar) {
            this.f7053a = wVar;
        }

        @Override // com.anythink.core.common.n.c.w
        public final x a() {
            return C1118a.this;
        }

        @Override // com.anythink.core.common.n.c.w
        public final long a_(c cVar, long j2) throws IOException {
            C1118a.this.c();
            try {
                try {
                    long jA_ = this.f7053a.a_(cVar, j2);
                    C1118a.this.a(true);
                    return jA_;
                } catch (IOException e2) {
                    throw C1118a.this.b(e2);
                }
            } catch (Throwable th) {
                C1118a.this.a(false);
                throw th;
            }
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            C1118a.this.c();
            try {
                try {
                    this.f7053a.close();
                    C1118a.this.a(true);
                } catch (IOException e2) {
                    throw C1118a.this.b(e2);
                }
            } catch (Throwable th) {
                C1118a.this.a(false);
                throw th;
            }
        }

        public final String toString() {
            return "AsyncTimeout.source(" + this.f7053a + ")";
        }
    }

    /* renamed from: com.anythink.core.common.n.c.a$a, reason: collision with other inner class name */
    public static final class C0071a extends Thread {
        public C0071a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
        
            r1.a();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.anythink.core.common.n.c.a> r0 = com.anythink.core.common.n.c.C1118a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.anythink.core.common.n.c.a r1 = com.anythink.core.common.n.c.C1118a.e()     // Catch: java.lang.Throwable -> Lb
                if (r1 != 0) goto Ld
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L0
            Lb:
                r1 = move-exception
                goto L1b
            Ld:
                com.anythink.core.common.n.c.a r2 = com.anythink.core.common.n.c.C1118a.f7045b     // Catch: java.lang.Throwable -> Lb
                if (r1 != r2) goto L16
                r1 = 0
                com.anythink.core.common.n.c.C1118a.f7045b = r1     // Catch: java.lang.Throwable -> Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                return
            L16:
                monitor-exit(r0)     // Catch: java.lang.InterruptedException -> L0
                r1.a()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L1b:
                monitor-exit(r0)     // Catch: java.lang.InterruptedException -> L0
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.C1118a.C0071a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f7046d = millis;
        f7047e = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private long b(long j2) {
        return this.f7050h - j2;
    }

    public static C1118a e() throws InterruptedException {
        C1118a c1118a = f7045b.f7049g;
        if (c1118a == null) {
            long jNanoTime = System.nanoTime();
            C1118a.class.wait(f7046d);
            if (f7045b.f7049g != null || System.nanoTime() - jNanoTime < f7047e) {
                return null;
            }
            return f7045b;
        }
        long jNanoTime2 = c1118a.f7050h - System.nanoTime();
        if (jNanoTime2 > 0) {
            long j2 = jNanoTime2 / C.MICROS_PER_SECOND;
            C1118a.class.wait(j2, (int) (jNanoTime2 - (C.MICROS_PER_SECOND * j2)));
            return null;
        }
        f7045b.f7049g = c1118a.f7049g;
        c1118a.f7049g = null;
        return c1118a;
    }

    public void a() {
    }

    public final void c() {
        if (this.f7048f) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jE_ = e_();
        boolean zB_ = b_();
        if (jE_ != 0 || zB_) {
            this.f7048f = true;
            a(this, jE_, zB_);
        }
    }

    public final boolean d() {
        if (!this.f7048f) {
            return false;
        }
        this.f7048f = false;
        return a(this);
    }

    private static synchronized void a(C1118a c1118a, long j2, boolean z2) {
        C1118a c1118a2;
        try {
            if (f7045b == null) {
                f7045b = new C1118a();
                new C0071a().start();
            }
            long jNanoTime = System.nanoTime();
            if (j2 != 0 && z2) {
                c1118a.f7050h = Math.min(j2, c1118a.c_() - jNanoTime) + jNanoTime;
            } else if (j2 != 0) {
                c1118a.f7050h = j2 + jNanoTime;
            } else {
                if (!z2) {
                    throw new AssertionError();
                }
                c1118a.f7050h = c1118a.c_();
            }
            long j3 = c1118a.f7050h - jNanoTime;
            C1118a c1118a3 = f7045b;
            while (true) {
                c1118a2 = c1118a3.f7049g;
                if (c1118a2 == null || j3 < c1118a2.f7050h - jNanoTime) {
                    break;
                } else {
                    c1118a3 = c1118a2;
                }
            }
            c1118a.f7049g = c1118a2;
            c1118a3.f7049g = c1118a;
            if (c1118a3 == f7045b) {
                C1118a.class.notify();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final IOException b(IOException iOException) {
        return !d() ? iOException : a(iOException);
    }

    /* renamed from: com.anythink.core.common.n.c.a$1, reason: invalid class name */
    public class AnonymousClass1 implements v {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f7051a;

        public AnonymousClass1(v vVar) {
            this.f7051a = vVar;
        }

        @Override // com.anythink.core.common.n.c.v
        public final void a(c cVar, long j2) throws IOException {
            y.a(cVar.f7060c, 0L, j2);
            while (true) {
                long j3 = 0;
                if (j2 <= 0) {
                    return;
                }
                s sVar = cVar.f7059b;
                while (true) {
                    if (j3 >= 65536) {
                        break;
                    }
                    j3 += sVar.f7130e - sVar.f7129d;
                    if (j3 >= j2) {
                        j3 = j2;
                        break;
                    }
                    sVar = sVar.f7133h;
                }
                C1118a.this.c();
                try {
                    try {
                        this.f7051a.a(cVar, j3);
                        j2 -= j3;
                        C1118a.this.a(true);
                    } catch (IOException e2) {
                        throw C1118a.this.b(e2);
                    }
                } catch (Throwable th) {
                    C1118a.this.a(false);
                    throw th;
                }
            }
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            C1118a.this.c();
            try {
                try {
                    this.f7051a.close();
                    C1118a.this.a(true);
                } catch (IOException e2) {
                    throw C1118a.this.b(e2);
                }
            } catch (Throwable th) {
                C1118a.this.a(false);
                throw th;
            }
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Flushable
        public final void flush() throws IOException {
            C1118a.this.c();
            try {
                try {
                    this.f7051a.flush();
                    C1118a.this.a(true);
                } catch (IOException e2) {
                    throw C1118a.this.b(e2);
                }
            } catch (Throwable th) {
                C1118a.this.a(false);
                throw th;
            }
        }

        public final String toString() {
            return "AsyncTimeout.sink(" + this.f7051a + ")";
        }

        @Override // com.anythink.core.common.n.c.v
        public final x a() {
            return C1118a.this;
        }
    }

    private static synchronized boolean a(C1118a c1118a) {
        C1118a c1118a2 = f7045b;
        while (c1118a2 != null) {
            C1118a c1118a3 = c1118a2.f7049g;
            if (c1118a3 == c1118a) {
                c1118a2.f7049g = c1118a.f7049g;
                c1118a.f7049g = null;
                return false;
            }
            c1118a2 = c1118a3;
        }
        return true;
    }

    private v a(v vVar) {
        return new AnonymousClass1(vVar);
    }

    private w a(w wVar) {
        return new AnonymousClass2(wVar);
    }

    public final void a(boolean z2) throws IOException {
        if (d() && z2) {
            throw a((IOException) null);
        }
    }

    public IOException a(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }
}

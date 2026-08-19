package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1165, 28})
/* loaded from: classes3.dex */
public class hp extends sz {
    public static hp hp;

    /* renamed from: j, reason: collision with root package name */
    public static final long f25101j;

    /* renamed from: l, reason: collision with root package name */
    public static final long f25102l;

    /* renamed from: a, reason: collision with root package name */
    public hp f25103a;
    public long eb;

    /* renamed from: w, reason: collision with root package name */
    public boolean f25104w;

    @com.byazt.kj.hp(hp = {0, 1, 1165, 170})
    /* renamed from: com.byazt.raq.hp$hp, reason: collision with other inner class name */
    public static final class C0353hp extends com.byazt.shx.jx {
        public C0353hp() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
        
            r1.m_();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.byazt.raq.hp> r0 = com.byazt.raq.hp.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1d
                com.byazt.raq.hp r1 = com.byazt.raq.hp.j()     // Catch: java.lang.Throwable -> Lb
                if (r1 != 0) goto Ld
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L0
            Lb:
                r1 = move-exception
                goto L1b
            Ld:
                com.byazt.raq.hp r2 = com.byazt.raq.hp.hp     // Catch: java.lang.Throwable -> Lb
                if (r1 != r2) goto L16
                r1 = 0
                com.byazt.raq.hp.hp = r1     // Catch: java.lang.Throwable -> Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L1d
            L16:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                r1.m_()     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1d
                goto L0
            L1b:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                throw r1     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1d
            L1d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.raq.hp.C0353hp.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f25102l = millis;
        f25101j = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public static hp j() throws InterruptedException {
        hp hpVar = hp.f25103a;
        if (hpVar == null) {
            long jNanoTime = System.nanoTime();
            hp.class.wait(f25102l);
            if (hp.f25103a != null || System.nanoTime() - jNanoTime < f25101j) {
                return null;
            }
            return hp;
        }
        long jL = hpVar.l(System.nanoTime());
        if (jL > 0) {
            long j2 = jL / C.MICROS_PER_SECOND;
            hp.class.wait(j2, (int) (jL - (C.MICROS_PER_SECOND * j2)));
            return null;
        }
        hp.f25103a = hpVar.f25103a;
        hpVar.f25103a = null;
        return hpVar;
    }

    public final void hp() {
        if (this.f25104w) {
            return;
        }
        long jN_ = n_();
        boolean zJx = jx();
        if (jN_ != 0 || zJx) {
            this.f25104w = true;
            hp(this, jN_, zJx);
        }
    }

    public final boolean l() {
        if (!this.f25104w) {
            return false;
        }
        this.f25104w = false;
        return hp(this);
    }

    public void m_() {
    }

    private long l(long j2) {
        return this.eb - j2;
    }

    public IOException l(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    private static synchronized void hp(hp hpVar, long j2, boolean z2) {
        if (hp == null) {
            hp = new hp();
            C0353hp c0353hp = new C0353hp();
            c0353hp.setName("csj_watch_dog");
            try {
                c0353hp.start();
            } catch (Throwable unused) {
            }
        }
        long jNanoTime = System.nanoTime();
        if (j2 != 0 && z2) {
            hpVar.eb = Math.min(j2, hpVar.o_() - jNanoTime) + jNanoTime;
        } else if (j2 != 0) {
            hpVar.eb = j2 + jNanoTime;
        } else if (z2) {
            hpVar.eb = hpVar.o_();
        } else {
            throw new AssertionError();
        }
        long jL = hpVar.l(jNanoTime);
        hp hpVar2 = hp;
        while (true) {
            hp hpVar3 = hpVar2.f25103a;
            if (hpVar3 == null || jL < hpVar3.l(jNanoTime)) {
                break;
            } else {
                hpVar2 = hpVar2.f25103a;
            }
        }
        hpVar.f25103a = hpVar2.f25103a;
        hpVar2.f25103a = hpVar;
        if (hpVar2 == hp) {
            hp.class.notify();
        }
    }

    private static synchronized boolean hp(hp hpVar) {
        hp hpVar2 = hp;
        while (hpVar2 != null) {
            hp hpVar3 = hpVar2.f25103a;
            if (hpVar3 == hpVar) {
                hpVar2.f25103a = hpVar.f25103a;
                hpVar.f25103a = null;
                return false;
            }
            hpVar2 = hpVar3;
        }
        return true;
    }

    public final vv hp(final vv vvVar) {
        return new vv() { // from class: com.byazt.raq.hp.1
            @Override // com.byazt.raq.vv
            public void a_(jx jxVar, long j2) throws IOException {
                try {
                    n.hp(jxVar.f25110l, 0L, j2);
                    long j3 = j2;
                    while (true) {
                        long j4 = 0;
                        if (j3 <= 0) {
                            return;
                        }
                        v vVar = jxVar.hp;
                        while (true) {
                            if (j4 >= 65536) {
                                break;
                            }
                            j4 += vVar.jx - vVar.f25118l;
                            if (j4 >= j3) {
                                j4 = j3;
                                break;
                            }
                            vVar = vVar.f25116a;
                        }
                        hp.this.hp();
                        try {
                            try {
                                vvVar.a_(jxVar, j4);
                                j3 -= j4;
                                hp.this.hp(true);
                            } catch (IOException e2) {
                                throw hp.this.hp(e2);
                            }
                        } catch (Throwable th) {
                            hp.this.hp(false);
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    throw new IOException(e3);
                }
            }

            @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                hp.this.hp();
                try {
                    try {
                        vvVar.close();
                        hp.this.hp(true);
                    } catch (IOException e2) {
                        throw hp.this.hp(e2);
                    }
                } catch (Throwable th) {
                    hp.this.hp(false);
                    throw th;
                }
            }

            @Override // com.byazt.raq.vv, java.io.Flushable
            public void flush() throws IOException {
                hp.this.hp();
                try {
                    try {
                        vvVar.flush();
                        hp.this.hp(true);
                    } catch (IOException e2) {
                        throw hp.this.hp(e2);
                    }
                } catch (Throwable th) {
                    hp.this.hp(false);
                    throw th;
                }
            }

            @Override // com.byazt.raq.vv
            public sz hp() {
                return hp.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + vvVar + ")";
            }
        };
    }

    public final ec hp(final ec ecVar) {
        return new ec() { // from class: com.byazt.raq.hp.2
            @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                hp.this.hp();
                try {
                    try {
                        ecVar.close();
                        hp.this.hp(true);
                    } catch (IOException e2) {
                        throw hp.this.hp(e2);
                    }
                } catch (Throwable th) {
                    hp.this.hp(false);
                    throw th;
                }
            }

            @Override // com.byazt.raq.ec
            public long hp(jx jxVar, long j2) throws IOException {
                hp.this.hp();
                try {
                    try {
                        long jHp = ecVar.hp(jxVar, j2);
                        hp.this.hp(true);
                        return jHp;
                    } catch (IOException e2) {
                        throw hp.this.hp(e2);
                    }
                } catch (Throwable th) {
                    hp.this.hp(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + ecVar + ")";
            }

            @Override // com.byazt.raq.ec
            public sz hp() {
                return hp.this;
            }
        };
    }

    public final void hp(boolean z2) throws IOException {
        if (l() && z2) {
            throw l((IOException) null);
        }
    }

    public final IOException hp(IOException iOException) throws IOException {
        return !l() ? iOException : l(iOException);
    }
}

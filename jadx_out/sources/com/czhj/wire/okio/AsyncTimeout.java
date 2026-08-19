package com.czhj.wire.okio;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class AsyncTimeout extends Timeout {

    /* renamed from: a, reason: collision with root package name */
    static AsyncTimeout f29749a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29750b = 65536;

    /* renamed from: c, reason: collision with root package name */
    private static final long f29751c;

    /* renamed from: d, reason: collision with root package name */
    private static final long f29752d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f29753e;

    /* renamed from: f, reason: collision with root package name */
    private AsyncTimeout f29754f;

    /* renamed from: g, reason: collision with root package name */
    private long f29755g;

    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
        
            r1.timedOut();
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
                java.lang.Class<com.czhj.wire.okio.AsyncTimeout> r0 = com.czhj.wire.okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.czhj.wire.okio.AsyncTimeout r1 = com.czhj.wire.okio.AsyncTimeout.a()     // Catch: java.lang.Throwable -> Lb
                if (r1 != 0) goto Ld
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L0
            Lb:
                r1 = move-exception
                goto L1b
            Ld:
                com.czhj.wire.okio.AsyncTimeout r2 = com.czhj.wire.okio.AsyncTimeout.f29749a     // Catch: java.lang.Throwable -> Lb
                if (r1 != r2) goto L16
                r1 = 0
                com.czhj.wire.okio.AsyncTimeout.f29749a = r1     // Catch: java.lang.Throwable -> Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                return
            L16:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                r1.timedOut()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L1b:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f29751c = millis;
        f29752d = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private long a(long j2) {
        return this.f29755g - j2;
    }

    public final void enter() {
        if (this.f29753e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            this.f29753e = true;
            a(this, jTimeoutNanos, zHasDeadline);
        }
    }

    public final boolean exit() {
        if (!this.f29753e) {
            return false;
        }
        this.f29753e = false;
        return a(this);
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(final Sink sink) {
        return new Sink() { // from class: com.czhj.wire.okio.AsyncTimeout.1
            @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e2) {
                        throw AsyncTimeout.this.a(e2);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e2) {
                        throw AsyncTimeout.this.a(e2);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Sink
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            @Override // com.czhj.wire.okio.Sink
            public void write(Buffer buffer, long j2) throws IOException {
                Util.checkOffsetAndCount(buffer.f29765c, 0L, j2);
                while (true) {
                    long j3 = 0;
                    if (j2 <= 0) {
                        return;
                    }
                    Segment segment = buffer.f29764b;
                    while (true) {
                        if (j3 >= 65536) {
                            break;
                        }
                        j3 += segment.f29842e - segment.f29841d;
                        if (j3 >= j2) {
                            j3 = j2;
                            break;
                        }
                        segment = segment.f29845h;
                    }
                    AsyncTimeout.this.enter();
                    try {
                        try {
                            sink.write(buffer, j3);
                            j2 -= j3;
                            AsyncTimeout.this.a(true);
                        } catch (IOException e2) {
                            throw AsyncTimeout.this.a(e2);
                        }
                    } catch (Throwable th) {
                        AsyncTimeout.this.a(false);
                        throw th;
                    }
                }
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() { // from class: com.czhj.wire.okio.AsyncTimeout.2
            @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        source.close();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e2) {
                        throw AsyncTimeout.this.a(e2);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Source
            public long read(Buffer buffer, long j2) throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        long j3 = source.read(buffer, j2);
                        AsyncTimeout.this.a(true);
                        return j3;
                    } catch (IOException e2) {
                        throw AsyncTimeout.this.a(e2);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Source
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    public void timedOut() {
    }

    public static AsyncTimeout a() throws InterruptedException {
        AsyncTimeout asyncTimeout = f29749a.f29754f;
        long jNanoTime = System.nanoTime();
        if (asyncTimeout == null) {
            AsyncTimeout.class.wait(f29751c);
            if (f29749a.f29754f != null || System.nanoTime() - jNanoTime < f29752d) {
                return null;
            }
            return f29749a;
        }
        long jA = asyncTimeout.a(jNanoTime);
        if (jA > 0) {
            long j2 = jA / C.MICROS_PER_SECOND;
            AsyncTimeout.class.wait(j2, (int) (jA - (C.MICROS_PER_SECOND * j2)));
            return null;
        }
        f29749a.f29754f = asyncTimeout.f29754f;
        asyncTimeout.f29754f = null;
        return asyncTimeout;
    }

    public final IOException a(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005d A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0019, B:12:0x0025, B:13:0x002e, B:18:0x003d, B:19:0x0043, B:21:0x0047, B:24:0x0050, B:25:0x0053, B:27:0x005d, B:17:0x0037, B:30:0x0064, B:31:0x0069), top: B:34:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized void a(com.czhj.wire.okio.AsyncTimeout r5, long r6, boolean r8) {
        /*
            java.lang.Class<com.czhj.wire.okio.AsyncTimeout> r0 = com.czhj.wire.okio.AsyncTimeout.class
            monitor-enter(r0)
            com.czhj.wire.okio.AsyncTimeout r1 = com.czhj.wire.okio.AsyncTimeout.f29749a     // Catch: java.lang.Throwable -> L17
            if (r1 != 0) goto L19
            com.czhj.wire.okio.AsyncTimeout r1 = new com.czhj.wire.okio.AsyncTimeout     // Catch: java.lang.Throwable -> L17
            r1.<init>()     // Catch: java.lang.Throwable -> L17
            com.czhj.wire.okio.AsyncTimeout.f29749a = r1     // Catch: java.lang.Throwable -> L17
            com.czhj.wire.okio.AsyncTimeout$Watchdog r1 = new com.czhj.wire.okio.AsyncTimeout$Watchdog     // Catch: java.lang.Throwable -> L17
            r1.<init>()     // Catch: java.lang.Throwable -> L17
            r1.start()     // Catch: java.lang.Throwable -> L17
            goto L19
        L17:
            r5 = move-exception
            goto L6a
        L19:
            long r1 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L17
            r3 = 0
            int r3 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r3 == 0) goto L32
            if (r8 == 0) goto L32
            long r3 = r5.deadlineNanoTime()     // Catch: java.lang.Throwable -> L17
            long r3 = r3 - r1
            long r6 = java.lang.Math.min(r6, r3)     // Catch: java.lang.Throwable -> L17
        L2e:
            long r6 = r6 + r1
            r5.f29755g = r6     // Catch: java.lang.Throwable -> L17
            goto L3d
        L32:
            if (r3 == 0) goto L35
            goto L2e
        L35:
            if (r8 == 0) goto L64
            long r6 = r5.deadlineNanoTime()     // Catch: java.lang.Throwable -> L17
            r5.f29755g = r6     // Catch: java.lang.Throwable -> L17
        L3d:
            long r6 = r5.a(r1)     // Catch: java.lang.Throwable -> L17
            com.czhj.wire.okio.AsyncTimeout r8 = com.czhj.wire.okio.AsyncTimeout.f29749a     // Catch: java.lang.Throwable -> L17
        L43:
            com.czhj.wire.okio.AsyncTimeout r3 = r8.f29754f     // Catch: java.lang.Throwable -> L17
            if (r3 == 0) goto L53
            long r3 = r3.a(r1)     // Catch: java.lang.Throwable -> L17
            int r3 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r3 >= 0) goto L50
            goto L53
        L50:
            com.czhj.wire.okio.AsyncTimeout r8 = r8.f29754f     // Catch: java.lang.Throwable -> L17
            goto L43
        L53:
            com.czhj.wire.okio.AsyncTimeout r6 = r8.f29754f     // Catch: java.lang.Throwable -> L17
            r5.f29754f = r6     // Catch: java.lang.Throwable -> L17
            r8.f29754f = r5     // Catch: java.lang.Throwable -> L17
            com.czhj.wire.okio.AsyncTimeout r5 = com.czhj.wire.okio.AsyncTimeout.f29749a     // Catch: java.lang.Throwable -> L17
            if (r8 != r5) goto L62
            java.lang.Class<com.czhj.wire.okio.AsyncTimeout> r5 = com.czhj.wire.okio.AsyncTimeout.class
            r5.notify()     // Catch: java.lang.Throwable -> L17
        L62:
            monitor-exit(r0)
            return
        L64:
            java.lang.AssertionError r5 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L17
            r5.<init>()     // Catch: java.lang.Throwable -> L17
            throw r5     // Catch: java.lang.Throwable -> L17
        L6a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L17
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.AsyncTimeout.a(com.czhj.wire.okio.AsyncTimeout, long, boolean):void");
    }

    public final void a(boolean z2) throws IOException {
        if (exit() && z2) {
            throw newTimeoutException(null);
        }
    }

    private static synchronized boolean a(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2 = f29749a;
        while (asyncTimeout2 != null) {
            AsyncTimeout asyncTimeout3 = asyncTimeout2.f29754f;
            if (asyncTimeout3 == asyncTimeout) {
                asyncTimeout2.f29754f = asyncTimeout.f29754f;
                asyncTimeout.f29754f = null;
                return false;
            }
            asyncTimeout2 = asyncTimeout3;
        }
        return true;
    }
}

package com.anythink.core.common.n.b.a.e;

import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.c.C1118a;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.w;
import com.anythink.core.common.n.c.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: j, reason: collision with root package name */
    static final /* synthetic */ boolean f6471j = true;

    /* renamed from: a, reason: collision with root package name */
    long f6472a = 0;

    /* renamed from: b, reason: collision with root package name */
    long f6473b;

    /* renamed from: c, reason: collision with root package name */
    final int f6474c;

    /* renamed from: d, reason: collision with root package name */
    final f f6475d;

    /* renamed from: e, reason: collision with root package name */
    final a f6476e;

    /* renamed from: f, reason: collision with root package name */
    final c f6477f;

    /* renamed from: g, reason: collision with root package name */
    final c f6478g;

    /* renamed from: h, reason: collision with root package name */
    com.anythink.core.common.n.b.a.e.b f6479h;

    /* renamed from: i, reason: collision with root package name */
    IOException f6480i;

    /* renamed from: k, reason: collision with root package name */
    private final Deque<u> f6481k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f6482l;

    /* renamed from: m, reason: collision with root package name */
    private final b f6483m;

    public final class a implements v {

        /* renamed from: c, reason: collision with root package name */
        static final /* synthetic */ boolean f6484c = true;

        /* renamed from: e, reason: collision with root package name */
        private static final long f6485e = 16384;

        /* renamed from: a, reason: collision with root package name */
        boolean f6486a;

        /* renamed from: b, reason: collision with root package name */
        boolean f6487b;

        /* renamed from: f, reason: collision with root package name */
        private final com.anythink.core.common.n.c.c f6489f = new com.anythink.core.common.n.c.c();

        /* renamed from: g, reason: collision with root package name */
        private u f6490g;

        public a() {
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (!f6484c && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                if (this.f6486a) {
                    return;
                }
                if (!i.this.f6476e.f6487b) {
                    boolean z2 = this.f6489f.b() > 0;
                    if (this.f6490g != null) {
                        while (this.f6489f.b() > 0) {
                            a(false);
                        }
                        i iVar = i.this;
                        iVar.f6475d.a(iVar.f6474c, true, com.anythink.core.common.n.b.a.c.a(this.f6490g));
                    } else if (z2) {
                        while (this.f6489f.b() > 0) {
                            a(true);
                        }
                    } else {
                        i iVar2 = i.this;
                        iVar2.f6475d.a(iVar2.f6474c, true, (com.anythink.core.common.n.c.c) null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f6486a = true;
                }
                i.this.f6475d.f6393r.b();
                i.this.g();
            }
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Flushable
        public final void flush() throws IOException {
            if (!f6484c && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.h();
            }
            while (this.f6489f.b() > 0) {
                a(false);
                i.this.f6475d.f6393r.b();
            }
        }

        @Override // com.anythink.core.common.n.c.v
        public final void a(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (!f6484c && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f6489f.a(cVar, j2);
            while (this.f6489f.b() >= 16384) {
                a(false);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(boolean r13) throws java.io.IOException {
            /*
                r12 = this;
                com.anythink.core.common.n.b.a.e.i r1 = com.anythink.core.common.n.b.a.e.i.this
                monitor-enter(r1)
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i$c r0 = r0.f6478g     // Catch: java.lang.Throwable -> L7b
                r0.c()     // Catch: java.lang.Throwable -> L7b
            La:
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L24
                long r2 = r0.f6473b     // Catch: java.lang.Throwable -> L24
                r4 = 0
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 > 0) goto L27
                boolean r2 = r12.f6487b     // Catch: java.lang.Throwable -> L24
                if (r2 != 0) goto L27
                boolean r2 = r12.f6486a     // Catch: java.lang.Throwable -> L24
                if (r2 != 0) goto L27
                com.anythink.core.common.n.b.a.e.b r2 = r0.f6479h     // Catch: java.lang.Throwable -> L24
                if (r2 != 0) goto L27
                r0.i()     // Catch: java.lang.Throwable -> L24
                goto La
            L24:
                r0 = move-exception
                r13 = r0
                goto L7e
            L27:
                com.anythink.core.common.n.b.a.e.i$c r0 = r0.f6478g     // Catch: java.lang.Throwable -> L7b
                r0.b()     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L7b
                r0.h()     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L7b
                long r2 = r0.f6473b     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.c.c r0 = r12.f6489f     // Catch: java.lang.Throwable -> L7b
                long r4 = r0.b()     // Catch: java.lang.Throwable -> L7b
                long r10 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L7b
                long r2 = r0.f6473b     // Catch: java.lang.Throwable -> L7b
                long r2 = r2 - r10
                r0.f6473b = r2     // Catch: java.lang.Throwable -> L7b
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i$c r0 = r0.f6478g
                r0.c()
                if (r13 == 0) goto L5e
                com.anythink.core.common.n.c.c r13 = r12.f6489f     // Catch: java.lang.Throwable -> L5b
                long r0 = r13.b()     // Catch: java.lang.Throwable -> L5b
                int r13 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r13 != 0) goto L5e
                r13 = 1
            L59:
                r8 = r13
                goto L60
            L5b:
                r0 = move-exception
                r13 = r0
                goto L73
            L5e:
                r13 = 0
                goto L59
            L60:
                com.anythink.core.common.n.b.a.e.i r13 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L5b
                com.anythink.core.common.n.b.a.e.f r6 = r13.f6475d     // Catch: java.lang.Throwable -> L5b
                int r7 = r13.f6474c     // Catch: java.lang.Throwable -> L5b
                com.anythink.core.common.n.c.c r9 = r12.f6489f     // Catch: java.lang.Throwable -> L5b
                r6.a(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L5b
                com.anythink.core.common.n.b.a.e.i r13 = com.anythink.core.common.n.b.a.e.i.this
                com.anythink.core.common.n.b.a.e.i$c r13 = r13.f6478g
                r13.b()
                return
            L73:
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this
                com.anythink.core.common.n.b.a.e.i$c r0 = r0.f6478g
                r0.b()
                throw r13
            L7b:
                r0 = move-exception
                r13 = r0
                goto L86
            L7e:
                com.anythink.core.common.n.b.a.e.i r0 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L7b
                com.anythink.core.common.n.b.a.e.i$c r0 = r0.f6478g     // Catch: java.lang.Throwable -> L7b
                r0.b()     // Catch: java.lang.Throwable -> L7b
                throw r13     // Catch: java.lang.Throwable -> L7b
            L86:
                monitor-exit(r1)
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.i.a.a(boolean):void");
        }

        @Override // com.anythink.core.common.n.c.v
        public final x a() {
            return i.this.f6478g;
        }
    }

    public final class b implements w {

        /* renamed from: c, reason: collision with root package name */
        static final /* synthetic */ boolean f6491c = true;

        /* renamed from: a, reason: collision with root package name */
        boolean f6492a;

        /* renamed from: b, reason: collision with root package name */
        boolean f6493b;

        /* renamed from: e, reason: collision with root package name */
        private final com.anythink.core.common.n.c.c f6495e = new com.anythink.core.common.n.c.c();

        /* renamed from: f, reason: collision with root package name */
        private final com.anythink.core.common.n.c.c f6496f = new com.anythink.core.common.n.c.c();

        /* renamed from: g, reason: collision with root package name */
        private final long f6497g;

        /* renamed from: h, reason: collision with root package name */
        private u f6498h;

        public b(long j2) {
            this.f6497g = j2;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0096  */
        @Override // com.anythink.core.common.n.c.w
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a_(com.anythink.core.common.n.c.c r12, long r13) throws java.lang.Throwable {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto Lac
            L6:
                com.anythink.core.common.n.b.a.e.i r2 = com.anythink.core.common.n.b.a.e.i.this
                monitor-enter(r2)
                com.anythink.core.common.n.b.a.e.i r3 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L83
                com.anythink.core.common.n.b.a.e.i$c r3 = r3.f6477f     // Catch: java.lang.Throwable -> L83
                r3.c()     // Catch: java.lang.Throwable -> L83
                com.anythink.core.common.n.b.a.e.i r3 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.b r4 = r3.f6479h     // Catch: java.lang.Throwable -> L25
                if (r4 == 0) goto L28
                java.io.IOException r3 = r3.f6480i     // Catch: java.lang.Throwable -> L25
                if (r3 == 0) goto L1b
                goto L29
            L1b:
                com.anythink.core.common.n.b.a.e.n r3 = new com.anythink.core.common.n.b.a.e.n     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.i r4 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.b r4 = r4.f6479h     // Catch: java.lang.Throwable -> L25
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L25
                goto L29
            L25:
                r12 = move-exception
                goto La2
            L28:
                r3 = 0
            L29:
                boolean r4 = r11.f6492a     // Catch: java.lang.Throwable -> L25
                if (r4 != 0) goto L9a
                com.anythink.core.common.n.c.c r4 = r11.f6496f     // Catch: java.lang.Throwable -> L25
                long r4 = r4.b()     // Catch: java.lang.Throwable -> L25
                int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                r5 = -1
                if (r4 <= 0) goto L6f
                com.anythink.core.common.n.c.c r4 = r11.f6496f     // Catch: java.lang.Throwable -> L25
                long r7 = r4.b()     // Catch: java.lang.Throwable -> L25
                long r13 = java.lang.Math.min(r13, r7)     // Catch: java.lang.Throwable -> L25
                long r12 = r4.a_(r12, r13)     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.i r14 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                long r7 = r14.f6472a     // Catch: java.lang.Throwable -> L25
                long r7 = r7 + r12
                r14.f6472a = r7     // Catch: java.lang.Throwable -> L25
                if (r3 != 0) goto L86
                com.anythink.core.common.n.b.a.e.f r14 = r14.f6475d     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.m r14 = r14.f6390o     // Catch: java.lang.Throwable -> L25
                int r14 = r14.e()     // Catch: java.lang.Throwable -> L25
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> L25
                int r14 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r14 < 0) goto L86
                com.anythink.core.common.n.b.a.e.i r14 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.f r4 = r14.f6475d     // Catch: java.lang.Throwable -> L25
                int r7 = r14.f6474c     // Catch: java.lang.Throwable -> L25
                long r8 = r14.f6472a     // Catch: java.lang.Throwable -> L25
                r4.a(r7, r8)     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.i r14 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                r14.f6472a = r0     // Catch: java.lang.Throwable -> L25
                goto L86
            L6f:
                boolean r4 = r11.f6493b     // Catch: java.lang.Throwable -> L25
                if (r4 != 0) goto L85
                if (r3 != 0) goto L85
                com.anythink.core.common.n.b.a.e.i r3 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L25
                r3.i()     // Catch: java.lang.Throwable -> L25
                com.anythink.core.common.n.b.a.e.i r3 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L83
                com.anythink.core.common.n.b.a.e.i$c r3 = r3.f6477f     // Catch: java.lang.Throwable -> L83
                r3.b()     // Catch: java.lang.Throwable -> L83
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L83
                goto L6
            L83:
                r12 = move-exception
                goto Laa
            L85:
                r12 = r5
            L86:
                com.anythink.core.common.n.b.a.e.i r14 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L83
                com.anythink.core.common.n.b.a.e.i$c r14 = r14.f6477f     // Catch: java.lang.Throwable -> L83
                r14.b()     // Catch: java.lang.Throwable -> L83
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L83
                int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r14 == 0) goto L96
                r11.a(r12)
                return r12
            L96:
                if (r3 != 0) goto L99
                return r5
            L99:
                throw r3
            L9a:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> L25
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> L25
                throw r12     // Catch: java.lang.Throwable -> L25
            La2:
                com.anythink.core.common.n.b.a.e.i r13 = com.anythink.core.common.n.b.a.e.i.this     // Catch: java.lang.Throwable -> L83
                com.anythink.core.common.n.b.a.e.i$c r13 = r13.f6477f     // Catch: java.lang.Throwable -> L83
                r13.b()     // Catch: java.lang.Throwable -> L83
                throw r12     // Catch: java.lang.Throwable -> L83
            Laa:
                monitor-exit(r2)
                throw r12
            Lac:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "byteCount < 0: "
                java.lang.String r13 = java.lang.String.valueOf(r13)
                java.lang.String r13 = r0.concat(r13)
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.i.b.a_(com.anythink.core.common.n.c.c, long):long");
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long jB;
            synchronized (i.this) {
                this.f6492a = true;
                jB = this.f6496f.b();
                this.f6496f.z();
                i.this.notifyAll();
            }
            if (jB > 0) {
                a(jB);
            }
            i.this.g();
        }

        private void a(long j2) {
            if (!f6491c && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            i.this.f6475d.a(j2);
        }

        public final void a(com.anythink.core.common.n.c.e eVar, long j2) throws EOFException {
            boolean z2;
            boolean z3;
            long jB;
            if (!f6491c && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j2 > 0) {
                synchronized (i.this) {
                    z2 = this.f6493b;
                    z3 = this.f6496f.b() + j2 > this.f6497g;
                }
                if (z3) {
                    eVar.i(j2);
                    i.this.a(com.anythink.core.common.n.b.a.e.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z2) {
                    eVar.i(j2);
                    return;
                }
                long jA_ = eVar.a_(this.f6495e, j2);
                if (jA_ != -1) {
                    j2 -= jA_;
                    synchronized (i.this) {
                        try {
                            if (this.f6492a) {
                                jB = this.f6495e.b();
                                this.f6495e.z();
                            } else {
                                boolean z4 = this.f6496f.b() == 0;
                                this.f6496f.a((w) this.f6495e);
                                if (z4) {
                                    i.this.notifyAll();
                                }
                                jB = 0;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (jB > 0) {
                        a(jB);
                    }
                } else {
                    throw new EOFException();
                }
            }
        }

        @Override // com.anythink.core.common.n.c.w
        public final x a() {
            return i.this.f6477f;
        }
    }

    public i(int i2, f fVar, boolean z2, boolean z3, u uVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f6481k = arrayDeque;
        this.f6477f = new c();
        this.f6478g = new c();
        if (fVar == null) {
            throw new NullPointerException("connection == null");
        }
        this.f6474c = i2;
        this.f6475d = fVar;
        this.f6473b = fVar.f6391p.e();
        b bVar = new b(fVar.f6390o.e());
        this.f6483m = bVar;
        a aVar = new a();
        this.f6476e = aVar;
        bVar.f6493b = z3;
        aVar.f6487b = z2;
        if (uVar != null) {
            arrayDeque.add(uVar);
        }
        if (b() && uVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!b() && uVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private int j() {
        return this.f6474c;
    }

    private f k() {
        return this.f6475d;
    }

    private synchronized com.anythink.core.common.n.b.a.e.b l() {
        return this.f6479h;
    }

    private x m() {
        return this.f6477f;
    }

    private x n() {
        return this.f6478g;
    }

    public final synchronized boolean a() {
        try {
            if (this.f6479h != null) {
                return false;
            }
            b bVar = this.f6483m;
            if (bVar.f6493b || bVar.f6492a) {
                a aVar = this.f6476e;
                if (aVar.f6487b || aVar.f6486a) {
                    if (this.f6482l) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b() {
        return this.f6475d.f6381f == ((this.f6474c & 1) == 1);
    }

    public final synchronized u c() {
        this.f6477f.c();
        while (this.f6481k.isEmpty() && this.f6479h == null) {
            try {
                i();
            } catch (Throwable th) {
                this.f6477f.b();
                throw th;
            }
        }
        this.f6477f.b();
        if (this.f6481k.isEmpty()) {
            IOException iOException = this.f6480i;
            if (iOException != null) {
                throw iOException;
            }
            throw new n(this.f6479h);
        }
        return this.f6481k.removeFirst();
    }

    public final synchronized u d() throws IOException {
        try {
            if (this.f6479h != null) {
                IOException iOException = this.f6480i;
                if (iOException != null) {
                    throw iOException;
                }
                throw new n(this.f6479h);
            }
            b bVar = this.f6483m;
            if (!bVar.f6493b || !bVar.f6495e.g() || !this.f6483m.f6496f.g()) {
                throw new IllegalStateException("too early; can't read the trailers yet");
            }
            if (this.f6483m.f6498h != null) {
                return this.f6483m.f6498h;
            }
            return com.anythink.core.common.n.b.a.c.f6217c;
        } finally {
        }
    }

    public final w e() {
        return this.f6483m;
    }

    public final v f() {
        synchronized (this) {
            try {
                if (!this.f6482l && !b()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f6476e;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            r2 = this;
            boolean r0 = com.anythink.core.common.n.b.a.e.i.f6471j
            if (r0 != 0) goto L11
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto Lb
            goto L11
        Lb:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L11:
            monitor-enter(r2)
            com.anythink.core.common.n.b.a.e.i$b r0 = r2.f6483m     // Catch: java.lang.Throwable -> L27
            boolean r1 = r0.f6493b     // Catch: java.lang.Throwable -> L27
            if (r1 != 0) goto L2b
            boolean r0 = r0.f6492a     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L2b
            com.anythink.core.common.n.b.a.e.i$a r0 = r2.f6476e     // Catch: java.lang.Throwable -> L27
            boolean r1 = r0.f6487b     // Catch: java.lang.Throwable -> L27
            if (r1 != 0) goto L29
            boolean r0 = r0.f6486a     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L2b
            goto L29
        L27:
            r0 = move-exception
            goto L44
        L29:
            r0 = 1
            goto L2c
        L2b:
            r0 = 0
        L2c:
            boolean r1 = r2.a()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L3a
            com.anythink.core.common.n.b.a.e.b r0 = com.anythink.core.common.n.b.a.e.b.CANCEL
            r1 = 0
            r2.a(r0, r1)
            return
        L3a:
            if (r1 != 0) goto L43
            com.anythink.core.common.n.b.a.e.f r0 = r2.f6475d
            int r1 = r2.f6474c
            r0.b(r1)
        L43:
            return
        L44:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.i.g():void");
    }

    public final void h() throws IOException {
        a aVar = this.f6476e;
        if (aVar.f6486a) {
            throw new IOException("stream closed");
        }
        if (aVar.f6487b) {
            throw new IOException("stream finished");
        }
        if (this.f6479h != null) {
            IOException iOException = this.f6480i;
            if (iOException == null) {
                throw new n(this.f6479h);
            }
        }
    }

    public final void i() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public class c extends C1118a {
        public c() {
        }

        @Override // com.anythink.core.common.n.c.C1118a
        public final void a() {
            i.this.a(com.anythink.core.common.n.b.a.e.b.CANCEL);
            i.this.f6475d.c();
        }

        public final void b() throws IOException {
            if (d()) {
                throw a((IOException) null);
            }
        }

        @Override // com.anythink.core.common.n.c.C1118a
        public final IOException a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }
    }

    private boolean b(com.anythink.core.common.n.b.a.e.b bVar, IOException iOException) {
        if (!f6471j && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.f6479h != null) {
                    return false;
                }
                if (this.f6483m.f6493b && this.f6476e.f6487b) {
                    return false;
                }
                this.f6479h = bVar;
                this.f6480i = iOException;
                notifyAll();
                this.f6475d.b(this.f6474c);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(List<com.anythink.core.common.n.b.a.e.c> list, boolean z2, boolean z3) {
        boolean z4;
        if (!f6471j && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (list != null) {
            synchronized (this) {
                z4 = true;
                try {
                    this.f6482l = true;
                    if (z2) {
                        this.f6476e.f6487b = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z3) {
                synchronized (this.f6475d) {
                    if (this.f6475d.f6389n != 0) {
                        z4 = false;
                    }
                }
                z3 = z4;
            }
            this.f6475d.a(this.f6474c, z2, list);
            if (z3) {
                this.f6475d.f6393r.b();
                return;
            }
            return;
        }
        throw new NullPointerException("headers == null");
    }

    public final synchronized void b(com.anythink.core.common.n.b.a.e.b bVar) {
        if (this.f6479h == null) {
            this.f6479h = bVar;
            notifyAll();
        }
    }

    private void a(u uVar) {
        synchronized (this) {
            try {
                if (!this.f6476e.f6487b) {
                    if (uVar.a() != 0) {
                        this.f6476e.f6490g = uVar;
                    } else {
                        throw new IllegalArgumentException("trailers.size() == 0");
                    }
                } else {
                    throw new IllegalStateException("already finished");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(com.anythink.core.common.n.b.a.e.b bVar, IOException iOException) {
        if (b(bVar, iOException)) {
            this.f6475d.b(this.f6474c, bVar);
        }
    }

    public final void a(com.anythink.core.common.n.b.a.e.b bVar) {
        if (b(bVar, null)) {
            this.f6475d.a(this.f6474c, bVar);
        }
    }

    public final void a(com.anythink.core.common.n.c.e eVar, int i2) {
        if (!f6471j && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f6483m.a(eVar, i2);
    }

    public final void a(u uVar, boolean z2) {
        boolean zA;
        if (!f6471j && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.f6482l && z2) {
                    this.f6483m.f6498h = uVar;
                } else {
                    this.f6482l = true;
                    this.f6481k.add(uVar);
                }
                if (z2) {
                    this.f6483m.f6493b = true;
                }
                zA = a();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zA) {
            return;
        }
        this.f6475d.b(this.f6474c);
    }

    public final void a(long j2) {
        this.f6473b += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }
}

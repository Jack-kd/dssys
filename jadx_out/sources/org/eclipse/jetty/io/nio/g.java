package org.eclipse.jetty.io.nio;

import L1.j;
import L1.k;
import W1.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* loaded from: classes5.dex */
public class g extends L1.b implements org.eclipse.jetty.io.nio.a {

    /* renamed from: u, reason: collision with root package name */
    public static final e f52478u = new d(0);

    /* renamed from: v, reason: collision with root package name */
    public static final ThreadLocal f52479v = new ThreadLocal();

    /* renamed from: e, reason: collision with root package name */
    public final R1.c f52480e;

    /* renamed from: f, reason: collision with root package name */
    public final SSLEngine f52481f;

    /* renamed from: g, reason: collision with root package name */
    public final SSLSession f52482g;

    /* renamed from: h, reason: collision with root package name */
    public org.eclipse.jetty.io.nio.a f52483h;

    /* renamed from: i, reason: collision with root package name */
    public final c f52484i;

    /* renamed from: j, reason: collision with root package name */
    public int f52485j;

    /* renamed from: k, reason: collision with root package name */
    public b f52486k;

    /* renamed from: l, reason: collision with root package name */
    public e f52487l;

    /* renamed from: m, reason: collision with root package name */
    public e f52488m;

    /* renamed from: n, reason: collision with root package name */
    public e f52489n;

    /* renamed from: o, reason: collision with root package name */
    public L1.c f52490o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f52491p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f52492q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f52493r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f52494s;

    /* renamed from: t, reason: collision with root package name */
    public final AtomicBoolean f52495t;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52496a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f52497b;

        static {
            int[] iArr = new int[SSLEngineResult.Status.values().length];
            f52497b = iArr;
            try {
                iArr[SSLEngineResult.Status.BUFFER_UNDERFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52497b[SSLEngineResult.Status.BUFFER_OVERFLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52497b[SSLEngineResult.Status.OK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f52497b[SSLEngineResult.Status.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SSLEngineResult.HandshakeStatus.values().length];
            f52496a = iArr2;
            try {
                iArr2[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f52496a[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f52496a[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f52496a[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f52496a[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final e f52498a;

        /* renamed from: b, reason: collision with root package name */
        public final e f52499b;

        /* renamed from: c, reason: collision with root package name */
        public final e f52500c;

        public b(int i2, int i3) {
            this.f52498a = new d(i2);
            this.f52499b = new d(i2);
            this.f52500c = new d(i3);
        }
    }

    public class c implements L1.c {
        public c() {
        }

        @Override // L1.i
        public void a(j jVar) {
            g.this.f52483h = (org.eclipse.jetty.io.nio.a) jVar;
        }

        @Override // L1.k
        public int b() {
            return g.this.f52490o.b();
        }

        @Override // L1.k
        public boolean c() {
            return false;
        }

        @Override // L1.k
        public void close() {
            g.this.f52480e.i("{} ssl endp.close", g.this.f52482g);
            g.this.f221c.close();
        }

        @Override // L1.k
        public String d() {
            return g.this.f52490o.d();
        }

        @Override // L1.c
        public void e() {
            g.this.f52490o.e();
        }

        @Override // L1.k
        public boolean f(long j2) {
            return g.this.f221c.f(j2);
        }

        @Override // L1.k
        public void flush() {
            g.this.E(null, null);
        }

        @Override // L1.k
        public int g(L1.d dVar, L1.d dVar2, L1.d dVar3) {
            if (dVar != null && dVar.B0()) {
                return i(dVar);
            }
            if (dVar2 != null && dVar2.B0()) {
                return i(dVar2);
            }
            if (dVar3 == null || !dVar3.B0()) {
                return 0;
            }
            return i(dVar3);
        }

        @Override // L1.i
        public j getConnection() {
            return g.this.f52483h;
        }

        @Override // L1.k
        public int getLocalPort() {
            return g.this.f52490o.getLocalPort();
        }

        @Override // L1.k
        public int getRemotePort() {
            return g.this.f52490o.getRemotePort();
        }

        @Override // L1.k
        public void h() {
            g.this.f52480e.i("{} ssl endp.ishut!", g.this.f52482g);
        }

        @Override // L1.k
        public int i(L1.d dVar) {
            int length = dVar.length();
            g.this.E(null, dVar);
            return length - dVar.length();
        }

        @Override // L1.k
        public boolean isOpen() {
            return g.this.f221c.isOpen();
        }

        @Override // L1.k
        public void j() {
            synchronized (g.this) {
                try {
                    g.this.f52480e.i("{} ssl endp.oshut {}", g.this.f52482g, this);
                    g.this.f52494s = true;
                    g.this.f52481f.closeOutbound();
                } catch (Exception e2) {
                    throw new IOException(e2);
                }
            }
            flush();
        }

        @Override // L1.c
        public boolean k() {
            return g.this.f52495t.getAndSet(false);
        }

        @Override // L1.k
        public void l(int i2) {
            g.this.f52490o.l(i2);
        }

        @Override // L1.k
        public Object m() {
            return g.this.f221c;
        }

        @Override // L1.k
        public String n() {
            return g.this.f52490o.n();
        }

        @Override // L1.k
        public boolean o() {
            boolean z2;
            synchronized (g.this) {
                try {
                    z2 = g.this.f52494s || !isOpen() || g.this.f52481f.isOutboundDone();
                } finally {
                }
            }
            return z2;
        }

        @Override // L1.k
        public String p() {
            return g.this.f52490o.p();
        }

        @Override // L1.c
        public void q() {
            g.this.f52490o.q();
        }

        @Override // L1.c
        public void r(e.a aVar, long j2) {
            g.this.f52490o.r(aVar, j2);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
        @Override // L1.k
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean s() {
            /*
                r2 = this;
                org.eclipse.jetty.io.nio.g r0 = org.eclipse.jetty.io.nio.g.this
                monitor-enter(r0)
                org.eclipse.jetty.io.nio.g r1 = org.eclipse.jetty.io.nio.g.this     // Catch: java.lang.Throwable -> L24
                L1.k r1 = org.eclipse.jetty.io.nio.g.u(r1)     // Catch: java.lang.Throwable -> L24
                boolean r1 = r1.s()     // Catch: java.lang.Throwable -> L24
                if (r1 == 0) goto L3c
                org.eclipse.jetty.io.nio.g r1 = org.eclipse.jetty.io.nio.g.this     // Catch: java.lang.Throwable -> L24
                org.eclipse.jetty.io.nio.e r1 = org.eclipse.jetty.io.nio.g.v(r1)     // Catch: java.lang.Throwable -> L24
                if (r1 == 0) goto L26
                org.eclipse.jetty.io.nio.g r1 = org.eclipse.jetty.io.nio.g.this     // Catch: java.lang.Throwable -> L24
                org.eclipse.jetty.io.nio.e r1 = org.eclipse.jetty.io.nio.g.v(r1)     // Catch: java.lang.Throwable -> L24
                boolean r1 = r1.B0()     // Catch: java.lang.Throwable -> L24
                if (r1 != 0) goto L3c
                goto L26
            L24:
                r1 = move-exception
                goto L3f
            L26:
                org.eclipse.jetty.io.nio.g r1 = org.eclipse.jetty.io.nio.g.this     // Catch: java.lang.Throwable -> L24
                org.eclipse.jetty.io.nio.e r1 = org.eclipse.jetty.io.nio.g.w(r1)     // Catch: java.lang.Throwable -> L24
                if (r1 == 0) goto L3a
                org.eclipse.jetty.io.nio.g r1 = org.eclipse.jetty.io.nio.g.this     // Catch: java.lang.Throwable -> L24
                org.eclipse.jetty.io.nio.e r1 = org.eclipse.jetty.io.nio.g.w(r1)     // Catch: java.lang.Throwable -> L24
                boolean r1 = r1.B0()     // Catch: java.lang.Throwable -> L24
                if (r1 != 0) goto L3c
            L3a:
                r1 = 1
                goto L3d
            L3c:
                r1 = 0
            L3d:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L24
                return r1
            L3f:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L24
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.g.c.s():boolean");
        }

        @Override // L1.k
        public int t(L1.d dVar) {
            int length = dVar.length();
            g.this.E(dVar, null);
            int length2 = dVar.length() - length;
            if (length2 == 0 && s()) {
                return -1;
            }
            return length2;
        }

        public String toString() {
            e eVar = g.this.f52487l;
            e eVar2 = g.this.f52489n;
            e eVar3 = g.this.f52488m;
            return String.format("SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}", g.this.f52481f.getHandshakeStatus(), Integer.valueOf(eVar == null ? -1 : eVar.length()), Integer.valueOf(eVar2 == null ? -1 : eVar2.length()), Integer.valueOf(eVar3 != null ? eVar3.length() : -1), Boolean.valueOf(g.this.f52493r), Boolean.valueOf(g.this.f52494s), g.this.f52483h);
        }
    }

    public g(SSLEngine sSLEngine, k kVar) {
        this(sSLEngine, kVar, System.currentTimeMillis());
    }

    public final void A() throws SSLException {
        try {
            this.f52481f.closeInbound();
        } catch (SSLException e2) {
            this.f52480e.a(e2);
        }
    }

    public final ByteBuffer B(L1.d dVar) {
        return dVar.buffer() instanceof e ? ((e) dVar.buffer()).t0() : ByteBuffer.wrap(dVar.p0());
    }

    public L1.c C() {
        return this.f52484i;
    }

    public c D() {
        return new c();
    }

    public final synchronized boolean E(L1.d dVar, L1.d dVar2) {
        Throwable th;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        L1.d dVar3 = dVar;
        synchronized (this) {
            boolean z4 = false;
            try {
                z();
                if (dVar3 == null) {
                    this.f52488m.u0();
                    dVar3 = this.f52488m;
                } else {
                    if (dVar3.w0() < this.f52482g.getApplicationBufferSize()) {
                        boolean zE = E(null, dVar2);
                        e eVar = this.f52488m;
                        if (eVar == null || !eVar.B0()) {
                            F();
                            return zE;
                        }
                        e eVar2 = this.f52488m;
                        eVar2.skip(dVar3.m0(eVar2));
                        F();
                        return true;
                    }
                    e eVar3 = this.f52488m;
                    if (eVar3 != null && eVar3.B0()) {
                        e eVar4 = this.f52488m;
                        eVar4.skip(dVar3.m0(eVar4));
                        F();
                        return true;
                    }
                }
                L1.d dVar4 = dVar3;
                L1.d dVar5 = dVar2 == null ? f52478u : dVar2;
                boolean z5 = true;
                boolean z6 = false;
                while (z5) {
                    try {
                        if (this.f52487l.f0() > 0) {
                            int iT = this.f221c.t(this.f52487l);
                            i2 = iT;
                            z2 = iT > 0;
                        } else {
                            z2 = false;
                            i2 = 0;
                        }
                        try {
                            try {
                                if (this.f52489n.B0()) {
                                    i3 = this.f221c.i(this.f52489n);
                                    z3 = i3 > 0 ? true : z2;
                                } else {
                                    z3 = z2;
                                    i3 = 0;
                                }
                                try {
                                    this.f52480e.i("{} {} {} filled={}/{} flushed={}/{}", this.f52482g, this, this.f52481f.getHandshakeStatus(), Integer.valueOf(i2), Integer.valueOf(this.f52487l.length()), Integer.valueOf(i3), Integer.valueOf(this.f52489n.length()));
                                    int i4 = a.f52496a[this.f52481f.getHandshakeStatus().ordinal()];
                                    if (i4 == 1) {
                                        throw new IllegalStateException();
                                    }
                                    if (i4 != 2) {
                                        if (i4 == 3) {
                                            while (true) {
                                                Runnable delegatedTask = this.f52481f.getDelegatedTask();
                                                if (delegatedTask == null) {
                                                    break;
                                                }
                                                delegatedTask.run();
                                                z3 = true;
                                            }
                                        } else if (i4 != 4) {
                                            if (i4 == 5) {
                                                if (this.f52492q && !this.f52491p) {
                                                    this.f221c.close();
                                                } else if (!this.f52487l.B0() && i2 == -1) {
                                                    this.f221c.h();
                                                } else if (G(dVar4)) {
                                                    z5 = true;
                                                }
                                            }
                                        } else if (this.f52492q && !this.f52491p) {
                                            this.f221c.close();
                                        } else if (H(dVar5)) {
                                            z5 = true;
                                        }
                                        z5 = z3;
                                    } else {
                                        if (dVar4.f0() > 0 && this.f52487l.B0() && G(dVar4)) {
                                            z3 = true;
                                        }
                                        if (dVar5.B0() && this.f52489n.f0() > 0 && H(dVar5)) {
                                            z5 = true;
                                        }
                                        z5 = z3;
                                    }
                                    if (this.f221c.isOpen() && this.f221c.s() && !this.f52487l.B0()) {
                                        A();
                                    }
                                    if (this.f221c.isOpen() && this.f52481f.isOutboundDone() && !this.f52489n.B0()) {
                                        this.f221c.j();
                                    }
                                    z6 |= z5;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z4 = z6;
                                    F();
                                    if (z4) {
                                        this.f52495t.set(true);
                                    }
                                    throw th;
                                }
                            } catch (IOException e2) {
                                e = e2;
                                this.f221c.close();
                                throw e;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            this.f52480e.i("{} {} {} filled={}/{} flushed={}/{}", this.f52482g, this, this.f52481f.getHandshakeStatus(), Integer.valueOf(i2), Integer.valueOf(this.f52487l.length()), 0, Integer.valueOf(this.f52489n.length()));
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        i2 = 0;
                    } catch (Throwable th4) {
                        th = th4;
                        i2 = 0;
                        this.f52480e.i("{} {} {} filled={}/{} flushed={}/{}", this.f52482g, this, this.f52481f.getHandshakeStatus(), Integer.valueOf(i2), Integer.valueOf(this.f52487l.length()), 0, Integer.valueOf(this.f52489n.length()));
                        throw th;
                    }
                }
                e eVar5 = this.f52488m;
                if (dVar4 == eVar5 && eVar5.B0() && !this.f52483h.b()) {
                    this.f52490o.e();
                }
                F();
                if (z6) {
                    this.f52495t.set(true);
                }
                return z6;
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    public final void F() {
        synchronized (this) {
            try {
                int i2 = this.f52485j - 1;
                this.f52485j = i2;
                if (i2 == 0 && this.f52486k != null && this.f52487l.length() == 0 && this.f52489n.length() == 0 && this.f52488m.length() == 0) {
                    this.f52487l = null;
                    this.f52489n = null;
                    this.f52488m = null;
                    f52479v.set(this.f52486k);
                    this.f52486k = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean G(L1.d dVar) {
        SSLEngineResult sSLEngineResultUnwrap;
        int iPosition;
        int iPosition2;
        try {
            if (!this.f52487l.B0()) {
                return false;
            }
            ByteBuffer byteBufferB = B(dVar);
            synchronized (byteBufferB) {
                ByteBuffer byteBufferT0 = this.f52487l.t0();
                try {
                    synchronized (byteBufferT0) {
                        try {
                            try {
                                byteBufferB.position(dVar.n0());
                                byteBufferB.limit(dVar.w0());
                                int iPosition3 = byteBufferB.position();
                                byteBufferT0.position(this.f52487l.getIndex());
                                byteBufferT0.limit(this.f52487l.n0());
                                int iPosition4 = byteBufferT0.position();
                                sSLEngineResultUnwrap = this.f52481f.unwrap(byteBufferT0, byteBufferB);
                                if (this.f52480e.f()) {
                                    this.f52480e.i("{} unwrap {} {} consumed={} produced={}", this.f52482g, sSLEngineResultUnwrap.getStatus(), sSLEngineResultUnwrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultUnwrap.bytesConsumed()), Integer.valueOf(sSLEngineResultUnwrap.bytesProduced()));
                                }
                                iPosition = byteBufferT0.position() - iPosition4;
                                this.f52487l.skip(iPosition);
                                this.f52487l.u0();
                                iPosition2 = byteBufferB.position() - iPosition3;
                                dVar.q0(dVar.n0() + iPosition2);
                                byteBufferT0.position(0);
                                byteBufferT0.limit(byteBufferT0.capacity());
                                byteBufferB.position(0);
                                byteBufferB.limit(byteBufferB.capacity());
                            } catch (SSLException e2) {
                                this.f52480e.d(String.valueOf(this.f221c), e2);
                                this.f221c.close();
                                throw e2;
                            }
                        } catch (IOException e3) {
                            throw e3;
                        } catch (Exception e4) {
                            throw new IOException(e4);
                        }
                    }
                } catch (Throwable th) {
                    byteBufferT0.position(0);
                    byteBufferT0.limit(byteBufferT0.capacity());
                    byteBufferB.position(0);
                    byteBufferB.limit(byteBufferB.capacity());
                    throw th;
                }
            }
            int i2 = a.f52497b[sSLEngineResultUnwrap.getStatus().ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            this.f52480e.i("{} wrap default {}", this.f52482g, sSLEngineResultUnwrap);
                            throw new IOException(sSLEngineResultUnwrap.toString());
                        }
                        this.f52480e.i("unwrap CLOSE {} {}", this, sSLEngineResultUnwrap);
                        if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                            this.f221c.close();
                        }
                    } else if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                        this.f52492q = true;
                    }
                } else if (this.f52480e.f()) {
                    this.f52480e.i("{} unwrap {} {}->{}", this.f52482g, sSLEngineResultUnwrap.getStatus(), this.f52487l.i0(), dVar.i0());
                }
            } else if (this.f221c.s()) {
                this.f52487l.clear();
            }
            return iPosition > 0 || iPosition2 > 0;
        } finally {
        }
    }

    public final synchronized boolean H(L1.d dVar) {
        SSLEngineResult sSLEngineResultWrap;
        int iPosition;
        int iPosition2;
        try {
            ByteBuffer byteBufferB = B(dVar);
            synchronized (byteBufferB) {
                this.f52489n.u0();
                ByteBuffer byteBufferT0 = this.f52489n.t0();
                synchronized (byteBufferT0) {
                    try {
                        try {
                            byteBufferB.position(dVar.getIndex());
                            byteBufferB.limit(dVar.n0());
                            int iPosition3 = byteBufferB.position();
                            byteBufferT0.position(this.f52489n.n0());
                            byteBufferT0.limit(byteBufferT0.capacity());
                            int iPosition4 = byteBufferT0.position();
                            sSLEngineResultWrap = this.f52481f.wrap(byteBufferB, byteBufferT0);
                            if (this.f52480e.f()) {
                                this.f52480e.i("{} wrap {} {} consumed={} produced={}", this.f52482g, sSLEngineResultWrap.getStatus(), sSLEngineResultWrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultWrap.bytesConsumed()), Integer.valueOf(sSLEngineResultWrap.bytesProduced()));
                            }
                            iPosition = byteBufferB.position() - iPosition3;
                            dVar.skip(iPosition);
                            iPosition2 = byteBufferT0.position() - iPosition4;
                            e eVar = this.f52489n;
                            eVar.q0(eVar.n0() + iPosition2);
                            byteBufferT0.position(0);
                            byteBufferT0.limit(byteBufferT0.capacity());
                            byteBufferB.position(0);
                            byteBufferB.limit(byteBufferB.capacity());
                        } catch (SSLException e2) {
                            this.f52480e.d(String.valueOf(this.f221c), e2);
                            this.f221c.close();
                            throw e2;
                        } catch (IOException e3) {
                            throw e3;
                        } catch (Exception e4) {
                            throw new IOException(e4);
                        }
                    } catch (Throwable th) {
                        byteBufferT0.position(0);
                        byteBufferT0.limit(byteBufferT0.capacity());
                        byteBufferB.position(0);
                        byteBufferB.limit(byteBufferB.capacity());
                        throw th;
                    }
                }
            }
            int i2 = a.f52497b[sSLEngineResultWrap.getStatus().ordinal()];
            if (i2 == 1) {
                throw new IllegalStateException();
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        this.f52480e.i("{} wrap default {}", this.f52482g, sSLEngineResultWrap);
                        throw new IOException(sSLEngineResultWrap.toString());
                    }
                    this.f52480e.i("wrap CLOSE {} {}", this, sSLEngineResultWrap);
                    if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                        this.f221c.close();
                    }
                } else if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                    this.f52492q = true;
                }
            }
        } finally {
        }
        return iPosition > 0 || iPosition2 > 0;
    }

    @Override // L1.b, L1.j
    public void a(long j2) {
        try {
            this.f52480e.i("onIdleExpired {}ms on {}", Long.valueOf(j2), this);
            if (this.f221c.o()) {
                this.f52484i.close();
            } else {
                this.f52484i.j();
            }
        } catch (IOException e2) {
            this.f52480e.e(e2);
            super.a(j2);
        }
    }

    @Override // L1.j
    public boolean b() {
        return false;
    }

    @Override // org.eclipse.jetty.io.nio.a
    public void c() {
    }

    @Override // L1.j
    public j handle() {
        try {
            z();
            boolean zE = true;
            while (zE) {
                zE = this.f52481f.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING ? E(null, null) : false;
                org.eclipse.jetty.io.nio.a aVar = (org.eclipse.jetty.io.nio.a) this.f52483h.handle();
                if (aVar != this.f52483h && aVar != null) {
                    this.f52483h = aVar;
                    zE = true;
                }
                this.f52480e.i("{} handle {} progress={}", this.f52482g, this, Boolean.valueOf(zE));
            }
            F();
            if (!this.f52493r && this.f52484i.s() && this.f52484i.isOpen()) {
                this.f52493r = true;
                try {
                    this.f52483h.c();
                    return this;
                } catch (Throwable th) {
                    this.f52480e.c("onInputShutdown failed", th);
                    try {
                        this.f52484i.close();
                    } catch (IOException e2) {
                        this.f52480e.h(e2);
                    }
                }
            }
            return this;
        } catch (Throwable th2) {
            F();
            if (!this.f52493r && this.f52484i.s() && this.f52484i.isOpen()) {
                this.f52493r = true;
                try {
                    this.f52483h.c();
                } catch (Throwable th3) {
                    this.f52480e.c("onInputShutdown failed", th3);
                    try {
                        this.f52484i.close();
                    } catch (IOException e3) {
                        this.f52480e.h(e3);
                    }
                }
            }
            throw th2;
        }
    }

    @Override // L1.j
    public boolean isIdle() {
        return false;
    }

    @Override // L1.j
    public void onClose() {
        j connection = this.f52484i.getConnection();
        if (connection == null || connection == this) {
            return;
        }
        connection.onClose();
    }

    @Override // L1.b
    public String toString() {
        return String.format("%s %s", super.toString(), this.f52484i);
    }

    public final void z() {
        synchronized (this) {
            try {
                int i2 = this.f52485j;
                this.f52485j = i2 + 1;
                if (i2 == 0 && this.f52486k == null) {
                    ThreadLocal threadLocal = f52479v;
                    b bVar = (b) threadLocal.get();
                    this.f52486k = bVar;
                    if (bVar == null) {
                        this.f52486k = new b(this.f52482g.getPacketBufferSize() * 2, this.f52482g.getApplicationBufferSize() * 2);
                    }
                    b bVar2 = this.f52486k;
                    this.f52487l = bVar2.f52498a;
                    this.f52489n = bVar2.f52499b;
                    this.f52488m = bVar2.f52500c;
                    threadLocal.set(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public g(SSLEngine sSLEngine, k kVar, long j2) {
        super(kVar, j2);
        this.f52480e = R1.b.b("org.eclipse.jetty.io.nio.ssl");
        this.f52491p = true;
        this.f52495t = new AtomicBoolean();
        this.f52481f = sSLEngine;
        this.f52482g = sSLEngine.getSession();
        this.f52490o = (L1.c) kVar;
        this.f52484i = D();
    }
}

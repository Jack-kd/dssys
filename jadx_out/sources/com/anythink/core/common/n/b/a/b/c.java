package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.a.k.a;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.ag;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.c.n;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.w;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    final j f6127a;

    /* renamed from: b, reason: collision with root package name */
    final com.anythink.core.common.n.b.e f6128b;

    /* renamed from: c, reason: collision with root package name */
    final r f6129c;

    /* renamed from: d, reason: collision with root package name */
    final d f6130d;

    /* renamed from: e, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.c.c f6131e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f6132f;

    public final class b extends com.anythink.core.common.n.c.i {

        /* renamed from: b, reason: collision with root package name */
        private final long f6139b;

        /* renamed from: c, reason: collision with root package name */
        private long f6140c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f6141d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f6142e;

        public b(w wVar, long j2) {
            super(wVar);
            this.f6139b = j2;
            if (j2 == 0) {
                a(null);
            }
        }

        private IOException a(IOException iOException) {
            if (this.f6141d) {
                return iOException;
            }
            this.f6141d = true;
            return c.this.a(true, false, iOException);
        }

        @Override // com.anythink.core.common.n.c.i, com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (this.f6142e) {
                throw new IllegalStateException("closed");
            }
            try {
                long jA_ = b().a_(cVar, j2);
                if (jA_ == -1) {
                    a(null);
                    return -1L;
                }
                long j3 = this.f6140c + jA_;
                long j4 = this.f6139b;
                if (j4 != -1 && j3 > j4) {
                    throw new ProtocolException("expected " + this.f6139b + " bytes but received " + j3);
                }
                this.f6140c = j3;
                if (j3 == j4) {
                    a(null);
                }
                return jA_;
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        @Override // com.anythink.core.common.n.c.i, com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f6142e) {
                return;
            }
            this.f6142e = true;
            try {
                super.close();
                a(null);
            } catch (IOException e2) {
                throw a(e2);
            }
        }
    }

    public c(j jVar, com.anythink.core.common.n.b.e eVar, r rVar, d dVar, com.anythink.core.common.n.b.a.c.c cVar) {
        this.f6127a = jVar;
        this.f6128b = eVar;
        this.f6129c = rVar;
        this.f6130d = dVar;
        this.f6131e = cVar;
    }

    private static void k() {
    }

    private static void l() {
    }

    private void m() {
        this.f6127a.c();
    }

    private void n() {
        this.f6131e.e();
    }

    public final e a() {
        return this.f6131e.a();
    }

    public final boolean b() {
        return this.f6132f;
    }

    public final void c() throws IOException {
        try {
            this.f6131e.b();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public final void d() throws IOException {
        try {
            this.f6131e.c();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public final u e() {
        return this.f6131e.d();
    }

    public final a.e f() {
        this.f6127a.c();
        return this.f6131e.a().a(this);
    }

    public final void g() {
        a(true, true, null);
    }

    public final void h() {
        this.f6131e.a().e();
    }

    public final void i() {
        this.f6131e.e();
        this.f6127a.a(this, true, true, null);
    }

    public final void j() {
        this.f6127a.a(this, true, false, null);
    }

    public final void a(ad adVar) throws IOException {
        try {
            this.f6131e.a(adVar);
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public final v b(ad adVar) {
        this.f6132f = false;
        long jB = adVar.d().b();
        return new a(this.f6131e.a(adVar, jB), jB);
    }

    public final af.a a(boolean z2) throws IOException {
        try {
            af.a aVarA = this.f6131e.a(z2);
            if (aVarA == null) {
                return aVarA;
            }
            com.anythink.core.common.n.b.a.a.f6042a.a(aVarA, this);
            return aVarA;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public final class a extends com.anythink.core.common.n.c.h {

        /* renamed from: b, reason: collision with root package name */
        private boolean f6134b;

        /* renamed from: c, reason: collision with root package name */
        private long f6135c;

        /* renamed from: d, reason: collision with root package name */
        private long f6136d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f6137e;

        public a(v vVar, long j2) {
            super(vVar);
            this.f6135c = j2;
        }

        @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v
        public final void a(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (this.f6137e) {
                throw new IllegalStateException("closed");
            }
            long j3 = this.f6135c;
            if (j3 == -1 || this.f6136d + j2 <= j3) {
                try {
                    super.a(cVar, j2);
                    this.f6136d += j2;
                    return;
                } catch (IOException e2) {
                    throw a(e2);
                }
            }
            throw new ProtocolException("expected " + this.f6135c + " bytes but received " + (this.f6136d + j2));
        }

        @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f6137e) {
                return;
            }
            this.f6137e = true;
            long j2 = this.f6135c;
            if (j2 != -1 && this.f6136d != j2) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        private IOException a(IOException iOException) {
            if (this.f6134b) {
                return iOException;
            }
            this.f6134b = true;
            return c.this.a(false, true, iOException);
        }
    }

    public final ag a(af afVar) throws IOException {
        try {
            String strA = afVar.a(AbstractC1114b.f5589g);
            long jA = this.f6131e.a(afVar);
            return new com.anythink.core.common.n.b.a.c.h(strA, jA, n.a(new b(this.f6131e.b(afVar), jA)));
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    private void a(IOException iOException) {
        this.f6130d.b();
        this.f6131e.a().a(iOException);
    }

    public final IOException a(boolean z2, boolean z3, IOException iOException) {
        if (iOException != null) {
            a(iOException);
        }
        return this.f6127a.a(this, z3, z2, iOException);
    }
}

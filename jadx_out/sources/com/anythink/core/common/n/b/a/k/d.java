package com.anythink.core.common.n.b.a.k;

import com.anythink.core.common.n.c.c;
import com.anythink.core.common.n.c.f;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.x;
import java.io.IOException;
import java.util.Random;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    final boolean f6643a;

    /* renamed from: b, reason: collision with root package name */
    final Random f6644b;

    /* renamed from: c, reason: collision with root package name */
    final com.anythink.core.common.n.c.d f6645c;

    /* renamed from: d, reason: collision with root package name */
    final com.anythink.core.common.n.c.c f6646d;

    /* renamed from: e, reason: collision with root package name */
    boolean f6647e;

    /* renamed from: f, reason: collision with root package name */
    final com.anythink.core.common.n.c.c f6648f = new com.anythink.core.common.n.c.c();

    /* renamed from: g, reason: collision with root package name */
    final a f6649g = new a();

    /* renamed from: h, reason: collision with root package name */
    boolean f6650h;

    /* renamed from: i, reason: collision with root package name */
    private final byte[] f6651i;

    /* renamed from: j, reason: collision with root package name */
    private final c.a f6652j;

    public d(boolean z2, com.anythink.core.common.n.c.d dVar, Random random) {
        if (dVar == null) {
            throw new NullPointerException("sink == null");
        }
        if (random == null) {
            throw new NullPointerException("random == null");
        }
        this.f6643a = z2;
        this.f6645c = dVar;
        this.f6646d = dVar.c();
        this.f6644b = random;
        this.f6651i = z2 ? new byte[4] : null;
        this.f6652j = z2 ? new c.a() : null;
    }

    public final void a(f fVar) throws IOException {
        b(9, fVar);
    }

    public final void b(f fVar) throws IOException {
        b(10, fVar);
    }

    private void b(int i2, f fVar) throws IOException {
        if (this.f6647e) {
            throw new IOException("closed");
        }
        int iJ = fVar.j();
        if (iJ > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        this.f6646d.l(i2 | 128);
        if (this.f6643a) {
            this.f6646d.l(iJ | 128);
            this.f6644b.nextBytes(this.f6651i);
            this.f6646d.d(this.f6651i);
            if (iJ > 0) {
                long jB = this.f6646d.b();
                this.f6646d.d(fVar);
                this.f6646d.a(this.f6652j);
                this.f6652j.a(jB);
                b.a(this.f6652j, this.f6651i);
                this.f6652j.close();
            }
        } else {
            this.f6646d.l(iJ);
            this.f6646d.d(fVar);
        }
        this.f6645c.flush();
    }

    public final void a(int i2, f fVar) {
        f fVarT = f.f7071b;
        if (i2 != 0 || fVar != null) {
            if (i2 != 0) {
                b.b(i2);
            }
            com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
            cVar.k(i2);
            if (fVar != null) {
                cVar.d(fVar);
            }
            fVarT = cVar.t();
        }
        try {
            b(8, fVarT);
        } finally {
            this.f6647e = true;
        }
    }

    public final class a implements v {

        /* renamed from: a, reason: collision with root package name */
        int f6653a;

        /* renamed from: b, reason: collision with root package name */
        long f6654b;

        /* renamed from: c, reason: collision with root package name */
        boolean f6655c;

        /* renamed from: d, reason: collision with root package name */
        boolean f6656d;

        public a() {
        }

        @Override // com.anythink.core.common.n.c.v
        public final void a(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            if (this.f6656d) {
                throw new IOException("closed");
            }
            d.this.f6648f.a(cVar, j2);
            boolean z2 = this.f6655c && this.f6654b != -1 && d.this.f6648f.b() > this.f6654b - 8192;
            long j3 = d.this.f6648f.j();
            if (j3 <= 0 || z2) {
                return;
            }
            d.this.a(this.f6653a, j3, this.f6655c, false);
            this.f6655c = false;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f6656d) {
                throw new IOException("closed");
            }
            d dVar = d.this;
            dVar.a(this.f6653a, dVar.f6648f.b(), this.f6655c, true);
            this.f6656d = true;
            d.this.f6650h = false;
        }

        @Override // com.anythink.core.common.n.c.v, java.io.Flushable
        public final void flush() throws IOException {
            if (this.f6656d) {
                throw new IOException("closed");
            }
            d dVar = d.this;
            dVar.a(this.f6653a, dVar.f6648f.b(), this.f6655c, false);
            this.f6655c = false;
        }

        @Override // com.anythink.core.common.n.c.v
        public final x a() {
            return d.this.f6645c.a();
        }
    }

    private v a(int i2, long j2) {
        if (!this.f6650h) {
            this.f6650h = true;
            a aVar = this.f6649g;
            aVar.f6653a = i2;
            aVar.f6654b = j2;
            aVar.f6655c = true;
            aVar.f6656d = false;
            return aVar;
        }
        throw new IllegalStateException("Another message writer is active. Did you call close()?");
    }

    public final void a(int i2, long j2, boolean z2, boolean z3) throws IOException {
        if (!this.f6647e) {
            if (!z2) {
                i2 = 0;
            }
            if (z3) {
                i2 |= 128;
            }
            this.f6646d.l(i2);
            int i3 = this.f6643a ? 128 : 0;
            if (j2 <= 125) {
                this.f6646d.l(((int) j2) | i3);
            } else if (j2 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.f6646d.l(i3 | WebSocketProtocol.PAYLOAD_SHORT);
                this.f6646d.k((int) j2);
            } else {
                this.f6646d.l(i3 | 127);
                this.f6646d.q(j2);
            }
            if (this.f6643a) {
                this.f6644b.nextBytes(this.f6651i);
                this.f6646d.d(this.f6651i);
                if (j2 > 0) {
                    long jB = this.f6646d.b();
                    this.f6646d.a(this.f6648f, j2);
                    this.f6646d.a(this.f6652j);
                    this.f6652j.a(jB);
                    b.a(this.f6652j, this.f6651i);
                    this.f6652j.close();
                }
            } else {
                this.f6646d.a(this.f6648f, j2);
            }
            this.f6645c.f();
            return;
        }
        throw new IOException("closed");
    }
}

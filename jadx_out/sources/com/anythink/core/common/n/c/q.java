package com.anythink.core.common.n.c;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
final class q implements d {

    /* renamed from: a, reason: collision with root package name */
    public final c f7118a = new c();

    /* renamed from: b, reason: collision with root package name */
    public final v f7119b;

    /* renamed from: c, reason: collision with root package name */
    boolean f7120c;

    public q(v vVar) {
        if (vVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f7119b = vVar;
    }

    @Override // com.anythink.core.common.n.c.d
    public final d A() {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        long j2 = this.f7118a.j();
        if (j2 > 0) {
            this.f7119b.a(this.f7118a, j2);
        }
        return this;
    }

    @Override // com.anythink.core.common.n.c.v
    public final void a(c cVar, long j2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.a(cVar, j2);
        A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d b(String str) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.b(str);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d, com.anythink.core.common.n.c.e
    public final c c() {
        return this.f7118a;
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        if (this.f7120c) {
            return;
        }
        try {
            c cVar = this.f7118a;
            long j2 = cVar.f7060c;
            if (j2 > 0) {
                this.f7119b.a(cVar, j2);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f7119b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f7120c = true;
        if (th != null) {
            y.a(th);
        }
    }

    @Override // com.anythink.core.common.n.c.d
    public final d d(f fVar) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.d(fVar);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final OutputStream e() {
        return new OutputStream() { // from class: com.anythink.core.common.n.c.q.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws Throwable {
                q.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() {
                q qVar = q.this;
                if (qVar.f7120c) {
                    return;
                }
                qVar.flush();
            }

            public final String toString() {
                return q.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public final void write(int i2) throws IOException {
                q qVar = q.this;
                if (qVar.f7120c) {
                    throw new IOException("closed");
                }
                qVar.f7118a.l((int) ((byte) i2));
                q.this.A();
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i2, int i3) throws IOException {
                q qVar = q.this;
                if (!qVar.f7120c) {
                    qVar.f7118a.c(bArr, i2, i3);
                    q.this.A();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // com.anythink.core.common.n.c.d
    public final d f() {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f7118a;
        long j2 = cVar.f7060c;
        if (j2 > 0) {
            this.f7119b.a(cVar, j2);
        }
        return this;
    }

    @Override // com.anythink.core.common.n.c.d, com.anythink.core.common.n.c.v, java.io.Flushable
    public final void flush() {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f7118a;
        long j2 = cVar.f7060c;
        if (j2 > 0) {
            this.f7119b.a(cVar, j2);
        }
        this.f7119b.flush();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d h(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.h(i2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d i(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.i(i2);
        return A();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f7120c;
    }

    @Override // com.anythink.core.common.n.c.d
    public final d j(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.j(i2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d k(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.k(i2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d l(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.l(i2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d m(int i2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.m(i2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d n(long j2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.n(j2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d o(long j2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.o(j2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d p(long j2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.p(j2);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d q(long j2) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.q(j2);
        return A();
    }

    public final String toString() {
        return "buffer(" + this.f7119b + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f7118a.write(byteBuffer);
        A();
        return iWrite;
    }

    @Override // com.anythink.core.common.n.c.d
    public final d c(byte[] bArr, int i2, int i3) {
        if (this.f7120c) {
            throw new IllegalStateException("closed");
        }
        this.f7118a.c(bArr, i2, i3);
        return A();
    }

    @Override // com.anythink.core.common.n.c.d
    public final long a(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long jA_ = wVar.a_(this.f7118a, 8192L);
            if (jA_ == -1) {
                return j2;
            }
            j2 += jA_;
            A();
        }
    }

    @Override // com.anythink.core.common.n.c.d
    public final d b(String str, int i2, int i3) {
        if (!this.f7120c) {
            this.f7118a.b(str, i2, i3);
            return A();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.anythink.core.common.n.c.d
    public final d d(byte[] bArr) {
        if (!this.f7120c) {
            this.f7118a.d(bArr);
            return A();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.anythink.core.common.n.c.d
    public final d a(w wVar, long j2) throws EOFException {
        while (j2 > 0) {
            long jA_ = wVar.a_(this.f7118a, j2);
            if (jA_ != -1) {
                j2 -= jA_;
                A();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }

    @Override // com.anythink.core.common.n.c.d
    public final d b(String str, Charset charset) {
        if (!this.f7120c) {
            this.f7118a.b(str, charset);
            return A();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.anythink.core.common.n.c.v
    public final x a() {
        return this.f7119b.a();
    }

    @Override // com.anythink.core.common.n.c.d
    public final d b(String str, int i2, int i3, Charset charset) {
        if (!this.f7120c) {
            this.f7118a.b(str, i2, i3, charset);
            return A();
        }
        throw new IllegalStateException("closed");
    }
}

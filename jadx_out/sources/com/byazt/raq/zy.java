package com.byazt.raq;

import java.io.IOException;
import java.nio.ByteBuffer;

@com.byazt.kj.hp(hp = {0, 1, 1165, 302})
/* loaded from: classes3.dex */
public final class zy implements j {
    public final jx hp = new jx();
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final vv f25121l;

    public zy(vv vvVar) {
        if (vvVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f25121l = vvVar;
    }

    @Override // com.byazt.raq.vv
    public void a_(jx jxVar, long j2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.a_(jxVar, j2);
        n();
    }

    @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.jx) {
            return;
        }
        try {
            jx jxVar = this.hp;
            long j2 = jxVar.f25110l;
            if (j2 > 0) {
                this.f25121l.a_(jxVar, j2);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f25121l.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.jx = true;
        if (th != null) {
            n.hp(th);
        }
    }

    @Override // com.byazt.raq.j
    public j eb(int i2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.eb(i2);
        return n();
    }

    @Override // com.byazt.raq.j, com.byazt.raq.vv, java.io.Flushable
    public void flush() throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        jx jxVar = this.hp;
        long j2 = jxVar.f25110l;
        if (j2 > 0) {
            this.f25121l.a_(jxVar, j2);
        }
        this.f25121l.flush();
    }

    @Override // com.byazt.raq.j
    public j gu(long j2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.gu(j2);
        return n();
    }

    @Override // com.byazt.raq.vv
    public sz hp() {
        return this.f25121l.hp();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.jx;
    }

    @Override // com.byazt.raq.j
    public j jl(long j2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.jl(j2);
        return n();
    }

    @Override // com.byazt.raq.j, com.byazt.raq.w
    public jx jx() {
        return this.hp;
    }

    @Override // com.byazt.raq.j
    public j l(a aVar) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.l(aVar);
        return n();
    }

    @Override // com.byazt.raq.j
    public j n() throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        long jEb = this.hp.eb();
        if (jEb > 0) {
            this.f25121l.a_(this.hp, jEb);
        }
        return this;
    }

    @Override // com.byazt.raq.j
    public j q(int i2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.q(i2);
        return n();
    }

    @Override // com.byazt.raq.j
    public j s(int i2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.s(i2);
        return n();
    }

    public String toString() {
        return "buffer(" + this.f25121l + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.hp.write(byteBuffer);
        n();
        return iWrite;
    }

    @Override // com.byazt.raq.j
    public j jx(byte[] bArr) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        this.hp.jx(bArr);
        return n();
    }

    @Override // com.byazt.raq.j
    public j l(String str) throws IOException {
        if (!this.jx) {
            this.hp.l(str);
            return n();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.byazt.raq.j
    public j jx(byte[] bArr, int i2, int i3) throws IOException {
        if (!this.jx) {
            this.hp.jx(bArr, i2, i3);
            return n();
        }
        throw new IllegalStateException("closed");
    }
}

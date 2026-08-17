package com.byazt.raq;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 1165, 42})
/* loaded from: classes3.dex */
public final class k implements w {
    public final jx hp = new jx();
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final ec f25111l;

    public k(ec ecVar) {
        if (ecVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f25111l = ecVar;
    }

    @Override // com.byazt.raq.w
    public InputStream a() {
        return new InputStream() { // from class: com.byazt.raq.k.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                k kVar = k.this;
                if (kVar.jx) {
                    throw new IOException("closed");
                }
                return (int) Math.min(kVar.hp.f25110l, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                k.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                k kVar = k.this;
                if (kVar.jx) {
                    throw new IOException("closed");
                }
                jx jxVar = kVar.hp;
                if (jxVar.f25110l == 0 && kVar.f25111l.hp(jxVar, 8192L) == -1) {
                    return -1;
                }
                return k.this.hp.s() & 255;
            }

            public String toString() {
                return k.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) throws IOException {
                if (!k.this.jx) {
                    n.hp(bArr.length, i2, i3);
                    k kVar = k.this;
                    jx jxVar = kVar.hp;
                    if (jxVar.f25110l == 0 && kVar.f25111l.hp(jxVar, 8192L) == -1) {
                        return -1;
                    }
                    return k.this.hp.hp(bArr, i2, i3);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.jx) {
            return;
        }
        this.jx = true;
        this.f25111l.close();
        this.hp.vv();
    }

    @Override // com.byazt.raq.w
    public int e() throws IOException {
        hp(4L);
        return this.hp.e();
    }

    @Override // com.byazt.raq.w
    public byte[] eb(long j2) throws IOException {
        hp(j2);
        return this.hp.eb(j2);
    }

    @Override // com.byazt.raq.w
    public short gu() throws IOException {
        hp(2L);
        return this.hp.gu();
    }

    @Override // com.byazt.raq.ec
    public long hp(jx jxVar, long j2) throws IOException {
        if (jxVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        jx jxVar2 = this.hp;
        if (jxVar2.f25110l == 0 && this.f25111l.hp(jxVar2, 8192L) == -1) {
            return -1L;
        }
        return this.hp.hp(jxVar, Math.min(j2, this.hp.f25110l));
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.jx;
    }

    @Override // com.byazt.raq.w
    public int jl() throws IOException {
        hp(4L);
        return this.hp.jl();
    }

    @Override // com.byazt.raq.w
    public jx jx() {
        return this.hp;
    }

    public boolean l(long j2) throws IOException {
        jx jxVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        do {
            jxVar = this.hp;
            if (jxVar.f25110l >= j2) {
                return true;
            }
        } while (this.f25111l.hp(jxVar, 8192L) != -1);
        return false;
    }

    @Override // com.byazt.raq.w
    public short q() throws IOException {
        hp(2L);
        return this.hp.q();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        jx jxVar = this.hp;
        if (jxVar.f25110l == 0 && this.f25111l.hp(jxVar, 8192L) == -1) {
            return -1;
        }
        return this.hp.read(byteBuffer);
    }

    @Override // com.byazt.raq.w
    public byte s() throws IOException {
        hp(1L);
        return this.hp.s();
    }

    public String toString() {
        return "buffer(" + this.f25111l + ")";
    }

    @Override // com.byazt.raq.w
    public String u() throws IOException {
        return w(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.byazt.raq.w
    public boolean w() throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        return this.hp.w() && this.f25111l.hp(this.hp, 8192L) == -1;
    }

    @Override // com.byazt.raq.w
    public byte[] xs() throws IOException {
        this.hp.hp(this.f25111l);
        return this.hp.xs();
    }

    @Override // com.byazt.raq.w
    public long zy() throws IOException {
        byte bL;
        hp(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!l(i3)) {
                break;
            }
            bL = this.hp.l(i2);
            if ((bL < 48 || bL > 57) && ((bL < 97 || bL > 102) && (bL < 65 || bL > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bL)));
        }
        return this.hp.zy();
    }

    @Override // com.byazt.raq.w
    public a jx(long j2) throws IOException {
        hp(j2);
        return this.hp.jx(j2);
    }

    @Override // com.byazt.raq.w
    public void s(long j2) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            jx jxVar = this.hp;
            if (jxVar.f25110l == 0 && this.f25111l.hp(jxVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j2, this.hp.l());
            this.hp.s(jMin);
            j2 -= jMin;
        }
    }

    @Override // com.byazt.raq.w
    public String w(long j2) throws IOException {
        if (j2 >= 0) {
            long j3 = j2 == LocationRequestCompat.PASSIVE_INTERVAL ? Long.MAX_VALUE : j2 + 1;
            long jHp = hp((byte) 10, 0L, j3);
            if (jHp != -1) {
                return this.hp.a(jHp);
            }
            if (j3 < LocationRequestCompat.PASSIVE_INTERVAL && l(j3) && this.hp.l(j3 - 1) == 13 && l(j3 + 1) && this.hp.l(j3) == 10) {
                return this.hp.a(j3);
            }
            jx jxVar = new jx();
            jx jxVar2 = this.hp;
            jxVar2.hp(jxVar, 0L, Math.min(32L, jxVar2.l()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.hp.l(), j2) + " content=" + jxVar.k().w() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j2)));
    }

    @Override // com.byazt.raq.w
    public void hp(long j2) throws IOException {
        if (!l(j2)) {
            throw new EOFException();
        }
    }

    @Override // com.byazt.raq.w
    public void hp(byte[] bArr) throws IOException {
        try {
            hp(bArr.length);
            this.hp.hp(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                jx jxVar = this.hp;
                long j2 = jxVar.f25110l;
                if (j2 > 0) {
                    int iHp = jxVar.hp(bArr, i2, (int) j2);
                    if (iHp == -1) {
                        throw new AssertionError();
                    }
                    i2 += iHp;
                } else {
                    throw e2;
                }
            }
        }
    }

    @Override // com.byazt.raq.w
    public String hp(Charset charset) throws IOException {
        if (charset != null) {
            this.hp.hp(this.f25111l);
            return this.hp.hp(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.byazt.raq.w
    public long hp(byte b3) throws IOException {
        return hp(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    public long hp(byte b3, long j2, long j3) throws IOException {
        if (this.jx) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j2), Long.valueOf(j3)));
        }
        long jMax = j2;
        while (jMax < j3) {
            byte b4 = b3;
            long j4 = j3;
            long jHp = this.hp.hp(b4, jMax, j4);
            if (jHp != -1) {
                return jHp;
            }
            jx jxVar = this.hp;
            long j5 = jxVar.f25110l;
            if (j5 >= j4 || this.f25111l.hp(jxVar, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j5);
            b3 = b4;
            j3 = j4;
        }
        return -1L;
    }

    @Override // com.byazt.raq.w
    public boolean hp(long j2, a aVar) throws IOException {
        return hp(j2, aVar, 0, aVar.eb());
    }

    public boolean hp(long j2, a aVar, int i2, int i3) throws IOException {
        if (!this.jx) {
            if (j2 < 0 || i2 < 0 || i3 < 0 || aVar.eb() - i2 < i3) {
                return false;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                long j3 = i4 + j2;
                if (!l(1 + j3) || this.hp.l(j3) != aVar.hp(i2 + i4)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.byazt.raq.ec
    public sz hp() {
        return this.f25111l.hp();
    }
}

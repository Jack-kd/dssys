package com.anythink.core.common.n.c;

import androidx.core.location.LocationRequestCompat;
import com.umeng.analytics.pro.ek;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.Utf8;

/* loaded from: classes2.dex */
final class r implements e {

    /* renamed from: a, reason: collision with root package name */
    public final c f7122a = new c();

    /* renamed from: b, reason: collision with root package name */
    public final w f7123b;

    /* renamed from: c, reason: collision with root package name */
    boolean f7124c;

    public r(w wVar) {
        if (wVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f7123b = wVar;
    }

    @Override // com.anythink.core.common.n.c.e
    public final void a(long j2) throws EOFException {
        if (!b(j2)) {
            throw new EOFException();
        }
    }

    @Override // com.anythink.core.common.n.c.w
    public final long a_(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        c cVar2 = this.f7122a;
        if (cVar2.f7060c == 0 && this.f7123b.a_(cVar2, 8192L) == -1) {
            return -1L;
        }
        return this.f7122a.a_(cVar, Math.min(j2, this.f7122a.f7060c));
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean b(long j2) {
        c cVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        do {
            cVar = this.f7122a;
            if (cVar.f7060c >= j2) {
                return true;
            }
        } while (this.f7123b.a_(cVar, 8192L) != -1);
        return false;
    }

    @Override // com.anythink.core.common.n.c.e
    public final c c() {
        return this.f7122a;
    }

    @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f7124c) {
            return;
        }
        this.f7124c = true;
        this.f7123b.close();
        this.f7122a.z();
    }

    @Override // com.anythink.core.common.n.c.e
    public final c d() {
        return this.f7122a;
    }

    @Override // com.anythink.core.common.n.c.e
    public final String e(long j2) throws EOFException {
        a(j2);
        return this.f7122a.e(j2);
    }

    @Override // com.anythink.core.common.n.c.e
    public final String f(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j2)));
        }
        long j3 = j2 == LocationRequestCompat.PASSIVE_INTERVAL ? Long.MAX_VALUE : j2 + 1;
        long jA = a((byte) 10, 0L, j3);
        if (jA != -1) {
            return this.f7122a.g(jA);
        }
        if (j3 < LocationRequestCompat.PASSIVE_INTERVAL && b(j3) && this.f7122a.c(j3 - 1) == 13 && b(j3 + 1) && this.f7122a.c(j3) == 10) {
            return this.f7122a.g(j3);
        }
        c cVar = new c();
        c cVar2 = this.f7122a;
        cVar2.a(cVar, 0L, Math.min(32L, cVar2.f7060c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f7122a.f7060c, j2) + " content=" + cVar.t().g() + (char) 8230);
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean g() {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        return this.f7122a.g() && this.f7123b.a_(this.f7122a, 8192L) == -1;
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte[] h(long j2) throws EOFException {
        a(j2);
        return this.f7122a.h(j2);
    }

    @Override // com.anythink.core.common.n.c.e
    public final void i(long j2) throws EOFException {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            c cVar = this.f7122a;
            if (cVar.f7060c == 0 && this.f7123b.a_(cVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j2, this.f7122a.f7060c);
            this.f7122a.i(jMin);
            j2 -= jMin;
        }
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f7124c;
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte k() throws EOFException {
        a(1L);
        return this.f7122a.k();
    }

    @Override // com.anythink.core.common.n.c.e
    public final short l() throws EOFException {
        a(2L);
        return this.f7122a.l();
    }

    @Override // com.anythink.core.common.n.c.e
    public final int m() throws EOFException {
        a(4L);
        return this.f7122a.m();
    }

    @Override // com.anythink.core.common.n.c.e
    public final long n() throws EOFException {
        a(8L);
        return this.f7122a.n();
    }

    @Override // com.anythink.core.common.n.c.e
    public final short o() throws EOFException {
        a(2L);
        return y.a(this.f7122a.l());
    }

    @Override // com.anythink.core.common.n.c.e
    public final int p() throws EOFException {
        a(4L);
        return y.a(this.f7122a.m());
    }

    @Override // com.anythink.core.common.n.c.e
    public final long q() throws EOFException {
        a(8L);
        return y.a(this.f7122a.n());
    }

    @Override // com.anythink.core.common.n.c.e
    public final long r() throws EOFException {
        byte bC;
        a(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!b(i3)) {
                break;
            }
            bC = this.f7122a.c(i2);
            if ((bC < 48 || bC > 57) && !(i2 == 0 && bC == 45)) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(bC)));
        }
        return this.f7122a.r();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        c cVar = this.f7122a;
        if (cVar.f7060c == 0 && this.f7123b.a_(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f7122a.read(byteBuffer);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long s() throws EOFException {
        byte bC;
        a(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!b(i3)) {
                break;
            }
            bC = this.f7122a.c(i2);
            if ((bC < 48 || bC > 57) && ((bC < 97 || bC > 102) && (bC < 65 || bC > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bC)));
        }
        return this.f7122a.s();
    }

    @Override // com.anythink.core.common.n.c.e
    public final f t() {
        this.f7122a.a(this.f7123b);
        return this.f7122a.t();
    }

    public final String toString() {
        return "buffer(" + this.f7123b + ")";
    }

    @Override // com.anythink.core.common.n.c.e
    public final String u() {
        this.f7122a.a(this.f7123b);
        return this.f7122a.u();
    }

    @Override // com.anythink.core.common.n.c.e
    public final String v() {
        long jA = a((byte) 10);
        if (jA != -1) {
            return this.f7122a.g(jA);
        }
        long j2 = this.f7122a.f7060c;
        if (j2 != 0) {
            return e(j2);
        }
        return null;
    }

    @Override // com.anythink.core.common.n.c.e
    public final String w() {
        return f(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.anythink.core.common.n.c.e
    public final int x() throws EOFException {
        int i2;
        int i3;
        int i4;
        a(1L);
        byte bC = this.f7122a.c(0L);
        if ((bC & 224) == 192) {
            a(2L);
        } else if ((bC & 240) == 224) {
            a(3L);
        } else if ((bC & 248) == 240) {
            a(4L);
        }
        c cVar = this.f7122a;
        if (cVar.f7060c == 0) {
            throw new EOFException();
        }
        byte bC2 = cVar.c(0L);
        if ((bC2 & com.anythink.core.common.s.a.c.f7560a) == 0) {
            i2 = bC2 & 127;
            i4 = 0;
            i3 = 1;
        } else if ((bC2 & 224) == 192) {
            i2 = bC2 & 31;
            i3 = 2;
            i4 = 128;
        } else if ((bC2 & 240) == 224) {
            i2 = bC2 & ek.f49295m;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((bC2 & 248) != 240) {
                cVar.i(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i2 = bC2 & 7;
            i3 = 4;
            i4 = 65536;
        }
        long j2 = i3;
        if (cVar.f7060c < j2) {
            throw new EOFException("size < " + i3 + ": " + cVar.f7060c + " (to read code point prefixed 0x" + Integer.toHexString(bC2) + ")");
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte bC3 = cVar.c(j3);
            if ((bC3 & 192) != 128) {
                cVar.i(j3);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i2 = (i2 << 6) | (bC3 & 63);
        }
        cVar.i(j2);
        return i2 > 1114111 ? Utf8.REPLACEMENT_CODE_POINT : ((i2 < 55296 || i2 > 57343) && i2 >= i4) ? i2 : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte[] y() {
        this.f7122a.a(this.f7123b);
        return this.f7122a.y();
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(o oVar) throws EOFException {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        do {
            int iA = this.f7122a.a(oVar, true);
            if (iA == -1) {
                return -1;
            }
            if (iA != -2) {
                this.f7122a.i(oVar.f7110a[iA].j());
                return iA;
            }
        } while (this.f7123b.a_(this.f7122a, 8192L) != -1);
        return -1;
    }

    @Override // com.anythink.core.common.n.c.e
    public final long c(f fVar) {
        return b(fVar, 0L);
    }

    @Override // com.anythink.core.common.n.c.e
    public final f d(long j2) throws EOFException {
        a(j2);
        return this.f7122a.d(j2);
    }

    @Override // com.anythink.core.common.n.c.e
    public final e h() {
        return n.a(new p(this));
    }

    @Override // com.anythink.core.common.n.c.e
    public final void b(byte[] bArr) throws EOFException {
        try {
            a(bArr.length);
            this.f7122a.b(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                c cVar = this.f7122a;
                long j2 = cVar.f7060c;
                if (j2 > 0) {
                    int iA = cVar.a(bArr, i2, (int) j2);
                    if (iA == -1) {
                        throw new AssertionError();
                    }
                    i2 += iA;
                } else {
                    throw e2;
                }
            }
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(byte[] bArr, int i2, int i3) {
        long j2 = i3;
        y.a(bArr.length, i2, j2);
        c cVar = this.f7122a;
        if (cVar.f7060c == 0 && this.f7123b.a_(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f7122a.a(bArr, i2, (int) Math.min(j2, this.f7122a.f7060c));
    }

    @Override // com.anythink.core.common.n.c.e
    public final InputStream i() {
        return new InputStream() { // from class: com.anythink.core.common.n.c.r.1
            @Override // java.io.InputStream
            public final int available() throws IOException {
                r rVar = r.this;
                if (rVar.f7124c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(rVar.f7122a.f7060c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                r.this.close();
            }

            @Override // java.io.InputStream
            public final int read() throws IOException {
                r rVar = r.this;
                if (rVar.f7124c) {
                    throw new IOException("closed");
                }
                c cVar = rVar.f7122a;
                if (cVar.f7060c == 0 && rVar.f7123b.a_(cVar, 8192L) == -1) {
                    return -1;
                }
                return r.this.f7122a.k() & 255;
            }

            public final String toString() {
                return r.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i2, int i3) throws IOException {
                if (!r.this.f7124c) {
                    y.a(bArr.length, i2, i3);
                    r rVar = r.this;
                    c cVar = rVar.f7122a;
                    if (cVar.f7060c == 0 && rVar.f7123b.a_(cVar, 8192L) == -1) {
                        return -1;
                    }
                    return r.this.f7122a.a(bArr, i2, i3);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // com.anythink.core.common.n.c.e
    public final void b(c cVar, long j2) throws EOFException {
        try {
            a(j2);
            this.f7122a.b(cVar, j2);
        } catch (EOFException e2) {
            cVar.a((w) this.f7122a);
            throw e2;
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(v vVar) {
        if (vVar != null) {
            long j2 = 0;
            while (this.f7123b.a_(this.f7122a, 8192L) != -1) {
                long j3 = this.f7122a.j();
                if (j3 > 0) {
                    j2 += j3;
                    vVar.a(this.f7122a, j3);
                }
            }
            c cVar = this.f7122a;
            long j4 = cVar.f7060c;
            if (j4 <= 0) {
                return j2;
            }
            long j5 = j2 + j4;
            vVar.a(cVar, j4);
            return j5;
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.anythink.core.common.n.c.e
    public final long b(f fVar) {
        return a(fVar, 0L);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long b(f fVar, long j2) {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jB = this.f7122a.b(fVar, j2);
            if (jB != -1) {
                return jB;
            }
            c cVar = this.f7122a;
            long j3 = cVar.f7060c;
            if (this.f7123b.a_(cVar, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, j3);
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final String a(Charset charset) {
        if (charset != null) {
            this.f7122a.a(this.f7123b);
            return this.f7122a.a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.anythink.core.common.n.c.e
    public final String a(long j2, Charset charset) throws EOFException {
        a(j2);
        if (charset != null) {
            return this.f7122a.a(j2, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3) {
        return a(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3, long j2) {
        return a(b3, j2, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3, long j2, long j3) {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j2), Long.valueOf(j3)));
        }
        long jMax = j2;
        while (jMax < j3) {
            byte b4 = b3;
            long j4 = j3;
            long jA = this.f7122a.a(b4, jMax, j4);
            if (jA != -1) {
                return jA;
            }
            c cVar = this.f7122a;
            long j5 = cVar.f7060c;
            if (j5 >= j4 || this.f7123b.a_(cVar, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j5);
            b3 = b4;
            j3 = j4;
        }
        return -1L;
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(f fVar, long j2) {
        if (this.f7124c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jA = this.f7122a.a(fVar, j2);
            if (jA != -1) {
                return jA;
            }
            c cVar = this.f7122a;
            long j3 = cVar.f7060c;
            if (this.f7123b.a_(cVar, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, (j3 - fVar.j()) + 1);
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean a(long j2, f fVar) {
        return a(j2, fVar, fVar.j());
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean a(long j2, f fVar, int i2) {
        if (!this.f7124c) {
            if (j2 < 0 || i2 < 0 || fVar.j() < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j3 = i3 + j2;
                if (!b(1 + j3) || this.f7122a.c(j3) != fVar.b(i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.anythink.core.common.n.c.w
    public final x a() {
        return this.f7123b.a();
    }
}

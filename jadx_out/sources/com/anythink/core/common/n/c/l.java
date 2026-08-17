package com.anythink.core.common.n.c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class l implements w {

    /* renamed from: a, reason: collision with root package name */
    private static final byte f7087a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final byte f7088b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static final byte f7089c = 3;

    /* renamed from: d, reason: collision with root package name */
    private static final byte f7090d = 4;

    /* renamed from: e, reason: collision with root package name */
    private static final byte f7091e = 0;

    /* renamed from: f, reason: collision with root package name */
    private static final byte f7092f = 1;

    /* renamed from: g, reason: collision with root package name */
    private static final byte f7093g = 2;

    /* renamed from: h, reason: collision with root package name */
    private static final byte f7094h = 3;

    /* renamed from: j, reason: collision with root package name */
    private final e f7096j;

    /* renamed from: k, reason: collision with root package name */
    private final Inflater f7097k;

    /* renamed from: l, reason: collision with root package name */
    private final m f7098l;

    /* renamed from: i, reason: collision with root package name */
    private int f7095i = 0;

    /* renamed from: m, reason: collision with root package name */
    private final CRC32 f7099m = new CRC32();

    public l(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f7097k = inflater;
        e eVarA = n.a(wVar);
        this.f7096j = eVarA;
        this.f7098l = new m(eVarA, inflater);
    }

    private void b() throws IOException {
        this.f7096j.a(10L);
        byte bC = this.f7096j.c().c(3L);
        boolean z2 = ((bC >> 1) & 1) == 1;
        if (z2) {
            a(this.f7096j.c(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f7096j.l());
        this.f7096j.i(8L);
        if (((bC >> 2) & 1) == 1) {
            this.f7096j.a(2L);
            if (z2) {
                a(this.f7096j.c(), 0L, 2L);
            }
            long jA = y.a(this.f7096j.c().l());
            this.f7096j.a(jA);
            if (z2) {
                a(this.f7096j.c(), 0L, jA);
            }
            this.f7096j.i(jA);
        }
        if (((bC >> 3) & 1) == 1) {
            long jA2 = this.f7096j.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z2) {
                a(this.f7096j.c(), 0L, jA2 + 1);
            }
            this.f7096j.i(jA2 + 1);
        }
        if (((bC >> 4) & 1) == 1) {
            long jA3 = this.f7096j.a((byte) 0);
            if (jA3 == -1) {
                throw new EOFException();
            }
            if (z2) {
                a(this.f7096j.c(), 0L, jA3 + 1);
            }
            this.f7096j.i(jA3 + 1);
        }
        if (z2) {
            a("FHCRC", this.f7096j.o(), (short) this.f7099m.getValue());
            this.f7099m.reset();
        }
    }

    private void c() throws IOException {
        a("CRC", this.f7096j.p(), (int) this.f7099m.getValue());
        a("ISIZE", this.f7096j.p(), (int) this.f7097k.getBytesWritten());
    }

    @Override // com.anythink.core.common.n.c.w
    public final x a() {
        return this.f7096j.a();
    }

    @Override // com.anythink.core.common.n.c.w
    public final long a_(c cVar, long j2) throws DataFormatException, IOException {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return 0L;
        }
        if (this.f7095i == 0) {
            this.f7096j.a(10L);
            byte bC = this.f7096j.c().c(3L);
            boolean z2 = ((bC >> 1) & 1) == 1;
            if (z2) {
                a(this.f7096j.c(), 0L, 10L);
            }
            a("ID1ID2", 8075, this.f7096j.l());
            this.f7096j.i(8L);
            if (((bC >> 2) & 1) == 1) {
                this.f7096j.a(2L);
                if (z2) {
                    a(this.f7096j.c(), 0L, 2L);
                }
                long jO = this.f7096j.c().o();
                this.f7096j.a(jO);
                if (z2) {
                    a(this.f7096j.c(), 0L, jO);
                }
                this.f7096j.i(jO);
            }
            if (((bC >> 3) & 1) == 1) {
                long jA = this.f7096j.a((byte) 0);
                if (jA == -1) {
                    throw new EOFException();
                }
                if (z2) {
                    a(this.f7096j.c(), 0L, jA + 1);
                }
                this.f7096j.i(jA + 1);
            }
            if (((bC >> 4) & 1) == 1) {
                long jA2 = this.f7096j.a((byte) 0);
                if (jA2 == -1) {
                    throw new EOFException();
                }
                if (z2) {
                    a(this.f7096j.c(), 0L, jA2 + 1);
                }
                this.f7096j.i(jA2 + 1);
            }
            if (z2) {
                a("FHCRC", this.f7096j.o(), (short) this.f7099m.getValue());
                this.f7099m.reset();
            }
            this.f7095i = 1;
        }
        if (this.f7095i == 1) {
            long j3 = cVar.f7060c;
            long jA_ = this.f7098l.a_(cVar, j2);
            if (jA_ != -1) {
                a(cVar, j3, jA_);
                return jA_;
            }
            this.f7095i = 2;
        }
        if (this.f7095i == 2) {
            a("CRC", this.f7096j.p(), (int) this.f7099m.getValue());
            a("ISIZE", this.f7096j.p(), (int) this.f7097k.getBytesWritten());
            this.f7095i = 3;
            if (!this.f7096j.g()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f7098l.close();
    }

    private void a(c cVar, long j2, long j3) {
        s sVar = cVar.f7059b;
        while (true) {
            int i2 = sVar.f7130e;
            int i3 = sVar.f7129d;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= i2 - i3;
            sVar = sVar.f7133h;
        }
        while (j3 > 0) {
            int iMin = (int) Math.min(sVar.f7130e - r6, j3);
            this.f7099m.update(sVar.f7128c, (int) (sVar.f7129d + j2), iMin);
            j3 -= iMin;
            sVar = sVar.f7133h;
            j2 = 0;
        }
    }

    private static void a(String str, int i2, int i3) throws IOException {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }
}

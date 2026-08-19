package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public final class GzipSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    private static final byte f29784a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final byte f29785b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static final byte f29786c = 3;

    /* renamed from: d, reason: collision with root package name */
    private static final byte f29787d = 4;

    /* renamed from: e, reason: collision with root package name */
    private static final byte f29788e = 0;

    /* renamed from: f, reason: collision with root package name */
    private static final byte f29789f = 1;

    /* renamed from: g, reason: collision with root package name */
    private static final byte f29790g = 2;

    /* renamed from: h, reason: collision with root package name */
    private static final byte f29791h = 3;

    /* renamed from: j, reason: collision with root package name */
    private final BufferedSource f29793j;

    /* renamed from: k, reason: collision with root package name */
    private final Inflater f29794k;

    /* renamed from: l, reason: collision with root package name */
    private final InflaterSource f29795l;

    /* renamed from: i, reason: collision with root package name */
    private int f29792i = 0;

    /* renamed from: m, reason: collision with root package name */
    private final CRC32 f29796m = new CRC32();

    public GzipSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f29794k = inflater;
        BufferedSource bufferedSourceBuffer = Okio.buffer(source);
        this.f29793j = bufferedSourceBuffer;
        this.f29795l = new InflaterSource(bufferedSourceBuffer, inflater);
    }

    private void a() throws IOException {
        this.f29793j.require(10L);
        byte b3 = this.f29793j.buffer().getByte(3L);
        boolean z2 = ((b3 >> 1) & 1) == 1;
        if (z2) {
            a(this.f29793j.buffer(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f29793j.readShort());
        this.f29793j.skip(8L);
        if (((b3 >> 2) & 1) == 1) {
            this.f29793j.require(2L);
            if (z2) {
                a(this.f29793j.buffer(), 0L, 2L);
            }
            long shortLe = this.f29793j.buffer().readShortLe() & 65535;
            this.f29793j.require(shortLe);
            if (z2) {
                a(this.f29793j.buffer(), 0L, shortLe);
            }
            this.f29793j.skip(shortLe);
        }
        if (((b3 >> 3) & 1) == 1) {
            long jIndexOf = this.f29793j.indexOf((byte) 0);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z2) {
                a(this.f29793j.buffer(), 0L, jIndexOf + 1);
            }
            this.f29793j.skip(jIndexOf + 1);
        }
        if (((b3 >> 4) & 1) == 1) {
            long jIndexOf2 = this.f29793j.indexOf((byte) 0);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z2) {
                a(this.f29793j.buffer(), 0L, jIndexOf2 + 1);
            }
            this.f29793j.skip(jIndexOf2 + 1);
        }
        if (z2) {
            a("FHCRC", this.f29793j.readShortLe(), (short) this.f29796m.getValue());
            this.f29796m.reset();
        }
    }

    private void b() throws IOException {
        a("CRC", this.f29793j.readIntLe(), (int) this.f29796m.getValue());
        a("ISIZE", this.f29793j.readIntLe(), (int) this.f29794k.getBytesWritten());
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29795l.close();
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws DataFormatException, IOException {
        GzipSource gzipSource;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (j2 == 0) {
            return 0L;
        }
        if (this.f29792i == 0) {
            a();
            this.f29792i = 1;
        }
        if (this.f29792i == 1) {
            long j3 = buffer.f29765c;
            long j4 = this.f29795l.read(buffer, j2);
            gzipSource = this;
            if (j4 != -1) {
                gzipSource.a(buffer, j3, j4);
                return j4;
            }
            gzipSource.f29792i = 2;
        } else {
            gzipSource = this;
        }
        if (gzipSource.f29792i == 2) {
            b();
            gzipSource.f29792i = 3;
            if (!gzipSource.f29793j.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f29793j.timeout();
    }

    private void a(Buffer buffer, long j2, long j3) {
        Segment segment = buffer.f29764b;
        while (true) {
            int i2 = segment.f29842e;
            int i3 = segment.f29841d;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= i2 - i3;
            segment = segment.f29845h;
        }
        while (j3 > 0) {
            int iMin = (int) Math.min(segment.f29842e - r6, j3);
            this.f29796m.update(segment.f29840c, (int) (segment.f29841d + j2), iMin);
            j3 -= iMin;
            segment = segment.f29845h;
            j2 = 0;
        }
    }

    private void a(String str, int i2, int i3) throws IOException {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }
}

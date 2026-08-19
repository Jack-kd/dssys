package com.czhj.wire.okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* loaded from: classes3.dex */
public final class GzipSink implements Sink {

    /* renamed from: a, reason: collision with root package name */
    private final BufferedSink f29779a;

    /* renamed from: b, reason: collision with root package name */
    private final Deflater f29780b;

    /* renamed from: c, reason: collision with root package name */
    private final DeflaterSink f29781c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f29782d;

    /* renamed from: e, reason: collision with root package name */
    private final CRC32 f29783e = new CRC32();

    public GzipSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.f29780b = deflater;
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink);
        this.f29779a = bufferedSinkBuffer;
        this.f29781c = new DeflaterSink(bufferedSinkBuffer, deflater);
        a();
    }

    private void a() {
        Buffer buffer = this.f29779a.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    private void b() throws IOException {
        this.f29779a.writeIntLe((int) this.f29783e.getValue());
        this.f29779a.writeIntLe((int) this.f29780b.getBytesRead());
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f29782d) {
            return;
        }
        try {
            this.f29781c.a();
            b();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f29780b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f29779a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f29782d = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    public final Deflater deflater() {
        return this.f29780b;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f29781c.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f29779a.timeout();
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j2) throws IOException {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (j2 == 0) {
            return;
        }
        a(buffer, j2);
        this.f29781c.write(buffer, j2);
    }

    private void a(Buffer buffer, long j2) {
        Segment segment = buffer.f29764b;
        while (j2 > 0) {
            int iMin = (int) Math.min(j2, segment.f29842e - segment.f29841d);
            this.f29783e.update(segment.f29840c, segment.f29841d, iMin);
            j2 -= iMin;
            segment = segment.f29845h;
        }
    }
}

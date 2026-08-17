package com.czhj.wire.okio;

import java.io.IOException;
import java.util.zip.Deflater;

/* loaded from: classes3.dex */
public final class DeflaterSink implements Sink {

    /* renamed from: a, reason: collision with root package name */
    private final BufferedSink f29773a;

    /* renamed from: b, reason: collision with root package name */
    private final Deflater f29774b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f29775c;

    public DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f29773a = bufferedSink;
        this.f29774b = deflater;
    }

    public void a() throws IOException {
        this.f29774b.finish();
        a(false);
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f29775c) {
            return;
        }
        try {
            a();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f29774b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f29773a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f29775c = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f29773a.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f29773a.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.f29773a + ")";
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j2) throws IOException {
        Util.checkOffsetAndCount(buffer.f29765c, 0L, j2);
        while (j2 > 0) {
            Segment segment = buffer.f29764b;
            int iMin = (int) Math.min(j2, segment.f29842e - segment.f29841d);
            this.f29774b.setInput(segment.f29840c, segment.f29841d, iMin);
            a(false);
            long j3 = iMin;
            buffer.f29765c -= j3;
            int i2 = segment.f29841d + iMin;
            segment.f29841d = i2;
            if (i2 == segment.f29842e) {
                buffer.f29764b = segment.pop();
                SegmentPool.a(segment);
            }
            j2 -= j3;
        }
    }

    public DeflaterSink(Sink sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
    }

    private void a(boolean z2) throws IOException {
        Segment segmentA;
        Buffer buffer = this.f29773a.buffer();
        while (true) {
            segmentA = buffer.a(1);
            Deflater deflater = this.f29774b;
            byte[] bArr = segmentA.f29840c;
            int i2 = segmentA.f29842e;
            int i3 = 8192 - i2;
            int iDeflate = z2 ? deflater.deflate(bArr, i2, i3, 2) : deflater.deflate(bArr, i2, i3);
            if (iDeflate > 0) {
                segmentA.f29842e += iDeflate;
                buffer.f29765c += iDeflate;
                this.f29773a.emitCompleteSegments();
            } else if (this.f29774b.needsInput()) {
                break;
            }
        }
        if (segmentA.f29841d == segmentA.f29842e) {
            buffer.f29764b = segmentA.pop();
            SegmentPool.a(segmentA);
        }
    }
}

package com.czhj.wire.okio;

import java.io.IOException;

/* loaded from: classes3.dex */
final class PeekSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    private final BufferedSource f29813a;

    /* renamed from: b, reason: collision with root package name */
    private final Buffer f29814b;

    /* renamed from: c, reason: collision with root package name */
    private Segment f29815c;

    /* renamed from: d, reason: collision with root package name */
    private int f29816d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f29817e;

    /* renamed from: f, reason: collision with root package name */
    private long f29818f;

    public PeekSource(BufferedSource bufferedSource) {
        this.f29813a = bufferedSource;
        Buffer buffer = bufferedSource.buffer();
        this.f29814b = buffer;
        Segment segment = buffer.f29764b;
        this.f29815c = segment;
        this.f29816d = segment != null ? segment.f29841d : -1;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29817e = true;
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws IOException {
        Segment segment;
        Segment segment2;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f29817e) {
            throw new IllegalStateException("closed");
        }
        Segment segment3 = this.f29815c;
        if (segment3 != null && (segment3 != (segment2 = this.f29814b.f29764b) || this.f29816d != segment2.f29841d)) {
            throw new IllegalStateException("Peek source is invalid because upstream source was used");
        }
        if (j2 == 0) {
            return 0L;
        }
        if (!this.f29813a.request(this.f29818f + 1)) {
            return -1L;
        }
        if (this.f29815c == null && (segment = this.f29814b.f29764b) != null) {
            this.f29815c = segment;
            this.f29816d = segment.f29841d;
        }
        long jMin = Math.min(j2, this.f29814b.f29765c - this.f29818f);
        this.f29814b.copyTo(buffer, this.f29818f, jMin);
        this.f29818f += jMin;
        return jMin;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f29813a.timeout();
    }
}

package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public final class InflaterSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    private final BufferedSource f29801a;

    /* renamed from: b, reason: collision with root package name */
    private final Inflater f29802b;

    /* renamed from: c, reason: collision with root package name */
    private int f29803c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f29804d;

    public InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f29801a = bufferedSource;
        this.f29802b = inflater;
    }

    private void a() throws IOException {
        int i2 = this.f29803c;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f29802b.getRemaining();
        this.f29803c -= remaining;
        this.f29801a.skip(remaining);
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f29804d) {
            return;
        }
        this.f29802b.end();
        this.f29804d = true;
        this.f29801a.close();
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws DataFormatException, IOException {
        boolean zRefill;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f29804d) {
            throw new IllegalStateException("closed");
        }
        if (j2 == 0) {
            return 0L;
        }
        do {
            zRefill = refill();
            try {
                Segment segmentA = buffer.a(1);
                int iInflate = this.f29802b.inflate(segmentA.f29840c, segmentA.f29842e, (int) Math.min(j2, 8192 - segmentA.f29842e));
                if (iInflate > 0) {
                    segmentA.f29842e += iInflate;
                    long j3 = iInflate;
                    buffer.f29765c += j3;
                    return j3;
                }
                if (!this.f29802b.finished() && !this.f29802b.needsDictionary()) {
                }
                a();
                if (segmentA.f29841d != segmentA.f29842e) {
                    return -1L;
                }
                buffer.f29764b = segmentA.pop();
                SegmentPool.a(segmentA);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!zRefill);
        throw new EOFException("source exhausted prematurely");
    }

    public final boolean refill() throws IOException {
        if (!this.f29802b.needsInput()) {
            return false;
        }
        a();
        if (this.f29802b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f29801a.exhausted()) {
            return true;
        }
        Segment segment = this.f29801a.buffer().f29764b;
        int i2 = segment.f29842e;
        int i3 = segment.f29841d;
        int i4 = i2 - i3;
        this.f29803c = i4;
        this.f29802b.setInput(segment.f29840c, i3, i4);
        return false;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f29801a.timeout();
    }

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }
}

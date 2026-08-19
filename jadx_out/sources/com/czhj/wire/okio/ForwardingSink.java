package com.czhj.wire.okio;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class ForwardingSink implements Sink {

    /* renamed from: a, reason: collision with root package name */
    private final Sink f29776a;

    public ForwardingSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f29776a = sink;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29776a.close();
    }

    public final Sink delegate() {
        return this.f29776a;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f29776a.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f29776a.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f29776a.toString() + ")";
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j2) throws IOException {
        this.f29776a.write(buffer, j2);
    }
}

package com.czhj.wire.okio;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class ForwardingSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    private final Source f29777a;

    public ForwardingSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f29777a = source;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29777a.close();
    }

    public final Source delegate() {
        return this.f29777a;
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws IOException {
        return this.f29777a.read(buffer, j2);
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f29777a.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f29777a.toString() + ")";
    }
}

package com.czhj.wire.okio;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class Pipe {

    /* renamed from: a, reason: collision with root package name */
    final long f29819a;

    /* renamed from: c, reason: collision with root package name */
    boolean f29821c;

    /* renamed from: d, reason: collision with root package name */
    boolean f29822d;

    /* renamed from: g, reason: collision with root package name */
    private Sink f29825g;

    /* renamed from: b, reason: collision with root package name */
    final Buffer f29820b = new Buffer();

    /* renamed from: e, reason: collision with root package name */
    private final Sink f29823e = new PipeSink();

    /* renamed from: f, reason: collision with root package name */
    private final Source f29824f = new PipeSource();

    public final class PipeSink implements Sink {

        /* renamed from: a, reason: collision with root package name */
        final PushableTimeout f29826a = new PushableTimeout();

        public PipeSink() {
        }

        @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Sink sink;
            synchronized (Pipe.this.f29820b) {
                try {
                    Pipe pipe = Pipe.this;
                    if (pipe.f29821c) {
                        return;
                    }
                    if (pipe.f29825g != null) {
                        sink = Pipe.this.f29825g;
                    } else {
                        Pipe pipe2 = Pipe.this;
                        if (pipe2.f29822d && pipe2.f29820b.size() > 0) {
                            throw new IOException("source is closed");
                        }
                        Pipe pipe3 = Pipe.this;
                        pipe3.f29821c = true;
                        pipe3.f29820b.notifyAll();
                        sink = null;
                    }
                    if (sink != null) {
                        this.f29826a.a(sink.timeout());
                        try {
                            sink.close();
                        } finally {
                            this.f29826a.a();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.czhj.wire.okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Sink sink;
            synchronized (Pipe.this.f29820b) {
                try {
                    Pipe pipe = Pipe.this;
                    if (pipe.f29821c) {
                        throw new IllegalStateException("closed");
                    }
                    if (pipe.f29825g != null) {
                        sink = Pipe.this.f29825g;
                    } else {
                        Pipe pipe2 = Pipe.this;
                        if (pipe2.f29822d && pipe2.f29820b.size() > 0) {
                            throw new IOException("source is closed");
                        }
                        sink = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (sink != null) {
                this.f29826a.a(sink.timeout());
                try {
                    sink.flush();
                } finally {
                    this.f29826a.a();
                }
            }
        }

        @Override // com.czhj.wire.okio.Sink
        public Timeout timeout() {
            return this.f29826a;
        }

        @Override // com.czhj.wire.okio.Sink
        public void write(Buffer buffer, long j2) throws IOException {
            Sink sink;
            synchronized (Pipe.this.f29820b) {
                try {
                    if (!Pipe.this.f29821c) {
                        while (true) {
                            if (j2 <= 0) {
                                sink = null;
                                break;
                            }
                            if (Pipe.this.f29825g != null) {
                                sink = Pipe.this.f29825g;
                                break;
                            }
                            Pipe pipe = Pipe.this;
                            if (pipe.f29822d) {
                                throw new IOException("source is closed");
                            }
                            long size = pipe.f29819a - pipe.f29820b.size();
                            if (size == 0) {
                                this.f29826a.waitUntilNotified(Pipe.this.f29820b);
                            } else {
                                long jMin = Math.min(size, j2);
                                Pipe.this.f29820b.write(buffer, jMin);
                                j2 -= jMin;
                                Pipe.this.f29820b.notifyAll();
                            }
                        }
                    } else {
                        throw new IllegalStateException("closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (sink != null) {
                this.f29826a.a(sink.timeout());
                try {
                    sink.write(buffer, j2);
                } finally {
                    this.f29826a.a();
                }
            }
        }
    }

    public final class PipeSource implements Source {

        /* renamed from: a, reason: collision with root package name */
        final Timeout f29828a = new Timeout();

        public PipeSource() {
        }

        @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Pipe.this.f29820b) {
                Pipe pipe = Pipe.this;
                pipe.f29822d = true;
                pipe.f29820b.notifyAll();
            }
        }

        @Override // com.czhj.wire.okio.Source
        public long read(Buffer buffer, long j2) throws IOException {
            synchronized (Pipe.this.f29820b) {
                try {
                    if (Pipe.this.f29822d) {
                        throw new IllegalStateException("closed");
                    }
                    while (Pipe.this.f29820b.size() == 0) {
                        Pipe pipe = Pipe.this;
                        if (pipe.f29821c) {
                            return -1L;
                        }
                        this.f29828a.waitUntilNotified(pipe.f29820b);
                    }
                    long j3 = Pipe.this.f29820b.read(buffer, j2);
                    Pipe.this.f29820b.notifyAll();
                    return j3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.czhj.wire.okio.Source
        public Timeout timeout() {
            return this.f29828a;
        }
    }

    public Pipe(long j2) {
        if (j2 >= 1) {
            this.f29819a = j2;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j2);
    }

    public void fold(Sink sink) throws IOException {
        boolean z2;
        Buffer buffer;
        while (true) {
            synchronized (this.f29820b) {
                try {
                    if (this.f29825g != null) {
                        throw new IllegalStateException("sink already folded");
                    }
                    if (this.f29820b.exhausted()) {
                        this.f29822d = true;
                        this.f29825g = sink;
                        return;
                    } else {
                        z2 = this.f29821c;
                        buffer = new Buffer();
                        Buffer buffer2 = this.f29820b;
                        buffer.write(buffer2, buffer2.f29765c);
                        this.f29820b.notifyAll();
                    }
                } finally {
                }
            }
            try {
                sink.write(buffer, buffer.f29765c);
                if (z2) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.f29820b) {
                    this.f29822d = true;
                    this.f29820b.notifyAll();
                    throw th;
                }
            }
        }
    }

    public final Sink sink() {
        return this.f29823e;
    }

    public final Source source() {
        return this.f29824f;
    }
}

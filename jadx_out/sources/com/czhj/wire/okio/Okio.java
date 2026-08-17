package com.czhj.wire.okio;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Okio {

    /* renamed from: a, reason: collision with root package name */
    static final Logger f29805a = Logger.getLogger(Okio.class.getName());

    private Okio() {
    }

    private static AsyncTimeout a(final Socket socket) {
        return new AsyncTimeout() { // from class: com.czhj.wire.okio.Okio.4
            @Override // com.czhj.wire.okio.AsyncTimeout
            public IOException newTimeoutException(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.czhj.wire.okio.AsyncTimeout
            public void timedOut() throws IOException {
                Level level;
                StringBuilder sb;
                Logger logger;
                Exception exc;
                try {
                    socket.close();
                } catch (AssertionError e2) {
                    if (!Okio.a(e2)) {
                        throw e2;
                    }
                    Logger logger2 = Okio.f29805a;
                    level = Level.WARNING;
                    sb = new StringBuilder();
                    exc = e2;
                    logger = logger2;
                    sb.append("Failed to close timed out socket ");
                    sb.append(socket);
                    logger.log(level, sb.toString(), (Throwable) exc);
                } catch (Exception e3) {
                    Logger logger3 = Okio.f29805a;
                    level = Level.WARNING;
                    sb = new StringBuilder();
                    exc = e3;
                    logger = logger3;
                    sb.append("Failed to close timed out socket ");
                    sb.append(socket);
                    logger.log(level, sb.toString(), (Throwable) exc);
                }
            }
        };
    }

    public static Sink appendingSink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Sink blackhole() {
        return new Sink() { // from class: com.czhj.wire.okio.Okio.3
            @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }

            @Override // com.czhj.wire.okio.Sink, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // com.czhj.wire.okio.Sink
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // com.czhj.wire.okio.Sink
            public void write(Buffer buffer, long j2) throws IOException {
                buffer.skip(j2);
            }
        };
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static Sink sink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Source source(File file) throws FileNotFoundException {
        if (file != null) {
            return source(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    private static Sink a(final OutputStream outputStream, final Timeout timeout) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (timeout != null) {
            return new Sink() { // from class: com.czhj.wire.okio.Okio.1
                @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.czhj.wire.okio.Sink, java.io.Flushable
                public void flush() throws IOException {
                    outputStream.flush();
                }

                @Override // com.czhj.wire.okio.Sink
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }

                @Override // com.czhj.wire.okio.Sink
                public void write(Buffer buffer, long j2) throws IOException {
                    Util.checkOffsetAndCount(buffer.f29765c, 0L, j2);
                    while (j2 > 0) {
                        timeout.throwIfReached();
                        Segment segment = buffer.f29764b;
                        int iMin = (int) Math.min(j2, segment.f29842e - segment.f29841d);
                        outputStream.write(segment.f29840c, segment.f29841d, iMin);
                        int i2 = segment.f29841d + iMin;
                        segment.f29841d = i2;
                        long j3 = iMin;
                        j2 -= j3;
                        buffer.f29765c -= j3;
                        if (i2 == segment.f29842e) {
                            buffer.f29764b = segment.pop();
                            SegmentPool.a(segment);
                        }
                    }
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    public static Sink sink(OutputStream outputStream) {
        return a(outputStream, new Timeout());
    }

    public static Source source(InputStream inputStream) {
        return a(inputStream, new Timeout());
    }

    private static Source a(final InputStream inputStream, final Timeout timeout) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (timeout != null) {
            return new Source() { // from class: com.czhj.wire.okio.Okio.2
                @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    inputStream.close();
                }

                @Override // com.czhj.wire.okio.Source
                public long read(Buffer buffer, long j2) throws IOException {
                    if (j2 < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j2);
                    }
                    if (j2 == 0) {
                        return 0L;
                    }
                    try {
                        timeout.throwIfReached();
                        Segment segmentA = buffer.a(1);
                        int i2 = inputStream.read(segmentA.f29840c, segmentA.f29842e, (int) Math.min(j2, 8192 - segmentA.f29842e));
                        if (i2 != -1) {
                            segmentA.f29842e += i2;
                            long j3 = i2;
                            buffer.f29765c += j3;
                            return j3;
                        }
                        if (segmentA.f29841d != segmentA.f29842e) {
                            return -1L;
                        }
                        buffer.f29764b = segmentA.pop();
                        SegmentPool.a(segmentA);
                        return -1L;
                    } catch (AssertionError e2) {
                        if (Okio.a(e2)) {
                            throw new IOException(e2);
                        }
                        throw e2;
                    }
                }

                @Override // com.czhj.wire.okio.Source
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static Sink sink(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        AsyncTimeout asyncTimeoutA = a(socket);
        return asyncTimeoutA.sink(a(socket.getOutputStream(), asyncTimeoutA));
    }

    public static Source source(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        AsyncTimeout asyncTimeoutA = a(socket);
        return asyncTimeoutA.source(a(socket.getInputStream(), asyncTimeoutA));
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static Sink sink(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return sink(Files.newOutputStream(path, openOptionArr));
            }
            throw new IOException("no support os version");
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }

    public static Source source(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return source(Files.newInputStream(path, openOptionArr));
            }
            throw new IOException("no support os version");
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }
}

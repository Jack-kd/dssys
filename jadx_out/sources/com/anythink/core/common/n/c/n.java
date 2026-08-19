package com.anythink.core.common.n.c;

import android.os.Build;
import com.anythink.core.common.n.c.C1118a.AnonymousClass1;
import com.anythink.core.common.n.c.C1118a.AnonymousClass2;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
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

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    static final Logger f7104a = Logger.getLogger(n.class.getName());

    private n() {
    }

    public static e a(w wVar) {
        return new r(wVar);
    }

    public static v b(File file) {
        if (file != null) {
            return a(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static v c(File file) {
        if (file != null) {
            return a(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static d a(v vVar) {
        return new q(vVar);
    }

    private static v a(OutputStream outputStream) {
        return a(outputStream, new x());
    }

    private static v b(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            return a(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    private static C1118a c(final Socket socket) {
        return new C1118a() { // from class: com.anythink.core.common.n.c.n.4
            @Override // com.anythink.core.common.n.c.C1118a
            public final IOException a(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // com.anythink.core.common.n.c.C1118a
            public final void a() throws IOException {
                try {
                    socket.close();
                } catch (AssertionError e2) {
                    if (n.a(e2)) {
                        n.f7104a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                        return;
                    }
                    throw e2;
                } catch (Exception e3) {
                    n.f7104a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
                }
            }
        };
    }

    private static v a(final OutputStream outputStream, final x xVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (xVar != null) {
            return new v() { // from class: com.anythink.core.common.n.c.n.1
                @Override // com.anythink.core.common.n.c.v
                public final void a(c cVar, long j2) throws IOException {
                    y.a(cVar.f7060c, 0L, j2);
                    while (j2 > 0) {
                        xVar.g();
                        s sVar = cVar.f7059b;
                        int iMin = (int) Math.min(j2, sVar.f7130e - sVar.f7129d);
                        outputStream.write(sVar.f7128c, sVar.f7129d, iMin);
                        int i2 = sVar.f7129d + iMin;
                        sVar.f7129d = i2;
                        long j3 = iMin;
                        j2 -= j3;
                        cVar.f7060c -= j3;
                        if (i2 == sVar.f7130e) {
                            cVar.f7059b = sVar.c();
                            t.a(sVar);
                        }
                    }
                }

                @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.anythink.core.common.n.c.v, java.io.Flushable
                public final void flush() throws IOException {
                    outputStream.flush();
                }

                public final String toString() {
                    return "sink(" + outputStream + ")";
                }

                @Override // com.anythink.core.common.n.c.v
                public final x a() {
                    return xVar;
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static w b(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                C1118a c1118aC = c(socket);
                return c1118aC.new AnonymousClass2(a(socket.getInputStream(), c1118aC));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static v a(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                C1118a c1118aC = c(socket);
                return c1118aC.new AnonymousClass1(a(socket.getOutputStream(), c1118aC));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static w a(InputStream inputStream) {
        return a(inputStream, new x());
    }

    private static w a(final InputStream inputStream, final x xVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (xVar != null) {
            return new w() { // from class: com.anythink.core.common.n.c.n.2
                @Override // com.anythink.core.common.n.c.w
                public final x a() {
                    return xVar;
                }

                @Override // com.anythink.core.common.n.c.w
                public final long a_(c cVar, long j2) throws IOException {
                    if (j2 < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
                    }
                    if (j2 == 0) {
                        return 0L;
                    }
                    try {
                        xVar.g();
                        s sVarG = cVar.g(1);
                        int i2 = inputStream.read(sVarG.f7128c, sVarG.f7130e, (int) Math.min(j2, 8192 - sVarG.f7130e));
                        if (i2 == -1) {
                            return -1L;
                        }
                        sVarG.f7130e += i2;
                        long j3 = i2;
                        cVar.f7060c += j3;
                        return j3;
                    } catch (AssertionError e2) {
                        if (n.a(e2)) {
                            throw new IOException(e2);
                        }
                        throw e2;
                    }
                }

                @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    inputStream.close();
                }

                public final String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static w a(File file) {
        if (file != null) {
            return a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    private static w a(Path path, OpenOption... openOptionArr) {
        if (path != null) {
            if (Build.VERSION.SDK_INT >= 26) {
                return a(Files.newInputStream(path, openOptionArr));
            }
            return a(new FileInputStream(path.toFile()));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static v a() {
        return new v() { // from class: com.anythink.core.common.n.c.n.3
            @Override // com.anythink.core.common.n.c.v
            public final void a(c cVar, long j2) throws EOFException {
                cVar.i(j2);
            }

            @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // com.anythink.core.common.n.c.v, java.io.Flushable
            public final void flush() {
            }

            @Override // com.anythink.core.common.n.c.v
            public final x a() {
                return x.f7140c;
            }
        };
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}

package com.byazt.raq;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@com.byazt.kj.hp(hp = {0, 1, 1165, 19})
/* loaded from: classes3.dex */
public final class jl {
    public static final Logger hp = Logger.getLogger(jl.class.getName());

    private jl() {
    }

    public static w hp(ec ecVar) {
        return new k(ecVar);
    }

    public static vv jx(File file) throws FileNotFoundException {
        if (file != null) {
            return hp(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static vv l(File file) throws FileNotFoundException {
        if (file != null) {
            return hp(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static j hp(vv vvVar) {
        return new zy(vvVar);
    }

    public static vv hp(OutputStream outputStream) {
        return hp(outputStream, new sz());
    }

    private static hp jx(final Socket socket) {
        return new hp() { // from class: com.byazt.raq.jl.4
            @Override // com.byazt.raq.hp
            public IOException l(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // com.byazt.raq.hp
            public void m_() throws IOException {
                try {
                    socket.close();
                } catch (AssertionError e2) {
                    if (!jl.hp(e2)) {
                        throw e2;
                    }
                    jl.hp.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                } catch (Exception e3) {
                    jl.hp.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
                }
            }
        };
    }

    public static ec l(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                hp hpVarJx = jx(socket);
                return hpVarJx.hp(hp(socket.getInputStream(), hpVarJx));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    private static vv hp(final OutputStream outputStream, final sz szVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (szVar != null) {
            return new vv() { // from class: com.byazt.raq.jl.1
                @Override // com.byazt.raq.vv
                public void a_(jx jxVar, long j2) throws IOException {
                    try {
                        n.hp(jxVar.f25110l, 0L, j2);
                        long j3 = j2;
                        while (j3 > 0) {
                            szVar.eb();
                            v vVar = jxVar.hp;
                            int iMin = (int) Math.min(j3, vVar.jx - vVar.f25118l);
                            outputStream.write(vVar.hp, vVar.f25118l, iMin);
                            int i2 = vVar.f25118l + iMin;
                            vVar.f25118l = i2;
                            long j4 = iMin;
                            j3 -= j4;
                            jxVar.f25110l -= j4;
                            if (i2 == vVar.jx) {
                                jxVar.hp = vVar.l();
                                u.hp(vVar);
                            }
                        }
                    } catch (IOException | Exception unused) {
                    }
                }

                @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.byazt.raq.vv, java.io.Flushable
                public void flush() throws IOException {
                    outputStream.flush();
                }

                @Override // com.byazt.raq.vv
                public sz hp() {
                    return szVar;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static vv hp(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                hp hpVarJx = jx(socket);
                return hpVarJx.hp(hp(socket.getOutputStream(), hpVarJx));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static ec hp(InputStream inputStream) {
        return hp(inputStream, new sz());
    }

    private static ec hp(final InputStream inputStream, final sz szVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (szVar != null) {
            return new ec() { // from class: com.byazt.raq.jl.2
                @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    inputStream.close();
                }

                @Override // com.byazt.raq.ec
                public long hp(jx jxVar, long j2) throws IOException {
                    if (j2 < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
                    }
                    if (j2 == 0) {
                        return 0L;
                    }
                    try {
                        szVar.eb();
                        v vVarW = jxVar.w(1);
                        int i2 = inputStream.read(vVarW.hp, vVarW.jx, (int) Math.min(j2, 8192 - vVarW.jx));
                        if (i2 == -1) {
                            return -1L;
                        }
                        vVarW.jx += i2;
                        long j3 = i2;
                        jxVar.f25110l += j3;
                        return j3;
                    } catch (AssertionError e2) {
                        if (jl.hp(e2)) {
                            throw new IOException(e2);
                        }
                        throw e2;
                    } catch (Throwable th) {
                        throw new IOException(th.getMessage());
                    }
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }

                @Override // com.byazt.raq.ec
                public sz hp() {
                    return szVar;
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static ec hp(File file) throws FileNotFoundException {
        if (file != null) {
            return hp(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static vv hp() {
        return new vv() { // from class: com.byazt.raq.jl.3
            @Override // com.byazt.raq.vv
            public void a_(jx jxVar, long j2) throws IOException {
                jxVar.s(j2);
            }

            @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }

            @Override // com.byazt.raq.vv, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // com.byazt.raq.vv
            public sz hp() {
                return sz.jx;
            }
        };
    }

    public static boolean hp(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}

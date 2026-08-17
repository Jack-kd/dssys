package com.beizi.fusion;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes2.dex */
public class u8 implements oa {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static u8 f16450a = new u8();
    }

    private static void a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                rm.a(e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable, java.io.OutputStream, java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    public static byte[] c(byte[] bArr) throws Throwable {
        ?? gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (IOException e2) {
            e = e2;
            byteArrayOutputStream = null;
            gZIPOutputStream = 0;
        } catch (Throwable th) {
            th = th;
            gZIPOutputStream = 0;
            byteArrayOutputStream = byteArrayOutputStream2;
            byteArrayOutputStream2 = gZIPOutputStream;
            a(byteArrayOutputStream2);
            a(byteArrayOutputStream);
            throw th;
        }
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        } catch (IOException e3) {
            e = e3;
            gZIPOutputStream = 0;
        } catch (Throwable th2) {
            th = th2;
            a(byteArrayOutputStream2);
            a(byteArrayOutputStream);
            throw th;
        }
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            a((Closeable) gZIPOutputStream);
            a(byteArrayOutputStream);
            return byteArray;
        } catch (IOException e4) {
            e = e4;
            try {
                rm.a(e);
                a((Closeable) gZIPOutputStream);
                a(byteArrayOutputStream);
                return null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream2 = byteArrayOutputStream;
                gZIPOutputStream = gZIPOutputStream;
                byteArrayOutputStream = byteArrayOutputStream2;
                byteArrayOutputStream2 = gZIPOutputStream;
                a(byteArrayOutputStream2);
                a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream2 = gZIPOutputStream;
            a(byteArrayOutputStream2);
            a(byteArrayOutputStream);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.ByteArrayInputStream, java.io.Closeable, java.io.InputStream] */
    public static byte[] d(byte[] bArr) throws Throwable {
        GZIPInputStream gZIPInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPInputStream gZIPInputStream2;
        ByteArrayOutputStream byteArrayOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream3;
        ByteArrayOutputStream byteArrayOutputStream4;
        Throwable th;
        ?? byteArrayInputStream;
        ByteArrayOutputStream byteArrayOutputStream5;
        ByteArrayOutputStream byteArrayOutputStream6 = null;
        try {
            byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    gZIPInputStream2 = new GZIPInputStream(byteArrayInputStream);
                } catch (IOException e2) {
                    e = e2;
                    gZIPInputStream2 = null;
                    byteArrayOutputStream3 = byteArrayInputStream;
                } catch (Throwable th2) {
                    byteArrayOutputStream5 = byteArrayOutputStream2;
                    th = th2;
                    gZIPInputStream2 = null;
                }
            } catch (IOException e3) {
                e = e3;
                gZIPInputStream2 = null;
                byteArrayOutputStream3 = null;
            } catch (Throwable th3) {
                byteArrayOutputStream4 = byteArrayOutputStream2;
                th = th3;
                gZIPInputStream2 = null;
            }
            try {
                byte[] bArr2 = new byte[2048];
                while (true) {
                    int i2 = gZIPInputStream2.read(bArr2);
                    if (i2 < 0) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        a(gZIPInputStream2);
                        a((Closeable) byteArrayInputStream);
                        a(byteArrayOutputStream2);
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr2, 0, i2);
                }
            } catch (IOException e4) {
                e = e4;
                byteArrayOutputStream3 = byteArrayInputStream;
                try {
                    rm.a(e);
                    a(gZIPInputStream2);
                    a(byteArrayOutputStream3);
                    a(byteArrayOutputStream2);
                    return null;
                } catch (Throwable th4) {
                    ByteArrayOutputStream byteArrayOutputStream7 = byteArrayOutputStream2;
                    gZIPInputStream = gZIPInputStream2;
                    th = th4;
                    byteArrayOutputStream6 = byteArrayOutputStream7;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    GZIPInputStream gZIPInputStream3 = gZIPInputStream;
                    th = th;
                    gZIPInputStream2 = gZIPInputStream3;
                    ByteArrayOutputStream byteArrayOutputStream8 = byteArrayOutputStream;
                    byteArrayOutputStream4 = byteArrayOutputStream6;
                    byteArrayOutputStream6 = byteArrayOutputStream8;
                    a(gZIPInputStream2);
                    a(byteArrayOutputStream6);
                    a(byteArrayOutputStream4);
                    throw th;
                }
            } catch (Throwable th5) {
                byteArrayOutputStream5 = byteArrayOutputStream2;
                th = th5;
                byteArrayOutputStream6 = byteArrayInputStream;
                byteArrayOutputStream4 = byteArrayOutputStream5;
                a(gZIPInputStream2);
                a(byteArrayOutputStream6);
                a(byteArrayOutputStream4);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            gZIPInputStream2 = null;
            byteArrayOutputStream2 = null;
            byteArrayOutputStream3 = null;
        } catch (Throwable th6) {
            th = th6;
            gZIPInputStream = null;
            byteArrayOutputStream = null;
            GZIPInputStream gZIPInputStream32 = gZIPInputStream;
            th = th;
            gZIPInputStream2 = gZIPInputStream32;
            ByteArrayOutputStream byteArrayOutputStream82 = byteArrayOutputStream;
            byteArrayOutputStream4 = byteArrayOutputStream6;
            byteArrayOutputStream6 = byteArrayOutputStream82;
            a(gZIPInputStream2);
            a(byteArrayOutputStream6);
            a(byteArrayOutputStream4);
            throw th;
        }
    }

    @Override // com.beizi.fusion.oa
    public byte[] b(byte[] bArr) {
        try {
            return c(bArr);
        } catch (IOException e2) {
            rm.a(e2);
            return null;
        }
    }

    private u8() {
        if (b.f16450a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static u8 a() {
        return b.f16450a;
    }

    @Override // com.beizi.fusion.oa
    public byte[] a(byte[] bArr) {
        try {
            return d(bArr);
        } catch (IOException e2) {
            rm.a(e2);
            return null;
        }
    }
}

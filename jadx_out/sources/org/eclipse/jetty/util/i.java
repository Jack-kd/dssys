package org.eclipse.jetty.util;

import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;

/* loaded from: classes5.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final R1.c f52665a = R1.b.a(i.class);

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f52666b = {ek.f49293k, 10};

    /* renamed from: c, reason: collision with root package name */
    public static int f52667c = 65536;

    /* renamed from: d, reason: collision with root package name */
    public static c f52668d;

    /* renamed from: e, reason: collision with root package name */
    public static b f52669e;

    /* renamed from: f, reason: collision with root package name */
    public static d f52670f;

    /* renamed from: g, reason: collision with root package name */
    public static PrintWriter f52671g;

    public static class b extends InputStream {
        public b() {
        }

        @Override // java.io.InputStream
        public int read() {
            return -1;
        }
    }

    public static class c extends OutputStream {
        public c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
        }
    }

    public static class d extends Writer {
        public d() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i2) {
        }

        @Override // java.io.Writer
        public void write(String str) {
        }

        @Override // java.io.Writer
        public void write(String str, int i2, int i3) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
        }
    }

    static {
        f52668d = new c();
        f52669e = new b();
        f52670f = new d();
        f52671g = new PrintWriter(f52670f);
    }

    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                f52665a.h(e2);
            }
        }
    }

    public static void b(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                f52665a.h(e2);
            }
        }
    }

    public static void c(InputStream inputStream, OutputStream outputStream) throws IOException {
        d(inputStream, outputStream, -1L);
    }

    public static void d(InputStream inputStream, OutputStream outputStream, long j2) throws IOException {
        byte[] bArr = new byte[f52667c];
        if (j2 >= 0) {
            while (j2 > 0) {
                int i2 = f52667c;
                if (j2 < i2) {
                    i2 = (int) j2;
                }
                int i3 = inputStream.read(bArr, 0, i2);
                if (i3 == -1) {
                    return;
                }
                j2 -= i3;
                outputStream.write(bArr, 0, i3);
            }
            return;
        }
        while (true) {
            int i4 = inputStream.read(bArr, 0, f52667c);
            if (i4 < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i4);
            }
        }
    }

    public static boolean delete(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i2 = 0; fileArrListFiles != null && i2 < fileArrListFiles.length; i2++) {
                delete(fileArrListFiles[i2]);
            }
        }
        return file.delete();
    }

    public static void e(Reader reader, Writer writer, long j2) throws IOException {
        int i2;
        char[] cArr = new char[f52667c];
        if (j2 >= 0) {
            while (j2 > 0) {
                int i3 = f52667c;
                int i4 = j2 < ((long) i3) ? reader.read(cArr, 0, (int) j2) : reader.read(cArr, 0, i3);
                if (i4 == -1) {
                    return;
                }
                j2 -= i4;
                writer.write(cArr, 0, i4);
            }
            return;
        }
        if (writer instanceof PrintWriter) {
            PrintWriter printWriter = (PrintWriter) writer;
            while (!printWriter.checkError() && (i2 = reader.read(cArr, 0, f52667c)) != -1) {
                writer.write(cArr, 0, i2);
            }
            return;
        }
        while (true) {
            int i5 = reader.read(cArr, 0, f52667c);
            if (i5 == -1) {
                return;
            } else {
                writer.write(cArr, 0, i5);
            }
        }
    }

    public static InputStream f() {
        return f52669e;
    }
}

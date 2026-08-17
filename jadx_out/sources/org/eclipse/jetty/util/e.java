package org.eclipse.jetty.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* loaded from: classes5.dex */
public class e extends Writer {

    /* renamed from: b, reason: collision with root package name */
    public byte[] f52643b;

    /* renamed from: c, reason: collision with root package name */
    public int f52644c;

    /* renamed from: d, reason: collision with root package name */
    public f f52645d = null;

    /* renamed from: e, reason: collision with root package name */
    public OutputStreamWriter f52646e = null;

    /* renamed from: f, reason: collision with root package name */
    public boolean f52647f = false;

    public e(int i2) {
        this.f52643b = new byte[i2];
    }

    public void A(char c2) throws IOException {
        c(1);
        if (c2 < 0 || c2 > 127) {
            B(new char[]{c2}, 0, 1);
            return;
        }
        byte[] bArr = this.f52643b;
        int i2 = this.f52644c;
        this.f52644c = i2 + 1;
        bArr[i2] = (byte) c2;
    }

    public final void B(char[] cArr, int i2, int i3) throws IOException {
        f fVar = this.f52645d;
        if (fVar == null) {
            this.f52645d = new f(i3 * 2);
            this.f52646e = new OutputStreamWriter(this.f52645d, "ISO-8859-1");
        } else {
            fVar.reset();
        }
        this.f52646e.write(cArr, i2, i3);
        this.f52646e.flush();
        c(this.f52645d.getCount());
        System.arraycopy(this.f52645d.b(), 0, this.f52643b, this.f52644c, this.f52645d.getCount());
        this.f52644c += this.f52645d.getCount();
    }

    public void C(OutputStream outputStream) throws IOException {
        outputStream.write(this.f52643b, 0, this.f52644c);
    }

    public void b() {
        this.f52643b = null;
    }

    public void c(int i2) throws IOException {
        int i3 = this.f52644c;
        int i4 = i3 + i2;
        byte[] bArr = this.f52643b;
        if (i4 > bArr.length) {
            if (this.f52647f) {
                throw new IOException("Buffer overflow: " + this.f52643b.length);
            }
            byte[] bArr2 = new byte[((bArr.length + i2) * 4) / 3];
            System.arraycopy(bArr, 0, bArr2, 0, i3);
            this.f52643b = bArr2;
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        c(cArr.length);
        for (int i2 = 0; i2 < cArr.length; i2++) {
            char c2 = cArr[i2];
            if (c2 < 0 || c2 > 127) {
                B(cArr, i2, cArr.length - i2);
                return;
            }
            byte[] bArr = this.f52643b;
            int i3 = this.f52644c;
            this.f52644c = i3 + 1;
            bArr[i3] = (byte) c2;
        }
    }

    public int z() {
        return this.f52644c;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i3) throws IOException {
        c(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            char c2 = cArr[i5];
            if (c2 >= 0 && c2 <= 127) {
                byte[] bArr = this.f52643b;
                int i6 = this.f52644c;
                this.f52644c = i6 + 1;
                bArr[i6] = (byte) c2;
            } else {
                B(cArr, i5, i3 - i4);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        if (str == null) {
            write("null", 0, 4);
            return;
        }
        int length = str.length();
        c(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this.f52643b;
                int i3 = this.f52644c;
                this.f52644c = i3 + 1;
                bArr[i3] = (byte) cCharAt;
            } else {
                B(str.toCharArray(), i2, length - i2);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i2, int i3) throws IOException {
        c(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            char cCharAt = str.charAt(i5);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this.f52643b;
                int i6 = this.f52644c;
                this.f52644c = i6 + 1;
                bArr[i6] = (byte) cCharAt;
            } else {
                B(str.toCharArray(), i5, i3 - i4);
                return;
            }
        }
    }
}

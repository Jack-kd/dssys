package com.byazt.vn;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1312, 45})
/* loaded from: classes3.dex */
public abstract class e extends FilterInputStream {
    public e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e2) {
            hp(e2);
            return 0;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
        } catch (IOException e2) {
            hp(e2);
        }
    }

    public void hp(int i2) throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        ((FilterInputStream) this).in.mark(i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        try {
            int i2 = ((FilterInputStream) this).in.read();
            hp(i2 != -1 ? 1 : -1);
            return i2;
        } catch (IOException e2) {
            hp(e2);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e2) {
            hp(e2);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        try {
            return ((FilterInputStream) this).in.skip(j2);
        } catch (IOException e2) {
            hp(e2);
            return 0L;
        }
    }

    public void hp(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int i2 = ((FilterInputStream) this).in.read(bArr);
            hp(i2);
            return i2;
        } catch (IOException e2) {
            hp(e2);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        try {
            int i4 = ((FilterInputStream) this).in.read(bArr, i2, i3);
            hp(i4);
            return i4;
        } catch (IOException e2) {
            hp(e2);
            return -1;
        }
    }
}

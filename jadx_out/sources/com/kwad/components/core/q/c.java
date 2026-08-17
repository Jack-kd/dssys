package com.kwad.components.core.q;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class c extends InputStream {
    private int akA;
    private volatile float akC;
    private volatile long akD;
    private InputStream akz;
    private int akw = -1;
    private int akx = 10000;
    private long aky = -1;
    private long akB = -1;
    private int akE = 20480;

    public c(@NonNull InputStream inputStream, int i2) {
        i2 = i2 < 20480 ? 20480 : i2;
        this.akz = inputStream;
        this.akC = i2 / 1000.0f;
    }

    @WorkerThread
    private static void T(long j2) throws InterruptedException {
        try {
            Thread.sleep(j2);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    private static long g(long j2, long j3) {
        if (j2 <= 0) {
            return 0L;
        }
        if (j3 <= 0) {
            return -1L;
        }
        return j2 / j3;
    }

    private void wk() {
        this.akw = 0;
        this.aky = System.currentTimeMillis();
    }

    private void wl() throws InterruptedException {
        if (this.akw < this.akx) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - this.aky;
        float f2 = this.akw / this.akC;
        this.akD = g(this.akA, jCurrentTimeMillis - this.akB);
        float f3 = j2;
        if (f2 > f3) {
            T((long) (f2 - f3));
        }
        wk();
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.akz.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.akz.close();
        b.a(this);
        this.akB = -1L;
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i2) {
        this.akz.mark(i2);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.akz.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws InterruptedException, IOException {
        if (this.akB <= 0) {
            this.akB = System.currentTimeMillis();
        }
        this.akA++;
        if (!b.aku || !b.akt) {
            return this.akz.read();
        }
        if (this.akw < 0) {
            wk();
        }
        int i2 = this.akz.read();
        this.akw++;
        wl();
        return i2;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.akz.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j2) {
        return this.akz.skip(j2);
    }

    public final long wj() {
        return this.akD;
    }
}

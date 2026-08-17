package com.kwad.sdk.pngencrypt;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class a implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int bjq;
    private boolean bjr;
    private long bjs;
    private byte[] buf;
    private boolean eof;
    private int offset;
    private InputStream stream;

    public a(InputStream inputStream) {
        this(inputStream, 16384);
    }

    private void SC() throws IOException {
        if (this.bjq > 0 || this.eof) {
            return;
        }
        try {
            this.offset = 0;
            int i2 = this.stream.read(this.buf);
            this.bjq = i2;
            if (i2 == 0) {
                new PngjException("This should not happen: stream.read(buf) returned 0");
            } else if (i2 < 0) {
                close();
            } else {
                this.bjs += i2;
            }
        } catch (IOException e2) {
            new PngjException(e2);
        }
    }

    public final int a(f fVar) {
        return a(fVar, Integer.MAX_VALUE);
    }

    public final int b(f fVar, int i2) throws IOException {
        int i3 = 36;
        while (i3 > 0) {
            int iA = a(fVar, i3);
            if (iA <= 0) {
                return iA;
            }
            i3 -= iA;
        }
        return 36;
    }

    public final void ch(boolean z2) {
        this.bjr = z2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.eof = true;
        this.buf = null;
        this.bjq = 0;
        this.offset = 0;
        InputStream inputStream = this.stream;
        if (inputStream != null && this.bjr) {
            com.kwad.sdk.pngencrypt.a.a.closeQuietly(inputStream);
        }
        this.stream = null;
    }

    private a(InputStream inputStream, int i2) {
        this.eof = false;
        this.bjr = true;
        this.bjs = 0L;
        this.stream = inputStream;
        this.buf = new byte[16384];
    }

    private int a(f fVar, int i2) throws IOException {
        SC();
        if (i2 <= 0 || i2 >= this.bjq) {
            i2 = this.bjq;
        }
        if (i2 <= 0) {
            if (!this.eof) {
                new PngjException("This should not happen");
            }
            return fVar.isDone() ? -1 : 0;
        }
        int iA = fVar.a(this.buf, this.offset, i2);
        if (iA > 0) {
            this.offset += iA;
            this.bjq -= iA;
        }
        if (iA > 0) {
            return iA;
        }
        if (!fVar.isDone()) {
            new PngjException("This should not happen!");
        }
        return -1;
    }
}

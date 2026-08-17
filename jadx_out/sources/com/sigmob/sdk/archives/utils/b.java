package com.sigmob.sdk.archives.utils;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class b extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    private long f35484a;

    public b(InputStream inputStream) {
        super(inputStream);
    }

    public long a() {
        return this.f35484a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2 = ((FilterInputStream) this).in.read();
        if (i2 >= 0) {
            a(1L);
        }
        return i2;
    }

    public final void a(long j2) {
        if (j2 != -1) {
            this.f35484a += j2;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = ((FilterInputStream) this).in.read(bArr, i2, i3);
        if (i4 >= 0) {
            a(i4);
        }
        return i4;
    }
}

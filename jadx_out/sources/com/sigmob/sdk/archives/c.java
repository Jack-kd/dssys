package com.sigmob.sdk.archives;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class c extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    private static final int f35401b = 255;

    /* renamed from: a, reason: collision with root package name */
    private byte[] f35402a = new byte[1];

    /* renamed from: c, reason: collision with root package name */
    private long f35403c = 0;

    public abstract a a() throws IOException;

    public void a(int i2) {
        b(i2);
    }

    @Deprecated
    public int b() {
        return (int) this.f35403c;
    }

    public long c() {
        return this.f35403c;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f35402a, 0, 1) == -1) {
            return -1;
        }
        return this.f35402a[0] & 255;
    }

    private void b(long j2) {
        if (j2 != -1) {
            this.f35403c += j2;
        }
    }

    public void a(long j2) {
        this.f35403c -= j2;
    }

    public boolean a(a aVar) {
        return true;
    }
}

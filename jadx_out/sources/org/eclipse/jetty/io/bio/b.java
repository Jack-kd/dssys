package org.eclipse.jetty.io.bio;

import L1.d;
import L1.k;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;

/* loaded from: classes5.dex */
public abstract class b implements k {

    /* renamed from: b, reason: collision with root package name */
    public InputStream f52389b;

    /* renamed from: c, reason: collision with root package name */
    public OutputStream f52390c;

    /* renamed from: d, reason: collision with root package name */
    public int f52391d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f52392e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f52393f;

    public b(InputStream inputStream, OutputStream outputStream) {
        this.f52389b = inputStream;
        this.f52390c = outputStream;
    }

    @Override // L1.k
    public int b() {
        return this.f52391d;
    }

    @Override // L1.k
    public boolean c() {
        return true;
    }

    @Override // L1.k
    public boolean f(long j2) {
        return true;
    }

    @Override // L1.k
    public void flush() throws IOException {
        OutputStream outputStream = this.f52390c;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // L1.k
    public int g(d dVar, d dVar2, d dVar3) {
        int i2;
        int length;
        int length2;
        if (dVar == null || (length2 = dVar.length()) <= 0) {
            i2 = 0;
        } else {
            i2 = i(dVar);
            if (i2 < length2) {
                return i2;
            }
        }
        if (dVar2 != null && (length = dVar2.length()) > 0) {
            int i3 = i(dVar2);
            if (i3 < 0) {
                return i2 > 0 ? i2 : i3;
            }
            i2 += i3;
            if (i3 < length) {
                return i2;
            }
        }
        if (dVar3 == null || dVar3.length() <= 0) {
            return i2;
        }
        int i4 = i(dVar3);
        return i4 < 0 ? i2 > 0 ? i2 : i4 : i2 + i4;
    }

    @Override // L1.k
    public void h() throws IOException {
        InputStream inputStream;
        this.f52392e = true;
        if (!this.f52393f || (inputStream = this.f52389b) == null) {
            return;
        }
        inputStream.close();
    }

    @Override // L1.k
    public int i(d dVar) {
        if (this.f52393f) {
            return -1;
        }
        if (this.f52390c == null) {
            return 0;
        }
        int length = dVar.length();
        if (length > 0) {
            dVar.writeTo(this.f52390c);
        }
        if (!dVar.s0()) {
            dVar.clear();
        }
        return length;
    }

    @Override // L1.k
    public boolean isOpen() {
        return this.f52389b != null;
    }

    @Override // L1.k
    public void j() throws IOException {
        OutputStream outputStream;
        this.f52393f = true;
        if (!this.f52392e || (outputStream = this.f52390c) == null) {
            return;
        }
        outputStream.close();
    }

    @Override // L1.k
    public void l(int i2) {
        this.f52391d = i2;
    }

    @Override // L1.k
    public boolean o() {
        return this.f52393f;
    }

    @Override // L1.k
    public boolean s() {
        return this.f52392e;
    }

    @Override // L1.k
    public int t(d dVar) throws IOException {
        if (this.f52392e) {
            return -1;
        }
        if (this.f52389b == null) {
            return 0;
        }
        int iF0 = dVar.f0();
        if (iF0 <= 0) {
            if (dVar.B0()) {
                return 0;
            }
            throw new IOException("FULL");
        }
        try {
            int iE0 = dVar.e0(this.f52389b, iF0);
            if (iE0 < 0) {
                h();
            }
            return iE0;
        } catch (SocketTimeoutException unused) {
            u();
            return -1;
        }
    }

    public abstract void u();

    public final boolean v() {
        return !isOpen();
    }
}

package com.sigmob.sdk.downloader.core.breakpoint;

import com.sigmob.sdk.downloader.core.breakpoint.m;

/* loaded from: classes4.dex */
class n {

    /* renamed from: a, reason: collision with root package name */
    long f37360a;

    /* renamed from: b, reason: collision with root package name */
    private final m f37361b;

    public n(m.a aVar) {
        this(new m(aVar));
    }

    public void a() {
        this.f37361b.a();
    }

    public void b(int i2) {
        this.f37361b.e(i2);
        this.f37361b.a(i2, this.f37360a);
    }

    public void c(int i2) {
        this.f37361b.e(i2);
        try {
            if (!this.f37361b.a(i2)) {
                this.f37361b.b(i2);
            }
        } finally {
            this.f37361b.d(i2);
        }
    }

    public void d(int i2) {
        this.f37361b.e(i2);
        this.f37361b.c(i2);
    }

    public n(m mVar) {
        this.f37361b = mVar;
        this.f37360a = 1500L;
    }

    public boolean a(int i2) {
        return !this.f37361b.a(i2);
    }
}

package com.smartdigimkt.x3;

import android.os.SystemClock;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public long f45108a;

    /* renamed from: b, reason: collision with root package name */
    public long f45109b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f45110c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f45111d = false;

    /* renamed from: e, reason: collision with root package name */
    public final f f45112e = g.a().f45120a;

    /* renamed from: f, reason: collision with root package name */
    public final c f45113f = new c(this);

    public d(long j2, Runnable runnable) {
        this.f45109b = j2;
        this.f45110c = runnable;
    }

    public final synchronized void a() {
        if (this.f45111d) {
            this.f45111d = false;
            this.f45109b -= SystemClock.elapsedRealtime() - this.f45108a;
            this.f45112e.a(this.f45113f);
        }
    }

    public final synchronized void b() {
        if (this.f45109b >= 0 && !this.f45111d) {
            this.f45111d = true;
            this.f45108a = SystemClock.elapsedRealtime();
            this.f45112e.a(this.f45113f, this.f45109b);
        }
    }

    public final synchronized void c() {
        this.f45111d = false;
        this.f45112e.a(this.f45113f);
        this.f45109b = -1L;
    }
}

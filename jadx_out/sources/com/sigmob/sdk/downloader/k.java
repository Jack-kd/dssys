package com.sigmob.sdk.downloader;

import android.os.SystemClock;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    long f37728a;

    /* renamed from: b, reason: collision with root package name */
    long f37729b;

    /* renamed from: c, reason: collision with root package name */
    long f37730c;

    /* renamed from: d, reason: collision with root package name */
    long f37731d;

    /* renamed from: e, reason: collision with root package name */
    long f37732e;

    /* renamed from: f, reason: collision with root package name */
    long f37733f;

    private static String a(long j2, boolean z2) {
        return com.sigmob.sdk.downloader.core.c.a(j2, z2) + "/s";
    }

    public long b() {
        return SystemClock.uptimeMillis();
    }

    public synchronized void c() {
        long jB = b();
        long j2 = this.f37729b;
        long jMax = Math.max(1L, jB - this.f37728a);
        this.f37729b = 0L;
        this.f37728a = jB;
        this.f37730c = (long) ((j2 / jMax) * 1000.0f);
    }

    public long d() {
        c();
        return this.f37730c;
    }

    public synchronized long e() {
        long jB = b() - this.f37728a;
        if (jB < 1000) {
            long j2 = this.f37730c;
            if (j2 != 0) {
                return j2;
            }
        }
        if (this.f37730c == 0 && jB < 500) {
            return 0L;
        }
        return d();
    }

    public synchronized long f() {
        long jB;
        try {
            jB = this.f37732e;
            if (jB == 0) {
                jB = b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return (long) ((this.f37733f / Math.max(1L, jB - this.f37731d)) * 1000.0f);
    }

    public synchronized void g() {
        this.f37732e = b();
    }

    public String h() {
        return m();
    }

    public String i() {
        return a(e(), true);
    }

    public String j() {
        return a(this.f37730c, true);
    }

    public synchronized long k() {
        return b() - this.f37728a;
    }

    public String l() {
        return a(d(), false);
    }

    public String m() {
        return a(d(), true);
    }

    public String n() {
        return o();
    }

    public String o() {
        return a(f(), true);
    }

    public synchronized void a() {
        this.f37728a = 0L;
        this.f37729b = 0L;
        this.f37730c = 0L;
        this.f37731d = 0L;
        this.f37732e = 0L;
        this.f37733f = 0L;
    }

    public synchronized void a(long j2) {
        try {
            if (this.f37728a == 0) {
                long jB = b();
                this.f37728a = jB;
                this.f37731d = jB;
            }
            this.f37729b += j2;
            this.f37733f += j2;
        } catch (Throwable th) {
            throw th;
        }
    }
}

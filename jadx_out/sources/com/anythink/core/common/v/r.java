package com.anythink.core.common.v;

import android.os.CountDownTimer;

/* loaded from: classes2.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8294a = "CountDownTimerExt";

    /* renamed from: b, reason: collision with root package name */
    private CountDownTimer f8295b;

    /* renamed from: c, reason: collision with root package name */
    private long f8296c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f8297d = true;

    /* renamed from: e, reason: collision with root package name */
    private long f8298e;

    /* renamed from: f, reason: collision with root package name */
    private long f8299f;

    private r(long j2, long j3) {
        this.f8296c = j3;
        this.f8298e = j2;
        this.f8299f = j2;
    }

    private void a(boolean z2) {
        this.f8297d = z2;
    }

    private void b(long j2) {
        this.f8298e = j2;
    }

    private boolean d() {
        return this.f8297d;
    }

    private long e() {
        return this.f8298e;
    }

    private long f() {
        return this.f8299f;
    }

    private void g() throws Throwable {
        a(this.f8299f, this.f8296c);
    }

    private void h() {
        if (this.f8297d) {
            return;
        }
        try {
            this.f8295b.cancel();
        } catch (Throwable unused) {
        }
        this.f8297d = true;
    }

    private void i() throws Throwable {
        if (this.f8297d) {
            a(this.f8299f, this.f8296c);
        }
    }

    private boolean j() {
        return !this.f8297d;
    }

    public abstract void b();

    public abstract void c();

    public final void a(long j2) {
        this.f8299f = j2;
    }

    private void a(long j2, long j3, long j4) throws Throwable {
        this.f8298e = j2;
        this.f8299f = j3;
        this.f8296c = j4;
        a(j3, j4);
    }

    private synchronized void a(long j2, long j3) throws Throwable {
        Throwable th;
        try {
            try {
                this.f8299f = j2;
                this.f8296c = j3;
                if (this.f8298e <= 0 || j3 <= 0) {
                    return;
                }
                if (!this.f8297d) {
                    try {
                        a();
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                if (this.f8297d) {
                    CountDownTimer countDownTimer = new CountDownTimer(this.f8299f, this.f8296c) { // from class: com.anythink.core.common.v.r.1
                        @Override // android.os.CountDownTimer
                        public final void onFinish() {
                            r.this.a();
                        }

                        @Override // android.os.CountDownTimer
                        public final void onTick(long j4) {
                            r.this.a(j4);
                        }
                    };
                    this.f8295b = countDownTimer;
                    try {
                        countDownTimer.start();
                    } catch (Throwable unused) {
                    }
                    this.f8297d = false;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final void a() {
        try {
            this.f8295b.cancel();
        } catch (Throwable unused) {
        }
        this.f8297d = true;
        this.f8299f = this.f8298e;
    }
}

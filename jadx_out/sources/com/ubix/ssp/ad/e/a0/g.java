package com.ubix.ssp.ad.e.a0;

import android.os.CountDownTimer;

/* loaded from: classes5.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private CountDownTimer f46308a;

    /* renamed from: b, reason: collision with root package name */
    private final long f46309b;

    /* renamed from: c, reason: collision with root package name */
    private long f46310c;

    /* renamed from: d, reason: collision with root package name */
    private b f46311d;

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f46312e = true;

    public class a extends CountDownTimer {
        public a(long j2, long j3) {
            super(j2, j3);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            g.this.f46312e = true;
            u.e("onFinish-time-remain " + g.this.f46310c);
            if (g.this.f46310c < 150) {
                try {
                    if (g.this.f46311d != null) {
                        g.this.f46311d.a();
                    }
                    if (g.this.f46308a != null) {
                        g.this.f46308a.cancel();
                    }
                } catch (Throwable unused) {
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
            g.this.f46312e = false;
            g.this.f46310c = j2;
            if (g.this.f46311d != null) {
                g.this.f46311d.a(j2);
            }
        }
    }

    public interface b {
        void a();

        void a(long j2);

        void b();
    }

    public g(long j2) {
        this.f46309b = j2;
        this.f46310c = j2;
    }

    public void d() {
        a(this.f46310c);
    }

    public void e() {
        a(this.f46309b);
    }

    public boolean b() {
        return this.f46312e;
    }

    public void c() {
        if (this.f46308a != null) {
            u.e("onTick=pause inner 1");
            this.f46308a.cancel();
            this.f46308a.onFinish();
            this.f46308a = null;
        }
    }

    public void a() {
        CountDownTimer countDownTimer = this.f46308a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f46308a.onFinish();
            this.f46308a = null;
        }
        b bVar = this.f46311d;
        if (bVar != null) {
            bVar.b();
        }
    }

    private void a(long j2) {
        if (this.f46312e && this.f46308a == null) {
            a aVar = new a(j2, 50L);
            this.f46308a = aVar;
            aVar.start();
        }
    }

    public void a(b bVar) {
        this.f46311d = bVar;
    }
}

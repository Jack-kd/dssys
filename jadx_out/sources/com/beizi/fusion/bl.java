package com.beizi.fusion;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* loaded from: classes2.dex */
public abstract class bl {

    /* renamed from: a, reason: collision with root package name */
    private final long f13141a;

    /* renamed from: b, reason: collision with root package name */
    private final long f13142b;

    /* renamed from: c, reason: collision with root package name */
    private long f13143c;

    /* renamed from: d, reason: collision with root package name */
    private long f13144d;

    /* renamed from: e, reason: collision with root package name */
    private long f13145e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f13146f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f13147g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f13148h = false;

    /* renamed from: i, reason: collision with root package name */
    private final Handler f13149i = new a(Looper.getMainLooper());

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long j2;
            synchronized (bl.this) {
                try {
                    if (bl.this.f13147g) {
                        return;
                    }
                    if (bl.this.f13146f) {
                        return;
                    }
                    long jElapsedRealtime = (bl.this.f13143c + bl.this.f13145e) - SystemClock.elapsedRealtime();
                    long j3 = 0;
                    if (jElapsedRealtime <= 0) {
                        bl.this.f13148h = false;
                        bl.this.f13145e = 0L;
                        bl.this.d();
                    } else {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        bl.this.a(jElapsedRealtime);
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime < bl.this.f13142b) {
                            j2 = jElapsedRealtime - jElapsedRealtime3;
                            if (j2 < 0) {
                            }
                            sendMessageDelayed(obtainMessage(1), j3);
                        } else {
                            j2 = bl.this.f13142b - jElapsedRealtime3;
                            while (j2 < 0) {
                                j2 += bl.this.f13142b;
                            }
                        }
                        j3 = j2;
                        sendMessageDelayed(obtainMessage(1), j3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public bl(long j2, long j3) {
        this.f13141a = j2;
        this.f13142b = j3;
    }

    public abstract void a(long j2);

    public abstract void c();

    public abstract void d();

    public final synchronized void f() {
        if (this.f13146f) {
            this.f13146f = false;
            this.f13145e = (SystemClock.elapsedRealtime() - this.f13144d) + this.f13145e;
            Handler handler = this.f13149i;
            handler.sendMessage(handler.obtainMessage(1));
        }
    }

    public final synchronized bl g() {
        this.f13145e = 0L;
        if (this.f13148h) {
            return this;
        }
        this.f13147g = false;
        this.f13148h = true;
        if (this.f13141a <= 0) {
            this.f13148h = false;
            d();
            return this;
        }
        this.f13143c = SystemClock.elapsedRealtime() + this.f13141a;
        Handler handler = this.f13149i;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }

    public final boolean b() {
        return this.f13148h;
    }

    public final synchronized void e() {
        if (this.f13148h) {
            this.f13146f = true;
            this.f13144d = SystemClock.elapsedRealtime();
        }
    }

    public final synchronized void a() {
        this.f13147g = true;
        this.f13149i.removeMessages(1);
        c();
    }
}

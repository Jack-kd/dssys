package com.umeng.commonsdk.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: e, reason: collision with root package name */
    private static final int f50442e = 1;

    /* renamed from: a, reason: collision with root package name */
    private final long f50443a;

    /* renamed from: b, reason: collision with root package name */
    private final long f50444b;

    /* renamed from: c, reason: collision with root package name */
    private long f50445c;

    /* renamed from: f, reason: collision with root package name */
    private HandlerThread f50447f;

    /* renamed from: g, reason: collision with root package name */
    private Handler f50448g;

    /* renamed from: d, reason: collision with root package name */
    private boolean f50446d = false;

    /* renamed from: h, reason: collision with root package name */
    private Handler.Callback f50449h = new Handler.Callback() { // from class: com.umeng.commonsdk.utils.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            synchronized (a.this) {
                try {
                    if (a.this.f50446d) {
                        return true;
                    }
                    long jElapsedRealtime = a.this.f50445c - SystemClock.elapsedRealtime();
                    if (jElapsedRealtime <= 0) {
                        a.this.c();
                        if (a.this.f50447f != null) {
                            a.this.f50447f.quit();
                        }
                    } else if (jElapsedRealtime < a.this.f50444b) {
                        a.this.f50448g.sendMessageDelayed(a.this.f50448g.obtainMessage(1), jElapsedRealtime);
                    } else {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        a.this.a(jElapsedRealtime);
                        long jElapsedRealtime3 = (jElapsedRealtime2 + a.this.f50444b) - SystemClock.elapsedRealtime();
                        while (jElapsedRealtime3 < 0) {
                            jElapsedRealtime3 += a.this.f50444b;
                        }
                        a.this.f50448g.sendMessageDelayed(a.this.f50448g.obtainMessage(1), jElapsedRealtime3);
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public a(long j2, long j3) {
        this.f50443a = j2;
        this.f50444b = j3;
        if (d()) {
            this.f50448g = new Handler(this.f50449h);
            return;
        }
        HandlerThread handlerThread = new HandlerThread("CountDownTimerThread");
        this.f50447f = handlerThread;
        handlerThread.start();
        this.f50448g = new Handler(this.f50447f.getLooper(), this.f50449h);
    }

    public abstract void a(long j2);

    public abstract void c();

    private boolean d() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    public final synchronized void a() {
        this.f50446d = true;
        this.f50448g.removeMessages(1);
    }

    public final synchronized a b() {
        this.f50446d = false;
        if (this.f50443a <= 0) {
            c();
            return this;
        }
        this.f50445c = SystemClock.elapsedRealtime() + this.f50443a;
        Handler handler = this.f50448g;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}

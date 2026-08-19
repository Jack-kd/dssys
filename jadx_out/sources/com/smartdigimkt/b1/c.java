package com.smartdigimkt.b1;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;

/* loaded from: classes5.dex */
public final class c extends HandlerThread implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.a1.f f39476a;

    /* renamed from: b, reason: collision with root package name */
    public Handler f39477b;

    /* renamed from: c, reason: collision with root package name */
    public Error f39478c;

    /* renamed from: d, reason: collision with root package name */
    public RuntimeException f39479d;

    /* renamed from: e, reason: collision with root package name */
    public d f39480e;

    public c() {
        super("dummySurface");
    }

    public final d a(int i2) {
        boolean z2;
        start();
        Handler handler = new Handler(getLooper(), this);
        this.f39477b = handler;
        this.f39476a = new com.smartdigimkt.a1.f(handler);
        synchronized (this) {
            z2 = false;
            this.f39477b.obtainMessage(1, i2, 0).sendToTarget();
            while (this.f39480e == null && this.f39479d == null && this.f39478c == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f39479d;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = this.f39478c;
        if (error != null) {
            throw error;
        }
        d dVar = this.f39480e;
        dVar.getClass();
        return dVar;
    }

    public final void b(int i2) {
        this.f39476a.getClass();
        this.f39476a.a(i2);
        this.f39480e = new d(this, this.f39476a.b());
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        try {
            if (i2 != 1) {
                if (i2 != 2) {
                    return true;
                }
                try {
                    this.f39476a.getClass();
                    this.f39476a.c();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                b(message.arg1);
                synchronized (this) {
                    notify();
                }
            } catch (Error e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.f39478c = e2;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e3) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e3);
                this.f39479d = e3;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }
}

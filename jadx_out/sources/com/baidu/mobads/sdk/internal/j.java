package com.baidu.mobads.sdk.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public abstract class j<T> implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    private static final String f11537b = "BaseTask";

    /* renamed from: c, reason: collision with root package name */
    private static final int f11538c = 1;

    /* renamed from: d, reason: collision with root package name */
    private static final int f11539d = 2;

    /* renamed from: e, reason: collision with root package name */
    private static final int f11540e = 3;

    /* renamed from: j, reason: collision with root package name */
    private static b f11541j;

    /* renamed from: a, reason: collision with root package name */
    protected Future<T> f11542a;

    /* renamed from: f, reason: collision with root package name */
    private String f11543f;

    /* renamed from: g, reason: collision with root package name */
    private long f11544g;

    /* renamed from: h, reason: collision with root package name */
    private long f11545h;

    /* renamed from: i, reason: collision with root package name */
    private long f11546i;

    public static class a<T> {

        /* renamed from: a, reason: collision with root package name */
        final j f11547a;

        /* renamed from: b, reason: collision with root package name */
        final T f11548b;

        public a(j jVar, T t2) {
            this.f11547a = jVar;
            this.f11548b = t2;
        }
    }

    public static class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                aVar.f11547a.a((j) aVar.f11548b);
            } else if (i2 == 2) {
                aVar.f11547a.a((Throwable) aVar.f11548b);
            } else {
                if (i2 != 3) {
                    return;
                }
                aVar.f11547a.j();
            }
        }
    }

    public j() {
        this.f11543f = "default";
    }

    private static Handler k() {
        b bVar;
        synchronized (j.class) {
            try {
                if (f11541j == null) {
                    f11541j = new b(Looper.getMainLooper());
                }
                bVar = f11541j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    public void a(T t2) {
    }

    public void b() {
        a(false);
    }

    public boolean c() {
        Future<T> future = this.f11542a;
        if (future != null) {
            return future.isCancelled();
        }
        return false;
    }

    public boolean d() {
        Future<T> future = this.f11542a;
        if (future != null) {
            return future.isDone();
        }
        return false;
    }

    public long e() {
        return this.f11545h - this.f11544g;
    }

    public long f() {
        return this.f11546i - this.f11544g;
    }

    public long g() {
        return this.f11546i - this.f11545h;
    }

    public j h() {
        try {
            this.f11545h = System.currentTimeMillis();
            k().obtainMessage(1, new a(this, i())).sendToTarget();
        } finally {
            try {
                return this;
            } finally {
            }
        }
        return this;
    }

    public abstract T i();

    public void j() {
    }

    @Override // java.lang.Runnable
    public void run() {
        h();
    }

    public void a(Throwable th) {
    }

    public j(String str) {
        this.f11543f = str;
    }

    public String a() {
        return this.f11543f;
    }

    public void a(Future future) {
        this.f11542a = future;
    }

    public void a(long j2) {
        this.f11544g = j2;
    }

    public void a(boolean z2) {
        Future<T> future = this.f11542a;
        if (future != null) {
            future.cancel(z2);
            k().obtainMessage(3, new a(this, null)).sendToTarget();
        }
    }
}

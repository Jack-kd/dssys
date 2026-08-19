package com.ubix.ssp.ad.e.w;

import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes5.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private static l f47362a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f47363b = true;

    /* renamed from: c, reason: collision with root package name */
    private final LinkedBlockingQueue<Runnable> f47364c = new LinkedBlockingQueue<>();

    /* renamed from: d, reason: collision with root package name */
    private final LinkedBlockingQueue<Runnable> f47365d = new LinkedBlockingQueue<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private l() {
    }

    public static synchronized l a() {
        try {
        } catch (Exception e2) {
            h.a(e2);
        }
        if (f47362a == null) {
            f47362a = new l();
        }
        return f47362a;
    }

    public Runnable b() {
        try {
            return this.f47363b ? this.f47364c.poll() : this.f47365d.poll();
        } catch (Exception e2) {
            h.a(e2);
            return null;
        }
    }

    public Runnable c() {
        try {
            return this.f47363b ? this.f47364c.take() : this.f47365d.take();
        } catch (Exception e2) {
            h.a(e2);
            return null;
        }
    }

    public void a(Runnable runnable) throws InterruptedException {
        try {
            (this.f47363b ? this.f47364c : this.f47365d).put(runnable);
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a(boolean z2) throws InterruptedException {
        LinkedBlockingQueue<Runnable> linkedBlockingQueue;
        Runnable bVar;
        this.f47363b = z2;
        try {
            if (z2) {
                linkedBlockingQueue = this.f47365d;
                bVar = new a();
            } else {
                linkedBlockingQueue = this.f47364c;
                bVar = new b();
            }
            linkedBlockingQueue.put(bVar);
        } catch (InterruptedException e2) {
            h.a(e2);
        }
    }
}

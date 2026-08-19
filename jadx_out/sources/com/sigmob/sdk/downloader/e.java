package com.sigmob.sdk.downloader;

import com.sigmob.sdk.downloader.core.listener.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class e extends com.sigmob.sdk.downloader.core.listener.b implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    static final int f37633e = 0;

    /* renamed from: g, reason: collision with root package name */
    private static final Executor f37634g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload DynamicSerial", false));

    /* renamed from: i, reason: collision with root package name */
    private static final String f37635i = "DownloadSerialQueue";

    /* renamed from: a, reason: collision with root package name */
    volatile boolean f37636a;

    /* renamed from: b, reason: collision with root package name */
    volatile boolean f37637b;

    /* renamed from: c, reason: collision with root package name */
    volatile boolean f37638c;

    /* renamed from: d, reason: collision with root package name */
    volatile f f37639d;

    /* renamed from: f, reason: collision with root package name */
    com.sigmob.sdk.downloader.core.listener.f f37640f;

    /* renamed from: h, reason: collision with root package name */
    private final ArrayList<f> f37641h;

    public e() {
        this(null);
    }

    public synchronized void a() {
        if (this.f37638c) {
            com.sigmob.sdk.downloader.core.c.a(f37635i, "require pause this queue(remain " + this.f37641h.size() + "), butit has already been paused");
            return;
        }
        this.f37638c = true;
        if (this.f37639d != null) {
            this.f37639d.E();
            this.f37641h.add(0, this.f37639d);
            this.f37639d = null;
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a_(f fVar) {
        this.f37639d = fVar;
    }

    public synchronized void b() {
        if (this.f37638c) {
            this.f37638c = false;
            if (!this.f37641h.isEmpty() && !this.f37637b) {
                this.f37637b = true;
                f();
            }
            return;
        }
        com.sigmob.sdk.downloader.core.c.a(f37635i, "require resume this queue(remain " + this.f37641h.size() + "), but it is still running");
    }

    public int c() {
        if (this.f37639d != null) {
            return this.f37639d.c();
        }
        return 0;
    }

    public int d() {
        return this.f37641h.size();
    }

    public synchronized f[] e() {
        f[] fVarArr;
        try {
            this.f37636a = true;
            if (this.f37639d != null) {
                this.f37639d.E();
            }
            fVarArr = new f[this.f37641h.size()];
            this.f37641h.toArray(fVarArr);
            this.f37641h.clear();
        } catch (Throwable th) {
            throw th;
        }
        return fVarArr;
    }

    public void f() {
        f37634g.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVarRemove;
        while (!this.f37636a) {
            synchronized (this) {
                if (!this.f37641h.isEmpty() && !this.f37638c) {
                    fVarRemove = this.f37641h.remove(0);
                }
                this.f37639d = null;
                this.f37637b = false;
                return;
            }
            fVarRemove.c(this.f37640f);
        }
    }

    public e(c cVar) {
        this(cVar, new ArrayList());
    }

    public void a(c cVar) {
        this.f37640f = new f.a().a(this).a(cVar).a();
    }

    public synchronized void b(f fVar) {
        this.f37641h.add(fVar);
        Collections.sort(this.f37641h);
        if (!this.f37638c && !this.f37637b) {
            this.f37637b = true;
            f();
        }
    }

    public e(c cVar, ArrayList<f> arrayList) {
        this.f37636a = false;
        this.f37637b = false;
        this.f37638c = false;
        this.f37640f = new f.a().a(this).a(cVar).a();
        this.f37641h = arrayList;
    }

    @Override // com.sigmob.sdk.downloader.c
    public synchronized void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        if (aVar != com.sigmob.sdk.downloader.core.cause.a.CANCELED && fVar == this.f37639d) {
            this.f37639d = null;
        }
    }
}

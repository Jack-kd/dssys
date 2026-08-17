package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.interceptor.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class f implements Runnable {

    /* renamed from: h, reason: collision with root package name */
    private static final ExecutorService f37518h = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Cancel Block", false));

    /* renamed from: i, reason: collision with root package name */
    private static final String f37519i = "DownloadChain";

    /* renamed from: e, reason: collision with root package name */
    long f37524e;

    /* renamed from: f, reason: collision with root package name */
    volatile Thread f37525f;

    /* renamed from: j, reason: collision with root package name */
    private final int f37527j;

    /* renamed from: k, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f37528k;

    /* renamed from: l, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f37529l;

    /* renamed from: m, reason: collision with root package name */
    private final d f37530m;

    /* renamed from: n, reason: collision with root package name */
    private long f37531n;

    /* renamed from: o, reason: collision with root package name */
    private volatile com.sigmob.sdk.downloader.core.connection.a f37532o;

    /* renamed from: q, reason: collision with root package name */
    private final j f37534q;

    /* renamed from: a, reason: collision with root package name */
    final List<c.a> f37520a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    final List<c.b> f37521b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    int f37522c = 0;

    /* renamed from: d, reason: collision with root package name */
    int f37523d = 0;

    /* renamed from: g, reason: collision with root package name */
    final AtomicBoolean f37526g = new AtomicBoolean(false);

    /* renamed from: r, reason: collision with root package name */
    private final Runnable f37535r = new Runnable() { // from class: com.sigmob.sdk.downloader.core.download.f.1
        @Override // java.lang.Runnable
        public void run() {
            f.this.m();
        }
    };

    /* renamed from: p, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f37533p = com.sigmob.sdk.downloader.g.j().b();

    private f(int i2, com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, d dVar, j jVar) {
        this.f37527j = i2;
        this.f37528k = fVar;
        this.f37530m = dVar;
        this.f37529l = cVar;
        this.f37534q = jVar;
    }

    public long a() {
        return this.f37531n;
    }

    public void b() {
        if (this.f37526g.get() || this.f37525f == null) {
            return;
        }
        this.f37525f.interrupt();
    }

    public com.sigmob.sdk.downloader.f c() {
        return this.f37528k;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.c d() {
        return this.f37529l;
    }

    public int e() {
        return this.f37527j;
    }

    public d f() {
        return this.f37530m;
    }

    public com.sigmob.sdk.downloader.core.file.d g() {
        return this.f37530m.a();
    }

    public synchronized com.sigmob.sdk.downloader.core.connection.a h() {
        return this.f37532o;
    }

    public synchronized com.sigmob.sdk.downloader.core.connection.a i() throws IOException {
        try {
            if (this.f37530m.k()) {
                throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
            }
            if (this.f37532o == null) {
                String strB = this.f37530m.b();
                if (strB == null) {
                    strB = this.f37529l.l();
                }
                com.sigmob.sdk.downloader.core.c.b(f37519i, "create connection on url: " + strB);
                this.f37532o = com.sigmob.sdk.downloader.g.j().d().a(strB);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f37532o;
    }

    public void j() {
        if (this.f37524e == 0) {
            return;
        }
        this.f37533p.a().b(this.f37528k, this.f37527j, this.f37524e);
        this.f37524e = 0L;
    }

    public void k() throws IOException {
        com.sigmob.sdk.downloader.core.dispatcher.a aVarB = com.sigmob.sdk.downloader.g.j().b();
        com.sigmob.sdk.downloader.core.interceptor.d dVar = new com.sigmob.sdk.downloader.core.interceptor.d();
        com.sigmob.sdk.downloader.core.interceptor.a aVar = new com.sigmob.sdk.downloader.core.interceptor.a();
        this.f37520a.add(dVar);
        this.f37520a.add(aVar);
        this.f37520a.add(new com.sigmob.sdk.downloader.core.interceptor.connect.b());
        this.f37520a.add(new com.sigmob.sdk.downloader.core.interceptor.connect.a());
        this.f37522c = 0;
        a.InterfaceC0769a interfaceC0769aN = n();
        if (this.f37530m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        aVarB.a().a(this.f37528k, this.f37527j, a());
        com.sigmob.sdk.downloader.core.interceptor.b bVar = new com.sigmob.sdk.downloader.core.interceptor.b(this.f37527j, interfaceC0769aN.e(), g(), this.f37528k);
        this.f37521b.add(dVar);
        this.f37521b.add(aVar);
        this.f37521b.add(bVar);
        this.f37523d = 0;
        aVarB.a().c(this.f37528k, this.f37527j, o());
    }

    public void l() {
        this.f37522c = 1;
        m();
    }

    public synchronized void m() {
        try {
            if (this.f37532o != null) {
                this.f37532o.b();
                com.sigmob.sdk.downloader.core.c.b(f37519i, "release connection " + this.f37532o + " task[" + this.f37528k.c() + "] block[" + this.f37527j + "]");
            }
            this.f37532o = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public a.InterfaceC0769a n() throws IOException {
        if (this.f37530m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        List<c.a> list = this.f37520a;
        int i2 = this.f37522c;
        this.f37522c = i2 + 1;
        return list.get(i2).a(this);
    }

    public long o() throws IOException {
        if (this.f37530m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        List<c.b> list = this.f37521b;
        int i2 = this.f37523d;
        this.f37523d = i2 + 1;
        return list.get(i2).b(this);
    }

    public long p() throws IOException {
        if (this.f37523d == this.f37521b.size()) {
            this.f37523d--;
        }
        return o();
    }

    public boolean q() {
        return this.f37526g.get();
    }

    public j r() {
        return this.f37534q;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (q()) {
            throw new IllegalAccessError("The chain has been finished!");
        }
        this.f37525f = Thread.currentThread();
        try {
            k();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.f37526g.set(true);
            s();
            throw th;
        }
        this.f37526g.set(true);
        s();
    }

    public void s() {
        f37518h.execute(this.f37535r);
    }

    public static f a(int i2, com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, d dVar, j jVar) {
        return new f(i2, fVar, cVar, dVar, jVar);
    }

    public void b(long j2) {
        this.f37524e += j2;
    }

    public void a(long j2) {
        this.f37531n = j2;
    }

    public synchronized void a(com.sigmob.sdk.downloader.core.connection.a aVar) {
        this.f37532o = aVar;
    }

    public void a(String str) {
        this.f37530m.a(str);
    }
}

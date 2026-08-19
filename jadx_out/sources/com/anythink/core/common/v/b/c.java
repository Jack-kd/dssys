package com.anythink.core.common.v.b;

import android.os.Handler;
import android.os.Looper;
import com.anythink.core.common.b.g;
import com.anythink.core.common.b.h;
import com.anythink.core.common.d.s;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8064a = "c";

    /* renamed from: b, reason: collision with root package name */
    private static final String f8065b = "anythink_core";

    /* renamed from: c, reason: collision with root package name */
    private static final String f8066c = "anythink_mediation";

    /* renamed from: f, reason: collision with root package name */
    private static final String f8069f = "anythink_tracking";

    /* renamed from: g, reason: collision with root package name */
    private static final String f8070g = "anythink_scheduler";

    /* renamed from: h, reason: collision with root package name */
    private static final String f8071h = "anythink_adapter";

    /* renamed from: i, reason: collision with root package name */
    private static final String f8072i = "anythink_kv";

    /* renamed from: k, reason: collision with root package name */
    private static volatile c f8074k;

    /* renamed from: d, reason: collision with root package name */
    private static final String f8067d = "anythink_network";

    /* renamed from: e, reason: collision with root package name */
    private static final String f8068e = "anythink_io";

    /* renamed from: j, reason: collision with root package name */
    private static final List<String> f8073j = Arrays.asList(f8067d, f8068e);

    /* renamed from: u, reason: collision with root package name */
    private h f8084u = h.g();

    /* renamed from: l, reason: collision with root package name */
    private final Handler f8075l = new Handler(Looper.getMainLooper());

    /* renamed from: m, reason: collision with root package name */
    private volatile ScheduledThreadPoolExecutor f8076m = a(f8065b, this.f8084u.a());

    /* renamed from: n, reason: collision with root package name */
    private volatile ScheduledThreadPoolExecutor f8077n = a(f8066c, this.f8084u.b());

    /* renamed from: o, reason: collision with root package name */
    private volatile ThreadPoolExecutor f8078o = b(f8067d, this.f8084u.c());

    /* renamed from: p, reason: collision with root package name */
    private volatile ThreadPoolExecutor f8079p = b(f8068e, this.f8084u.d());

    /* renamed from: q, reason: collision with root package name */
    private volatile ThreadPoolExecutor f8080q = a(f8069f, this.f8084u.e());

    /* renamed from: r, reason: collision with root package name */
    private volatile ScheduledThreadPoolExecutor f8081r = a(f8070g, this.f8084u.f());

    /* renamed from: s, reason: collision with root package name */
    private final ScheduledExecutorService f8082s = Executors.newSingleThreadScheduledExecutor(new b(f8071h, 5));

    /* renamed from: t, reason: collision with root package name */
    private final ScheduledExecutorService f8083t = Executors.newSingleThreadScheduledExecutor(new b(f8072i, 4));

    private c() {
    }

    public static c a() {
        if (f8074k == null) {
            synchronized (c.class) {
                try {
                    if (f8074k == null) {
                        f8074k = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8074k;
    }

    private ScheduledFuture<?> c(d dVar, long j2) {
        return this.f8076m.schedule(dVar, j2, TimeUnit.MILLISECONDS);
    }

    private /* synthetic */ void d() {
        ThreadGroup threadGroup = Thread.currentThread().getThreadGroup();
        while (threadGroup.getParent() != null) {
            threadGroup = threadGroup.getParent();
        }
        threadGroup.activeCount();
        this.f8076m.getCorePoolSize();
        this.f8076m.getMaximumPoolSize();
        this.f8076m.getQueue().size();
        this.f8076m.getActiveCount();
        a(this.f8076m);
        this.f8077n.getCorePoolSize();
        this.f8077n.getMaximumPoolSize();
        this.f8077n.getQueue().size();
        this.f8077n.getActiveCount();
        a(this.f8077n);
        this.f8078o.getCorePoolSize();
        this.f8078o.getMaximumPoolSize();
        this.f8078o.getQueue().size();
        this.f8078o.getActiveCount();
        a(this.f8078o);
        this.f8079p.getCorePoolSize();
        this.f8079p.getMaximumPoolSize();
        this.f8079p.getQueue().size();
        this.f8079p.getActiveCount();
        a(this.f8079p);
        this.f8080q.getCorePoolSize();
        this.f8080q.getMaximumPoolSize();
        this.f8080q.getQueue().size();
        this.f8080q.getActiveCount();
        a(this.f8080q);
        this.f8081r.getCorePoolSize();
        this.f8081r.getMaximumPoolSize();
        this.f8081r.getQueue().size();
        this.f8081r.getActiveCount();
        a(this.f8081r);
    }

    private void h(d dVar) {
        this.f8076m.execute(dVar);
    }

    private void i(d dVar) {
        this.f8078o.execute(dVar);
    }

    private void j(d dVar) {
        this.f8079p.execute(dVar);
    }

    private void k(d dVar) {
        this.f8080q.execute(dVar);
    }

    private void l(d dVar) {
        this.f8082s.execute(dVar);
    }

    private static Runnable m(d dVar) {
        return dVar;
    }

    private static Runnable n(d dVar) {
        return dVar;
    }

    public final void b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.f8075l.removeCallbacks(runnable);
    }

    public final void e(d dVar) {
        this.f8080q.execute(dVar);
    }

    public final void f(d dVar) {
        this.f8082s.execute(dVar);
    }

    public final void g(d dVar) {
        this.f8083t.execute(dVar);
    }

    private static boolean c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public final void b(d dVar) {
        a(dVar, true);
    }

    public final ExecutorService b() {
        return this.f8078o;
    }

    public final void c(d dVar) {
        this.f8078o.execute(dVar);
    }

    public final ScheduledFuture<?> b(d dVar, long j2) {
        return this.f8081r.schedule(dVar, j2, TimeUnit.MILLISECONDS);
    }

    private static boolean b(String str) {
        return !f8073j.contains(str);
    }

    private static ThreadPoolExecutor b(String str, g gVar) {
        int iMax = Math.max(1, gVar.a());
        int iMax2 = Math.max(iMax, gVar.b());
        int iMax3 = Math.max(1, gVar.c());
        return new ThreadPoolExecutor(iMax, iMax2, Math.max(0L, gVar.d()), TimeUnit.SECONDS, b(str) ? new LinkedBlockingQueue() : new LinkedBlockingQueue(iMax3), new b(str, Math.max(1, Math.min(10, gVar.e()))), new a(str));
    }

    public final void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (c()) {
            runnable.run();
        } else {
            this.f8075l.post(runnable);
        }
    }

    public final void a(Runnable runnable, long j2) {
        if (runnable == null) {
            return;
        }
        if (j2 <= 0 && c()) {
            runnable.run();
        } else {
            this.f8075l.postDelayed(runnable, j2);
        }
    }

    public final void a(d dVar, boolean z2) {
        if (!z2 && a(f8066c)) {
            dVar.run();
        } else {
            this.f8077n.execute(dVar);
        }
    }

    public final ScheduledFuture<?> a(d dVar, long j2) {
        return this.f8077n.schedule(dVar, j2, TimeUnit.MILLISECONDS);
    }

    private ScheduledFuture<?> a(d dVar, long j2, long j3) {
        return this.f8081r.scheduleAtFixedRate(dVar, j2, j3, TimeUnit.MILLISECONDS);
    }

    public static void a(ScheduledFuture<?> scheduledFuture) {
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        scheduledFuture.cancel(false);
    }

    private static int a(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor == null || !(threadPoolExecutor.getThreadFactory() instanceof b)) {
            return -1;
        }
        return ((b) threadPoolExecutor.getThreadFactory()).a();
    }

    private static boolean a(String str) {
        return Thread.currentThread().getName().startsWith(str);
    }

    private ScheduledFuture<?> d(d dVar, long j2) {
        return this.f8082s.schedule(dVar, j2, TimeUnit.MILLISECONDS);
    }

    public final synchronized void a(h hVar) {
        if (hVar == null) {
            return;
        }
        try {
            this.f8076m = (ScheduledThreadPoolExecutor) a(f8065b, hVar.a(), this.f8084u.a(), this.f8076m, false);
            this.f8077n = (ScheduledThreadPoolExecutor) a(f8066c, hVar.b(), this.f8084u.b(), this.f8077n, false);
            this.f8081r = (ScheduledThreadPoolExecutor) a(f8070g, hVar.f(), this.f8084u.f(), this.f8081r, false);
            this.f8080q = a(f8069f, hVar.e(), this.f8084u.e(), this.f8080q, false);
            ThreadPoolExecutor threadPoolExecutor = this.f8078o;
            ThreadPoolExecutor threadPoolExecutor2 = this.f8079p;
            this.f8078o = a(f8067d, hVar.c(), this.f8084u.c(), this.f8078o, true);
            this.f8079p = a(f8068e, hVar.d(), this.f8084u.d(), this.f8079p, true);
            if (this.f8078o != threadPoolExecutor) {
                threadPoolExecutor.shutdown();
            }
            if (this.f8079p != threadPoolExecutor2) {
                threadPoolExecutor2.shutdown();
            }
            this.f8084u = hVar;
        } catch (Throwable unused) {
            f.b("update pool config", "update failed: " + p.a(new Throwable().getStackTrace()), s.b().r());
        }
    }

    public final void d(d dVar) {
        this.f8079p.execute(dVar);
    }

    private static <T extends ThreadPoolExecutor> T a(String str, g gVar, g gVar2, T t2, boolean z2) {
        if (gVar != null) {
            try {
                if (gVar.a() > 0) {
                    int iMax = Math.max(1, gVar.a());
                    int iMax2 = Math.max(iMax, gVar.b());
                    if (z2 && gVar2 != null && gVar.c() > 0 && gVar.c() != gVar2.c()) {
                        T t3 = (T) b(str, g.a(iMax, iMax2, gVar.c(), (int) (gVar.d() > 0 ? gVar.d() : gVar2.d()), gVar.e() > 0 ? gVar.e() : gVar2.e()));
                        ArrayList arrayList = new ArrayList();
                        t2.getQueue().drainTo(arrayList);
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            try {
                                t3.execute((Runnable) obj);
                            } catch (Throwable unused) {
                            }
                        }
                        return t3;
                    }
                    if (b(str)) {
                        if (iMax != t2.getCorePoolSize()) {
                            t2.setCorePoolSize(iMax);
                        }
                    } else if (iMax2 != t2.getMaximumPoolSize() || iMax != t2.getCorePoolSize()) {
                        if (iMax2 > t2.getMaximumPoolSize()) {
                            t2.setMaximumPoolSize(iMax2);
                            t2.setCorePoolSize(iMax);
                        } else {
                            t2.setCorePoolSize(iMax);
                            t2.setMaximumPoolSize(iMax2);
                        }
                    }
                    long jD = gVar.d();
                    if (jD > 0) {
                        TimeUnit timeUnit = TimeUnit.SECONDS;
                        if (jD != t2.getKeepAliveTime(timeUnit)) {
                            t2.setKeepAliveTime(jD, timeUnit);
                        }
                    }
                    int iE = gVar.e();
                    if (iE > 0 && ((gVar2 == null || iE != gVar2.e()) && (t2.getThreadFactory() instanceof b))) {
                        ((b) t2.getThreadFactory()).a(iE);
                        return t2;
                    }
                }
            } catch (Throwable unused2) {
                f.b("apply pool config", str + " apply failed: " + p.a(new Throwable().getStackTrace()), s.b().r());
            }
        }
        return t2;
    }

    private static ScheduledThreadPoolExecutor a(String str, g gVar) {
        return new ScheduledThreadPoolExecutor(Math.max(1, gVar.a()), new b(str, Math.max(1, Math.min(10, gVar.e()))));
    }

    public final void a(d dVar) {
        this.f8076m.execute(dVar);
    }
}

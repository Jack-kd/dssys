package com.beizi.fusion;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class en implements hb {

    /* renamed from: a, reason: collision with root package name */
    private final int f13729a;

    /* renamed from: b, reason: collision with root package name */
    private final int f13730b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f13731c;

    /* renamed from: d, reason: collision with root package name */
    private final ExecutorService f13732d;

    /* renamed from: e, reason: collision with root package name */
    private final ExecutorService f13733e;

    /* renamed from: f, reason: collision with root package name */
    private final ExecutorService f13734f;

    /* renamed from: g, reason: collision with root package name */
    private final ExecutorService f13735g;

    /* renamed from: h, reason: collision with root package name */
    private final ExecutorService f13736h;

    /* renamed from: i, reason: collision with root package name */
    private final ScheduledExecutorService f13737i;

    /* renamed from: j, reason: collision with root package name */
    private final ScheduledExecutorService f13738j;

    public en() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.f13729a = iAvailableProcessors;
        int iMax = Math.max((iAvailableProcessors / 2) + 1, 4);
        this.f13730b = iMax;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.f13731c = new ThreadPoolExecutor(2, 8, 5L, timeUnit, new LinkedBlockingQueue(), new dn(5, "T_request"));
        this.f13732d = new ThreadPoolExecutor(2, 8, 5L, timeUnit, new LinkedBlockingQueue(), new dn(5, "T_basic"));
        this.f13736h = new ThreadPoolExecutor(2, iMax, 5L, timeUnit, new LinkedBlockingQueue(), new dn(5, "T_cache"));
        this.f13733e = Executors.newFixedThreadPool(2, new dn(5, "T_init"));
        this.f13734f = new ThreadPoolExecutor(2, iMax, 5L, timeUnit, new LinkedBlockingQueue(), new dn(5, "T_local"));
        this.f13735g = new ThreadPoolExecutor(4, iMax, 5L, timeUnit, new LinkedBlockingQueue(), new dn(5, "T_analyse"));
        this.f13737i = Executors.newScheduledThreadPool(4, new dn(5, "T_basic"));
        this.f13738j = Executors.newScheduledThreadPool(4, new dn(5, "T_cache"));
    }

    @Override // com.beizi.fusion.hb
    public void a(Runnable runnable) {
        this.f13734f.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void b(Runnable runnable) {
        this.f13731c.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void c(Runnable runnable) {
        this.f13736h.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void d(Runnable runnable) {
        this.f13735g.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void e(Runnable runnable) {
        this.f13733e.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void f(Runnable runnable) {
        this.f13732d.execute(runnable);
    }

    @Override // com.beizi.fusion.hb
    public void a(Runnable runnable, long j2, TimeUnit timeUnit) {
        this.f13737i.schedule(runnable, j2, timeUnit);
    }

    public ScheduledExecutorService b() {
        return Executors.newSingleThreadScheduledExecutor(new dn(5, "T_basic"));
    }

    public ScheduledExecutorService c() {
        return this.f13737i;
    }

    public ScheduledExecutorService a() {
        return this.f13738j;
    }
}

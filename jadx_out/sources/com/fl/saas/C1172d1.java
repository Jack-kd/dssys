package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.fl.saas.d1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1172d1 {

    /* renamed from: e, reason: collision with root package name */
    private static final int f30356e;

    /* renamed from: f, reason: collision with root package name */
    private static final int f30357f;

    /* renamed from: a, reason: collision with root package name */
    private final ThreadPoolExecutor f30358a;

    /* renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f30359b;

    /* renamed from: c, reason: collision with root package name */
    private final LinkedBlockingQueue f30360c;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f30361d;

    /* renamed from: com.fl.saas.d1$a */
    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        Runnable f30362a = null;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    this.f30362a = null;
                    this.f30362a = (Runnable) C1172d1.this.f30360c.take();
                } catch (InterruptedException e2) {
                    LogcatUtil.debug(e2);
                }
                if (this.f30362a != null) {
                    C1172d1.this.f30358a.execute(this.f30362a);
                }
            }
        }
    }

    /* renamed from: com.fl.saas.d1$b */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private static final C1172d1 f30364a = new C1172d1(null);
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f30356e = iAvailableProcessors;
        f30357f = (iAvailableProcessors * 2) + 1;
    }

    private C1172d1() {
        this.f30360c = new LinkedBlockingQueue();
        this.f30361d = new a();
        int i2 = f30356e;
        this.f30359b = Executors.newScheduledThreadPool(i2);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, f30357f, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), new RejectedExecutionHandler() { // from class: com.fl.saas.R1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                this.f30050a.a(runnable, threadPoolExecutor2);
            }
        });
        this.f30358a = threadPoolExecutor;
        threadPoolExecutor.execute(this.f30361d);
    }

    public void c(Runnable runnable) {
        if (runnable != null) {
            try {
                this.f30358a.remove(runnable);
                this.f30360c.remove(runnable);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public /* synthetic */ C1172d1(a aVar) {
        this();
    }

    public void b(Runnable runnable) {
        if (runnable != null) {
            try {
                this.f30358a.execute(runnable);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    private void a(Runnable runnable) {
        if (runnable != null) {
            try {
                this.f30360c.put(runnable);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public static C1172d1 a() {
        return b.f30364a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        a(runnable);
    }

    public void a(Runnable runnable, long j2, TimeUnit timeUnit) {
        this.f30359b.schedule(runnable, j2, timeUnit);
    }
}

package com.kuaishou.weapon.p0;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private static volatile n f31191a = null;

    /* renamed from: b, reason: collision with root package name */
    private static int f31192b = 3;

    /* renamed from: c, reason: collision with root package name */
    private static int f31193c = 6;

    /* renamed from: d, reason: collision with root package name */
    private static ThreadPoolExecutor f31194d;

    private n() {
    }

    public static n a() {
        if (f31191a == null) {
            synchronized (n.class) {
                try {
                    if (f31191a == null) {
                        f31191a = new n();
                    }
                    if (f31194d == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f31192b, f31193c, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(50), new RejectedExecutionHandler() { // from class: com.kuaishou.weapon.p0.n.1
                            @Override // java.util.concurrent.RejectedExecutionHandler
                            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                            }
                        });
                        f31194d = threadPoolExecutor;
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return f31191a;
    }

    public static n a(int i2, int i3) {
        if (f31191a == null) {
            synchronized (n.class) {
                try {
                    if (f31191a == null) {
                        f31192b = i2;
                        f31193c = i3;
                        f31191a = new n();
                        if (f31194d == null) {
                            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f31192b, f31193c, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(50), new RejectedExecutionHandler() { // from class: com.kuaishou.weapon.p0.n.2
                                @Override // java.util.concurrent.RejectedExecutionHandler
                                public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                                }
                            });
                            f31194d = threadPoolExecutor;
                            threadPoolExecutor.allowCoreThreadTimeOut(true);
                        }
                    }
                } finally {
                }
            }
        }
        return f31191a;
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            try {
                f31194d.execute(runnable);
            } catch (Exception unused) {
            }
        }
    }
}

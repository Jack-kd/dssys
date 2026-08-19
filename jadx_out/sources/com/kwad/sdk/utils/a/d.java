package com.kwad.sdk.utils.a;

import com.kwad.sdk.utils.a.c;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public final class d {
    static c.d bsx;
    static volatile Executor bsy;
    static ExecutorService bsz = Executors.newSingleThreadExecutor();

    private d() {
    }

    public static void a(c.d dVar) {
        bsx = dVar;
    }

    public static Executor getExecutor() {
        if (bsy == null) {
            synchronized (d.class) {
                try {
                    if (bsy == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        bsy = threadPoolExecutor;
                    }
                } finally {
                }
            }
        }
        return bsy;
    }

    public static void setExecutor(Executor executor) {
        if (executor != null) {
            bsy = executor;
        }
    }
}

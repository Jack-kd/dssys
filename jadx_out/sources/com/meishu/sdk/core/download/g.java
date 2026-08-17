package com.meishu.sdk.core.download;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    public static final TimeUnit f31569b = TimeUnit.HOURS;

    /* renamed from: c, reason: collision with root package name */
    public static final BlockingQueue<Runnable> f31570c = new LinkedBlockingQueue(8);

    /* renamed from: a, reason: collision with root package name */
    public ThreadPoolExecutor f31571a;

    public ThreadPoolExecutor a() {
        if (this.f31571a == null) {
            synchronized (g.class) {
                try {
                    if (this.f31571a == null) {
                        this.f31571a = new ThreadPoolExecutor(3, 5, 1L, f31569b, f31570c, Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
                    }
                } finally {
                }
            }
        }
        return this.f31571a;
    }
}

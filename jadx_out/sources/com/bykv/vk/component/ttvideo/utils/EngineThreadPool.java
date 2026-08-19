package com.bykv.vk.component.ttvideo.utils;

import com.byazt.shx.j;
import com.byazt.uid.s;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class EngineThreadPool {

    /* renamed from: a, reason: collision with root package name */
    private static ThreadPoolExecutor f28825a;

    public static ExecutorService a() {
        if (f28825a == null) {
            synchronized (EngineThreadPool.class) {
                try {
                    if (f28825a == null) {
                        j jVar = new j(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new s("EngineThreadPool"));
                        f28825a = jVar;
                        jVar.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return f28825a;
    }

    public static void setExcutorInstance(ThreadPoolExecutor threadPoolExecutor) {
        synchronized (EngineThreadPool.class) {
            f28825a = threadPoolExecutor;
        }
    }
}

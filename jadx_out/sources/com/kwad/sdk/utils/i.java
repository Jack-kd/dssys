package com.kwad.sdk.utils;

import com.kwad.sdk.core.threads.GlobalThreadPools;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class i {
    private static volatile ExecutorService bot;
    private static volatile ScheduledExecutorService bou;

    public static void execute(Runnable runnable) {
        if (bot == null) {
            synchronized (i.class) {
                try {
                    if (bot == null) {
                        bot = GlobalThreadPools.Oi();
                    }
                } finally {
                }
            }
        }
        if (bot == null || bot.isShutdown() || bot.isTerminated()) {
            return;
        }
        bot.execute(runnable);
    }

    public static void schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (bou == null) {
            synchronized (i.class) {
                try {
                    if (bou == null) {
                        bou = GlobalThreadPools.Oj();
                    }
                } finally {
                }
            }
        }
        bou.schedule(runnable, j2, timeUnit);
    }
}

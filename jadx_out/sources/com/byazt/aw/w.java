package com.byazt.aw;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1452, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static Handler f18328a = null;

    /* renamed from: e, reason: collision with root package name */
    public static final Executor f18329e;
    public static final int eb;
    public static final /* synthetic */ boolean hp = true;

    /* renamed from: j, reason: collision with root package name */
    public static Handler f18330j = null;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static final Object f18331l = new Object();

    /* renamed from: q, reason: collision with root package name */
    public static final ThreadPoolExecutor f18332q;

    /* renamed from: s, reason: collision with root package name */
    public static final int f18333s;

    /* renamed from: w, reason: collision with root package name */
    public static HandlerThread f18334w;

    static {
        hp();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        eb = iAvailableProcessors;
        f18333s = Math.min(iAvailableProcessors, 4);
        f18332q = q();
        f18329e = e();
    }

    public static Executor a() {
        return f18332q;
    }

    private static Executor e() {
        return new com.byazt.shx.j(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), hp("gm_t_log_upload:"), new ThreadPoolExecutor.DiscardPolicy());
    }

    public static Executor eb() {
        return f18329e;
    }

    public static void hp() {
        try {
            HandlerThread handlerThread = new HandlerThread("gm_t_main", -19);
            f18334w = handlerThread;
            handlerThread.start();
            f18328a = new Handler(f18334w.getLooper());
        } catch (Throwable unused) {
        }
    }

    public static Handler j() {
        Handler handler;
        synchronized (f18331l) {
            try {
                if (f18330j == null) {
                    if (jx) {
                        throw new RuntimeException("Did not yet override the UI thread");
                    }
                    f18330j = new Handler(Looper.getMainLooper());
                }
                handler = f18330j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public static boolean jx() {
        return s() && f18334w.getLooper() == Looper.myLooper();
    }

    public static Looper l() {
        if (s()) {
            return f18334w.getLooper();
        }
        return null;
    }

    private static ThreadPoolExecutor q() {
        int i2 = f18333s;
        com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(1024), hp("gm_t_executor:"), new ThreadPoolExecutor.DiscardOldestPolicy() { // from class: com.byazt.aw.w.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy, java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                com.byazt.fqv.hp.hp().jx();
            }
        });
        try {
            jVar.allowCoreThreadTimeOut(true);
            return jVar;
        } catch (Exception e2) {
            u.hp("ThreadHelper", "stackerror:", e2);
            return jVar;
        } catch (NoSuchMethodError unused) {
            return jVar;
        }
    }

    private static boolean s() {
        HandlerThread handlerThread = f18334w;
        return (handlerThread == null || !handlerThread.isAlive() || f18328a == null) ? false : true;
    }

    public static boolean w() {
        return j().getLooper() == Looper.myLooper();
    }

    public static void jx(Runnable runnable) {
        if (w()) {
            runnable.run();
        } else {
            j().post(runnable);
        }
    }

    public static void l(Runnable runnable) throws ExecutionException, InterruptedException {
        if (w()) {
            runnable.run();
            return;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        hp(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            throw new RuntimeException("Exception occured while waiting for runnable", e2);
        }
    }

    public static void hp(Runnable runnable) {
        if (s()) {
            if (jx()) {
                runnable.run();
                return;
            } else {
                f18328a.post(runnable);
                return;
            }
        }
        hp();
    }

    public static void j(Runnable runnable) {
        hp(f18332q, runnable);
    }

    public static void hp(Runnable runnable, long j2) {
        if (s()) {
            f18328a.postDelayed(runnable, j2);
        } else {
            hp();
        }
    }

    public static ThreadFactory hp(final String str) {
        return new ThreadFactory() { // from class: com.byazt.aw.w.1

            /* renamed from: l, reason: collision with root package name */
            public final AtomicInteger f18335l = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new com.byazt.shx.jx(runnable, str + " # " + this.f18335l.getAndIncrement());
            }
        };
    }

    public static <T> FutureTask<T> hp(FutureTask<T> futureTask) {
        j().post(futureTask);
        return futureTask;
    }

    public static ExecutorService hp(String str, int i2, RejectedExecutionHandler rejectedExecutionHandler) {
        return new com.byazt.shx.j(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(i2), hp("gm_t_single_".concat(String.valueOf(str))), rejectedExecutionHandler);
    }

    private static boolean hp(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
            return true;
        } catch (Throwable th) {
            u.hp("ThreadHelper", "stackerror:", th);
            return false;
        }
    }
}

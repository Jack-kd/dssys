package com.byazt.wq;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.ik.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 2069, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static volatile hp hp;
    public final Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile ThreadPoolExecutor f27096l = null;

    private hp() {
        HandlerThread handlerThread = new HandlerThread("csj_api_main");
        handlerThread.start();
        this.jx = new Handler(handlerThread.getLooper());
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                hp = new hp();
            }
        }
        return hp;
    }

    public ExecutorService j() {
        if (this.f27096l == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, Integer.MAX_VALUE, 1000L, TimeUnit.MILLISECONDS, new SynchronousQueue());
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            this.f27096l = threadPoolExecutor;
        }
        return this.f27096l;
    }

    public Handler jx() {
        return new Handler(Looper.getMainLooper());
    }

    public Handler l() {
        return this.jx;
    }

    public void hp(Runnable runnable) {
        if (runnable != null) {
            try {
                this.jx.post(runnable);
            } catch (Throwable th) {
                a.hp(th);
            }
        }
    }
}

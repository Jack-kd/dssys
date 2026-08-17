package com.byazt.mp;

import android.annotation.SuppressLint;
import android.os.Handler;
import com.byazt.gt.zy;
import com.byazt.shx.j;
import com.byazt.uid.s;
import com.byazt.zq.hp;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 678, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final int hp = Runtime.getRuntime().availableProcessors();

    /* renamed from: l, reason: collision with root package name */
    public static final hp.AbstractC0438hp<Executor> f23188l = new hp.AbstractC0438hp<Executor>() { // from class: com.byazt.mp.hp.1
        @Override // com.byazt.zq.hp.AbstractC0438hp
        @SuppressLint({"CI_NotAllowInvokeExecutorsMethods"})
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Executor l(Object... objArr) {
            return new j((int) (hp.hp * 0.5d), Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new s("xecutorUtil$1"));
        }
    };
    public static final hp.AbstractC0438hp<ExecutorService> jx = new hp.AbstractC0438hp<ExecutorService>() { // from class: com.byazt.mp.hp.2
        @Override // com.byazt.zq.hp.AbstractC0438hp
        @SuppressLint({"CI_NotAllowInvokeExecutorsMethods"})
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public ExecutorService l(Object... objArr) {
            return new j((int) (hp.hp * 0.5d), Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new s("xecutorUtil$2"));
        }
    };

    /* renamed from: j, reason: collision with root package name */
    public static final hp.AbstractC0438hp<Handler> f23187j = new hp.AbstractC0438hp<Handler>() { // from class: com.byazt.mp.hp.3
        @Override // com.byazt.zq.hp.AbstractC0438hp
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Handler l(Object... objArr) {
            return new Handler(zy.eb());
        }
    };

    public static Handler hp() {
        return f23187j.jx(new Object[0]);
    }

    private static ExecutorService j() {
        return jx.jx(new Object[0]);
    }

    private static Executor jx() {
        return f23188l.jx(new Object[0]);
    }

    public static void hp(Runnable runnable) {
        jx().execute(runnable);
    }

    public static <T> Future<T> hp(Callable<T> callable) {
        return j().submit(callable);
    }
}

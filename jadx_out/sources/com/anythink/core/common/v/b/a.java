package com.anythink.core.common.v.b;

import com.anythink.core.common.d.s;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.p;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes2.dex */
public final class a implements RejectedExecutionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final String f8060a;

    public a(String str) {
        this.f8060a = str;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        String strA = runnable instanceof d ? ((d) runnable).a() : "";
        try {
            String strA2 = p.a(new Throwable().getStackTrace());
            f.b("ThreadPool rejected: " + this.f8060a, "workerId=" + strA + ". queueSize=" + threadPoolExecutor.getQueue().size() + ", activeCount=" + threadPoolExecutor.getActiveCount() + ", poolSize=" + threadPoolExecutor.getPoolSize() + ", stack=" + strA2, s.b().r());
        } catch (Throwable unused) {
        }
        c.a().a(new d(e.ai + "_" + strA, runnable));
    }
}

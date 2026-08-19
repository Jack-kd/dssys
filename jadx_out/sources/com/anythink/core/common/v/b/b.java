package com.anythink.core.common.v.b;

import android.text.TextUtils;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.b.b;
import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    private final String f8061a;

    /* renamed from: b, reason: collision with root package name */
    private volatile int f8062b;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicInteger f8063c = new AtomicInteger(0);

    public b(String str, int i2) {
        this.f8061a = str;
        this.f8062b = i2;
    }

    public final void a(int i2) {
        this.f8062b = i2;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f8061a + "_" + this.f8063c.incrementAndGet());
        thread.setDaemon(true);
        thread.setPriority(this.f8062b);
        final String strA = runnable instanceof d ? ((d) runnable).a() : "";
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: n.a
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                b.a(strA, thread2, th);
            }
        });
        return thread;
    }

    public final int a() {
        return this.f8062b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Thread thread, Throwable th) {
        try {
            StringBuilder sb = new StringBuilder("Thread crash: ");
            sb.append(thread.getName());
            sb.append(!TextUtils.isEmpty(str) ? ", workerId=".concat(String.valueOf(str)) : "");
            f.b(sb.toString(), th != null ? th.getMessage() : "", "");
        } catch (Throwable unused) {
        }
    }
}

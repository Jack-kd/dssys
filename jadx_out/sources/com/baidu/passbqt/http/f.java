package com.baidu.passbqt.http;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class f implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f11873a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "pass_net_thread#" + this.f11873a.getAndIncrement());
    }
}

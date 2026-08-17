package com.smartdigimkt.b4;

import java.util.Objects;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes5.dex */
public final class a implements RejectedExecutionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f39576a;

    public a(b bVar) {
        this.f39576a = bVar;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Objects.toString(threadPoolExecutor);
        this.f39576a.f39577a.execute(runnable);
    }
}

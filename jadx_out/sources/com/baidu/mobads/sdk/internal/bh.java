package com.baidu.mobads.sdk.internal;

import java.lang.Thread;

/* loaded from: classes2.dex */
class bh implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bg f11163a;

    public bh(bg bgVar) {
        this.f11163a = bgVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        az.h("ThreadPoolFactory").c("线程名字=" + thread.getName() + "线程crash信息", th);
    }
}

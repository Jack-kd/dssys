package com.byazt.px;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 549, 28})
/* loaded from: classes3.dex */
public class hp implements ThreadFactory {
    public final ThreadGroup hp;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f24528l = new AtomicInteger(1);

    public hp(String str) {
        this.hp = new ThreadGroup("tt_img_".concat(String.valueOf(str)));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.shx.jx jxVar = new com.byazt.shx.jx(this.hp, runnable, "tt_img_" + this.f24528l.getAndIncrement());
        if (jxVar.isDaemon()) {
            jxVar.setDaemon(false);
        }
        return jxVar;
    }
}

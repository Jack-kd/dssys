package com.byazt.ez;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1109, 28})
/* loaded from: classes2.dex */
public class hp implements ThreadFactory {
    public final String hp;
    public final boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f19565l;

    public hp(String str) {
        this(str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.shx.jx jxVar = new com.byazt.shx.jx(runnable, this.hp + "-" + this.f19565l.incrementAndGet());
        if (!this.jx) {
            if (jxVar.isDaemon()) {
                jxVar.setDaemon(false);
            }
            if (jxVar.getPriority() != 5) {
                jxVar.setPriority(5);
            }
        }
        return jxVar;
    }

    public hp(String str, boolean z2) {
        this.f19565l = new AtomicInteger();
        this.hp = str;
        this.jx = z2;
    }
}

package com.byazt.jv;

import com.byazt.uid.q;
import com.byazt.uid.s;
import java.util.concurrent.ThreadFactory;

@com.byazt.kj.hp(hp = {0, 1, 303, 38})
/* loaded from: classes.dex */
public class j implements ThreadFactory {
    public final ThreadFactory hp;

    /* renamed from: l, reason: collision with root package name */
    public final int f21701l;

    public j(ThreadFactory threadFactory, int i2) {
        if (threadFactory == null) {
            this.hp = new s("default");
        } else {
            this.hp = threadFactory;
        }
        this.f21701l = i2;
    }

    public final String hp() {
        return this.hp.getClass().getName();
    }

    public boolean l() {
        return q.f26242l.l(this.f21701l);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.hp.newThread(runnable);
        return l() ? new eb(threadNewThread) : threadNewThread;
    }
}

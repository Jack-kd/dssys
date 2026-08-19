package com.byazt.qj;

import android.text.TextUtils;
import com.byazt.qj.l;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1558, 38})
/* loaded from: classes3.dex */
public class j implements ThreadFactory {
    public static final AtomicInteger hp = new AtomicInteger(1);

    /* renamed from: j, reason: collision with root package name */
    public final String f24727j;
    public final AtomicInteger jx = new AtomicInteger(1);

    /* renamed from: l, reason: collision with root package name */
    public final ThreadGroup f24728l;

    /* renamed from: w, reason: collision with root package name */
    public final l.hp f24729w;

    public j(l.hp hpVar, String str) {
        this.f24729w = hpVar;
        SecurityManager securityManager = System.getSecurityManager();
        this.f24728l = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.f24727j = "ttdefault-" + hp.getAndIncrement() + "-thread-";
            return;
        }
        this.f24727j = str + hp.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.shx.jx jxVar = new com.byazt.shx.jx(this.f24728l, runnable, this.f24727j + this.jx.getAndIncrement(), 0L);
        if (jxVar.isDaemon()) {
            jxVar.setDaemon(false);
        }
        l.hp hpVar = this.f24729w;
        if (hpVar != null && hpVar.hp() == l.hp.LOW.hp()) {
            jxVar.setPriority(1);
            return jxVar;
        }
        if (jxVar.getPriority() != 5) {
            jxVar.setPriority(3);
            return jxVar;
        }
        jxVar.setPriority(5);
        return jxVar;
    }
}

package com.byazt.ru;

@com.byazt.kj.hp(hp = {0, 1, 1274, 34})
/* loaded from: classes3.dex */
public abstract class l implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    public final String f25384l;

    public l(String str, Object... objArr) {
        this.f25384l = jx.hp(str, objArr);
    }

    public abstract void jx();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("csj_" + this.f25384l);
        try {
            jx();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}

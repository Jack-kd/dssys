package com.byazt.wsy;

@com.byazt.kj.hp(hp = {0, 1, 1801, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.jv.jx implements Runnable {

    /* renamed from: j, reason: collision with root package name */
    public final Runnable f27127j;

    public jx(Runnable runnable) {
        super(runnable);
        this.f27127j = runnable;
        l(false);
        hp(false);
    }

    @Override // com.byazt.jv.jx, java.lang.Runnable
    public void run() {
        this.f27127j.run();
    }
}

package com.byazt.xa;

import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1328, 45})
/* loaded from: classes3.dex */
public class e implements Runnable {
    public WeakReference<Runnable> hp;

    public e(Runnable runnable) {
        this.hp = new WeakReference<>(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.hp.get();
        if (runnable != null) {
            runnable.run();
        }
    }
}

package com.byazt.ed;

import com.byazt.hu.w;
import java.util.concurrent.CountDownLatch;

@com.byazt.kj.hp(hp = {0, 1, 1686, 28})
/* loaded from: classes2.dex */
public class hp {
    public Throwable hp;

    /* renamed from: l, reason: collision with root package name */
    public final CountDownLatch f19400l;

    /* renamed from: com.byazt.ed.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0217hp {
        void hp() throws Throwable;
    }

    private hp(boolean z2, InterfaceC0217hp[] interfaceC0217hpArr) {
        this.f19400l = new CountDownLatch(interfaceC0217hpArr.length);
        for (final InterfaceC0217hp interfaceC0217hp : interfaceC0217hpArr) {
            w.hp(new Runnable() { // from class: com.byazt.ed.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        interfaceC0217hp.hp();
                    } catch (Throwable th) {
                        hp.this.hp = th;
                    }
                    hp.this.f19400l.countDown();
                }
            }, z2);
        }
    }

    public static void hp(boolean z2, InterfaceC0217hp... interfaceC0217hpArr) throws Throwable {
        new hp(z2, interfaceC0217hpArr).hp();
    }

    private void hp() throws Throwable {
        try {
            this.f19400l.await();
            Throwable th = this.hp;
            if (th != null) {
                throw th;
            }
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }
}

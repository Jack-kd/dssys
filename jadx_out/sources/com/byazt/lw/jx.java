package com.byazt.lw;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@com.byazt.kj.hp(hp = {0, 1, 717, 30})
/* loaded from: classes3.dex */
public class jx implements Callable<com.byazt.jj.hp> {
    public final hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Long f22792l;

    public jx(hp hpVar, Long l2) {
        this.hp = hpVar;
        this.f22792l = l2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public com.byazt.jj.hp call() throws Exception {
        Future futureHp = com.byazt.mp.hp.hp(new Callable<com.byazt.jj.hp>() { // from class: com.byazt.lw.jx.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public com.byazt.jj.hp call() throws Exception {
                try {
                    return jx.this.hp.hp();
                } catch (Exception e2) {
                    com.byazt.fg.hp.l("__kiteFingerTask#future call error " + e2.getMessage());
                    return new com.byazt.jj.hp();
                }
            }
        });
        try {
            return this.f22792l.longValue() > 0 ? (com.byazt.jj.hp) futureHp.get(this.f22792l.longValue(), TimeUnit.SECONDS) : (com.byazt.jj.hp) futureHp.get();
        } catch (TimeoutException e2) {
            com.byazt.fg.hp.l("__kiteFingerTask# collection timed out" + e2.getMessage());
            return new com.byazt.jj.hp();
        }
    }
}

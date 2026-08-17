package com.byazt.gd;

import android.os.Bundle;
import com.byazt.jz.v;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 14, 38})
/* loaded from: classes2.dex */
public class j extends v.hp {
    public final com.byazt.mv.l hp;

    public j(com.byazt.mv.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.jz.v
    public Bundle hp(int i2) throws InterruptedException {
        com.byazt.mv.l lVar = this.hp;
        final Bundle bundle = new Bundle();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (lVar != null) {
            lVar.hp(i2, new com.byazt.tr.hp() { // from class: com.byazt.gd.j.1
                @Override // com.byazt.tr.hp
                public void onConditionReturn(Bundle bundle2) {
                    bundle.putAll(bundle2);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
        return bundle;
    }
}

package com.byazt.giz;

import com.byazt.jw.j;
import com.byazt.jw.w;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 596, 34})
/* loaded from: classes2.dex */
public class l {
    public static void hp(AtomicLong atomicLong, int i2, w wVar) {
        j jVarJ = wVar.j();
        if (jVarJ == null || !jVarJ.jx() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i2);
    }
}

package com.byazt.bb;

import androidx.view.AbstractC1061g;
import java.util.concurrent.atomic.AtomicReference;

@com.byazt.kj.hp(hp = {0, 1, 93, 54})
/* loaded from: classes2.dex */
public class a {
    public static final AtomicReference<Long> hp = new AtomicReference<>(0L);

    public static void hp(long j2) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 >= 5) {
                return;
            }
            AtomicReference<Long> atomicReference = hp;
            Long l2 = atomicReference.get();
            if (AbstractC1061g.a(atomicReference, l2, Long.valueOf(l2.longValue() | j2))) {
                return;
            } else {
                i2 = i3;
            }
        }
    }
}

package com.byazt.hm;

import androidx.work.WorkInfo;
import java.util.Collection;

@com.byazt.kj.hp(hp = {0, 1, 787, 34})
/* loaded from: classes2.dex */
public class l {
    public static int hp(boolean z2, int i2, int i3) {
        if (i3 == 0 || !z2) {
            return i2;
        }
        int i4 = i2 + WorkInfo.STOP_REASON_UNKNOWN;
        int iAbs = Math.abs(i4) % i3;
        return (i4 >= 0 || iAbs == 0) ? iAbs : i3 - iAbs;
    }

    public static boolean hp(int i2, Collection<?> collection) {
        return i2 >= 0 && i2 < collection.size();
    }
}

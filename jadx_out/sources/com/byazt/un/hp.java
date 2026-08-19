package com.byazt.un;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1167, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static long hp(long j2, long j3, long j4) {
        if (j4 > 0 && j2 > j4) {
            j2 = j4;
        }
        return j2 < j3 ? j3 : j2;
    }

    public static long hp(List<Long> list, int i2) {
        if (list == null || list.isEmpty()) {
            return 0L;
        }
        int iMax = Math.max(0, Math.min(100, i2));
        return list.get(Math.max(0, Math.min(list.size() - 1, ((int) Math.ceil((iMax / 100.0d) * r1)) - 1))).longValue();
    }
}

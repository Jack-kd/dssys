package com.byazt.au;

import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.byazt.yk.ec;

@com.byazt.kj.hp(hp = {0, 1, 273, 45})
/* loaded from: classes2.dex */
public class e implements ec {
    @Override // com.byazt.yk.ec
    public long hp(int i2, int i3) {
        if (i2 == 1) {
            return 3000L;
        }
        if (i2 == 2) {
            return 15000L;
        }
        if (i2 == 3) {
            return WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        }
        if (i2 > 3) {
            return PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        }
        return 0L;
    }
}

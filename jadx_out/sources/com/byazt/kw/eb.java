package com.byazt.kw;

import android.annotation.TargetApi;
import android.app.ActivityManager;

@com.byazt.kj.hp(hp = {0, 1, 756, 94})
/* loaded from: classes.dex */
public class eb {
    public static final hp hp = new l();

    @com.byazt.kj.hp(hp = {0, 1, 756, 131})
    public static class hp {
        private hp() {
        }

        public long hp(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 756, 846})
    @TargetApi(16)
    public static class l extends hp {
        private l() {
            super();
        }

        @Override // com.byazt.kw.eb.hp
        public long hp(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long hp(ActivityManager.MemoryInfo memoryInfo) {
        return hp.hp(memoryInfo);
    }
}

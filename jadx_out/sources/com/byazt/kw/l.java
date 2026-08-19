package com.byazt.kw;

import android.annotation.TargetApi;
import android.os.Debug;

@com.byazt.kj.hp(hp = {0, 1, 756, 34})
/* loaded from: classes.dex */
public class l {
    public static final hp hp = new C0300l();

    @com.byazt.kj.hp(hp = {0, 1, 756, 123})
    public static class hp {
        private hp() {
        }

        public int hp(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int jx(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int l(Debug.MemoryInfo memoryInfo) {
            return -1;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 756, 1376})
    @TargetApi(19)
    /* renamed from: com.byazt.kw.l$l, reason: collision with other inner class name */
    public static class C0300l extends hp {
        private C0300l() {
            super();
        }

        @Override // com.byazt.kw.l.hp
        public int hp(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override // com.byazt.kw.l.hp
        public int jx(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }

        @Override // com.byazt.kw.l.hp
        public int l(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }
    }

    public static int hp(Debug.MemoryInfo memoryInfo) {
        return hp.hp(memoryInfo);
    }

    public static int jx(Debug.MemoryInfo memoryInfo) {
        return hp.jx(memoryInfo);
    }

    public static int l(Debug.MemoryInfo memoryInfo) {
        return hp.l(memoryInfo);
    }
}

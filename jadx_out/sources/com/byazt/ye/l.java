package com.byazt.ye;

import android.os.Build;
import com.byakv.g.FlippedV2Impl;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 786, 34})
/* loaded from: classes3.dex */
public class l {
    public static final AtomicBoolean hp = new AtomicBoolean(false);

    public static void hp() {
        AtomicBoolean atomicBoolean = hp;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (l.class) {
            try {
                if (atomicBoolean.compareAndSet(false, true)) {
                    l().invokeHiddenApiRestrictions();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean j() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            return i2 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    private static boolean jx() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30) {
            return i2 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    private static com.byazt.ls.jx l() {
        return jx() ? new FlippedV2Impl() : j() ? new com.byazt.ls.l() : new com.byazt.ls.hp();
    }
}

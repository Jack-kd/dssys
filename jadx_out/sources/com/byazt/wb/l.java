package com.byazt.wb;

import android.os.Handler;
import android.os.Looper;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 2376, 34})
/* loaded from: classes3.dex */
public class l {
    public static final Handler hp = new Handler(Looper.getMainLooper());

    public static void hp(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            hp.post(runnable);
        }
    }

    public static void jx(Runnable runnable) {
        e.jx().post(runnable);
    }

    public static void l(Runnable runnable) {
        hp.post(runnable);
    }
}

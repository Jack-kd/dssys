package com.byazt.bb;

import android.os.Handler;
import android.os.HandlerThread;

@com.byazt.kj.hp(hp = {0, 1, 93, 94})
/* loaded from: classes2.dex */
public class eb {
    public static volatile HandlerThread hp;
    public static volatile Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile Handler f18456l;

    public static HandlerThread hp() {
        if (hp == null) {
            synchronized (eb.class) {
                try {
                    if (hp == null) {
                        HandlerThread handlerThread = new HandlerThread("default_npth_thread");
                        hp = handlerThread;
                        handlerThread.start();
                        f18456l = new Handler(hp.getLooper());
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static Handler l() {
        if (f18456l == null) {
            hp();
        }
        return f18456l;
    }
}

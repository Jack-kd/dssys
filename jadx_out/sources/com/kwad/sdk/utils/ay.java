package com.kwad.sdk.utils;

import android.content.Context;
import android.os.PowerManager;
import android.os.SystemClock;

/* loaded from: classes4.dex */
public final class ay {
    private static volatile ay bpT = new ay();
    private volatile boolean bpU;
    private volatile long bpV = 0;
    private volatile PowerManager bpW;

    public static ay VX() {
        return bpT;
    }

    public final boolean dL(Context context) {
        if (this.bpV > 0 && SystemClock.elapsedRealtime() - this.bpV < 600) {
            return this.bpU;
        }
        if (this.bpW == null && context != null) {
            synchronized (this) {
                try {
                    if (this.bpW == null) {
                        this.bpW = (PowerManager) context.getApplicationContext().getSystemService("power");
                    }
                } finally {
                }
            }
        }
        this.bpU = this.bpW != null ? this.bpW.isInteractive() : false;
        this.bpV = SystemClock.elapsedRealtime();
        return this.bpU;
    }
}

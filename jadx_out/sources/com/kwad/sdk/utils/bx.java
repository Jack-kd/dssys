package com.kwad.sdk.utils;

import android.os.SystemClock;

/* loaded from: classes4.dex */
public final class bx {
    private long brs;
    private long brt;
    private boolean bru;

    public bx() {
        reset();
    }

    private void reset() {
        this.brs = 0L;
        this.brt = -1L;
    }

    public final void Xe() {
        if (this.bru && this.brt < 0) {
            this.brt = SystemClock.elapsedRealtime();
        }
    }

    public final void Xf() {
        if (this.bru && this.brt > 0) {
            this.brs += SystemClock.elapsedRealtime() - this.brt;
            this.brt = -1L;
        }
    }

    public final long Xg() {
        if (!this.bru) {
            return 0L;
        }
        this.bru = false;
        if (this.brt > 0) {
            this.brs += SystemClock.elapsedRealtime() - this.brt;
            this.brt = -1L;
        }
        return this.brs;
    }

    public final long getTime() {
        return this.brt > 0 ? (this.brs + SystemClock.elapsedRealtime()) - this.brt : this.brs;
    }

    public final void startTiming() {
        reset();
        this.bru = true;
        this.brt = SystemClock.elapsedRealtime();
    }
}

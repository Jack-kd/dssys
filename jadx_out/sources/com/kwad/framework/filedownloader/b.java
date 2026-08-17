package com.kwad.framework.filedownloader;

import android.os.SystemClock;
import com.kwad.framework.filedownloader.s;

/* loaded from: classes4.dex */
public final class b implements s.a, s.b {
    private long ayR;
    private long ayS;
    private long ayT;
    private int ayU;
    private int ayV = 1000;
    private long mStartTime;

    @Override // com.kwad.framework.filedownloader.s.b
    public final void aa(long j2) {
        if (this.ayV <= 0) {
            return;
        }
        if (this.ayR != 0) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.ayR;
            if (jUptimeMillis < this.ayV && (this.ayU != 0 || jUptimeMillis <= 0)) {
                return;
            }
            int i2 = (int) ((j2 - this.ayS) / jUptimeMillis);
            this.ayU = i2;
            this.ayU = Math.max(0, i2);
        }
        this.ayS = j2;
        this.ayR = SystemClock.uptimeMillis();
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void end(long j2) {
        if (this.mStartTime <= 0) {
            return;
        }
        long j3 = j2 - this.ayT;
        this.ayR = 0L;
        long jUptimeMillis = SystemClock.uptimeMillis() - this.mStartTime;
        if (jUptimeMillis <= 0) {
            this.ayU = (int) j3;
        } else {
            this.ayU = (int) (j3 / jUptimeMillis);
        }
    }

    @Override // com.kwad.framework.filedownloader.s.a
    public final int getSpeed() {
        return this.ayU;
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void reset() {
        this.ayU = 0;
        this.ayR = 0L;
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void start(long j2) {
        this.mStartTime = SystemClock.uptimeMillis();
        this.ayT = j2;
    }
}

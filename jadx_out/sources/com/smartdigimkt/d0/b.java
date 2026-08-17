package com.smartdigimkt.d0;

import android.os.SystemClock;
import androidx.work.WorkRequest;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public a f39869a;

    public final synchronized c a(int i2, long j2, boolean z2) {
        c cVar;
        try {
            a aVar = this.f39869a;
            boolean z3 = false;
            boolean z4 = aVar != null;
            long j3 = z4 ? j2 - aVar.f39868a : 0L;
            if (i2 == 0) {
                return new c(true, 0, false, z4, j3);
            }
            if (i2 != 1 && i2 != 2) {
                i2 = 1;
            }
            if (z4 && j3 <= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                z3 = true;
            }
            if (i2 == 1) {
                if (z3 && z2) {
                    cVar = new c(true, 0, true, z4, j3);
                } else {
                    cVar = new c(false, !z3 ? 2 : 1, z2, z4, j3);
                }
            } else if (z2) {
                cVar = new c(true, 0, true, z4, j3);
            } else {
                cVar = new c(false, !z2 ? 1 : 2, z2, z4, j3);
            }
            if (z4) {
                this.f39869a = null;
            }
            return cVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized c a(int i2, boolean z2) {
        return a(i2, SystemClock.elapsedRealtime(), z2);
    }
}

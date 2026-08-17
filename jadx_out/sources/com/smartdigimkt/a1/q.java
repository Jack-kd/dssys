package com.smartdigimkt.a1;

import androidx.core.location.LocationRequestCompat;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final long f39299a;

    /* renamed from: b, reason: collision with root package name */
    public long f39300b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f39301c = -9223372036854775807L;

    public q(long j2) {
        synchronized (this) {
            if (this.f39301c != -9223372036854775807L) {
                throw new IllegalStateException();
            }
            this.f39299a = j2;
        }
    }

    public final long a(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f39301c != -9223372036854775807L) {
            this.f39301c = j2;
        } else {
            long j3 = this.f39299a;
            if (j3 != LocationRequestCompat.PASSIVE_INTERVAL) {
                this.f39300b = j3 - j2;
            }
            synchronized (this) {
                this.f39301c = j2;
                notifyAll();
            }
        }
        return j2 + this.f39300b;
    }

    public final long b(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f39301c != -9223372036854775807L) {
            long j3 = (this.f39301c * 90000) / C.MICROS_PER_SECOND;
            long j4 = (4294967296L + j3) / 8589934592L;
            long j5 = ((j4 - 1) * 8589934592L) + j2;
            j2 += j4 * 8589934592L;
            if (Math.abs(j5 - j3) < Math.abs(j2 - j3)) {
                j2 = j5;
            }
        }
        return a((j2 * C.MICROS_PER_SECOND) / 90000);
    }
}

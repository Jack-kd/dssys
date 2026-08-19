package com.bytedance.android.live.base.api.outer.data;

/* loaded from: classes3.dex */
public class CouponInfo {
    long amount;
    boolean applied;
    long threshold;
    long type;

    public CouponInfo(long j2, long j3, long j4, boolean z2) {
        this.type = j2;
        this.threshold = j3;
        this.amount = j4;
        this.applied = z2;
    }

    public long getAmount() {
        return this.amount;
    }

    public long getThreshold() {
        return this.threshold;
    }

    public long getType() {
        return this.type;
    }

    public boolean isApplied() {
        return this.applied;
    }
}

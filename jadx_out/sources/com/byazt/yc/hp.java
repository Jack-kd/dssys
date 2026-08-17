package com.byazt.yc;

import com.baidu.mobads.sdk.internal.bn;

@com.byazt.kj.hp(hp = {0, 1, 1638, 28})
/* loaded from: classes3.dex */
public class hp {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public int f27877l;

    public hp(int i2, int i3, long j2) {
        if (i3 < i2) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.hp = i2;
        this.f27877l = i3;
    }

    public static hp jx() {
        return new hp(1, 100, bn.f11192e);
    }

    public int hp() {
        return this.hp;
    }

    public int l() {
        return this.f27877l;
    }

    public static hp hp(int i2, int i3) {
        return new hp(i2, i3, bn.f11192e);
    }

    public static hp hp(int i2, int i3, long j2) {
        return new hp(i2, i3, j2);
    }
}

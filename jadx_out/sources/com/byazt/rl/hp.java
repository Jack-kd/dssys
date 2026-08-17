package com.byazt.rl;

/* loaded from: classes3.dex */
public enum hp {
    USE_KWS(0),
    USE_ALOG(1),
    USE_PITAYA(2),
    USE_OTHER(3);


    /* renamed from: a, reason: collision with root package name */
    public long f25231a;

    /* renamed from: w, reason: collision with root package name */
    public long f25232w;

    hp(int i2) {
        if (i2 < 0 || i2 > 63) {
            throw new IllegalArgumentException("bit argument illegal exception,range [0,63]");
        }
        this.f25232w = 1 << i2;
        this.f25231a = i2;
    }

    public long hp() {
        return this.f25232w;
    }
}

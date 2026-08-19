package com.byazt.hb;

import androidx.annotation.Nullable;

@com.byazt.kj.hp(hp = {0, 1, 1911, 28})
/* loaded from: classes2.dex */
public class hp {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public String f20651l;

    public hp(int i2, String str) {
        this.hp = i2;
        this.f20651l = str;
    }

    public int hp() {
        return this.hp;
    }

    @Nullable
    public String l() {
        return this.f20651l;
    }

    public String toString() {
        return "GMCustomAdError{mCode=" + this.hp + ", mMessage='" + this.f20651l + "'}";
    }
}

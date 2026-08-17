package com.byazt.yn;

/* loaded from: classes3.dex */
public enum s {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);


    /* renamed from: j, reason: collision with root package name */
    public final int f28153j;

    s(int i2) {
        this.f28153j = i2;
    }

    public static s hp(int i2) {
        if (i2 == 0) {
            return UNDEFINED;
        }
        if (i2 == 1) {
            return EXACTLY;
        }
        if (i2 == 2) {
            return AT_MOST;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i2)));
    }
}

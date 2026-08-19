package com.byazt.yn;

/* loaded from: classes3.dex */
public enum k {
    NO_WRAP(0),
    WRAP(1),
    WRAP_REVERSE(2);


    /* renamed from: j, reason: collision with root package name */
    public final int f28150j;

    k(int i2) {
        this.f28150j = i2;
    }

    public int hp() {
        return this.f28150j;
    }

    public static k hp(int i2) {
        if (i2 == 0) {
            return NO_WRAP;
        }
        if (i2 == 1) {
            return WRAP;
        }
        if (i2 == 2) {
            return WRAP_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i2)));
    }

    public static k hp(String str) {
        String lowerCase;
        lowerCase = str.toLowerCase();
        lowerCase.getClass();
        switch (lowerCase) {
            case "nowrap":
                return NO_WRAP;
            case "wrap":
                return WRAP;
            case "wrap_reverse":
                return WRAP_REVERSE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(lowerCase));
        }
    }
}

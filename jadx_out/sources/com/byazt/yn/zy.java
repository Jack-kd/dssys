package com.byazt.yn;

/* loaded from: classes3.dex */
public enum zy {
    STATIC(0),
    RELATIVE(1),
    ABSOLUTE(2);


    /* renamed from: j, reason: collision with root package name */
    public final int f28160j;

    zy(int i2) {
        this.f28160j = i2;
    }

    public int hp() {
        return this.f28160j;
    }

    public static zy hp(int i2) {
        if (i2 == 0) {
            return STATIC;
        }
        if (i2 == 1) {
            return RELATIVE;
        }
        if (i2 == 2) {
            return ABSOLUTE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i2)));
    }

    public static zy hp(String str) {
        str.getClass();
        switch (str) {
            case "static":
                return STATIC;
            case "relative":
                return RELATIVE;
            case "absolute":
                return ABSOLUTE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}

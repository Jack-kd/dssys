package com.byazt.yn;

/* loaded from: classes3.dex */
public enum w {
    COLUMN(0),
    COLUMN_REVERSE(1),
    ROW(2),
    ROW_REVERSE(3);


    /* renamed from: w, reason: collision with root package name */
    public final int f28157w;

    w(int i2) {
        this.f28157w = i2;
    }

    public int hp() {
        return this.f28157w;
    }

    public static w hp(int i2) {
        if (i2 == 0) {
            return COLUMN;
        }
        if (i2 == 1) {
            return COLUMN_REVERSE;
        }
        if (i2 == 2) {
            return ROW;
        }
        if (i2 == 3) {
            return ROW_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i2)));
    }

    public static w hp(String str) {
        str.getClass();
        switch (str) {
            case "column_reverse":
                return COLUMN_REVERSE;
            case "column":
                return COLUMN;
            case "row_reverse":
                return ROW_REVERSE;
            case "row":
                return ROW;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}

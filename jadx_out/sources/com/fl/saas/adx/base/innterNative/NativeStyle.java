package com.fl.saas.adx.base.innterNative;

/* loaded from: classes3.dex */
public enum NativeStyle {
    NONE,
    EXPRESS,
    NATIVE;

    public static NativeStyle create(int i2) {
        return i2 != 1 ? i2 != 2 ? NONE : NATIVE : EXPRESS;
    }
}

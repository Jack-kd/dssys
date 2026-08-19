package com.czhj.wire;

/* loaded from: classes3.dex */
public final class Wire {
    private Wire() {
    }

    public static <T> T get(T t2, T t3) {
        return t2 != null ? t2 : t3;
    }
}

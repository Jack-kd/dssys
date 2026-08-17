package com.czhj.wire;

/* loaded from: classes3.dex */
final class Preconditions {
    private Preconditions() {
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}

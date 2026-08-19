package com.byazt.kw;

import java.io.Closeable;

@com.byazt.kj.hp(hp = {0, 1, 756, 54})
/* loaded from: classes.dex */
public final class a {
    public static void hp(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}

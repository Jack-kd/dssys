package com.byazt.qkc;

import java.io.Closeable;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1695, 34})
/* loaded from: classes3.dex */
public class l {
    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }
}

package com.byazt.dnb;

import android.os.Environment;

@com.byazt.kj.hp(hp = {0, 1, 1239, 38})
/* loaded from: classes2.dex */
public class j {
    public static String hp() {
        try {
            return Environment.getExternalStorageState();
        } catch (Throwable unused) {
            return "";
        }
    }
}

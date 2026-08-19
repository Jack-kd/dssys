package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class pl {
    public static boolean a(int i2) {
        return i2 >= ((int) (Math.random() * 100.0d)) + 1;
    }

    public static boolean a(int i2, String str) {
        return !TextUtils.isEmpty(str) && i2 >= qn.a(str);
    }
}

package com.beizi.fusion;

import android.util.Base64;

/* loaded from: classes2.dex */
public abstract class i3 {
    public static String a(String str) {
        try {
            return new String(Base64.decode(str, 0));
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String b(String str) {
        try {
            return Base64.encodeToString(str.getBytes(), 2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}

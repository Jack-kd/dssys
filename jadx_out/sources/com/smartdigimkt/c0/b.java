package com.smartdigimkt.c0;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public abstract class b {
    public static boolean a(String str) {
        String str2;
        String str3;
        String str4;
        try {
            str2 = Build.MANUFACTURER;
            str3 = Build.FINGERPRINT;
            str4 = Build.BRAND;
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(str4) && str4.toLowerCase().contains(str)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2) && str2.toLowerCase().contains(str)) {
            return true;
        }
        if (!TextUtils.isEmpty(str3)) {
            if (str3.toLowerCase().contains(str)) {
                return true;
            }
        }
        return false;
    }
}

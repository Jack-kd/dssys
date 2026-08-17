package com.meishu.sdk.core.oaid;

import android.os.Build;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes4.dex */
public final class c {
    public static String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            e2.toString();
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }

    public static boolean a() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.HUAWEI) || Build.BRAND.equalsIgnoreCase(ADBidEvent.HUAWEI);
    }
}

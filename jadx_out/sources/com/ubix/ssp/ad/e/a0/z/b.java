package com.ubix.ssp.ad.e.a0.z;

import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public abstract class b {
    public static String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            u.c("System property invoke error: " + e2);
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }

    public abstract String a();

    public abstract String b();
}

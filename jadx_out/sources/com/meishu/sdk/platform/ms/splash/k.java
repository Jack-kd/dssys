package com.meishu.sdk.platform.ms.splash;

import android.content.Context;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f33184a;

    public static Boolean a(Context context) {
        Boolean bool;
        try {
            try {
                bool = f33184a;
            } catch (Throwable unused) {
                return Boolean.valueOf((context.getResources().getConfiguration().screenLayout & 15) >= 3);
            }
        } catch (Throwable unused2) {
        }
        if (bool != null) {
            return bool;
        }
        Class<?> cls = Class.forName("android.os.SystemProperties");
        f33184a = Boolean.valueOf(((String) cls.getMethod("get", String.class).invoke(cls, "ro.build.characteristics")).contains("tablet"));
        return f33184a;
    }
}

package com.smartdigimkt.c5;

import android.content.Context;

/* loaded from: classes5.dex */
public abstract class y {
    public static void a(Context context, String str, String str2, long j2) {
        if (context == null) {
            return;
        }
        try {
            com.smartdigimkt.v4.c.a().a(context, str).a(Long.valueOf(j2), str2);
        } catch (Throwable unused) {
        }
    }

    public static void b(Context context, String str, String str2, int i2) {
        if (context == null) {
            return;
        }
        try {
            com.smartdigimkt.v4.c.a().a(context, str).a(Integer.valueOf(i2), str2);
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        try {
            com.smartdigimkt.v4.c.a().a(context, str).a(str3, str2);
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context, String str, String str2) {
        if (context == null) {
            return null;
        }
        try {
            return (String) com.smartdigimkt.v4.c.a().a(context, str).b("", str2);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long a(Context context, String str, String str2) {
        if (context != null) {
            try {
                Long l2 = (Long) com.smartdigimkt.v4.c.a().a(context, str).b(0L, str2);
                if (l2 != null) {
                    return l2.longValue();
                }
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public static int a(Context context, String str, String str2, int i2) {
        if (context != null) {
            try {
                return ((Integer) com.smartdigimkt.v4.c.a().a(context, str).b(Integer.valueOf(i2), str2)).intValue();
            } catch (Throwable unused) {
            }
        }
        return i2;
    }
}

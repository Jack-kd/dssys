package com.anythink.core.common.v;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ad {
    public static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).b();
        } catch (Throwable unused) {
        }
    }

    public static void b(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(str2, str3);
        } catch (Throwable unused) {
        }
    }

    public static String c(Context context, String str, String str2, String str3) {
        if (context == null) {
            return null;
        }
        try {
            return (String) com.anythink.core.common.s.b.a().a(context, str).b(str2, str3);
        } catch (Throwable unused) {
            return str3;
        }
    }

    public static void a(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).b(str2);
        } catch (Throwable unused) {
        }
    }

    public static long b(Context context, String str, String str2, long j2) {
        if (context != null) {
            try {
                Long l2 = (Long) com.anythink.core.common.s.b.a().a(context, str).b(str2, Long.valueOf(j2));
                if (l2 != null) {
                    return l2.longValue();
                }
            } catch (Throwable unused) {
            }
        }
        return j2;
    }

    public static boolean c(Context context, String str, String str2) {
        if (context == null) {
            return true;
        }
        try {
            Boolean bool = (Boolean) com.anythink.core.common.s.b.a().a(context, str).b(str2, Boolean.TRUE);
            if (bool != null) {
                return bool.booleanValue();
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public static void a(Context context, String str, String str2, long j2) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(str2, (String) Long.valueOf(j2));
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(str2, str3, 2);
        } catch (Throwable unused) {
        }
    }

    public static int b(Context context, String str, String str2, int i2) {
        if (context != null) {
            try {
                return ((Integer) com.anythink.core.common.s.b.a().a(context, str).b(str2, Integer.valueOf(i2))).intValue();
            } catch (Throwable unused) {
            }
        }
        return i2;
    }

    public static com.anythink.core.common.s.a c(Context context, String str) {
        return com.anythink.core.common.s.b.a().a(context, str);
    }

    public static void a(Context context, String str, String str2, int i2) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(str2, (String) Integer.valueOf(i2));
        } catch (Throwable unused) {
        }
    }

    public static Map<String, ?> b(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            Map<String, ?> mapA = com.anythink.core.common.s.b.a().a(context, str).a();
            return mapA != null ? mapA : new HashMap();
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void a(Context context, String str, Map<String, Object> map) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(map);
        } catch (Throwable unused) {
        }
    }

    public static void b(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        try {
            com.anythink.core.common.s.b.a().a(context, str).a(str2, (String) Boolean.FALSE);
        } catch (Throwable unused) {
        }
    }
}

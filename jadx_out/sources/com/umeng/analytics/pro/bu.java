package com.umeng.analytics.pro;

import android.util.Log;

/* loaded from: classes5.dex */
public class bu {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48872a = "OpenId";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f48873b = false;

    public static void a(boolean z2) {
        f48873b = z2;
    }

    public static void b(String str, Object... objArr) {
        if (f48873b) {
            e(str, objArr);
        }
    }

    public static void c(String str, Object... objArr) {
        if (f48873b) {
            e(str, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        if (f48873b) {
            Log.e(f48872a, e(str, objArr));
        }
    }

    private static String e(String str, Object... objArr) {
        if (str == null && objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "-";
        }
        sb.append(String.format("[%s] ", str));
        if (objArr != null) {
            int length = objArr.length;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i3 >= objArr.length) {
                    break;
                }
                sb.append(a(objArr[i2], objArr[i3]));
                if (i3 < length - 1) {
                    sb.append(",");
                }
                i2 += 2;
            }
            if (i2 == objArr.length - 1) {
                sb.append(objArr[i2]);
            }
        }
        return sb.toString();
    }

    public static void a(String str, Object... objArr) {
        if (f48873b) {
            e(str, objArr);
        }
    }

    private static String a(Object obj, Object obj2) {
        if (obj == null) {
            obj = "";
        }
        if (obj2 == null) {
            obj2 = "";
        }
        return String.format("%s:%s", obj, obj2);
    }
}

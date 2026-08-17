package o;

import android.util.Log;

/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f52027a = false;

    public static void a(String str, Throwable th) {
        e(str, th);
    }

    public static void b(String str, Object... objArr) {
        if (f52027a) {
            f(str, objArr);
        }
    }

    public static void c(Throwable th) {
        a("oauth_", th);
    }

    public static void d(String str, Object... objArr) {
        if (f52027a) {
            f(str, objArr);
        }
    }

    public static void e(String str, Object... objArr) {
        if (f52027a) {
            Log.e("oauth_" + str, f(str, objArr));
        }
    }

    public static String f(String str, Object[] objArr) {
        if (objArr == null) {
            return "";
        }
        try {
            if (objArr.length == 0) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            int length = objArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = objArr[i2];
                if (obj != null) {
                    if (i2 != 0) {
                        stringBuffer.append("|");
                    }
                    try {
                        if (obj instanceof Throwable) {
                            stringBuffer.append(Log.getStackTraceString((Throwable) obj));
                        } else {
                            stringBuffer.append(obj.toString());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            str = stringBuffer.toString();
            return str;
        } catch (Throwable th) {
            Log.e(str, "converArrayToString t: " + th.toString());
            return "converArrayToString null";
        }
    }
}

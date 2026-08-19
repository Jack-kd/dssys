package u;

import android.util.Log;

/* renamed from: u.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1777a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f52803a = false;

    public static void a(String str, Object... objArr) {
        if (f52803a) {
            c(str, objArr);
        }
    }

    public static void b(String str, Object... objArr) {
        if (f52803a) {
            Log.e(str, c(str, objArr));
        }
    }

    public static String c(String str, Object[] objArr) {
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

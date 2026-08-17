package k1;

import android.util.Log;
import java.util.Locale;

/* loaded from: classes5.dex */
public abstract class s {
    public static String a(String str, Object... objArr) {
        if (objArr.length > 0) {
            return String.format(Locale.ENGLISH, str, objArr) + " threadId: " + Thread.currentThread().getId();
        }
        return str + " threadId: " + Thread.currentThread().getId();
    }

    public static void b(String str, String str2, Throwable th, Object... objArr) {
        if (h.f51286a) {
            Log.e(str, a(str2, objArr), th);
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (h.f51286a) {
            a(str2, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        if (h.f51286a) {
            a(str, objArr);
        }
    }
}

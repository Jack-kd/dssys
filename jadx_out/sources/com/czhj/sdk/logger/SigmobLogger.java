package com.czhj.sdk.logger;

import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class SigmobLogger {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29558a = "SigmobLogger";

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f29559b = true;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f29560c = false;

    /* renamed from: d, reason: collision with root package name */
    private static final int f29561d = 1;

    /* renamed from: e, reason: collision with root package name */
    private static final int f29562e = 1;

    /* renamed from: f, reason: collision with root package name */
    private static final int f29563f = 4;

    /* renamed from: g, reason: collision with root package name */
    private static final Set<String> f29564g = new HashSet();

    private static int a(StackTraceElement[] stackTraceElementArr) {
        for (int i2 = 1; i2 < stackTraceElementArr.length; i2++) {
            if (!stackTraceElementArr[i2].getClassName().split("\\$")[0].equals(SigmobLogger.class.getName())) {
                return i2;
            }
        }
        return -1;
    }

    public static void addCloseClass(Class<?> cls) {
        f29564g.add(cls.getSimpleName());
    }

    private static String b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int iA = a(stackTrace);
        int length = iA + 4;
        int length2 = iA + 5;
        if (length >= stackTrace.length) {
            length = stackTrace.length - 1;
        }
        if (length2 > stackTrace.length) {
            length2 = stackTrace.length;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (int i2 = length2 - 1; i2 >= length; i2--) {
            String strA = a(stackTrace[i2]);
            sb.append((CharSequence) sb2);
            sb.append(strA);
            sb.append('\n');
            sb2.append("  ");
        }
        return sb.toString();
    }

    public static void d(String str, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void dL(String str, String str2, Object... objArr) {
        if (!f29560c) {
            f29564g.contains(str);
            return;
        }
        String str3 = format(str2, objArr);
        if (str3.length() < 3000) {
            b(str);
            return;
        }
        synchronized (SigmobLogger.class) {
            int length = str3.length();
            int i2 = 0;
            int i3 = 0;
            do {
                i2 += 3000;
                if (i2 >= length) {
                    i2 = length - 1;
                }
                b(str);
                str3.substring(i3, i2);
                i3 = i2 + 1;
            } while (i2 != length - 1);
        }
    }

    public static void debug(boolean z2) {
        f29560c = z2;
    }

    public static void e(String str, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        Log.e(b(str), a(format(str2, objArr)));
    }

    public static String format(String str, Object... objArr) {
        return (objArr == null || objArr.length == 0) ? str : String.format(str, objArr);
    }

    public static void i(String str, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void w(String str, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    private static String a() {
        return Thread.currentThread().getName();
    }

    private static String b(String str) {
        return "SigmobLogger#" + str;
    }

    public static void d(String str, Throwable th, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void e(String str, Throwable th, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        Log.e(b(str), a(format(str2, objArr)), th);
    }

    public static void i(String str, Throwable th, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void w(String str, Throwable th) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
    }

    private static String a(StackTraceElement stackTraceElement) {
        return "(" + stackTraceElement.getFileName() + ':' + stackTraceElement.getLineNumber() + ')';
    }

    public static void w(String str, Throwable th, String str2, Object... objArr) {
        if (!f29560c || f29564g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    private static String a(String str) {
        return str + " [" + a() + "] " + b();
    }
}

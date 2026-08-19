package com.kuaishou.weapon.p0;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final int f31150a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f31151b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f31152c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f31153d = 3;

    /* renamed from: e, reason: collision with root package name */
    public static final int f31154e = -1;

    /* renamed from: f, reason: collision with root package name */
    public static int f31155f = -1;

    /* renamed from: g, reason: collision with root package name */
    static ThreadLocal<StringBuilder> f31156g = new ThreadLocal<>();

    /* renamed from: h, reason: collision with root package name */
    private static int f31157h;

    private static void a(int i2, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace.length < 3) {
            if (i2 != 2) {
                return;
            }
            Log.e("WeaponSDK", str);
            return;
        }
        String fileName = stackTrace[2].getFileName();
        int lineNumber = stackTrace[2].getLineNumber();
        String methodName = stackTrace[2].getMethodName();
        if (fileName.length() > 5) {
            fileName = fileName.substring(0, fileName.length() - 5);
        }
        StringBuilder sb = f31156g.get();
        if (sb == null) {
            sb = new StringBuilder();
            f31156g.set(sb);
        }
        synchronized (sb) {
            sb.setLength(0);
            sb.append("[");
            sb.append(f31157h);
            sb.append("][");
            sb.append(fileName);
            sb.append(':');
            sb.append(lineNumber);
            sb.append('.');
            sb.append(methodName);
            sb.append("] ");
            sb.append(str);
            string = sb.toString();
            f31157h++;
        }
        if (i2 != 2) {
            return;
        }
        Log.e("WeaponSDK", string);
    }

    public static void b(String str) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0 || i2 == 1) {
            a(1, str);
        }
    }

    public static void c(String str) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0 || i2 == 1 || i2 == 2) {
            a(2, str);
        }
    }

    public static void d(String str) {
    }

    public static void b(String str, Throwable th) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0 || i2 == 1) {
            a(1, str + "\n" + a(th));
        }
    }

    public static void c(String str, Throwable th) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0 || i2 == 1 || i2 == 2) {
            a(2, str + "\n" + a(th));
        }
    }

    public static void a(String str) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0) {
            a(0, str);
        }
    }

    public static void a(String str, Throwable th) {
        int i2 = f31155f;
        if (i2 == -1 || i2 == 0) {
            a(0, str + "\n" + a(th));
        }
    }

    public static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}

package com.ubix.ssp.ad.e.a0;

import android.util.Log;
import java.io.File;

/* loaded from: classes5.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f46481a = false;

    /* renamed from: b, reason: collision with root package name */
    public static String f46482b = "------UBiX_SSP: ";

    /* renamed from: c, reason: collision with root package name */
    public static boolean f46483c = false;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f46484d = false;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f46485e = false;

    private static synchronized String a(StackTraceElement[] stackTraceElementArr, String str) {
        return String.format("--->%s(L:%d)  %s", stackTraceElementArr[1].getMethodName(), Integer.valueOf(stackTraceElementArr[1].getLineNumber()), str);
    }

    public static void b() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(k.d(c.e()).getPath());
            String str = File.separator;
            sb.append(str);
            sb.append("@logopen@");
            File file = new File(sb.toString());
            File file2 = new File(k.d(c.e()).getPath() + str + "@logfullopen@");
            File file3 = new File(k.d(c.e()).getPath() + str + "@ulogopen@");
            if (file2.exists()) {
                System.out.println(f46482b + " 强制开启log");
                f46483c = true;
                f46484d = true;
                return;
            }
            if (file.exists()) {
                f46484d = false;
                f46483c = true;
            } else if (file3.exists()) {
                f46484d = false;
                f46485e = true;
            } else {
                f46483c = false;
                f46484d = false;
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(String str) {
        if (f46481a || f46485e) {
            Log.e(f46482b, a(new Throwable().getStackTrace(), str));
        } else if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str));
        }
    }

    public static void d(String str) {
        if (f46485e) {
            Log.e(f46482b, str);
            return;
        }
        if (f46483c) {
            System.out.println(f46482b + " " + str);
        }
    }

    public static void e(String str) {
        if (f46481a || f46485e) {
            a(new Throwable().getStackTrace(), str);
            return;
        }
        if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str));
        }
    }

    public static void f(String str) {
        if (f46483c || f46485e) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            while (str.length() > 2001) {
                stackTrace[1].getClassName();
                a(stackTrace, str.substring(0, 2001));
                str = str.substring(2001);
            }
            if (!f46483c) {
                a(stackTrace, str);
                return;
            }
            System.out.println(f46482b + a(stackTrace, str));
        }
    }

    public static void a(String str) {
        if (f46481a || f46485e) {
            a(new Throwable().getStackTrace(), str);
            return;
        }
        if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str));
        }
    }

    public static void b(String str) {
        if (!f46485e && f46483c) {
            System.out.println(f46482b + " " + str);
        }
    }

    public static void c(String str, String str2) {
        if (f46481a || f46485e) {
            Log.e(f46482b + str, a(new Throwable().getStackTrace(), str2));
            return;
        }
        if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str2));
        }
    }

    public static void d(String str, String str2) {
        if (f46485e) {
            Log.e(str, str2);
            return;
        }
        if (f46483c) {
            System.out.println(f46482b + " " + str + " " + str2);
        }
    }

    public static void e(String str, String str2) {
        if (f46481a || f46485e) {
            a(new Throwable().getStackTrace(), str2);
            return;
        }
        if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str2));
        }
    }

    public static void a(String str, String str2) {
        if (f46481a || f46485e) {
            a(new Throwable().getStackTrace(), str2);
            return;
        }
        if (f46483c) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            System.out.println(f46482b + " " + a(stackTrace, str2));
        }
    }

    public static void b(String str, String str2) {
        if (!f46485e && f46483c) {
            System.out.println(f46482b + " " + str2);
        }
    }

    public static boolean a() {
        return f46485e || f46483c;
    }
}

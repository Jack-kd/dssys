package com.anythink.core.common.v;

import android.util.Log;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f8246a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f8247b = false;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f8248c = false;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f8249d = false;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f8250e = false;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f8251f = false;

    /* renamed from: g, reason: collision with root package name */
    private static boolean f8252g = false;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f8253h = false;

    private m() {
    }

    private static void a(String str, String str2) {
    }

    private static void b(String str, String str2) {
    }

    private static void c(String str, String str2) {
    }

    private static void d(String str, String str2) {
    }

    private static void e(String str, String str2) {
        if (f8252g) {
            Log.e(str, str2);
        }
    }

    private static void f(String str, String str2) {
        if (f8250e) {
            int length = 2001 - str.length();
            while (str2.length() > length) {
                str2.substring(0, length);
                str2 = str2.substring(length);
            }
        }
    }

    private static void a(String str, String str2, Throwable th) {
    }

    private static void b(String str, String str2, Throwable th) {
    }

    private static void c(String str, String str2, Throwable th) {
    }

    private static void d(String str, String str2, Throwable th) {
    }

    private static void a(String str, Throwable th) {
    }

    private static void b(String str, String str2, Object... objArr) {
        if (f8249d) {
            try {
                a();
                String.format(str2, objArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void c(String str, String str2, Object... objArr) {
        if (f8249d) {
            try {
                a();
                String.format(str2, objArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void d(String str, String str2, Object... objArr) {
        if (f8252g) {
            try {
                Log.e(str, a() + String.format(str2, objArr));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void e(String str, String str2, Throwable th) {
        if (f8252g) {
            Log.e(str, str2, th);
        }
    }

    private static void a(String str, String str2, Object... objArr) {
        if (f8249d) {
            try {
                a();
                String.format(str2, objArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static String a() {
        return "<" + Thread.currentThread().getName() + ", " + Thread.currentThread().getId() + "> ";
    }
}

package com.baidu.mobads.sdk.internal;

/* loaded from: classes2.dex */
public class bv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11243a = "logger";

    /* renamed from: b, reason: collision with root package name */
    public static final int f11244b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f11245c = 3;

    /* renamed from: d, reason: collision with root package name */
    public static final int f11246d = 4;

    /* renamed from: e, reason: collision with root package name */
    public static final int f11247e = 5;

    /* renamed from: f, reason: collision with root package name */
    public static final int f11248f = 6;

    /* renamed from: g, reason: collision with root package name */
    public static final int f11249g = 7;

    /* renamed from: h, reason: collision with root package name */
    public static final int f11250h = -1;

    /* renamed from: i, reason: collision with root package name */
    private static volatile bv f11251i;

    private bv() {
    }

    private String e(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(' ');
        }
        return sb.toString();
    }

    public boolean a(String str, int i2) {
        return true;
    }

    public void b(String str) {
        if (a(5)) {
            try {
                az.c().e(str);
            } catch (Exception unused) {
            }
        }
    }

    public void c(Object... objArr) {
        if (a(6)) {
            c(e(objArr));
        }
    }

    public void d(String str) {
        b(f11243a, str);
    }

    public static bv a() {
        if (f11251i == null) {
            synchronized (bv.class) {
                try {
                    if (f11251i == null) {
                        f11251i = new bv();
                    }
                } finally {
                }
            }
        }
        return f11251i;
    }

    public void d(Object... objArr) {
        if (a(4)) {
            d(e(objArr));
        }
    }

    public void b(Object... objArr) {
        if (a(5)) {
            b(e(objArr));
        }
    }

    public void c(String str) {
        if (a(6)) {
            try {
                az.c().f(str);
            } catch (Exception unused) {
            }
        }
    }

    public void d(String str, Throwable th) {
        if (a(4)) {
            try {
                az.c().c(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void b(String str, Throwable th) {
        if (a(5)) {
            try {
                az.c().d(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void c(Throwable th) {
        c("", th);
    }

    public void c(String str, Throwable th) {
        if (a(6)) {
            try {
                az.c().e(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void b(Throwable th) {
        b("", th);
    }

    public boolean a(int i2) {
        return a(f11243a, i2);
    }

    public void b(String str, String str2) {
        if (a(4)) {
            try {
                az.c().c(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    public void a(Object... objArr) {
        if (a(3)) {
            a(e(objArr));
        }
    }

    public void a(String str) {
        a(f11243a, str);
    }

    public void a(String str, String str2) {
        if (a(3)) {
            try {
                az.h(str).c(str2);
            } catch (Exception unused) {
            }
        }
    }

    public void a(Throwable th) {
        a("", th);
    }

    public void a(String str, Throwable th) {
        if (a(3)) {
            try {
                az.h(f11243a).b(th, str);
            } catch (Exception unused) {
            }
        }
    }
}

package com.czhj.devicehelper.cnoaid;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f29113a = false;

    /* renamed from: b, reason: collision with root package name */
    private static volatile String f29114b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile String f29115c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f29116d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile String f29117e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile String f29118f;

    /* renamed from: g, reason: collision with root package name */
    private static volatile String f29119g;

    /* renamed from: h, reason: collision with root package name */
    private static volatile String f29120h;

    private b() {
    }

    public static String a() {
        return a(false);
    }

    @Deprecated
    public static String b() {
        if (f29118f == null) {
            synchronized (b.class) {
                try {
                    if (f29118f == null) {
                        f29118f = a.e();
                    }
                } finally {
                }
            }
        }
        if (f29118f == null) {
            f29118f = "";
        }
        return f29118f;
    }

    public static String c() {
        if (f29119g == null) {
            synchronized (b.class) {
                try {
                    if (f29119g == null) {
                        f29119g = a.f();
                    }
                } finally {
                }
            }
        }
        if (f29119g == null) {
            f29119g = "";
        }
        return f29119g;
    }

    public static String d(Context context) {
        if (f29120h == null) {
            synchronized (b.class) {
                try {
                    if (f29120h == null) {
                        f29120h = a.d(context);
                    }
                } finally {
                }
            }
        }
        if (f29120h == null) {
            f29120h = "";
        }
        return f29120h;
    }

    public static String a(Context context) {
        if (f29115c == null) {
            synchronized (b.class) {
                try {
                    if (f29115c == null) {
                        f29115c = a.b(context);
                    }
                } finally {
                }
            }
        }
        if (f29115c == null) {
            f29115c = "";
        }
        return f29115c;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(f29116d)) {
            synchronized (b.class) {
                try {
                    if (TextUtils.isEmpty(f29116d)) {
                        f29116d = a.d();
                        if (f29116d == null || f29116d.length() == 0) {
                            a.a(context, new c() { // from class: com.czhj.devicehelper.cnoaid.b.1
                                @Override // com.czhj.devicehelper.cnoaid.c
                                public void a(Exception exc) {
                                    String unused = b.f29116d = "";
                                }

                                @Override // com.czhj.devicehelper.cnoaid.c
                                public void a(String str) {
                                    String unused = b.f29116d = str;
                                }
                            });
                        }
                    }
                } finally {
                }
            }
        }
        if (f29116d == null) {
            f29116d = "";
        }
        return f29116d;
    }

    public static String c(Context context) {
        if (f29117e == null) {
            synchronized (b.class) {
                try {
                    if (f29117e == null) {
                        f29117e = a.c(context);
                    }
                } finally {
                }
            }
        }
        if (f29117e == null) {
            f29117e = "";
        }
        return f29117e;
    }

    public static String a(boolean z2) {
        if (TextUtils.isEmpty(f29114b)) {
            synchronized (b.class) {
                try {
                    if (TextUtils.isEmpty(f29114b)) {
                        f29114b = z2 ? a.a() : a.b();
                    }
                } finally {
                }
            }
        }
        if (f29114b == null) {
            f29114b = "";
        }
        return f29114b;
    }

    public static void a(Application application) {
        a(application, (e) null);
    }

    public static void a(Application application, e eVar) {
        a(application, false, eVar);
    }

    public static void a(Application application, boolean z2) {
        a(application, z2, null);
    }

    public static void a(Application application, boolean z2, e eVar) {
        if (f29113a || application == null) {
            return;
        }
        synchronized (b.class) {
            try {
                if (!f29113a) {
                    a.a(application, z2, eVar);
                    f29113a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

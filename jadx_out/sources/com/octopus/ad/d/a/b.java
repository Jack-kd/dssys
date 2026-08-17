package com.octopus.ad.d.a;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.c.o;

/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f33954a = false;

    /* renamed from: b, reason: collision with root package name */
    private static volatile String f33955b = null;

    /* renamed from: c, reason: collision with root package name */
    private static volatile String f33956c = null;

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f33957d = null;

    /* renamed from: e, reason: collision with root package name */
    private static volatile String f33958e = null;

    /* renamed from: f, reason: collision with root package name */
    private static volatile String f33959f = "";

    /* renamed from: g, reason: collision with root package name */
    private static volatile String f33960g = null;

    /* renamed from: h, reason: collision with root package name */
    private static volatile String f33961h = null;

    /* renamed from: i, reason: collision with root package name */
    private static volatile String f33962i = null;

    /* renamed from: j, reason: collision with root package name */
    private static volatile String f33963j = null;

    /* renamed from: k, reason: collision with root package name */
    private static boolean f33964k = true;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f33965l = true;

    /* renamed from: m, reason: collision with root package name */
    private static boolean f33966m = true;

    private b() {
    }

    public static String c(Context context) {
        f33958e = o.b(context, "hoaid");
        if (TextUtils.isEmpty(f33958e) && f33966m) {
            f33966m = false;
            synchronized (b.class) {
                try {
                    if (TextUtils.isEmpty(f33958e)) {
                        f33958e = a.a();
                        if (TextUtils.isEmpty(f33958e)) {
                            a.a(context, new c() { // from class: com.octopus.ad.d.a.b.2
                                @Override // com.octopus.ad.d.a.c
                                public void a(Exception exc) {
                                }

                                @Override // com.octopus.ad.d.a.c
                                public void a(String str) {
                                    String unused = b.f33958e = str;
                                }
                            });
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(f33958e)) {
                o.a(context, "hoaid", f33958e);
            }
        }
        if (f33958e == null) {
            f33958e = "";
        }
        f.b("Hoaid is: " + f33958e);
        return f33958e;
    }

    public static String d(Context context) {
        f33963j = o.b(context, "gaid");
        if (TextUtils.isEmpty(f33963j)) {
            if (f33963j == null) {
                f33963j = "";
            } else {
                o.a(context, "gaid", f33963j);
            }
        }
        f.b("Gaid is: " + f33963j);
        return f33963j;
    }

    public static String e(Context context) {
        if (f33964k) {
            f33964k = false;
            if (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUsePhoneState()) {
                synchronized (b.class) {
                    f33959f = a.b(context);
                }
            }
        }
        return f33959f;
    }

    public static void a(Application application) {
        if (f33954a) {
            return;
        }
        synchronized (b.class) {
            try {
                if (!f33954a) {
                    a.a(application);
                    f33954a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String b(Context context) {
        f33957d = o.b(context, "newOaid");
        if (TextUtils.isEmpty(f33957d) && f33965l) {
            f33965l = false;
            synchronized (b.class) {
                try {
                    if (TextUtils.isEmpty(f33957d)) {
                        com.octopus.ad.c.e.a(context, new com.octopus.ad.c.d() { // from class: com.octopus.ad.d.a.b.1
                            @Override // com.octopus.ad.c.d
                            public void a(String str) {
                                String unused = b.f33957d = str;
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(f33957d)) {
                o.a(context, "newOaid", f33957d);
            }
        }
        if (f33957d == null) {
            f33957d = "";
        }
        f.b("Oaid is: " + f33957d);
        return f33957d;
    }

    public static String a(Context context) {
        if (Octopus.getCustomController() != null && !Octopus.getCustomController().isCanUsePhoneState()) {
            f33956c = Octopus.getCustomController().getImei();
        } else if (f33956c == null) {
            synchronized (b.class) {
                try {
                    if (f33956c == null) {
                        f33956c = a.a(context);
                    }
                } finally {
                }
            }
        }
        if (f33956c == null) {
            f33956c = "";
        }
        return f33956c;
    }
}

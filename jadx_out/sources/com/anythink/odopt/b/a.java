package com.anythink.odopt.b;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.l;
import com.anythink.odopt.a.b;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f10640a = 0;

    /* renamed from: c, reason: collision with root package name */
    private static String f10642c = "";

    /* renamed from: d, reason: collision with root package name */
    private static boolean f10643d = false;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f10644e = false;

    /* renamed from: f, reason: collision with root package name */
    private static final long f10645f = 5000;

    /* renamed from: g, reason: collision with root package name */
    private static final int f10646g = 10;

    /* renamed from: h, reason: collision with root package name */
    private static AtomicInteger f10647h = new AtomicInteger(0);

    /* renamed from: i, reason: collision with root package name */
    private static AtomicLong f10648i = new AtomicLong(0);

    /* renamed from: j, reason: collision with root package name */
    private static Object f10649j = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f10641b = false;

    public static String c(final Context context) {
        if (s.b().c("oaid")) {
            a(1, "");
            return "";
        }
        if (!TextUtils.isEmpty(f10642c)) {
            return f10642c;
        }
        synchronized (f10649j) {
            try {
                if (!f10644e) {
                    f10644e = true;
                    f10642c = ad.c(context, t.b.f3058a, "oaid", "");
                }
                if (!TextUtils.isEmpty(f10642c)) {
                    return f10642c;
                }
                if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
                    s.b();
                    s.b().g();
                    if (!s.y()) {
                        a(ATSDKGlobalSetting.isDenyApi_getRunningAppProcesses() ? 2 : 3, "");
                        return "";
                    }
                }
                if (f10643d) {
                    return f10642c;
                }
                f10643d = true;
                f10640a = System.currentTimeMillis();
                final Object obj = new Object();
                final boolean[] zArr = {false};
                c();
                b.a(context, new com.anythink.odopt.a.a() { // from class: com.anythink.odopt.b.a.2
                    @Override // com.anythink.odopt.a.a
                    public final void a(String str, boolean z2) {
                        if (!a.a(str)) {
                            a.a(context, str, true);
                        }
                        try {
                            s.b().h(str);
                            synchronized (obj) {
                                obj.notifyAll();
                            }
                        } catch (Throwable unused) {
                        }
                        zArr[0] = true;
                    }

                    @Override // com.anythink.odopt.a.a
                    public final void a(String str) {
                        zArr[0] = true;
                        try {
                            synchronized (obj) {
                                obj.notifyAll();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
                if (!zArr[0]) {
                    try {
                        synchronized (obj) {
                            obj.wait(1500L);
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (!zArr[0] && TextUtils.isEmpty(f10642c)) {
                    a(4, "");
                }
                String str = f10642c;
                if (str == null) {
                    str = "";
                }
                return str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Context context, String str, boolean z2) {
        f10642c = str;
        l.d(str);
        if (!TextUtils.isEmpty(str)) {
            f10647h.set(11);
        }
        if (z2) {
            ad.b(context, t.b.f3058a, "oaid", str);
        }
    }

    public static String b(Context context) {
        String strC = c(context);
        return !TextUtils.isEmpty(strC) ? strC : "";
    }

    private static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return Pattern.matches("^[0-]+$", str);
    }

    public static void a(final Context context) {
        String strC = ad.c(context, t.b.f3058a, "oaid", "");
        a(context, strC, false);
        f10648i.set(System.currentTimeMillis());
        if (!TextUtils.isEmpty(strC) || s.b().c("oaid")) {
            return;
        }
        c.a().d(new d(e.aJ, new Runnable() { // from class: com.anythink.odopt.b.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a.c(context);
            }
        }));
    }

    public static String a() {
        if (s.b().c("oaid")) {
            return "";
        }
        if (TextUtils.isEmpty(f10642c) && System.currentTimeMillis() - f10648i.get() > 5000 && f10647h.get() < 10 && s.b().W()) {
            c();
            c.a().a(new d(e.aK, new Runnable() { // from class: com.anythink.odopt.b.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    final Context contextG = s.b().g();
                    if (contextG != null) {
                        b.a(contextG, new com.anythink.odopt.a.a() { // from class: com.anythink.odopt.b.a.3.1
                            @Override // com.anythink.odopt.a.a
                            public final void a(String str, boolean z2) {
                                if (!a.a(str)) {
                                    a.a(contextG, str, true);
                                }
                                try {
                                    s.b().h(str);
                                } catch (Throwable unused) {
                                }
                            }

                            @Override // com.anythink.odopt.a.a
                            public final void a(String str) {
                                if (a.f10647h.get() == 10) {
                                    a.a(6, str);
                                }
                            }
                        });
                    }
                }
            }));
        }
        return f10642c;
    }

    public static void a(final int i2, final String str) {
        if (!f10641b || i2 == 6) {
            f10641b = true;
            final long jCurrentTimeMillis = f10640a > 0 ? System.currentTimeMillis() - f10640a : 0L;
            c.a().d(new d(e.aL, new Runnable() { // from class: com.anythink.odopt.b.a.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (s.b().g() == null) {
                        return;
                    }
                    int iB = ad.b(s.b().g(), t.b.f3058a, "oaid_fail_count", 0);
                    if (i2 != 6) {
                        if (iB >= 3) {
                            return;
                        }
                        iB++;
                        ad.a(s.b().g(), t.b.f3058a, "oaid_fail_count", iB);
                    }
                    f.a(iB, i2, str, jCurrentTimeMillis);
                }
            }));
        }
    }

    public static /* synthetic */ boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return Pattern.matches("^[0-]+$", str);
    }

    private static void c() {
        f10647h.incrementAndGet();
        f10648i.set(System.currentTimeMillis());
    }
}

package com.octopus.ad.internal.c;

import android.content.Context;
import com.octopus.ad.internal.c.g;
import java.lang.ref.SoftReference;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static String f34565a = "OCTOPUS_SDK";

    /* renamed from: b, reason: collision with root package name */
    public static String f34566b = f34565a + "-MEDIATION";

    /* renamed from: c, reason: collision with root package name */
    public static String f34567c = f34565a + "-INTERFACE";

    /* renamed from: d, reason: collision with root package name */
    public static String f34568d = f34565a + "-REQUEST";

    /* renamed from: e, reason: collision with root package name */
    public static String f34569e = f34565a + "-RESPONSE";

    /* renamed from: f, reason: collision with root package name */
    public static String f34570f = f34565a + "-PB";

    /* renamed from: g, reason: collision with root package name */
    public static String f34571g = f34565a + "-XML";

    /* renamed from: h, reason: collision with root package name */
    public static String f34572h = f34565a + "-JSON";

    /* renamed from: i, reason: collision with root package name */
    public static String f34573i = f34565a + "-JS";

    /* renamed from: j, reason: collision with root package name */
    public static String f34574j = f34565a + "-MRAID";

    /* renamed from: k, reason: collision with root package name */
    public static String f34575k = f34565a + "-APPBROWSER";

    /* renamed from: l, reason: collision with root package name */
    public static String f34576l = f34565a + "-NATIVE";

    /* renamed from: m, reason: collision with root package name */
    public static String f34577m = f34565a + "-VIDEO";

    /* renamed from: n, reason: collision with root package name */
    public static String f34578n = f34565a + "-FIX";

    /* renamed from: o, reason: collision with root package name */
    public static String f34579o = f34565a + "-PINGER";

    /* renamed from: p, reason: collision with root package name */
    public static String f34580p = f34565a + "-LRUDISKUSAGE";

    /* renamed from: q, reason: collision with root package name */
    public static String f34581q = f34565a + "-CACHESERVER";

    /* renamed from: r, reason: collision with root package name */
    public static String f34582r = f34565a + "-URLSOURCE";

    /* renamed from: s, reason: collision with root package name */
    public static String f34583s = f34565a + "-PROXYCACHE";

    /* renamed from: t, reason: collision with root package name */
    public static String f34584t = f34565a + "-PROXYCACHEUTILS";

    /* renamed from: u, reason: collision with root package name */
    public static String f34585u = f34565a + "-STORAGEUTILS";

    /* renamed from: v, reason: collision with root package name */
    private static SoftReference<Context> f34586v = new SoftReference<>(null);

    /* renamed from: w, reason: collision with root package name */
    private static String f34587w = "";

    /* renamed from: x, reason: collision with root package name */
    private static String f34588x = "";

    /* renamed from: y, reason: collision with root package name */
    private static String f34589y = "";

    /* renamed from: z, reason: collision with root package name */
    private static final ArrayList<g> f34590z = new ArrayList<>();

    private static void a(String str, String str2, int i2, Throwable th) {
    }

    public static void b(String str, String str2) {
        if (str2 != null) {
            a(g.a.D, str, str2);
            a(str, str2, 4, (Throwable) null);
        }
    }

    public static void c(String str, String str2) {
        if (str2 != null) {
            a(g.a.I, str, str2);
            a(str, str2, 4, (Throwable) null);
        }
    }

    public static void d(String str, String str2) {
        if (str2 != null) {
            a(g.a.W, str, str2);
            a(str, str2, 5, (Throwable) null);
        }
    }

    public static void e(String str, String str2) {
        if (str2 != null) {
            a(g.a.E, str, str2);
            a(str, str2, 6, (Throwable) null);
        }
    }

    public static void a(String str, String str2) {
        if (str2 != null) {
            a(g.a.V, str, str2);
            a(str, str2, 4, (Throwable) null);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (str2 != null) {
            a(g.a.E, str, str2, th);
            a(str, str2, 6, th);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (str2 != null) {
            a(g.a.W, str, str2, th);
            a(str, str2, 5, th);
        }
    }

    public static void a(Context context) {
        f34586v = new SoftReference<>(context);
    }

    public static String a(int i2) {
        try {
            Context context = f34586v.get();
            if (context == null) {
                return null;
            }
            return context.getString(i2);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            return null;
        }
    }

    public static synchronized void a() {
        f34588x = "";
    }

    public static synchronized void a(String str) {
        f34588x = str;
    }

    private static synchronized void a(g.a aVar, String str, String str2) {
        a(aVar, str, str2, (Throwable) null);
    }

    private static synchronized void a(g.a aVar, String str, String str2, Throwable th) {
        try {
            ArrayList<g> arrayList = f34590z;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                g gVar = arrayList.get(i2);
                i2++;
                g gVar2 = gVar;
                if (aVar.ordinal() >= gVar2.a().ordinal()) {
                    if (th != null) {
                        gVar2.a(aVar, str, str2, th);
                    } else {
                        gVar2.a(aVar, str, str2);
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}

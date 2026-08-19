package com.anythink.core.common.v;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.c.f;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.o;
import io.flutter.embedding.android.FlutterActivity;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class l {

    /* renamed from: K, reason: collision with root package name */
    private static volatile String f8200K = null;

    /* renamed from: L, reason: collision with root package name */
    private static volatile String f8201L = null;

    /* renamed from: M, reason: collision with root package name */
    private static volatile String f8202M = null;

    /* renamed from: N, reason: collision with root package name */
    private static volatile String f8203N = null;

    /* renamed from: O, reason: collision with root package name */
    private static volatile String f8204O = null;

    /* renamed from: P, reason: collision with root package name */
    private static volatile String f8205P = null;

    /* renamed from: Q, reason: collision with root package name */
    private static volatile String f8206Q = null;

    /* renamed from: R, reason: collision with root package name */
    private static String f8207R = null;

    /* renamed from: S, reason: collision with root package name */
    private static String f8208S = null;

    /* renamed from: T, reason: collision with root package name */
    private static String f8209T = null;

    /* renamed from: U, reason: collision with root package name */
    private static String f8210U = null;

    /* renamed from: V, reason: collision with root package name */
    private static String f8211V = null;

    /* renamed from: W, reason: collision with root package name */
    private static String f8212W = null;

    /* renamed from: X, reason: collision with root package name */
    private static String f8213X = null;

    /* renamed from: Y, reason: collision with root package name */
    private static String f8214Y = null;

    /* renamed from: Z, reason: collision with root package name */
    private static String f8215Z = null;

    /* renamed from: a, reason: collision with root package name */
    public static String f8216a = null;
    private static String aa = null;
    private static String ab = null;
    private static String ac = null;
    private static String ad = null;
    private static volatile PackageInfo ae = null;
    private static BatteryManager af = null;

    /* renamed from: b, reason: collision with root package name */
    public static String f8217b = null;

    /* renamed from: d, reason: collision with root package name */
    public static final String f8219d = "unknown";

    /* renamed from: e, reason: collision with root package name */
    static String f8220e = null;

    /* renamed from: f, reason: collision with root package name */
    private static final String f8221f = "l";

    /* renamed from: h, reason: collision with root package name */
    private static volatile String f8223h;

    /* renamed from: j, reason: collision with root package name */
    private static volatile String f8225j;

    /* renamed from: k, reason: collision with root package name */
    private static int f8226k;

    /* renamed from: l, reason: collision with root package name */
    private static volatile boolean f8227l;

    /* renamed from: m, reason: collision with root package name */
    private static String f8228m;

    /* renamed from: n, reason: collision with root package name */
    private static volatile PackageInfo f8229n;

    /* renamed from: o, reason: collision with root package name */
    private static volatile String f8230o;

    /* renamed from: g, reason: collision with root package name */
    private static final JSONObject f8222g = new JSONObject();

    /* renamed from: i, reason: collision with root package name */
    private static String f8224i = null;

    /* renamed from: c, reason: collision with root package name */
    public static volatile String f8218c = "";

    /* renamed from: p, reason: collision with root package name */
    private static volatile String f8231p = null;

    /* renamed from: q, reason: collision with root package name */
    private static String f8232q = "";

    /* renamed from: r, reason: collision with root package name */
    private static String f8233r = "";

    /* renamed from: s, reason: collision with root package name */
    private static String f8234s = "";

    /* renamed from: t, reason: collision with root package name */
    private static String f8235t = "";

    /* renamed from: u, reason: collision with root package name */
    private static int f8236u = 0;

    /* renamed from: v, reason: collision with root package name */
    private static String f8237v = "";

    /* renamed from: w, reason: collision with root package name */
    private static String f8238w = "";

    /* renamed from: x, reason: collision with root package name */
    private static String f8239x = null;

    /* renamed from: y, reason: collision with root package name */
    private static String f8240y = "";

    /* renamed from: z, reason: collision with root package name */
    private static String f8241z = "";

    /* renamed from: A, reason: collision with root package name */
    private static volatile String f8190A = null;

    /* renamed from: B, reason: collision with root package name */
    private static volatile String f8191B = null;

    /* renamed from: C, reason: collision with root package name */
    private static volatile int f8192C = -1;

    /* renamed from: D, reason: collision with root package name */
    private static volatile double f8193D = 0.0d;

    /* renamed from: E, reason: collision with root package name */
    private static volatile int f8194E = -1;

    /* renamed from: F, reason: collision with root package name */
    private static volatile int f8195F = -999;

    /* renamed from: G, reason: collision with root package name */
    private static volatile int f8196G = -1;

    /* renamed from: H, reason: collision with root package name */
    private static volatile int f8197H = -1;

    /* renamed from: I, reason: collision with root package name */
    private static volatile int f8198I = -1;

    /* renamed from: J, reason: collision with root package name */
    private static volatile int f8199J = -1;
    private static volatile String ag = null;
    private static final Object ah = new Object();
    private static final Object ai = new Object();
    private static final Object aj = new Object();
    private static final Object ak = new Object();
    private static final Object al = new Object();
    private static final Object am = new Object();
    private static final Object an = new Object();
    private static final Object ao = new Object();
    private static final Object ap = new Object();
    private static final Object aq = new Object();
    private static final Object ar = new Object();
    private static final Object as = new Object();
    private static final Object at = new Object();
    private static final Object au = new Object();
    private static final Object av = new Object();
    private static final Object aw = new Object();
    private static final Object ax = new Object();

    /* renamed from: com.anythink.core.common.v.l$1, reason: invalid class name */
    public class AnonymousClass1 implements f.a {
        @Override // com.anythink.core.common.c.f.a
        public final void a(PackageInfo packageInfo) {
            synchronized (l.ai) {
                if (packageInfo != null) {
                    try {
                        String unused = l.f8239x = packageInfo.versionName;
                        String unused2 = l.f8239x;
                        l.M();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    /* renamed from: com.anythink.core.common.v.l$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f8244a;

        public AnonymousClass3(Context context) {
            this.f8244a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebView webView = new WebView(this.f8244a);
            o.a(webView);
            String unused = l.f8231p = webView.getSettings().getUserAgentString();
            String unused2 = l.f8231p;
            l.M();
            ad.b(this.f8244a, t.b.f3058a, t.a.f3049r, l.f8231p);
            ad.b(this.f8244a, t.b.f3058a, t.a.f3050s, Build.VERSION.RELEASE);
        }
    }

    private l() {
    }

    public static String A() {
        if (R()) {
            return "";
        }
        if (f8213X == null) {
            try {
                f8213X = Build.HOST;
            } catch (Throwable unused) {
                f8213X = "";
            }
        }
        String str = f8213X;
        if (str == null) {
            f8213X = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8213X;
    }

    public static String B() {
        if (R()) {
            return "";
        }
        if (f8214Y == null) {
            try {
                f8214Y = Build.VERSION.CODENAME;
            } catch (Throwable unused) {
                f8214Y = "";
            }
        }
        String str = f8214Y;
        if (str == null) {
            f8214Y = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8214Y;
    }

    private static String C(Context context) {
        String strD;
        if (context == null) {
            return "";
        }
        try {
            strD = d(context);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strD)) {
            return "";
        }
        if (TextUtils.isEmpty(f8220e)) {
            f8220e = n.b(strD);
        }
        return f8220e;
    }

    private static boolean D(Context context) {
        return f(context) == 2;
    }

    private static int E(Context context) {
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static int F(Context context) {
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private static int G(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return -1;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || !p.a(com.kuaishou.weapon.p0.g.f31160b, context) || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return -1;
            }
            if (activeNetworkInfo.getType() == 1) {
                return -2;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return -1;
            }
            return telephonyManager.getNetworkType();
        } catch (Throwable unused) {
        }
        return -1;
    }

    private static void H(Context context) {
        com.anythink.core.common.d.s.b();
        com.anythink.core.common.c.b.a().a(context, o.a.f8258a, new AnonymousClass1());
    }

    private static boolean I(Context context) {
        return !com.anythink.core.e.d.a(context).b(com.anythink.core.common.d.s.b().p()).an();
    }

    private static PackageInfo J(Context context) {
        PackageInfo packageInfo;
        if (ae == null) {
            synchronized (as) {
                try {
                    if (ae == null) {
                        try {
                            ae = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                        } catch (Throwable unused) {
                            if (ae == null) {
                                packageInfo = new PackageInfo();
                            }
                        }
                        if (ae == null) {
                            packageInfo = new PackageInfo();
                            ae = packageInfo;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return ae;
    }

    public static /* synthetic */ void M() {
    }

    private static int P() {
        return Build.VERSION.SDK_INT;
    }

    private static void Q() {
    }

    private static boolean R() {
        Context contextG = com.anythink.core.common.d.s.b().g();
        return !com.anythink.core.common.d.u.a(contextG).b() || I(contextG) || com.anythink.core.common.d.s.b().c("device_minor_data_deny");
    }

    private static void S() {
    }

    private static void T() {
    }

    private static int a(int i2) {
        if (i2 == 20) {
            return 16;
        }
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 13;
            default:
                return -1;
        }
    }

    public static String b(Context context) {
        if (com.anythink.core.common.d.s.b().c("mcc")) {
            return "";
        }
        if (context == null) {
            com.anythink.core.common.d.s.b().g();
        }
        try {
            return !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() ? "" : f8240y;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c(Context context) {
        if (com.anythink.core.common.d.s.b().c("mnc")) {
            return "";
        }
        if (context == null) {
            com.anythink.core.common.d.s.b().g();
        }
        try {
            return !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() ? "" : f8241z;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d(Context context) {
        if (com.anythink.core.common.d.s.b().c("android_id") || !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
            return "";
        }
        if (f8230o != null) {
            return f8230o;
        }
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        if (rVarC != null) {
            if (context == null) {
                context = com.anythink.core.common.d.s.b().g();
            }
            synchronized (aj) {
                try {
                    if (f8230o != null) {
                        return f8230o;
                    }
                    String strC = ad.c(context, t.b.f3058a, t.a.f3038g, "");
                    f8230o = strC;
                    if (TextUtils.isEmpty(strC)) {
                        f8230o = rVarC.getAid(context);
                        if (!TextUtils.isEmpty(f8230o)) {
                            ad.b(context, t.b.f3058a, t.a.f3038g, f8230o);
                        }
                    }
                    if (f8230o == null) {
                        f8230o = "";
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8230o;
    }

    public static String h(Context context) {
        if (com.anythink.core.common.d.s.b().c("app_vn")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        try {
            if (!TextUtils.isEmpty(f8235t)) {
                return f8235t;
            }
            String str = x(context).versionName;
            f8235t = str;
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String i(Context context) {
        if (com.anythink.core.common.d.s.b().c("screen")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append((context == null ? com.anythink.core.common.d.s.b().g() : context).getResources().getDisplayMetrics().widthPixels);
            sb.append("*");
            if (context == null) {
                context = com.anythink.core.common.d.s.b().g();
            }
            sb.append(context.getResources().getDisplayMetrics().heightPixels);
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String j(Context context) {
        if (com.anythink.core.common.d.s.b().c("package_name")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        try {
            if (!TextUtils.isEmpty(f8234s)) {
                return f8234s;
            }
            String str = x(context).packageName;
            f8234s = str;
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String k(Context context) {
        if (com.anythink.core.common.d.s.b().c("it_src")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        try {
            String str = f8216a;
            if (str != null) {
                return str;
            }
            String installerPackageName = context.getPackageManager().getInstallerPackageName(j(context));
            f8216a = installerPackageName;
            if (installerPackageName == null) {
                f8216a = "";
            }
            return f8216a;
        } catch (Throwable unused) {
            return "";
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String l(Context context) {
        if (com.anythink.core.common.d.s.b().c("network_type")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            if (context == null) {
                return "-1";
            }
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    return "-1";
                }
                if (p.a(com.kuaishou.weapon.p0.g.f31160b, context)) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        return "-1";
                    }
                    int i2 = 1;
                    if (activeNetworkInfo.getType() == 1) {
                        return "-2";
                    }
                    try {
                        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                        if (telephonyManager == null) {
                            return "-3";
                        }
                        int networkType = telephonyManager.getNetworkType();
                        StringBuilder sb = new StringBuilder();
                        if (networkType != 20) {
                            switch (networkType) {
                                case 1:
                                case 2:
                                case 4:
                                case 7:
                                case 11:
                                    break;
                                case 3:
                                case 5:
                                case 6:
                                case 8:
                                case 9:
                                case 10:
                                case 12:
                                case 14:
                                case 15:
                                    i2 = 3;
                                    break;
                                case 13:
                                    i2 = 13;
                                    break;
                                default:
                                    i2 = -1;
                                    break;
                            }
                        } else {
                            i2 = 16;
                        }
                        sb.append(i2);
                        return sb.toString();
                    } catch (Throwable unused) {
                    }
                }
                return "-3";
            } catch (Throwable unused2) {
                return "-1";
            }
        } catch (Exception unused3) {
            return "";
        }
    }

    public static String m(Context context) {
        if (TextUtils.isEmpty(f8217b)) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            f8217b = String.valueOf(displayMetrics.density);
        }
        return f8217b;
    }

    public static void n(Context context) {
        try {
            f8231p = WebSettings.getDefaultUserAgent(context);
            ad.b(context, t.b.f3058a, t.a.f3049r, f8231p);
            ad.b(context, t.b.f3058a, t.a.f3050s, Build.VERSION.RELEASE);
        } catch (Throwable unused) {
        }
    }

    public static void o(Context context) {
        synchronized (al) {
            try {
                if (TextUtils.isEmpty(com.anythink.core.common.d.s.b().C())) {
                    com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
                    String uniqueId = rVarC != null ? rVarC.getUniqueId(context) : "";
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = p(context);
                    }
                    if (TextUtils.isEmpty(uniqueId) || Pattern.matches("^[0-]+$", uniqueId)) {
                        uniqueId = p();
                    }
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = d(context);
                    }
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = UUID.randomUUID().toString();
                    }
                    com.anythink.core.common.d.s.b().l(n.a(uniqueId));
                    com.anythink.core.common.d.s.b().C();
                    com.anythink.core.common.u.f.a("", "3", "", String.valueOf(System.currentTimeMillis()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String p(final Context context) {
        if (context == null || com.anythink.core.common.d.s.b().c("gaid")) {
            return "";
        }
        String strF = f();
        if (!TextUtils.isEmpty(strF)) {
            return strF;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return "";
        }
        synchronized (am) {
            try {
                if (!TextUtils.isEmpty(f8223h)) {
                    return f8223h;
                }
                Callable<String> callable = new Callable<String>() { // from class: com.anythink.core.common.v.l.4
                    /* JADX INFO: Access modifiers changed from: private */
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public String call() {
                        String strA;
                        try {
                            try {
                                Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                                Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                                Object objInvoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context);
                                Method method = cls2.getMethod("getId", null);
                                method.setAccessible(true);
                                strA = (String) method.invoke(objInvoke, null);
                            } catch (Throwable unused) {
                                strA = "";
                            }
                        } catch (Throwable unused2) {
                            strA = new com.anythink.core.common.d.e().a(context).a();
                        }
                        l.M();
                        return strA;
                    }
                };
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
                try {
                    String str = (String) threadPoolExecutor.submit(callable).get(2L, TimeUnit.SECONDS);
                    if (!TextUtils.isEmpty(str) && !Pattern.matches("^[0-]+$", str)) {
                        f8223h = str;
                        ad.b(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3035d, f8223h);
                    }
                    try {
                        threadPoolExecutor.shutdown();
                    } catch (Throwable unused) {
                    }
                    return str;
                } catch (Throwable unused2) {
                    threadPoolExecutor.shutdown();
                    return "";
                }
            } catch (Throwable unused3) {
                return "";
            }
        }
    }

    public static int q(Context context) {
        if (f8196G == -1) {
            f8196G = p.a(context, "com.tencent.mm") ? 1 : 0;
        }
        return f8196G;
    }

    public static String r() {
        if (j("cpu")) {
            return "";
        }
        if (f8202M == null) {
            synchronized (at) {
                try {
                    if (f8202M == null) {
                        f8202M = u.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8202M;
    }

    public static String s() {
        if (j("isroot")) {
            return "";
        }
        if (f8203N == null) {
            synchronized (au) {
                try {
                    if (f8203N == null) {
                        f8203N = u.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8203N;
    }

    public static String t(Context context) {
        if (f8204O == null) {
            synchronized (av) {
                try {
                    if (f8204O == null) {
                        f8204O = u.d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8204O;
    }

    public static String u(Context context) {
        if (f8205P == null) {
            synchronized (aw) {
                try {
                    if (f8205P == null) {
                        f8205P = u.e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8205P;
    }

    public static String v(Context context) {
        return j(com.anythink.core.common.m.f.aP) ? "" : u.b(context);
    }

    public static String w(Context context) {
        return j("battery") ? "" : u.f(context);
    }

    public static String x() {
        if (R()) {
            return "";
        }
        if (f8210U == null) {
            try {
                f8210U = Build.RADIO;
            } catch (Throwable unused) {
                f8210U = "";
            }
        }
        String str = f8210U;
        if (str == null) {
            f8210U = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8210U;
    }

    public static String y() {
        if (R()) {
            return "";
        }
        if (f8211V == null) {
            try {
                f8211V = Build.BOOTLOADER;
            } catch (Throwable unused) {
                f8211V = "";
            }
        }
        String str = f8211V;
        return (str == null || !"unknown".equals(str)) ? f8211V : "";
    }

    public static String z() {
        if (R()) {
            return "";
        }
        if (f8212W == null) {
            try {
                f8212W = Build.HARDWARE;
            } catch (Throwable unused) {
                f8212W = "";
            }
        }
        String str = f8212W;
        if (str == null) {
            f8212W = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8212W;
    }

    public static String D() {
        if (R()) {
            return "";
        }
        if (aa == null) {
            try {
                aa = Build.SERIAL;
            } catch (Throwable unused) {
                aa = "";
            }
        }
        String str = aa;
        if (str == null) {
            aa = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return aa;
    }

    public static void a(Context context) {
        try {
            d();
            j(context);
            h(context);
            g(context);
            f(context);
            a();
            b();
            d(context);
            p(context);
            e(context);
            c();
            com.anythink.core.common.d.s.b();
            com.anythink.core.common.c.b.a().a(context, o.a.f8258a, new AnonymousClass1());
            y(context);
            z(context);
            A(context);
            B(context);
            try {
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                if (p.b(simOperator) && simOperator.length() > 3) {
                    f8240y = simOperator.substring(0, 3);
                    f8241z = simOperator.substring(3, simOperator.length());
                }
            } catch (Throwable unused) {
            }
            r();
            s();
            t(context);
            u(context);
            t();
            u();
            v();
            w();
            x();
            y();
            z();
            A();
            B();
            C();
            D();
            E();
            F();
            G();
        } catch (Throwable unused2) {
        }
    }

    public static String e(Context context) {
        if (com.anythink.core.common.d.s.b().c("language")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            if (!TextUtils.isEmpty(f8237v)) {
                return f8237v;
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            f8237v = language;
            return language;
        } catch (Exception unused) {
            return "";
        }
    }

    public static int f(Context context) {
        if (com.anythink.core.common.d.s.b().c("orient")) {
            return 0;
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        return context.getResources().getConfiguration().orientation == 2 ? 2 : 1;
    }

    public static String g(Context context) {
        if (com.anythink.core.common.d.s.b().c("app_vc")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        if (f8236u != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(f8236u);
            return sb.toString();
        }
        try {
            f8236u = x(context).versionCode;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8236u);
            return sb2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String H() {
        return f8228m;
    }

    public static String I() {
        String str;
        try {
        } catch (Throwable unused) {
            if (f8190A == null) {
            }
        }
        if (com.anythink.core.common.d.s.b().c("ip_v4")) {
            str = "";
            if (f8190A == null) {
            }
            return str;
        }
        if (f8190A != null) {
            str = f8190A;
            if (f8190A != null) {
                return str;
            }
        } else {
            if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
                com.anythink.core.common.d.s.b();
                if (!com.anythink.core.common.d.s.y()) {
                    str = f8190A;
                    if (f8190A != null) {
                        return str;
                    }
                }
            }
            synchronized (aq) {
                if (f8190A != null) {
                    String str2 = f8190A;
                    if (f8190A == null) {
                        f8190A = "";
                    }
                    return str2;
                }
                ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
                int size = list.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = list.get(i2);
                    i2++;
                    ArrayList list2 = Collections.list(((NetworkInterface) obj).getInetAddresses());
                    int size2 = list2.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj2 = list2.get(i3);
                        i3++;
                        InetAddress inetAddress = (InetAddress) obj2;
                        if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                            String hostAddress = inetAddress.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                f8190A = hostAddress;
                            }
                        }
                    }
                }
                if (f8190A == null) {
                    f8190A = "";
                }
                if (f8190A == null) {
                    f8190A = "";
                }
                return f8190A;
            }
        }
        f8190A = "";
        return str;
    }

    public static String E() {
        if (R()) {
            return "";
        }
        if (ab == null) {
            try {
                ab = Build.DISPLAY;
            } catch (Throwable unused) {
                ab = "";
            }
        }
        String str = ab;
        if (str == null) {
            ab = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return ab;
    }

    public static String F() {
        if (R()) {
            return "";
        }
        if (ac == null) {
            try {
                ac = "1";
            } catch (Throwable unused) {
                ac = "";
            }
        }
        return ac;
    }

    public static int q() {
        if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
            return -1;
        }
        if (f8226k <= 0 && !f8227l) {
            synchronized (ao) {
                try {
                    if (!f8227l) {
                        int i2 = 1;
                        f8227l = true;
                        try {
                            if (Settings.Secure.getInt(com.anythink.core.common.d.s.b().g().getContentResolver(), "limit_ad_tracking") != 0) {
                                i2 = 2;
                            }
                            f8226k = i2;
                        } catch (Throwable unused) {
                            f8226k = -1;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8226k;
    }

    public static String v() {
        if (R()) {
            return "";
        }
        if (TextUtils.isEmpty(f8208S)) {
            try {
                f8208S = Build.TAGS;
            } catch (Throwable unused) {
            }
        }
        String str = f8208S;
        if (str == null) {
            f8208S = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8208S;
    }

    public static String w() {
        if (R()) {
            return "";
        }
        if (f8209T == null) {
            try {
                f8209T = Build.USER;
            } catch (Throwable unused) {
                f8209T = "";
            }
        }
        String str = f8209T;
        if (str == null) {
            f8209T = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8209T;
    }

    public static String b() {
        if (com.anythink.core.common.d.s.b().c("brand")) {
            return "";
        }
        try {
            return !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() ? "" : Build.BRAND;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c() {
        if (com.anythink.core.common.d.s.b().c("timezone")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            try {
                if (TextUtils.isEmpty(f8238w)) {
                    String displayName = TimeZone.getDefault().getDisplayName(false, 0, Locale.ENGLISH);
                    f8238w = displayName;
                    return displayName;
                }
            } catch (Throwable unused) {
            }
            return f8238w;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String n() {
        Object obj;
        String strD = com.anythink.core.common.d.s.b().d();
        if (!TextUtils.isEmpty(strD)) {
            return strD;
        }
        try {
            Map<String, Object> mapM = com.anythink.core.common.d.s.b().m();
            if (mapM != null && (obj = mapM.get(ATAdConst.KEY.WECHAT_APPID)) != null) {
                return obj.toString();
            }
        } catch (Throwable unused) {
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        if (bVarB != null) {
            return bVarB.aP();
        }
        return null;
    }

    public static String f() {
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            if (f8223h == null) {
                synchronized (am) {
                    try {
                        if (f8223h == null) {
                            f8223h = ad.c(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3035d, "");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f8223h;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String C() {
        if (R()) {
            return "";
        }
        if (f8215Z == null) {
            try {
                f8215Z = Build.VERSION.INCREMENTAL;
            } catch (Throwable unused) {
                f8215Z = "";
            }
        }
        String str = f8215Z;
        if (str == null) {
            f8215Z = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8215Z;
    }

    public static String G() {
        if (R()) {
            return "";
        }
        if (ad == null) {
            try {
                ad = Build.BOARD;
            } catch (Throwable unused) {
                ad = "";
            }
        }
        String str = ad;
        if (str == null) {
            ad = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return ad;
    }

    private static void h(String str) {
        f8223h = str;
        ad.b(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3035d, f8223h);
    }

    public static String j() {
        if (!TextUtils.isEmpty(f8231p)) {
            return f8231p;
        }
        synchronized (ak) {
            try {
                if (!TextUtils.isEmpty(f8231p)) {
                    return f8231p;
                }
                if (f8231p == null) {
                    f8231p = ad.c(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3049r, "");
                    if (!TextUtils.isEmpty(f8231p)) {
                        return f8231p;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int m() {
        if (f8197H == -1) {
            try {
                Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
                Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram");
                f8197H = 1;
            } catch (Throwable unused) {
                f8197H = 0;
            }
        }
        return f8197H;
    }

    public static String t() {
        if (j(com.anythink.core.common.m.f.aR)) {
            return "";
        }
        if (f8206Q == null) {
            f8206Q = p.a() ? "1" : "0";
        }
        return f8206Q;
    }

    public static String u() {
        if (R()) {
            return "";
        }
        if (f8207R == null) {
            try {
                f8207R = Build.TYPE;
            } catch (Throwable unused) {
            }
        }
        String str = f8207R;
        if (str == null) {
            f8207R = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f8207R;
    }

    public static int b(String str) {
        if (f8199J != -1) {
            return f8199J;
        }
        f8199J = 0;
        try {
            f8199J = ((Integer) Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("getWXAppSupportAPI", null).invoke(c(str), null)).intValue();
        } catch (Throwable unused) {
        }
        return f8199J;
    }

    public static String g() {
        if (f8239x == null) {
            synchronized (ai) {
                try {
                    if (f8239x == null) {
                        com.anythink.core.common.d.s.b();
                    }
                    if (f8239x == null) {
                        f8239x = "";
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8239x;
    }

    public static String k() {
        if (ag != null) {
            return ag;
        }
        if (com.anythink.core.common.d.s.b().c(com.anythink.core.common.m.f.bN)) {
            return "";
        }
        if (ag == null) {
            synchronized (ah) {
                if (ag == null) {
                    try {
                        ag = System.getProperty("http.agent");
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (ag == null) {
            ag = "";
        }
        return ag;
    }

    public static int y(Context context) {
        try {
        } catch (Throwable unused) {
            f8195F = -1;
        }
        if (!j("s_c") && !I(context)) {
            if (f8195F != -999) {
                return f8195F;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                if (telephonyManager.getSimState() == 5) {
                    f8195F = 2;
                } else if (telephonyManager.getSimState() == 1) {
                    f8195F = 1;
                } else {
                    f8195F = -1;
                }
            } else {
                f8195F = -1;
            }
            return f8195F;
        }
        return -1;
    }

    public static double A(Context context) {
        if (j("battery")) {
            return 0.0d;
        }
        if (f8193D != 0.0d) {
            return f8193D;
        }
        if (af == null) {
            af = (BatteryManager) context.getSystemService("batterymanager");
        }
        if (af != null) {
            double intProperty = r5.getIntProperty(4) / 100.0d;
            f8193D = intProperty;
            return intProperty;
        }
        return f8193D;
    }

    public static int B(Context context) {
        if (com.anythink.core.common.d.s.b().c("d_s")) {
            return -1;
        }
        if (f8192C != -1) {
            return f8192C;
        }
        if (Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
            f8192C = 2;
        } else {
            f8192C = 1;
        }
        return f8192C;
    }

    public static String e() {
        if (com.anythink.core.common.d.s.b().c("os_vn")) {
            return "";
        }
        if (TextUtils.isEmpty(f8232q)) {
            f8232q = Build.VERSION.RELEASE;
        }
        return f8232q;
    }

    public static JSONObject h() {
        try {
            return new JSONObject(f8224i);
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public static String r(Context context) {
        if (j("isagent")) {
            return "";
        }
        return u.a(context);
    }

    public static String s(Context context) {
        return (I(context) || j(com.anythink.core.common.m.f.aO)) ? "" : u.c(context);
    }

    public static PackageInfo x(Context context) {
        PackageInfo packageInfo;
        if (f8229n == null) {
            synchronized (ap) {
                try {
                    if (f8229n == null) {
                        try {
                            f8229n = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                        } catch (Throwable unused) {
                            if (f8229n == null) {
                                packageInfo = new PackageInfo();
                            }
                        }
                        if (f8229n == null) {
                            packageInfo = new PackageInfo();
                            f8229n = packageInfo;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8229n;
    }

    public static int z(Context context) {
        if (com.anythink.core.common.d.s.b().c("u_a")) {
            return -1;
        }
        if (f8195F != -1) {
            return f8195F;
        }
        if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", 0) == 1) {
            f8194E = 2;
        } else {
            f8194E = 1;
        }
        return f8194E;
    }

    public static String J() {
        String str;
        try {
        } catch (Throwable unused) {
            if (f8191B == null) {
            }
        }
        if (com.anythink.core.common.d.s.b().c("ip_v6")) {
            str = "";
            if (f8191B == null) {
            }
            return str;
        }
        if (f8191B != null) {
            str = f8191B;
            if (f8191B != null) {
                return str;
            }
        } else {
            if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
                com.anythink.core.common.d.s.b();
                if (!com.anythink.core.common.d.s.y()) {
                    str = f8191B;
                    if (f8191B != null) {
                        return str;
                    }
                }
            }
            synchronized (ar) {
                if (f8191B != null) {
                    String str2 = f8191B;
                    if (f8191B == null) {
                        f8191B = "";
                    }
                    return str2;
                }
                ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
                int size = list.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = list.get(i2);
                    i2++;
                    ArrayList list2 = Collections.list(((NetworkInterface) obj).getInetAddresses());
                    int size2 = list2.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj2 = list2.get(i3);
                        i3++;
                        InetAddress inetAddress = (InetAddress) obj2;
                        if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet6Address)) {
                            String hostAddress = inetAddress.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                f8191B = hostAddress;
                            }
                        }
                    }
                }
                if (f8191B == null) {
                    f8191B = "";
                }
                if (f8191B == null) {
                    f8191B = "";
                }
                return f8191B;
            }
        }
        f8191B = "";
        return str;
    }

    public static Object c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory").getMethod("createWXAPI", Context.class, String.class).invoke(null, com.anythink.core.common.d.s.b().g(), str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String l() {
        if (!TextUtils.isEmpty(f8218c)) {
            return f8218c;
        }
        String strO = com.anythink.core.common.d.s.b().O();
        if (!TextUtils.isEmpty(strO)) {
            f8218c = strO;
        } else {
            synchronized (ax) {
                String strO2 = com.anythink.core.common.d.s.b().O();
                if (TextUtils.isEmpty(strO2)) {
                    strO2 = "1";
                    try {
                        Class.forName("com.unity3d.player.UnityPlayer");
                        strO2 = "2";
                    } catch (Throwable unused) {
                    }
                    try {
                        Class.forName("org.cocos2dx.lib.Cocos2dxActivity");
                        Class.forName("org.cocos2dx.lib.Cocos2dxJavascriptJavaBridge");
                        strO2 = "4";
                    } catch (Throwable unused2) {
                    }
                    try {
                        Class.forName("com.facebook.react.ReactActivity");
                        strO2 = "5";
                    } catch (Throwable unused3) {
                    }
                    try {
                        int i2 = FlutterActivity.FLUTTER_VIEW_ID;
                        strO2 = "6";
                    } catch (Throwable unused4) {
                    }
                }
                f8218c = strO2;
            }
        }
        return f8218c;
    }

    public static String i() {
        if (com.anythink.core.common.d.s.b().c("ua") || !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
            return "";
        }
        synchronized (ak) {
            try {
                String strJ = j();
                if (!TextUtils.isEmpty(strJ)) {
                    return strJ;
                }
                String str = Build.VERSION.RELEASE;
                String strA = a();
                String str2 = Build.ID;
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strA) && !TextUtils.isEmpty(str2)) {
                    return "Mozilla/5.0 (Linux; Android " + str + "; " + strA + " Build/" + str2 + ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19";
                }
                return "";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String c(Context context, String str) {
        Signature[] signatureArr;
        Signature signature;
        if (com.anythink.core.common.d.s.b().c(str)) {
            return "";
        }
        if (!TextUtils.isEmpty(f8201L)) {
            return f8201L;
        }
        try {
            PackageInfo packageInfoJ = J(context);
            if (packageInfoJ != null && (signatureArr = packageInfoJ.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] bArrDigest = MessageDigest.getInstance(j.b("TUQ1")).digest(signature.toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                f8201L = sb.substring(0, sb.length() - 1);
                return f8201L;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String b(Context context, String str) {
        Signature[] signatureArr;
        Signature signature;
        if (com.anythink.core.common.d.s.b().c(str)) {
            return "";
        }
        if (!TextUtils.isEmpty(f8200K)) {
            return f8200K;
        }
        try {
            PackageInfo packageInfoJ = J(context);
            if (packageInfoJ != null && (signatureArr = packageInfoJ.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] bArrDigest = MessageDigest.getInstance(j.b("U0hBMQ==")).digest(signature.toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                f8200K = sb.substring(0, sb.length() - 1);
                return f8200K;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private static boolean j(String str) {
        return com.anythink.core.common.d.s.b().c(str) || !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b();
    }

    public static String d() {
        if (com.anythink.core.common.d.s.b().c("os_vc")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
                return "";
            }
            if (TextUtils.isEmpty(f8233r)) {
                f8233r = String.valueOf(Build.VERSION.SDK_INT);
            }
            return f8233r;
        } catch (Exception unused) {
            return "";
        }
    }

    public static int o() {
        if (f8198I != -1) {
            return f8198I;
        }
        f8198I = 0;
        try {
            f8198I = ((Integer) Class.forName("com.tencent.mm.opensdk.constants.Build").getField("SDK_INT").get(null)).intValue();
        } catch (Throwable unused) {
        }
        return f8198I;
    }

    public static String p() {
        String str;
        if (com.anythink.core.common.d.s.b().c("amazon_id") || !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b()) {
            return "";
        }
        if (f8225j == null) {
            synchronized (an) {
                try {
                    if (f8225j == null) {
                        String strC = ad.c(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3037f, "");
                        f8225j = strC;
                        if (TextUtils.isEmpty(strC)) {
                            try {
                                f8225j = Settings.Secure.getString(com.anythink.core.common.d.s.b().g().getContentResolver(), "advertising_id");
                                if (!TextUtils.isEmpty(f8225j)) {
                                    ad.b(com.anythink.core.common.d.s.b().g(), t.b.f3058a, t.a.f3037f, f8225j);
                                } else {
                                    f8225j = "";
                                }
                            } catch (Throwable unused) {
                                if (f8225j == null) {
                                    str = "";
                                }
                            }
                            if (f8225j == null) {
                                str = "";
                                f8225j = str;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8225j;
    }

    private static String d(Context context, String str) {
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                StringBuilder sb = new StringBuilder();
                sb.append(packageInfo.versionCode);
                return sb.toString();
            } catch (Throwable unused) {
                return "";
            }
        }
        return "";
    }

    private static boolean i(String str) {
        return Pattern.matches("^[0-]+$", str);
    }

    public static void d(String str) {
        f8228m = str;
    }

    public static String a() {
        if (com.anythink.core.common.d.s.b().c("model")) {
            return "";
        }
        try {
            return !com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() ? "" : Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a(final int i2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.az, new Runnable() { // from class: com.anythink.core.common.v.l.2
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (l.f8222g) {
                    if (l.f8222g.has(String.valueOf(i2))) {
                        return;
                    }
                    try {
                        l.f8222g.put(String.valueOf(i2), str);
                        String unused = l.f8224i = l.f8222g.toString();
                    } catch (Throwable unused2) {
                    }
                }
            }
        }));
    }

    public static String a(String str) {
        try {
            return f8222g.getString(str);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static PackageInfo a(Context context, String str) {
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            return null;
        }
    }
}

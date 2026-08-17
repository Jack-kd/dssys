package com.smartdigimkt.c5;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.anythink.core.bridge.a;
import com.anythink.core.common.d.t;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.bridge.entity.AppInfoEntity;
import com.smartdigimkt.sdk.core.bridge.entity.DeviceInfoEntity;
import io.flutter.embedding.android.FlutterActivity;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class h {

    /* renamed from: A, reason: collision with root package name */
    public static volatile int f39705A;

    /* renamed from: B, reason: collision with root package name */
    public static volatile int f39706B;

    /* renamed from: C, reason: collision with root package name */
    public static volatile int f39707C;

    /* renamed from: D, reason: collision with root package name */
    public static volatile int f39708D;

    /* renamed from: E, reason: collision with root package name */
    public static volatile int f39709E;

    /* renamed from: F, reason: collision with root package name */
    public static volatile int f39710F;

    /* renamed from: G, reason: collision with root package name */
    public static volatile String f39711G;

    /* renamed from: H, reason: collision with root package name */
    public static volatile String f39712H;

    /* renamed from: I, reason: collision with root package name */
    public static volatile String f39713I;

    /* renamed from: J, reason: collision with root package name */
    public static volatile String f39714J;

    /* renamed from: K, reason: collision with root package name */
    public static volatile String f39715K;

    /* renamed from: L, reason: collision with root package name */
    public static volatile String f39716L;

    /* renamed from: M, reason: collision with root package name */
    public static volatile String f39717M;

    /* renamed from: N, reason: collision with root package name */
    public static String f39718N;

    /* renamed from: O, reason: collision with root package name */
    public static String f39719O;

    /* renamed from: P, reason: collision with root package name */
    public static String f39720P;

    /* renamed from: Q, reason: collision with root package name */
    public static String f39721Q;

    /* renamed from: R, reason: collision with root package name */
    public static String f39722R;

    /* renamed from: S, reason: collision with root package name */
    public static String f39723S;

    /* renamed from: T, reason: collision with root package name */
    public static String f39724T;

    /* renamed from: U, reason: collision with root package name */
    public static String f39725U;

    /* renamed from: V, reason: collision with root package name */
    public static String f39726V;

    /* renamed from: W, reason: collision with root package name */
    public static String f39727W;

    /* renamed from: X, reason: collision with root package name */
    public static String f39728X;

    /* renamed from: Y, reason: collision with root package name */
    public static String f39729Y;

    /* renamed from: Z, reason: collision with root package name */
    public static String f39730Z;

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f39731a;

    /* renamed from: a0, reason: collision with root package name */
    public static volatile PackageInfo f39732a0;

    /* renamed from: b, reason: collision with root package name */
    public static String f39733b;

    /* renamed from: b0, reason: collision with root package name */
    public static BatteryManager f39734b0;

    /* renamed from: c, reason: collision with root package name */
    public static String f39735c;

    /* renamed from: c0, reason: collision with root package name */
    public static com.smartdigimkt.l3.d f39736c0;

    /* renamed from: d, reason: collision with root package name */
    public static String f39737d;

    /* renamed from: d0, reason: collision with root package name */
    public static DeviceInfoEntity f39738d0;

    /* renamed from: e, reason: collision with root package name */
    public static volatile String f39739e;

    /* renamed from: e0, reason: collision with root package name */
    public static AppInfoEntity f39740e0;

    /* renamed from: f, reason: collision with root package name */
    public static int f39741f;

    /* renamed from: f0, reason: collision with root package name */
    public static final Object f39742f0;

    /* renamed from: g, reason: collision with root package name */
    public static volatile boolean f39743g;

    /* renamed from: g0, reason: collision with root package name */
    public static final Object f39744g0;

    /* renamed from: h, reason: collision with root package name */
    public static String f39745h;

    /* renamed from: h0, reason: collision with root package name */
    public static final Object f39746h0;

    /* renamed from: i, reason: collision with root package name */
    public static volatile PackageInfo f39747i;

    /* renamed from: i0, reason: collision with root package name */
    public static final Object f39748i0;

    /* renamed from: j, reason: collision with root package name */
    public static volatile String f39749j;

    /* renamed from: j0, reason: collision with root package name */
    public static final Object f39750j0;

    /* renamed from: k, reason: collision with root package name */
    public static volatile String f39751k;

    /* renamed from: k0, reason: collision with root package name */
    public static final Object f39752k0;

    /* renamed from: l, reason: collision with root package name */
    public static volatile boolean f39753l;

    /* renamed from: l0, reason: collision with root package name */
    public static final Object f39754l0;

    /* renamed from: m, reason: collision with root package name */
    public static String f39755m;

    /* renamed from: m0, reason: collision with root package name */
    public static final Object f39756m0;

    /* renamed from: n, reason: collision with root package name */
    public static String f39757n;

    /* renamed from: n0, reason: collision with root package name */
    public static final Object f39758n0;

    /* renamed from: o, reason: collision with root package name */
    public static String f39759o;

    /* renamed from: o0, reason: collision with root package name */
    public static final Object f39760o0;

    /* renamed from: p, reason: collision with root package name */
    public static String f39761p;

    /* renamed from: p0, reason: collision with root package name */
    public static final Object f39762p0;

    /* renamed from: q, reason: collision with root package name */
    public static int f39763q;

    /* renamed from: q0, reason: collision with root package name */
    public static final Object f39764q0;

    /* renamed from: r, reason: collision with root package name */
    public static String f39765r;

    /* renamed from: r0, reason: collision with root package name */
    public static final Object f39766r0;

    /* renamed from: s, reason: collision with root package name */
    public static String f39767s;

    /* renamed from: s0, reason: collision with root package name */
    public static final Object f39768s0;

    /* renamed from: t, reason: collision with root package name */
    public static String f39769t;

    /* renamed from: t0, reason: collision with root package name */
    public static final Object f39770t0;

    /* renamed from: u, reason: collision with root package name */
    public static String f39771u;

    /* renamed from: u0, reason: collision with root package name */
    public static final Object f39772u0;

    /* renamed from: v, reason: collision with root package name */
    public static String f39773v;

    /* renamed from: w, reason: collision with root package name */
    public static volatile String f39774w;

    /* renamed from: x, reason: collision with root package name */
    public static volatile String f39775x;

    /* renamed from: y, reason: collision with root package name */
    public static volatile int f39776y;

    /* renamed from: z, reason: collision with root package name */
    public static volatile double f39777z;

    static {
        new JSONObject();
        f39737d = "";
        f39751k = null;
        f39753l = false;
        f39755m = "";
        f39757n = "";
        f39759o = "";
        f39761p = "";
        f39763q = 0;
        f39765r = "";
        f39767s = "";
        f39769t = null;
        f39771u = "";
        f39773v = "";
        f39774w = null;
        f39775x = null;
        f39776y = -1;
        f39777z = 0.0d;
        f39705A = -1;
        f39706B = -999;
        f39707C = -1;
        f39708D = -1;
        f39709E = -1;
        f39710F = -1;
        f39742f0 = new Object();
        f39744g0 = new Object();
        f39746h0 = new Object();
        f39748i0 = new Object();
        f39750j0 = new Object();
        f39752k0 = new Object();
        f39754l0 = new Object();
        f39756m0 = new Object();
        f39758n0 = new Object();
        f39760o0 = new Object();
        f39762p0 = new Object();
        f39764q0 = new Object();
        f39766r0 = new Object();
        f39768s0 = new Object();
        f39770t0 = new Object();
        f39772u0 = new Object();
    }

    public static String A() {
        String str = SDKContext.getInstance().f44120i;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA != null) {
            return aVarA.f39355Q;
        }
        return null;
    }

    public static void B() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39656a, "hw_ver"));
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39657b, "hw_hms_ver"));
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39663h, "mi_global_ver"));
        com.smartdigimkt.h3.m mVarB = com.smartdigimkt.h3.m.b();
        mVarB.getClass();
        if (!SDKContext.getInstance().a(com.anythink.core.common.m.f.bG) && arrayList.size() > 0) {
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.h3.h(mVarB, arrayList), Math.max(0L, com.smartdigimkt.c3.g.f39680h), 2);
        }
    }

    public static boolean C() {
        AppInfoEntity appInfoEntity = f39740e0;
        return appInfoEntity != null && appInfoEntity.getMediationPlatform() == 1;
    }

    public static String D() {
        if (!TextUtils.isEmpty(f39751k)) {
            return f39751k;
        }
        synchronized (f39746h0) {
            try {
                if (!TextUtils.isEmpty(f39751k)) {
                    return f39751k;
                }
                DeviceInfoEntity deviceInfoEntity = f39738d0;
                if (deviceInfoEntity != null) {
                    String userAgent = deviceInfoEntity.getUserAgent();
                    if (!TextUtils.isEmpty(userAgent)) {
                        f39751k = userAgent;
                        if (!TextUtils.isEmpty(f39751k)) {
                            y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", com.smartdigimkt.v4.b.f44715a, f39751k);
                        }
                    }
                }
                if (f39751k == null) {
                    f39751k = y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", com.smartdigimkt.v4.b.f44715a);
                }
                return f39751k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean E() {
        if (com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
            if ((com.smartdigimkt.z4.d.c().a().f39353O == 1) && !SDKContext.getInstance().a("device_minor_data_deny")) {
                return false;
            }
        }
        return true;
    }

    public static void a(AbstractMap abstractMap) {
        if (abstractMap != null) {
            try {
                if (abstractMap.isEmpty()) {
                    return;
                }
                Object obj = abstractMap.get(a.C0044a.f1718a);
                Object obj2 = abstractMap.get(a.C0044a.f1719b);
                a(obj instanceof Bundle ? (DeviceInfoEntity) com.smartdigimkt.d3.b.a((Bundle) obj, DeviceInfoEntity.class) : null, obj2 instanceof Bundle ? (AppInfoEntity) com.smartdigimkt.d3.b.a((Bundle) obj2, AppInfoEntity.class) : null);
            } catch (Throwable unused) {
            }
        }
    }

    public static int b() {
        if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
            return -1;
        }
        if (f39741f <= 0 && !f39743g) {
            synchronized (f39754l0) {
                try {
                    if (!f39743g) {
                        int i2 = 1;
                        f39743g = true;
                        if (Settings.Secure.getInt(SDKContext.getInstance().d().getContentResolver(), "limit_ad_tracking") != 0) {
                            i2 = 2;
                        }
                        f39741f = i2;
                    }
                } catch (Throwable unused) {
                    f39741f = -1;
                } finally {
                }
            }
        }
        return f39741f;
    }

    public static String c() {
        if (E()) {
            return "";
        }
        if (f39730Z == null) {
            try {
                f39730Z = Build.BOARD;
            } catch (Throwable unused) {
                f39730Z = "";
            }
        }
        String str = f39730Z;
        if (str == null) {
            f39730Z = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39730Z;
    }

    public static String d() {
        if (E()) {
            return "";
        }
        if (f39722R == null) {
            try {
                f39722R = Build.BOOTLOADER;
            } catch (Throwable unused) {
                f39722R = "";
            }
        }
        String str = f39722R;
        if (str == null) {
            f39722R = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39722R;
    }

    public static String e() {
        if (E()) {
            return "";
        }
        if (f39725U == null) {
            try {
                f39725U = Build.VERSION.CODENAME;
            } catch (Throwable unused) {
                f39725U = "";
            }
        }
        String str = f39725U;
        if (str == null) {
            f39725U = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39725U;
    }

    public static String f() {
        if (E()) {
            return "";
        }
        if (f39728X == null) {
            try {
                f39728X = Build.DISPLAY;
            } catch (Throwable unused) {
                f39728X = "";
            }
        }
        String str = f39728X;
        if (str == null) {
            f39728X = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39728X;
    }

    public static void g(Context context) {
        if (context != null && !SDKContext.getInstance().a("ua") && com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() && TextUtils.isEmpty(D())) {
            synchronized (f39746h0) {
                try {
                    if (f39753l) {
                        return;
                    }
                    f39753l = true;
                    try {
                        f39751k = WebSettings.getDefaultUserAgent(context);
                        y.a(context, "sdm_adx_rp_sdk", com.smartdigimkt.v4.b.f44715a, f39751k);
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static String h() {
        if (E()) {
            return "";
        }
        if (f39724T == null) {
            try {
                f39724T = Build.HOST;
            } catch (Throwable unused) {
                f39724T = "";
            }
        }
        String str = f39724T;
        if (str == null) {
            f39724T = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39724T;
    }

    public static int i(Context context) {
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int j(Context context) {
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String k(Context context) {
        if (f39715K == null) {
            synchronized (f39768s0) {
                try {
                    if (f39715K == null) {
                        String strA = p.a(context, "ro.product.cpu.abi");
                        f39715K = (strA == null || TextUtils.isEmpty(strA) || !strA.contains("x86")) ? "2" : "1";
                    }
                } finally {
                }
            }
        }
        return f39715K;
    }

    public static String l(Context context) {
        if (f39716L == null) {
            synchronized (f39770t0) {
                try {
                    if (f39716L == null) {
                        f39716L = "1".equals(p.a(context, "ro.kernel.qemu")) ? "1" : "2";
                    }
                } finally {
                }
            }
        }
        return f39716L;
    }

    public static String m(Context context) {
        if (context == null || SDKContext.getInstance().a("gaid")) {
            return "";
        }
        String strQ = q();
        if (!TextUtils.isEmpty(strQ)) {
            return strQ;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return "";
        }
        synchronized (f39750j0) {
            try {
                if (!TextUtils.isEmpty(f39731a)) {
                    return f39731a;
                }
                DeviceInfoEntity deviceInfoEntity = f39738d0;
                if (deviceInfoEntity != null) {
                    String gaid = deviceInfoEntity.getGaid();
                    if (!TextUtils.isEmpty(gaid) && !Pattern.matches("^[0-]+$", gaid)) {
                        f39731a = gaid;
                        f39731a = gaid;
                        y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "sdm_adx_rp_gaid", f39731a);
                    }
                }
                if (!TextUtils.isEmpty(f39731a)) {
                    return f39731a;
                }
                g gVar = new g(context);
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
                try {
                    String str = (String) threadPoolExecutor.submit(gVar).get(2L, TimeUnit.SECONDS);
                    if (!TextUtils.isEmpty(str) && !Pattern.matches("^[0-]+$", str)) {
                        f39731a = str;
                        y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "sdm_adx_rp_gaid", f39731a);
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

    public static String n(Context context) {
        if (SDKContext.getInstance().a("language")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
                return "";
            }
            if (!TextUtils.isEmpty(f39765r)) {
                return f39765r;
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            f39765r = language;
            return language;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String o(Context context) {
        if (SDKContext.getInstance().a("network_type")) {
            return "";
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
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
                char[] cArr = k.f39779a;
                try {
                    if (context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f31160b, context.getPackageName()) == 0) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null) {
                            return "-1";
                        }
                        int i2 = 1;
                        if (activeNetworkInfo.getType() == 1) {
                            return "-2";
                        }
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
                        sb.append("");
                        return sb.toString();
                    }
                } catch (Throwable unused) {
                }
                return "-3";
            } catch (Throwable unused2) {
                return "-1";
            }
        } catch (Exception unused3) {
            return "";
        }
    }

    public static String p(Context context) {
        if (SDKContext.getInstance().a("package_name")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        try {
            if (!TextUtils.isEmpty(f39759o)) {
                return f39759o;
            }
            String str = f(context).packageName;
            f39759o = str;
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String q() {
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
                return "";
            }
            if (f39731a == null) {
                synchronized (f39750j0) {
                    try {
                        if (f39731a == null) {
                            f39731a = y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "sdm_adx_rp_gaid");
                        }
                    } finally {
                    }
                }
            }
            return f39731a;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String r(Context context) {
        if (SDKContext.getInstance().a("screen")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
                return "";
            }
            return j(context) + "*" + i(context);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String s(Context context) {
        if (SDKContext.getInstance().a("it_src")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        try {
            if (!TextUtils.isEmpty(f39733b)) {
                return f39733b;
            }
            String installerPackageName = context.getPackageManager().getInstallerPackageName(p(context));
            f39733b = installerPackageName;
            return installerPackageName;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String t() {
        if (SDKContext.getInstance().a("model")) {
            return "";
        }
        try {
            return !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() ? "" : Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String u(Context context) {
        if (SDKContext.getInstance().a("app_vc")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        if (f39763q != 0) {
            return com.smartdigimkt.c0.g.a(new StringBuilder(), f39763q, "");
        }
        try {
            f39763q = f(context).versionCode;
            return f39763q + "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String v() {
        if (SDKContext.getInstance().a("brand")) {
            return "";
        }
        try {
            return !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() ? "" : Build.BRAND;
        } catch (Exception unused) {
            return "";
        }
    }

    public static void w(Context context) {
        synchronized (f39748i0) {
            try {
                if (TextUtils.isEmpty(SDKContext.getInstance().h())) {
                    DeviceInfoEntity deviceInfoEntity = f39738d0;
                    if (deviceInfoEntity != null) {
                        String upId = deviceInfoEntity.getUpId();
                        if (!TextUtils.isEmpty(upId)) {
                            SDKContext sDKContext = SDKContext.getInstance();
                            y.a(sDKContext.f44114c, "sdm_adx_rp_sdk", t.a.f3054w, upId);
                            sDKContext.f44133v = upId;
                            return;
                        }
                    }
                    com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
                    String uniqueId = bVarE != null ? bVarE.getUniqueId(context) : "";
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = m(context);
                    }
                    if (TextUtils.isEmpty(uniqueId) || Pattern.matches("^[0-]+$", uniqueId)) {
                        uniqueId = a();
                    }
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = a(context);
                    }
                    if (TextUtils.isEmpty(uniqueId)) {
                        uniqueId = UUID.randomUUID().toString();
                    }
                    SDKContext sDKContext2 = SDKContext.getInstance();
                    String strB = i.b(uniqueId);
                    y.a(sDKContext2.f44114c, "sdm_adx_rp_sdk", t.a.f3054w, strB);
                    sDKContext2.f44133v = strB;
                    SDKContext.getInstance().h();
                    String strValueOf = String.valueOf(System.currentTimeMillis());
                    com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
                    cVar.f42817a = "3000004";
                    cVar.f42819c = "";
                    cVar.f42828l = "3";
                    cVar.f42829m = "";
                    cVar.f42830n = strValueOf;
                    com.smartdigimkt.y3.h.a(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String x() {
        if (!TextUtils.isEmpty(f39737d)) {
            return f39737d;
        }
        String str = SDKContext.getInstance().f44121j;
        if (!TextUtils.isEmpty(str)) {
            f39737d = str;
            return str;
        }
        String str2 = SDKContext.getInstance().f44121j;
        if (TextUtils.isEmpty(str2)) {
            try {
                Class.forName("com.unity3d.player.UnityPlayer");
                str2 = "2";
            } catch (Throwable unused) {
                str2 = "1";
            }
            try {
                Class.forName("org.cocos2dx.lib.Cocos2dxActivity");
                Class.forName("org.cocos2dx.lib.Cocos2dxJavascriptJavaBridge");
                str2 = "4";
            } catch (Throwable unused2) {
            }
            try {
                Class.forName("com.facebook.react.ReactActivity");
                str2 = "5";
            } catch (Throwable unused3) {
            }
            try {
                int i2 = FlutterActivity.FLUTTER_VIEW_ID;
                str2 = "6";
            } catch (Throwable unused4) {
            }
        }
        f39737d = str2;
        return str2;
    }

    public static int y(Context context) {
        if (SDKContext.getInstance().a("orient")) {
            return 0;
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        return context.getResources().getConfiguration().orientation == 2 ? 2 : 1;
    }

    public static com.smartdigimkt.l3.d z() {
        int i2;
        int i3;
        if (f39736c0 == null) {
            synchronized (f39772u0) {
                try {
                    if (f39736c0 == null) {
                        f39736c0 = new com.smartdigimkt.l3.d();
                    }
                } finally {
                }
            }
        }
        try {
            com.smartdigimkt.l3.d dVar = f39736c0;
            Context contextD = SDKContext.getInstance().d();
            if (f39707C == -1) {
                f39707C = k.b(contextD, "com.tencent.mm") ? 1 : 0;
            }
            dVar.f41656a = f39707C;
            com.smartdigimkt.l3.d dVar2 = f39736c0;
            if (f39708D == -1) {
                try {
                    Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
                    Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram");
                    f39708D = 1;
                } catch (Throwable unused) {
                    f39708D = 0;
                }
            }
            dVar2.f41657b = f39708D;
            com.smartdigimkt.l3.d dVar3 = f39736c0;
            if (f39709E != -1) {
                i2 = f39709E;
            } else {
                f39709E = 0;
                try {
                    f39709E = ((Integer) Class.forName("com.tencent.mm.opensdk.constants.Build").getField("SDK_INT").get(null)).intValue();
                } catch (Throwable unused2) {
                }
                i2 = f39709E;
            }
            dVar3.f41658c = i2;
            com.smartdigimkt.l3.d dVar4 = f39736c0;
            String strA = A();
            if (f39710F != -1) {
                i3 = f39710F;
            } else {
                f39710F = 0;
                try {
                    f39710F = ((Integer) Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("getWXAppSupportAPI", null).invoke(a(strA), null)).intValue();
                } catch (Throwable unused3) {
                }
                i3 = f39710F;
            }
            dVar4.f41659d = i3;
        } catch (Throwable unused4) {
        }
        return f39736c0;
    }

    public static String i() {
        if (E()) {
            return "";
        }
        if (f39726V == null) {
            try {
                f39726V = Build.VERSION.INCREMENTAL;
            } catch (Throwable unused) {
                f39726V = "";
            }
        }
        String str = f39726V;
        if (str == null) {
            f39726V = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39726V;
    }

    public static String j() {
        if (E()) {
            return "";
        }
        if (f39721Q == null) {
            try {
                f39721Q = Build.RADIO;
            } catch (Throwable unused) {
                f39721Q = "";
            }
        }
        String str = f39721Q;
        if (str == null) {
            f39721Q = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39721Q;
    }

    public static int t(Context context) {
        if (SDKContext.getInstance().a("u_a")) {
            return -1;
        }
        if (f39706B != -1) {
            return f39706B;
        }
        if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", 0) == 1) {
            f39705A = 2;
        } else {
            f39705A = 1;
        }
        return f39705A;
    }

    public static String v(Context context) {
        if (SDKContext.getInstance().a("app_vn")) {
            return "";
        }
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        try {
            if (TextUtils.isEmpty(f39761p)) {
                String str = f(context).versionName;
                f39761p = str;
                return str;
            }
            return f39761p;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String r() {
        try {
        } catch (Throwable unused) {
            if (f39774w == null) {
            }
        }
        if (SDKContext.getInstance().a("ip_v4")) {
            if (f39774w == null) {
                f39774w = "";
            }
            return "";
        }
        if (f39774w != null) {
            String str = f39774w;
            if (f39774w == null) {
                f39774w = "";
            }
            return str;
        }
        if (!com.smartdigimkt.c3.g.f39677e && !SDKContext.getInstance().f44123l) {
            String str2 = f39774w;
            if (f39774w == null) {
                f39774w = "";
            }
            return str2;
        }
        synchronized (f39758n0) {
            if (f39774w != null) {
                String str3 = f39774w;
                if (f39774w == null) {
                    f39774w = "";
                }
                return str3;
            }
            DeviceInfoEntity deviceInfoEntity = f39738d0;
            if (deviceInfoEntity != null) {
                f39774w = deviceInfoEntity.getIpV4();
            }
            if (!TextUtils.isEmpty(f39774w)) {
                String str4 = f39774w;
                if (f39774w == null) {
                    f39774w = "";
                }
                return str4;
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
                            f39774w = hostAddress;
                        }
                    }
                }
            }
            if (f39774w == null) {
                f39774w = "";
            }
            if (f39774w == null) {
                f39774w = "";
            }
            return f39774w;
        }
    }

    public static String y() {
        if (SDKContext.getInstance().a("timezone")) {
            return "";
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
                return "";
            }
            try {
                if (TextUtils.isEmpty(f39767s)) {
                    String displayName = TimeZone.getDefault().getDisplayName(false, 0, Locale.ENGLISH);
                    f39767s = displayName;
                    return displayName;
                }
            } catch (Throwable unused) {
            }
            return f39767s;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String p() {
        if (SDKContext.getInstance().a("ua") || !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
            return "";
        }
        synchronized (f39746h0) {
            try {
                String strD = D();
                if (!TextUtils.isEmpty(strD)) {
                    return strD;
                }
                String str = Build.VERSION.RELEASE;
                String strT = t();
                String str2 = Build.ID;
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strT) && !TextUtils.isEmpty(str2)) {
                    return "Mozilla/5.0 (Linux; Android " + str + "; " + strT + " Build/" + str2 + ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19";
                }
                return "";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String s() {
        try {
        } catch (Throwable unused) {
            if (f39775x == null) {
            }
        }
        if (SDKContext.getInstance().a("ip_v6")) {
            if (f39775x == null) {
                f39775x = "";
            }
            return "";
        }
        if (f39775x != null) {
            String str = f39775x;
            if (f39775x == null) {
                f39775x = "";
            }
            return str;
        }
        if (!com.smartdigimkt.c3.g.f39677e && !SDKContext.getInstance().f44123l) {
            String str2 = f39775x;
            if (f39775x == null) {
                f39775x = "";
            }
            return str2;
        }
        synchronized (f39760o0) {
            if (f39775x != null) {
                String str3 = f39775x;
                if (f39775x == null) {
                    f39775x = "";
                }
                return str3;
            }
            DeviceInfoEntity deviceInfoEntity = f39738d0;
            if (deviceInfoEntity != null) {
                f39775x = deviceInfoEntity.getIpV6();
            }
            if (!TextUtils.isEmpty(f39775x)) {
                String str4 = f39775x;
                if (f39775x == null) {
                    f39775x = "";
                }
                return str4;
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
                            f39775x = hostAddress;
                        }
                    }
                }
            }
            if (f39775x == null) {
                f39775x = "";
            }
            if (f39775x == null) {
                f39775x = "";
            }
            return f39775x;
        }
    }

    public static String n() {
        if (E()) {
            return "";
        }
        if (f39720P == null) {
            try {
                f39720P = Build.USER;
            } catch (Throwable unused) {
                f39720P = "";
            }
        }
        String str = f39720P;
        if (str == null) {
            f39720P = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39720P;
    }

    public static String u() {
        if (SDKContext.getInstance().a("os_vc")) {
            return "";
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
                return "";
            }
            if (TextUtils.isEmpty(f39757n)) {
                f39757n = Build.VERSION.SDK_INT + "";
            }
            return f39757n;
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a(DeviceInfoEntity deviceInfoEntity, AppInfoEntity appInfoEntity) {
        DeviceInfoEntity deviceInfoEntity2 = f39738d0;
        AppInfoEntity appInfoEntity2 = f39740e0;
        if (deviceInfoEntity2 == null) {
            f39738d0 = deviceInfoEntity;
        } else if (deviceInfoEntity != null) {
            String userAgent = deviceInfoEntity.getUserAgent();
            if (!TextUtils.isEmpty(userAgent)) {
                deviceInfoEntity2.setUserAgent(userAgent);
            }
            String oaid = deviceInfoEntity.getOaid();
            if (!TextUtils.isEmpty(oaid)) {
                deviceInfoEntity2.setOaid(oaid);
            }
            String ssid = deviceInfoEntity.getSsid();
            if (!TextUtils.isEmpty(ssid)) {
                deviceInfoEntity2.setSsid(ssid);
            }
            String imei = deviceInfoEntity.getImei();
            if (!TextUtils.isEmpty(imei)) {
                deviceInfoEntity2.setImei(imei);
            }
            String imsi = deviceInfoEntity.getImsi();
            if (!TextUtils.isEmpty(imsi)) {
                deviceInfoEntity2.setImsi(imsi);
            }
            String mac = deviceInfoEntity.getMac();
            if (!TextUtils.isEmpty(mac)) {
                deviceInfoEntity2.setMac(mac);
            }
        }
        if (appInfoEntity2 == null) {
            f39740e0 = appInfoEntity;
        } else if (appInfoEntity != null) {
            appInfoEntity2.setMediationPlatform(appInfoEntity.getMediationPlatform());
            appInfoEntity2.setMediationVersion(appInfoEntity.getMediationVersion());
            appInfoEntity2.setMediationAppId(appInfoEntity.getMediationAppId());
            appInfoEntity2.setMediationAppKey(appInfoEntity.getMediationAppKey());
        }
    }

    public static String c(Context context) {
        Signature[] signatureArr;
        Signature signature;
        if (SDKContext.getInstance().a(com.anythink.core.common.m.f.bf)) {
            return "";
        }
        if (!TextUtils.isEmpty(f39711G)) {
            return f39711G;
        }
        try {
            PackageInfo packageInfoD = d(context);
            if (packageInfoD != null && (signatureArr = packageInfoD.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] bArrDigest = MessageDigest.getInstance(d.a("U0hBMQ==")).digest(signature.toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                f39711G = sb.substring(0, sb.length() - 1);
                return f39711G;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static PackageInfo d(Context context) {
        PackageInfo packageInfo;
        if (f39732a0 == null) {
            synchronized (f39762p0) {
                try {
                    if (f39732a0 == null) {
                        try {
                            f39732a0 = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                        } catch (Throwable unused) {
                            if (f39732a0 == null) {
                                packageInfo = new PackageInfo();
                            }
                        }
                        if (f39732a0 == null) {
                            packageInfo = new PackageInfo();
                            f39732a0 = packageInfo;
                        }
                    }
                } finally {
                }
            }
        }
        return f39732a0;
    }

    public static double e(Context context) {
        if (b("battery")) {
            return 0.0d;
        }
        if (f39777z != 0.0d) {
            return f39777z;
        }
        if (f39734b0 == null) {
            f39734b0 = (BatteryManager) context.getSystemService("batterymanager");
        }
        if (f39734b0 != null) {
            f39777z = r5.getIntProperty(4) / 100.0d;
            return f39777z;
        }
        return f39777z;
    }

    public static PackageInfo f(Context context) {
        PackageInfo packageInfo;
        if (f39747i == null) {
            synchronized (f39756m0) {
                try {
                    if (f39747i == null) {
                        try {
                            f39747i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                        } catch (Throwable unused) {
                            if (f39747i == null) {
                                packageInfo = new PackageInfo();
                            }
                        }
                        if (f39747i == null) {
                            packageInfo = new PackageInfo();
                            f39747i = packageInfo;
                        }
                    }
                } finally {
                }
            }
        }
        return f39747i;
    }

    public static int h(Context context) {
        if (SDKContext.getInstance().a("d_s")) {
            return -1;
        }
        if (f39776y != -1) {
            return f39776y;
        }
        if (Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
            f39776y = 2;
        } else {
            f39776y = 1;
        }
        return f39776y;
    }

    public static String k() {
        if (E()) {
            return "";
        }
        if (f39727W == null) {
            try {
                f39727W = Build.SERIAL;
            } catch (Throwable unused) {
                f39727W = "";
            }
        }
        String str = f39727W;
        if (str == null) {
            f39727W = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39727W;
    }

    public static String l() {
        if (E()) {
            return "";
        }
        if (TextUtils.isEmpty(f39719O)) {
            try {
                f39719O = Build.TAGS;
            } catch (Throwable unused) {
            }
        }
        String str = f39719O;
        if (str == null) {
            f39719O = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39719O;
    }

    public static String q(Context context) {
        if (TextUtils.isEmpty(f39735c)) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            f39735c = String.valueOf(displayMetrics.density);
        }
        return f39735c;
    }

    public static String g() {
        if (E()) {
            return "";
        }
        if (f39723S == null) {
            try {
                f39723S = Build.HARDWARE;
            } catch (Throwable unused) {
                f39723S = "";
            }
        }
        String str = f39723S;
        if (str == null) {
            f39723S = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39723S;
    }

    public static boolean b(String str) {
        return SDKContext.getInstance().a(str) || !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a();
    }

    public static String b(Context context) {
        Signature[] signatureArr;
        Signature signature;
        if (SDKContext.getInstance().a(com.anythink.core.common.m.f.bg)) {
            return "";
        }
        if (!TextUtils.isEmpty(f39712H)) {
            return f39712H;
        }
        try {
            PackageInfo packageInfoD = d(context);
            if (packageInfoD != null && (signatureArr = packageInfoD.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] bArrDigest = MessageDigest.getInstance(d.a("TUQ1")).digest(signature.toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                f39712H = sb.substring(0, sb.length() - 1);
                return f39712H;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String o() {
        if (b("cpu")) {
            return "";
        }
        if (f39713I == null) {
            synchronized (f39764q0) {
                try {
                    if (f39713I == null) {
                        f39713I = p.a();
                    }
                } finally {
                }
            }
        }
        return f39713I;
    }

    public static int x(Context context) {
        try {
        } catch (Throwable unused) {
            f39706B = -1;
        }
        if (!b("s_c")) {
            if (com.smartdigimkt.z4.d.c().a().f39353O == 1) {
                if (f39706B != -999) {
                    return f39706B;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    if (telephonyManager.getSimState() == 5) {
                        f39706B = 2;
                    } else if (telephonyManager.getSimState() == 1) {
                        f39706B = 1;
                    } else {
                        f39706B = -1;
                    }
                } else {
                    f39706B = -1;
                }
                return f39706B;
            }
        }
        return -1;
    }

    public static String m() {
        if (E()) {
            return "";
        }
        if (f39718N == null) {
            try {
                f39718N = Build.TYPE;
            } catch (Throwable unused) {
            }
        }
        String str = f39718N;
        if (str == null) {
            f39718N = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return f39718N;
    }

    public static String a(Context context) {
        if (SDKContext.getInstance().a("android_id") || !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
            return "";
        }
        if (f39749j != null) {
            return f39749j;
        }
        com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
        if (bVarE != null) {
            if (context == null) {
                context = SDKContext.getInstance().d();
            }
            synchronized (f39744g0) {
                try {
                    if (f39749j != null) {
                        return f39749j;
                    }
                    f39749j = y.b(context, "sdm_adx_rp_sdk", "sdm_adx_rp_aid");
                    if (TextUtils.isEmpty(f39749j)) {
                        DeviceInfoEntity deviceInfoEntity = f39738d0;
                        if (deviceInfoEntity != null) {
                            String androidId = deviceInfoEntity.getAndroidId();
                            if (!TextUtils.isEmpty(androidId)) {
                                f39749j = androidId;
                            }
                        }
                        if (TextUtils.isEmpty(f39749j)) {
                            f39749j = bVarE.getAid(context);
                        }
                        if (!TextUtils.isEmpty(f39749j)) {
                            y.a(context, "sdm_adx_rp_sdk", "sdm_adx_rp_aid", f39749j);
                        }
                    }
                    if (f39749j == null) {
                        f39749j = "";
                    }
                } finally {
                }
            }
        }
        return f39749j;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String w() {
        /*
            java.lang.String r0 = "isroot"
            boolean r0 = b(r0)
            if (r0 == 0) goto Lb
            java.lang.String r0 = ""
            return r0
        Lb:
            java.lang.String r0 = com.smartdigimkt.c5.h.f39714J
            if (r0 != 0) goto L4f
            java.lang.Object r0 = com.smartdigimkt.c5.h.f39766r0
            monitor-enter(r0)
            java.lang.String r1 = com.smartdigimkt.c5.h.f39714J     // Catch: java.lang.Throwable -> L49
            if (r1 != 0) goto L4b
            java.lang.String[] r1 = com.smartdigimkt.c5.p.f39802a     // Catch: java.lang.Throwable -> L44
            r2 = 0
            r3 = r2
        L1a:
            r4 = 18
            if (r3 >= r4) goto L30
            r4 = r1[r3]     // Catch: java.lang.Throwable -> L44
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L44
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L44
            boolean r4 = r5.exists()     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L2d
            r2 = 1
            goto L30
        L2d:
            int r3 = r3 + 1
            goto L1a
        L30:
            java.lang.String r1 = android.os.Build.TAGS     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L3c
            java.lang.String r3 = "test-keys"
            boolean r1 = r1.contains(r3)     // Catch: java.lang.Throwable -> L44
            if (r1 != 0) goto L3e
        L3c:
            if (r2 == 0) goto L41
        L3e:
            java.lang.String r1 = "1"
            goto L46
        L41:
            java.lang.String r1 = "2"
            goto L46
        L44:
            java.lang.String r1 = ""
        L46:
            com.smartdigimkt.c5.h.f39714J = r1     // Catch: java.lang.Throwable -> L49
            goto L4b
        L49:
            r1 = move-exception
            goto L4d
        L4b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L49
            goto L4f
        L4d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L49
            throw r1
        L4f:
            java.lang.String r0 = com.smartdigimkt.c5.h.f39714J
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c5.h.w():java.lang.String");
    }

    public static Object a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory").getMethod("createWXAPI", Context.class, String.class).invoke(null, SDKContext.getInstance().d(), str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a() {
        if (SDKContext.getInstance().a("amazon_id") || !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a()) {
            return "";
        }
        if (f39739e == null) {
            synchronized (f39752k0) {
                try {
                    if (f39739e == null) {
                        f39739e = y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "sdm_adx_rp_amazon_id");
                        if (TextUtils.isEmpty(f39739e)) {
                            try {
                                f39739e = Settings.Secure.getString(SDKContext.getInstance().d().getContentResolver(), "advertising_id");
                                if (!TextUtils.isEmpty(f39739e)) {
                                    y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "sdm_adx_rp_amazon_id", f39739e);
                                } else {
                                    f39739e = "";
                                }
                            } catch (Throwable unused) {
                                if (f39739e == null) {
                                }
                            }
                            if (f39739e == null) {
                                f39739e = "";
                            }
                        }
                    }
                } finally {
                }
            }
        }
        return f39739e;
    }
}

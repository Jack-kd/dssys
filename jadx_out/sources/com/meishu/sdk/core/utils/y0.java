package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.utils.c;
import com.meishu.sdk.core.utils.h0;
import com.octopus.ad.ADBidEvent;
import com.umeng.analytics.pro.bv;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class y0 {

    /* renamed from: A, reason: collision with root package name */
    public static String f32046A;

    /* renamed from: B, reason: collision with root package name */
    public static t0 f32047B;

    /* renamed from: C, reason: collision with root package name */
    public static String f32048C;

    /* renamed from: D, reason: collision with root package name */
    public static ConcurrentHashMap<String, String> f32049D;

    /* renamed from: E, reason: collision with root package name */
    public static Integer f32050E;

    /* renamed from: F, reason: collision with root package name */
    public static String f32051F;

    /* renamed from: G, reason: collision with root package name */
    public static volatile boolean f32052G;

    /* renamed from: H, reason: collision with root package name */
    public static String f32053H;

    /* renamed from: I, reason: collision with root package name */
    public static int f32054I;

    /* renamed from: J, reason: collision with root package name */
    public static Boolean f32055J;

    /* renamed from: K, reason: collision with root package name */
    public static String[] f32056K;

    /* renamed from: a, reason: collision with root package name */
    public static String f32057a;

    /* renamed from: b, reason: collision with root package name */
    public static String f32058b;

    /* renamed from: c, reason: collision with root package name */
    public static String f32059c;

    /* renamed from: d, reason: collision with root package name */
    public static String f32060d;

    /* renamed from: e, reason: collision with root package name */
    public static String f32061e;

    /* renamed from: f, reason: collision with root package name */
    public static DisplayMetrics f32062f;

    /* renamed from: g, reason: collision with root package name */
    public static String f32063g;

    /* renamed from: h, reason: collision with root package name */
    public static String f32064h;

    /* renamed from: i, reason: collision with root package name */
    public static String f32065i;

    /* renamed from: j, reason: collision with root package name */
    public static String f32066j;

    /* renamed from: k, reason: collision with root package name */
    public static String f32067k;

    /* renamed from: l, reason: collision with root package name */
    public static String f32068l;

    /* renamed from: m, reason: collision with root package name */
    public static String f32069m;

    /* renamed from: n, reason: collision with root package name */
    public static String f32070n;

    /* renamed from: o, reason: collision with root package name */
    public static String f32071o;

    /* renamed from: p, reason: collision with root package name */
    public static String f32072p;

    /* renamed from: q, reason: collision with root package name */
    public static String f32073q;

    /* renamed from: r, reason: collision with root package name */
    public static String f32074r;

    /* renamed from: s, reason: collision with root package name */
    public static String f32075s;

    /* renamed from: t, reason: collision with root package name */
    public static String f32076t;

    /* renamed from: u, reason: collision with root package name */
    public static String f32077u;

    /* renamed from: v, reason: collision with root package name */
    public static String f32078v;

    /* renamed from: w, reason: collision with root package name */
    public static String f32079w;

    /* renamed from: x, reason: collision with root package name */
    public static String f32080x;

    /* renamed from: y, reason: collision with root package name */
    public static String f32081y;

    /* renamed from: z, reason: collision with root package name */
    public static String f32082z;

    public class a extends com.meishu.sdk.core.safe.l {
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.contains("Hardware")) {
                        String str = line.split(":")[1];
                        y0.f32078v = str;
                        if (!TextUtils.isEmpty(str)) {
                            y0.f32078v = y0.f32078v.trim();
                        }
                    }
                }
                bufferedReader.close();
                if (TextUtils.isEmpty(y0.f32078v)) {
                    return;
                }
                r.a().b("device_cpuname", y0.f32078v);
            } catch (Throwable unused) {
            }
        }
    }

    static {
        new HashMap();
        f32047B = new t0();
        f32048C = null;
        f32049D = new ConcurrentHashMap<>();
        f32054I = -1;
        f32055J = null;
        f32056K = new String[]{"/dev/socket/qemud", "/dev/qemu_pipe"};
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x035c A[Catch: all -> 0x0363, TRY_ENTER, TryCatch #4 {all -> 0x0363, blocks: (B:127:0x0344, B:129:0x0348, B:131:0x034e, B:134:0x035c, B:137:0x0365), top: B:301:0x0344 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0365 A[Catch: all -> 0x0363, TRY_LEAVE, TryCatch #4 {all -> 0x0363, blocks: (B:127:0x0344, B:129:0x0348, B:131:0x034e, B:134:0x035c, B:137:0x0365), top: B:301:0x0344 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04a8 A[Catch: Exception -> 0x04f6, TryCatch #5 {Exception -> 0x04f6, blocks: (B:179:0x04a1, B:181:0x04a8, B:182:0x04be, B:184:0x04c4, B:186:0x04cc, B:188:0x04f1), top: B:302:0x04a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x059a A[Catch: Exception -> 0x05c6, TryCatch #11 {Exception -> 0x05c6, blocks: (B:220:0x0594, B:222:0x059a, B:224:0x05a4, B:226:0x05af, B:228:0x05b9), top: B:314:0x0594 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0637  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0641  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06c0  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0146 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0277  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> a(android.content.Context r25, java.lang.String r26, com.meishu.sdk.core.ad.AdType r27, long r28, long r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.y0.a(android.content.Context, java.lang.String, com.meishu.sdk.core.ad.AdType, long, long):java.util.Map");
    }

    public static Map<String, String> b(Context context, String str, AdType adType, long j2, long j3) {
        String strAppId = AdSdk.adConfig().appId();
        if (TextUtils.isEmpty(strAppId) || TextUtils.isEmpty(str) || adType == null) {
            LogUtil.e("RequestUtil", String.format(Locale.US, "wrapParams pid or appId or ad Type is empty: %s %s %s", strAppId, str, String.valueOf(adType)));
        }
        return a(context, str, adType, j2, j3);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(android.content.Context r5) {
        /*
            java.lang.String r0 = "com.oppo.market"
            r1 = 0
            java.lang.String r2 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = r2.toLowerCase()     // Catch: java.lang.Throwable -> L1c
            int r3 = r2.hashCode()     // Catch: java.lang.Throwable -> L1c
            r4 = 0
            switch(r3) {
                case -1320380160: goto L5b;
                case -1206476313: goto L51;
                case -759499589: goto L47;
                case 3418016: goto L3d;
                case 3620012: goto L33;
                case 99462250: goto L29;
                case 103777484: goto L1f;
                case 1864941562: goto L12;
                default: goto L11;
            }     // Catch: java.lang.Throwable -> L1c
        L11:
            goto L65
        L12:
            java.lang.String r3 = "samsung"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 7
            goto L66
        L1c:
            r5 = move-exception
            goto L8d
        L1f:
            java.lang.String r3 = "meizu"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 5
            goto L66
        L29:
            java.lang.String r3 = "honor"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = r4
            goto L66
        L33:
            java.lang.String r3 = "vivo"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 3
            goto L66
        L3d:
            java.lang.String r3 = "oppo"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 4
            goto L66
        L47:
            java.lang.String r3 = "xiaomi"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 2
            goto L66
        L51:
            java.lang.String r3 = "huawei"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 1
            goto L66
        L5b:
            java.lang.String r3 = "oneplus"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L65
            r2 = 6
            goto L66
        L65:
            r2 = -1
        L66:
            switch(r2) {
                case 0: goto L8a;
                case 1: goto L87;
                case 2: goto L84;
                case 3: goto L81;
                case 4: goto L73;
                case 5: goto L70;
                case 6: goto L6d;
                case 7: goto L6a;
                default: goto L69;
            }     // Catch: java.lang.Throwable -> L1c
        L69:
            return r1
        L6a:
            java.lang.String r0 = "com.sec.android.app.samsungapps"
            goto L91
        L6d:
            java.lang.String r0 = "com.oneplus.market"
            goto L91
        L70:
            java.lang.String r0 = "com.meizu.mstore"
            goto L91
        L73:
            java.lang.String r1 = "com.heytap.market"
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L91
            android.content.pm.PackageInfo r5 = r5.getPackageInfo(r1, r4)     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L91
            if (r5 != 0) goto L80
            goto L91
        L80:
            return r1
        L81:
            java.lang.String r0 = "com.bbk.appstore"
            goto L91
        L84:
            java.lang.String r0 = "com.xiaomi.market"
            goto L91
        L87:
            java.lang.String r0 = "com.huawei.appmarket"
            goto L91
        L8a:
            java.lang.String r0 = "com.hihonor.appmarket"
            goto L91
        L8d:
            r5.printStackTrace()
            r0 = r1
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.y0.c(android.content.Context):java.lang.String");
    }

    public static String d(Context context) {
        if (f32073q == null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(c(context), 0);
                if (packageInfo != null) {
                    f32073q = String.valueOf(packageInfo.versionCode);
                }
            } catch (Throwable unused) {
                f32073q = null;
            }
        }
        return f32073q;
    }

    public static Integer e(Context context) {
        try {
            return Integer.valueOf(((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String f(Context context) {
        Boolean boolA;
        try {
            if (f32063g == null && (boolA = com.meishu.sdk.platform.ms.splash.k.a(context)) != null) {
                f32063g = boolA.booleanValue() ? "1" : "0";
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f32063g;
    }

    public static String g(Context context) {
        if (f32072p == null) {
            try {
                if (Intent.parseUri("hap://app/", 0).resolveActivity(context.getPackageManager()) != null) {
                    f32072p = "1";
                } else {
                    f32072p = "";
                }
            } catch (Throwable unused) {
            }
        }
        return f32072p;
    }

    public static String h(Context context) {
        PackageInfo packageInfo;
        try {
            if (TextUtils.isEmpty(f32074r)) {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo("com.huawei.hwid", 16384);
                } catch (Throwable unused) {
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    if (packageInfo.versionCode >= 0) {
                        f32074r = packageInfo.versionCode + "";
                    } else {
                        f32074r = null;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return f32074r;
    }

    public static String i() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(AdSdk.getBDVersionName())) {
            sb.append("BAIDU");
            sb.append("=");
            sb.append(AdSdk.getBDVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getCSJVersionName())) {
            sb.append("&");
            sb.append("CSJ");
            sb.append("=");
            sb.append(AdSdk.getCSJVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getGDTVersionName())) {
            sb.append("&");
            sb.append("GDT");
            sb.append("=");
            sb.append(AdSdk.getGDTVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getJDVersionName())) {
            sb.append("&");
            sb.append(ADBidEvent.JINGDONG);
            sb.append("=");
            sb.append(AdSdk.getJDVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getKSVersionName())) {
            sb.append("&");
            sb.append("KS");
            sb.append("=");
            sb.append(AdSdk.getKSVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getSGMVersionName())) {
            sb.append("&");
            sb.append("SGM");
            sb.append("=");
            sb.append(AdSdk.getSGMVersionName());
        }
        if (!TextUtils.isEmpty(AdSdk.getHWVersionName())) {
            sb.append("&");
            sb.append("HW");
            sb.append("=");
            sb.append(AdSdk.getHWVersionName());
        }
        return sb.toString();
    }

    public static String j(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "-1";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "1";
            }
            if (activeNetworkInfo.getType() != 0) {
                return activeNetworkInfo.getType() == 9 ? "7" : "-1";
            }
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
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
                case 17:
                    break;
                case 13:
                case 19:
                    break;
                case 18:
                default:
                    if (activeNetworkInfo.getSubtypeName().equalsIgnoreCase("WCDMA") || activeNetworkInfo.getSubtypeName().equalsIgnoreCase("CDMA2000")) {
                    }
                    break;
                case 20:
                    break;
            }
            return "-1";
        } catch (Throwable th) {
            th.printStackTrace();
            return "-1";
        }
    }

    public static String k(Context context) {
        String lowerCase;
        if (f32066j == null) {
            try {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
                if (signatureArr.length > 0) {
                    try {
                        lowerCase = m1.a(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getEncoded())).toLowerCase();
                    } catch (NoSuchAlgorithmException e2) {
                        e2.printStackTrace();
                        lowerCase = null;
                    }
                    f32066j = lowerCase;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return f32066j;
    }

    public static DisplayMetrics l(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            return displayMetrics;
        } catch (Throwable th) {
            th.printStackTrace();
            return displayMetrics;
        }
    }

    public static boolean m() {
        try {
            if (n() || a()) {
                return true;
            }
            int i2 = 0;
            while (true) {
                try {
                    String[] strArr = f32056K;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if (new File(strArr[i2]).exists()) {
                        return true;
                    }
                    i2++;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return false;
    }

    public static String n(Context context) {
        try {
            String string = AdSdk.getSharedPreferences().getString("user_agent", null);
            f32064h = string;
            if (string == null) {
                String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
                f32064h = defaultUserAgent;
                if (defaultUserAgent != null) {
                    AdSdk.getSharedPreferences().edit().putString("user_agent", f32064h).apply();
                }
            }
        } catch (Throwable unused) {
        }
        return f32064h;
    }

    public static int o(Context context) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            String wxAppid = AdSdk.adConfig().getWxAppid();
            if (TextUtils.isEmpty(wxAppid)) {
                return -1;
            }
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.openapi.BaseWXApiImplV10");
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, String.class, Boolean.TYPE, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((Integer) cls.getDeclaredMethod("getWXAppSupportAPI", null).invoke(declaredConstructor.newInstance(context, wxAppid, Boolean.TRUE, 2), null)).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static void e() {
        if (TextUtils.isEmpty(f32077u)) {
            try {
                Configuration configuration = new Configuration();
                Class<?> cls = Class.forName("android.app.ActivityManagerNative");
                Object objInvoke = cls.getMethod("getDefault", null).invoke(cls, null);
                configuration.updateFrom((Configuration) objInvoke.getClass().getMethod("getConfiguration", null).invoke(objInvoke, null));
                f32077u = configuration.fontScale + "";
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean n() {
        String str = Build.FINGERPRINT;
        if (str.startsWith("generic") || str.toLowerCase().contains("vbox") || str.toLowerCase().contains("test-keys")) {
            return true;
        }
        String str2 = Build.MODEL;
        if (str2.contains("google_sdk") || str2.contains("Emulator") || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    public static String b(Context context) throws PackageManager.NameNotFoundException {
        if (TextUtils.isEmpty(f32058b)) {
            try {
                f32058b = ((Object) context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).loadLabel(context.getPackageManager())) + "";
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return f32058b;
    }

    public static void d() {
        if (TextUtils.isEmpty(f32078v)) {
            String strA = r.a().a("device_cpuname", (String) null);
            f32078v = strA;
            if (TextUtils.isEmpty(strA)) {
                ExecutorService executorService = h0.f31906a;
                h0.b.f31910a.a(new a());
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:73:0x007b
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String f() {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.y0.f():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String g() {
        /*
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32068l     // Catch: java.lang.Throwable -> Lc2
            if (r0 != 0) goto Lc6
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Throwable -> Lc2
            int r1 = r0.hashCode()     // Catch: java.lang.Throwable -> Lc2
            switch(r1) {
                case -1443430368: goto L4e;
                case -1206476313: goto L44;
                case -759499589: goto L3a;
                case 3418016: goto L30;
                case 3620012: goto L26;
                case 103777484: goto L1c;
                case 1914625883: goto L12;
                default: goto L11;
            }     // Catch: java.lang.Throwable -> Lc2
        L11:
            goto L58
        L12:
            java.lang.String r1 = "lemobile"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 3
            goto L59
        L1c:
            java.lang.String r1 = "meizu"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 6
            goto L59
        L26:
            java.lang.String r1 = "vivo"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 4
            goto L59
        L30:
            java.lang.String r1 = "oppo"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 5
            goto L59
        L3a:
            java.lang.String r1 = "xiaomi"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 2
            goto L59
        L44:
            java.lang.String r1 = "huawei"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 1
            goto L59
        L4e:
            java.lang.String r1 = "smartisan"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto L58
            r0 = 0
            goto L59
        L58:
            r0 = -1
        L59:
            switch(r0) {
                case 0: goto L92;
                case 1: goto L89;
                case 2: goto L89;
                case 3: goto L80;
                case 4: goto L77;
                case 5: goto L6e;
                case 6: goto L65;
                default: goto L5c;
            }     // Catch: java.lang.Throwable -> Lc2
        L5c:
            java.lang.String r0 = "getprop ro.build.version.release"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L65:
            java.lang.String r0 = "getprop ro.build.display.id"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L6e:
            java.lang.String r0 = "getprop ro.build.version.ota"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L77:
            java.lang.String r0 = "getprop ro.vivo.product.version"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L80:
            java.lang.String r0 = "getprop ro.letv.release.version"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L89:
            java.lang.String r0 = "getprop ro.build.version.incremental"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto L9a
        L92:
            java.lang.String r0 = "getprop ro.smartisan.version"
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
        L9a:
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32068l     // Catch: java.lang.Throwable -> Lc2
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r1 = "romVersion"
            if (r0 == 0) goto Lb0
            android.content.SharedPreferences r0 = com.meishu.sdk.core.AdSdk.getSharedPreferences()     // Catch: java.lang.Throwable -> Lc2
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> Lc2
            com.meishu.sdk.core.utils.y0.f32068l = r0     // Catch: java.lang.Throwable -> Lc2
            goto Lc6
        Lb0:
            android.content.SharedPreferences r0 = com.meishu.sdk.core.AdSdk.getSharedPreferences()     // Catch: java.lang.Throwable -> Lc2
            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r2 = com.meishu.sdk.core.utils.y0.f32068l     // Catch: java.lang.Throwable -> Lc2
            android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)     // Catch: java.lang.Throwable -> Lc2
            r0.apply()     // Catch: java.lang.Throwable -> Lc2
            goto Lc6
        Lc2:
            r0 = move-exception
            r0.printStackTrace()
        Lc6:
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32068l
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.y0.g():java.lang.String");
    }

    public static boolean l() {
        Boolean bool = f32055J;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            boolean zIsCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            f32055J = Boolean.valueOf(zIsCleartextTrafficPermitted);
            return zIsCleartextTrafficPermitted;
        } catch (Throwable th) {
            th.printStackTrace();
            f32055J = Boolean.TRUE;
            return true;
        }
    }

    public static String h() {
        if (f32071o == null) {
            f32071o = a("getprop ro.vendor.build.date.utc");
        }
        return f32071o;
    }

    public static int m(Context context) {
        int i2 = f32054I;
        if (i2 >= 0) {
            return i2;
        }
        if (context == null) {
            try {
                context = AdSdk.getContext();
            } catch (Throwable unused) {
                return f32054I;
            }
        }
        int identifier = context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            f32054I = context.getApplicationContext().getResources().getDimensionPixelSize(identifier);
        }
        return f32054I;
    }

    public static boolean o() {
        try {
            if (AdSdk.adConfig() == null || AdSdk.adConfig().customController() == null) {
                return false;
            }
            return !AdSdk.adConfig().customController().isStorageCollectEnable();
        } catch (Exception unused) {
            return false;
        }
    }

    public static String b() {
        if (AdSdk.adConfig().isEnableBootId() && TextUtils.isEmpty(f32081y)) {
            try {
                char[] cArr = new char[36];
                if (36 == new FileReader("/proc/sys/kernel/random/boot_id").read(cArr)) {
                    f32081y = String.valueOf(cArr);
                }
            } catch (Exception unused) {
            }
        }
        return f32081y;
    }

    public static String c() {
        try {
            return String.valueOf((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void j() {
        try {
            if (!TextUtils.isEmpty(f32075s) || o()) {
                return;
            }
            DecimalFormat decimalFormat = new DecimalFormat("0.00");
            if (AdSdk.getContext().getExternalFilesDir(null) != null) {
                f32075s = decimalFormat.format(r1.getTotalSpace() / 1048576);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a9 -> B:57:0x00ac). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String k() {
        /*
            java.lang.String r0 = "update_time"
            java.lang.String r1 = com.meishu.sdk.core.utils.y0.f32079w
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto Le6
            r1 = 0
            r2 = 0
            java.lang.Runtime r3 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L9e
            java.lang.String r4 = "stat /data/data"
            java.lang.Process r3 = r3.exec(r4)     // Catch: java.lang.Throwable -> L9e
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L9e
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L9e
            java.io.InputStream r3 = r3.getInputStream()     // Catch: java.lang.Throwable -> L9e
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L9e
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L9e
        L24:
            java.lang.String r3 = r4.readLine()     // Catch: java.lang.Throwable -> L3d
            if (r3 == 0) goto L3f
            java.lang.String r5 = "Modify:"
            boolean r5 = r3.startsWith(r5)     // Catch: java.lang.Throwable -> L3d
            if (r5 == 0) goto L24
            r5 = 8
            java.lang.String r3 = r3.substring(r5)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Throwable -> L3d
            goto L40
        L3d:
            r3 = move-exception
            goto La0
        L3f:
            r3 = r2
        L40:
            if (r3 == 0) goto L98
            java.lang.String r5 = "\\."
            java.lang.String[] r3 = r3.split(r5)     // Catch: java.lang.Throwable -> L3d
            r5 = r3[r1]     // Catch: java.lang.Throwable -> L3d
            int r6 = r3.length     // Catch: java.lang.Throwable -> L3d
            r7 = 1
            if (r6 <= r7) goto L59
            r3 = r3[r7]     // Catch: java.lang.Throwable -> L3d
            java.lang.String r6 = " "
            java.lang.String[] r3 = r3.split(r6)     // Catch: java.lang.Throwable -> L3d
            r3 = r3[r1]     // Catch: java.lang.Throwable -> L3d
            goto L5b
        L59:
            java.lang.String r3 = "0"
        L5b:
            java.text.SimpleDateFormat r6 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L3d
            java.lang.String r7 = "yyyy-MM-dd HH:mm:ss"
            java.util.Locale r8 = java.util.Locale.getDefault()     // Catch: java.lang.Throwable -> L3d
            r6.<init>(r7, r8)     // Catch: java.lang.Throwable -> L3d
            java.util.Date r5 = r6.parse(r5)     // Catch: java.lang.Throwable -> L3d
            long r5 = r5.getTime()     // Catch: java.lang.Throwable -> L3d
            r7 = 1000(0x3e8, double:4.94E-321)
            long r5 = r5 / r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d
            r7.<init>()     // Catch: java.lang.Throwable -> L3d
            r7.append(r5)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r5 = "."
            r7.append(r5)     // Catch: java.lang.Throwable -> L3d
            r7.append(r3)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = r7.toString()     // Catch: java.lang.Throwable -> L3d
            com.meishu.sdk.core.utils.y0.f32079w = r3     // Catch: java.lang.Throwable -> L3d
            android.content.SharedPreferences r3 = com.meishu.sdk.core.AdSdk.getSharedPreferences()     // Catch: java.lang.Throwable -> L3d
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L3d
            java.lang.String r5 = com.meishu.sdk.core.utils.y0.f32079w     // Catch: java.lang.Throwable -> L3d
            android.content.SharedPreferences$Editor r3 = r3.putString(r0, r5)     // Catch: java.lang.Throwable -> L3d
            r3.apply()     // Catch: java.lang.Throwable -> L3d
        L98:
            r4.close()     // Catch: java.lang.Throwable -> L9c
            goto Lac
        L9c:
            r3 = move-exception
            goto La9
        L9e:
            r3 = move-exception
            r4 = r2
        La0:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> Lda
            if (r4 == 0) goto Lac
            r4.close()     // Catch: java.lang.Throwable -> L9c
            goto Lac
        La9:
            r3.printStackTrace()
        Lac:
            java.lang.String r3 = com.meishu.sdk.core.utils.y0.f32079w
            if (r3 != 0) goto Lba
            android.content.SharedPreferences r3 = com.meishu.sdk.core.AdSdk.getSharedPreferences()
            java.lang.String r0 = r3.getString(r0, r2)
            com.meishu.sdk.core.utils.y0.f32079w = r0
        Lba:
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32079w     // Catch: java.lang.Throwable -> Ld5
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Ld5
            if (r0 != 0) goto Le6
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32079w     // Catch: java.lang.Throwable -> Ld5
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Ld5
            r2 = 17
            if (r0 < r2) goto Le6
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32079w     // Catch: java.lang.Throwable -> Ld5
            java.lang.String r0 = r0.substring(r1, r2)     // Catch: java.lang.Throwable -> Ld5
            com.meishu.sdk.core.utils.y0.f32080x = r0     // Catch: java.lang.Throwable -> Ld5
            goto Le6
        Ld5:
            r0 = move-exception
            r0.printStackTrace()
            goto Le6
        Lda:
            r0 = move-exception
            if (r4 == 0) goto Le5
            r4.close()     // Catch: java.lang.Throwable -> Le1
            goto Le5
        Le1:
            r1 = move-exception
            r1.printStackTrace()
        Le5:
            throw r0
        Le6:
            java.lang.String r0 = com.meishu.sdk.core.utils.y0.f32079w
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.y0.k():java.lang.String");
    }

    public static String i(Context context) {
        String networkOperator;
        String simOperator;
        if (TextUtils.isEmpty(f32060d)) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                try {
                    simOperator = telephonyManager.getSimOperator();
                    f32060d = simOperator;
                } catch (Exception unused) {
                }
                if (TextUtils.isEmpty(simOperator)) {
                    try {
                        networkOperator = telephonyManager.getNetworkOperator();
                        f32060d = networkOperator;
                    } catch (Exception unused2) {
                    }
                    if (TextUtils.isEmpty(networkOperator)) {
                        f32060d = "";
                    }
                }
                if (!TextUtils.isEmpty(f32060d)) {
                    if (f32060d.length() > 5) {
                        return f32060d.substring(0, 5);
                    }
                    return f32060d;
                }
            } catch (Exception unused3) {
            }
        }
        return f32060d;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00a2 -> B:264:0x00a5). Please report as a decompilation issue!!! */
    public static void a(Context context, AdType adType) {
        long j2;
        String property;
        int i2;
        try {
            ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
            try {
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                if (TextUtils.isEmpty(f32057a)) {
                    f32057a = context.getPackageName();
                }
                j2 = packageManager.getPackageInfo(f32057a, 0).lastUpdateTime;
            } catch (Throwable th) {
                th.printStackTrace();
                j2 = 0;
            }
            if (j2 > 0) {
                concurrentHashMap.put("dtc_app_cvit", String.valueOf(j2));
            }
            try {
                if (AdSdk.adConfig().enableDebug()) {
                    concurrentHashMap.put("dtc_sdk_debug", "1");
                } else {
                    concurrentHashMap.put("dtc_sdk_debug", "0");
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                try {
                    property = System.getProperty("http.proxyHost");
                    String property2 = System.getProperty("http.proxyPort");
                    if (property2 == null) {
                        property2 = "-1";
                    }
                    i2 = Integer.parseInt(property2);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
                if (!TextUtils.isEmpty(property) && i2 != -1) {
                    concurrentHashMap.put("dtc_net_proxy", "1");
                } else {
                    concurrentHashMap.put("dtc_net_proxy", "0");
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", 0) == 1) {
                    concurrentHashMap.put("dtc_console", "1");
                } else {
                    concurrentHashMap.put("dtc_console", "0");
                }
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            try {
                concurrentHashMap.put("dtc_app_debug", "0");
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
            try {
                if (m()) {
                    concurrentHashMap.put("dtc_emulator", "1");
                } else {
                    concurrentHashMap.put("dtc_emulator", "0");
                }
            } catch (Throwable th7) {
                th7.printStackTrace();
            }
            if (adType == AdType.FEED_MIX || adType == AdType.FEED_PRE_RENDER) {
                c cVar = c.a.f31839a;
                if (cVar.a(context) != null) {
                    concurrentHashMap.put("fel_mtime", cVar.a(context).getMtime() + "");
                }
            }
            if (TextUtils.isEmpty(f32082z)) {
                String string = AdSdk.getSharedPreferences().getString("install_time", "");
                f32082z = string;
                if (!TextUtils.isEmpty(string)) {
                    f32047B.getClass();
                }
            }
            int iO = o(context);
            if (iO != -1) {
                if (TextUtils.isEmpty(f32047B.f32006a)) {
                    f32047B.f32006a = String.valueOf(iO);
                }
                concurrentHashMap.put("wxapi", String.valueOf(iO));
            }
            concurrentHashMap.put("install_time", f32082z);
            if (AdSdk.adConfig().isUseMediation()) {
                String strI = i();
                if (!TextUtils.isEmpty(strI)) {
                    concurrentHashMap.put("third_party_sdk", strI);
                }
            }
            if (TextUtils.isEmpty(f32057a)) {
                f32057a = context.getPackageName();
            }
            if (!TextUtils.isEmpty(f32057a)) {
                concurrentHashMap.put("app_package", f32057a);
            }
            g(context);
            if (!TextUtils.isEmpty(f32072p)) {
                if (TextUtils.isEmpty(f32047B.f32007b)) {
                    f32047B.f32007b = f32072p;
                }
                concurrentHashMap.put("h5_app_type", f32072p);
            }
            b(context);
            if (!TextUtils.isEmpty(f32058b)) {
                concurrentHashMap.put("app_name", f32058b);
            }
            String wxVersionName = AdSdk.getWxVersionName();
            f32048C = wxVersionName;
            if (!TextUtils.isEmpty(wxVersionName)) {
                concurrentHashMap.put("wx_sdk_name", f32048C);
            }
            if (f32059c == null) {
                try {
                    f32059c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                } catch (Throwable th8) {
                    th8.printStackTrace();
                }
            }
            if (!TextUtils.isEmpty(f32059c)) {
                concurrentHashMap.put("app_ver", f32059c);
            }
            d(context);
            if (!TextUtils.isEmpty(f32073q)) {
                if (TextUtils.isEmpty(f32047B.f32009d)) {
                    f32047B.f32009d = f32073q;
                }
                concurrentHashMap.put("device_appstore_ver", f32073q);
            }
            if (AdSdk.adConfig().customController() != null) {
                if (AdSdk.adConfig().customController().getAndroidId() != null) {
                    f32061e = AdSdk.adConfig().customController().getAndroidId();
                } else if (AdSdk.adConfig().customController().isCanUseAndroidId()) {
                    a(context);
                }
            } else {
                a(context);
            }
            if (!TextUtils.isEmpty(f32061e)) {
                if (TextUtils.isEmpty(f32047B.f32010e)) {
                    f32047B.f32010e = f32061e;
                }
                concurrentHashMap.put("device_adid", f32061e);
            }
            if (!TextUtils.isEmpty(AdSdk.adConfig().userId())) {
                concurrentHashMap.put("user_id", AdSdk.adConfig().userId());
            }
            if (AdSdk.adConfig().customController() == null || AdSdk.adConfig().customController().isCanUseImsi()) {
                f32060d = i(context);
            }
            if (!TextUtils.isEmpty(f32060d)) {
                if (TextUtils.isEmpty(f32047B.f32011f)) {
                    f32047B.f32011f = f32060d;
                }
                concurrentHashMap.put("device_imsi", f32060d);
            }
            h(context);
            if (!TextUtils.isEmpty(f32074r)) {
                if (TextUtils.isEmpty(f32047B.f32012g)) {
                    f32047B.f32012g = f32074r;
                }
                concurrentHashMap.put("device_hmscore", f32074r);
            }
            if (f32062f == null) {
                try {
                    f32062f = context.getResources().getDisplayMetrics();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            DisplayMetrics displayMetrics = f32062f;
            if (displayMetrics != null) {
                concurrentHashMap.put("device_x_width", String.valueOf(displayMetrics.widthPixels));
                concurrentHashMap.put("device_x_height", String.valueOf(f32062f.heightPixels));
            }
            DisplayMetrics displayMetricsL = l(context);
            concurrentHashMap.put("device_ppi", String.valueOf(displayMetricsL.densityDpi));
            concurrentHashMap.put("device_width", String.valueOf(displayMetricsL.widthPixels));
            concurrentHashMap.put("device_height", String.valueOf(displayMetricsL.heightPixels));
            concurrentHashMap.put("device_density", String.valueOf(displayMetricsL.density));
            f(context);
            if (!TextUtils.isEmpty(f32063g)) {
                concurrentHashMap.put(bv.ac, f32063g);
            }
            if (TextUtils.isEmpty(f32064h)) {
                n(context);
            }
            if (!TextUtils.isEmpty(f32064h)) {
                if (TextUtils.isEmpty(f32047B.f32013h)) {
                    f32047B.f32013h = f32064h;
                }
                concurrentHashMap.put("device_ua", f32064h);
            }
            k(context);
            if (!TextUtils.isEmpty(f32066j)) {
                if (TextUtils.isEmpty(f32047B.f32014i)) {
                    f32047B.f32014i = f32066j;
                }
                concurrentHashMap.put(bv.f48915p, f32066j);
            }
            f();
            if (!TextUtils.isEmpty(f32067k)) {
                concurrentHashMap.put("device_performance", f32067k);
            }
            g();
            if (!TextUtils.isEmpty(f32068l)) {
                if (TextUtils.isEmpty(f32047B.f32016k)) {
                    f32047B.f32016k = f32068l;
                }
                concurrentHashMap.put("device_rom_version", f32068l);
            }
            u1.a();
            if (!TextUtils.isEmpty(f32070n)) {
                concurrentHashMap.put("device_rom_version_vivo", f32070n);
            }
            h();
            if (!TextUtils.isEmpty(f32071o)) {
                if (TextUtils.isEmpty(f32047B.f32017l)) {
                    f32047B.f32017l = f32071o;
                }
                concurrentHashMap.put("device_syscmp_time", f32071o);
            }
            j();
            if (!TextUtils.isEmpty(f32075s)) {
                if (TextUtils.isEmpty(f32047B.f32018m)) {
                    f32047B.f32018m = f32075s;
                }
                concurrentHashMap.put("device_disk_total", f32075s);
            }
            d();
            if (!TextUtils.isEmpty(f32078v)) {
                if (TextUtils.isEmpty(f32047B.f32020o)) {
                    f32047B.f32020o = f32078v;
                }
                concurrentHashMap.put("device_cpu_model", f32078v);
            }
            k();
            if (!TextUtils.isEmpty(f32079w)) {
                if (TextUtils.isEmpty(f32047B.f32021p)) {
                    f32047B.f32021p = f32079w;
                }
                concurrentHashMap.put("device_update_mark", f32079w);
            }
            if (!Build.MANUFACTURER.equalsIgnoreCase(MediationConstant.ADN_XIAOMI)) {
                b();
                if (!TextUtils.isEmpty(f32081y)) {
                    if (TextUtils.isEmpty(f32047B.f32022q)) {
                        f32047B.f32022q = f32081y;
                    }
                    concurrentHashMap.put("device_boot_mark", f32081y);
                }
            }
            String strC = c();
            if (!TextUtils.isEmpty(strC)) {
                concurrentHashMap.put("device_boot_time", strC);
            }
            if (!TextUtils.isEmpty(f32080x)) {
                concurrentHashMap.put("device_sys_update", f32080x);
            }
            PckIdBean pckIdBean = r0.f31971b;
            if (pckIdBean != null) {
                String app_y = pckIdBean.getApp_y();
                String app_n = pckIdBean.getApp_n();
                if (!TextUtils.isEmpty(app_y)) {
                    if (app_y.startsWith(com.anythink.core.common.d.i.f2495E)) {
                        app_y = app_y.substring(1);
                    }
                    concurrentHashMap.put("app_y", app_y);
                }
                if (!TextUtils.isEmpty(app_n)) {
                    if (app_n.startsWith(com.anythink.core.common.d.i.f2495E)) {
                        app_n = app_n.substring(1);
                    }
                    concurrentHashMap.put("app_n", app_n);
                }
            }
            f32049D = concurrentHashMap;
            r.a().b("cache_params", new Gson().toJson(concurrentHashMap));
        } catch (Throwable th9) {
            th9.printStackTrace();
        }
    }

    public static void a(Map<String, String> map, Context context) {
        try {
            Constructor declaredConstructor = GPSUtils.class.getDeclaredConstructor(Context.class);
            declaredConstructor.setAccessible(true);
            double[] dArr = (double[]) GPSUtils.class.getMethod("getL", null).invoke(declaredConstructor.newInstance(context), null);
            if (dArr != null) {
                double d2 = dArr[0];
                double d3 = dArr[1];
                if (d2 <= 0.0d || d3 <= 0.0d) {
                    return;
                }
                map.put("device_geo_lat", String.valueOf(d2));
                map.put("device_geo_lon", String.valueOf(d3));
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized String a(Context context) {
        try {
            if (TextUtils.isEmpty(f32061e) && !f32052G) {
                f32052G = true;
                f32061e = Settings.System.getString(context.getContentResolver(), "android_id");
            }
        } catch (Throwable th) {
            throw th;
        }
        return f32061e;
    }

    public static String a(String str) {
        try {
            byte[] bArr = new byte[1024];
            return new String(bArr, 0, Runtime.getRuntime().exec(str).getInputStream().read(bArr), "utf-8").trim();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static boolean a() {
        String str;
        if (TextUtils.isEmpty(f32046A)) {
            String strA = r.a().a("cpuInfo", (String) null);
            f32046A = strA;
            if (!TextUtils.isEmpty(strA)) {
                str = f32046A;
            } else {
                ExecutorService executorService = h0.f31906a;
                h0.b.f31910a.a(new z0());
                str = f32046A;
            }
        } else {
            str = f32046A;
        }
        return str == null || TextUtils.isEmpty(str) || str.contains("intel") || str.contains("amd");
    }
}

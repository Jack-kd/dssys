package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.MSAdConfig;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.d;
import com.meishu.sdk.core.utils.h0;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class r0 {

    /* renamed from: a, reason: collision with root package name */
    public static String f31970a = null;

    /* renamed from: b, reason: collision with root package name */
    public static PckIdBean f31971b = null;

    /* renamed from: c, reason: collision with root package name */
    public static String f31972c = null;

    /* renamed from: d, reason: collision with root package name */
    public static PackageBean.DClick f31973d = null;

    /* renamed from: e, reason: collision with root package name */
    public static int f31974e = 1;

    /* renamed from: f, reason: collision with root package name */
    public static List<PackageBean.DpFlagBean> f31975f = null;

    /* renamed from: g, reason: collision with root package name */
    public static long f31976g = 0;

    /* renamed from: h, reason: collision with root package name */
    public static HashMap<String, Integer> f31977h = null;

    /* renamed from: i, reason: collision with root package name */
    public static int f31978i = 0;

    /* renamed from: j, reason: collision with root package name */
    public static PackageBean.HappyBean f31979j = null;

    /* renamed from: k, reason: collision with root package name */
    public static int f31980k = 0;

    /* renamed from: l, reason: collision with root package name */
    public static int f31981l = 3;

    /* renamed from: m, reason: collision with root package name */
    public static PackageBean.AdBean f31982m;

    /* renamed from: n, reason: collision with root package name */
    public static Integer f31983n;

    /* renamed from: o, reason: collision with root package name */
    public static int f31984o;

    /* renamed from: p, reason: collision with root package name */
    public static List<String> f31985p;

    /* renamed from: q, reason: collision with root package name */
    public static int f31986q;

    /* renamed from: r, reason: collision with root package name */
    public static int f31987r;

    /* renamed from: s, reason: collision with root package name */
    public static int f31988s;

    /* renamed from: t, reason: collision with root package name */
    public static int f31989t;

    public class a implements z<q0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f31990a;

        public a(Context context) {
            this.f31990a = context;
        }

        @Override // com.meishu.sdk.core.utils.z
        public void a(q0 q0Var) throws IOException {
            String string;
            q0 q0Var2 = q0Var;
            try {
                int i2 = q0Var2.f31958b;
                if (i2 == 200) {
                    string = q0Var2.f31959c;
                    String strB = g1.b(string);
                    if (strB != null) {
                        string = strB;
                    }
                } else {
                    string = i2 == 304 ? AdSdk.getSharedPreferences().getString("packageKey", "") : "";
                }
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                Gson gson = new Gson();
                PackageBean packageBean = (PackageBean) gson.fromJson(string, PackageBean.class);
                r0.f31973d = packageBean.getDclk();
                r0.f31976g = packageBean.getShakeTimeout();
                r0.a(this.f31990a, packageBean, true);
                String json = gson.toJson(r0.f31973d);
                AdSdk.getSharedPreferences().edit().putString("dclk", json).apply();
                r.a().b("dclk", json);
                AdSdk.getSharedPreferences().edit().putLong("shakeTimeout", r0.f31976g).apply();
                r.a().b("shakeTimeout", r0.f31976g);
                r0.f31978i = packageBean.getVerbosity();
                AdSdk.getSharedPreferences().edit().putInt("verbosity", packageBean.getVerbosity()).apply();
                r.a().b("verbosity", packageBean.getVerbosity());
                PackageBean.HappyBean happy = packageBean.getHappy();
                r0.f31979j = happy;
                if (happy != null) {
                    String json2 = gson.toJson(happy);
                    AdSdk.getSharedPreferences().edit().putString("happybean", json2).apply();
                    r.a().b("happybean", json2);
                }
                r0.f31981l = packageBean.getUseHttps();
                r.a().b("useHttps", r0.f31981l);
                int dpstay = packageBean.getDpstay();
                r0.f31980k = dpstay;
                if (dpstay > 0) {
                    AdSdk.getSharedPreferences().edit().putInt("dpstay", r0.f31980k).apply();
                    r.a().b("dpstay", r0.f31980k);
                }
                PackageBean.AdBean ad = packageBean.getAd();
                r0.f31982m = ad;
                if (ad != null) {
                    r.a().b("pack_ad", gson.toJson(r0.f31982m));
                }
                Integer fieldExport = packageBean.getFieldExport();
                r0.f31983n = fieldExport;
                if (fieldExport != null) {
                    r.a().b("field_export", r0.f31983n.intValue());
                }
                r0.f31984o = packageBean.getUseBrowser();
                r.a().b("use_browser", r0.f31984o);
                r0.f31988s = packageBean.getDue();
                r.a().b("due", r0.f31988s);
                r0.f31986q = packageBean.getOlp();
                r.a().b("olp", r0.f31986q);
                if (packageBean.getDefImages() != null) {
                    List<String> defImages = packageBean.getDefImages();
                    ExecutorService executorService = h0.f31906a;
                    h0.b.f31910a.a(new s0(defImages));
                }
                List<String> jbUrlPrefixes = packageBean.getJbUrlPrefixes();
                r0.f31985p = jbUrlPrefixes;
                if (jbUrlPrefixes == null || jbUrlPrefixes.isEmpty()) {
                    r rVarA = r.a();
                    rVarA.getClass();
                    try {
                        rVarA.f31967b.remove("jbUrlPrefixes");
                        rVarA.d();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else {
                    r.a().b("jbUrlPrefixes", gson.toJson(r0.f31985p));
                }
                r0.f31987r = packageBean.getSyncSave();
                r.a().b("syncSave", r0.f31987r);
                r0.f31989t = packageBean.getNoldp();
                r.a().b("noldp", r0.f31989t);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.utils.z
        public void onFailure(@NotNull IOException iOException) {
            try {
                String string = AdSdk.getSharedPreferences().getString("packageKey", "");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                r0.a(this.f31990a, (PackageBean) new Gson().fromJson(string, PackageBean.class), false);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b implements z<q0> {
        @Override // com.meishu.sdk.core.utils.z
        public /* bridge */ /* synthetic */ void a(q0 q0Var) throws IOException {
        }

        @Override // com.meishu.sdk.core.utils.z
        public void onFailure(@NotNull IOException iOException) {
        }
    }

    public static void a(Context context) {
        PackageBean packageBean;
        try {
            String string = AdSdk.getSharedPreferences().getString("packageKey", "");
            HashMap map = new HashMap();
            if (AdSdk.adConfig() != null) {
                map.put("app_id", AdSdk.adConfig().appId());
            }
            if (!TextUtils.isEmpty("2.5.13.0")) {
                map.put("sdk_version", "2.5.13.0");
                map.put("sdk_version_code", Long.toString(2051300L));
            }
            if (TextUtils.isEmpty(f31970a)) {
                f31970a = context.getPackageName();
            }
            if (!TextUtils.isEmpty(f31970a)) {
                map.put("app_package", f31970a);
            }
            map.put("device_os", "android");
            map.put("oem", "ms");
            String str = y0.f32057a;
            map.put(cl.f49059n, "20251125");
            String str2 = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(str2)) {
                map.put(bv.f48881H, str2);
            }
            String str3 = Build.BRAND;
            if (!TextUtils.isEmpty(str3)) {
                map.put(bv.f48879F, str3);
            }
            String str4 = Build.MODEL;
            if (!TextUtils.isEmpty(str4)) {
                map.put("device_model", str4);
            }
            if (!TextUtils.isEmpty(AdSdk.getLocalOaid())) {
                map.put("device_oaid", AdSdk.getLocalOaid());
            }
            if (AdSdk.adConfig() == null || AdSdk.adConfig().customController() == null) {
                f31972c = y0.a(context);
            } else if (AdSdk.adConfig().customController().getAndroidId() != null) {
                f31972c = AdSdk.adConfig().customController().getAndroidId();
            } else if (AdSdk.adConfig().customController().isCanUseAndroidId()) {
                f31972c = y0.a(context);
            }
            if (!TextUtils.isEmpty(f31972c)) {
                map.put("device_adid", f31972c);
            }
            Locale locale = context.getResources().getConfiguration().locale;
            if (locale != null) {
                map.put(bv.f48888O, locale.getCountry());
                map.put("language", locale.getLanguage());
            }
            map.put("init_uuid", MSAdConfig.initUUID());
            map.put(com.baidu.mobads.sdk.internal.d.f11442a, Long.toString(MSAdConfig.initTime()));
            Gson gson = new Gson();
            if (!TextUtils.isEmpty(string) && (packageBean = (PackageBean) gson.fromJson(string, PackageBean.class)) != null && !TextUtils.isEmpty(packageBean.getVer())) {
                map.put("ver", packageBean.getVer());
            }
            String json = gson.toJson(map);
            try {
                json = g1.c(json);
            } catch (Exception unused) {
            }
            HashMap map2 = new HashMap();
            map2.put("message", json);
            a0.a((AdSdk.adConfig() == null || !AdSdk.adConfig().isTest()) ? "https://sdk.1rtb.net/sdk/config" : "https://sdk-demo.1rtb.net/sdk/config", null, map2, null, new a(context));
        } catch (Throwable unused2) {
        }
    }

    public static int b() {
        try {
            PackageBean.AdBean adBean = f31982m;
            if (adBean == null || adBean.getSplash() == null) {
                return 0;
            }
            return f31982m.getSplash().getWwtt();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean c() {
        try {
            PackageBean.AdBean adBean = f31982m;
            if (adBean != null && adBean.getFeed() != null) {
                if (f31982m.getFeed().getNorlsc() == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean d() {
        try {
            PackageBean.AdBean adBean = f31982m;
            if (adBean != null && adBean.getFeed() != null) {
                if (f31982m.getFeed().getUseOldStyle() == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void a(Context context, PackageBean packageBean) {
        if (packageBean != null) {
            try {
                if (packageBean.getApp() == null) {
                    return;
                }
                PackageBean.AppBean app = packageBean.getApp();
                String url = app.getUrl();
                String ver = packageBean.getVer();
                List<PackageBean.AppBean.PackBean> required = app.getRequired();
                List<PackageBean.AppBean.PackBean> others = app.getOthers();
                if ((required == null || required.isEmpty()) && (others == null || others.isEmpty())) {
                    return;
                }
                a(context, required, others, app.getTtl(), ver, url);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context, PackageBean packageBean, boolean z2) {
        if (packageBean != null) {
            PackageBean.SplashBean sty = packageBean.getSty();
            if (sty != null) {
                f31974e = sty.getV();
                AdSdk.getSharedPreferences().edit().putInt("splshsty", f31974e).apply();
                r.a().b("splshsty", f31974e);
            }
            try {
                HashMap<String, Integer> webviewLimitedSchemes = packageBean.getWebviewLimitedSchemes();
                if (webviewLimitedSchemes != null) {
                    f31977h = webviewLimitedSchemes;
                    String json = new Gson().toJson(webviewLimitedSchemes);
                    AdSdk.getSharedPreferences().edit().putString("black_scheme", json).apply();
                    r.a().b("black_scheme", json);
                }
            } catch (Throwable unused) {
            }
            try {
                List<PackageBean.DpFlagBean> dpflag = packageBean.getDpflag();
                if (dpflag != null) {
                    f31975f = dpflag;
                    String json2 = new Gson().toJson(dpflag);
                    AdSdk.getSharedPreferences().edit().putString("dpflag", json2).apply();
                    r.a().b("dpflag", json2);
                }
            } catch (Throwable unused2) {
            }
            if (packageBean.getApp() != null) {
                if (z2) {
                    d dVar = d.b.f31870a;
                    synchronized (dVar.f31867m) {
                        dVar.a(packageBean);
                    }
                }
                d.b.f31870a.a(Looper.myLooper() == Looper.getMainLooper(), true);
            }
            try {
                AdSdk.getSharedPreferences().edit().putString("packageKey", new Gson().toJson(packageBean)).commit();
            } catch (Exception unused3) {
            }
        }
    }

    public static void a(Context context, List<PackageBean.AppBean.PackBean> list, List<PackageBean.AppBean.PackBean> list2, Integer num, String str, String str2) {
        try {
            num.getClass();
            f31971b = a(list);
            String strC = g1.c(a(context, a(list2), str));
            HashMap map = new HashMap();
            map.put("data", strC);
            if (!TextUtils.isEmpty(str2)) {
                a0.a(str2, null, map, null, new b());
            }
            String json = new Gson().toJson(f31971b);
            AdSdk.getSharedPreferences().edit().putString("pck_id_bean", json).apply();
            r.a().b("pck_id_bean", json);
        } catch (Throwable unused) {
        }
    }

    public static String a(Context context, PckIdBean pckIdBean, String str) {
        HashMap map = new HashMap();
        if (AdSdk.adConfig() != null) {
            map.put("app_id", AdSdk.adConfig().appId());
        }
        if (!TextUtils.isEmpty("2.5.13.0")) {
            map.put("sdk_version", "2.5.13.0");
            map.put("sdk_version_code", Long.toString(2051300L));
        }
        if (TextUtils.isEmpty(f31970a)) {
            f31970a = context.getPackageName();
        }
        if (!TextUtils.isEmpty(f31970a)) {
            map.put("app_package", f31970a);
        }
        String str2 = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str2)) {
            map.put(bv.f48881H, str2);
        }
        String str3 = Build.BRAND;
        if (!TextUtils.isEmpty(str3)) {
            map.put(bv.f48879F, str3);
        }
        String str4 = Build.MODEL;
        if (!TextUtils.isEmpty(str4)) {
            map.put("device_model", str4);
        }
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            map.put(bv.f48888O, locale.getCountry());
            map.put("language", locale.getLanguage());
        }
        map.put("init_uuid", MSAdConfig.initUUID());
        map.put(com.baidu.mobads.sdk.internal.d.f11442a, Long.toString(MSAdConfig.initTime()));
        map.put("ver", str);
        if (!TextUtils.isEmpty(AdSdk.getLocalOaid())) {
            map.put("device_oaid", AdSdk.getLocalOaid());
        }
        if (AdSdk.adConfig() != null && AdSdk.adConfig().customController() != null) {
            if (AdSdk.adConfig().customController().getAndroidId() != null) {
                f31972c = AdSdk.adConfig().customController().getAndroidId();
            } else if (AdSdk.adConfig().customController().isCanUseAndroidId()) {
                y0.a(context);
            }
        } else {
            y0.a(context);
        }
        if (!TextUtils.isEmpty(f31972c)) {
            map.put("device_adid", f31972c);
        }
        String app_y = f31971b.getApp_y();
        if (!TextUtils.isEmpty(pckIdBean.getApp_y())) {
            app_y = app_y + com.anythink.core.common.d.i.f2495E + pckIdBean.getApp_y();
        }
        String app_n = f31971b.getApp_n();
        if (!TextUtils.isEmpty(pckIdBean.getApp_n())) {
            app_n = app_n + com.anythink.core.common.d.i.f2495E + pckIdBean.getApp_n();
        }
        if (!TextUtils.isEmpty(app_y)) {
            if (app_y.startsWith(com.anythink.core.common.d.i.f2495E)) {
                app_y = app_y.substring(1);
            }
            map.put("app_y", app_y);
        }
        if (!TextUtils.isEmpty(app_n)) {
            if (app_n.startsWith(com.anythink.core.common.d.i.f2495E)) {
                app_n = app_n.substring(1);
            }
            map.put("app_n", app_n);
        }
        DisplayMetrics displayMetricsL = y0.l(context);
        map.put("device_ppi", String.valueOf(displayMetricsL.densityDpi));
        map.put("device_width", String.valueOf(displayMetricsL.widthPixels));
        map.put("device_height", String.valueOf(displayMetricsL.heightPixels));
        map.put("device_density", String.valueOf(displayMetricsL.density));
        return new Gson().toJson(map);
    }

    public static PckIdBean a(List list) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        if (list != null && list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                PackageBean.AppBean.PackBean packBean = (PackageBean.AppBean.PackBean) list.get(i2);
                if (!TextUtils.isEmpty(packBean.getId())) {
                    d dVar = d.b.f31870a;
                    dVar.getClass();
                    Boolean bool = null;
                    if (!TextUtils.isEmpty(packBean.getId())) {
                        if (dVar.f31855a.isEmpty()) {
                            synchronized (dVar.f31867m) {
                                dVar.a((PackageBean) null);
                            }
                        }
                        String id = packBean.getId();
                        try {
                            if (dVar.f31856b.containsKey(id)) {
                                bool = dVar.f31856b.get(id);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    if (bool != null) {
                        if (bool.booleanValue()) {
                            if (sb.length() > 0) {
                                sb.append(com.anythink.core.common.d.i.f2495E);
                            }
                            sb.append(packBean.getId());
                        } else {
                            if (sb2.length() > 0) {
                                sb2.append(com.anythink.core.common.d.i.f2495E);
                            }
                            sb2.append(packBean.getId());
                        }
                    }
                }
            }
        }
        PckIdBean pckIdBean = new PckIdBean();
        pckIdBean.setApp_y(sb.toString());
        pckIdBean.setApp_n(sb2.toString());
        return pckIdBean;
    }

    public static boolean a(Context context, int i2, PackageBean.AppBean.PackBean packBean) throws URISyntaxException {
        boolean z2 = false;
        if (packBean == null || context == null) {
            return false;
        }
        String app_package = packBean.getApp_package();
        try {
            if (!TextUtils.isEmpty(app_package) && !app_package.contains("://")) {
                if (context.getPackageManager().getPackageInfo(app_package, 256) != null) {
                    z2 = true;
                }
            } else {
                Intent uri = Intent.parseUri(app_package, 0);
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                uri.setSelector(null);
                if (uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                    z2 = true;
                }
            }
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(packBean.getId())) {
            packBean.setInstalled(z2);
        }
        packBean.setLastCheckTime(System.currentTimeMillis());
        packBean.setExpirationTime((i2 * 1000) + packBean.getLastCheckTime());
        return true;
    }

    public static int a() {
        try {
            PackageBean.AdBean adBean = f31982m;
            if (adBean == null || adBean.getSplash() == null) {
                return 0;
            }
            return f31982m.getSplash().getVideoCacheTime();
        } catch (Exception unused) {
            return 0;
        }
    }
}

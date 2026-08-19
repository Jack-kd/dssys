package com.byazt.zn;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.xci.df;
import com.byazt.xci.hd;
import com.byazt.xci.jd;
import com.byazt.xci.mp;
import com.byazt.xci.tw;
import com.byazt.xci.ux;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.umeng.analytics.pro.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 574})
/* loaded from: classes3.dex */
public class ky {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f28534a = 0;
    public static volatile long eb = 0;
    public static long gu = -1;
    public static volatile int hp = 0;

    /* renamed from: j, reason: collision with root package name */
    public static volatile String f28536j = null;
    public static volatile boolean jl = false;
    public static volatile int jx = 0;

    /* renamed from: l, reason: collision with root package name */
    public static volatile int f28538l = 0;

    /* renamed from: s, reason: collision with root package name */
    public static volatile int f28540s = -1;

    /* renamed from: v, reason: collision with root package name */
    public static String f28542v;

    /* renamed from: w, reason: collision with root package name */
    public static volatile long f28543w;
    public static volatile int zy;

    /* renamed from: k, reason: collision with root package name */
    public static final AtomicBoolean f28537k = new AtomicBoolean(false);

    /* renamed from: u, reason: collision with root package name */
    public static volatile String f28541u = null;
    public static volatile String xs = null;
    public static volatile String vv = null;

    /* renamed from: q, reason: collision with root package name */
    public static String f28539q = null;

    /* renamed from: e, reason: collision with root package name */
    public static String f28535e = null;

    @com.byazt.kj.hp(hp = {0, 1, 442, 2388})
    /* renamed from: com.byazt.zn.ky$2, reason: invalid class name */
    public static class AnonymousClass2 implements FilenameFilter {
        public Pattern hp = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.hp.matcher(str).matches();
        }
    }

    public static boolean a(mp mpVar) {
        int iJl = jl(mpVar);
        return (iJl == 9 || iJl == 8 || iJl == 7) && !TextUtils.isEmpty(df.hp(mpVar));
    }

    public static boolean b(mp mpVar) {
        if (mpVar == null || com.byazt.xci.ec.j(mpVar)) {
            return false;
        }
        int iHd = mpVar.hd();
        return iHd == 5 || iHd == 4;
    }

    public static boolean cx() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean d(mp mpVar) {
        return mpVar != null && TextUtils.equals(mpVar.cx(), mpVar.j()) && mpVar.q() == 3 && !TextUtils.isEmpty(wv(mpVar));
    }

    public static boolean di(mp mpVar) {
        if (mpVar == null) {
            return true;
        }
        int iA = com.byazt.jz.sz.l().a(zy(mpVar));
        if (iA == 1) {
            return com.byazt.ymw.vv.j(com.byazt.jz.sz.getContext());
        }
        if (iA == 2) {
            return com.byazt.ymw.vv.w(com.byazt.jz.sz.getContext()) || com.byazt.ymw.vv.j(com.byazt.jz.sz.getContext()) || com.byazt.ymw.vv.a(com.byazt.jz.sz.getContext());
        }
        if (iA != 3) {
            return iA != 5 || com.byazt.ymw.vv.j(com.byazt.jz.sz.getContext()) || com.byazt.ymw.vv.a(com.byazt.jz.sz.getContext());
        }
        return false;
    }

    private static boolean dy() {
        try {
            return "mounted".equals(com.byazt.dnb.j.hp());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean e(mp mpVar) {
        JSONObject jSONObjectQ_;
        if (mpVar == null || (jSONObjectQ_ = mpVar.q_()) == null) {
            return false;
        }
        try {
            int iOptInt = new JSONObject(jSONObjectQ_.optString("compliance_data")).optJSONObject("ad").optInt("pricing_type");
            return iOptInt == 3 || iOptInt == 6;
        } catch (Exception e2) {
            com.byazt.ymw.u.l("ToolUtils", "error:" + e2.getMessage());
            return false;
        }
    }

    public static boolean eb(mp mpVar) {
        int iJl = jl(mpVar);
        return iJl == 3 || iJl == 4 || iJl == 9 || iJl == 7 || iJl == 8;
    }

    public static int ec(mp mpVar) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        if (jSONObjectQ_ != null) {
            return jSONObjectQ_.optInt("price", 0);
        }
        return 0;
    }

    public static String gu(mp mpVar) {
        com.byazt.xci.xs xsVarK;
        if (mpVar == null || (xsVarK = mpVar.k()) == null) {
            return null;
        }
        return xsVarK.l();
    }

    public static boolean hp(Context context, String str) {
        Intent intentL;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                if (o()) {
                    if (!l(str) || (intentL = l(context, str)) == null) {
                        return false;
                    }
                    intentL.putExtra("START_ONLY_FOR_ANDROID", true);
                    com.byazt.ymw.l.hp(context, intentL, null);
                    return true;
                }
                Intent intentL2 = l(context, str);
                if (intentL2 == null) {
                    return false;
                }
                intentL2.putExtra("START_ONLY_FOR_ANDROID", true);
                context.startActivity(intentL2);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static String hq(mp mpVar) {
        if (mpVar != null) {
            JSONObject jSONObjectXj = mpVar.xj();
            strOptString = jSONObjectXj != null ? jSONObjectXj.optString("pkg") : null;
            if (TextUtils.isEmpty(strOptString)) {
                return wv(mpVar);
            }
        }
        return strOptString;
    }

    private static boolean j(Intent intent) {
        try {
            List<ResolveInfo> listHp = s.hp(intent, 65536);
            if (listHp != null) {
                if (listHp.size() > 0) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int jl(mp mpVar) {
        JSONObject jSONObjectQ_;
        if (mpVar == null || (jSONObjectQ_ = mpVar.q_()) == null) {
            return 0;
        }
        return jSONObjectQ_.optInt("ad_slot_type", 0);
    }

    public static boolean jx(String str) {
        String[] strArr = {"data", "media", "obb"};
        for (int i2 = 0; i2 < 3; i2++) {
            if (hp(strArr[i2], str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static String k(mp mpVar) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("origin_req_id", "") : "";
    }

    public static Intent l(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 33 && !launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
        return launchIntentForPackage;
    }

    public static String n(mp mpVar) {
        return (mpVar.v() == null || TextUtils.isEmpty(mpVar.v().jx())) ? !TextUtils.isEmpty(mpVar.qk()) ? mpVar.qk() : !TextUtils.isEmpty(mpVar.v_()) ? mpVar.v_() : "" : mpVar.v().jx();
    }

    public static String ns(mp mpVar) {
        return !TextUtils.isEmpty(mpVar.v_()) ? mpVar.v_() : !TextUtils.isEmpty(mpVar.cu()) ? mpVar.cu() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void nu() {
        List<String> listMe;
        com.byazt.jkd.gu guVarL = com.byazt.jz.sz.l();
        if (com.byazt.jz.s.u().hd()) {
            com.byazt.jz.s.u().q(false);
            return;
        }
        if (guVarL.pf() || (listMe = guVarL.me()) == null) {
            return;
        }
        int iTi = guVarL.ti();
        for (int i2 = 0; i2 < iTi && i2 < listMe.size(); i2++) {
            Uri uri = Uri.parse(listMe.get(i2));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            hp(intent, true);
        }
    }

    public static boolean o(mp mpVar) {
        return mpVar != null && mpVar.dh() == 1;
    }

    public static boolean q(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        int iJl = jl(mpVar);
        return iJl == 3 || iJl == 4;
    }

    public static boolean s(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        int iJl = jl(mpVar);
        return iJl == 5 || iJl == 1 || iJl == 2;
    }

    public static String sz(mp mpVar) {
        if (mpVar == null) {
            return "";
        }
        com.byazt.xci.w wVarV = mpVar.v();
        String strL = wVarV != null ? wVarV.l() : null;
        return TextUtils.isEmpty(strL) ? mpVar.rz() : strL;
    }

    public static double u(mp mpVar) {
        return jx(mpVar.q_());
    }

    public static String v(mp mpVar) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("customer_id", "") : "";
    }

    public static int vv(mp mpVar) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        if (jSONObjectQ_ != null) {
            return jSONObjectQ_.optInt("pricing", 0);
        }
        return 0;
    }

    public static int w(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return (i2 == 3 || i2 == 4 || i2 == 7 || i2 == 8) ? 5 : 3;
        }
        return 4;
    }

    public static String wv(mp mpVar) {
        Object obj;
        if (mpVar == null) {
            return "";
        }
        com.byazt.xci.a aVarVv = mpVar.vv();
        String strZy = aVarVv != null ? aVarVv.zy() : "";
        if (!TextUtils.isEmpty(strZy)) {
            return strZy;
        }
        com.byazt.xci.w wVarV = mpVar.v();
        if (wVarV != null) {
            strZy = wVarV.j();
        }
        if (!TextUtils.isEmpty(strZy)) {
            return strZy;
        }
        Map<String, Object> mapRp = mpVar.rp();
        if (mapRp != null && (obj = mapRp.get("ad_package_name")) != null) {
            strZy = obj.toString();
        }
        return !TextUtils.isEmpty(strZy) ? strZy : mpVar.ks();
    }

    public static String xs(mp mpVar) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("req_id", "") : "";
    }

    public static int zy(mp mpVar) {
        JSONObject jSONObjectQ_;
        if (mpVar == null || (jSONObjectQ_ = mpVar.q_()) == null) {
            return 0;
        }
        return jSONObjectQ_.optInt("rit", 0);
    }

    public static JSONObject cx(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.q_();
    }

    public static int eb(String str) {
        return l(w(str));
    }

    public static boolean o() {
        Context context = com.byazt.jz.sz.getContext();
        if (context != null) {
            return context.getApplicationInfo().targetSdkVersion < 30 || Build.VERSION.SDK_INT < 30 || context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES") == 0;
        }
        com.byazt.ymw.u.hp("params context is null");
        return false;
    }

    public static String q() {
        if (TextUtils.isEmpty(f28541u) && com.byazt.jz.sz.getContext() != null) {
            try {
                PackageInfo packageInfo = com.byazt.jz.sz.getContext().getPackageManager().getPackageInfo(s(), 0);
                f28541u = String.valueOf(packageInfo.versionCode);
                xs = packageInfo.versionName;
            } catch (Throwable th) {
                com.byazt.ymw.u.hp("ToolUtils", "ToolUtils getVersionCode throws exception :", th);
            }
        }
        return f28541u;
    }

    public static double s(String str) {
        return jx(w(str));
    }

    public static int u() {
        if (jx > 0) {
            return jx;
        }
        int iL = com.byazt.lca.j.hp().l("cpu_min_freq", 0);
        jx = iL;
        return iL;
    }

    public static JSONObject w(String str) {
        if (!TextUtils.isEmpty(str) && str != null && !str.isEmpty()) {
            try {
                return new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static String b() {
        String str = String.format("https://%s", vv(com.byazt.jz.sz.l().nu()));
        return pu.l(Uri.parse(str).buildUpon().appendQueryParameter("datetime", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(new Long(System.currentTimeMillis()).longValue()))).toString());
    }

    public static long ec() {
        if (f28534a > 0) {
            return f28534a;
        }
        long jL = com.byazt.lca.j.hp().l("free_storage", 0L);
        f28534a = jL;
        return jL;
    }

    public static String gu() {
        if (!TextUtils.isEmpty(f28536j) && !f28536j.equals("0")) {
            return f28536j;
        }
        String strL = com.byazt.lca.j.hp().l("total_memory", "0");
        f28536j = strL;
        return strL;
    }

    public static boolean j() {
        return (com.byazt.jz.s.u() == null || com.byazt.jz.s.u().hp()) ? false : true;
    }

    public static String jl() {
        return String.valueOf(Long.parseLong(gu()) * 1024);
    }

    public static long vv() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static int zy() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 0);
    }

    public static long a(String str) {
        return hp(w(str));
    }

    public static String eb() {
        return UUID.randomUUID().toString();
    }

    public static int j(String str) {
        str.getClass();
        switch (str) {
            case "banner_ad":
                return 2;
            case "rewarded_video":
                return 7;
            case "fullscreen_interstitial_ad":
                return 5;
            case "splash_ad":
            case "cache_splash_ad":
                return 4;
            case "interaction":
                return 3;
            case "draw_ad":
                return 6;
            default:
                return 1;
        }
    }

    public static int k() {
        if (hp > 0) {
            return hp;
        }
        int iL = com.byazt.lca.j.hp().l("cpu_cnt", 0);
        hp = iL;
        return iL;
    }

    @HungeonFlag
    public static String s() {
        if (!TextUtils.isEmpty(vv)) {
            return vv;
        }
        if (com.byazt.jz.sz.getContext() != null) {
            try {
                vv = com.byazt.jz.sz.getContext().getPackageName();
            } catch (Throwable th) {
                com.byazt.ymw.u.hp("ToolUtils", "ToolUtils getPackageName throws exception :", th);
            }
        }
        return vv;
    }

    public static int v() {
        if (f28538l > 0) {
            return f28538l;
        }
        int iL = com.byazt.lca.j.hp().l("cpu_max_freq", 0);
        f28538l = iL;
        return iL;
    }

    public static long xs() {
        if (f28543w > 0) {
            return f28543w;
        }
        long jL = com.byazt.lca.j.hp().l("internal_storage", 0L);
        f28543w = jL;
        return jL;
    }

    public static String zy(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", "OPPO");
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static void hq() {
        String strJc = com.byazt.jz.sz.l().jc();
        try {
            Matcher matcher = Pattern.compile("\\|\\|([a-zA-Z0-9.-]+)\\^").matcher(strJc);
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                if (!TextUtils.isEmpty(strGroup)) {
                    com.byazt.xci.r.hp.add(strGroup);
                }
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strJc)) {
            return;
        }
        Set<String> set = com.byazt.xci.r.hp;
        if (set.isEmpty()) {
            set.add("empty");
        }
    }

    public static boolean j(mp mpVar) {
        return mpVar != null && jl(mpVar) == 9;
    }

    public static String jl(String str) {
        return hp(str, false, 1);
    }

    public static void jx() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.ky.1
                @Override // java.lang.Runnable
                public void run() {
                    ky.nu();
                }
            });
        } else {
            nu();
        }
    }

    public static boolean w(mp mpVar) {
        if (mpVar != null) {
            boolean z2 = jl(mpVar) == 5;
            if (hd.l(mpVar) == 7 && z2) {
                return true;
            }
        }
        return false;
    }

    public static void a() {
        if (com.byazt.jz.d.j()) {
            ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getWebViewUA(true);
        }
    }

    public static String d() {
        return s() + ".openadsdk.permission.TT_PANGOLIN";
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[Catch: Exception -> 0x005d, DONT_GENERATE, TRY_LEAVE, TryCatch #1 {Exception -> 0x005d, blocks: (B:22:0x0055, B:24:0x005a), top: B:38:0x0055 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int j(int r7) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
            r2 = r1
        L3:
            int r7 = r7 + (-1)
            if (r7 < 0) goto L6b
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L46
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L46
            java.lang.String r5 = "/sys/devices/system/cpu/cpu"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L46
            r4.append(r7)     // Catch: java.lang.Throwable -> L46
            java.lang.String r5 = "/cpufreq/cpuinfo_min_freq"
            r4.append(r5)     // Catch: java.lang.Throwable -> L46
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L46
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L46
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L40
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L40
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L3b
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L3b
            if (r2 >= r0) goto L2f
            goto L31
        L2f:
            if (r0 != 0) goto L32
        L31:
            r0 = r2
        L32:
            r1.close()     // Catch: java.lang.Exception -> L38
            r3.close()     // Catch: java.lang.Exception -> L38
        L38:
            r2 = r1
            r1 = r3
            goto L3
        L3b:
            r2 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
            goto L4a
        L40:
            r1 = move-exception
            r6 = r2
            r2 = r1
            r1 = r3
            r3 = r6
            goto L4a
        L46:
            r3 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
        L4a:
            java.lang.String r4 = "ToolUtils"
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L5f
            com.byazt.ymw.u.l(r4, r2)     // Catch: java.lang.Throwable -> L5f
            if (r3 == 0) goto L58
            r3.close()     // Catch: java.lang.Exception -> L5d
        L58:
            if (r1 == 0) goto L5d
            r1.close()     // Catch: java.lang.Exception -> L5d
        L5d:
            r2 = r3
            goto L3
        L5f:
            r7 = move-exception
            if (r3 == 0) goto L65
            r3.close()     // Catch: java.lang.Exception -> L6a
        L65:
            if (r1 == 0) goto L6a
            r1.close()     // Catch: java.lang.Exception -> L6a
        L6a:
            throw r7
        L6b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.ky.j(int):int");
    }

    public static int ns() {
        if (f28540s >= 0) {
            return f28540s;
        }
        int iL = com.byazt.lca.j.hp().l("is_root", -1);
        f28540s = iL;
        return iL;
    }

    public static long sz() {
        if (eb > 0) {
            return eb;
        }
        long jL = com.byazt.lca.j.hp().l("sdcard_storage", 0L);
        eb = jL;
        return jL;
    }

    public static long u(String str) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("/([^/]+)/video/tos/cn").matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group(1);
            if (TextUtils.isEmpty(strGroup)) {
                return 0L;
            }
            try {
                long j2 = Long.parseLong(strGroup, 16);
                return str.contains("v3-be-pack") ? j2 + 10800 : j2;
            } catch (Exception unused) {
            }
        }
        return 0L;
    }

    public static String e() {
        if (TextUtils.isEmpty(xs) && com.byazt.jz.sz.getContext() != null) {
            try {
                PackageInfo packageInfo = com.byazt.jz.sz.getContext().getPackageManager().getPackageInfo(s(), 0);
                f28541u = String.valueOf(packageInfo.versionCode);
                xs = packageInfo.versionName;
            } catch (Throwable th) {
                com.byazt.ymw.u.hp("ToolUtils", "ToolUtils getVersionName throws exception :", th);
            }
        }
        return xs;
    }

    private static String ec(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter("aid", "1371").appendQueryParameter("device_platform", "android").appendQueryParameter("version_code", q()).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String gu(String str) {
        return hp(str, false, 0);
    }

    public static boolean l(String str) {
        Context context = com.byazt.jz.sz.getContext();
        if (context != null && !TextUtils.isEmpty(str)) {
            if (o()) {
                try {
                    if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                        return true;
                    }
                } catch (Throwable unused) {
                    return false;
                }
            } else if (com.byazt.jz.sz.l().mn()) {
                return jx(str);
            }
        }
        return false;
    }

    private static String vv(String str) {
        if (TextUtils.isEmpty(str)) {
            f28535e = "empty";
            return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
        }
        if (!str.contains("service/2/app_log")) {
            f28535e = str;
            return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
        }
        f28535e = null;
        return str;
    }

    public static long w() {
        return gu;
    }

    public static boolean jx(mp mpVar) {
        return mpVar != null && jl(mpVar) == 5;
    }

    public static int[] k(String str) {
        if (TextUtils.isEmpty(str)) {
            return new int[0];
        }
        String[] strArrSplit = str.split(",");
        int[] iArr = new int[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                iArr[i2] = Integer.parseInt(strArrSplit[i2]);
            } catch (Exception unused) {
            }
        }
        return iArr;
    }

    public static long n() {
        try {
            if (!dy()) {
                return 0L;
            }
            StatFs statFs = new StatFs(com.byazt.ymw.eb.jx(com.byazt.jz.sz.getContext(), false, null).getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            com.byazt.ymw.u.l("ToolUtils", th.getMessage());
            return 0L;
        }
    }

    public static boolean v(String str) throws NumberFormatException {
        long jU = u(str);
        return jU != 0 && System.currentTimeMillis() - (jU * 1000) > 0;
    }

    private static String xs(String str) {
        if (TextUtils.isEmpty(str)) {
            f28539q = "empty";
            return "api-access.pangolin-sdk-toutiao1.com";
        }
        if (!str.contains("api-access")) {
            f28539q = str;
            return "api-access.pangolin-sdk-toutiao1.com";
        }
        f28539q = null;
        return str;
    }

    public static String di() {
        return pu.l(String.format("https://%s", "applog.bytedance.net/service/2/app_log_test/"));
    }

    private static double jx(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    public static String hp(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null) {
            return "";
        }
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) ? "" : scheme.toLowerCase(Locale.US);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0057 A[Catch: Exception -> 0x005a, DONT_GENERATE, TRY_LEAVE, TryCatch #1 {Exception -> 0x005a, blocks: (B:20:0x0052, B:22:0x0057), top: B:36:0x0052 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int jx(int r7) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
            r2 = r1
        L3:
            int r7 = r7 + (-1)
            if (r7 < 0) goto L68
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L43
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L43
            java.lang.String r5 = "/sys/devices/system/cpu/cpu"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L43
            r4.append(r7)     // Catch: java.lang.Throwable -> L43
            java.lang.String r5 = "/cpufreq/cpuinfo_max_freq"
            r4.append(r5)     // Catch: java.lang.Throwable -> L43
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L43
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L43
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3d
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L38
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L38
            if (r2 <= r0) goto L2f
            r0 = r2
        L2f:
            r1.close()     // Catch: java.lang.Exception -> L35
            r3.close()     // Catch: java.lang.Exception -> L35
        L35:
            r2 = r1
            r1 = r3
            goto L3
        L38:
            r2 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
            goto L47
        L3d:
            r1 = move-exception
            r6 = r2
            r2 = r1
            r1 = r3
            r3 = r6
            goto L47
        L43:
            r3 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
        L47:
            java.lang.String r4 = "ToolUtils"
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L5c
            com.byazt.ymw.u.l(r4, r2)     // Catch: java.lang.Throwable -> L5c
            if (r3 == 0) goto L55
            r3.close()     // Catch: java.lang.Exception -> L5a
        L55:
            if (r1 == 0) goto L5a
            r1.close()     // Catch: java.lang.Exception -> L5a
        L5a:
            r2 = r3
            goto L3
        L5c:
            r7 = move-exception
            if (r3 == 0) goto L62
            r3.close()     // Catch: java.lang.Exception -> L67
        L62:
            if (r1 == 0) goto L67
            r1.close()     // Catch: java.lang.Exception -> L67
        L67:
            throw r7
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.ky.jx(int):int");
    }

    public static String q(String str) throws IOException {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String line;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                    } catch (Throwable unused) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception unused3) {
                            }
                        }
                        return null;
                    }
                } while (!line.contains(str));
                if (line == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused4) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused5) {
                    }
                    return null;
                }
                String str2 = line.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused6) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused7) {
                }
                return str2;
            } catch (Throwable unused8) {
                bufferedReader = null;
            }
        } catch (Throwable unused9) {
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static void wv() {
        if (jl && zy == com.byazt.rj.jx.hp()) {
            return;
        }
        jl = true;
        zy = com.byazt.rj.jx.hp();
        com.byazt.sp.hp hpVarHp = com.byazt.sp.hp.hp();
        if (com.byazt.rj.jx.l()) {
            hpVarHp.hp("open_live_saas", new com.byazt.qq.jx());
            hpVarHp.hp("open_miniapp", new com.byazt.qq.j());
            hpVarHp.hp("open_landing_page", new com.byazt.qq.l());
            hpVarHp.hp("download", new com.byazt.qq.hp());
            hpVarHp.hp("open_scheme", new com.byazt.qq.w());
        } else {
            hpVarHp.hp("open_sass_live", new com.byazt.mpn.gu());
            hpVarHp.hp("open_miniapp", new com.byazt.mpn.jl());
            hpVarHp.hp("open_landing_page", new com.byazt.mpn.e());
            hpVarHp.hp("download", new com.byazt.mpn.eb());
            hpVarHp.hp("open_scheme", new com.byazt.mpn.zy());
        }
        hpVarHp.hp("open_policy", new com.byazt.mpn.k());
        hpVarHp.hp("end_card", new com.byazt.mpn.q());
        hpVarHp.hp("common_popup", new com.byazt.mpn.hp());
        hpVarHp.hp("desc_popup", new com.byazt.mpn.l());
        hpVarHp.hp("permission_popup", new com.byazt.mpn.jx());
        hpVarHp.hp("privacy_popup", new com.byazt.mpn.j());
        hpVarHp.hp("registration_pop", new com.byazt.mpn.w());
        hpVarHp.hp("dislike_popup", new com.byazt.mpn.a());
        hpVarHp.hp("download_popup", new com.byazt.mpn.s());
        hpVarHp.hp("reward_again", new com.byazt.mpn.vv());
        hpVarHp.hp("reward_continue", new com.byazt.mpn.vv());
        hpVarHp.hp("close_reward", new com.byazt.mpn.xs());
        hpVarHp.hp("report_event", new com.byazt.mpn.v());
        hpVarHp.hp("report_stats", new com.byazt.mpn.u());
    }

    public static boolean l(Intent intent, boolean z2) {
        Boolean boolHp;
        Uri data = intent.getData();
        if (data == null) {
            return false;
        }
        String strHp = o.hp(data);
        if (z2 && (boolHp = o.hp(strHp, 86400000L)) != null) {
            return boolHp.booleanValue();
        }
        boolean zJ = j(intent);
        o.hp(strHp, Boolean.valueOf(zJ));
        return zJ;
    }

    private static File hp(String str, String str2) {
        if (f28542v == null) {
            String str3 = System.getenv("EXTERNAL_STORAGE");
            f28542v = str3;
            if (str3 == null) {
                f28542v = "/sdcard";
            }
        }
        return new File(f28542v, "Android/" + str + ServiceReference.DELIMITER + str2);
    }

    public static boolean e(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String j(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean hp(Intent intent, boolean z2) {
        if (intent != null && o()) {
            return l(intent, z2);
        }
        return false;
    }

    public static boolean l() {
        try {
            PackageInfo packageInfo = com.byazt.jz.sz.getContext().getPackageManager().getPackageInfo(com.byazt.jz.sz.getContext().getPackageName(), 0);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ROOT);
            return simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())).compareTo(simpleDateFormat.format(Long.valueOf(packageInfo.firstInstallTime))) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static long jx(Context context) {
        int i2;
        try {
            i2 = context.getApplicationInfo().minSdkVersion;
        } catch (Throwable unused) {
            i2 = -1;
        }
        return i2;
    }

    public static boolean hp(Intent intent) {
        if (intent != null && o()) {
            return l(intent, false);
        }
        return false;
    }

    public static void jx(Intent intent) {
        if (intent == null) {
            return;
        }
        Uri data = intent.getData();
        if (data == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        } else if (com.byazt.jz.sz.l().vv(data.getScheme())) {
            intent.addFlags(805339136);
        } else {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
    }

    public static List<String> hp() {
        ArrayList arrayList = new ArrayList();
        if (com.byazt.jz.sz.l().jw() && com.byazt.jz.s.u().xs().alist()) {
            Iterator<ResolveInfo> it = s.hp(new Intent("android.intent.action.MAIN"), 131072).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null) {
                    String str = activityInfo.packageName;
                    if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        return arrayList;
    }

    public static String l(int i2) {
        switch (i2) {
            case 1:
                return com.byazt.ih.l.AD_TAG_BANNER;
            case 2:
                return "interaction";
            case 3:
            case 4:
                return "splash_ad";
            case 5:
            default:
                return com.byazt.ih.l.AD_TAG_FEED;
            case 6:
                return "stream";
            case 7:
                return "rewarded_video";
            case 8:
                return "fullscreen_interstitial_ad";
            case 9:
                return "draw_ad";
        }
    }

    public static int hp(mp mpVar) {
        int iB = com.byazt.jz.sz.l().b();
        if (iB == -1) {
            try {
                jd jdVarEb = hd.eb(mpVar);
                tw twVarA = hd.a(mpVar);
                if (jdVarEb != null) {
                    String strA = jdVarEb.a();
                    if (TextUtils.isEmpty(strA)) {
                        return 0;
                    }
                    return Integer.valueOf(strA).intValue();
                }
                if (twVarA != null) {
                    String strJl = twVarA.jl();
                    if (TextUtils.isEmpty(strJl)) {
                        return 0;
                    }
                    return Integer.valueOf(strJl).intValue();
                }
            } catch (Exception e2) {
                com.byazt.ymw.u.l("tl", e2.getMessage());
                return 0;
            }
        } else if (iB != 0 && iB == 1) {
            return 1;
        }
        return 0;
    }

    public static String l(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        try {
            return l(jl(mpVar));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static int l(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("ut", 0);
        }
        return 0;
    }

    public static Map<String, Object> l(boolean z2, mp mpVar, long j2, long j3, String str) {
        HashMap map = new HashMap();
        map.put("creative_id", mpVar.j());
        map.put(com.baidu.mobads.sdk.internal.d.f11443b, Long.valueOf(j2));
        if (!z2) {
            map.put("error_code", Long.valueOf(j3));
            if (TextUtils.isEmpty(str)) {
                str = "unknown";
            }
            map.put("error_message", str);
        }
        return map;
    }

    public static String l(long j2, long j3) {
        return String.valueOf(((int) (Math.abs(j3 - j2) / 86400000)) + 1);
    }

    public static String hp(int i2) {
        switch (i2) {
            case 1:
                return "embeded_ad_landingpage";
            case 2:
                return "banner_ad_landingpage";
            case 3:
                return "interaction_landingpage";
            case 4:
                return "splash_ad_landingpage";
            case 5:
                return "fullscreen_interstitial_ad_landingpage";
            case 6:
                return "draw_ad_landingpage";
            case 7:
                return "rewarded_video_landingpage";
            default:
                return null;
        }
    }

    public static int l(com.byazt.jt.l lVar) {
        if (lVar == null) {
            return 0;
        }
        try {
            return Integer.parseInt(lVar.j());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long l(Context context) {
        int i2;
        try {
            i2 = context.getApplicationInfo().targetSdkVersion;
        } catch (Throwable unused) {
            i2 = -1;
        }
        return i2;
    }

    public static mp l(Intent intent) {
        if (intent == null) {
            return null;
        }
        try {
            String stringExtra = intent.getStringExtra("multi_process_materialmeta");
            if (!TextUtils.isEmpty(stringExtra)) {
                mp mpVarHp = com.byazt.jz.hp.hp(new JSONObject(stringExtra));
                if (mpVarHp != null) {
                    return mpVarHp;
                }
            }
        } catch (Exception e2) {
            com.byazt.ymw.u.hp("ToolUtils", "getMaterialMeta from intent failed", e2);
        }
        String stringExtra2 = intent.getStringExtra("multi_process_materialmeta_key");
        mp mpVar = (mp) com.byazt.jz.n.j(stringExtra2, mp.class);
        if (mpVar != null) {
            return mpVar;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_meta");
        String strJx = com.byazt.ymw.hp.jx(jxVarHp.get(stringExtra2, ""));
        try {
            if (TextUtils.isEmpty(strJx)) {
                com.byazt.ymw.u.l("ToolUtils", "getMaterialMeta from keva failed , md5" + stringExtra2);
                return null;
            }
            return com.byazt.jz.hp.hp(new JSONObject(strJx));
        } catch (Exception e3) {
            com.byazt.ymw.u.hp("ToolUtils", "getMaterialMeta from keva failed", e3);
            return null;
        } finally {
            jxVarHp.remove(stringExtra2);
        }
    }

    private static long hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong("uid", 0L);
        }
        return 0L;
    }

    public static String hp(mp mpVar, String str) {
        JSONObject jSONObjectQ_ = mpVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("rit", str) : str;
    }

    public static String hp(com.byazt.jt.l lVar) {
        String strDecryptWithCBC;
        try {
            JSONObject jSONObject = new JSONObject(lVar.n());
            int iOptInt = jSONObject.optInt("cypher");
            String strOptString = jSONObject.optString("message");
            if (iOptInt == 3) {
                strDecryptWithCBC = com.byazt.ymw.hp.jx(strOptString);
            } else if (iOptInt == 4) {
                com.byazt.pg.w wVarL = b.l();
                strDecryptWithCBC = wVarL == null ? "" : wVarL.decryptWithCBC(strOptString);
                if (strDecryptWithCBC == null) {
                    strDecryptWithCBC = "";
                }
            } else {
                strDecryptWithCBC = null;
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(strDecryptWithCBC).optJSONArray("creatives");
            StringBuilder sb = new StringBuilder();
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString2 = ((JSONObject) jSONArrayOptJSONArray.get(i2)).optString("material_key");
                    if (i2 != 0) {
                        sb.append("," + strOptString2);
                    } else {
                        sb.append(strOptString2);
                    }
                }
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String l(mp mpVar, String str) {
        ux uxVarA_;
        if (mpVar == null || (uxVarA_ = mpVar.A_()) == null || uxVarA_.l() != 1 || TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        if (str.indexOf("?") != -1) {
            sb.append("&");
        } else {
            sb.append("?");
        }
        sb.append("open_method=");
        if (!com.byazt.kfd.j.jx().hp()) {
            sb.append(2);
            return sb.toString();
        }
        sb.append(uxVarA_.a());
        return sb.toString();
    }

    public static Map<String, Object> hp(long j2, mp mpVar, com.byazt.um.eb ebVar) {
        HashMap map = new HashMap();
        map.put("video_start_duration", Long.valueOf(j2));
        if (mpVar != null) {
            if (!TextUtils.isEmpty(mpVar.j())) {
                map.put("creative_id", mpVar.j());
            }
            com.byazt.tw.j jVarV = df.v(mpVar);
            if (jVarV != null) {
                map.put("video_resolution", jVarV.getResolution());
                map.put("video_size", Long.valueOf(jVarV.getSize()));
            }
        }
        hp(map, ebVar);
        return map;
    }

    public static Map<String, Object> hp(boolean z2, mp mpVar, long j2, long j3, String str) {
        HashMap map = new HashMap();
        map.put("creative_id", mpVar.j());
        map.put(com.baidu.mobads.sdk.internal.d.f11443b, Long.valueOf(j2));
        com.byazt.tw.j jVarV = df.v(mpVar);
        if (jVarV != null) {
            map.put("video_size", Long.valueOf(jVarV.getSize()));
            map.put("video_resolution", jVarV.getResolution());
            map.put("video_preload_size", Long.valueOf(jVarV.getVideoPreloadSize()));
        }
        if (!z2) {
            map.put("error_code", Long.valueOf(j3));
            if (TextUtils.isEmpty(str)) {
                str = "unknown";
            }
            map.put("error_message", str);
        }
        return map;
    }

    public static Map<String, Object> hp(mp mpVar, long j2, com.byazt.um.eb ebVar) {
        HashMap map = new HashMap();
        map.put("creative_id", mpVar.j());
        map.put("buffers_time", Long.valueOf(j2));
        com.byazt.tw.j jVarV = df.v(mpVar);
        if (jVarV != null) {
            map.put("video_size", Long.valueOf(jVarV.getSize()));
            map.put("video_resolution", jVarV.getResolution());
        }
        hp(map, ebVar);
        return map;
    }

    private static void hp(Map<String, Object> map, com.byazt.um.eb ebVar) {
        if (map.containsKey("video_resolution") || ebVar == null) {
            return;
        }
        try {
            map.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(ebVar.getVideoWidth()), Integer.valueOf(ebVar.getVideoHeight())));
        } catch (Throwable unused) {
        }
    }

    public static String hp(Context context) {
        try {
            return context.getResources().getConfiguration().getLocales().get(0).getLanguage();
        } catch (Exception e2) {
            com.byazt.ymw.u.l("ToolUtils", e2.toString());
            return "";
        }
    }

    public static boolean hp(boolean z2, mp mpVar, String str, boolean z3) {
        if (z2 || mpVar == null) {
            return false;
        }
        try {
            com.byazt.xci.xs xsVarK = mpVar.k();
            boolean z4 = xsVarK != null && xsVarK.jx() == 2 && !xsVarK.hp() && com.byazt.jz.l.hp().get("dpl_reject_by_dialog", false);
            if (!mpVar.x_() && !z4) {
                return false;
            }
            String strS = mpVar.s();
            if (TextUtils.isEmpty(strS) && xsVarK != null && xsVarK.w() == 1 && !TextUtils.isEmpty(xsVarK.j())) {
                strS = xsVarK.j();
            }
            if (!TextUtils.isEmpty(strS)) {
                com.byazt.jz.lv.hp(strS, mpVar, str, z3);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String hp(String str, boolean z2) {
        return hp(str, z2, 0);
    }

    private static String hp(String str, boolean z2, int i2) {
        String strEc = i2 == 0 ? com.byazt.jz.sz.l().ec() : xs(com.byazt.jz.sz.l().d());
        String str2 = "/ad_union_qa/sdk/get_ads";
        if (com.byazt.oz.jx.hp() && com.byazt.jz.s.u().pc() && TextUtils.equals(str, "/api/ad/union/sdk/get_ads/")) {
            strEc = com.byazt.jz.s.u().fi();
            str = "/ad_union_qa/sdk/get_ads";
        }
        if (com.byazt.jz.s.u().yj() != null && s().equals("com.pangolin_demo.toutiao") && TextUtils.equals(str, "/api/ad/union/sdk/get_ads/")) {
            strEc = com.byazt.jz.s.u().fi();
        } else {
            str2 = str;
        }
        String strHp = String.format("https://%s%s", strEc, str2);
        if (pu.hp()) {
            if (!z2) {
                strHp = pu.l(strHp);
            }
            String strHp2 = pu.hp("testIp.txt");
            if (strHp2 != null) {
                strHp = pu.hp(strHp, strHp2);
            }
        }
        return z2 ? ec(strHp) : strHp;
    }

    public static boolean hp(long j2, long j3) {
        long j4 = j3 - j2;
        return j4 < 86400000 && j4 > -86400000 && hp(j2) == hp(j3);
    }

    public static long hp(long j2) {
        return (j2 + TimeZone.getDefault().getOffset(j2)) / 86400000;
    }

    public static void hp(mp mpVar, JSONObject jSONObject) {
        Uri uri;
        int i2;
        try {
            String strGu = gu(mpVar);
            int i3 = 3;
            if (TextUtils.isEmpty(strGu)) {
                i2 = 3;
                uri = null;
            } else {
                uri = Uri.parse(strGu);
                i2 = 0;
            }
            boolean zO = o();
            if (zO && uri != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                i2 = l(intent, false) ? 1 : 2;
            }
            jSONObject.putOpt("scheme_status", Integer.valueOf(i2));
            String strHq = hq(mpVar);
            if (!TextUtils.isEmpty(strHq)) {
                i3 = jx(strHq) ? 1 : 2;
            }
            jSONObject.put("hit_status", i3);
            jSONObject.putOpt("alist", Boolean.valueOf(com.byazt.jz.s.u().xs().alist()));
            jSONObject.putOpt("query_auth", Integer.valueOf(zO ? 1 : 0));
            jSONObject.putOpt(NativeModel.JSON_KEY_SCHEME, uri != null ? o.hp(uri) : null);
            jSONObject.putOpt("hit_pkg", strHq);
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("ToolUtils", th);
        }
    }

    public static Bundle hp(int i2, Bundle bundle) {
        int i3 = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i4 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        float f2 = bundle.getFloat("callback_extra_key_reward_propose");
        boolean z2 = bundle.getBoolean("callback_extra_key_video_complete_reward");
        boolean z3 = bundle.getBoolean("callback_extra_key_is_server_verify");
        Bundle bundle2 = new Bundle();
        bundle2.putInt("reward_extra_key_error_code", i4);
        bundle2.putString("reward_extra_key_error_msg", string2);
        bundle2.putString("reward_extra_key_reward_name", string);
        bundle2.putInt("reward_extra_key_reward_amount", i3);
        bundle2.putFloat("reward_extra_key_reward_propose", f2);
        bundle2.putBoolean("reward_extra_key_is_server_verify", z3);
        if (i2 == 0) {
            bundle2.putBoolean("reward_extra_key_has_video_complete_reward", z2);
        }
        return bundle2;
    }

    public static String hp(int[] iArr) {
        if (iArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 < iArr.length - 1) {
                sb.append(iArr[i2] + ",");
            } else {
                sb.append(iArr[i2]);
            }
        }
        return sb.toString();
    }

    public static void hp(Intent intent, mp mpVar) {
        if (mpVar == null) {
            return;
        }
        if (!com.byazt.jz.sz.l().ut()) {
            intent.putExtra("multi_process_materialmeta", mpVar.ij().toString());
            return;
        }
        String strN = mpVar.n();
        intent.putExtra("multi_process_materialmeta_key", strN);
        if (com.byazt.ymw.sz.hp(com.byazt.jz.sz.getContext()) && !com.byazt.jz.d.j()) {
            com.byazt.jz.n.jx(strN, mpVar, mp.class);
        } else {
            com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_meta").put(strN, com.byazt.ymw.hp.l(mpVar.ij().toString()));
        }
    }

    public static void hp(Map<String, Object> map, JSONObject jSONObject, String str) {
        if (jSONObject == null || map == null) {
            return;
        }
        if (!com.byazt.jz.sz.l().ut()) {
            map.put("multi_process_materialmeta", jSONObject.toString());
            return;
        }
        map.put("multi_process_materialmeta_key", str);
        if (com.byazt.ymw.sz.hp(com.byazt.jz.sz.getContext())) {
            com.byazt.jz.n.jx(str, com.byazt.jz.hp.hp(jSONObject), mp.class);
        } else {
            nu.hp("sp_meta").put(str, com.byazt.ymw.hp.l(jSONObject.toString()));
        }
    }

    public static void hp(Map<String, Object> map, mp mpVar) {
        if (mpVar == null || map == null) {
            return;
        }
        if (!com.byazt.jz.sz.l().ut()) {
            map.put("multi_process_materialmeta", mpVar.ij().toString());
            return;
        }
        String strN = mpVar.n();
        map.put("multi_process_materialmeta_key", strN);
        if (com.byazt.ymw.sz.hp(com.byazt.jz.sz.getContext()) && !com.byazt.jz.d.j()) {
            com.byazt.jz.n.jx(strN, mpVar, mp.class);
        } else {
            com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_meta").put(strN, com.byazt.ymw.hp.l(mpVar.ij().toString()));
        }
    }

    public static boolean hp(String str, mp mpVar, Context context) {
        if (TextUtils.isEmpty(str) || mpVar == null || context == null) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("material_meta", mpVar);
        map.put(g.f49337X, context);
        com.byazt.rj.jx.hp(str, mpVar.ij(), map);
        return true;
    }

    public static boolean hp(String str, AtomicInteger atomicInteger) {
        if (TextUtils.isEmpty(str) || atomicInteger == null) {
            return true;
        }
        if (atomicInteger.get() == 1) {
            return false;
        }
        if (str.startsWith("bytedance") || str.startsWith("nativeapp")) {
            return true;
        }
        if (!str.startsWith("https:") && !str.startsWith("http:")) {
            return true;
        }
        Set<String> set = com.byazt.xci.r.hp;
        if (set.isEmpty()) {
            hq();
        }
        String host = Uri.parse(str).getHost();
        if (TextUtils.isEmpty(host) || set.isEmpty()) {
            return true;
        }
        for (String str2 : set) {
            if (!TextUtils.isEmpty(str2) && host.contains(str2)) {
                return true;
            }
        }
        return false;
    }
}

package com.sigmob.sdk.base.device.compat;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes4.dex */
public final class b {

    /* renamed from: A, reason: collision with root package name */
    private static final String[] f36148A;

    /* renamed from: B, reason: collision with root package name */
    private static final String[] f36149B;

    /* renamed from: C, reason: collision with root package name */
    private static final String[] f36150C;

    /* renamed from: D, reason: collision with root package name */
    private static final String[] f36151D;

    /* renamed from: E, reason: collision with root package name */
    private static final String f36152E = "ro.vendor.asus.product.mkt_name";

    /* renamed from: F, reason: collision with root package name */
    private static final String f36153F = "ro.vendor.asus.product.mkt_name";

    /* renamed from: G, reason: collision with root package name */
    private static final String[] f36154G;

    /* renamed from: H, reason: collision with root package name */
    private static final String[] f36155H;

    /* renamed from: I, reason: collision with root package name */
    private static final String f36156I = "ro.product.letv_name";

    /* renamed from: J, reason: collision with root package name */
    private static final String f36157J = "ro.product.letv_name";

    /* renamed from: K, reason: collision with root package name */
    private static final String f36158K = "ro.qiku.product.devicename";

    /* renamed from: L, reason: collision with root package name */
    private static final String f36159L = "ro.qiku.product.devicename";

    /* renamed from: M, reason: collision with root package name */
    private static final Map<String, String> f36160M;

    /* renamed from: a, reason: collision with root package name */
    private static String f36161a = "";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f36162b = false;

    /* renamed from: c, reason: collision with root package name */
    private static final String f36163c = "net.hostname";

    /* renamed from: d, reason: collision with root package name */
    private static final String f36164d = "ro.product.model";

    /* renamed from: e, reason: collision with root package name */
    private static final String[] f36165e;

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f36166f;

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f36167g;

    /* renamed from: h, reason: collision with root package name */
    private static final String[] f36168h;

    /* renamed from: i, reason: collision with root package name */
    private static final String[] f36169i;

    /* renamed from: j, reason: collision with root package name */
    private static final String[] f36170j;

    /* renamed from: k, reason: collision with root package name */
    private static final String[] f36171k;

    /* renamed from: l, reason: collision with root package name */
    private static final String[] f36172l;

    /* renamed from: m, reason: collision with root package name */
    private static final String[] f36173m;

    /* renamed from: n, reason: collision with root package name */
    private static final String[] f36174n;

    /* renamed from: o, reason: collision with root package name */
    private static final String[] f36175o;

    /* renamed from: p, reason: collision with root package name */
    private static final String f36176p = "ro.config.marketing_name";

    /* renamed from: q, reason: collision with root package name */
    private static final String f36177q = "ro.config.marketing_name";

    /* renamed from: r, reason: collision with root package name */
    private static final String f36178r = "ro.config.marketing_name";

    /* renamed from: s, reason: collision with root package name */
    private static final String f36179s = "ro.config.marketing_name";

    /* renamed from: t, reason: collision with root package name */
    private static final String f36180t = "ro.config.marketing_name";

    /* renamed from: u, reason: collision with root package name */
    private static final String f36181u = "ro.vendor.product.ztename";

    /* renamed from: v, reason: collision with root package name */
    private static final String f36182v = "ro.vendor.product.ztename";

    /* renamed from: w, reason: collision with root package name */
    private static final String f36183w = "ro.vendor.product.ztename";

    /* renamed from: x, reason: collision with root package name */
    private static final String f36184x = "ro.product.model";

    /* renamed from: y, reason: collision with root package name */
    private static final String[] f36185y;

    /* renamed from: z, reason: collision with root package name */
    private static final String[] f36186z;

    static {
        String[] strArr = {"ro.product.marketname", "ro.product.odm.marketname", "ro.product.vendor.marketname"};
        f36165e = strArr;
        f36166f = strArr;
        f36167g = strArr;
        String[] strArr2 = {"ro.vendor.oplus.market.enname", "ro.vendor.oplus.market.name", "ro.oppo.market.name"};
        f36168h = strArr2;
        f36169i = strArr2;
        f36170j = strArr2;
        String[] strArr3 = {"ro.display.series", "ro.common.soft"};
        f36171k = strArr3;
        f36172l = new String[]{strArr2[0], strArr2[1], strArr2[2], strArr3[0], strArr3[1]};
        String[] strArr4 = {"ro.vivo.internet.name", "ro.vivo.market.name"};
        f36173m = strArr4;
        f36174n = strArr4;
        f36175o = strArr4;
        String[] strArr5 = {"persist.sys.devicename", "persist.sys.exif.model", "ro.vendor.product.ztename"};
        f36185y = strArr5;
        f36186z = new String[]{strArr5[0], strArr5[1]};
        f36148A = strArr5;
        String[] strArr6 = {"ro.zuk.product.market", "ro.product.display", "ro.product.en.display"};
        f36149B = strArr6;
        f36150C = strArr6;
        f36151D = strArr6;
        String[] strArr7 = {"net.devicename", "ro.product.codename"};
        f36154G = strArr7;
        f36155H = strArr7;
        HashMap map = new HashMap();
        f36160M = map;
        String str = a.a() ? "Redmi" : "Xiaomi";
        map.put("Mi", str);
        map.put("MI", str);
        map.put("mi", str);
        map.put("小米", str);
        map.put("华为", ADBidEvent.HUAWEI);
        map.put("荣耀平板", "HONOR Pad");
        map.put("荣耀", "HONOR");
        map.put("一加", "OnePlus");
        map.put("真我", "realme");
        map.put("meizu", "MEIZU");
        map.put("魅族", "MEIZU");
        map.put("拯救者电竞手机", "Lenovo Legion Phone");
        map.put("拯救者平板", "Lenovo Legion Tab");
        map.put("联想", "Lenovo");
        map.put("努比亚红魔", "nubia RedMagic");
        map.put("红魔", "nubia RedMagic");
        map.put("努比亚", "nubia");
        map.put("中兴", "ZTE");
        map.put("华硕", "ASUS");
        map.put("黑鲨", "BlackShark");
        map.put("锤子", "Smartisan");
        map.put("乐视", "LeEco");
    }

    private b() {
    }

    public static String a(Context context) throws Throwable {
        if (!f36162b) {
            f36162b = true;
            b(context);
        }
        return f36161a;
    }

    private static void b(Context context) throws Throwable {
        if (c.a()) {
            a(f36166f);
        } else if (c.e()) {
            a(f36167g);
        }
        if (TextUtils.isEmpty(f36161a)) {
            if (c.i()) {
                a(f36169i);
            } else if (c.j()) {
                a(f36170j);
            } else if (c.t()) {
                a(f36171k);
            } else if (c.s()) {
                a(f36172l);
            }
        }
        if (TextUtils.isEmpty(f36161a)) {
            if (c.k()) {
                a(f36174n);
            } else if (c.l()) {
                a(f36175o);
            }
        }
        if (TextUtils.isEmpty(f36161a) && (c.n() || c.p() || c.m() || c.q())) {
            a("ro.config.marketing_name");
        }
        if (TextUtils.isEmpty(f36161a)) {
            if (c.w()) {
                a("ro.vendor.product.ztename");
            } else if (c.v()) {
                a(f36148A);
            } else if (c.x()) {
                a("ro.vendor.product.ztename");
            } else if (c.D()) {
                a(f36186z);
            } else if (c.y()) {
                a("ro.product.model");
            }
        }
        if (TextUtils.isEmpty(f36161a)) {
            if (c.B()) {
                a(f36150C);
            } else if (c.C()) {
                a(f36151D);
            }
        }
        if (TextUtils.isEmpty(f36161a) && c.F()) {
            a("ro.vendor.asus.product.mkt_name");
        }
        if (TextUtils.isEmpty(f36161a) && c.z()) {
            a(f36155H);
        }
        if (TextUtils.isEmpty(f36161a) && c.A()) {
            a("ro.product.letv_name");
        }
        if (TextUtils.isEmpty(f36161a) && c.G()) {
            a("ro.qiku.product.devicename");
        }
        if (TextUtils.isEmpty(f36161a) && c.r()) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), "default_device_name");
                if (b(string)) {
                    a(string);
                }
            } catch (Exception unused) {
            }
        }
        if (a.b() || a.a()) {
            a(f36165e);
        }
        if (TextUtils.isEmpty(f36161a) && (a.h() || a.g())) {
            a("ro.config.marketing_name");
        }
        if (TextUtils.isEmpty(f36161a) && (a.d() || a.c() || a.e())) {
            a(f36168h);
        }
        if (TextUtils.isEmpty(f36161a) && a.f()) {
            a(f36173m);
        }
        if (TextUtils.isEmpty(f36161a) && a.l()) {
            a("ro.vendor.product.ztename");
        }
        if (TextUtils.isEmpty(f36161a) && a.k()) {
            a(f36185y);
        }
        if (TextUtils.isEmpty(f36161a) && a.n()) {
            a(f36149B);
        }
        if (TextUtils.isEmpty(f36161a) && a.o()) {
            a("ro.vendor.asus.product.mkt_name");
        }
        if (TextUtils.isEmpty(f36161a) && a.q()) {
            a(f36154G);
        }
        if (TextUtils.isEmpty(f36161a) && a.r()) {
            a("ro.product.letv_name");
        }
        if (TextUtils.isEmpty(f36161a) && a.s()) {
            a("ro.qiku.product.devicename");
        }
        if (TextUtils.isEmpty(f36161a)) {
            String str = Build.BRAND;
            String str2 = Build.MODEL;
            String str3 = Build.PRODUCT;
            String lowerCase = str.trim().toLowerCase();
            String lowerCase2 = str2.trim().toLowerCase();
            String lowerCase3 = str3.trim().toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                if (lowerCase2.startsWith(lowerCase) && b(lowerCase2)) {
                    a(str2);
                } else if (lowerCase3.startsWith(lowerCase) && b(lowerCase3)) {
                    a(str3);
                }
            }
            if (TextUtils.isEmpty(f36161a)) {
                if (str2.contains(" ") && b(str2)) {
                    a(str2);
                } else if (str3.contains(" ") && b(str3)) {
                    a(str3);
                }
            }
        }
        if (TextUtils.isEmpty(f36161a)) {
            String strA = d.a(f36163c);
            if (strA.matches("^(?i)android")) {
                return;
            }
            if (strA.matches(".+-[a-zA-Z0-9]{10,}$")) {
                strA = strA.replaceFirst("-[a-zA-Z0-9]{10,}$", "");
            }
            if (b(strA)) {
                a(strA);
            }
        }
    }

    private static void a(String str) {
        if (str == null) {
            str = "";
        }
        String strTrim = str.trim();
        Iterator<String> it = f36160M.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (strTrim.startsWith(next)) {
                strTrim = f36160M.get(next) + " " + strTrim.replaceFirst(next, "").trim();
                break;
            }
        }
        if (a.h() && strTrim.startsWith("nova")) {
            strTrim = "HUAWEI " + strTrim;
        }
        if (a.f() && strTrim.startsWith("iQOO")) {
            strTrim = "vivo " + strTrim;
        }
        if (a.j() && strTrim.startsWith("Galaxy")) {
            strTrim = "Samsung " + strTrim;
        }
        if (a.i() && strTrim.endsWith("_CN")) {
            strTrim = strTrim.replace("_CN", " ");
        }
        if (a.n() && strTrim.startsWith("Legion")) {
            strTrim = "Lenovo " + strTrim;
        }
        if (a.q() && strTrim.startsWith("坚果")) {
            strTrim = "Smartisan " + strTrim;
        }
        if (a.r() && strTrim.startsWith("乐")) {
            strTrim = "LeEco Le " + strTrim.replaceFirst("乐", "").trim();
        }
        if (a.s() && !strTrim.startsWith("360")) {
            strTrim = "360 " + strTrim;
        }
        if (strTrim.contains("_")) {
            strTrim = strTrim.replace("_", " ");
        }
        if (strTrim.contains("-")) {
            strTrim = strTrim.replace("-", " ");
        }
        if (strTrim.contains("Pro+")) {
            strTrim = strTrim.replace("Pro+", "Pro Plus");
        }
        f36161a = strTrim;
    }

    private static boolean b(String str) {
        return (TextUtils.isEmpty(str) || str.matches("[A-Z]{2,3}-[A-Z|0-9]{4}[a-zA-Z|0-9]*") || str.matches("[A-Z0-9]{5,}") || str.matches("[A-Z0-9]{4}-[A-Z0-9]{3,}") || str.matches("[A-Z]{2}\\d{4,}-[A-Z0-9]+")) ? false : true;
    }

    private static void a(String... strArr) throws Throwable {
        for (String str : strArr) {
            String strA = d.a(str);
            if (b(strA)) {
                a(strA);
                return;
            }
        }
    }
}

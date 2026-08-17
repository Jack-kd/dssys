package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.sigmob.sdk.base.models.SigMacroCommon;

/* loaded from: classes2.dex */
public abstract class sp {

    /* renamed from: a, reason: collision with root package name */
    public static String f16260a = ".AD_CLK_PT_DOWN_X.";

    /* renamed from: b, reason: collision with root package name */
    public static String f16261b = ".AD_CLK_PT_DOWN_Y.";

    /* renamed from: c, reason: collision with root package name */
    public static String f16262c = ".AD_CLK_PT_UP_X.";

    /* renamed from: d, reason: collision with root package name */
    public static String f16263d = ".AD_CLK_PT_UP_Y.";

    /* renamed from: e, reason: collision with root package name */
    public static String f16264e = ".SCRN_CLK_PT_DOWN_X.";

    /* renamed from: f, reason: collision with root package name */
    public static String f16265f = ".SCRN_CLK_PT_DOWN_Y.";

    /* renamed from: g, reason: collision with root package name */
    public static String f16266g = ".SCRN_CLK_PT_UP_X.";

    /* renamed from: h, reason: collision with root package name */
    public static String f16267h = ".SCRN_CLK_PT_UP_Y.";

    /* renamed from: i, reason: collision with root package name */
    public static String f16268i = ".UTC_TS.";

    /* renamed from: j, reason: collision with root package name */
    public static String f16269j = ".AD_CLK_PT_DOWN_X_DP.";

    /* renamed from: k, reason: collision with root package name */
    public static String f16270k = ".AD_CLK_PT_DOWN_Y_DP.";

    /* renamed from: l, reason: collision with root package name */
    public static String f16271l = ".AD_CLK_PT_UP_X_DP.";

    /* renamed from: m, reason: collision with root package name */
    public static String f16272m = ".AD_CLK_PT_UP_Y_DP.";

    /* renamed from: n, reason: collision with root package name */
    public static String f16273n = ".SCRN_CLK_PT_DOWN_X_DP.";

    /* renamed from: o, reason: collision with root package name */
    public static String f16274o = ".SCRN_CLK_PT_DOWN_Y_DP.";

    /* renamed from: p, reason: collision with root package name */
    public static String f16275p = ".SCRN_CLK_PT_UP_X_DP.";

    /* renamed from: q, reason: collision with root package name */
    public static String f16276q = ".SCRN_CLK_PT_UP_Y_DP.";

    /* renamed from: r, reason: collision with root package name */
    public static String f16277r = ".EVENT_TS_START.";

    /* renamed from: s, reason: collision with root package name */
    public static String f16278s = ".EVENT_TS_END.";

    /* renamed from: t, reason: collision with root package name */
    public static String f16279t = ".VIDEO_DURATION.";

    /* renamed from: u, reason: collision with root package name */
    public static String f16280u = "__CLT__";

    /* renamed from: v, reason: collision with root package name */
    public static String f16281v = "__CLT-999__";

    /* renamed from: w, reason: collision with root package name */
    public static String f16282w = "__CALL_BACK_TYPE__";

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url must no null");
        }
        if (str.contains(f16260a)) {
            str = str.replace(f16260a, str2);
        }
        if (str.contains(f16261b)) {
            str = str.replace(f16261b, str3);
        }
        if (str.contains(f16262c)) {
            str = str.replace(f16262c, str2);
        }
        if (str.contains(f16263d)) {
            str = str.replace(f16263d, str3);
        }
        if (str.contains(f16264e)) {
            str = str.replace(f16264e, str4);
        }
        if (str.contains(f16265f)) {
            str = str.replace(f16265f, str5);
        }
        if (str.contains(f16266g)) {
            str = str.replace(f16266g, str4);
        }
        if (str.contains(f16267h)) {
            str = str.replace(f16267h, str5);
        }
        if (str.contains(f16268i)) {
            str = str.replace(f16268i, String.valueOf(System.currentTimeMillis()));
        }
        if (str.contains(f16277r)) {
            str = str.replace(f16277r, str6);
        }
        if (str.contains(f16278s)) {
            str = str.replace(f16278s, str7);
        }
        return str.contains(f16279t) ? str.replace(f16279t, str8) : str;
    }

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, int i3) {
        if (!TextUtils.isEmpty(str)) {
            if (i2 == 2) {
                if (str.contains(f16280u)) {
                    str2 = "0";
                    str3 = "0";
                    str4 = str3;
                    str5 = str4;
                }
                if (str.contains(f16281v)) {
                    str2 = SigMacroCommon.DEFAULT_XY;
                    str3 = SigMacroCommon.DEFAULT_XY;
                    str4 = str3;
                    str5 = str4;
                }
            }
            if (str.contains(f16260a)) {
                str = str.replace(f16260a, str2);
            }
            if (str.contains(f16261b)) {
                str = str.replace(f16261b, str3);
            }
            if (str.contains(f16262c)) {
                str = str.replace(f16262c, str2);
            }
            if (str.contains(f16263d)) {
                str = str.replace(f16263d, str3);
            }
            if (str.contains(f16264e)) {
                str = str.replace(f16264e, str4);
            }
            if (str.contains(f16265f)) {
                str = str.replace(f16265f, str5);
            }
            if (str.contains(f16266g)) {
                str = str.replace(f16266g, str4);
            }
            if (str.contains(f16267h)) {
                str = str.replace(f16267h, str5);
            }
            if (str.contains(f16269j)) {
                str = str.replace(f16269j, a(b4.j().f13060u, str2));
            }
            if (str.contains(f16270k)) {
                str = str.replace(f16270k, a(b4.j().f13060u, str3));
            }
            if (str.contains(f16271l)) {
                str = str.replace(f16271l, a(b4.j().f13060u, str2));
            }
            if (str.contains(f16272m)) {
                str = str.replace(f16272m, a(b4.j().f13060u, str3));
            }
            if (str.contains(f16273n)) {
                str = str.replace(f16273n, a(b4.j().f13060u, str4));
            }
            if (str.contains(f16274o)) {
                str = str.replace(f16274o, a(b4.j().f13060u, str5));
            }
            if (str.contains(f16275p)) {
                str = str.replace(f16275p, a(b4.j().f13060u, str4));
            }
            if (str.contains(f16276q)) {
                str = str.replace(f16276q, a(b4.j().f13060u, str5));
            }
            if (str.contains(f16280u)) {
                str = str.replace(f16280u, String.valueOf(i2));
            }
            if (str.contains(f16281v)) {
                str = str.replace(f16281v, String.valueOf(i2));
            }
            if (str.contains(f16268i)) {
                str = str.replace(f16268i, String.valueOf(System.currentTimeMillis()));
            }
            if (str.contains(f16277r)) {
                str = str.replace(f16277r, str6);
            }
            if (str.contains(f16278s)) {
                str = str.replace(f16278s, str7);
            }
            if (str.contains(f16279t)) {
                str = str.replace(f16279t, str8);
            }
            return str.contains(f16282w) ? str.replace(f16282w, String.valueOf(i3)) : str;
        }
        throw new IllegalArgumentException("url must no null");
    }

    public static String a(String str, h5 h5Var, String str2, String str3, String str4) {
        if (str.contains(f16260a) && !TextUtils.isEmpty(h5Var.h())) {
            str = str.replace(f16260a, h5Var.h());
        }
        if (str.contains(f16261b) && !TextUtils.isEmpty(h5Var.i())) {
            str = str.replace(f16261b, h5Var.i());
        }
        if (str.contains(f16262c) && !TextUtils.isEmpty(h5Var.d())) {
            str = str.replace(f16262c, h5Var.d());
        }
        if (str.contains(f16263d) && !TextUtils.isEmpty(h5Var.e())) {
            str = str.replace(f16263d, h5Var.e());
        }
        if (str.contains(f16264e) && !TextUtils.isEmpty(h5Var.f())) {
            str = str.replace(f16264e, h5Var.f());
        }
        if (str.contains(f16265f) && !TextUtils.isEmpty(h5Var.g())) {
            str = str.replace(f16265f, h5Var.g());
        }
        if (str.contains(f16266g) && !TextUtils.isEmpty(h5Var.b())) {
            str = str.replace(f16266g, h5Var.b());
        }
        if (str.contains(f16267h) && !TextUtils.isEmpty(h5Var.c())) {
            str = str.replace(f16267h, h5Var.c());
        }
        if (str.contains(f16269j) && !TextUtils.isEmpty(h5Var.h())) {
            str = str.replace(f16269j, a(b4.j().f13060u, h5Var.h()));
        }
        if (str.contains(f16270k) && !TextUtils.isEmpty(h5Var.i())) {
            str = str.replace(f16270k, a(b4.j().f13060u, h5Var.i()));
        }
        if (str.contains(f16271l) && !TextUtils.isEmpty(h5Var.d())) {
            str = str.replace(f16271l, a(b4.j().f13060u, h5Var.d()));
        }
        if (str.contains(f16272m) && !TextUtils.isEmpty(h5Var.e())) {
            str = str.replace(f16272m, a(b4.j().f13060u, h5Var.e()));
        }
        if (str.contains(f16273n) && !TextUtils.isEmpty(h5Var.f())) {
            str = str.replace(f16273n, a(b4.j().f13060u, h5Var.f()));
        }
        if (str.contains(f16274o) && !TextUtils.isEmpty(h5Var.g())) {
            str = str.replace(f16274o, a(b4.j().f13060u, h5Var.g()));
        }
        if (str.contains(f16275p) && !TextUtils.isEmpty(h5Var.b())) {
            str = str.replace(f16275p, a(b4.j().f13060u, h5Var.b()));
        }
        return (!str.contains(f16276q) || TextUtils.isEmpty(h5Var.c())) ? str : str.replace(f16276q, a(b4.j().f13060u, h5Var.c()));
    }

    public static String a(String str, h5 h5Var, String str2, String str3, String str4, int i2) {
        if (!TextUtils.isEmpty(str)) {
            if (i2 != 2 && i2 != 5) {
                str = a(str, h5Var, str2, str3, str4);
            } else {
                h5 h5Var2 = new h5();
                if (str.contains(f16280u)) {
                    h5Var2.g("0");
                    h5Var2.h("0");
                    h5Var2.e("0");
                    h5Var2.f("0");
                    h5Var2.c("0");
                    h5Var2.d("0");
                    h5Var2.a("0");
                    h5Var2.b("0");
                    str = a(str, h5Var2, str2, str3, str4);
                }
                if (str.contains(f16281v)) {
                    h5Var2.g(SigMacroCommon.DEFAULT_XY);
                    h5Var2.h(SigMacroCommon.DEFAULT_XY);
                    h5Var2.e(SigMacroCommon.DEFAULT_XY);
                    h5Var2.f(SigMacroCommon.DEFAULT_XY);
                    h5Var2.c(SigMacroCommon.DEFAULT_XY);
                    h5Var2.d(SigMacroCommon.DEFAULT_XY);
                    h5Var2.a(SigMacroCommon.DEFAULT_XY);
                    h5Var2.b(SigMacroCommon.DEFAULT_XY);
                    str = a(str, h5Var2, str2, str3, str4);
                }
            }
            if (str.contains(f16280u)) {
                str = str.replace(f16280u, String.valueOf(i2));
            }
            if (str.contains(f16281v)) {
                str = str.replace(f16281v, String.valueOf(i2));
            }
            if (str.contains(f16268i)) {
                str = str.replace(f16268i, String.valueOf(System.currentTimeMillis()));
            }
            if (str.contains(f16277r)) {
                str = str.replace(f16277r, str2);
            }
            if (str.contains(f16278s)) {
                str = str.replace(f16278s, str3);
            }
            if (str.contains(f16279t)) {
                str = str.replace(f16279t, str4);
            }
            if (!str.contains(f16282w) || h5Var == null) {
                return str;
            }
            return str.replace(f16282w, String.valueOf(h5Var.a()));
        }
        throw new IllegalArgumentException("url must no null");
    }

    public static String a(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && !str.equals(SigMacroCommon.DEFAULT_XY) && !str.equals("0")) {
                return String.valueOf((int) ((((long) Double.parseDouble(str)) / context.getResources().getDisplayMetrics().density) + 0.5f));
            }
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }
}

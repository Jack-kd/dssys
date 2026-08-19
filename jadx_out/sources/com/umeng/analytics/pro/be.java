package com.umeng.analytics.pro;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class be {

    /* renamed from: A, reason: collision with root package name */
    public static final String f48792A = "rtd";

    /* renamed from: B, reason: collision with root package name */
    public static final String f48793B = "lepd";

    /* renamed from: C, reason: collision with root package name */
    public static final String f48794C = "ccfg";

    /* renamed from: D, reason: collision with root package name */
    public static final String f48795D = "pi_sw";

    /* renamed from: E, reason: collision with root package name */
    private static Map<String, String> f48796E = null;

    /* renamed from: F, reason: collision with root package name */
    private static String f48797F = null;

    /* renamed from: a, reason: collision with root package name */
    public static final String f48798a = "env";

    /* renamed from: b, reason: collision with root package name */
    public static final String f48799b = "exp";

    /* renamed from: c, reason: collision with root package name */
    public static final String f48800c = "imp";

    /* renamed from: d, reason: collision with root package name */
    public static final String f48801d = "ua";

    /* renamed from: e, reason: collision with root package name */
    public static final String f48802e = "zc";

    /* renamed from: f, reason: collision with root package name */
    public static final String f48803f = "id";

    /* renamed from: g, reason: collision with root package name */
    public static final String f48804g = "zf";

    /* renamed from: h, reason: collision with root package name */
    public static final String f48805h = "exid";

    /* renamed from: i, reason: collision with root package name */
    public static final String f48806i = "ucc";

    /* renamed from: j, reason: collision with root package name */
    public static final String f48807j = "ugc";

    /* renamed from: k, reason: collision with root package name */
    public static final String f48808k = "usi";

    /* renamed from: l, reason: collision with root package name */
    public static final String f48809l = "uso";

    /* renamed from: m, reason: collision with root package name */
    public static final String f48810m = "user";

    /* renamed from: n, reason: collision with root package name */
    public static final String f48811n = "uspi";

    /* renamed from: o, reason: collision with root package name */
    public static final String f48812o = "dtfn";

    /* renamed from: p, reason: collision with root package name */
    public static final String f48813p = "pr";

    /* renamed from: q, reason: collision with root package name */
    public static final String f48814q = "upg";

    /* renamed from: r, reason: collision with root package name */
    public static final String f48815r = "pri";

    /* renamed from: s, reason: collision with root package name */
    public static final String f48816s = "probe";

    /* renamed from: t, reason: collision with root package name */
    public static final String f48817t = "bl";

    /* renamed from: u, reason: collision with root package name */
    public static final String f48818u = "wl";

    /* renamed from: v, reason: collision with root package name */
    public static final String f48819v = "subp";

    /* renamed from: w, reason: collision with root package name */
    public static final String f48820w = "subua";

    /* renamed from: x, reason: collision with root package name */
    public static final String f48821x = "sta";

    /* renamed from: y, reason: collision with root package name */
    public static final String f48822y = "emi";

    /* renamed from: z, reason: collision with root package name */
    public static final String f48823z = "sli";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final be f48824a = new be();

        private a() {
        }
    }

    static {
        HashMap map = new HashMap();
        f48796E = map;
        f48797F = "";
        map.put(f48798a, "envelope");
        f48796E.put(f48799b, ".umeng");
        f48796E.put(f48800c, ".imprint");
        f48796E.put("ua", "ua.db");
        f48796E.put(f48802e, "umeng_zero_cache.db");
        f48796E.put("id", "umeng_it.cache");
        f48796E.put(f48804g, "umeng_zcfg_flag");
        f48796E.put(f48805h, "exid.dat");
        f48796E.put(f48806i, "umeng_common_config");
        f48796E.put(f48807j, "umeng_general_config");
        f48796E.put(f48808k, "um_session_id");
        f48796E.put(f48809l, "umeng_sp_oaid");
        f48796E.put(f48810m, "mobclick_agent_user_");
        f48796E.put(f48811n, "umeng_subprocess_info");
        f48796E.put(f48812o, "delayed_transmission_flag_new");
        f48796E.put("pr", "umeng_policy_result_flag");
        f48796E.put(f48814q, "um_policy_grant");
        f48796E.put(f48815r, "um_pri");
        f48796E.put(f48816s, "UM_PROBE_DATA");
        f48796E.put(f48817t, "ekv_bl");
        f48796E.put(f48818u, "ekv_wl");
        f48796E.put(f48819v, h.f49366a);
        f48796E.put(f48820w, "ua_");
        f48796E.put(f48821x, "stateless");
        f48796E.put(f48822y, ".emitter");
        f48796E.put(f48823z, "um_slmode_sp");
        f48796E.put(f48792A, "um_rtd_conf");
        f48796E.put(f48793B, "");
        f48796E.put(f48794C, ".dmpvedpogjhejs.cfg");
        f48796E.put(f48795D, ".pisw02fl");
    }

    private be() {
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str) && TextUtils.isEmpty(f48797F)) {
            if (str.length() > 3) {
                f48797F = str.substring(0, 3) + "_";
                return;
            }
            f48797F = str + "_";
        }
    }

    public String b(String str) {
        if (!f48796E.containsKey(str)) {
            return "";
        }
        String str2 = f48796E.get(str);
        if (!f48799b.equalsIgnoreCase(str) && !f48800c.equalsIgnoreCase(str) && !f48822y.equalsIgnoreCase(str)) {
            return f48797F + str2;
        }
        return com.anythink.core.common.d.i.f2495E + f48797F + str2.substring(1);
    }

    public void a() {
        f48797F = "";
    }

    public static be b() {
        return a.f48824a;
    }
}

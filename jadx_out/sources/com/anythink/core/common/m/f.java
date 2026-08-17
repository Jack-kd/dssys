package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATUserDeviceInfo;
import com.anythink.core.common.h.cb;
import com.varbto.utils.api.MediationUtilsManager;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: A, reason: collision with root package name */
    public static final String f5751A = "ps_id";

    /* renamed from: B, reason: collision with root package name */
    public static final String f5752B = "it_src";

    /* renamed from: C, reason: collision with root package name */
    public static final String f5753C = "lat";

    /* renamed from: D, reason: collision with root package name */
    public static final String f5754D = "lon";

    /* renamed from: E, reason: collision with root package name */
    public static final String f5755E = "inst_wx";

    /* renamed from: F, reason: collision with root package name */
    public static final String f5756F = "mini_sdk";

    /* renamed from: G, reason: collision with root package name */
    public static final String f5757G = "ms_type";

    /* renamed from: H, reason: collision with root package name */
    public static final String f5758H = "device_set";

    /* renamed from: I, reason: collision with root package name */
    public static final String f5759I = "gdpr_cs";

    /* renamed from: J, reason: collision with root package name */
    public static final String f5760J = "abtest_id";

    /* renamed from: K, reason: collision with root package name */
    public static final String f5761K = "first_init_time";

    /* renamed from: L, reason: collision with root package name */
    public static final String f5762L = "days_from_first_init";

    /* renamed from: M, reason: collision with root package name */
    public static final String f5763M = "cs_cl";

    /* renamed from: N, reason: collision with root package name */
    public static final String f5764N = "is_ofm";

    /* renamed from: O, reason: collision with root package name */
    public static final String f5765O = "app_id";

    /* renamed from: P, reason: collision with root package name */
    public static final String f5766P = "api_ver";

    /* renamed from: Q, reason: collision with root package name */
    public static final String f5767Q = "custom";

    /* renamed from: R, reason: collision with root package name */
    public static final String f5768R = "data";

    /* renamed from: S, reason: collision with root package name */
    public static final String f5769S = "tcp_tk_da_type";

    /* renamed from: T, reason: collision with root package name */
    public static final String f5770T = "ofl";

    /* renamed from: U, reason: collision with root package name */
    public static final String f5771U = "tcp_rate";

    /* renamed from: V, reason: collision with root package name */
    public static final String f5772V = "sample_rate";

    /* renamed from: W, reason: collision with root package name */
    public static final String f5773W = "p";

    /* renamed from: X, reason: collision with root package name */
    public static final String f5774X = "p2";

    /* renamed from: Y, reason: collision with root package name */
    public static final String f5775Y = "sign";

    /* renamed from: Z, reason: collision with root package name */
    public static final String f5776Z = "common";

    /* renamed from: a, reason: collision with root package name */
    public static final String f5777a = "platform";
    public static final String aA = "u_a";
    public static final String aB = "b_p";
    public static final String aC = "d_s";
    public static final String aD = "s_d";
    public static final String aE = "a_cl";
    public static final String aF = "http_type";
    public static final String aG = "ip_v4";
    public static final String aH = "ip_v6";
    public static final String aI = "test_mode";
    public static final String aJ = "cpu";
    public static final String aK = "isroot";
    public static final String aL = "isagent";
    public static final String aM = "is_sim";
    public static final String aN = "is_mul";
    public static final String aO = "is_vpn";
    public static final String aP = "is_charge";
    public static final String aQ = "battery";
    public static final String aR = "http_able";
    public static final String aS = "bld_type";
    public static final String aT = "bld_tags";
    public static final String aU = "bld_user";
    public static final String aV = "bld_radio";
    public static final String aW = "bld_bootloader";
    public static final String aX = "bld_hardware";
    public static final String aY = "bld_host";
    public static final String aZ = "bld_codename";
    public static final int aa = 1;
    public static final int ab = 2;
    public static final int ac = 3;
    public static final String ad = "area_type";
    public static final String ae = "sp_http";
    public static final String af = "os_fw";
    public static final String ag = "is_test";
    public static final String ah = "user_num";
    public static final String ai = "cp_device_id";
    public static final String aj = "cp_pl_id";
    public static int ak = -1;
    public static int al = -1;
    public static final String am = "al_it_apil";
    public static final String an = "wx_data";
    public static final String ao = "cached";
    public static final String ap = "cached";
    public static final String aq = "n_cache";
    public static final String ar = "get_1st_rl";
    public static final String as = "value_d";
    public static final String at = "pl_type";
    public static final String au = "amazon_id";
    public static final String av = "amazon_lat";
    public static final String aw = "t_mem";
    public static final String ax = "c_num";
    public static final String ay = "t_store";
    public static final String az = "s_c";

    /* renamed from: b, reason: collision with root package name */
    public static final String f5778b = "os_vn";
    public static final String bA = "u_t";
    public static final String bB = "channel_from";
    public static final String bC = "is_fdevice";
    public static final String bD = "d_r_ls";
    public static final String bE = "sensor_deny";
    public static final String bF = "device_minor_data_deny";
    public static final String bG = "ail_deny";
    public static final String bH = "bil_deny";
    public static final String bI = "app_info";
    public static final String bJ = "accessibility_status";
    public static final String bK = "volume_status";
    public static final String bL = "build_info";
    public static final String bM = "properties_info";
    public static final String bN = "sys_ua";
    public static final String bO = "sp_nw";
    public static final String bP = "anr_sw";
    public static final String bQ = "new_upid";
    public static final String bR = "open_ns";
    public static final String bS = "mb_track_id";
    public static final String bT = "req_rsn";
    public static final String bU = "host";
    public static final String bV = "anr_num";
    public static final String bW = "dyn_score";
    public static final String bX = "static_score";
    public static final String bY = "mmed_m_a_c";
    public static final String bZ = "pg_ctm";
    public static final String ba = "bld_incremental";
    public static final String bb = "bld_serial";
    public static final String bc = "bld_display";
    public static final String bd = "bld_version_codes";
    public static final String be = "bld_board";
    public static final String bf = "ps";
    public static final String bg = "pm";
    public static final String bh = "is_s";
    public static final String bi = "m_data";
    public static final String bj = "sdk_ext";
    public static final String bk = "pil_s_fu";
    public static final String bl = "al_it_apil_t";
    public static final String bm = "demand_ids";
    public static final String bn = "pl_id";
    public static final String bo = "session_id";
    public static final String bp = "debug_key";
    public static final String bq = "wf";
    public static final String br = "sdk_time";
    public static final String bs = "sdk_start_time";
    public static final String bt = "cpu_d";
    public static final String bu = "mem_d";
    public static final String bv = "stack_d";
    public static final String bw = "stack_s";
    public static final String bx = "cpu_info_s";
    public static final String by = "cpu_core_c";
    public static final String bz = "mem_t_s";

    /* renamed from: c, reason: collision with root package name */
    public static final String f5779c = "os_vc";

    /* renamed from: d, reason: collision with root package name */
    public static final String f5780d = "package_name";

    /* renamed from: e, reason: collision with root package name */
    public static final String f5781e = "app_vn";

    /* renamed from: f, reason: collision with root package name */
    public static final String f5782f = "app_vc";

    /* renamed from: g, reason: collision with root package name */
    public static final String f5783g = "brand";

    /* renamed from: h, reason: collision with root package name */
    public static final String f5784h = "model";

    /* renamed from: i, reason: collision with root package name */
    public static final String f5785i = "screen";

    /* renamed from: j, reason: collision with root package name */
    public static final String f5786j = "network_type";

    /* renamed from: k, reason: collision with root package name */
    public static final String f5787k = "mnc";

    /* renamed from: l, reason: collision with root package name */
    public static final String f5788l = "mcc";

    /* renamed from: m, reason: collision with root package name */
    public static final String f5789m = "language";

    /* renamed from: n, reason: collision with root package name */
    public static final String f5790n = "timezone";

    /* renamed from: o, reason: collision with root package name */
    public static final String f5791o = "sdk_ver";

    /* renamed from: p, reason: collision with root package name */
    public static final String f5792p = "gp_ver";

    /* renamed from: q, reason: collision with root package name */
    public static final String f5793q = "nw_ver";

    /* renamed from: r, reason: collision with root package name */
    public static final String f5794r = "ua";

    /* renamed from: s, reason: collision with root package name */
    public static final String f5795s = "orient";

    /* renamed from: t, reason: collision with root package name */
    public static final String f5796t = "system";

    /* renamed from: u, reason: collision with root package name */
    public static final String f5797u = "oaid";

    /* renamed from: v, reason: collision with root package name */
    public static final String f5798v = "android_id";

    /* renamed from: w, reason: collision with root package name */
    public static final String f5799w = "gaid";

    /* renamed from: x, reason: collision with root package name */
    public static final String f5800x = "channel";

    /* renamed from: y, reason: collision with root package name */
    public static final String f5801y = "sub_channel";

    /* renamed from: z, reason: collision with root package name */
    public static final String f5802z = "upid";

    public static JSONObject a(int i2) {
        return a(i2, (List<String>) null);
    }

    public static JSONObject b(int i2) {
        return b(i2, (List<String>) null);
    }

    private static void c(JSONObject jSONObject) throws JSONException {
        ATUserDeviceInfo aTUserDeviceInfoQ = com.anythink.core.common.d.s.b().Q();
        if (aTUserDeviceInfoQ != null) {
            String devGaid = aTUserDeviceInfoQ.getDevGaid();
            String devImei = aTUserDeviceInfoQ.getDevImei();
            String devOaid = aTUserDeviceInfoQ.getDevOaid();
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(devGaid)) {
                jSONObject2.put("set_gaid", devGaid);
            }
            if (!TextUtils.isEmpty(devImei)) {
                jSONObject2.put("set_imei", devImei);
            }
            if (!TextUtils.isEmpty(devOaid)) {
                jSONObject2.put("set_oaid", devOaid);
            }
            jSONObject.put(f5758H, jSONObject2);
            String devUID2Token = aTUserDeviceInfoQ.getDevUID2Token();
            if (TextUtils.isEmpty(devUID2Token)) {
                return;
            }
            jSONObject.put(bA, devUID2Token);
        }
    }

    public static JSONObject a(int i2, List<String> list) throws JSONException {
        JSONArray[] jSONArrayArrB;
        Map<String, String> mapC;
        JSONObject jSONObjectAO;
        com.anythink.core.common.v.l.o(com.anythink.core.common.d.s.b().g());
        JSONObject jSONObject = new JSONObject();
        Context contextG = com.anythink.core.common.d.s.b().g();
        try {
            jSONObject.put("cpu", com.anythink.core.common.v.l.r());
            jSONObject.put("platform", 1);
            jSONObject.put("os_vn", com.anythink.core.common.v.l.e());
            jSONObject.put("os_vc", com.anythink.core.common.v.l.d());
            jSONObject.put("package_name", com.anythink.core.common.v.l.j(contextG));
            jSONObject.put("app_vn", com.anythink.core.common.v.l.h(contextG));
            jSONObject.put("app_vc", com.anythink.core.common.v.l.g(contextG));
            jSONObject.put("brand", com.anythink.core.common.v.l.b());
            jSONObject.put("model", com.anythink.core.common.v.l.a());
            jSONObject.put("screen", com.anythink.core.common.v.l.i(contextG));
            jSONObject.put("network_type", com.anythink.core.common.v.l.l(contextG));
            jSONObject.put("mnc", com.anythink.core.common.v.l.c(contextG));
            jSONObject.put("mcc", com.anythink.core.common.v.l.b(contextG));
            jSONObject.put("language", com.anythink.core.common.v.l.e(contextG));
            jSONObject.put("timezone", com.anythink.core.common.v.l.c());
            jSONObject.put("sdk_ver", com.anythink.core.common.v.o.a());
            jSONObject.put("gp_ver", com.anythink.core.common.v.l.g());
            jSONObject.put("ua", com.anythink.core.common.v.l.i());
            jSONObject.put("orient", com.anythink.core.common.v.l.f(contextG));
            jSONObject.put("system", 1);
            if (!TextUtils.isEmpty(com.anythink.core.common.d.s.b().n())) {
                jSONObject.put("channel", com.anythink.core.common.d.s.b().n());
            }
            if (!TextUtils.isEmpty(com.anythink.core.common.d.s.b().o())) {
                jSONObject.put("sub_channel", com.anythink.core.common.d.s.b().o());
            }
            String strD = "";
            jSONObject.put("upid", com.anythink.core.common.d.u.a(contextG).b() ? com.anythink.core.common.d.s.b().C() : "");
            jSONObject.put("ps_id", com.anythink.core.common.d.s.b().r());
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(contextG).b(com.anythink.core.common.d.s.b().p());
            if (bVarB != null) {
                if (!TextUtils.isEmpty(bVarB.D())) {
                    strD = bVarB.D();
                }
                jSONObject.put(f5760J, strD);
            }
            jSONObject.put(f5761K, com.anythink.core.common.d.s.b().h());
            jSONObject.put(f5762L, com.anythink.core.common.d.s.b().i());
            StringBuilder sb = new StringBuilder();
            sb.append(com.anythink.core.common.d.s.b().e());
            sb.append(com.anythink.core.common.d.u.a(contextG).a());
            jSONObject.put(f5759I, sb.toString());
            if (com.anythink.core.common.d.s.b().j() == 1) {
                jSONObject.put(f5764N, 1);
            }
            jSONObject.put(bO, 1);
            jSONObject.put(ae, com.anythink.core.common.d.s.b().K() ? com.anythink.core.common.d.s.b().L() ? "1" : "3" : com.anythink.core.common.d.s.b().L() ? "2" : "4");
            com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
            if (rVarC != null) {
                rVarC.fillRequestDeviceData(jSONObject, i2);
            }
            String strL = com.anythink.core.common.v.l.l();
            if (!TextUtils.isEmpty(strL)) {
                jSONObject.put(af, Integer.parseInt(strL));
            }
            if ((i2 & 4) == 4) {
                try {
                    com.anythink.core.e.b bVarB2 = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
                    if (bVarB2 != null && (jSONObjectAO = bVarB2.aO()) != null) {
                        jSONObject.put("a_c", jSONObjectAO);
                    }
                } catch (Exception unused) {
                }
            }
            if ((i2 & 16) == 16 && (mapC = com.anythink.core.common.c.b.a().c()) != null && !mapC.isEmpty()) {
                for (Map.Entry<String, String> entry : mapC.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                        jSONObject.put(key, value);
                    }
                }
            }
            if ((i2 & 64) == 64) {
                jSONObject.put("isroot", com.anythink.core.common.v.l.s());
                jSONObject.put("isagent", com.anythink.core.common.v.l.r(contextG));
                jSONObject.put(aM, com.anythink.core.common.v.l.t(contextG));
                jSONObject.put(aN, com.anythink.core.common.v.l.u(contextG));
                jSONObject.put(aO, com.anythink.core.common.v.l.s(contextG));
                jSONObject.put(aP, com.anythink.core.common.v.l.v(contextG));
                jSONObject.put("battery", com.anythink.core.common.v.l.w(contextG));
                jSONObject.put(aR, com.anythink.core.common.v.l.t());
            }
            if ((i2 & 128) == 128 && (jSONArrayArrB = com.anythink.core.common.c.b.a().b()) != null && jSONArrayArrB.length == 2) {
                JSONArray jSONArray = jSONArrayArrB[0];
                if (jSONArray != null && jSONArray.length() > 0) {
                    jSONObject.put(am, jSONArray);
                }
                JSONArray jSONArray2 = jSONArrayArrB[1];
                if (jSONArray2 != null && jSONArray2.length() > 0) {
                    jSONObject.put(bl, jSONArray2);
                }
            }
            jSONObject.put(bf, com.anythink.core.common.v.n.b(com.anythink.core.common.v.l.b(contextG, bf)));
            jSONObject.put(bg, com.anythink.core.common.v.n.b(com.anythink.core.common.v.l.c(contextG, bg)));
            if (bVarB != null && list != null && list.contains("http_type") && bVarB.aA() == 2) {
                jSONObject.put("http_type", 1);
            }
            if (ATSDK.isCnSDK()) {
                jSONObject.put("app_id", com.anythink.core.common.d.s.b().p());
                com.anythink.core.bridge.a.b.a().a(com.anythink.core.common.d.s.b().g(), jSONObject);
            }
            try {
                Map<String, Object> staticPerformanceDataMap = MediationUtilsManager.getInstance(contextG).getStaticPerformanceDataMap();
                if (staticPerformanceDataMap != null) {
                    for (Map.Entry<String, Object> entry2 : staticPerformanceDataMap.entrySet()) {
                        jSONObject.put(entry2.getKey(), entry2.getValue());
                    }
                }
            } catch (Throwable unused2) {
            }
            b(jSONObject);
            JSONObject jSONObjectAh = com.anythink.core.common.d.s.b().ah();
            if (jSONObjectAh != null) {
                jSONObject.put("mmed_m_a_c", jSONObjectAh);
            }
            String strW = com.anythink.core.common.d.s.b().w();
            if (!TextUtils.isEmpty(strW)) {
                jSONObject.put(bZ, strW);
            }
        } catch (Exception unused3) {
        }
        return jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.anythink.core.common.d.r] */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.anythink.core.bridge.a.b] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [int] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject b(int r10, java.util.List<java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.m.f.b(int, java.util.List):org.json.JSONObject");
    }

    public static void a(JSONObject jSONObject) {
        try {
            cb cbVarR = com.anythink.core.common.d.s.b().R();
            JSONObject jSONObject2 = new JSONObject();
            int i2 = 1;
            if (cbVarR.b() != 1) {
                i2 = 0;
            }
            jSONObject2.put("has_sdk", i2);
            jSONObject2.put("sdk_ver", String.valueOf(cbVarR.c()));
            jSONObject2.put("sdk_api_ver", String.valueOf(cbVarR.d()));
            jSONObject2.put("open_app_id", com.anythink.core.common.v.l.n());
            jSONObject.put(an, jSONObject2);
        } catch (Throwable unused) {
        }
    }

    public static JSONObject a() {
        return a(com.anythink.core.common.d.s.b().m());
    }

    public static JSONObject a(String str) {
        return a(com.anythink.core.common.d.s.b().d(str));
    }

    public static JSONObject a(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str : map.keySet()) {
                    Object obj = map.get(str);
                    if (obj != null) {
                        try {
                            jSONObject.put(str, obj.toString());
                        } catch (Throwable unused) {
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            return jSONObject;
        } catch (Throwable unused3) {
            return null;
        }
    }

    public static void a(Context context, JSONObject jSONObject) throws JSONException {
        jSONObject.put("app_id", com.anythink.core.common.d.s.b().p());
        boolean z2 = true;
        jSONObject.put("platform", 1);
        jSONObject.put("sdk_ver", com.anythink.core.common.v.o.a());
        jSONObject.put("upid", com.anythink.core.common.d.u.a(context).b() ? com.anythink.core.common.d.s.b().C() : "");
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(context).b(com.anythink.core.common.d.s.b().p());
        String strI = bVarB != null ? bVarB.I() : "";
        if (!TextUtils.isEmpty(strI)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strI);
                if (!jSONObject2.isNull("a")) {
                    if (jSONObject2.optInt("a") != 1) {
                        z2 = false;
                    }
                }
            } catch (Exception unused) {
            }
        }
        jSONObject.put("android_id", z2 ? com.anythink.core.common.v.l.d(context) : "");
        jSONObject.put("gaid", com.anythink.core.common.v.l.f());
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        if (rVarC != null) {
            rVarC.fillRequestData(jSONObject, bVarB, -1);
        }
    }

    private static void b(Context context, JSONObject jSONObject) throws JSONException {
        int i2 = ak;
        if (i2 == -1) {
            boolean zC = com.anythink.core.common.v.o.c(context);
            boolean zB = com.anythink.core.common.v.o.b(context);
            int i3 = zB ? 2 : zC ? 1 : 0;
            if (zC && zB) {
                i3 = 3;
            }
            if (i3 > 0) {
                jSONObject.put(f5757G, i3);
            }
            ak = i3;
        } else if (i2 > 0) {
            jSONObject.put(f5757G, i2);
        }
        int i4 = al;
        if (i4 != -1) {
            if (i4 == 1) {
                jSONObject.put(f5756F, i4);
            }
        } else {
            boolean zC2 = com.anythink.core.common.v.o.c();
            if (zC2) {
                jSONObject.put(f5756F, 1);
            }
            al = zC2 ? 1 : 0;
        }
    }

    public static void b(JSONObject jSONObject) throws JSONException {
        com.anythink.core.common.b.f.a();
        jSONObject.put(bV, com.anythink.core.common.b.f.g());
        com.anythink.core.common.b.f.a();
        jSONObject.put(bW, com.anythink.core.common.b.f.h());
        com.anythink.core.common.b.f.a();
        jSONObject.put(bX, com.anythink.core.common.b.f.i());
    }
}

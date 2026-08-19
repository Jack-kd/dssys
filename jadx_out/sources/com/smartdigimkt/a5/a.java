package com.smartdigimkt.a5;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.e.b;
import com.anythink.core.e.m;
import com.baidu.mobads.sdk.internal.bv;
import com.smartdigimkt.z4.j;
import com.smartdigimkt.z4.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a extends b {

    /* renamed from: A, reason: collision with root package name */
    public String f39339A;

    /* renamed from: B, reason: collision with root package name */
    public int f39340B;

    /* renamed from: C, reason: collision with root package name */
    public String f39341C;

    /* renamed from: D, reason: collision with root package name */
    public int f39342D;

    /* renamed from: E, reason: collision with root package name */
    public String f39343E;

    /* renamed from: F, reason: collision with root package name */
    public com.smartdigimkt.n3.a f39344F;

    /* renamed from: G, reason: collision with root package name */
    public int f39345G;

    /* renamed from: H, reason: collision with root package name */
    public int f39346H;

    /* renamed from: I, reason: collision with root package name */
    public String f39347I;

    /* renamed from: J, reason: collision with root package name */
    public String f39348J;

    /* renamed from: K, reason: collision with root package name */
    public String f39349K;

    /* renamed from: L, reason: collision with root package name */
    public int f39350L;

    /* renamed from: M, reason: collision with root package name */
    public long f39351M;

    /* renamed from: N, reason: collision with root package name */
    public JSONObject f39352N;

    /* renamed from: P, reason: collision with root package name */
    public boolean f39354P;

    /* renamed from: Q, reason: collision with root package name */
    public String f39355Q;

    /* renamed from: S, reason: collision with root package name */
    public String f39357S;

    /* renamed from: T, reason: collision with root package name */
    public String f39358T;

    /* renamed from: U, reason: collision with root package name */
    public int f39359U;

    /* renamed from: V, reason: collision with root package name */
    public String f39360V;

    /* renamed from: W, reason: collision with root package name */
    public long f39361W;

    /* renamed from: Z, reason: collision with root package name */
    public String f39364Z;

    /* renamed from: a0, reason: collision with root package name */
    public String f39365a0;

    /* renamed from: b0, reason: collision with root package name */
    public String f39366b0;

    /* renamed from: c0, reason: collision with root package name */
    public ArrayList f39367c0;

    /* renamed from: d0, reason: collision with root package name */
    public ArrayList f39368d0;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f39369e;

    /* renamed from: e0, reason: collision with root package name */
    public ArrayList f39370e0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39371f;

    /* renamed from: f0, reason: collision with root package name */
    public String f39372f0;

    /* renamed from: g, reason: collision with root package name */
    public long f39373g;

    /* renamed from: g0, reason: collision with root package name */
    public int f39374g0;

    /* renamed from: h, reason: collision with root package name */
    public long f39375h;

    /* renamed from: i, reason: collision with root package name */
    public int f39377i;

    /* renamed from: i0, reason: collision with root package name */
    public com.smartdigimkt.m4.b f39378i0;

    /* renamed from: j, reason: collision with root package name */
    public int f39379j;

    /* renamed from: k, reason: collision with root package name */
    public int f39380k;

    /* renamed from: l, reason: collision with root package name */
    public String f39381l;

    /* renamed from: m, reason: collision with root package name */
    public int f39382m;

    /* renamed from: n, reason: collision with root package name */
    public long f39383n;

    /* renamed from: o, reason: collision with root package name */
    public String f39384o;

    /* renamed from: p, reason: collision with root package name */
    public int f39385p;

    /* renamed from: q, reason: collision with root package name */
    public long f39386q;

    /* renamed from: r, reason: collision with root package name */
    public long f39387r;

    /* renamed from: s, reason: collision with root package name */
    public long f39388s;

    /* renamed from: t, reason: collision with root package name */
    public String f39389t;

    /* renamed from: u, reason: collision with root package name */
    public Map f39390u;

    /* renamed from: v, reason: collision with root package name */
    public Map f39391v;

    /* renamed from: w, reason: collision with root package name */
    public Map f39392w;

    /* renamed from: x, reason: collision with root package name */
    public Map f39393x;

    /* renamed from: y, reason: collision with root package name */
    public Map f39394y;

    /* renamed from: z, reason: collision with root package name */
    public int f39395z;

    /* renamed from: O, reason: collision with root package name */
    public int f39353O = 2;

    /* renamed from: R, reason: collision with root package name */
    public int f39356R = 2;

    /* renamed from: X, reason: collision with root package name */
    public int f39362X = 1;

    /* renamed from: Y, reason: collision with root package name */
    public String f39363Y = "";

    /* renamed from: h0, reason: collision with root package name */
    public int f39376h0 = 2;

    public final void a(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    this.f39369e = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        this.f39369e.add((Integer) jSONArray.get(i2));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void b(int i2) {
        this.f39345G = i2;
    }

    public final void c(String str) {
        this.f39364Z = str;
        this.f39367c0 = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.f39367c0.add(jSONArray.optString(i2));
            }
        } catch (Throwable unused) {
        }
    }

    public final void d(String str) {
        this.f39366b0 = str;
        this.f39370e0 = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.f39370e0.add(jSONArray.optString(i2));
            }
        } catch (Throwable unused) {
        }
    }

    public final void e(String str) {
        this.f39365a0 = str;
        this.f39368d0 = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.f39368d0.add(jSONArray.optString(i2));
            }
        } catch (Throwable unused) {
        }
    }

    public final void f(String str) {
        this.f39389t = str;
    }

    public final void g(int i2) {
        this.f39353O = i2;
    }

    public final void h(int i2) {
        this.f39342D = i2;
    }

    public final void i(String str) {
        this.f39349K = str;
    }

    public final void j(String str) {
        this.f39372f0 = str;
    }

    public final void k(String str) {
        this.f39341C = str;
    }

    public final void l(String str) {
        this.f39343E = str;
    }

    public final void m(String str) {
        this.f39355Q = str;
    }

    public final void b(String str) {
        this.f39360V = str;
    }

    public final void f(int i2) {
        this.f39362X = i2;
    }

    public final void g(String str) {
        this.f39357S = str;
    }

    public final void h(String str) {
        this.f39358T = str;
    }

    public final void i(int i2) {
        this.f39340B = i2;
    }

    public final void a(com.smartdigimkt.m4.b bVar) {
        this.f39378i0 = bVar;
    }

    public final void a(String str) {
        this.f39363Y = str;
    }

    public final void a(int i2) {
        this.f39376h0 = i2;
    }

    public final void c(int i2) {
        this.f39346H = i2;
    }

    public final void d(int i2) {
        this.f39359U = i2;
    }

    public final void e(int i2) {
        this.f39356R = i2;
    }

    public static a c(JSONObject jSONObject) {
        String str;
        String str2;
        Map map;
        Map map2;
        String str3;
        Map map3;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        try {
            aVar.f39396a = jSONObject;
            aVar.b(jSONObject);
            aVar.a(jSONObject);
            if (!jSONObject.isNull("req_ver")) {
                jSONObject.optString("req_ver");
            }
            if (jSONObject.isNull("scet")) {
                str = "tk_no_nt_t";
                str2 = "tk_no_t_ft";
                aVar.f39373g = i.l.f2676a;
            } else {
                str = "tk_no_nt_t";
                str2 = "tk_no_t_ft";
                aVar.f39373g = jSONObject.optLong("scet");
            }
            if (jSONObject.isNull("gdpr_sdcs")) {
                aVar.f39377i = 0;
            } else {
                aVar.f39377i = jSONObject.optInt("gdpr_sdcs");
            }
            if (jSONObject.isNull("gdpr_so")) {
                aVar.f39379j = 0;
            } else {
                aVar.f39379j = jSONObject.optInt("gdpr_so");
            }
            if (!jSONObject.isNull("gdpr_nu")) {
                jSONObject.optString("gdpr_nu");
            }
            if (!jSONObject.isNull("gdpr_a")) {
                jSONObject.optString("gdpr_a");
            }
            if (jSONObject.isNull("gdpr_ia")) {
                aVar.f39380k = 0;
            } else {
                aVar.f39380k = jSONObject.optInt("gdpr_ia");
            }
            if (!jSONObject.isNull("pl_n")) {
                jSONObject.optLong("pl_n");
            }
            if (!jSONObject.isNull(bv.f11243a)) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(bv.f11243a);
                jSONObjectOptJSONObject.toString();
                aVar.f39381l = jSONObjectOptJSONObject.optString("tk_address");
                aVar.f39382m = jSONObjectOptJSONObject.optInt("tk_max_amount");
                aVar.f39383n = jSONObjectOptJSONObject.optLong(b.a.f8720W);
                aVar.f39384o = jSONObjectOptJSONObject.optString("da_address");
                aVar.f39385p = jSONObjectOptJSONObject.optInt("da_max_amount");
                aVar.f39386q = jSONObjectOptJSONObject.optLong(b.a.f8722Y);
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                try {
                    if (!jSONObjectOptJSONObject.isNull("tk_firm")) {
                        JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("tk_firm"));
                        Iterator<String> itKeys = jSONObject2.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            com.smartdigimkt.n3.b bVar = new com.smartdigimkt.n3.b();
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject(next);
                            jSONObjectOptJSONObject2.optInt("tk_fi_re_sw");
                            jSONObjectOptJSONObject2.optInt("tk_im_sw");
                            jSONObjectOptJSONObject2.optInt("tk_sh_sw");
                            jSONObjectOptJSONObject2.optInt("tk_ck_sw");
                            jSONObjectOptJSONObject2.optString("pg_m_li");
                            concurrentHashMap.put(next, bVar);
                        }
                    }
                } catch (Exception unused) {
                }
                if (jSONObjectOptJSONObject.isNull(b.a.ac)) {
                    aVar.f39390u = null;
                } else {
                    try {
                        JSONObject jSONObject3 = new JSONObject(jSONObjectOptJSONObject.optString(b.a.ac));
                        Iterator<String> itKeys2 = jSONObject3.keys();
                        HashMap map4 = new HashMap();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            map4.put(next2, jSONObject3.optString(next2));
                        }
                        aVar.f39390u = map4;
                    } catch (Throwable unused2) {
                        map = null;
                        aVar.f39390u = null;
                    }
                }
                map = null;
                if (jSONObjectOptJSONObject.isNull("da_not_keys_ft")) {
                    aVar.f39392w = map;
                } else {
                    try {
                        JSONObject jSONObject4 = new JSONObject(jSONObjectOptJSONObject.optString("da_not_keys_ft"));
                        Iterator<String> itKeys3 = jSONObject4.keys();
                        HashMap map5 = new HashMap();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            map5.put(next3, jSONObject4.optString(next3));
                        }
                        aVar.f39392w = map5;
                    } catch (Throwable unused3) {
                        map2 = null;
                        aVar.f39392w = null;
                        str3 = str2;
                    }
                }
                str3 = str2;
                map2 = null;
                if (jSONObjectOptJSONObject.isNull(str3)) {
                    aVar.f39391v = map2;
                } else {
                    try {
                        JSONObject jSONObject5 = new JSONObject(jSONObjectOptJSONObject.optString(str3));
                        Iterator<String> itKeys4 = jSONObject5.keys();
                        HashMap map6 = new HashMap();
                        while (itKeys4.hasNext()) {
                            String next4 = itKeys4.next();
                            map6.put(next4, jSONObject5.optString(next4));
                        }
                        aVar.f39391v = map6;
                    } catch (Throwable unused4) {
                        aVar.f39391v = null;
                    }
                }
                aVar.k(jSONObjectOptJSONObject.optString("tcp_domain"));
                aVar.h(jSONObjectOptJSONObject.optInt("tcp_port"));
                aVar.i(jSONObjectOptJSONObject.optInt(com.anythink.core.common.m.f.f5769S));
                aVar.l(jSONObjectOptJSONObject.optString(com.anythink.core.common.m.f.f5771U));
                if (jSONObjectOptJSONObject.isNull(str)) {
                    aVar.f39347I = null;
                } else {
                    aVar.f39347I = jSONObjectOptJSONObject.optString(str);
                }
                if (jSONObjectOptJSONObject.isNull("da_no_nt_k")) {
                    aVar.f39348J = null;
                } else {
                    aVar.f39348J = jSONObjectOptJSONObject.optString("da_no_nt_k");
                }
                if (jSONObjectOptJSONObject.isNull("tk_rt_sp_ft")) {
                    aVar.f39393x = null;
                } else {
                    try {
                        JSONObject jSONObject6 = new JSONObject(jSONObjectOptJSONObject.optString("tk_rt_sp_ft"));
                        Iterator<String> itKeys5 = jSONObject6.keys();
                        HashMap map7 = new HashMap();
                        while (itKeys5.hasNext()) {
                            String next5 = itKeys5.next();
                            HashMap map8 = new HashMap();
                            JSONObject jSONObject7 = new JSONObject(jSONObject6.optString(next5));
                            JSONArray jSONArrayOptJSONArray = jSONObject7.optJSONArray("ids");
                            String strOptString = jSONObject7.optString("formats");
                            if (jSONArrayOptJSONArray.length() > 0 && !TextUtils.isEmpty(strOptString)) {
                                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    map8.put(jSONArrayOptJSONArray.optString(i2), strOptString);
                                }
                            }
                            map7.put(next5, map8);
                        }
                        aVar.f39393x = map7;
                    } catch (Throwable unused5) {
                        map3 = null;
                        aVar.f39393x = null;
                    }
                }
                map3 = null;
                if (jSONObjectOptJSONObject.isNull("da_rt_sp_ft")) {
                    aVar.f39394y = map3;
                } else {
                    try {
                        JSONObject jSONObject8 = new JSONObject(jSONObjectOptJSONObject.optString("da_rt_sp_ft"));
                        Iterator<String> itKeys6 = jSONObject8.keys();
                        HashMap map9 = new HashMap();
                        while (itKeys6.hasNext()) {
                            String next6 = itKeys6.next();
                            HashMap map10 = new HashMap();
                            JSONObject jSONObject9 = new JSONObject(jSONObject8.optString(next6));
                            JSONArray jSONArrayOptJSONArray2 = jSONObject9.optJSONArray("ids");
                            String strOptString2 = jSONObject9.optString("formats");
                            if (jSONArrayOptJSONArray2.length() > 0 && !TextUtils.isEmpty(strOptString2)) {
                                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                                    map10.put(jSONArrayOptJSONArray2.optString(i3), strOptString2);
                                }
                            }
                            map9.put(next6, map10);
                        }
                        aVar.f39394y = map9;
                    } catch (Throwable unused6) {
                        aVar.f39394y = null;
                    }
                }
                if (!jSONObjectOptJSONObject.isNull("pl_st_addr")) {
                    aVar.j(jSONObjectOptJSONObject.optString("pl_st_addr"));
                }
                if (!jSONObjectOptJSONObject.isNull("app_sp_close")) {
                    aVar.f39374g0 = jSONObjectOptJSONObject.optInt("app_sp_close");
                }
            }
            if (!jSONObject.isNull("app_sp_close")) {
                aVar.f39374g0 = jSONObject.optInt("app_sp_close");
            }
            if (!jSONObject.isNull("n_psid_tm")) {
                aVar.f39387r = jSONObject.optLong("n_psid_tm");
            }
            if (!jSONObject.isNull("c_a")) {
                aVar.f39388s = jSONObject.optLong("c_a");
            }
            if (!jSONObject.isNull("data_level")) {
                aVar.f(jSONObject.optString("data_level"));
            }
            if (!jSONObject.isNull("psid_hl")) {
                jSONObject.optInt("psid_hl");
            }
            if (!jSONObject.isNull("la_sw")) {
                jSONObject.optInt("la_sw");
            }
            if (jSONObject.isNull("crash_sw")) {
                aVar.f39395z = 1;
            } else {
                aVar.f39395z = jSONObject.optInt("crash_sw");
            }
            if (jSONObject.isNull("crash_list")) {
                aVar.f39339A = "";
            } else {
                aVar.f39339A = jSONObject.optString("crash_list");
            }
            if (!jSONObject.isNull("sy_id")) {
                jSONObject.optString("sy_id");
            }
            if (jSONObject.isNull("adx")) {
                aVar.f39344F = null;
            } else {
                com.smartdigimkt.n3.a aVar2 = new com.smartdigimkt.n3.a();
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("adx");
                if (jSONObjectOptJSONObject3 != null) {
                    aVar2.b(jSONObjectOptJSONObject3.optString("req_addr"));
                    aVar2.a(jSONObjectOptJSONObject3.optString("bid_addr"));
                    aVar2.c(jSONObjectOptJSONObject3.optString("tk_addr"));
                    jSONObjectOptJSONObject3.optString("ol_req_addr");
                }
                aVar.f39344F = aVar2;
            }
            if (!jSONObject.isNull("custom")) {
                try {
                    JSONObject jSONObject10 = new JSONObject(jSONObject.optString("custom"));
                    HashMap map11 = new HashMap();
                    Iterator<String> itKeys7 = jSONObject10.keys();
                    while (itKeys7.hasNext()) {
                        String next7 = itKeys7.next();
                        map11.put(next7, jSONObject10.opt(next7));
                    }
                } catch (Throwable unused7) {
                }
            }
            aVar.b(jSONObject.optInt("ccpa_sw"));
            aVar.c(jSONObject.optInt("coppa_sw"));
            jSONObject.optString("s2s_addr");
            if (!jSONObject.isNull("show_delay_url")) {
                jSONObject.optString("show_delay_url");
            }
            if (!jSONObject.isNull("show_delay_text")) {
                jSONObject.optString("show_delay_text");
            }
            if (!jSONObject.isNull("store_wakup")) {
                jSONObject.optString("store_wakup");
            }
            if (!jSONObject.isNull("admob_m_sw")) {
                jSONObject.optInt("admob_m_sw");
            }
            if (!jSONObject.isNull("pil")) {
                aVar.i(jSONObject.optString("pil"));
            }
            if (!jSONObject.isNull("lrqf_interval_v2")) {
                jSONObject.optString("lrqf_interval_v2");
            }
            if (!jSONObject.isNull("a_c")) {
                aVar.d(jSONObject.optJSONObject("a_c"));
            }
            jSONObject.optInt("device_perf_sw", 0);
            aVar.c(jSONObject.optString("at_a_cg", ""));
            aVar.e(jSONObject.optString("at_a_re", ""));
            aVar.d(jSONObject.optString("at_a_rc", ""));
            jSONObject.optJSONObject("nw_ext");
            aVar.g(jSONObject.optInt("sens_sw", 2));
            aVar.a(jSONObject.optInt("adx_getimgwh_sw", 2) == 1);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("job");
            if (jSONObjectOptJSONObject4 != null) {
                jSONObjectOptJSONObject4.optString("c_t", "");
                jSONObjectOptJSONObject4.optString("url", "");
            }
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("pub_st");
            if (jSONObjectOptJSONObject5 != null) {
                aVar.f39350L = jSONObjectOptJSONObject5.optInt("pil_fu", 2);
                aVar.f39351M = jSONObjectOptJSONObject5.optInt("pil_int", 0);
            } else {
                aVar.f39350L = 2;
                aVar.f39351M = 0L;
            }
            aVar.m(jSONObject.optString("wx_app_openid"));
            jSONObject.optInt("admob_init", 1);
            jSONObject.optString("smart_wf_addr");
            jSONObject.optLong("api_hf_req_int", com.anythink.core.common.g.c.f3507a);
            aVar.a(jSONObject.optJSONArray("bid_i_sw"));
            jSONObject.optInt("adx_lc_sw", 1);
            aVar.a(jSONObject.optInt("a_i_mode", 2));
            jSONObject.optInt("fd_s_sw", 2);
            aVar.e(jSONObject.optInt("om_a", 2));
            aVar.h(jSONObject.optString("om_c", ""));
            aVar.g(jSONObject.optString("om_js", ""));
            JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject(m.a.aR);
            if (jSONObjectOptJSONObject6 != null) {
                jSONObjectOptJSONObject6.optString(b.a.f8705H);
                jSONObjectOptJSONObject6.optInt("domain_p");
                jSONObjectOptJSONObject6.optString(b.a.f8698A);
                aVar.b(jSONObjectOptJSONObject6.optString("adx_sdk_dl"));
                jSONObjectOptJSONObject6.optString("domain_http");
            }
            jSONObject.optInt(b.a.f8699B);
            jSONObject.optInt(b.a.f8700C);
            aVar.d(jSONObject.optInt("wv_c_sw", 2));
            JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("st");
            com.smartdigimkt.m4.b bVarA = com.smartdigimkt.m4.b.a(jSONObjectOptJSONObject7);
            if (jSONObjectOptJSONObject7 != null) {
                aVar.f(jSONObjectOptJSONObject7.optInt("plugin_attr_sw", 1));
            }
            aVar.a(bVarA);
            jSONObject.optInt(b.a.f8702E, 0);
            aVar.a(jSONObject.optLong(b.a.f8703F, 0L));
            aVar.a(jSONObject.optString("h5_pre_tp", ""));
            try {
                k kVarA = k.a(jSONObject);
                if (kVarA != null) {
                    j.b().a(kVarA);
                    kVarA.toString();
                }
            } catch (Throwable unused8) {
            }
            jSONObject.optInt("c_dp_i", 2);
        } catch (Throwable unused9) {
        }
        return aVar;
    }

    public final void a(boolean z2) {
        this.f39354P = z2;
    }

    public final void d(JSONObject jSONObject) {
        this.f39352N = jSONObject;
    }

    public final void a(long j2) {
        this.f39361W = j2;
    }
}

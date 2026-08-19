package com.smartdigimkt.m3;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.sigmob.sdk.base.common.C1244a;
import com.umeng.analytics.pro.be;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class m implements Serializable {

    /* renamed from: A, reason: collision with root package name */
    public String[] f42064A;

    /* renamed from: B, reason: collision with root package name */
    public String[] f42065B;

    /* renamed from: C, reason: collision with root package name */
    public String[] f42066C;

    /* renamed from: D, reason: collision with root package name */
    public String[] f42067D;

    /* renamed from: E, reason: collision with root package name */
    public String[] f42068E;

    /* renamed from: F, reason: collision with root package name */
    public String[] f42069F;

    /* renamed from: G, reason: collision with root package name */
    public HashMap f42070G;

    /* renamed from: H, reason: collision with root package name */
    public String[] f42071H;

    /* renamed from: I, reason: collision with root package name */
    public String[] f42072I;

    /* renamed from: J, reason: collision with root package name */
    public String f42073J;

    /* renamed from: K, reason: collision with root package name */
    public String f42074K;

    /* renamed from: L, reason: collision with root package name */
    public String f42075L;

    /* renamed from: M, reason: collision with root package name */
    public String f42076M;

    /* renamed from: N, reason: collision with root package name */
    public String f42077N;

    /* renamed from: O, reason: collision with root package name */
    public String f42078O;

    /* renamed from: P, reason: collision with root package name */
    public String f42079P;

    /* renamed from: Q, reason: collision with root package name */
    public String f42080Q;

    /* renamed from: R, reason: collision with root package name */
    public String f42081R;

    /* renamed from: S, reason: collision with root package name */
    public String f42082S;

    /* renamed from: T, reason: collision with root package name */
    public String f42083T;

    /* renamed from: U, reason: collision with root package name */
    public String f42084U;

    /* renamed from: V, reason: collision with root package name */
    public String f42085V;

    /* renamed from: W, reason: collision with root package name */
    public String f42086W;

    /* renamed from: X, reason: collision with root package name */
    public String f42087X;

    /* renamed from: Y, reason: collision with root package name */
    public String f42088Y;

    /* renamed from: Z, reason: collision with root package name */
    public String f42089Z;

    /* renamed from: a, reason: collision with root package name */
    public String f42090a;

    /* renamed from: a0, reason: collision with root package name */
    public String f42091a0;

    /* renamed from: b, reason: collision with root package name */
    public String[] f42092b;

    /* renamed from: b0, reason: collision with root package name */
    public String f42093b0;

    /* renamed from: c, reason: collision with root package name */
    public String[] f42094c;

    /* renamed from: c0, reason: collision with root package name */
    public String f42095c0;

    /* renamed from: d, reason: collision with root package name */
    public String[] f42096d;

    /* renamed from: d0, reason: collision with root package name */
    public String f42097d0;

    /* renamed from: e, reason: collision with root package name */
    public String[] f42098e;

    /* renamed from: e0, reason: collision with root package name */
    public String f42099e0;

    /* renamed from: f, reason: collision with root package name */
    public String[] f42100f;

    /* renamed from: f0, reason: collision with root package name */
    public String f42101f0;

    /* renamed from: g, reason: collision with root package name */
    public String[] f42102g;

    /* renamed from: g0, reason: collision with root package name */
    public String f42103g0;

    /* renamed from: h, reason: collision with root package name */
    public String[] f42104h;

    /* renamed from: h0, reason: collision with root package name */
    public String f42105h0;

    /* renamed from: i, reason: collision with root package name */
    public String[] f42106i;

    /* renamed from: i0, reason: collision with root package name */
    public String f42107i0;

    /* renamed from: j, reason: collision with root package name */
    public String[] f42108j;

    /* renamed from: j0, reason: collision with root package name */
    public String f42109j0;

    /* renamed from: k, reason: collision with root package name */
    public String[] f42110k;

    /* renamed from: k0, reason: collision with root package name */
    public String f42111k0;

    /* renamed from: l, reason: collision with root package name */
    public String[] f42112l;

    /* renamed from: l0, reason: collision with root package name */
    public String f42113l0;

    /* renamed from: m, reason: collision with root package name */
    public String[] f42114m;

    /* renamed from: m0, reason: collision with root package name */
    public String f42115m0;

    /* renamed from: n, reason: collision with root package name */
    public String[] f42116n;

    /* renamed from: n0, reason: collision with root package name */
    public String f42117n0;

    /* renamed from: o, reason: collision with root package name */
    public String[] f42118o;

    /* renamed from: o0, reason: collision with root package name */
    public String f42119o0;

    /* renamed from: p, reason: collision with root package name */
    public String[] f42120p;

    /* renamed from: p0, reason: collision with root package name */
    public String[] f42121p0;

    /* renamed from: q, reason: collision with root package name */
    public String[] f42122q;

    /* renamed from: q0, reason: collision with root package name */
    public String f42123q0;

    /* renamed from: r, reason: collision with root package name */
    public String[] f42124r;

    /* renamed from: s, reason: collision with root package name */
    public String[] f42125s;

    /* renamed from: t, reason: collision with root package name */
    public String[] f42126t;

    /* renamed from: u, reason: collision with root package name */
    public String[] f42127u;

    /* renamed from: v, reason: collision with root package name */
    public String[] f42128v;

    /* renamed from: w, reason: collision with root package name */
    public String[] f42129w;

    /* renamed from: x, reason: collision with root package name */
    public String[] f42130x;

    /* renamed from: y, reason: collision with root package name */
    public String[] f42131y;

    /* renamed from: z, reason: collision with root package name */
    public String[] f42132z;

    public static final m a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            m mVar = new m();
            mVar.f42090a = jSONObject.optString(MediationConstant.ADN_KS);
            mVar.f42092b = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("nurl"));
            mVar.f42094c = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("lurl"));
            mVar.f42096d = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(be.f48800c));
            mVar.f42098e = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("click"));
            mVar.f42100f = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vstart"));
            mVar.f42102g = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("v25"));
            mVar.f42104h = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("v50"));
            mVar.f42106i = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("v75"));
            mVar.f42108j = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("v100"));
            mVar.f42110k = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vpaused"));
            mVar.f42112l = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vclick"));
            mVar.f42114m = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vmute"));
            mVar.f42116n = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vunmute"));
            mVar.f42118o = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("ec_show"));
            mVar.f42120p = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("ec_close"));
            StringBuilder sb = new StringBuilder();
            String str = com.smartdigimkt.c5.o.f39801g;
            sb.append(str);
            sb.append("_dl_star");
            mVar.f42122q = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(sb.toString()));
            mVar.f42124r = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(str + "_dl_end"));
            mVar.f42125s = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(str + "_install"));
            mVar.f42126t = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vresumed"));
            mVar.f42127u = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vskip"));
            mVar.f42128v = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vfail"));
            mVar.f42129w = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(str + "_start_install"));
            mVar.f42130x = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(MeishuOpenDeepLinkActivity.KEY_DEEP_START));
            mVar.f42131y = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("dp_succ"));
            mVar.f42132z = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("app_install"));
            mVar.f42064A = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("app_uninstall"));
            mVar.f42065B = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("app_unknow"));
            mVar.f42067D = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("dp_inst_fail"));
            mVar.f42066C = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("dp_uninst_fail"));
            mVar.f42068E = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vd_succ"));
            mVar.f42069F = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vrewarded"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("v_p_tracking");
            if (jSONArrayOptJSONArray != null) {
                mVar.f42070G = new HashMap();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    mVar.f42070G.put(Integer.valueOf(jSONObjectOptJSONObject.optInt("play_sec")), com.smartdigimkt.c5.k.a(jSONObjectOptJSONObject.optJSONArray("list")));
                }
            }
            mVar.f42071H = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray(C1244a.f35696x));
            mVar.f42072I = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("load_fail"));
            mVar.f42073J = jSONObject.optString("tp_nurl");
            mVar.f42074K = jSONObject.optString("tp_imp");
            mVar.f42075L = jSONObject.optString("tp_click");
            mVar.f42076M = jSONObject.optString("tp_vstart");
            mVar.f42077N = jSONObject.optString("tp_v25");
            mVar.f42078O = jSONObject.optString("tp_v50");
            mVar.f42079P = jSONObject.optString("tp_v75");
            mVar.f42080Q = jSONObject.optString("tp_v100");
            mVar.f42081R = jSONObject.optString("tp_vpaused");
            mVar.f42082S = jSONObject.optString("tp_vclick");
            mVar.f42083T = jSONObject.optString("tp_vmute");
            mVar.f42084U = jSONObject.optString("tp_vunmute");
            mVar.f42085V = jSONObject.optString("tp_ec_show");
            mVar.f42086W = jSONObject.optString("tp_ec_close");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("tp_");
            String str2 = com.smartdigimkt.c5.o.f39801g;
            sb2.append(str2);
            sb2.append("_dl_star");
            mVar.f42087X = jSONObject.optString(sb2.toString());
            mVar.f42088Y = jSONObject.optString("tp_" + str2 + "_dl_end");
            mVar.f42089Z = jSONObject.optString("tp_" + str2 + "_install");
            mVar.f42091a0 = jSONObject.optString("tp_vresumed");
            mVar.f42093b0 = jSONObject.optString("tp_vskip");
            mVar.f42095c0 = jSONObject.optString("tp_vfail");
            mVar.f42097d0 = jSONObject.optString("tp_" + str2 + "_start_install");
            mVar.f42099e0 = jSONObject.optString("tp_dp_start");
            mVar.f42101f0 = jSONObject.optString("tp_dp_succ");
            mVar.f42103g0 = jSONObject.optString("tp_app_install");
            mVar.f42105h0 = jSONObject.optString("tp_app_uninstall");
            mVar.f42107i0 = jSONObject.optString("tp_app_unknow");
            mVar.f42111k0 = jSONObject.optString("tp_dp_inst_fail");
            mVar.f42109j0 = jSONObject.optString("tp_dp_uninst_fail");
            mVar.f42113l0 = jSONObject.optString("tp_vd_succ");
            mVar.f42115m0 = jSONObject.optString("tp_vrewarded");
            mVar.f42117n0 = jSONObject.optString("tp_load_success");
            mVar.f42119o0 = jSONObject.optString("tp_load_fail");
            mVar.f42121p0 = com.smartdigimkt.c5.k.a(jSONObject.optJSONArray("vready"));
            mVar.f42123q0 = jSONObject.optString("tp_ready");
            return mVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}

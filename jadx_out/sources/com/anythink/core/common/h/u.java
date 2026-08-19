package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.common.f.f;
import com.anythink.core.e.m;
import com.anythink.core.mg.api.MgAdInfo;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import com.anythink.core.mg.api.MgPreLoadCallbackRegister;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class u extends ax {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4367a = "send_count";

    /* renamed from: b, reason: collision with root package name */
    public static final int f4368b = 5;

    /* renamed from: A, reason: collision with root package name */
    public String f4369A;

    /* renamed from: B, reason: collision with root package name */
    public String f4370B;

    /* renamed from: C, reason: collision with root package name */
    public String f4371C;

    /* renamed from: D, reason: collision with root package name */
    public String f4372D;

    /* renamed from: E, reason: collision with root package name */
    public String f4373E;

    /* renamed from: F, reason: collision with root package name */
    public String f4374F;

    /* renamed from: G, reason: collision with root package name */
    public String f4375G;

    /* renamed from: H, reason: collision with root package name */
    public String f4376H;

    /* renamed from: I, reason: collision with root package name */
    public String f4377I;

    /* renamed from: J, reason: collision with root package name */
    public String f4378J;

    /* renamed from: K, reason: collision with root package name */
    public String f4379K;

    /* renamed from: L, reason: collision with root package name */
    public String f4380L;

    /* renamed from: M, reason: collision with root package name */
    public String f4381M;

    /* renamed from: N, reason: collision with root package name */
    public String f4382N;

    /* renamed from: O, reason: collision with root package name */
    public String f4383O;

    /* renamed from: P, reason: collision with root package name */
    public String f4384P;

    /* renamed from: Q, reason: collision with root package name */
    public String f4385Q;

    /* renamed from: R, reason: collision with root package name */
    public String f4386R;

    /* renamed from: S, reason: collision with root package name */
    public String f4387S;

    /* renamed from: T, reason: collision with root package name */
    public String f4388T;

    /* renamed from: U, reason: collision with root package name */
    public String f4389U;

    /* renamed from: V, reason: collision with root package name */
    public String f4390V;

    /* renamed from: W, reason: collision with root package name */
    public JSONObject f4391W;

    /* renamed from: X, reason: collision with root package name */
    public String f4392X;
    public JSONObject ab;
    public String ac;
    public String ad;
    public int af;
    private ATAdRequest ag;

    /* renamed from: c, reason: collision with root package name */
    public String f4395c;

    /* renamed from: d, reason: collision with root package name */
    public String f4396d;

    /* renamed from: e, reason: collision with root package name */
    public String f4397e;

    /* renamed from: f, reason: collision with root package name */
    public String f4398f;

    /* renamed from: g, reason: collision with root package name */
    public String f4399g;

    /* renamed from: h, reason: collision with root package name */
    public String f4400h;

    /* renamed from: i, reason: collision with root package name */
    public String f4401i;

    /* renamed from: j, reason: collision with root package name */
    public String f4402j;

    /* renamed from: k, reason: collision with root package name */
    public String f4403k;

    /* renamed from: l, reason: collision with root package name */
    public String f4404l;

    /* renamed from: o, reason: collision with root package name */
    public String f4407o;

    /* renamed from: p, reason: collision with root package name */
    public String f4408p;

    /* renamed from: q, reason: collision with root package name */
    public String f4409q;

    /* renamed from: r, reason: collision with root package name */
    public String f4410r;

    /* renamed from: s, reason: collision with root package name */
    public String f4411s;

    /* renamed from: t, reason: collision with root package name */
    public String f4412t;

    /* renamed from: u, reason: collision with root package name */
    public String f4413u;

    /* renamed from: v, reason: collision with root package name */
    public String f4414v;

    /* renamed from: w, reason: collision with root package name */
    public String f4415w;

    /* renamed from: x, reason: collision with root package name */
    public String f4416x;

    /* renamed from: y, reason: collision with root package name */
    public String f4417y;

    /* renamed from: z, reason: collision with root package name */
    public String f4418z;

    /* renamed from: m, reason: collision with root package name */
    public int f4405m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f4406n = -1;

    /* renamed from: Y, reason: collision with root package name */
    public int f4393Y = -1;

    /* renamed from: Z, reason: collision with root package name */
    public int f4394Z = -1;
    public int aa = -1;
    public int ae = com.anythink.core.common.d.s.b().F();

    private u() {
    }

    public final void a(n nVar) {
        if (nVar != null) {
            this.f4396d = nVar.aR();
            this.f4397e = nVar.aQ();
            this.f4387S = nVar.aS();
            this.f4407o = String.valueOf(nVar.aO());
            this.f4400h = String.valueOf(nVar.aa());
            this.f4404l = String.valueOf(nVar.V());
            this.f4405m = nVar.W();
            this.f4406n = nVar.X();
            this.f4403k = nVar.aP();
            this.f4389U = nVar.aJ();
            this.f4390V = nVar.aK();
            this.ac = nVar.aH();
            this.ad = nVar.aU();
            a(nVar.b());
        }
    }

    public u(String str, String str2) {
        this.f4387S = str;
        this.f4388T = str2;
    }

    public final void a(x xVar) {
        if (xVar != null) {
            this.f4396d = xVar.f4486f;
            this.f4397e = xVar.f4481a;
            this.f4400h = String.valueOf(xVar.f4484d);
            this.f4407o = String.valueOf(xVar.f4483c);
            this.ac = xVar.f4488h;
            this.ad = xVar.f4487g;
            this.ae = xVar.f4493m;
        }
    }

    public final void a(com.anythink.core.e.m mVar) {
        if (mVar != null) {
            a(mVar.t());
        }
    }

    public final void a(ATAdRequest aTAdRequest) {
        if (aTAdRequest != null) {
            this.ae = aTAdRequest.getChannelSource();
        } else {
            this.ae = com.anythink.core.common.d.s.b().F();
        }
        this.ag = aTAdRequest;
    }

    @Override // com.anythink.core.common.h.ax
    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f.a.f3242b, this.f4395c);
            jSONObject.put("requestid", this.f4396d);
            jSONObject.put("unitid", this.f4397e);
            jSONObject.put(com.anythink.core.common.d.f.f2470c, this.f4398f);
            jSONObject.put("sessionid", this.f4399g);
            jSONObject.put("groupid", this.f4400h);
            jSONObject.put("unitgroupid", this.f4401i);
            jSONObject.put("timestamp", this.f4402j);
            jSONObject.put(com.anythink.core.common.m.f.br, this.f4402j);
            jSONObject.put("asid", this.f4403k);
            jSONObject.put("refresh", this.f4404l);
            int i2 = this.f4405m;
            if (i2 != -1) {
                jSONObject.put("refresh_v2", i2);
            }
            int i3 = this.f4406n;
            if (i3 != -1) {
                jSONObject.put("load_mode", i3);
            }
            int i4 = this.aa;
            if (i4 != -1) {
                jSONObject.put(com.anythink.core.common.m.f.bh, i4);
            }
            jSONObject.put("traffic_group_id", this.f4407o);
            jSONObject.put("msg", this.f4408p);
            jSONObject.put("msg1", this.f4409q);
            jSONObject.put("msg2", this.f4410r);
            jSONObject.put("msg3", this.f4411s);
            jSONObject.put("msg4", this.f4412t);
            jSONObject.put("msg5", this.f4413u);
            jSONObject.put("msg6", this.f4414v);
            jSONObject.put("msg7", this.f4415w);
            jSONObject.put("msg8", this.f4416x);
            jSONObject.put("msg9", this.f4417y);
            jSONObject.put("msg10", this.f4418z);
            jSONObject.put("msg11", this.f4369A);
            jSONObject.put("msg12", this.f4370B);
            jSONObject.put("msg13", this.f4371C);
            jSONObject.put("msg14", this.f4372D);
            jSONObject.put("msg15", this.f4373E);
            jSONObject.put("msg16", this.f4374F);
            jSONObject.put("msg17", this.f4375G);
            jSONObject.put("msg18", this.f4376H);
            jSONObject.put("msg19", this.f4377I);
            jSONObject.put("msg20", this.f4378J);
            jSONObject.put("msg21", this.f4379K);
            jSONObject.put("msg22", this.f4380L);
            jSONObject.put("msg23", this.f4381M);
            jSONObject.put("msg24", this.f4382N);
            jSONObject.put("msg25", this.f4383O);
            jSONObject.put("msg26", this.f4384P);
            jSONObject.put("msg27", this.f4385Q);
            jSONObject.put("msg28", this.f4386R);
            jSONObject.put(m.a.f8918T, this.f4389U);
            jSONObject.put(com.anythink.core.common.m.f.aj, this.f4390V);
            JSONObject jSONObject2 = this.f4391W;
            if (jSONObject2 != null) {
                jSONObject.put(m.a.aa, jSONObject2);
            }
            jSONObject.put("real_p", this.f4392X);
            int i5 = this.f4393Y;
            if (i5 != -1) {
                jSONObject.put("real_g", i5);
            }
            int i6 = this.f4394Z;
            if (i6 != -1) {
                jSONObject.put("real_t", i6);
            }
            JSONObject jSONObject3 = this.ab;
            if (jSONObject3 != null) {
                jSONObject.put("adap_c", jSONObject3);
            }
            if (!TextUtils.isEmpty(this.ac)) {
                jSONObject.put("x_c", new JSONArray(this.ac));
            }
            if (!TextUtils.isEmpty(this.ad)) {
                jSONObject.put("o_r", this.ad);
            }
            jSONObject.put(com.anythink.core.common.m.f.bB, this.ae);
            ATAdRequest aTAdRequest = this.ag;
            MgPreLoadAdRequest preLoadInfo = (aTAdRequest == null || aTAdRequest.getPreLoadInfo() == null) ? null : this.ag.getPreLoadInfo();
            if (preLoadInfo != null) {
                String placementId = preLoadInfo.getPlacementId();
                String psId = preLoadInfo.getPsId();
                String requestId = preLoadInfo.getRequestId();
                if (!TextUtils.isEmpty(placementId)) {
                    jSONObject.put("mmed_pl_id", placementId);
                }
                if (!TextUtils.isEmpty(psId)) {
                    jSONObject.put("mmed_psid", psId);
                }
                if (!TextUtils.isEmpty(requestId)) {
                    jSONObject.put("mmed_req_id", requestId);
                }
                jSONObject.put("mmed_wait_price_sw", preLoadInfo.getCpEcpmSwitch());
                jSONObject.put("mmed_wait_price_t", preLoadInfo.getCpEcpmTimeout());
                MgPreLoadCallbackRegister preLoadCallbackRegister = preLoadInfo.getPreLoadCallbackRegister();
                MgAdInfo mgAdInfo = preLoadCallbackRegister != null ? preLoadCallbackRegister.getMgAdInfo() : null;
                double uSDEcpm = mgAdInfo != null ? mgAdInfo.getUSDEcpm() : 0.0d;
                if (uSDEcpm > 0.0d) {
                    jSONObject.put("mmed_price", String.valueOf(uSDEcpm));
                }
            }
            int i7 = this.af;
            if (i7 > 0) {
                jSONObject.put("smp_rate", i7);
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static u a(String str) {
        u uVar = new u();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(f.a.f3242b)) {
                    uVar.f4395c = jSONObject.optString(f.a.f3242b, "");
                }
                if (jSONObject.has("requestid")) {
                    uVar.f4396d = jSONObject.optString("requestid", "");
                }
                if (jSONObject.has("unitid")) {
                    uVar.f4397e = jSONObject.optString("unitid", "");
                }
                if (jSONObject.has(com.anythink.core.common.d.f.f2470c)) {
                    uVar.f4398f = jSONObject.optString(com.anythink.core.common.d.f.f2470c, "");
                }
                if (jSONObject.has("sessionid")) {
                    uVar.f4399g = jSONObject.optString("sessionid", "");
                }
                if (jSONObject.has("groupid")) {
                    uVar.f4400h = jSONObject.optString("groupid", "");
                }
                if (jSONObject.has("unitgroupid")) {
                    uVar.f4401i = jSONObject.optString("unitgroupid", "");
                }
                if (jSONObject.has("timestamp")) {
                    uVar.f4402j = jSONObject.optString("timestamp", "");
                }
                if (jSONObject.has("asid")) {
                    uVar.f4403k = jSONObject.optString("asid", "");
                }
                if (jSONObject.has("refresh")) {
                    uVar.f4404l = jSONObject.optString("refresh", "");
                }
                if (jSONObject.has(com.anythink.core.common.m.f.bh)) {
                    uVar.aa = jSONObject.optInt(com.anythink.core.common.m.f.bh, 0);
                }
                if (jSONObject.has("traffic_group_id")) {
                    uVar.f4407o = jSONObject.optString("traffic_group_id", "");
                }
                if (jSONObject.has("msg")) {
                    uVar.f4408p = jSONObject.optString("msg", "");
                }
                if (jSONObject.has("msg1")) {
                    uVar.f4409q = jSONObject.optString("msg1", "");
                }
                if (jSONObject.has("msg2")) {
                    uVar.f4410r = jSONObject.optString("msg2", "");
                }
                if (jSONObject.has("msg3")) {
                    uVar.f4411s = jSONObject.optString("msg3", "");
                }
                if (jSONObject.has("msg4")) {
                    uVar.f4412t = jSONObject.optString("msg4", "");
                }
                if (jSONObject.has("msg5")) {
                    uVar.f4413u = jSONObject.optString("msg5", "");
                }
                if (jSONObject.has("msg6")) {
                    uVar.f4414v = jSONObject.optString("msg6", "");
                }
                if (jSONObject.has("msg7")) {
                    uVar.f4415w = jSONObject.optString("msg7", "");
                }
                if (jSONObject.has("msg8")) {
                    uVar.f4416x = jSONObject.optString("msg8", "");
                }
                if (jSONObject.has("msg9")) {
                    uVar.f4417y = jSONObject.optString("msg9", "");
                }
                if (jSONObject.has("msg10")) {
                    uVar.f4418z = jSONObject.optString("msg10", "");
                }
                if (jSONObject.has("msg11")) {
                    uVar.f4369A = jSONObject.optString("msg11", "");
                }
                if (jSONObject.has("msg12")) {
                    uVar.f4370B = jSONObject.optString("msg12", "");
                }
                if (jSONObject.has("msg13")) {
                    uVar.f4371C = jSONObject.optString("msg13", "");
                }
                if (jSONObject.has("msg14")) {
                    uVar.f4372D = jSONObject.optString("msg14", "");
                }
                if (jSONObject.has("msg15")) {
                    uVar.f4373E = jSONObject.optString("msg15", "");
                }
                if (jSONObject.has(m.a.f8918T)) {
                    uVar.f4389U = jSONObject.optString(m.a.f8918T, "");
                }
                if (jSONObject.has(com.anythink.core.common.m.f.aj)) {
                    uVar.f4390V = jSONObject.optString(com.anythink.core.common.m.f.aj, "");
                }
                if (jSONObject.has(m.a.aa)) {
                    uVar.f4391W = jSONObject.optJSONObject(m.a.aa);
                }
                if (jSONObject.has("adap_c")) {
                    uVar.ab = jSONObject.optJSONObject("adap_c");
                }
                uVar.f4392X = jSONObject.optString("real_p", "");
                uVar.f4393Y = jSONObject.optInt("real_g", -1);
                uVar.f4394Z = jSONObject.optInt("real_t", -1);
                if (jSONObject.has("x_c")) {
                    uVar.ac = jSONObject.optString("x_c");
                    return uVar;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return uVar;
    }

    public final void a(by byVar) {
        if (byVar != null) {
            a(byVar.f4121z);
        }
    }

    public final void a(ae aeVar) {
        if (aeVar != null) {
            a(aeVar.f3693c);
        }
    }
}

package com.smartdigimkt.o3;

import android.text.TextUtils;
import com.anythink.core.common.f.p;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.k;
import com.anythink.core.e.m;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b extends a {

    /* renamed from: A, reason: collision with root package name */
    public double f42233A;

    /* renamed from: B, reason: collision with root package name */
    public double f42234B;

    /* renamed from: C, reason: collision with root package name */
    public double f42235C;

    /* renamed from: D, reason: collision with root package name */
    public String f42236D;

    /* renamed from: E, reason: collision with root package name */
    public String f42237E;

    /* renamed from: F, reason: collision with root package name */
    public double f42238F;

    /* renamed from: G, reason: collision with root package name */
    public JSONObject f42239G;

    /* renamed from: H, reason: collision with root package name */
    public String f42240H;

    /* renamed from: I, reason: collision with root package name */
    public int f42241I;

    /* renamed from: J, reason: collision with root package name */
    public String f42242J;

    /* renamed from: K, reason: collision with root package name */
    public int f42243K;

    /* renamed from: L, reason: collision with root package name */
    public String f42244L;

    /* renamed from: M, reason: collision with root package name */
    public int f42245M;

    /* renamed from: N, reason: collision with root package name */
    public String f42246N;

    /* renamed from: O, reason: collision with root package name */
    public int f42247O;

    /* renamed from: P, reason: collision with root package name */
    public String f42248P;

    /* renamed from: Q, reason: collision with root package name */
    public JSONObject f42249Q;

    /* renamed from: m, reason: collision with root package name */
    public int f42250m;

    /* renamed from: n, reason: collision with root package name */
    public String f42251n;

    /* renamed from: o, reason: collision with root package name */
    public String f42252o;

    /* renamed from: p, reason: collision with root package name */
    public int f42253p;

    /* renamed from: q, reason: collision with root package name */
    public long f42254q;

    /* renamed from: r, reason: collision with root package name */
    public long f42255r;

    /* renamed from: s, reason: collision with root package name */
    public String f42256s;

    /* renamed from: t, reason: collision with root package name */
    public String f42257t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f42258u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f42259v;

    /* renamed from: w, reason: collision with root package name */
    public SDMLossInfo f42260w;

    /* renamed from: x, reason: collision with root package name */
    public String f42261x;

    /* renamed from: y, reason: collision with root package name */
    public String f42262y;

    /* renamed from: z, reason: collision with root package name */
    public String f42263z;

    public b(boolean z2, double d2, String str, String str2, String str3, String str4, String str5) {
        super(z2, d2, str, str2, str3, str4, str5, SDMAdConst.CURRENCY.USD);
        this.f42238F = 0.0d;
        this.f42243K = -1;
        this.f42244L = "";
        this.f42245M = 0;
    }

    public final String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(p.a.f3376c, this.f42225e);
            jSONObject.put("cur", this.f42251n);
            jSONObject.put(PointParamKey.ORIGIN_PRICE, this.f42222b);
            jSONObject.put("price", this.f42223c);
            jSONObject.put("nurl", this.f42227g);
            jSONObject.put("lurl", this.f42228h);
            jSONObject.put("unit_id", this.f42252o);
            jSONObject.put("nw_firm_id", this.f42253p);
            jSONObject.put("is_success", this.f42221a ? 1 : 0);
            jSONObject.put("err_code", this.f42250m);
            jSONObject.put("err_msg", this.f42226f);
            jSONObject.put("expire", this.f42254q);
            jSONObject.put("out_data_time", this.f42255r);
            jSONObject.put("is_send_winurl", this.f42258u);
            jSONObject.put("tp_bid_id", this.f42256s);
            jSONObject.put("burl", this.f42229i);
            jSONObject.put("ad_source_id", this.f42263z);
            jSONObject.put("cur_rate", this.f42233A);
            jSONObject.put("ecpm_api", this.f42234B);
            jSONObject.put("cny_ecpm_api", this.f42235C);
            jSONObject.put(k.f5376U, this.f42236D);
            jSONObject.put("req_url", this.f42257t);
            jSONObject.put("bd_type", this.f42231k);
            jSONObject.put(k.aq, this.f42224d);
            jSONObject.put("cny_price", this.f42232l);
            jSONObject.put("request_id", this.f42237E);
            jSONObject.put("a_r", this.f42238F);
            Object obj = this.f42239G;
            if (obj != null) {
                jSONObject.put("adx_ctrl", obj);
            }
            if (!TextUtils.isEmpty(this.f42240H)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(k.aU, this.f42240H);
                jSONObject2.put("id", this.f42241I);
                if (!TextUtils.isEmpty(this.f42242J)) {
                    jSONObject2.put("cny_e_c", this.f42242J);
                }
                jSONObject.put(m.a.aB, jSONObject2);
            }
            jSONObject.put("adx_mtg_mix_type", this.f42243K);
            jSONObject.put("deal_type", this.f42244L);
            jSONObject.put("deal_id", this.f42246N);
            jSONObject.put("deal_pri", this.f42247O);
            jSONObject.put("origin_request_id", this.f42230j);
            jSONObject.put("x_c", this.f42248P);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public b(boolean z2, double d2, double d3, String str, String str2, String str3, String str4, String str5) {
        super(z2, d3, str, str2, str3, str4, str5, SDMAdConst.CURRENCY.USD);
        this.f42238F = 0.0d;
        this.f42243K = -1;
        this.f42244L = "";
        this.f42245M = 0;
        this.f42224d = d2;
    }

    public static b a(JSONObject jSONObject) {
        try {
            b bVar = new b(jSONObject.optInt("is_success") == 1, jSONObject.has("price") ? jSONObject.optDouble("price", 0.0d) : 0.0d, jSONObject.optString(p.a.f3376c), jSONObject.optString("nurl"), jSONObject.optString("lurl"), jSONObject.optString("burl"), jSONObject.optString("err_msg"));
            bVar.f42251n = jSONObject.optString("cur");
            bVar.f42252o = jSONObject.optString("unit_id");
            bVar.f42253p = jSONObject.optInt("nw_firm_id");
            bVar.f42250m = jSONObject.optInt("err_code");
            bVar.f42254q = jSONObject.optLong("expire");
            bVar.f42255r = jSONObject.optLong("out_data_time");
            bVar.f42258u = jSONObject.optBoolean("is_send_winurl");
            bVar.f42261x = jSONObject.optString(p.a.f3380g);
            bVar.f42256s = jSONObject.optString("tp_bid_id");
            bVar.f42262y = jSONObject.optString("burl_win");
            bVar.f42263z = jSONObject.optString("ad_source_id");
            bVar.f42233A = jSONObject.optDouble("cur_rate", 0.0d);
            bVar.f42234B = jSONObject.optDouble("ecpm_api", 0.0d);
            bVar.f42235C = jSONObject.optDouble("cny_ecpm_api", 0.0d);
            bVar.f42236D = jSONObject.optString(k.f5376U);
            bVar.f42257t = jSONObject.optString("req_url", "");
            bVar.f42231k = jSONObject.optInt("bd_type", 1);
            double dOptDouble = jSONObject.optDouble(k.aq, bVar.f42223c);
            bVar.f42224d = dOptDouble;
            bVar.f42222b = jSONObject.optDouble(PointParamKey.ORIGIN_PRICE, dOptDouble);
            bVar.f42232l = jSONObject.optDouble("cny_price", 0.0d);
            int i2 = bVar.f42253p;
            if (i2 == 1) {
                double d2 = bVar.f42234B;
                if (d2 > 0.0d) {
                    bVar.f42223c = d2;
                    bVar.f42224d = d2;
                }
                double d3 = bVar.f42235C;
                if (d3 > 0.0d) {
                    bVar.f42232l = d3;
                }
            }
            if (i2 == 66) {
                bVar.f42238F = jSONObject.optDouble("a_r", 0.0d);
            }
            Object objOpt = jSONObject.opt("request_id");
            if (objOpt != null) {
                bVar.f42237E = objOpt.toString();
            }
            bVar.f42239G = jSONObject.optJSONObject("adx_ctrl");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(m.a.aB);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                bVar.f42240H = jSONObjectOptJSONObject.optString(k.aU);
                bVar.f42242J = jSONObjectOptJSONObject.optString("cny_e_c");
                bVar.f42241I = jSONObjectOptJSONObject.optInt("id");
            }
            char c2 = 65535;
            bVar.f42243K = jSONObject.optInt("adx_mtg_mix_type", -1);
            String strOptString = jSONObject.optString("deal_type", "");
            bVar.f42244L = strOptString;
            int iHashCode = strOptString.hashCode();
            if (iHashCode != 0) {
                if (iHashCode != 2545) {
                    if (iHashCode != 2548) {
                        if (iHashCode == 79054 && strOptString.equals(ad.f3647y)) {
                            c2 = 0;
                        }
                    } else if (strOptString.equals(ad.f3648z)) {
                        c2 = 1;
                    }
                } else if (strOptString.equals(ad.f3641A)) {
                    c2 = 2;
                }
            } else if (strOptString.equals("")) {
                c2 = 3;
            }
            if (c2 == 0) {
                bVar.f42245M = 3;
            } else if (c2 == 1) {
                bVar.f42245M = 2;
            } else if (c2 != 2) {
                bVar.f42245M = 0;
            } else {
                bVar.f42245M = 1;
            }
            bVar.f42246N = jSONObject.optString("deal_id", "");
            bVar.f42247O = jSONObject.optInt("deal_pri", 0);
            bVar.f42230j = jSONObject.optString("origin_request_id", "");
            bVar.f42248P = jSONObject.optString("x_c", "");
            bVar.f42249Q = jSONObject.optJSONObject(p.a.f3380g);
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}

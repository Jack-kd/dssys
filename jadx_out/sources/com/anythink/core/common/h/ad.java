package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.common.f.p;
import com.anythink.core.e.m;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ad extends z implements Comparable<ad> {

    /* renamed from: A, reason: collision with root package name */
    public static final String f3641A = "PA";

    /* renamed from: B, reason: collision with root package name */
    public static final int f3642B = 0;

    /* renamed from: C, reason: collision with root package name */
    public static final int f3643C = 1;

    /* renamed from: D, reason: collision with root package name */
    public static final int f3644D = 2;

    /* renamed from: E, reason: collision with root package name */
    public static final int f3645E = 3;

    /* renamed from: x, reason: collision with root package name */
    public static final String f3646x = "";

    /* renamed from: y, reason: collision with root package name */
    public static final String f3647y = "PDB";

    /* renamed from: z, reason: collision with root package name */
    public static final String f3648z = "PD";

    /* renamed from: F, reason: collision with root package name */
    private final String f3649F;

    /* renamed from: G, reason: collision with root package name */
    private boolean f3650G;

    /* renamed from: H, reason: collision with root package name */
    private by f3651H;

    /* renamed from: I, reason: collision with root package name */
    private String f3652I;

    /* renamed from: J, reason: collision with root package name */
    private a f3653J;

    /* renamed from: K, reason: collision with root package name */
    private IATAdxHandler f3654K;

    /* renamed from: L, reason: collision with root package name */
    private double f3655L;

    /* renamed from: M, reason: collision with root package name */
    private String f3656M;

    /* renamed from: N, reason: collision with root package name */
    private int f3657N;

    /* renamed from: O, reason: collision with root package name */
    private boolean f3658O;

    /* renamed from: P, reason: collision with root package name */
    private String f3659P;

    /* renamed from: Q, reason: collision with root package name */
    private int f3660Q;

    /* renamed from: R, reason: collision with root package name */
    private String f3661R;

    /* renamed from: S, reason: collision with root package name */
    private String f3662S;

    /* renamed from: T, reason: collision with root package name */
    private int f3663T;

    /* renamed from: U, reason: collision with root package name */
    private String f3664U;

    /* renamed from: V, reason: collision with root package name */
    private int f3665V;

    /* renamed from: W, reason: collision with root package name */
    private String f3666W;

    /* renamed from: X, reason: collision with root package name */
    private boolean f3667X;

    /* renamed from: a, reason: collision with root package name */
    public int f3668a;

    /* renamed from: b, reason: collision with root package name */
    public String f3669b;

    /* renamed from: c, reason: collision with root package name */
    public String f3670c;

    /* renamed from: d, reason: collision with root package name */
    public int f3671d;

    /* renamed from: e, reason: collision with root package name */
    public long f3672e;

    /* renamed from: f, reason: collision with root package name */
    public long f3673f;

    /* renamed from: g, reason: collision with root package name */
    public String f3674g;

    /* renamed from: h, reason: collision with root package name */
    public String f3675h;

    /* renamed from: i, reason: collision with root package name */
    public String f3676i;

    /* renamed from: j, reason: collision with root package name */
    public String f3677j;

    /* renamed from: k, reason: collision with root package name */
    public String f3678k;

    /* renamed from: l, reason: collision with root package name */
    public double f3679l;

    /* renamed from: m, reason: collision with root package name */
    public String f3680m;

    /* renamed from: n, reason: collision with root package name */
    public int f3681n;

    /* renamed from: o, reason: collision with root package name */
    public double f3682o;

    /* renamed from: p, reason: collision with root package name */
    public double f3683p;

    /* renamed from: q, reason: collision with root package name */
    public String f3684q;

    /* renamed from: r, reason: collision with root package name */
    public double f3685r;

    /* renamed from: s, reason: collision with root package name */
    public com.anythink.core.c.c.c f3686s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3687t;

    /* renamed from: u, reason: collision with root package name */
    public List<ac> f3688u;

    /* renamed from: v, reason: collision with root package name */
    public cg f3689v;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f3690w;

    public interface a {
        void a();

        void b();
    }

    private ad(boolean z2, double d2, String str, String str2, String str3, String str4, String str5) {
        super(z2, d2, str, str2, str3, str4, str5, ATAdConst.CURRENCY.USD);
        this.f3649F = ad.class.getSimpleName() + ":";
        this.f3655L = 0.0d;
        this.f3660Q = -1;
        this.f3662S = "";
        this.f3663T = 0;
    }

    private cg A() {
        return this.f3689v;
    }

    private a B() {
        return this.f3653J;
    }

    private List<ac> C() {
        return this.f3688u;
    }

    public final boolean a() {
        return this.f3673f < System.currentTimeMillis();
    }

    public final String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(p.a.f3376c, this.token);
            jSONObject.put("cur", this.f3669b);
            jSONObject.put(PointParamKey.ORIGIN_PRICE, this.originPrice);
            jSONObject.put("price", this.price);
            jSONObject.put("nurl", this.winNoticeUrl);
            jSONObject.put("lurl", this.loseNoticeUrl);
            jSONObject.put("unit_id", this.f3670c);
            jSONObject.put("nw_firm_id", this.f3671d);
            jSONObject.put("is_success", this.isSuccess ? 1 : 0);
            jSONObject.put("err_code", this.f3668a);
            jSONObject.put("err_msg", this.errorMsg);
            jSONObject.put("expire", this.f3672e);
            jSONObject.put("out_data_time", this.f3673f);
            jSONObject.put("is_send_winurl", this.f3650G);
            jSONObject.put("tp_bid_id", this.f3674g);
            jSONObject.put("burl", this.displayNoticeUrl);
            jSONObject.put("ad_source_id", this.f3678k);
            jSONObject.put("cur_rate", this.f3679l);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.anythink.core.common.k.aj, this.f3681n);
            jSONObject.put("ctrl", jSONObject2);
            if (!TextUtils.isEmpty(this.f3680m)) {
                jSONObject.put("bid_response", this.f3680m);
            }
            jSONObject.put("ecpm_api", this.f3682o);
            jSONObject.put("cny_ecpm_api", this.f3683p);
            jSONObject.put(com.anythink.core.common.k.f5376U, this.f3684q);
            jSONObject.put("second_price", this.f3685r);
            jSONObject.put("req_url", this.f3675h);
            jSONObject.put("bd_type", this.useType);
            jSONObject.put(com.anythink.core.common.k.aq, this.sortPrice);
            jSONObject.put("cny_price", this.rmbPrice);
            jSONObject.put("request_id", this.f3652I);
            jSONObject.put("a_r", this.f3655L);
            Object obj = this.f3690w;
            if (obj != null) {
                jSONObject.put("adx_ctrl", obj);
            }
            if (!TextUtils.isEmpty(this.f3656M)) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(com.anythink.core.common.k.aU, this.f3656M);
                jSONObject3.put("id", this.f3657N);
                if (!TextUtils.isEmpty(this.f3659P)) {
                    jSONObject3.put("cny_e_c", this.f3659P);
                }
                jSONObject.put(m.a.aB, jSONObject3);
            }
            jSONObject.put("adx_mtg_mix_type", this.f3660Q);
            jSONObject.put("deal_type", this.f3662S);
            jSONObject.put("deal_id", this.f3664U);
            jSONObject.put("deal_pri", this.f3665V);
            jSONObject.put("origin_request_id", getOriginRequestId());
            jSONObject.put("x_c", this.f3666W);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public final String c() {
        return this.f3652I;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ad adVar) {
        return com.anythink.core.common.v.k.a(this, adVar);
    }

    public final synchronized boolean d() {
        if (this.f3650G) {
            return true;
        }
        this.f3650G = true;
        return false;
    }

    public final synchronized void e() {
        this.biddingNotice = null;
    }

    public final synchronized by f() {
        by byVar;
        List<ac> list = this.f3688u;
        byVar = null;
        if (list != null) {
            Iterator<ac> it = list.iterator();
            while (it.hasNext()) {
                by byVarB = it.next().b();
                if (byVarB != null && com.anythink.core.common.v.k.a(byVarB, byVar) < 0) {
                    byVar = byVarB;
                }
            }
        }
        return byVar;
    }

    public final synchronized by g() {
        by byVar;
        List<ac> list = this.f3688u;
        byVar = null;
        if (list != null) {
            Iterator<ac> it = list.iterator();
            while (it.hasNext()) {
                by byVarC = it.next().c();
                if (byVarC != null && com.anythink.core.common.v.k.a(byVarC, byVar) < 0) {
                    byVar = byVarC;
                }
            }
        }
        return byVar;
    }

    public final synchronized void h() {
        List<ac> list = this.f3688u;
        if (list != null) {
            list.clear();
        }
    }

    public final IATAdxHandler i() {
        return this.f3654K;
    }

    public final double j() {
        return this.f3655L;
    }

    public final by k() {
        return this.f3651H;
    }

    public final String l() {
        return this.f3656M;
    }

    public final String m() {
        return this.f3659P;
    }

    public final int n() {
        return this.f3657N;
    }

    public final boolean o() {
        return this.f3658O;
    }

    public final void p() {
        this.f3658O = true;
    }

    public final String q() {
        return this.f3661R;
    }

    public final boolean r() {
        return this.f3663T != 0;
    }

    public final int s() {
        return this.f3663T;
    }

    public final String t() {
        return this.f3662S;
    }

    public final String u() {
        return this.f3664U;
    }

    public final int v() {
        return this.f3665V;
    }

    public final String w() {
        return this.f3666W;
    }

    public final void x() {
        this.f3667X = true;
    }

    public final boolean y() {
        return this.f3667X;
    }

    public final com.anythink.core.bridge.entity.c z() {
        com.anythink.core.bridge.entity.c cVar = new com.anythink.core.bridge.entity.c();
        cVar.f1792a = this.isSuccess;
        cVar.f1793b = this.token;
        cVar.f1794c = Double.valueOf(this.price);
        cVar.f1795d = this.winNoticeUrl;
        cVar.f1796e = this.loseNoticeUrl;
        cVar.f1798g = this.errorMsg;
        cVar.f1799h = this.f3669b;
        cVar.f1800i = this.f3670c;
        cVar.f1801j = this.f3671d;
        cVar.f1802k = this.f3668a;
        cVar.f1803l = this.f3672e;
        cVar.f1804m = this.f3673f;
        cVar.f1805n = this.f3650G;
        cVar.f1806o = this.f3676i;
        cVar.f1807p = this.f3674g;
        cVar.f1808q = this.f3677j;
        cVar.f1809r = this.f3678k;
        cVar.f1810s = this.f3679l;
        cVar.f1811t = this.f3682o;
        cVar.f1812u = this.f3683p;
        cVar.f1813v = this.f3684q;
        cVar.f1814w = this.f3675h;
        cVar.f1815x = this.useType;
        cVar.f1816y = this.sortPrice;
        cVar.f1817z = this.originPrice;
        cVar.f1779A = this.rmbPrice;
        cVar.f1780B = this.f3655L;
        cVar.f1781C = this.f3652I;
        cVar.f1782D = this.f3660Q;
        cVar.f1783E = this.f3662S;
        cVar.f1784F = this.f3663T;
        cVar.f1785G = this.f3664U;
        cVar.f1786H = this.f3665V;
        cVar.f1787I = this.originRequestId;
        cVar.f1788J = this.f3666W;
        cVar.f1789K = this.f3656M;
        cVar.f1790L = this.f3659P;
        cVar.f1791M = this.f3657N;
        return cVar;
    }

    public static ad a(String str) {
        try {
            return a(new JSONObject(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void c(String str) {
        this.f3661R = str;
    }

    public static ad a(JSONObject jSONObject) {
        try {
            ad adVar = new ad(jSONObject.optInt("is_success") == 1, jSONObject.has("price") ? jSONObject.optDouble("price", 0.0d) : 0.0d, jSONObject.optString(p.a.f3376c), jSONObject.optString("nurl"), jSONObject.optString("lurl"), jSONObject.optString("burl"), jSONObject.optString("err_msg"));
            adVar.f3669b = jSONObject.optString("cur");
            adVar.f3670c = jSONObject.optString("unit_id");
            adVar.f3671d = jSONObject.optInt("nw_firm_id");
            adVar.f3668a = jSONObject.optInt("err_code");
            adVar.f3672e = jSONObject.optLong("expire");
            adVar.f3673f = jSONObject.optLong("out_data_time");
            adVar.f3650G = jSONObject.optBoolean("is_send_winurl");
            adVar.f3676i = jSONObject.optString(p.a.f3380g);
            adVar.f3674g = jSONObject.optString("tp_bid_id");
            adVar.f3677j = jSONObject.optString("burl_win");
            adVar.f3678k = jSONObject.optString("ad_source_id");
            adVar.f3679l = jSONObject.optDouble("cur_rate", 0.0d);
            adVar.f3680m = jSONObject.optString("bid_response");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ctrl");
            if (jSONObjectOptJSONObject != null) {
                adVar.f3681n = jSONObjectOptJSONObject.optInt(com.anythink.core.common.k.aj);
            }
            adVar.f3682o = jSONObject.optDouble("ecpm_api", 0.0d);
            adVar.f3683p = jSONObject.optDouble("cny_ecpm_api", 0.0d);
            adVar.f3684q = jSONObject.optString(com.anythink.core.common.k.f5376U);
            adVar.f3685r = jSONObject.optDouble("second_price", 0.0d);
            adVar.f3675h = jSONObject.optString("req_url", "");
            adVar.useType = jSONObject.optInt("bd_type", 1);
            double dOptDouble = jSONObject.optDouble(com.anythink.core.common.k.aq, adVar.price);
            adVar.sortPrice = dOptDouble;
            adVar.originPrice = jSONObject.optDouble(PointParamKey.ORIGIN_PRICE, dOptDouble);
            adVar.rmbPrice = jSONObject.optDouble("cny_price", 0.0d);
            int i2 = adVar.f3671d;
            if (i2 == 1) {
                double d2 = adVar.f3682o;
                if (d2 > 0.0d) {
                    adVar.price = d2;
                    adVar.sortPrice = d2;
                }
                double d3 = adVar.f3683p;
                if (d3 > 0.0d) {
                    adVar.rmbPrice = d3;
                }
            }
            if (i2 == 66) {
                adVar.f3655L = jSONObject.optDouble("a_r", 0.0d);
            }
            Object objOpt = jSONObject.opt("request_id");
            if (objOpt != null) {
                adVar.f3652I = objOpt.toString();
            }
            adVar.f3690w = jSONObject.optJSONObject("adx_ctrl");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(m.a.aB);
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                adVar.f3656M = jSONObjectOptJSONObject2.optString(com.anythink.core.common.k.aU);
                adVar.f3659P = jSONObjectOptJSONObject2.optString("cny_e_c");
                adVar.f3657N = jSONObjectOptJSONObject2.optInt("id");
            }
            char c2 = 65535;
            adVar.f3660Q = jSONObject.optInt("adx_mtg_mix_type", -1);
            String strOptString = jSONObject.optString("deal_type", "");
            adVar.f3662S = strOptString;
            int iHashCode = strOptString.hashCode();
            if (iHashCode != 0) {
                if (iHashCode != 2545) {
                    if (iHashCode != 2548) {
                        if (iHashCode == 79054 && strOptString.equals(f3647y)) {
                            c2 = 0;
                        }
                    } else if (strOptString.equals(f3648z)) {
                        c2 = 1;
                    }
                } else if (strOptString.equals(f3641A)) {
                    c2 = 2;
                }
            } else if (strOptString.equals("")) {
                c2 = 3;
            }
            if (c2 == 0) {
                adVar.f3663T = 3;
            } else if (c2 == 1) {
                adVar.f3663T = 2;
            } else if (c2 != 2) {
                adVar.f3663T = 0;
            } else {
                adVar.f3663T = 1;
            }
            adVar.f3664U = jSONObject.optString("deal_id", "");
            adVar.f3665V = jSONObject.optInt("deal_pri", 0);
            adVar.setOriginRequestId(jSONObject.optString("origin_request_id", ""));
            adVar.f3666W = jSONObject.optString("x_c", "");
            return adVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void e(String str) {
        this.f3659P = str;
    }

    private void d(String str) {
        this.f3656M = str;
    }

    public ad(boolean z2, double d2, double d3, String str, String str2, String str3, String str4, String str5) {
        super(z2, d3, str, str2, str3, str4, str5, ATAdConst.CURRENCY.USD);
        this.f3649F = ad.class.getSimpleName() + ":";
        this.f3655L = 0.0d;
        this.f3660Q = -1;
        this.f3662S = "";
        this.f3663T = 0;
        this.sortPrice = d2;
    }

    public final void b(String str) {
        this.f3652I = str;
    }

    private void b(int i2) {
        this.f3657N = i2;
    }

    private int a(ad adVar) {
        return com.anythink.core.common.v.k.a(this, adVar);
    }

    public final synchronized void a(ac acVar) {
        if (acVar == null) {
            return;
        }
        try {
            if (this.f3688u == null) {
                this.f3688u = Collections.synchronizedList(new ArrayList(4));
            }
            if (!this.f3688u.contains(acVar)) {
                this.f3688u.add(acVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(cg cgVar) {
        this.f3689v = cgVar;
    }

    public final void a(IATAdxHandler iATAdxHandler) {
        this.f3654K = iATAdxHandler;
    }

    private void a(a aVar) {
        this.f3653J = aVar;
    }

    public final void a(by byVar, double d2) {
        this.f3651H = byVar;
        this.f3685r = d2;
    }

    public final int a(int i2) {
        int i3 = this.f3660Q;
        if (i3 < 0 || i2 != 4) {
            return -1;
        }
        return i3 == 5 ? 3 : 4;
    }
}

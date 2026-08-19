package com.anythink.core.common.h;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ac {

    /* renamed from: a, reason: collision with root package name */
    static final String f3614a = "reqId";

    /* renamed from: b, reason: collision with root package name */
    static final String f3615b = "hasShow";

    /* renamed from: c, reason: collision with root package name */
    static final String f3616c = "hasClick";

    /* renamed from: d, reason: collision with root package name */
    static final String f3617d = "price";

    /* renamed from: e, reason: collision with root package name */
    static final String f3618e = "networkFirmId";

    /* renamed from: f, reason: collision with root package name */
    static final String f3619f = "isHB";

    /* renamed from: g, reason: collision with root package name */
    static final String f3620g = "adsListType";

    /* renamed from: h, reason: collision with root package name */
    static final String f3621h = "tpBidId";

    /* renamed from: i, reason: collision with root package name */
    static final String f3622i = "deal_type";

    /* renamed from: j, reason: collision with root package name */
    static final String f3623j = "deal_id";

    /* renamed from: k, reason: collision with root package name */
    static final String f3624k = "deal_pri";

    /* renamed from: l, reason: collision with root package name */
    private static String f3625l = "ac";

    /* renamed from: A, reason: collision with root package name */
    private int f3626A;

    /* renamed from: m, reason: collision with root package name */
    private boolean f3627m;

    /* renamed from: n, reason: collision with root package name */
    private final String f3628n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f3629o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f3630p;

    /* renamed from: q, reason: collision with root package name */
    private by f3631q;

    /* renamed from: r, reason: collision with root package name */
    private by f3632r;

    /* renamed from: s, reason: collision with root package name */
    private by f3633s;

    /* renamed from: t, reason: collision with root package name */
    private int f3634t;

    /* renamed from: u, reason: collision with root package name */
    private double f3635u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f3636v;

    /* renamed from: w, reason: collision with root package name */
    private int f3637w;

    /* renamed from: x, reason: collision with root package name */
    private String f3638x;

    /* renamed from: y, reason: collision with root package name */
    private String f3639y;

    /* renamed from: z, reason: collision with root package name */
    private String f3640z;

    public ac(String str) {
        this.f3628n = str;
    }

    private static int a(int i2) {
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4 || i2 == 5) {
                    return 4;
                }
                if (i2 != 7) {
                    if (i2 != 8 && i2 != 11) {
                        return 1;
                    }
                }
            }
            return 2;
        }
        return 3;
    }

    private boolean m() {
        return this.f3627m;
    }

    public final synchronized void b(by byVar) {
        this.f3632r = byVar;
    }

    public final synchronized void c(by byVar) {
        this.f3633s = byVar;
    }

    public final String d() {
        return this.f3628n;
    }

    public final void e() {
        this.f3629o = true;
    }

    public final void f() {
        this.f3630p = true;
    }

    public final boolean g() {
        return this.f3629o;
    }

    public final boolean h() {
        return this.f3630p;
    }

    public final String i() {
        double dA;
        int iN;
        int iV;
        String strU;
        int iA;
        String str;
        String str2;
        String strT;
        JSONObject jSONObject = new JSONObject();
        try {
            boolean z2 = this.f3629o;
            boolean z3 = this.f3630p;
            if (this.f3627m) {
                dA = this.f3635u;
                iN = this.f3634t;
                iA = a(this.f3637w);
                str = this.f3638x;
                str2 = this.f3639y;
                strU = this.f3640z;
                iV = this.f3626A;
            } else {
                dA = com.anythink.core.common.v.o.a(this.f3631q);
                iN = this.f3631q.n();
                ad adVarY = this.f3631q.Y();
                int iA2 = a(this.f3631q.k());
                String str3 = (adVarY == null || TextUtils.isEmpty(adVarY.f3674g)) ? "" : adVarY.f3674g;
                iV = 0;
                if (adVarY != null) {
                    if (TextUtils.isEmpty(adVarY.t())) {
                        strT = "";
                    } else {
                        strT = adVarY.t();
                        iV = adVarY.v();
                    }
                    if (TextUtils.isEmpty(adVarY.u())) {
                        iA = iA2;
                        str = str3;
                        str2 = strT;
                        strU = "";
                    } else {
                        String str4 = strT;
                        strU = adVarY.u();
                        iA = iA2;
                        str = str3;
                        str2 = str4;
                    }
                } else {
                    strU = "";
                    iA = iA2;
                    str = str3;
                    str2 = strU;
                }
            }
            jSONObject.put("price", dA);
            jSONObject.put(f3618e, iN);
            jSONObject.put("demandType", iA);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("tp_bid_id", str);
            }
            jSONObject.put(com.umeng.analytics.pro.be.f48800c, z2 ? 1 : 0);
            jSONObject.put("click", z3 ? 1 : 0);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(f3622i, str2);
                jSONObject.put(f3624k, iV);
            }
            if (!TextUtils.isEmpty(strU)) {
                jSONObject.put(f3623j, strU);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final double j() {
        if (this.f3627m) {
            return this.f3635u;
        }
        by byVar = this.f3631q;
        if (byVar != null) {
            return com.anythink.core.common.v.o.a(byVar);
        }
        return -1.0d;
    }

    public final int k() {
        if (this.f3627m) {
            return this.f3634t;
        }
        by byVar = this.f3631q;
        if (byVar != null) {
            return byVar.n();
        }
        return 0;
    }

    public final boolean l() {
        if (this.f3627m) {
            return this.f3636v;
        }
        by byVar = this.f3631q;
        if (byVar != null) {
            return byVar.w();
        }
        return false;
    }

    public String toString() {
        String str;
        if (this.f3627m) {
            str = ", priceInDisk=" + this.f3635u + ", networkFirmIdInDisk=" + this.f3634t + ", winnerIsHBInDisk=" + this.f3636v + ", adsListTypeInDisk=" + this.f3637w + ", tpBidIdInDisk=" + this.f3638x + ", pmpTypeStringInDisk=" + this.f3639y + ", pmpOrderIdInDisk=" + this.f3640z + ", pmpPriorityInDisk=" + this.f3626A;
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder("BiddingRecorder{fromLocalDisk=");
        sb.append(this.f3627m);
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(", requestId=");
        sb.append(this.f3628n);
        sb.append(", hasShow=");
        sb.append(this.f3629o);
        sb.append(", hasClick=");
        sb.append(this.f3630p);
        sb.append(", loadedMaxPriceUgInMemory=");
        sb.append(this.f3631q);
        sb.append('}');
        return sb.toString();
    }

    public final synchronized void a(by byVar) {
        this.f3631q = byVar;
    }

    public final synchronized by b() {
        return this.f3631q;
    }

    public final synchronized by c() {
        return this.f3633s;
    }

    public final by a() {
        return this.f3632r;
    }
}

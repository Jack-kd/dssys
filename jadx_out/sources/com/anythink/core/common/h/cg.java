package com.anythink.core.common.h;

import com.anythink.core.mg.api.MgComparedResult;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class cg {

    /* renamed from: a, reason: collision with root package name */
    int f4216a;

    /* renamed from: b, reason: collision with root package name */
    private n f4217b;

    /* renamed from: c, reason: collision with root package name */
    private by f4218c;

    /* renamed from: d, reason: collision with root package name */
    private String f4219d;

    /* renamed from: e, reason: collision with root package name */
    private String f4220e;

    /* renamed from: f, reason: collision with root package name */
    private String f4221f;

    /* renamed from: g, reason: collision with root package name */
    private String f4222g;

    /* renamed from: h, reason: collision with root package name */
    private String f4223h;

    /* renamed from: i, reason: collision with root package name */
    private double f4224i;

    /* renamed from: j, reason: collision with root package name */
    private double f4225j;

    /* renamed from: k, reason: collision with root package name */
    private double f4226k;

    /* renamed from: l, reason: collision with root package name */
    private double f4227l;

    /* renamed from: m, reason: collision with root package name */
    private int f4228m;

    /* renamed from: n, reason: collision with root package name */
    private Double f4229n = null;

    /* renamed from: o, reason: collision with root package name */
    private String f4230o = null;

    /* renamed from: p, reason: collision with root package name */
    private Double f4231p;

    /* renamed from: q, reason: collision with root package name */
    private Double f4232q;

    /* renamed from: r, reason: collision with root package name */
    private int f4233r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f4234s;

    /* renamed from: t, reason: collision with root package name */
    private double f4235t;

    private String D() {
        n nVar = this.f4217b;
        return nVar != null ? nVar.aR() : "";
    }

    private String E() {
        n nVar = this.f4217b;
        return nVar != null ? String.valueOf(nVar.aa()) : "";
    }

    private String F() {
        n nVar = this.f4217b;
        return nVar != null ? String.valueOf(nVar.aO()) : "";
    }

    private String G() {
        n nVar = this.f4217b;
        return nVar != null ? nVar.aQ() : "";
    }

    private String H() {
        n nVar = this.f4217b;
        return nVar != null ? nVar.aP() : "";
    }

    public final int A() {
        n nVar = this.f4217b;
        if (nVar != null) {
            return nVar.l();
        }
        return 0;
    }

    public final String B() {
        return this.f4234s ? "1" : "0";
    }

    public final MgComparedResult C() {
        n nVar = this.f4217b;
        MgPreLoadAdRequest preLoadInfo = (nVar == null || nVar.b() == null) ? null : nVar.b().getPreLoadInfo();
        if (preLoadInfo != null) {
            return preLoadInfo.getMgComparedResult();
        }
        return null;
    }

    public final void a(Double d2, String str) {
        this.f4229n = d2;
        this.f4230o = str;
    }

    public final String b() {
        return this.f4230o;
    }

    public final Double c() {
        return this.f4231p;
    }

    public final int d() {
        return this.f4216a;
    }

    public final String e() {
        return this.f4219d;
    }

    public final String f() {
        return this.f4220e;
    }

    public final String g() {
        return this.f4221f;
    }

    public final String h() {
        return this.f4222g;
    }

    public final String i() {
        n nVar = this.f4217b;
        return nVar != null ? nVar.p() : "";
    }

    public final String j() {
        return this.f4223h;
    }

    public final int k() {
        n nVar = this.f4217b;
        if (nVar != null) {
            return nVar.Z();
        }
        return 0;
    }

    public final String l() {
        n nVar = this.f4217b;
        return nVar != null ? nVar.N() : "";
    }

    public final String m() {
        n nVar = this.f4217b;
        if (nVar != null) {
            return nVar.aS();
        }
        return null;
    }

    public final JSONObject n() {
        n nVar = this.f4217b;
        if (nVar != null) {
            return nVar.aF();
        }
        return null;
    }

    public final double o() {
        return this.f4224i;
    }

    public final double p() {
        return this.f4225j;
    }

    public final double q() {
        return this.f4235t;
    }

    public final double r() {
        return this.f4226k;
    }

    public final void s() {
        this.f4226k = 0.0d;
    }

    public final double t() {
        return this.f4227l;
    }

    public final int u() {
        return this.f4228m;
    }

    public final boolean v() {
        return this.f4228m == 1;
    }

    public final Double w() {
        return this.f4232q;
    }

    public final int x() {
        return this.f4233r;
    }

    public final n y() {
        return this.f4217b;
    }

    public final by z() {
        return this.f4218c;
    }

    public final void b(double d2) {
        this.f4225j = d2;
    }

    public final void c(double d2) {
        this.f4235t = d2;
    }

    public final void d(double d2) {
        this.f4227l = d2;
    }

    public final Double a() {
        return this.f4229n;
    }

    public final void b(String str) {
        this.f4222g = str;
    }

    public final void a(n nVar) {
        this.f4217b = nVar;
    }

    public final void b(Double d2) {
        this.f4232q = d2;
    }

    public final void a(Double d2) {
        this.f4231p = d2;
    }

    public final void a(by byVar) {
        this.f4223h = "0";
        if (byVar == null) {
            return;
        }
        this.f4218c = byVar;
        int iY = byVar.y();
        if (iY == 2) {
            this.f4223h = "2";
        } else if (iY != 6) {
            this.f4223h = "1";
        } else {
            this.f4223h = "3";
        }
        this.f4228m = byVar.aO();
    }

    public final void a(Map<String, Object> map) {
        this.f4219d = a(map, "offer_id");
        this.f4220e = a(map, "dsp_id");
        if (map != null) {
            Object obj = map.get("ws_imp_switch");
            if (obj instanceof Integer) {
                Integer num = (Integer) obj;
                if (num.intValue() != 0) {
                    this.f4216a = num.intValue();
                }
            }
        }
    }

    private static String a(Map<String, Object> map, String str) {
        if (map != null) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                return obj.toString();
            }
            if (obj != null) {
                return obj.toString();
            }
            return "";
        }
        return "";
    }

    public final void a(double d2) {
        this.f4224i = d2;
    }

    public final void a(String str) {
        this.f4221f = str;
    }

    public final void a(int i2) {
        this.f4233r = i2;
    }

    public final void a(boolean z2) {
        this.f4234s = z2;
    }
}

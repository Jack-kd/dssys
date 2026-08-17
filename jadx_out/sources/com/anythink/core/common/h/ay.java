package com.anythink.core.common.h;

import com.anythink.core.api.ATAdMixBidInfo;
import com.anythink.core.mg.api.MgComparedResult;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ay {

    /* renamed from: a, reason: collision with root package name */
    double f3857a;

    /* renamed from: b, reason: collision with root package name */
    by f3858b;

    /* renamed from: c, reason: collision with root package name */
    ATAdMixBidInfo.BidEntity f3859c;

    /* renamed from: d, reason: collision with root package name */
    private int f3860d;

    /* renamed from: e, reason: collision with root package name */
    private n f3861e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3862f;

    /* renamed from: g, reason: collision with root package name */
    private String f3863g;

    /* renamed from: h, reason: collision with root package name */
    private int f3864h;

    /* renamed from: i, reason: collision with root package name */
    private double f3865i;

    /* renamed from: j, reason: collision with root package name */
    private String f3866j;

    /* renamed from: k, reason: collision with root package name */
    private String f3867k;

    /* renamed from: l, reason: collision with root package name */
    private Double f3868l;

    /* renamed from: m, reason: collision with root package name */
    private int f3869m;

    /* renamed from: n, reason: collision with root package name */
    private double f3870n;

    /* renamed from: o, reason: collision with root package name */
    private String f3871o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f3872p;

    /* renamed from: q, reason: collision with root package name */
    private String f3873q;

    /* renamed from: r, reason: collision with root package name */
    private int f3874r;

    /* renamed from: s, reason: collision with root package name */
    private int f3875s;

    /* renamed from: t, reason: collision with root package name */
    private int f3876t;

    /* renamed from: u, reason: collision with root package name */
    private double f3877u;

    /* renamed from: v, reason: collision with root package name */
    private double f3878v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f3879w;

    /* renamed from: x, reason: collision with root package name */
    private int f3880x;

    /* renamed from: y, reason: collision with root package name */
    private double f3881y;

    /* renamed from: z, reason: collision with root package name */
    private String f3882z;

    public ay(int i2, by byVar, n nVar) throws NumberFormatException {
        this.f3868l = null;
        this.f3874r = 1;
        this.f3860d = i2;
        this.f3858b = byVar;
        this.f3862f = byVar.as();
        this.f3879w = byVar.at();
        if (nVar != null) {
            n nVarAh = nVar.ah();
            this.f3861e = nVarAh;
            com.anythink.core.common.v.ah.a(nVarAh, byVar, 0, false);
        }
        this.f3863g = "0";
        int iY = byVar.y();
        if (iY == 2) {
            this.f3863g = "2";
        } else if (iY != 6) {
            this.f3863g = "1";
        } else {
            this.f3863g = "3";
        }
        this.f3864h = byVar.aP();
        if (byVar.n() == 8) {
            try {
                this.f3873q = byVar.s().get("unit_id").toString();
            } catch (Throwable unused) {
            }
        }
        this.f3874r = byVar.bA();
    }

    private String M() {
        n nVar = this.f3861e;
        return nVar != null ? String.valueOf(nVar.aa()) : "";
    }

    private String N() {
        n nVar = this.f3861e;
        return nVar != null ? String.valueOf(nVar.aO()) : "";
    }

    public final String A() {
        return this.f3871o;
    }

    public final n B() {
        return this.f3861e;
    }

    public final by C() {
        return this.f3858b;
    }

    public final String D() {
        return this.f3872p ? "1" : "0";
    }

    public final String E() {
        return this.f3873q;
    }

    public final int F() {
        return this.f3874r;
    }

    public final int G() {
        return this.f3876t;
    }

    public final MgComparedResult H() {
        n nVar = this.f3861e;
        MgPreLoadAdRequest preLoadInfo = (nVar == null || nVar.b() == null) ? null : nVar.b().getPreLoadInfo();
        if (preLoadInfo != null) {
            return preLoadInfo.getMgComparedResult();
        }
        return null;
    }

    public final double I() {
        return this.f3877u;
    }

    public final double J() {
        return this.f3878v;
    }

    public final double K() {
        return this.f3881y;
    }

    public final String L() {
        return this.f3882z;
    }

    public final int a() {
        return this.f3880x;
    }

    public final ATAdMixBidInfo.BidEntity b() {
        return this.f3859c;
    }

    public final int c() {
        return this.f3875s;
    }

    public final double d() {
        return this.f3865i;
    }

    public final String e() {
        return this.f3866j;
    }

    public final String f() {
        return this.f3867k;
    }

    public final boolean g() {
        return this.f3862f;
    }

    public final boolean h() {
        return this.f3879w;
    }

    public final double i() {
        return this.f3857a;
    }

    public final int j() {
        return this.f3860d;
    }

    public final String k() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.aR() : "";
    }

    public final String l() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.aQ() : "";
    }

    public final int m() {
        n nVar = this.f3861e;
        if (nVar != null) {
            return nVar.Z();
        }
        return 0;
    }

    public final String n() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.N() : "";
    }

    public final String o() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.aP() : "";
    }

    public final String p() {
        n nVar = this.f3861e;
        if (nVar != null) {
            return nVar.aS();
        }
        return null;
    }

    public final String q() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.aJ() : "";
    }

    public final String r() {
        n nVar = this.f3861e;
        return nVar != null ? nVar.aK() : "";
    }

    public final JSONObject s() {
        n nVar = this.f3861e;
        if (nVar != null) {
            return nVar.aF();
        }
        return null;
    }

    public final int t() {
        n nVar = this.f3861e;
        if (nVar != null) {
            return nVar.l();
        }
        return 0;
    }

    public final String u() {
        return this.f3863g;
    }

    public final int v() {
        return this.f3864h;
    }

    public final boolean w() {
        return this.f3864h == 1;
    }

    public final Double x() {
        return this.f3868l;
    }

    public final int y() {
        return this.f3869m;
    }

    public final double z() {
        return this.f3870n;
    }

    private void e(int i2) {
        this.f3874r = i2;
    }

    public final void a(int i2) {
        this.f3880x = i2;
    }

    public final void b(int i2) {
        this.f3875s = i2;
    }

    public final void c(int i2) {
        this.f3869m = i2;
    }

    public final void d(int i2) {
        this.f3876t = i2;
    }

    public final void a(ATAdMixBidInfo.BidEntity bidEntity) {
        this.f3859c = bidEntity;
    }

    public final void b(double d2) {
        this.f3877u = d2;
    }

    public final void c(double d2) {
        this.f3878v = d2;
    }

    public final void d(double d2) {
        this.f3881y = d2;
    }

    public final void a(double d2, String str, String str2) {
        this.f3865i = d2;
        this.f3866j = str;
        this.f3867k = str2;
    }

    public final void b(String str) {
        this.f3882z = str;
    }

    private void a(by byVar) {
        this.f3863g = "0";
        if (byVar == null) {
            return;
        }
        int iY = byVar.y();
        if (iY == 2) {
            this.f3863g = "2";
        } else if (iY != 6) {
            this.f3863g = "1";
        } else {
            this.f3863g = "3";
        }
        this.f3864h = byVar.aP();
        if (byVar.n() == 8) {
            try {
                this.f3873q = byVar.s().get("unit_id").toString();
            } catch (Throwable unused) {
            }
        }
        this.f3874r = byVar.bA();
    }

    public final void a(Double d2) {
        this.f3868l = d2;
    }

    public final void a(double d2) {
        this.f3870n = d2;
    }

    public final void a(String str) {
        this.f3871o = str;
    }

    public ay(int i2, by byVar, n nVar, double d2) {
        this(i2, byVar, nVar);
        this.f3857a = d2;
    }

    public final void a(boolean z2) {
        this.f3872p = z2;
    }
}

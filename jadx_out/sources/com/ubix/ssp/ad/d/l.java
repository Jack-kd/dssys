package com.ubix.ssp.ad.d;

import android.graphics.Rect;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.t;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.math.BigDecimal;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class l {

    /* renamed from: A, reason: collision with root package name */
    private a f45982A;

    /* renamed from: D, reason: collision with root package name */
    private boolean f45988D;

    /* renamed from: a, reason: collision with root package name */
    private boolean f46027a = true;

    /* renamed from: b, reason: collision with root package name */
    private boolean f46029b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46031c = false;

    /* renamed from: d, reason: collision with root package name */
    private int f46033d = 0;

    /* renamed from: e, reason: collision with root package name */
    private int f46035e = 3;

    /* renamed from: f, reason: collision with root package name */
    private int f46037f = 0;

    /* renamed from: g, reason: collision with root package name */
    private double f46039g = 3.0d;

    /* renamed from: h, reason: collision with root package name */
    private double f46041h = 0.2d;

    /* renamed from: i, reason: collision with root package name */
    private int f46043i = 1;

    /* renamed from: j, reason: collision with root package name */
    private int f46045j = 0;

    /* renamed from: k, reason: collision with root package name */
    private String f46047k = "";

    /* renamed from: l, reason: collision with root package name */
    private long f46049l = 0;

    /* renamed from: m, reason: collision with root package name */
    private boolean f46051m = false;

    /* renamed from: n, reason: collision with root package name */
    private boolean f46053n = false;

    /* renamed from: o, reason: collision with root package name */
    private int f46055o = 2;

    /* renamed from: p, reason: collision with root package name */
    private boolean f46057p = true;

    /* renamed from: q, reason: collision with root package name */
    private int f46059q = 30;

    /* renamed from: r, reason: collision with root package name */
    private int f46061r = 150;

    /* renamed from: s, reason: collision with root package name */
    private int f46063s = 0;

    /* renamed from: t, reason: collision with root package name */
    private boolean f46065t = false;

    /* renamed from: u, reason: collision with root package name */
    private double f46067u = 0.2d;

    /* renamed from: v, reason: collision with root package name */
    private int f46069v = 35;

    /* renamed from: w, reason: collision with root package name */
    private String f46071w = "";

    /* renamed from: x, reason: collision with root package name */
    private String f46073x = "";

    /* renamed from: y, reason: collision with root package name */
    private boolean f46075y = false;

    /* renamed from: z, reason: collision with root package name */
    private boolean f46077z = false;

    /* renamed from: B, reason: collision with root package name */
    private int f45984B = 0;

    /* renamed from: C, reason: collision with root package name */
    private int f45986C = 0;

    /* renamed from: E, reason: collision with root package name */
    private boolean f45990E = false;

    /* renamed from: F, reason: collision with root package name */
    private int f45992F = 0;

    /* renamed from: G, reason: collision with root package name */
    private boolean f45994G = true;

    /* renamed from: H, reason: collision with root package name */
    private boolean f45996H = false;

    /* renamed from: I, reason: collision with root package name */
    private int f45998I = 100;

    /* renamed from: J, reason: collision with root package name */
    private int f46000J = 0;

    /* renamed from: K, reason: collision with root package name */
    private int[] f46002K = {35, 35};

    /* renamed from: L, reason: collision with root package name */
    private int f46004L = 5000;

    /* renamed from: M, reason: collision with root package name */
    private boolean f46006M = false;

    /* renamed from: N, reason: collision with root package name */
    private boolean f46008N = false;

    /* renamed from: O, reason: collision with root package name */
    private int f46010O = 100;

    /* renamed from: P, reason: collision with root package name */
    private int f46012P = -1;

    /* renamed from: Q, reason: collision with root package name */
    private int f46014Q = 50;

    /* renamed from: R, reason: collision with root package name */
    private int f46016R = 0;

    /* renamed from: S, reason: collision with root package name */
    private int f46018S = 5;

    /* renamed from: T, reason: collision with root package name */
    private boolean f46020T = true;

    /* renamed from: U, reason: collision with root package name */
    private int f46021U = 1;

    /* renamed from: V, reason: collision with root package name */
    private double f46022V = 1.0d;

    /* renamed from: W, reason: collision with root package name */
    private int f46023W = 0;

    /* renamed from: X, reason: collision with root package name */
    private int f46024X = -999;

    /* renamed from: Y, reason: collision with root package name */
    private String f46025Y = "";

    /* renamed from: Z, reason: collision with root package name */
    private boolean f46026Z = true;

    /* renamed from: a0, reason: collision with root package name */
    private int f46028a0 = 1;

    /* renamed from: b0, reason: collision with root package name */
    private int f46030b0 = -1;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f46032c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    private int f46034d0 = 0;

    /* renamed from: e0, reason: collision with root package name */
    private int f46036e0 = 90;

    /* renamed from: f0, reason: collision with root package name */
    private int f46038f0 = -1;

    /* renamed from: g0, reason: collision with root package name */
    private boolean f46040g0 = true;

    /* renamed from: h0, reason: collision with root package name */
    private boolean f46042h0 = false;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f46044i0 = false;

    /* renamed from: j0, reason: collision with root package name */
    private int f46046j0 = 0;

    /* renamed from: k0, reason: collision with root package name */
    private boolean f46048k0 = false;

    /* renamed from: l0, reason: collision with root package name */
    private String f46050l0 = "";

    /* renamed from: m0, reason: collision with root package name */
    private int f46052m0 = 50;

    /* renamed from: n0, reason: collision with root package name */
    private int f46054n0 = 50;

    /* renamed from: o0, reason: collision with root package name */
    private int f46056o0 = 80;

    /* renamed from: p0, reason: collision with root package name */
    private int f46058p0 = 0;

    /* renamed from: q0, reason: collision with root package name */
    private int f46060q0 = 0;

    /* renamed from: r0, reason: collision with root package name */
    private boolean f46062r0 = false;

    /* renamed from: s0, reason: collision with root package name */
    private int f46064s0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    private int f46066t0 = 0;

    /* renamed from: u0, reason: collision with root package name */
    private boolean f46068u0 = false;

    /* renamed from: v0, reason: collision with root package name */
    private int f46070v0 = 0;

    /* renamed from: w0, reason: collision with root package name */
    private int f46072w0 = 0;

    /* renamed from: x0, reason: collision with root package name */
    private int f46074x0 = 0;

    /* renamed from: y0, reason: collision with root package name */
    private long f46076y0 = 216000000;

    /* renamed from: z0, reason: collision with root package name */
    private int f46078z0 = 0;

    /* renamed from: A0, reason: collision with root package name */
    private String f45983A0 = "";

    /* renamed from: B0, reason: collision with root package name */
    private long f45985B0 = 259200000;

    /* renamed from: C0, reason: collision with root package name */
    private int f45987C0 = 30;

    /* renamed from: D0, reason: collision with root package name */
    private int f45989D0 = 2;

    /* renamed from: E0, reason: collision with root package name */
    private int f45991E0 = 5;

    /* renamed from: F0, reason: collision with root package name */
    private int f45993F0 = 10;

    /* renamed from: G0, reason: collision with root package name */
    private int f45995G0 = 0;

    /* renamed from: H0, reason: collision with root package name */
    private boolean f45997H0 = false;

    /* renamed from: I0, reason: collision with root package name */
    private int f45999I0 = 0;

    /* renamed from: J0, reason: collision with root package name */
    private boolean f46001J0 = false;

    /* renamed from: K0, reason: collision with root package name */
    private long f46003K0 = 3000;

    /* renamed from: L0, reason: collision with root package name */
    private long f46005L0 = 3000;

    /* renamed from: M0, reason: collision with root package name */
    private long f46007M0 = 86400000;

    /* renamed from: N0, reason: collision with root package name */
    private boolean f46009N0 = false;

    /* renamed from: O0, reason: collision with root package name */
    private boolean f46011O0 = false;

    /* renamed from: P0, reason: collision with root package name */
    private boolean f46013P0 = false;

    /* renamed from: Q0, reason: collision with root package name */
    private boolean f46015Q0 = false;

    /* renamed from: R0, reason: collision with root package name */
    private boolean f46017R0 = false;

    /* renamed from: S0, reason: collision with root package name */
    private boolean f46019S0 = false;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        private boolean f46079a;

        /* renamed from: c, reason: collision with root package name */
        private String f46081c;

        /* renamed from: e, reason: collision with root package name */
        private boolean f46083e;

        /* renamed from: f, reason: collision with root package name */
        private int f46084f;

        /* renamed from: g, reason: collision with root package name */
        private int f46085g;

        /* renamed from: b, reason: collision with root package name */
        private int f46080b = 1;

        /* renamed from: d, reason: collision with root package name */
        private int f46082d = 5;

        public a() {
        }

        public int a() {
            return this.f46082d;
        }

        public int b() {
            return this.f46085g;
        }

        public int c() {
            return this.f46080b;
        }

        public int d() {
            return this.f46084f;
        }

        public String e() {
            return this.f46081c;
        }

        public boolean f() {
            return this.f46083e;
        }

        public boolean g() {
            return this.f46079a;
        }

        public boolean h() {
            int i2 = this.f46080b;
            return i2 >= 1 && i2 <= 3;
        }
    }

    public String A() {
        return this.f46073x;
    }

    public boolean A0() {
        return this.f46020T;
    }

    public String B() {
        return this.f46071w;
    }

    public boolean B0() {
        return this.f46015Q0;
    }

    public int C() {
        return this.f46043i;
    }

    public boolean C0() {
        return this.f46009N0;
    }

    public int D() {
        return this.f46037f;
    }

    public boolean D0() {
        return this.f46011O0;
    }

    public a E() {
        a aVar = this.f45982A;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.f45982A = aVar2;
        return aVar2;
    }

    public boolean E0() {
        a aVar = this.f45982A;
        if (aVar != null) {
            return aVar.g();
        }
        return false;
    }

    public void F(int i2) {
        int iRandom = (int) (Math.random() * i2);
        if (iRandom < 50) {
            this.f46063s = 0;
        } else {
            this.f46063s = iRandom;
        }
    }

    public boolean F0() {
        return this.f46006M;
    }

    public String G() {
        return this.f46050l0;
    }

    public boolean G0() {
        return this.f45997H0;
    }

    public int H() {
        return this.f46066t0;
    }

    public boolean H0() {
        return this.f46044i0;
    }

    public int I() {
        return this.f46045j;
    }

    public boolean I0() {
        return this.f46017R0;
    }

    public int J() {
        return this.f46030b0;
    }

    public boolean J0() {
        return this.f46027a;
    }

    public long K() {
        return this.f45985B0;
    }

    public boolean K0() {
        return this.f46053n;
    }

    public int L() {
        return this.f46021U;
    }

    public double L0() {
        return this.f46022V;
    }

    public int M() {
        return this.f46064s0;
    }

    public int N() {
        return this.f45995G0;
    }

    public String O() {
        return this.f46025Y;
    }

    public long P() {
        return this.f45987C0 * 1000;
    }

    public int Q() {
        return this.f46036e0;
    }

    public long R() {
        return this.f45993F0 * 1000;
    }

    public int S() {
        return this.f46023W;
    }

    public int T() {
        return this.f46069v;
    }

    public int U() {
        return this.f46004L;
    }

    public int V() {
        return this.f46046j0;
    }

    public double W() {
        return new BigDecimal(this.f46039g).setScale(3, 4).doubleValue();
    }

    public int X() {
        return this.f46061r;
    }

    public int Y() {
        return this.f46063s;
    }

    public int Z() {
        return this.f46000J;
    }

    public void a(double d2) {
        this.f46022V = d2;
    }

    public Rect a0() {
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        try {
            if (TextUtils.isEmpty(this.f45983A0)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(this.f45983A0);
            int iOptInt4 = jSONObject.optInt("l", -1);
            if (iOptInt4 < 0 || (iOptInt = jSONObject.optInt(bv.aI, -1)) < 0 || (iOptInt2 = jSONObject.optInt(t.f31269k, -1)) < 0 || (iOptInt3 = jSONObject.optInt("b", -1)) < 0) {
                this.f45983A0 = "";
                return null;
            }
            if (iOptInt4 + iOptInt2 >= 100 || iOptInt + iOptInt3 >= 100) {
                return null;
            }
            return new Rect(iOptInt4, iOptInt, iOptInt2, iOptInt3);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void b(double d2) {
        this.f46067u = d2;
    }

    public int b0() {
        return this.f46078z0;
    }

    public int c() {
        return this.f46055o;
    }

    public int c0() {
        return this.f46074x0;
    }

    public int d() {
        return this.f46059q;
    }

    public long d0() {
        return this.f46076y0;
    }

    public int e() {
        return this.f45984B;
    }

    public int e0() {
        return this.f46033d;
    }

    public int f() {
        return this.f45986C;
    }

    public int f0() {
        return this.f46035e;
    }

    public int g() {
        return this.f45992F;
    }

    public int g0() {
        return this.f46038f0;
    }

    public int h() {
        return this.f46056o0;
    }

    public int h0() {
        return this.f46018S;
    }

    public int i() {
        return this.f46054n0;
    }

    public double i0() {
        return new BigDecimal(this.f46041h).setScale(3, 4).doubleValue();
    }

    public int j() {
        return this.f46052m0;
    }

    public int j0() {
        return this.f46072w0;
    }

    public int k() {
        return this.f45998I;
    }

    public int k0() {
        return this.f46034d0;
    }

    public long l() {
        return this.f46005L0;
    }

    public boolean l0() {
        return this.f46026Z;
    }

    public long m() {
        return this.f46007M0;
    }

    public boolean m0() {
        return this.f46065t;
    }

    public long n() {
        return this.f46003K0;
    }

    public boolean n0() {
        return this.f46019S0;
    }

    public int o() {
        return this.f46070v0;
    }

    public boolean o0() {
        return this.f46040g0;
    }

    public int p() {
        return this.f46028a0;
    }

    public boolean p0() {
        return this.f46062r0;
    }

    public int q() {
        return this.f46016R;
    }

    public boolean q0() {
        return this.f46001J0;
    }

    public int r() {
        return this.f45999I0;
    }

    public boolean r0() {
        return this.f46008N;
    }

    public float s() {
        return (100 - this.f46014Q) / 100.0f;
    }

    public boolean s0() {
        return this.f46068u0;
    }

    public long t() {
        return this.f45991E0 * 1000;
    }

    public boolean t0() {
        return this.f46077z;
    }

    public long u() {
        return this.f45989D0 * 1000;
    }

    public boolean u0() {
        return this.f46075y;
    }

    public double v() {
        return this.f46067u;
    }

    public boolean v0() {
        return this.f46048k0;
    }

    public Rect w() {
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        try {
            if (TextUtils.isEmpty(this.f46047k)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(this.f46047k);
            int iOptInt4 = jSONObject.optInt("l", -1);
            if (iOptInt4 >= 0 && (iOptInt = jSONObject.optInt(bv.aI, -1)) >= 0 && (iOptInt2 = jSONObject.optInt(t.f31269k, -1)) >= 0 && (iOptInt3 = jSONObject.optInt("b", -1)) >= 0) {
                return new Rect(iOptInt4, iOptInt, iOptInt2, iOptInt3);
            }
            this.f46047k = "";
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean w0() {
        return this.f46013P0;
    }

    public long x() {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.f46051m) {
            return this.f46049l;
        }
        if (!TextUtils.isEmpty(this.f46047k)) {
            if (new JSONObject(this.f46047k).has("i")) {
                long jOptInt = r1.optInt("i", 0) * 60000;
                this.f46051m = true;
                this.f46049l = jOptInt;
                return jOptInt;
            }
        }
        return this.f46049l;
    }

    public boolean x0() {
        return this.f46042h0;
    }

    public int y() {
        return this.f46058p0;
    }

    public boolean y0() {
        return this.f45996H;
    }

    public int z() {
        return this.f46060q0;
    }

    public boolean z0() {
        return this.f46032c0;
    }

    public void A(int i2) {
        if (i2 > 6) {
            this.f46023W = 0;
        } else {
            this.f46023W = i2;
        }
    }

    public void B(int i2) {
        this.f46069v = i2;
    }

    public void C(int i2) {
        this.f46004L = i2;
    }

    public void D(int i2) {
        if (i2 > 2) {
            i2 = 0;
        }
        this.f46046j0 = i2;
    }

    public void E(int i2) {
        if (i2 < 150) {
            i2 = 150;
        }
        this.f46061r = i2;
    }

    public int[] F() {
        return this.f46002K;
    }

    public void G(int i2) {
        this.f46000J = i2;
    }

    public void H(int i2) {
        if (i2 > 2 || i2 < 0) {
            this.f46078z0 = 0;
        } else {
            this.f46078z0 = i2;
        }
    }

    public void I(int i2) {
        if (i2 > 1 || i2 < 0) {
            this.f46074x0 = 0;
        } else {
            this.f46074x0 = i2;
        }
    }

    public void J(int i2) {
        this.f46076y0 = i2 < 0 ? 0L : i2 * 60 * 1000;
    }

    public void K(int i2) {
        this.f46033d = i2;
    }

    public void L(int i2) {
        this.f46035e = i2;
    }

    public void M(int i2) {
        if (i2 > 30) {
            this.f46038f0 = 30;
        } else if (i2 < 3) {
            this.f46038f0 = 3;
        } else {
            this.f46038f0 = i2;
        }
    }

    public void N(int i2) {
        this.f46018S = i2;
    }

    public void O(int i2) {
        if (i2 > 1 || i2 < 0) {
            this.f46072w0 = 0;
        } else {
            this.f46072w0 = i2;
        }
    }

    public void P(int i2) {
        this.f46034d0 = i2;
    }

    public void a(int i2) {
        this.f46055o = i2;
    }

    public void b(int i2) {
        this.f46059q = i2;
    }

    public void c(double d2) {
        this.f46039g = d2;
    }

    public void d(double d2) {
        this.f46041h = d2;
    }

    public void e(int i2) {
        this.f45992F = i2;
    }

    public void f(int i2) {
        this.f45998I = i2;
    }

    public void g(int i2) {
        if (i2 > 1 || i2 < 0) {
            this.f46070v0 = 0;
        } else {
            this.f46070v0 = i2;
        }
    }

    public void h(int i2) {
        this.f46028a0 = i2;
    }

    public void i(int i2) {
        this.f46016R = i2;
    }

    public void j(int i2) {
        if (i2 > 2 || i2 < 0) {
            this.f45999I0 = 0;
        } else {
            this.f45999I0 = i2;
        }
    }

    public void k(int i2) {
        this.f46010O = i2;
    }

    public void l(int i2) {
        this.f46012P = i2;
    }

    public void m(int i2) {
        if (i2 > 100 || i2 < 0) {
            i2 = 50;
        }
        this.f46014Q = i2;
    }

    public void n(int i2) {
        if (i2 > 1) {
            this.f46058p0 = 0;
        } else {
            this.f46058p0 = i2;
        }
    }

    public void o(int i2) {
        this.f46060q0 = i2;
    }

    public void p(int i2) {
        this.f46043i = i2;
    }

    public void q(int i2) {
        this.f46037f = i2;
    }

    public void r(int i2) {
        if (i2 > 1 || i2 < 0) {
            this.f46066t0 = 0;
        } else {
            this.f46066t0 = i2;
        }
    }

    public void s(int i2) {
        this.f46045j = i2;
    }

    public void t(int i2) {
        this.f46030b0 = i2;
    }

    public void u(int i2) {
        this.f45985B0 = i2 < 0 ? 0L : i2 * 60 * 1000;
    }

    public void v(int i2) {
        this.f46021U = i2;
    }

    public void w(int i2) {
        if (i2 < 0) {
            this.f46064s0 = 0;
        } else {
            this.f46064s0 = i2;
        }
    }

    public void x(int i2) {
        this.f45995G0 = i2;
    }

    public void y(int i2) {
        if (i2 < 0) {
            this.f46024X = 0;
        } else {
            this.f46024X = i2;
        }
    }

    @Deprecated
    public void z(int i2) {
        this.f46036e0 = 90;
    }

    public void A(boolean z2) {
        this.f46044i0 = z2;
    }

    public void B(boolean z2) {
        this.f46017R0 = z2;
    }

    public void C(boolean z2) {
        this.f46029b = z2;
    }

    public void D(boolean z2) {
        this.f46027a = z2;
    }

    public void E(boolean z2) {
        this.f46053n = z2;
    }

    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("ver")) {
                this.f46052m0 = jSONObject.optInt("ver", 50);
            }
            if (jSONObject.has("hor")) {
                this.f46054n0 = jSONObject.optInt("hor", 50);
            }
            if (jSONObject.has("height")) {
                int iOptInt = jSONObject.optInt("height", 80);
                this.f46056o0 = iOptInt;
                if (iOptInt <= 0) {
                    this.f46056o0 = 80;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("rd")) {
                long jOptInt = jSONObject.optInt("rd", 3);
                this.f46003K0 = jOptInt;
                if (jOptInt < 0) {
                    this.f46003K0 = 0L;
                } else {
                    this.f46003K0 = jOptInt * 1000;
                }
            }
            if (jSONObject.has("of")) {
                long jOptInt2 = jSONObject.optInt("of", 3);
                this.f46005L0 = jOptInt2;
                if (jOptInt2 < 0) {
                    this.f46005L0 = 0L;
                } else {
                    this.f46005L0 = (long) (jOptInt2 * Math.random() * 1000.0d);
                }
            }
            if (jSONObject.has("inr")) {
                long jOptInt3 = jSONObject.optInt("inr", 1440);
                this.f46007M0 = jOptInt3;
                if (jOptInt3 < 0) {
                    this.f46007M0 = 0L;
                } else {
                    this.f46007M0 = jOptInt3 * 60000;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c(int i2) {
        this.f45984B = i2;
    }

    public void d(int i2) {
        this.f45986C = i2;
    }

    public void e(String str) {
        this.f46071w = str;
    }

    public void f(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f45982A = new a();
            if (jSONObject.has(cl.f49062q)) {
                this.f45982A.f46079a = jSONObject.optBoolean(cl.f49062q);
            }
            if (jSONObject.has("style")) {
                this.f45982A.f46080b = jSONObject.optInt("style");
            }
            if (jSONObject.has("url")) {
                this.f45982A.f46081c = jSONObject.optString("url");
            }
            if (jSONObject.has("duration")) {
                this.f45982A.f46082d = jSONObject.optInt("duration");
            }
            if (jSONObject.has("clickable")) {
                this.f45982A.f46083e = jSONObject.optBoolean("clickable");
            }
            if (jSONObject.has("times")) {
                this.f45982A.f46084f = jSONObject.optInt("times");
            }
            if (jSONObject.has("interval")) {
                this.f45982A.f46085g = jSONObject.optInt("interval");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void g(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length > 0) {
                int[] iArr = new int[strArrSplit.length];
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    iArr[i2] = Integer.parseInt(strArrSplit[i2]);
                }
                this.f46002K = iArr;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void h(String str) {
        this.f46050l0 = str;
    }

    public void i(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("r_m_t")) {
                int iOptInt = jSONObject.optInt("r_m_t", 30);
                this.f45987C0 = iOptInt;
                if (iOptInt < 5) {
                    this.f45987C0 = 5;
                }
            }
            if (jSONObject.has("g_s_t")) {
                this.f45989D0 = jSONObject.optInt("g_s_t", 2);
            }
            if (jSONObject.has("g_t")) {
                this.f45991E0 = jSONObject.optInt("g_t", 5);
            }
            if (jSONObject.has("t_t")) {
                int iOptInt2 = jSONObject.optInt("t_t", 10);
                this.f45993F0 = iOptInt2;
                if (iOptInt2 < 1) {
                    this.f45993F0 = 1;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void j(String str) {
        this.f46025Y = str;
    }

    public void k(String str) {
        this.f45983A0 = str;
    }

    public void l(boolean z2) {
        this.f46048k0 = z2;
    }

    public void m(boolean z2) {
        this.f46013P0 = z2;
    }

    public void n(boolean z2) {
        this.f45994G = z2;
    }

    public void o(boolean z2) {
        this.f46042h0 = z2;
    }

    public void p(boolean z2) {
        this.f45996H = z2;
    }

    public void q(boolean z2) {
        this.f46032c0 = z2;
    }

    public void r(boolean z2) {
        this.f46020T = z2;
    }

    public void s(boolean z2) {
        this.f46015Q0 = z2;
    }

    public void t(boolean z2) {
        this.f46057p = z2;
    }

    public void u(boolean z2) {
        this.f46009N0 = z2;
    }

    public void v(boolean z2) {
        this.f46011O0 = z2;
    }

    public void w(boolean z2) {
        this.f46031c = z2;
    }

    public void x(boolean z2) {
        this.f46006M = z2;
    }

    public void y(boolean z2) {
        this.f45990E = z2;
    }

    public void z(boolean z2) {
        this.f45997H0 = z2;
    }

    public void a(boolean z2) {
        this.f45988D = z2;
    }

    public void b(boolean z2) {
        this.f46026Z = z2;
    }

    public void c(String str) {
        this.f46047k = str;
    }

    public void d(String str) {
        this.f46073x = str;
    }

    public void e(boolean z2) {
        this.f46040g0 = z2;
    }

    public void f(boolean z2) {
        this.f46062r0 = z2;
    }

    public void g(boolean z2) {
        this.f46001J0 = z2;
    }

    public void h(boolean z2) {
        this.f46008N = z2;
    }

    public void i(boolean z2) {
        this.f46068u0 = z2;
    }

    public void j(boolean z2) {
        this.f46077z = z2;
    }

    public void k(boolean z2) {
        this.f46075y = z2;
    }

    public boolean a() {
        return this.f45990E;
    }

    public boolean b() {
        return this.f45988D;
    }

    public void c(boolean z2) {
        this.f46065t = z2;
    }

    public void d(boolean z2) {
        this.f46019S0 = z2;
    }
}

package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.AnyThinkBaseAdapter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class by implements Comparable<by> {

    /* renamed from: u, reason: collision with root package name */
    public static final int f4070u = 1;

    /* renamed from: v, reason: collision with root package name */
    public static final int f4071v = 2;

    /* renamed from: w, reason: collision with root package name */
    public static final int f4072w = 3;

    /* renamed from: x, reason: collision with root package name */
    public static final int f4073x = 1;

    /* renamed from: y, reason: collision with root package name */
    public static final int f4074y = 1;

    /* renamed from: A, reason: collision with root package name */
    double f4075A;

    /* renamed from: B, reason: collision with root package name */
    public String f4076B;

    /* renamed from: C, reason: collision with root package name */
    public String f4077C;

    /* renamed from: D, reason: collision with root package name */
    private int f4078D;

    /* renamed from: E, reason: collision with root package name */
    private String f4079E;

    /* renamed from: F, reason: collision with root package name */
    private int f4080F;

    /* renamed from: G, reason: collision with root package name */
    private int f4081G;

    /* renamed from: H, reason: collision with root package name */
    private String f4082H;

    /* renamed from: I, reason: collision with root package name */
    private Map<String, Object> f4083I;

    /* renamed from: J, reason: collision with root package name */
    private String f4084J;

    /* renamed from: K, reason: collision with root package name */
    private String f4085K;

    /* renamed from: L, reason: collision with root package name */
    private String f4086L;

    /* renamed from: M, reason: collision with root package name */
    private long f4087M;

    /* renamed from: N, reason: collision with root package name */
    private String f4088N;

    /* renamed from: O, reason: collision with root package name */
    private int f4089O;

    /* renamed from: P, reason: collision with root package name */
    private int f4090P;

    /* renamed from: Q, reason: collision with root package name */
    private double f4091Q;

    /* renamed from: R, reason: collision with root package name */
    private int f4092R;

    /* renamed from: S, reason: collision with root package name */
    private String f4093S;

    /* renamed from: T, reason: collision with root package name */
    private String f4094T;

    /* renamed from: U, reason: collision with root package name */
    private int f4095U;

    /* renamed from: V, reason: collision with root package name */
    private long f4096V;

    /* renamed from: W, reason: collision with root package name */
    private long f4097W;

    /* renamed from: X, reason: collision with root package name */
    private long f4098X;

    /* renamed from: Y, reason: collision with root package name */
    private long f4099Y;

    /* renamed from: Z, reason: collision with root package name */
    private int f4100Z;

    /* renamed from: a, reason: collision with root package name */
    int f4101a;
    private l aA;
    private long aB;
    private long aC;
    private long aD;
    private String aE;
    private int aG;
    private int[] aJ;
    private JSONArray aM;
    private int aN;
    private int aP;
    private int aQ;
    private int aR;
    private int aS;
    private double aT;
    private double aU;
    private JSONObject aV;
    private int aW;
    private int aX;
    private Map<String, Object> aY;
    private aq aZ;
    private String aa;
    private long ab;
    private long ac;
    private long ad;
    private long ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private String aj;
    private long ak;
    private long al;
    private double am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private ad at;
    private int au;
    private int av;
    private String aw;
    private int ax;
    private int ay;
    private long az;
    private int bA;
    private long bB;
    private int bC;
    private int bD;
    private int bE;
    private int bF;
    private long bG;
    private AnyThinkBaseAdapter bH;
    private ad bI;
    private long bJ;
    private String bL;
    private double bM;
    private int bb;
    private long bc;
    private aa bd;
    private int be;
    private long bf;
    private int bg;
    private int bh;
    private String bi;
    private JSONArray bj;
    private JSONArray bk;
    private JSONArray bl;
    private int bm;
    private JSONArray bn;
    private JSONArray bo;
    private int bp;
    private long bq;
    private double br;
    private long bs;
    private int bt;
    private int bu;
    private int bv;
    private String bw;
    private int bx;
    private int by;
    private int bz;

    /* renamed from: c, reason: collision with root package name */
    int f4103c;

    /* renamed from: d, reason: collision with root package name */
    int f4104d;

    /* renamed from: e, reason: collision with root package name */
    String f4105e;

    /* renamed from: f, reason: collision with root package name */
    int f4106f;

    /* renamed from: g, reason: collision with root package name */
    int f4107g;

    /* renamed from: h, reason: collision with root package name */
    double f4108h;

    /* renamed from: i, reason: collision with root package name */
    int f4109i;

    /* renamed from: j, reason: collision with root package name */
    double f4110j;

    /* renamed from: k, reason: collision with root package name */
    String f4111k;

    /* renamed from: l, reason: collision with root package name */
    protected int f4112l;

    /* renamed from: m, reason: collision with root package name */
    int f4113m;

    /* renamed from: n, reason: collision with root package name */
    int f4114n;

    /* renamed from: o, reason: collision with root package name */
    int f4115o;

    /* renamed from: s, reason: collision with root package name */
    String f4119s;

    /* renamed from: t, reason: collision with root package name */
    long f4120t;

    /* renamed from: z, reason: collision with root package name */
    ATAdRequest f4121z;
    private int aF = 1;

    /* renamed from: b, reason: collision with root package name */
    int f4102b = 0;
    private int aH = -1;
    private ATAdConst.CURRENCY aI = ATAdConst.CURRENCY.USD;

    /* renamed from: p, reason: collision with root package name */
    int f4116p = 2;

    /* renamed from: q, reason: collision with root package name */
    boolean f4117q = false;

    /* renamed from: r, reason: collision with root package name */
    double f4118r = -1.0d;
    private int aK = 1;
    private int aL = 1;
    private int aO = 1;
    private int ba = 2;
    private int bK = 0;

    public by(int i2) {
        this.ay = i2;
    }

    private void aj(int i2) {
        this.ah = i2;
    }

    private void ak(int i2) {
        this.au = i2;
    }

    private ATAdRequest bL() {
        return this.f4121z;
    }

    private long bM() {
        return com.anythink.core.common.v.ai.c(this);
    }

    private long bN() {
        return this.ab;
    }

    private int bO() {
        return this.ah;
    }

    private int bP() {
        return this.an;
    }

    private int bQ() {
        return this.aG;
    }

    private String bR() {
        return this.f4105e;
    }

    private boolean bS() {
        return this.aL == 1;
    }

    private boolean bT() {
        return com.anythink.core.common.v.o.d(this.ay);
    }

    private String bU() {
        return this.bi;
    }

    private String bV() {
        return this.f4076B;
    }

    private String bW() {
        return this.f4077C;
    }

    public final long A() {
        return this.ae;
    }

    public final int B() {
        return this.f4095U;
    }

    public final long C() {
        return this.f4098X;
    }

    public final long D() {
        return this.f4099Y;
    }

    public final int E() {
        return this.f4100Z;
    }

    public final long F() {
        return this.f4087M;
    }

    public final String G() {
        return this.aa;
    }

    public final String H() {
        return this.f4088N;
    }

    public final int I() {
        return this.f4089O;
    }

    public final int J() {
        return this.f4090P;
    }

    public final double K() {
        return this.f4091Q;
    }

    public final String L() {
        return this.f4093S;
    }

    public final String M() {
        return this.f4094T;
    }

    public final long N() {
        return this.ac;
    }

    public final long O() {
        return this.ad;
    }

    public final int P() {
        return this.af;
    }

    public final int Q() {
        return this.ag;
    }

    public final int R() {
        return this.ai;
    }

    public final String S() {
        return this.aj;
    }

    public final long T() {
        return this.ak;
    }

    public final long U() {
        return this.al;
    }

    public final double V() {
        return this.am;
    }

    public final int W() {
        return this.ao;
    }

    public final boolean X() {
        return this.ap == 2;
    }

    public final ad Y() {
        return this.at;
    }

    public final ad Z() {
        return this.bI;
    }

    public final long a() {
        return this.aB;
    }

    public final int aA() {
        return this.f4109i;
    }

    public final double aB() {
        return this.f4110j;
    }

    public final String aC() {
        return this.f4111k;
    }

    public final int aD() {
        return this.f4112l;
    }

    public final int aE() {
        return this.f4113m;
    }

    public final int aF() {
        return this.f4114n;
    }

    public final int aG() {
        int i2 = this.f4115o;
        if (i2 <= 0) {
            return 1;
        }
        return i2;
    }

    public final int aH() {
        return this.f4116p;
    }

    public final boolean aI() {
        return this.f4117q;
    }

    public final void aJ() {
        this.f4117q = true;
    }

    public final double aK() {
        return this.f4118r;
    }

    public final String aL() {
        return this.f4119s;
    }

    public final long aM() {
        return this.f4120t;
    }

    public final int[] aN() {
        return this.aJ;
    }

    public final int aO() {
        return this.aK;
    }

    public final int aP() {
        return this.aL;
    }

    public final JSONArray aQ() {
        return this.aM;
    }

    public final int aR() {
        return this.aN;
    }

    public final int aS() {
        return this.aO;
    }

    public final int aT() {
        return this.aP;
    }

    public final int aU() {
        return this.aQ;
    }

    public final int aV() {
        return this.aR;
    }

    public final int aW() {
        return this.aS;
    }

    public final double aX() {
        return this.aT;
    }

    public final double aY() {
        return this.aU;
    }

    public final JSONObject aZ() {
        return this.aV;
    }

    public final int aa() {
        return this.au;
    }

    public final int ab() {
        return this.av;
    }

    public final void ac() {
        this.av = 1;
    }

    public final String ad() {
        return this.aw;
    }

    public final long ae() {
        return this.az;
    }

    public final String af() {
        return this.aE;
    }

    public final int ag() {
        int i2 = this.f4102b;
        if (i2 <= 0) {
            return 1;
        }
        return i2;
    }

    public final int ah() {
        return this.f4103c;
    }

    public final int ai() {
        return this.f4104d;
    }

    public final int al() {
        int i2;
        ad adVar = this.at;
        return (adVar == null || (i2 = adVar.f3681n) == 0) ? this.f4106f : i2;
    }

    public final int am() {
        return this.bt;
    }

    public final int an() {
        return this.bu;
    }

    public final int ao() {
        return this.bv;
    }

    public final String ap() {
        return this.bw;
    }

    public final int aq() {
        return this.bx;
    }

    public final int ar() {
        return this.by;
    }

    public final boolean as() {
        int i2 = this.f4078D;
        return i2 == 66 || i2 == 67;
    }

    public final boolean at() {
        if (as()) {
            return true;
        }
        return this.bE == 2 && com.anythink.core.common.v.o.c(this.ay);
    }

    public final boolean au() {
        return !as() && this.bE == 2 && com.anythink.core.common.v.o.c(this.ay);
    }

    public final boolean av() {
        return this.f4078D == 1 && this.as == 1;
    }

    public final int aw() {
        return this.ax;
    }

    public final ATAdConst.CURRENCY ax() {
        return this.aI;
    }

    public final int ay() {
        return this.f4107g;
    }

    public final double az() {
        return this.f4108h;
    }

    public final long b() {
        return this.aC;
    }

    public final int bA() {
        return this.aF;
    }

    public final String bB() {
        ad adVar = this.at;
        return adVar != null ? adVar.w() : "";
    }

    public final String bC() {
        ad adVar = this.at;
        return adVar != null ? adVar.getOriginRequestId() : "";
    }

    public final long bD() {
        return this.bJ;
    }

    public final int bE() {
        return this.bK;
    }

    public final double bF() {
        return this.bM;
    }

    public final String bG() {
        return this.bL;
    }

    public final l bH() {
        return this.aA;
    }

    public final int bI() {
        return this.bE;
    }

    public final boolean bJ() {
        return this.bF == 1;
    }

    public final long bK() {
        return this.bG;
    }

    public final int ba() {
        return this.aW;
    }

    public final int bb() {
        return this.aX;
    }

    public final boolean bc() {
        return com.anythink.core.common.v.o.b(this.ay);
    }

    public final boolean bd() {
        return com.anythink.core.common.v.o.c(this.ay);
    }

    public final aq be() {
        return this.aZ;
    }

    public final Map<String, Object> bf() {
        return this.aY;
    }

    public final int bg() {
        return this.ba;
    }

    public final int bh() {
        return this.bb;
    }

    public final long bi() {
        return this.bc;
    }

    public final aa bj() {
        return this.bd;
    }

    public final boolean bk() {
        if (this.be != 2 || this.bf <= 0 || this.bg != 4) {
            return false;
        }
        int i2 = this.aH;
        return i2 == -1 || i2 == 4;
    }

    public final int bl() {
        return this.be;
    }

    public final long bm() {
        return this.bf;
    }

    public final int bn() {
        return this.bg;
    }

    public final int bo() {
        return this.bh;
    }

    public final JSONArray bp() {
        return this.bk;
    }

    public final JSONArray bq() {
        return this.bl;
    }

    public final int br() {
        return this.bm;
    }

    public final JSONArray bs() {
        return this.bn;
    }

    public final JSONArray bt() {
        return this.bo;
    }

    public final JSONArray bu() {
        return this.bj;
    }

    public final int bv() {
        return this.bp;
    }

    public final long bw() {
        return this.bq;
    }

    public final double bx() {
        return this.br;
    }

    public final long by() {
        return this.bs;
    }

    public final boolean bz() {
        ad adVar = this.at;
        if (adVar != null) {
            return adVar.r();
        }
        return false;
    }

    public final long c() {
        return this.aD;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(by byVar) {
        return com.anythink.core.common.v.k.a(this, byVar);
    }

    public final AnyThinkBaseAdapter d() {
        return this.bH;
    }

    public final int e() {
        return this.bD;
    }

    public final int f() {
        return this.bA;
    }

    public final int g() {
        return this.bz;
    }

    public final long h() {
        return this.bB;
    }

    public final int i() {
        return this.bC;
    }

    public final double j() {
        return this.f4075A;
    }

    public final int k() {
        return this.ay;
    }

    public final int l() {
        return this.ar;
    }

    public final void m() {
        this.ar = -1;
    }

    public final int n() {
        return this.f4078D;
    }

    public final String o() {
        return this.f4079E;
    }

    public final int p() {
        return this.f4080F;
    }

    public final int q() {
        return this.f4081G;
    }

    public final String r() {
        return this.f4082H;
    }

    public final Map<String, Object> s() {
        return this.f4083I;
    }

    public final String t() {
        return this.f4084J;
    }

    public String toString() {
        return super.toString();
    }

    public final String u() {
        return !TextUtils.isEmpty(this.f4085K) ? this.f4085K : this.f4084J;
    }

    public final int v() {
        return this.f4092R;
    }

    public final boolean w() {
        return this.f4092R == 1;
    }

    public final long x() {
        return this.f4097W;
    }

    @Deprecated
    public final int y() {
        return this.as;
    }

    public final int z() {
        return this.aq;
    }

    public final void A(int i2) {
        this.f4106f = i2;
    }

    public final void B(int i2) {
        this.bt = i2;
    }

    public final void C(int i2) {
        this.bu = i2;
    }

    public final void D(int i2) {
        this.bv = i2;
    }

    public final void E(int i2) {
        this.bx = i2;
    }

    public final void F(int i2) {
        this.by = i2;
    }

    public final void G(int i2) {
        this.ax = i2;
    }

    public final void H(int i2) {
        this.f4107g = i2;
    }

    public final void I(int i2) {
        this.f4109i = i2;
    }

    public final void J(int i2) {
        this.f4112l = i2;
    }

    public final void K(int i2) {
        this.f4113m = i2;
    }

    public final void L(int i2) {
        this.f4114n = i2;
    }

    public final void M(int i2) {
        this.f4115o = i2;
    }

    public final void N(int i2) {
        this.f4116p = i2;
    }

    public final void O(int i2) {
        this.aK = i2;
    }

    public final void P(int i2) {
        this.aL = i2;
    }

    public final void Q(int i2) {
        this.aN = i2;
    }

    public final void R(int i2) {
        this.aO = i2;
    }

    public final void S(int i2) {
        this.aP = i2;
    }

    public final void T(int i2) {
        this.aQ = i2;
    }

    public final void U(int i2) {
        this.aR = i2;
    }

    public final void V(int i2) {
        this.aS = i2;
    }

    public final void W(int i2) {
        this.aW = i2;
    }

    public final void X(int i2) {
        this.aX = i2;
    }

    public final void Y(int i2) {
        this.ba = i2;
    }

    public final void Z(int i2) {
        this.bb = i2;
    }

    public final void a(long j2) {
        this.aB = j2;
    }

    public final void aa(int i2) {
        this.be = i2;
    }

    public final void ab(int i2) {
        this.bg = i2;
    }

    public final void ac(int i2) {
        this.bh = i2;
    }

    public final void ad(int i2) {
        this.bm = i2;
    }

    public final void ae(int i2) {
        this.bp = i2;
    }

    public final void af(int i2) {
        this.aF = i2;
    }

    public final void ag(int i2) {
        this.bK = i2;
    }

    public final void ah(int i2) {
        this.bE = i2;
    }

    public final void ai(int i2) {
        this.bF = i2;
    }

    public final int aj() {
        return this.f4101a;
    }

    public final int ak() {
        return this.aH;
    }

    public final void b(long j2) {
        this.aC = j2;
    }

    public final void c(long j2) {
        this.aD = j2;
    }

    public final void d(long j2) {
        this.bB = j2;
    }

    public final void e(int i2) {
        this.f4078D = i2;
    }

    public final void f(int i2) {
        this.f4080F = i2;
    }

    public final void g(int i2) {
        this.f4081G = i2;
    }

    public final void h(int i2) {
        this.f4092R = i2;
    }

    public final void i(int i2) {
        this.as = i2;
    }

    public final void j(int i2) {
        this.aq = i2;
    }

    public final void k(int i2) {
        this.f4095U = i2;
    }

    public final void l(int i2) {
        this.f4100Z = i2;
    }

    public final void m(int i2) {
        this.f4089O = i2;
    }

    public final void n(int i2) {
        this.f4090P = i2;
    }

    public final void o(int i2) {
        this.af = i2;
    }

    public final void p(int i2) {
        this.ag = i2;
    }

    public final void q(int i2) {
        this.ai = i2;
    }

    public final void r(int i2) {
        this.an = i2;
    }

    public final void s(int i2) {
        this.ao = i2;
    }

    public final void t(int i2) {
        this.ap = i2;
    }

    public final void v(int i2) {
        this.f4102b = i2;
    }

    public final void w(int i2) {
        this.f4103c = i2;
    }

    public final void x(int i2) {
        this.f4104d = i2;
    }

    public final void y(int i2) {
        this.f4101a = i2;
    }

    public final void z(int i2) {
        this.aH = i2;
    }

    private void r(String str) {
        this.aw = str;
    }

    public final void a(AnyThinkBaseAdapter anyThinkBaseAdapter) {
        this.bH = anyThinkBaseAdapter;
    }

    public final void b(int i2) {
        this.bA = i2;
    }

    public final void c(int i2) {
        this.bz = i2;
    }

    public final void d(int i2) {
        this.bC = i2;
    }

    public final void e(String str) {
        this.f4086L = str;
    }

    public final void f(long j2) {
        this.ae = j2;
    }

    public final void g(long j2) {
        this.f4098X = j2;
    }

    public final void h(long j2) {
        this.f4099Y = j2;
    }

    public final void i(long j2) {
        this.f4087M = j2;
    }

    public final void j(long j2) {
        this.ab = j2;
    }

    public final void k(long j2) {
        this.ac = j2;
    }

    public final void l(long j2) {
        this.ad = j2;
    }

    public final void m(long j2) {
        this.ak = j2;
    }

    public final void n(long j2) {
        this.al = j2;
    }

    public final void o(long j2) {
        this.az = j2;
    }

    public final void p(long j2) {
        this.f4120t = j2;
    }

    public final void q(long j2) {
        this.bc = j2;
    }

    public final void s(long j2) {
        this.bq = j2;
    }

    public final void t(long j2) {
        this.bs = j2;
    }

    public final void v(long j2) {
        this.bG = j2;
    }

    private void s(String str) {
        this.f4076B = str;
    }

    private void t(String str) {
        this.f4077C = str;
    }

    public final void a(int i2) {
        this.bD = i2;
    }

    public final void b(String str) {
        this.f4082H = str;
    }

    public final void c(String str) {
        this.f4084J = str;
    }

    public final void d(String str) {
        this.f4085K = str;
    }

    public final void e(long j2) {
        this.f4097W = j2;
    }

    public final void f(String str) {
        this.aa = str;
    }

    public final void g(String str) {
        this.f4088N = str;
    }

    public final void h(String str) {
        this.f4093S = str;
    }

    public final void i(String str) {
        this.f4094T = str;
    }

    public final void j(String str) {
        this.aj = str;
    }

    public final void k(String str) {
        this.aE = str;
    }

    public final void l(String str) {
        this.f4105e = str;
    }

    public final void m(String str) {
        this.bw = str;
    }

    public final void n(String str) {
        this.f4111k = str;
    }

    public final void o(String str) {
        this.f4119s = str;
    }

    public final void p(String str) {
        this.bi = str;
    }

    public final void q(String str) {
        this.bL = str;
    }

    public final void r(long j2) {
        this.bf = j2;
    }

    public final void u(int i2) {
        this.aG = i2;
    }

    public final void a(double d2) {
        this.f4075A = d2;
    }

    public final void b(double d2) {
        this.f4091Q = d2;
    }

    public final void c(double d2) {
        this.am = d2;
    }

    public final void d(double d2) {
        this.f4108h = d2;
    }

    public final void e(double d2) {
        this.f4110j = d2;
    }

    public final void f(double d2) {
        this.f4118r = d2;
    }

    public final void g(double d2) {
        this.aT = d2;
    }

    public final void h(double d2) {
        this.aU = d2;
    }

    public final void i(double d2) {
        this.br = d2;
    }

    public final void j(double d2) {
        this.bM = d2;
    }

    public final void u(long j2) {
        this.bJ = j2;
    }

    private void b(ad adVar) {
        this.at = adVar;
    }

    private void c(ad adVar) {
        this.f4091Q = adVar.getPrice();
        this.f4110j = adVar.getSortPrice();
        this.f4075A = adVar.getRmbPrice();
        this.aI = adVar.getCurrency();
        if (this.aZ != null) {
            String strL = adVar.l();
            int iN = adVar.n();
            String strM = adVar.m();
            this.aZ.b(strL);
            this.aZ.d(strM);
            this.aZ.a(iN);
        }
    }

    public final void a(ATAdRequest aTAdRequest) {
        this.f4121z = aTAdRequest;
    }

    public final void d(JSONArray jSONArray) {
        this.bn = jSONArray;
    }

    public final void e(JSONArray jSONArray) {
        this.bo = jSONArray;
    }

    public final void f(JSONArray jSONArray) {
        this.bj = jSONArray;
    }

    public final void a(String str) {
        this.f4079E = str;
    }

    public final void b(JSONArray jSONArray) {
        this.bk = jSONArray;
    }

    public final void a(Map<String, Object> map) {
        this.f4083I = map;
    }

    public final void a(ad adVar) {
        this.bI = adVar;
    }

    private int a(by byVar) {
        return com.anythink.core.common.v.k.a(this, byVar);
    }

    public final synchronized void a(by byVar, int i2, int i3, int i4) {
        try {
            if (byVar.aa.equals(this.aa)) {
                this.f4091Q = byVar.f4091Q;
                this.f4110j = byVar.f4110j;
                this.f4075A = byVar.f4075A;
                this.aI = byVar.aI;
                this.f4095U = i3;
                this.f4093S = byVar.f4093S;
                this.aw = byVar.aw;
                this.ar = 0;
                if (i2 == 0) {
                    this.au = byVar.au;
                } else {
                    this.au = i2;
                }
                this.f4094T = byVar.f4094T;
                this.at = byVar.at;
                this.av = i4;
                this.aZ = byVar.aZ;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(JSONArray jSONArray) {
        this.bl = jSONArray;
    }

    public final void a(ATAdConst.CURRENCY currency) {
        this.aI = currency;
    }

    public final void a(int[] iArr) {
        this.aJ = iArr;
    }

    public final void a(JSONArray jSONArray) {
        this.aM = jSONArray;
    }

    public final void a(JSONObject jSONObject) {
        this.aV = jSONObject;
    }

    public final void a(aq aqVar) {
        this.aZ = aqVar;
    }

    public final void a(BaseAd baseAd) {
        int nativeAdInteractionType;
        String str;
        String appPackageName;
        int i2 = 0;
        String descriptionText = "";
        if (baseAd == null) {
            nativeAdInteractionType = 0;
            str = "";
            appPackageName = str;
        } else {
            String title = baseAd.getTitle();
            nativeAdInteractionType = baseAd.getNativeAdInteractionType();
            ATAdAppInfo adAppInfo = baseAd.getAdAppInfo();
            if (adAppInfo == null) {
                appPackageName = "";
            } else {
                descriptionText = adAppInfo.getPublisher();
                appPackageName = adAppInfo.getAppPackageName();
            }
            if (TextUtils.isEmpty(descriptionText)) {
                descriptionText = baseAd.getDescriptionText();
            }
            if (TextUtils.equals(baseAd.getAdType(), "1")) {
                i2 = baseAd.getVideoWidth() > baseAd.getVideoHeight() ? 3 : 4;
            } else if (TextUtils.equals(baseAd.getAdType(), "2")) {
                if (baseAd.getImageUrlList() != null && baseAd.getImageUrlList().size() > 1) {
                    i2 = 5;
                } else if (baseAd.getMainImageWidth() > baseAd.getMainImageHeight()) {
                    str = descriptionText;
                    descriptionText = title;
                    i2 = 1;
                } else {
                    i2 = 2;
                }
            }
            str = descriptionText;
            descriptionText = title;
        }
        HashMap map = new HashMap();
        this.aY = map;
        map.put("native_material_type", Integer.valueOf(i2));
        this.aY.put("native_material_tittle", descriptionText);
        this.aY.put("native_material_publisher_name", str);
        this.aY.put("native_material_package_name", appPackageName);
        this.aY.put("native_material_interaction_type", Integer.valueOf(nativeAdInteractionType));
    }

    public final void a(aa aaVar) {
        this.bd = aaVar;
    }

    public final void a(l lVar) {
        this.aA = lVar;
    }

    public final void a(ad adVar, int i2, int i3, int i4) {
        this.f4095U = i3;
        this.f4091Q = adVar.getPrice();
        this.f4110j = adVar.getSortPrice();
        this.f4075A = adVar.getRmbPrice();
        this.aI = adVar.getCurrency();
        this.f4093S = adVar.token;
        this.aw = adVar.f3680m;
        this.ar = 0;
        this.au = i2;
        this.at = adVar;
        this.av = i4;
        if (i4 == 1) {
            this.f4094T = "";
        }
        if (this.aZ != null) {
            String strL = adVar.l();
            int iN = adVar.n();
            String strM = adVar.m();
            this.aZ.b(strL);
            this.aZ.d(strM);
            this.aZ.a(iN);
        }
    }
}

package com.anythink.core.common.h;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.core.common.h.y;
import java.io.Serializable;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public abstract class w<T extends y> implements Serializable {

    /* renamed from: B, reason: collision with root package name */
    public static final int f4426B = 1;

    /* renamed from: C, reason: collision with root package name */
    public static final int f4427C = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f4428f = 1;

    /* renamed from: g, reason: collision with root package name */
    public static final int f4429g = 2;

    /* renamed from: h, reason: collision with root package name */
    public static final int f4430h = 1;

    /* renamed from: i, reason: collision with root package name */
    public static final int f4431i = 2;

    /* renamed from: j, reason: collision with root package name */
    public static final int f4432j = 3;

    /* renamed from: k, reason: collision with root package name */
    public static final int f4433k = 4;

    /* renamed from: l, reason: collision with root package name */
    public static final int f4434l = 10;

    /* renamed from: A, reason: collision with root package name */
    protected int f4435A;

    /* renamed from: D, reason: collision with root package name */
    protected int f4436D;

    /* renamed from: E, reason: collision with root package name */
    protected int f4437E;

    /* renamed from: F, reason: collision with root package name */
    protected String f4438F;

    /* renamed from: G, reason: collision with root package name */
    protected int f4439G;

    /* renamed from: H, reason: collision with root package name */
    protected String f4440H;

    /* renamed from: I, reason: collision with root package name */
    protected String f4441I;

    /* renamed from: J, reason: collision with root package name */
    protected String f4442J;

    /* renamed from: K, reason: collision with root package name */
    protected String f4443K;

    /* renamed from: L, reason: collision with root package name */
    protected String f4444L;

    /* renamed from: M, reason: collision with root package name */
    protected String f4445M;

    /* renamed from: N, reason: collision with root package name */
    protected String f4446N;

    /* renamed from: O, reason: collision with root package name */
    protected Bitmap f4447O;

    /* renamed from: P, reason: collision with root package name */
    protected y f4448P;

    /* renamed from: Q, reason: collision with root package name */
    protected String f4449Q;

    /* renamed from: R, reason: collision with root package name */
    protected String f4450R;

    /* renamed from: S, reason: collision with root package name */
    protected int f4451S;

    /* renamed from: T, reason: collision with root package name */
    protected String f4452T;

    /* renamed from: U, reason: collision with root package name */
    protected String f4453U;

    /* renamed from: V, reason: collision with root package name */
    protected String f4454V;

    /* renamed from: W, reason: collision with root package name */
    protected String f4455W;

    /* renamed from: X, reason: collision with root package name */
    protected int f4456X;

    /* renamed from: Y, reason: collision with root package name */
    protected int f4457Y;

    /* renamed from: a, reason: collision with root package name */
    private boolean f4459a;
    protected int aa;
    protected int ab;
    protected int ac;
    protected int ad;
    protected long ae;
    protected int af;
    protected String ag;
    protected String ah;
    protected String ai;
    private int ak;
    private String al;
    private String ap;
    private String aq;
    private String ar;
    private String as;
    private String at;
    private String au;
    private String av;
    private String aw;

    /* renamed from: b, reason: collision with root package name */
    private String f4460b;

    /* renamed from: c, reason: collision with root package name */
    private String f4461c;

    /* renamed from: d, reason: collision with root package name */
    private String f4462d;

    /* renamed from: e, reason: collision with root package name */
    private int f4463e;

    /* renamed from: m, reason: collision with root package name */
    protected String f4464m;

    /* renamed from: n, reason: collision with root package name */
    protected String f4465n;

    /* renamed from: o, reason: collision with root package name */
    protected String f4466o;

    /* renamed from: p, reason: collision with root package name */
    protected String f4467p;

    /* renamed from: q, reason: collision with root package name */
    protected String f4468q;

    /* renamed from: r, reason: collision with root package name */
    protected String f4469r;

    /* renamed from: s, reason: collision with root package name */
    protected String f4470s;

    /* renamed from: t, reason: collision with root package name */
    protected String f4471t;

    /* renamed from: u, reason: collision with root package name */
    protected String f4472u;

    /* renamed from: v, reason: collision with root package name */
    protected String f4473v;

    /* renamed from: w, reason: collision with root package name */
    protected String f4474w;

    /* renamed from: x, reason: collision with root package name */
    protected String f4475x;

    /* renamed from: y, reason: collision with root package name */
    protected String f4476y;

    /* renamed from: z, reason: collision with root package name */
    protected String f4477z;

    /* renamed from: Z, reason: collision with root package name */
    protected int f4458Z = -1;
    protected boolean aj = false;
    private String am = "";
    private String an = "";
    private String ao = "";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f4478a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f4479b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f4480c = 3;
    }

    private int P() {
        return this.f4456X;
    }

    private int Q() {
        return this.f4457Y;
    }

    private int R() {
        return this.f4451S;
    }

    private String S() {
        return this.f4452T;
    }

    private String T() {
        return this.f4453U;
    }

    private String U() {
        return this.f4446N;
    }

    private int V() {
        return this.f4439G;
    }

    private String W() {
        return this.f4440H;
    }

    private String X() {
        return this.f4469r;
    }

    private String Y() {
        return this.f4474w;
    }

    private int Z() {
        return this.f4437E;
    }

    private void a(String str) {
        this.f4449Q = str;
    }

    private String aa() {
        return this.f4438F;
    }

    private int ab() {
        return this.af;
    }

    private long ac() {
        return this.ae;
    }

    private boolean ad() {
        return this.f4459a;
    }

    private int ae() {
        return this.f4458Z;
    }

    private int af() {
        return this.aa;
    }

    private int ag() {
        return this.ab;
    }

    private String ah() {
        return this.ah;
    }

    private boolean ai() {
        return this.f4436D == 4;
    }

    private String aj() {
        return this.ai;
    }

    private boolean ak() {
        return this.aj;
    }

    private int al() {
        return this.f4463e;
    }

    private int am() {
        return this.ak;
    }

    private String an() {
        return this.al;
    }

    private int ao() {
        y yVar = this.f4448P;
        if (yVar == null || yVar.W() != 1 || TextUtils.isEmpty(this.f4448P.aa()) || (this.f4448P.n() == 1 && TextUtils.isEmpty(this.f4473v))) {
            return e() ? 2 : 1;
        }
        return 3;
    }

    private String ap() {
        return this.ar;
    }

    private String aq() {
        return this.as;
    }

    private String ar() {
        return this.at;
    }

    private JSONArray as() {
        if (TextUtils.isEmpty(this.au)) {
            return null;
        }
        try {
            return new JSONArray(this.au);
        } catch (Throwable unused) {
            return null;
        }
    }

    private String at() {
        return this.au;
    }

    private String au() {
        return this.av;
    }

    public final String A() {
        return this.f4444L;
    }

    public final String B() {
        return this.ag;
    }

    public final Bitmap C() {
        return this.f4447O;
    }

    public final void D(String str) {
        this.f4461c = str;
    }

    public boolean E() {
        return false;
    }

    public final String F() {
        return this.f4450R;
    }

    public final int G() {
        return this.ac;
    }

    public final int H() {
        return this.ad;
    }

    public final void I(String str) {
        this.al = str;
    }

    public final void J(String str) {
        this.am = str;
    }

    public final void K(String str) {
        this.an = str;
    }

    public final void L(String str) {
        this.ao = str;
    }

    public final String M() {
        return this.ap;
    }

    public final String N() {
        return this.aq;
    }

    public final void O(String str) {
        this.at = str;
    }

    public abstract int a();

    public final String b() {
        return this.f4445M;
    }

    public abstract List<String> b(T t2);

    public abstract List<String> c(T t2);

    public final void c(String str) {
        this.f4445M = str;
    }

    public final void d(int i2) {
        this.f4457Y = i2;
    }

    public final void e(String str) {
        this.f4455W = str;
    }

    public final void f(String str) {
        this.f4452T = str;
    }

    public final void g(String str) {
        this.f4453U = str;
    }

    public abstract String h();

    public final void h(String str) {
        this.f4446N = str;
    }

    public final void i(String str) {
        this.f4440H = str;
    }

    public final void j(String str) {
        this.f4464m = str;
    }

    public final void k(String str) {
        this.f4465n = str;
    }

    public final void l(String str) {
        this.f4466o = str;
    }

    public final void m(String str) {
        this.f4467p = str;
    }

    public final void n(String str) {
        this.f4468q = str;
    }

    public final void o(String str) {
        this.f4469r = str;
    }

    public final void p(String str) {
        this.f4470s = str;
    }

    public final void q(String str) {
        this.f4471t = str;
    }

    public final void r(String str) {
        this.f4472u = str;
    }

    public final void s(String str) {
        this.f4473v = str;
    }

    public final void t(String str) {
        this.f4474w = str;
    }

    public final void u(String str) {
        this.f4475x = str;
    }

    public final void v(String str) {
        this.f4476y = str;
    }

    public final void w(String str) {
        this.f4477z = str;
    }

    public final String x() {
        return this.f4441I;
    }

    public final String y() {
        return this.f4442J;
    }

    public final String z() {
        return this.f4443K;
    }

    private boolean S(String str) {
        return TextUtils.equals(this.f4473v, str) && !TextUtils.isEmpty(str);
    }

    private void T(String str) {
        this.ap = str;
    }

    private void U(String str) {
        this.aq = str;
    }

    private void b(String str) {
        this.f4438F = str;
    }

    public final void A(String str) {
        this.f4444L = str;
    }

    public final void B(String str) {
        this.ag = str;
    }

    public final void C(String str) {
        this.f4460b = str;
    }

    public final boolean D() {
        return (TextUtils.isEmpty(this.f4442J) || TextUtils.isEmpty(this.f4441I) || TextUtils.isEmpty(this.f4443K) || TextUtils.isEmpty(this.f4444L)) ? false : true;
    }

    public final void E(String str) {
        this.f4462d = str;
    }

    public final void F(String str) {
        this.f4450R = str;
    }

    public final void G(String str) {
        this.ah = str;
    }

    public final void H(String str) {
        this.ai = str;
    }

    public final String I() {
        return this.am;
    }

    public final String J() {
        return this.an;
    }

    public final String K() {
        return this.ao;
    }

    public final String L() {
        y yVar = this.f4448P;
        return yVar != null ? yVar.aa() : "";
    }

    public final void M(String str) {
        this.ar = str;
    }

    public final void N(String str) {
        this.as = str;
    }

    public final String O() {
        return this.aw;
    }

    public final void P(String str) {
        this.au = str;
    }

    public final void Q(String str) {
        this.av = str;
    }

    public final void R(String str) {
        this.aw = str;
    }

    public final void a(y yVar) {
        this.f4448P = yVar;
    }

    public final void c(int i2) {
        this.f4456X = i2;
    }

    public final void d(String str) {
        this.f4454V = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e() {
        /*
            r6 = this;
            int r0 = r6.f4451S
            r1 = 1
            if (r0 != r1) goto L6
            return r1
        L6:
            r2 = 2
            r3 = 0
            if (r0 != r2) goto L74
            com.anythink.core.common.h.y r0 = r6.f4448P
            int r0 = r0.n()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r0.getClass()
            int r4 = r0.hashCode()
            r5 = -1
            switch(r4) {
                case 48: goto L4b;
                case 49: goto L40;
                case 50: goto L37;
                case 51: goto L2c;
                case 52: goto L21;
                default: goto L1f;
            }
        L1f:
            r2 = r5
            goto L55
        L21:
            java.lang.String r2 = "4"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L2a
            goto L1f
        L2a:
            r2 = 4
            goto L55
        L2c:
            java.lang.String r2 = "3"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L35
            goto L1f
        L35:
            r2 = 3
            goto L55
        L37:
            java.lang.String r4 = "2"
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L55
            goto L1f
        L40:
            java.lang.String r2 = "1"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L49
            goto L1f
        L49:
            r2 = r1
            goto L55
        L4b:
            java.lang.String r2 = "0"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L54
            goto L1f
        L54:
            r2 = r3
        L55:
            switch(r2) {
                case 0: goto L63;
                case 1: goto L59;
                case 2: goto L63;
                case 3: goto L59;
                case 4: goto L63;
                default: goto L58;
            }
        L58:
            goto L74
        L59:
            java.lang.String r0 = r6.f4452T
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L62
            return r1
        L62:
            return r3
        L63:
            java.lang.String r0 = r6.f4473v
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L74
            java.lang.String r0 = r6.f4452T
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L74
            return r1
        L74:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.w.e():boolean");
    }

    public final String f() {
        return this.f4449Q;
    }

    public final y g() {
        return this.f4448P;
    }

    public final void h(int i2) {
        this.f4436D = i2;
    }

    public final String i() {
        return this.f4464m;
    }

    public final String j() {
        return this.f4465n;
    }

    public final String k() {
        return this.f4466o;
    }

    public final String l() {
        return this.f4467p;
    }

    public final String m() {
        return this.f4468q;
    }

    public final String n() {
        return this.f4470s;
    }

    public final String o() {
        return this.f4471t;
    }

    public final String p() {
        return this.f4472u;
    }

    public final String q() {
        return this.f4473v;
    }

    public final String r() {
        return this.f4475x;
    }

    public final String s() {
        return this.f4476y;
    }

    public final String t() {
        return this.f4477z;
    }

    public final int u() {
        return this.f4435A;
    }

    public final int v() {
        return this.f4436D;
    }

    public final boolean w() {
        return !TextUtils.isEmpty(this.f4473v);
    }

    public final void x(String str) {
        this.f4441I = str;
    }

    public final void y(String str) {
        this.f4442J = str;
    }

    public final void z(String str) {
        this.f4443K = str;
    }

    private void b(boolean z2) {
        this.aj = z2;
    }

    public final void a(Bitmap bitmap) {
        this.f4447O = bitmap;
    }

    public final String c() {
        return this.f4454V;
    }

    public final String d() {
        return this.f4455W;
    }

    public final void f(int i2) {
        this.f4439G = i2;
    }

    public final void g(int i2) {
        this.f4435A = i2;
    }

    public final void i(int i2) {
        this.f4437E = i2;
    }

    public final void j(int i2) {
        this.af = i2;
    }

    public final void k(int i2) {
        this.ac = i2;
    }

    public final void l(int i2) {
        this.ad = i2;
    }

    public final void m(int i2) {
        this.aa = i2;
    }

    public final void n(int i2) {
        this.ab = i2;
    }

    public final void o(int i2) {
        this.f4463e = i2;
    }

    public final void p(int i2) {
        this.ak = i2;
    }

    private void a(long j2) {
        this.ae = j2;
    }

    public String d(T t2) {
        return this.f4470s;
    }

    private void a(boolean z2) {
        this.f4459a = z2;
    }

    private void a(int i2) {
        this.f4458Z = i2;
    }

    public final void e(int i2) {
        this.f4451S = i2;
    }
}

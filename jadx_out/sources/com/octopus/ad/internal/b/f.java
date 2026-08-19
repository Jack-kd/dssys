package com.octopus.ad.internal.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.core.view.PointerIconCompat;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.a.c;
import com.octopus.ad.a.g;
import com.octopus.ad.a.h;
import com.octopus.ad.a.i;
import com.octopus.ad.internal.c.d;
import com.octopus.ad.internal.j;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.o;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.t;
import com.octopus.ad.internal.u;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.AdLogoInfo;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.model.ShakeValue;
import com.octopus.ad.utils.OctUtil;
import com.octopus.ad.utils.ThreadUtils;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.analytics.pro.be;
import io.flutter.plugin.platform.PlatformPlugin;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
/* loaded from: classes4.dex */
public class f {

    /* renamed from: A, reason: collision with root package name */
    private boolean f34399A;

    /* renamed from: B, reason: collision with root package name */
    private int f34400B;

    /* renamed from: C, reason: collision with root package name */
    private int f34401C;

    /* renamed from: D, reason: collision with root package name */
    private boolean f34402D;

    /* renamed from: E, reason: collision with root package name */
    private int f34403E;

    /* renamed from: F, reason: collision with root package name */
    private AdLogoInfo f34404F;

    /* renamed from: G, reason: collision with root package name */
    private AdLogoInfo f34405G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f34406H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f34407I;

    /* renamed from: J, reason: collision with root package name */
    private boolean f34408J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f34409K;

    /* renamed from: L, reason: collision with root package name */
    private int f34410L;

    /* renamed from: M, reason: collision with root package name */
    private int f34411M;

    /* renamed from: N, reason: collision with root package name */
    private String f34412N;

    /* renamed from: O, reason: collision with root package name */
    private String f34413O;

    /* renamed from: P, reason: collision with root package name */
    private int f34414P;

    /* renamed from: Q, reason: collision with root package name */
    private int f34415Q;

    /* renamed from: R, reason: collision with root package name */
    private int f34416R;

    /* renamed from: S, reason: collision with root package name */
    private int f34417S;

    /* renamed from: T, reason: collision with root package name */
    private int f34418T;

    /* renamed from: U, reason: collision with root package name */
    private int f34419U;

    /* renamed from: V, reason: collision with root package name */
    private int f34420V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f34421W;

    /* renamed from: X, reason: collision with root package name */
    private boolean f34422X;

    /* renamed from: Y, reason: collision with root package name */
    private boolean f34423Y;

    /* renamed from: Z, reason: collision with root package name */
    private boolean f34424Z;

    /* renamed from: a, reason: collision with root package name */
    public String f34425a;
    private int aA;
    private String aB;
    private String aC;
    private String aD;
    private String aE;
    private ComplianceInfo aF;
    private i aG;
    private c.b aH;
    private c.p aI;
    private c.x aJ;
    private List<c.i> aK;
    private String aL;
    private String aM;
    private long aN;
    private p aO;
    private com.octopus.ad.internal.d aP;
    private List<Pair<j, String>> aQ;
    private String aR;
    private String aS;
    private String aT;
    private String aU;
    private String aV;
    private String aW;
    private boolean aX;
    private boolean aY;
    private boolean aZ;
    private Boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private String al;
    private String am;
    private int an;
    private Map<String, Object> ao;
    private com.octopus.ad.b.a ap;
    private e aq;
    private c.k ar;
    private c.l as;
    private c.z at;
    private h au;
    private ShakeValue av;
    private WebView aw;
    private com.octopus.ad.a.e ax;
    private k.a ay;
    private c.b.a az;

    /* renamed from: b, reason: collision with root package name */
    public String f34426b;
    private boolean ba;
    private LinkedList<String> bb;
    private HashMap<String, Object> bc;
    private boolean bd;
    private boolean be;
    private boolean bf;
    private long bg;
    private long bh;
    private boolean bi;
    private int bj;
    private boolean bk;
    private boolean bl;

    /* renamed from: c, reason: collision with root package name */
    private g.a f34427c;

    /* renamed from: d, reason: collision with root package name */
    private int f34428d;

    /* renamed from: e, reason: collision with root package name */
    private int f34429e;

    /* renamed from: f, reason: collision with root package name */
    private int f34430f;

    /* renamed from: g, reason: collision with root package name */
    private int f34431g;

    /* renamed from: h, reason: collision with root package name */
    private int f34432h;

    /* renamed from: i, reason: collision with root package name */
    private int f34433i;

    /* renamed from: j, reason: collision with root package name */
    private int f34434j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f34435k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f34436l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f34437m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f34438n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f34439o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f34440p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f34441q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f34442r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f34443s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f34444t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f34445u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f34446v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f34447w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f34448x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f34449y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f34450z;

    public f(c.u uVar, com.octopus.ad.internal.d dVar, p pVar, String str, String str2) {
        this.f34428d = 0;
        this.f34429e = 1;
        this.f34430f = 0;
        this.f34431g = 0;
        this.f34432h = 0;
        this.f34433i = 0;
        this.f34434j = 0;
        this.f34435k = false;
        this.f34436l = false;
        this.f34437m = false;
        this.f34438n = false;
        this.f34439o = false;
        this.f34440p = false;
        this.f34441q = false;
        this.f34442r = true;
        this.f34443s = false;
        this.f34444t = true;
        this.f34445u = false;
        this.f34446v = false;
        this.f34447w = false;
        this.f34448x = false;
        this.f34449y = false;
        this.f34450z = false;
        this.f34399A = false;
        this.f34400B = 0;
        this.f34401C = 0;
        this.f34402D = false;
        this.f34403E = 0;
        this.f34404F = new AdLogoInfo();
        this.f34405G = new AdLogoInfo();
        this.f34406H = false;
        this.f34417S = 0;
        this.f34419U = 1;
        this.f34421W = false;
        this.f34422X = false;
        this.f34423Y = true;
        this.f34424Z = true;
        this.aQ = new LinkedList();
        this.bb = new LinkedList<>();
        this.bc = new HashMap<>();
        this.bd = false;
        this.be = false;
        this.bj = 0;
        if (uVar == null) {
            com.octopus.ad.internal.c.f.a();
            return;
        }
        com.octopus.ad.internal.c.f.a(uVar.toString());
        this.aP = dVar;
        this.aO = pVar;
        this.ai = str;
        this.aT = str2;
        a(uVar);
    }

    private int aq() {
        if (this.f34421W) {
            return 10;
        }
        if (this.f34422X) {
            return 1;
        }
        if (!this.f34423Y) {
            return 4;
        }
        if (!this.f34424Z) {
            return 11;
        }
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = this.aa;
        if (bool == bool2) {
            return 0;
        }
        int i2 = this.f34415Q;
        if (i2 != 0) {
            return i2;
        }
        if (this.ab) {
            return 12;
        }
        return Boolean.FALSE == bool2 ? 8 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ar() {
        if (this.ay != null) {
            k.a().b(this.ay);
        }
    }

    private void as() {
        if (!q.a().f() || TextUtils.isEmpty(this.al)) {
            return;
        }
        q.a().a(this.f34416R);
        com.octopus.ad.a.a aVar = new com.octopus.ad.a.a();
        aVar.g(this.f34412N);
        aVar.a(this.ai);
        aVar.f(this.al);
        q.a().f35022m.put("dpForbid", aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
    }

    public boolean A() {
        return this.f34444t;
    }

    public int B() {
        return this.f34419U;
    }

    public boolean C() {
        return this.f34445u;
    }

    public boolean D() {
        return this.f34446v;
    }

    public int E() {
        return this.f34400B;
    }

    public int F() {
        return this.f34401C;
    }

    public int G() {
        return this.f34431g;
    }

    public int H() {
        return this.f34430f;
    }

    public int I() {
        return this.f34429e;
    }

    public int J() {
        return this.f34428d;
    }

    public c.p K() {
        return this.aI;
    }

    public c.x L() {
        return this.aJ;
    }

    public boolean M() {
        return this.f34447w;
    }

    public boolean N() {
        return this.f34448x;
    }

    public boolean O() {
        return this.f34449y;
    }

    public boolean P() {
        return this.f34450z;
    }

    public boolean Q() {
        return this.f34399A;
    }

    public boolean R() {
        return this.f34424Z;
    }

    public Boolean S() {
        return this.aa;
    }

    public boolean T() {
        return this.ab;
    }

    public boolean U() {
        return this.ac;
    }

    public boolean V() {
        return this.f34437m;
    }

    public boolean W() {
        return this.f34440p;
    }

    public boolean X() {
        return this.f34439o;
    }

    public String Y() {
        return this.aS;
    }

    public String Z() {
        return this.aV;
    }

    public ShakeValue aa() {
        return this.av;
    }

    public Map<String, Object> ab() {
        return this.ao;
    }

    public void ac() {
        if (this.f34408J || this.aP == null) {
            return;
        }
        this.f34408J = true;
    }

    public boolean ad() {
        c.x xVar = this.aJ;
        return (xVar == null || xVar.b() == null || this.aJ.b().a() != 1) ? false : true;
    }

    public LinkedList<String> ae() {
        return this.bb;
    }

    public g.a af() {
        return this.f34427c;
    }

    public int ag() {
        return this.f34416R;
    }

    public void ah() {
        List<c.aa> listU;
        c.b bVar = this.aH;
        if (bVar == null || this.bf || (listU = bVar.u()) == null) {
            return;
        }
        this.bg = System.currentTimeMillis();
        for (int i2 = 0; i2 < listU.size(); i2++) {
            b(listU.get(i2).a());
            this.bf = true;
        }
    }

    public void ai() {
        List<c.aa> listU;
        c.b bVar = this.aH;
        if (bVar == null || this.bi || !this.bf || (listU = bVar.u()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listU.size(); i2++) {
            b(listU.get(i2).b());
            this.bi = true;
        }
    }

    public void aj() {
        List<c.aa> listU;
        c.b bVar = this.aH;
        if (bVar == null || this.bk || !this.bf || (listU = bVar.u()) == null) {
            return;
        }
        this.bh = System.currentTimeMillis();
        for (int i2 = 0; i2 < listU.size(); i2++) {
            b(listU.get(i2).f());
            this.bk = true;
        }
    }

    public void ak() {
        List<c.aa> listU;
        c.b bVar = this.aH;
        if (bVar == null || this.bl || !this.bf || (listU = bVar.u()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listU.size(); i2++) {
            b(listU.get(i2).g());
            this.bl = true;
        }
    }

    public void al() {
        d();
        ar();
        if (this.aw != null) {
            ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.f.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (f.this.aw != null) {
                            f.this.aw.destroy();
                            f.this.aw = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        } else {
            ak();
        }
    }

    public AdLogoInfo am() {
        return this.f34404F;
    }

    public AdLogoInfo an() {
        return this.f34405G;
    }

    public ArrayList<String> ao() {
        c.b bVar = this.aH;
        if (bVar != null) {
            return bVar.s();
        }
        return null;
    }

    public ArrayList<String> ap() {
        c.b bVar = this.aH;
        if (bVar != null) {
            return bVar.t();
        }
        return null;
    }

    public void b() {
    }

    public void d() {
    }

    public c.z k() {
        return this.at;
    }

    public NativeAdResponse l() {
        return this.aq;
    }

    public p m() {
        return this.aO;
    }

    public List<Pair<j, String>> n() {
        return this.aQ;
    }

    public int o() {
        return this.f34432h;
    }

    public int p() {
        return this.f34433i;
    }

    public int q() {
        return this.f34410L;
    }

    public int r() {
        return this.f34411M;
    }

    public String s() {
        return this.f34413O;
    }

    public long t() {
        return this.aN;
    }

    public boolean u() {
        return this.bd;
    }

    public boolean v() {
        return this.be;
    }

    public HashMap<String, Object> w() {
        return this.bc;
    }

    public boolean x() {
        return this.f34435k;
    }

    public boolean y() {
        return this.f34441q;
    }

    public boolean z() {
        return this.f34442r;
    }

    public void b(boolean z2) {
    }

    public String e() {
        return this.f34412N;
    }

    public String f() {
        return this.ag;
    }

    public String g() {
        return this.ah;
    }

    public String h() {
        return this.ak;
    }

    public String i() {
        return this.aT;
    }

    public c.l j() {
        return this.as;
    }

    private boolean d(c.u uVar) {
        if (uVar.a() > 0) {
            for (c.w wVar : uVar.w()) {
                this.f34442r = wVar.w();
                if (wVar.O() > 0) {
                    for (c.d dVar : wVar.N()) {
                        if (dVar.i() <= 0 || dVar.h().get(0) == null) {
                            if (dVar.e() > 0) {
                                for (c.a aVar : dVar.g()) {
                                    if (this.f34442r) {
                                        for (int i2 = 0; i2 < aVar.d(); i2++) {
                                            if (!com.octopus.ad.internal.c.p.a(aVar.c().get(i2).a())) {
                                                this.bb.add(aVar.c().get(i2).a());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (this.bb.isEmpty()) {
            return false;
        }
        this.bd = true;
        return true;
    }

    private boolean e(c.u uVar) {
        if (uVar.a() > 0) {
            c.w wVar = uVar.w().get(0);
            this.f34427c = wVar.c();
            this.f34428d = wVar.d();
            this.aj = wVar.e();
            this.f34429e = wVar.f() == g.h.PORTRAIT ? 1 : 2;
            this.f34433i = Integer.parseInt(wVar.h());
            this.f34432h = Integer.parseInt(wVar.i());
            this.f34411M = wVar.g();
            List<c.d> listN = wVar.N();
            if (listN != null && !listN.isEmpty()) {
                this.f34410L = listN.get(0).j();
                this.f34413O = listN.get(0).k();
                this.aN = listN.get(0).c();
            }
            this.f34412N = wVar.a();
            this.f34435k = wVar.y();
            this.f34436l = wVar.z();
            this.f34437m = wVar.A();
            this.f34416R = wVar.B();
            this.f34418T = wVar.C();
            this.f34438n = wVar.D();
            this.f34439o = wVar.E();
            this.f34440p = wVar.F();
            this.am = wVar.K();
            this.an = wVar.L();
            this.f34441q = wVar.G();
            this.f34442r = wVar.w();
            this.f34443s = wVar.I();
            this.f34444t = wVar.x();
            this.f34445u = wVar.m();
            this.f34446v = wVar.n();
            this.f34447w = wVar.o();
            this.f34448x = wVar.p();
            this.f34449y = wVar.q();
            this.f34450z = wVar.r();
            this.f34399A = wVar.s();
            this.f34400B = wVar.u();
            this.f34401C = wVar.t();
            this.f34402D = wVar.H();
            this.aI = wVar.k();
            this.aJ = wVar.l();
            this.f34414P = wVar.M();
            this.f34434j = wVar.v();
            if (this.f34435k && this.f34433i == 0 && this.f34432h == 0) {
                this.f34433i = 720;
                this.f34432h = PlatformPlugin.DEFAULT_SYSTEM_UI;
            }
            if (wVar.O() > 0) {
                for (c.d dVar : wVar.N()) {
                    if (dVar.i() <= 0 || dVar.h().get(0) == null) {
                        this.aL = dVar.a();
                        if (dVar.e() >= 0) {
                            for (c.a aVar : dVar.g()) {
                                if (this.f34442r) {
                                    for (int i2 = 0; i2 < aVar.d(); i2++) {
                                        if (!com.octopus.ad.internal.c.p.a(aVar.c().get(i2).a())) {
                                            this.bb.add(aVar.c().get(i2).a());
                                        }
                                    }
                                }
                                if (aVar.a() == g.f.RENDER_JSON || aVar.a() == g.f.RENDER_VIDEO) {
                                    if (aVar.d() > 0) {
                                        try {
                                            c.C0711c c0711cF = dVar.f();
                                            if (c0711cF != null) {
                                                if (!TextUtils.isEmpty(c0711cF.a())) {
                                                    this.f34404F.setAdurl(c0711cF.a());
                                                    this.f34404F.setType(AdLogoInfo.TYPE_PIC);
                                                } else {
                                                    this.f34404F.setAdurl(c0711cF.b());
                                                    this.f34404F.setType(AdLogoInfo.TYPE_TEXT);
                                                }
                                                if (!TextUtils.isEmpty(c0711cF.c())) {
                                                    this.f34405G.setAdurl(c0711cF.c());
                                                    this.f34405G.setType(AdLogoInfo.TYPE_PIC);
                                                } else {
                                                    this.f34405G.setAdurl(c0711cF.d());
                                                    this.f34405G.setType(AdLogoInfo.TYPE_TEXT);
                                                }
                                            }
                                            e eVarA = e.a(new JSONObject(aVar.b()));
                                            this.aq = eVarA;
                                            eVarA.a(this);
                                            this.aq.c(P());
                                            this.aq.a(r());
                                            this.aq.b(an());
                                            this.aq.a(am());
                                            this.aq.b(wVar.J());
                                            if (aVar.a() == g.f.RENDER_VIDEO) {
                                                this.aq.a(true);
                                            }
                                            if (dVar.d() != null) {
                                                a(dVar.d());
                                                c.b bVarD = dVar.d();
                                                this.aq.b(!com.octopus.ad.internal.c.p.a(this.aR) ? this.aR : this.aW);
                                                this.aq.a(dVar.d());
                                                c.i iVarK = bVarD.k();
                                                if (iVarK != null && !TextUtils.isEmpty(iVarK.a())) {
                                                    this.aq.c(iVarK.a());
                                                }
                                                if (iVarK != null && !TextUtils.isEmpty(iVarK.b())) {
                                                    this.aq.d(iVarK.b());
                                                }
                                                List<c.i> listV = bVarD.v();
                                                if (listV != null && !listV.isEmpty()) {
                                                    for (int i3 = 0; i3 < listV.size(); i3++) {
                                                        String strB = listV.get(i3).b();
                                                        if (!TextUtils.isEmpty(strB)) {
                                                            this.aq.d(strB);
                                                        }
                                                        String strA = listV.get(i3).a();
                                                        if (!TextUtils.isEmpty(strA)) {
                                                            this.aq.c(strA);
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Exception e2) {
                                            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                                        }
                                        if (this.aq != null) {
                                            this.bd = true;
                                            return true;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        } else {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34569e, com.octopus.ad.internal.c.f.a(R.string.blank_ad));
        }
        if (this.aQ.isEmpty()) {
            return false;
        }
        this.bd = true;
        return true;
    }

    private boolean f(c.u uVar) {
        if (uVar.a() > 0) {
            c.w wVar = uVar.w().get(0);
            List<c.d> listN = wVar.N();
            if (listN != null && !listN.isEmpty()) {
                c.d dVar = listN.get(0);
                if (dVar.d() != null) {
                    c.b bVarD = dVar.d();
                    a(bVarD);
                    c.i iVarK = bVarD.k();
                    if (iVarK != null && !TextUtils.isEmpty(iVarK.a())) {
                        this.f34425a = iVarK.a();
                    }
                    if (iVarK != null && !TextUtils.isEmpty(iVarK.b())) {
                        this.f34426b = iVarK.b();
                    }
                }
            }
            this.f34427c = wVar.c();
            this.f34428d = wVar.d();
            this.aj = wVar.e();
            this.f34429e = wVar.f() == g.h.PORTRAIT ? 1 : 2;
            this.f34432h = Integer.parseInt(wVar.h());
            this.f34433i = Integer.parseInt(wVar.i());
            this.f34411M = wVar.g();
            List<c.d> listN2 = wVar.N();
            if (listN2 != null && !listN2.isEmpty()) {
                this.f34410L = listN2.get(0).j();
                this.f34413O = listN2.get(0).k();
                this.aN = listN2.get(0).c();
            }
            this.f34430f = 0;
            this.f34431g = 0;
            if (wVar.j() != null && af() == g.a.ADP_INTERSTITIAL) {
                c.f fVarJ = wVar.j();
                this.f34430f = Integer.parseInt(fVarJ.a());
                this.f34431g = Integer.parseInt(fVarJ.b());
            }
        }
        return false;
    }

    public void c() {
        if (this.aP != null) {
            o.a(new l("FEEDBACK", e(), this.ai, System.currentTimeMillis() - this.aP.i()));
        }
    }

    private boolean b(c.u uVar) {
        return uVar.b() == 0;
    }

    public void b(int i2) {
        if (this.f34409K) {
            return;
        }
        this.f34409K = true;
        new com.octopus.ad.internal.i(com.octopus.ad.internal.c.q.a(q.a().o() + "/sdk/nurl?second_price=${SECOND_PRICE}&slot_id=${SLOT_ID}&adx_code=zysdk2", i2, this.f34412N)).b();
    }

    private boolean c(c.u uVar) {
        if (uVar.a() > 0) {
            c.w wVar = uVar.w().get(0);
            this.f34427c = wVar.c();
            this.f34428d = wVar.d();
            this.aj = wVar.e();
            this.f34429e = wVar.f() == g.h.PORTRAIT ? 1 : 2;
            this.f34433i = Integer.parseInt(wVar.h());
            this.f34432h = Integer.parseInt(wVar.i());
            if (wVar.j() != null && af() == g.a.ADP_INTERSTITIAL) {
                c.f fVarJ = wVar.j();
                this.f34430f = Integer.parseInt(fVarJ.a());
                this.f34431g = Integer.parseInt(fVarJ.b());
            } else if (!com.octopus.ad.internal.c.p.a(wVar.b()) && af() == g.a.ADP_REWARD) {
                a("REWARD_ITEM", (Object) wVar.b());
            }
            this.f34412N = wVar.a();
            this.f34435k = wVar.y();
            this.f34436l = wVar.z();
            this.f34437m = wVar.A();
            this.f34416R = wVar.B();
            this.f34418T = wVar.C();
            this.f34438n = wVar.D();
            this.f34439o = wVar.E();
            this.f34440p = wVar.F();
            this.am = wVar.K();
            this.an = wVar.L();
            this.f34441q = wVar.G();
            this.f34442r = wVar.w();
            this.f34443s = wVar.I();
            this.f34444t = wVar.x();
            this.f34445u = wVar.m();
            this.f34446v = wVar.n();
            this.f34447w = wVar.o();
            this.f34448x = wVar.p();
            this.f34449y = wVar.q();
            this.f34450z = wVar.r();
            this.f34399A = wVar.s();
            this.f34400B = wVar.u();
            this.f34401C = wVar.t();
            this.f34402D = wVar.H();
            this.aI = wVar.k();
            this.aJ = wVar.l();
            this.f34414P = wVar.M();
            this.f34411M = wVar.g();
            this.f34434j = wVar.v();
            List<c.d> listN = wVar.N();
            if (listN != null && !listN.isEmpty()) {
                this.f34410L = listN.get(0).j();
                this.f34413O = listN.get(0).k();
                this.aN = listN.get(0).c();
            }
            if (this.f34435k && this.f34433i == 0 && this.f34432h == 0) {
                this.f34433i = 720;
                this.f34432h = PlatformPlugin.DEFAULT_SYSTEM_UI;
            }
            if (wVar.O() > 0) {
                int i2 = 0;
                for (c.d dVar : wVar.N()) {
                    if (i2 == 0) {
                        this.aM = dVar.b();
                        com.octopus.ad.d.b.f.a("OctopusAd", "mAdid = " + this.aM);
                    }
                    if (dVar.i() <= 0 || dVar.h().get(0) == null) {
                        this.aL = dVar.a();
                        c.C0711c c0711cF = dVar.f();
                        if (c0711cF != null) {
                            if (!TextUtils.isEmpty(c0711cF.a())) {
                                this.f34404F.setAdurl(c0711cF.a());
                                this.f34404F.setType(AdLogoInfo.TYPE_PIC);
                            } else {
                                this.f34404F.setAdurl(c0711cF.b());
                                this.f34404F.setType(AdLogoInfo.TYPE_TEXT);
                            }
                            if (!TextUtils.isEmpty(c0711cF.c())) {
                                this.f34405G.setAdurl(c0711cF.c());
                                this.f34405G.setType(AdLogoInfo.TYPE_PIC);
                            } else {
                                this.f34405G.setAdurl(c0711cF.d());
                                this.f34405G.setType(AdLogoInfo.TYPE_TEXT);
                            }
                        }
                        if (dVar.e() > 0) {
                            for (c.a aVar : dVar.g()) {
                                if (this.f34442r) {
                                    for (int i3 = 0; i3 < aVar.d(); i3++) {
                                        if (!com.octopus.ad.internal.c.p.a(aVar.c().get(i3).a())) {
                                            this.bb.add(aVar.c().get(i3).a());
                                        }
                                    }
                                }
                                if (aVar.d() > 0) {
                                    String strA = aVar.c().get(0).a();
                                    if (aVar.a() != g.f.RENDER_VIDEO && aVar.a() != g.f.RENDER_VAST_VIDEO) {
                                        this.aQ.add(Pair.create(j.IMAGE, strA));
                                    } else {
                                        this.aQ.add(Pair.create(j.VIDEO, strA));
                                    }
                                }
                            }
                        }
                        if (dVar.d() != null) {
                            c.b bVarD = dVar.d();
                            a(bVarD);
                            c.i iVarK = bVarD.k();
                            if (iVarK != null && !TextUtils.isEmpty(iVarK.a())) {
                                this.f34425a = iVarK.a();
                            }
                            if (iVarK != null && !TextUtils.isEmpty(iVarK.b())) {
                                this.f34426b = iVarK.b();
                            }
                        }
                    }
                    i2++;
                    if (!this.aQ.isEmpty()) {
                        break;
                    }
                }
            }
        } else {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34569e, com.octopus.ad.internal.c.f.a(R.string.blank_ad));
        }
        if (this.aQ.isEmpty()) {
            return false;
        }
        this.bd = true;
        return true;
    }

    public void a(boolean z2) {
        this.f34406H = z2;
    }

    public c.b a() {
        return this.aH;
    }

    private void a(c.b bVar) {
        this.aH = bVar;
        this.aK = bVar.v();
        this.az = bVar.p();
        this.ax = bVar.r();
        this.aA = bVar.d();
        this.aB = bVar.e();
        this.aC = bVar.f();
        this.aD = bVar.g();
        this.aE = bVar.h();
        this.aF = bVar.i();
        this.aG = bVar.q();
        this.aR = bVar.a();
        this.aS = bVar.b();
        this.aV = bVar.c();
        this.aX = bVar.m();
        this.aY = bVar.l();
        this.aZ = bVar.n();
        this.ba = bVar.o();
        this.aW = bVar.j();
        if (TextUtils.isEmpty(this.aC)) {
            this.aC = "OctopusAd";
        }
        if (TextUtils.isEmpty(this.aB)) {
            this.aB = "OctopusAd";
        }
        if (TextUtils.isEmpty(this.aD)) {
            this.aD = "Ad Download";
        }
        if (!TextUtils.isEmpty(this.aj)) {
            if (!this.aj.startsWith("https://") && !this.aj.startsWith("http://")) {
                c(this.aj);
            } else {
                new t(this.aj).a(new d.a() { // from class: com.octopus.ad.internal.b.f.1
                    @Override // com.octopus.ad.internal.c.d.a
                    public void a(int i2, boolean z2, String str) {
                        if (!z2 || TextUtils.isEmpty(str)) {
                            return;
                        }
                        try {
                            f.this.c(new JSONObject(str).optString("data"));
                        } catch (Exception e2) {
                            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                        }
                    }
                }).b();
            }
        }
        if (this.ba) {
            ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.f.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (TextUtils.isEmpty(f.this.aR)) {
                            return;
                        }
                        Context contextL = q.a().l();
                        f.this.aw = new WebView(new MutableContextWrapper(contextL));
                        com.octopus.ad.internal.c.t.a(f.this.aw);
                        f.this.aw.loadUrl(f.this.aR);
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                }
            });
        }
    }

    private void b(Context context) {
        WebView webView;
        if (TextUtils.isEmpty(this.aR)) {
            return;
        }
        if (this.aY && this.f34406H) {
            if (this.aR.startsWith("http")) {
                as();
                if (this.ba && (webView = this.aw) != null) {
                    ViewUtil.openLocalBrowser(webView, this.f34434j);
                    return;
                } else {
                    ViewUtil.openLocalBrowser(this.aR, this.f34434j);
                    return;
                }
            }
            return;
        }
        ViewUtil.openSystemBrowser(context, this.aR);
    }

    public void d(boolean z2) {
        this.f34421W = z2;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new com.octopus.ad.internal.i(com.octopus.ad.internal.c.q.a(str, this.au, this.bg, this.bh)).b();
    }

    public void a(final OnCpaListener onCpaListener) {
        try {
            if (this.ad || this.f34420V <= 0 || onCpaListener == null) {
                return;
            }
            this.ad = true;
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.f.4
                @Override // java.lang.Runnable
                public void run() {
                    new t(q.a().n() + "/sdk/cpa/callback?requestId=" + f.this.ai).a(new d.a() { // from class: com.octopus.ad.internal.b.f.4.1
                        @Override // com.octopus.ad.internal.c.d.a
                        public void a(int i2, boolean z2, String str) {
                            if (!z2 || TextUtils.isEmpty(str)) {
                                return;
                            }
                            onCpaListener.onCpaResult(str.equals("true"));
                        }
                    }).b();
                }
            }, this.f34420V * 1000);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(com.octopus.ad.a.a aVar, boolean z2) {
        com.octopus.ad.internal.d dVar = this.aP;
        if (dVar != null) {
            dVar.c(System.currentTimeMillis());
            if (aVar != null) {
                aVar.c(System.currentTimeMillis());
            }
        }
    }

    public void a(String str) {
        com.octopus.ad.internal.d dVar = this.aP;
        if (dVar != null) {
            o.a(new l("RENDERFAIL", dVar.c(), this.aP.a(), System.currentTimeMillis() - this.aP.h(), str));
        }
    }

    public f(boolean z2) {
        this.f34428d = 0;
        this.f34429e = 1;
        this.f34430f = 0;
        this.f34431g = 0;
        this.f34432h = 0;
        this.f34433i = 0;
        this.f34434j = 0;
        this.f34435k = false;
        this.f34436l = false;
        this.f34437m = false;
        this.f34438n = false;
        this.f34439o = false;
        this.f34440p = false;
        this.f34441q = false;
        this.f34442r = true;
        this.f34443s = false;
        this.f34444t = true;
        this.f34445u = false;
        this.f34446v = false;
        this.f34447w = false;
        this.f34448x = false;
        this.f34449y = false;
        this.f34450z = false;
        this.f34399A = false;
        this.f34400B = 0;
        this.f34401C = 0;
        this.f34402D = false;
        this.f34403E = 0;
        this.f34404F = new AdLogoInfo();
        this.f34405G = new AdLogoInfo();
        this.f34406H = false;
        this.f34417S = 0;
        this.f34419U = 1;
        this.f34421W = false;
        this.f34422X = false;
        this.f34423Y = true;
        this.f34424Z = true;
        this.aQ = new LinkedList();
        this.bb = new LinkedList<>();
        this.bc = new HashMap<>();
        this.bd = false;
        this.bj = 0;
        this.be = z2;
    }

    private void a(c.u uVar) {
        this.ag = uVar.i();
        this.ah = uVar.j();
        this.al = uVar.l();
        this.f34419U = uVar.e();
        this.f34420V = uVar.f();
        this.f34424Z = uVar.m();
        this.aa = uVar.n();
        this.ab = uVar.o();
        this.ac = uVar.p();
        this.ar = uVar.q();
        this.as = uVar.r();
        this.at = uVar.s();
        this.ak = uVar.k();
        this.au = uVar.t();
        this.ao = uVar.v();
        this.av = uVar.u();
        if (b(uVar)) {
            p pVar = this.aO;
            if (pVar == p.PREFETCH) {
                if (d(uVar)) {
                    return;
                }
            } else if (pVar != p.NATIVE && pVar != p.BANNER && pVar != p.DRAW) {
                if (c(uVar)) {
                    return;
                }
            } else if (e(uVar)) {
                return;
            }
            f(uVar);
        }
    }

    public void a(String str, Object obj) {
        this.bc.put(str, obj);
    }

    public void a(final boolean z2, final com.octopus.ad.a aVar) {
        List<c.i> listV;
        this.f34423Y = z2;
        int i2 = this.f34403E;
        if (i2 <= 0) {
            this.f34403E = i2 + 1;
            if (!com.octopus.ad.internal.c.p.a(this.f34425a)) {
                new com.octopus.ad.internal.i(this.f34425a).b();
                this.f34425a = "";
            }
            c.b bVar = this.aH;
            if (bVar == null || (listV = bVar.v()) == null) {
                return;
            }
            for (int i3 = 0; i3 < listV.size(); i3++) {
                c.i iVar = listV.get(i3);
                if (iVar != null && !TextUtils.isEmpty(iVar.a())) {
                    String strReplace = iVar.a().replace("__oct_ms_time__", String.valueOf(System.currentTimeMillis())).replace("__oct_s_time__", String.valueOf(System.currentTimeMillis() / 1000));
                    if (strReplace.contains("?rv=1")) {
                        ViewUtil.openLocalBrowser(strReplace, this.f34434j);
                    } else {
                        if (strReplace.contains("track=oct")) {
                            if (this.f34421W) {
                                strReplace = strReplace + "&opt=10";
                            } else if (this.f34422X) {
                                strReplace = strReplace + "&opt=1";
                            } else if (!z2) {
                                strReplace = strReplace + "&opt=4";
                            } else if (!this.f34424Z) {
                                strReplace = strReplace + "&opt=11";
                            }
                        }
                        String str = strReplace;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        com.octopus.ad.internal.d dVar = this.aP;
                        if (dVar != null) {
                            jCurrentTimeMillis = dVar.h();
                        }
                        u uVar = new u(be.f48800c, this.f34412N, this.ai, jCurrentTimeMillis, str, ao(), this.aX);
                        if (str.contains("track=octimp")) {
                            uVar.a(new d.a() { // from class: com.octopus.ad.internal.b.f.5
                                @Override // com.octopus.ad.internal.c.d.a
                                public void a(int i4, boolean z3, String str2) {
                                    com.octopus.ad.a aVar2 = aVar;
                                    if (aVar2 != null) {
                                        if (z3) {
                                            z3 = z2;
                                        }
                                        aVar2.a(z3);
                                    }
                                }
                            });
                        }
                        uVar.a();
                    }
                }
            }
        }
    }

    public void c(boolean z2) {
        this.f34422X = z2;
    }

    public void c(int i2) {
        List<c.aa> listU;
        String strE;
        c.b bVar = this.aH;
        if (bVar == null || this.bj == i2 || !this.bf || (listU = bVar.u()) == null) {
            return;
        }
        for (int i3 = 0; i3 < listU.size(); i3++) {
            c.aa aaVar = listU.get(i3);
            if (i2 == 1) {
                strE = aaVar.c();
            } else if (i2 == 2) {
                strE = aaVar.d();
            } else if (i2 == 3) {
                strE = aaVar.e();
            } else {
                strE = "";
            }
            b(strE);
            this.bj = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, int i3) {
        List<c.i> listV;
        Context contextL;
        c.k kVar;
        try {
            c.b bVar = this.aH;
            if (bVar == null || i3 != 1 || (listV = bVar.v()) == null) {
                return;
            }
            for (int i4 = 0; i4 < listV.size(); i4++) {
                c.i iVar = listV.get(i4);
                if (iVar != null && !TextUtils.isEmpty(iVar.c())) {
                    String strC = iVar.c();
                    if (strC.contains("track=oct")) {
                        int iAq = aq();
                        if (iAq != 0) {
                            strC = strC + "&opt=" + iAq;
                        }
                        String str2 = strC + "&result=" + i2;
                        if (i2 == 0 && (contextL = q.a().l()) != null && (kVar = this.ar) != null && kVar.a() == 1) {
                            new com.octopus.ad.d.a().a(contextL, this.ar.c(), this.ar.d(), this.ar.b());
                        }
                        a(str2, str);
                    } else if (i2 == 0) {
                        new com.octopus.ad.internal.i(strC).b();
                    }
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void a(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.octopus.ad.internal.b.f.6
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                byte[] bytes;
                try {
                    if (TextUtils.isEmpty(str2)) {
                        bytes = new byte[0];
                    } else {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("message", str2);
                        bytes = jSONObject.toString().getBytes();
                    }
                    com.octopus.ad.d.b.d.a(str, bytes);
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        }).start();
    }

    public void a(int i2) {
        com.octopus.ad.internal.d dVar;
        if (this.f34408J || (dVar = this.aP) == null) {
            return;
        }
        this.f34408J = true;
        o.a(new l("CHANGECONFIG", dVar.c(), this.aP.e(), i2, System.currentTimeMillis() - this.aP.i()));
    }

    public void a(int i2, String str, String str2) {
        List<c.i> listV;
        c.b bVar = this.aH;
        if (bVar == null || (listV = bVar.v()) == null) {
            return;
        }
        for (int i3 = 0; i3 < listV.size(); i3++) {
            c.i iVar = listV.get(i3);
            if (iVar != null && !TextUtils.isEmpty(iVar.e())) {
                new com.octopus.ad.internal.i(com.octopus.ad.internal.c.q.a(iVar.e(), i2, str, str2)).b();
            }
        }
    }

    public void a(View view, int i2, boolean z2, com.octopus.ad.a.d dVar) {
        Context context;
        if (view == null) {
            context = q.a().l();
        } else {
            context = view.getContext();
        }
        Context context2 = context;
        int i3 = this.f34417S + 1;
        this.f34417S = i3;
        a(context2, i2, this.f34421W, this.f34422X, z2, dVar, i3);
    }

    private void a(com.octopus.ad.a.d dVar) {
        int iAq;
        if (this.aH == null || this.aK == null) {
            return;
        }
        for (int i2 = 0; i2 < this.aK.size(); i2++) {
            c.i iVar = this.aK.get(i2);
            if (iVar != null && !TextUtils.isEmpty(iVar.b())) {
                String strB = iVar.b();
                if (strB.contains("?rv=1")) {
                    ViewUtil.openLocalBrowser(strB, this.f34434j);
                } else {
                    if (strB.contains("track=oct") && (iAq = aq()) != 0) {
                        strB = strB + "&opt=" + iAq;
                    }
                    String strA = com.octopus.ad.internal.c.q.a(strB, dVar, this.ax);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    com.octopus.ad.internal.d dVar2 = this.aP;
                    if (dVar2 != null) {
                        jCurrentTimeMillis = dVar2.i();
                    }
                    new u("clk", this.f34412N, this.ai, jCurrentTimeMillis, strA, ap(), this.aX).a();
                }
            }
        }
        this.aK = null;
    }

    @SuppressLint({"WrongConstant"})
    public void a(final Context context, int i2, boolean z2, boolean z3, boolean z4, com.octopus.ad.a.d dVar, final int i3) {
        boolean z5;
        int i4 = i2;
        if (!TextUtils.isEmpty(this.am)) {
            this.ae = true;
            OctUtil.a().a(this.am);
            a(OctUtil.a().d());
        }
        this.f34415Q = i4;
        this.f34421W = z2;
        this.f34422X = z3;
        this.f34423Y = z4;
        if (z2) {
            this.f34415Q = 10;
        } else if (z3) {
            this.f34415Q = 1;
        }
        com.octopus.ad.d.b.f.a("OctopusAd", "handleClick========" + this.f34407I);
        if (!this.f34407I) {
            this.f34407I = true;
            a(dVar);
        }
        com.octopus.ad.d.b.f.a("OctopusAd", "mDeepLinkUrl:" + this.aS + ",appDownloadURL = " + this.aE + ",mLandingPageUrl = " + this.aR);
        boolean zD = com.octopus.ad.d.b.i.d(context, this.aC);
        if ((!this.f34436l || zD || this.aA == 3) && !TextUtils.isEmpty(this.aS)) {
            try {
                if (q.a().f() && ((z5 = this.f34437m) || this.f34438n)) {
                    if (!z5) {
                        this.aV = null;
                    }
                    if ((i4 != 0 || z3 || z2) && z5 && !this.f34438n) {
                        this.af = true;
                        OctUtil.a().a(context, PointerIconCompat.TYPE_TEXT);
                    }
                    this.aU = this.aS;
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("packageName", this.aC);
                        jSONObject.put("link", this.aS);
                        this.aU = jSONObject.toString();
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                    if (this.f34418T > 0 && Build.MANUFACTURER.equalsIgnoreCase("vivo") && !q.a().f35029z) {
                        q.a().f35029z = true;
                        OctUtil.a().a(context.getApplicationContext(), 1003);
                        new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.f.7
                            @Override // java.lang.Runnable
                            public void run() {
                                OctUtil.a().b(context, f.this.aU, f.this.aV, f.this.f34438n, new OctUtil.C() { // from class: com.octopus.ad.internal.b.f.7.1
                                    @Override // com.octopus.ad.utils.OctUtil.C
                                    public String e(String str) {
                                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                        f.this.a(context, str, i3);
                                        return null;
                                    }
                                });
                            }
                        }, this.f34418T);
                    } else {
                        OctUtil.a().b(context, this.aU, this.aV, this.f34438n, new OctUtil.C() { // from class: com.octopus.ad.internal.b.f.8
                            @Override // com.octopus.ad.utils.OctUtil.C
                            public String e(String str) {
                                f.this.a(context, str, i3);
                                return null;
                            }
                        });
                    }
                } else {
                    a(context, i3);
                }
                k.a().a(new k.a() { // from class: com.octopus.ad.internal.b.f.9
                    @Override // com.octopus.ad.internal.k.a
                    public void a(String str) {
                        if ("AppSelfForeground".equals(str)) {
                            if (f.this.ae) {
                                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.f.9.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            OctUtil.a().e();
                                            f.this.ae = false;
                                        } catch (Throwable th) {
                                            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
                                        }
                                        if (f.this.af) {
                                            return;
                                        }
                                        k.a().b(this);
                                    }
                                }, f.this.an);
                            }
                            if (f.this.af) {
                                OctUtil.a().a(context, PointerIconCompat.TYPE_VERTICAL_TEXT);
                                f.this.af = false;
                                if (f.this.ae) {
                                    return;
                                }
                                k.a().b(this);
                            }
                        }
                    }
                });
                ar();
                this.ay = new k.a() { // from class: com.octopus.ad.internal.b.f.10
                    @Override // com.octopus.ad.internal.k.a
                    public void a(String str) {
                        if ("AppBackground".equals(str)) {
                            f.this.a(0, "", i3);
                            f.this.ar();
                        }
                    }
                };
                k.a().a(this.ay);
                a(9, "", i3);
                return;
            } catch (Throwable th) {
                b(context);
                a(-9, th.getMessage(), i3);
                return;
            }
        }
        if (TextUtils.isEmpty(this.aE) || this.aA != 2) {
            if (this.aA == 6) {
                boolean zA = a(context);
                a(zA ? 0 : -2, "", i3);
                if (zA) {
                    return;
                }
                b(context);
                return;
            }
            b(context);
            return;
        }
        if (zD) {
            com.octopus.ad.d.b.c.a(context, this.aC);
            return;
        }
        if (ad() && i4 == 0) {
            i4 = 6;
        }
        File fileA = com.octopus.ad.d.b.c.a(context);
        String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
        com.octopus.ad.d.c.a(context).b(context).a(this.ai).a(this.ap).a(this.aF).a(ad()).a(i4).a(this.aH).a(new com.octopus.ad.d.b(this.aE, this.aC + ".apk", this.aC, absolutePath, this.aB, this.aD, context.getPackageName() + ".octopus.provider", this.az)).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, int i2) {
        int i3;
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String strSubstring = "";
                if (str.equals("1")) {
                    i3 = 1;
                } else if (str.equals("-1")) {
                    i3 = -1;
                } else if (str.startsWith("-2,")) {
                    strSubstring = str.substring(3);
                    i3 = -2;
                } else if (str.equals("-3")) {
                    i3 = -3;
                } else if (str.equals("-4")) {
                    if (this.aZ) {
                        b(context);
                    }
                    i3 = -4;
                } else {
                    strSubstring = str;
                    i3 = -5;
                }
                if (i3 == -1 || i3 == -2 || i3 == -3) {
                    a(context, i2);
                }
                a(i3, strSubstring, i2);
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
    }

    private boolean a(Context context) {
        if (this.aG != null && com.octopus.ad.d.b.i.b("com.tencent.mm.opensdk.openapi.IWXAPI")) {
            IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(context, this.aG.b());
            if (iwxapiCreateWXAPI.isWXAppInstalled()) {
                WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
                req.userName = this.aG.c();
                req.path = this.aG.a();
                req.miniprogramType = 0;
                return iwxapiCreateWXAPI.sendReq(req);
            }
        }
        return false;
    }

    @SuppressLint({"WrongConstant"})
    private void a(Context context, int i2) {
        try {
            if (TextUtils.isEmpty(this.aS)) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.aS));
            intent.setFlags(268500993);
            context.startActivity(intent);
        } catch (Exception e2) {
            b(context);
            a(-9, e2.getMessage(), i2);
        }
    }

    public void a(com.octopus.ad.b.a aVar) {
        this.ap = aVar;
    }
}

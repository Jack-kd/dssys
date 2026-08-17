package com.beizi.fusion;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.anythink.core.common.f.g;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.v2.activity.BeiZiLandingActivity;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.beizi.fusion.y1;
import java.io.File;
import java.io.Serializable;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class rn {

    /* renamed from: A, reason: collision with root package name */
    private boolean f16001A;

    /* renamed from: A0, reason: collision with root package name */
    private zk f16002A0;

    /* renamed from: B, reason: collision with root package name */
    private y1.b.C0179b f16003B;

    /* renamed from: B0, reason: collision with root package name */
    private qh f16004B0;

    /* renamed from: C, reason: collision with root package name */
    private int f16005C;

    /* renamed from: C0, reason: collision with root package name */
    private jp f16006C0;

    /* renamed from: D, reason: collision with root package name */
    private String f16007D;

    /* renamed from: D0, reason: collision with root package name */
    private fl f16008D0;

    /* renamed from: E, reason: collision with root package name */
    private String f16009E;

    /* renamed from: E0, reason: collision with root package name */
    private List f16010E0;

    /* renamed from: F, reason: collision with root package name */
    private String f16011F;

    /* renamed from: F0, reason: collision with root package name */
    public boolean f16012F0;

    /* renamed from: G, reason: collision with root package name */
    private String f16013G;

    /* renamed from: G0, reason: collision with root package name */
    private String f16014G0;

    /* renamed from: H, reason: collision with root package name */
    private String f16015H;

    /* renamed from: H0, reason: collision with root package name */
    public y4 f16016H0;

    /* renamed from: I, reason: collision with root package name */
    private String f16017I;

    /* renamed from: I0, reason: collision with root package name */
    private qp f16018I0;

    /* renamed from: J, reason: collision with root package name */
    private String f16019J;

    /* renamed from: J0, reason: collision with root package name */
    private xk f16020J0;

    /* renamed from: K, reason: collision with root package name */
    private String f16021K;

    /* renamed from: K0, reason: collision with root package name */
    private g5 f16022K0;

    /* renamed from: L, reason: collision with root package name */
    private String f16023L;

    /* renamed from: L0, reason: collision with root package name */
    private int f16024L0;

    /* renamed from: M, reason: collision with root package name */
    private String f16025M;

    /* renamed from: M0, reason: collision with root package name */
    private int f16026M0;

    /* renamed from: N, reason: collision with root package name */
    private String f16027N;

    /* renamed from: N0, reason: collision with root package name */
    private int f16028N0;

    /* renamed from: O, reason: collision with root package name */
    private String f16029O;

    /* renamed from: P, reason: collision with root package name */
    private y1.b.a f16030P;

    /* renamed from: Q, reason: collision with root package name */
    private boolean f16031Q;

    /* renamed from: R, reason: collision with root package name */
    private boolean f16032R;

    /* renamed from: T, reason: collision with root package name */
    private int f16034T;

    /* renamed from: U, reason: collision with root package name */
    private y5 f16035U;

    /* renamed from: V, reason: collision with root package name */
    private y1.b f16036V;

    /* renamed from: W, reason: collision with root package name */
    private List f16037W;

    /* renamed from: X, reason: collision with root package name */
    private String f16038X;

    /* renamed from: Y, reason: collision with root package name */
    public wh f16039Y;

    /* renamed from: a, reason: collision with root package name */
    private k7 f16041a;

    /* renamed from: a0, reason: collision with root package name */
    private String f16042a0;

    /* renamed from: b0, reason: collision with root package name */
    private String f16044b0;

    /* renamed from: c0, reason: collision with root package name */
    private String f16046c0;

    /* renamed from: e0, reason: collision with root package name */
    private String f16050e0;

    /* renamed from: f0, reason: collision with root package name */
    private String f16052f0;

    /* renamed from: g0, reason: collision with root package name */
    private String f16054g0;

    /* renamed from: h0, reason: collision with root package name */
    private int f16056h0;

    /* renamed from: i0, reason: collision with root package name */
    private String f16058i0;

    /* renamed from: j0, reason: collision with root package name */
    private String f16060j0;

    /* renamed from: k0, reason: collision with root package name */
    private String f16062k0;

    /* renamed from: l, reason: collision with root package name */
    private String f16063l;

    /* renamed from: l0, reason: collision with root package name */
    private String f16064l0;

    /* renamed from: m0, reason: collision with root package name */
    private String f16066m0;

    /* renamed from: n0, reason: collision with root package name */
    private lm f16068n0;

    /* renamed from: o, reason: collision with root package name */
    private y1.g f16069o;

    /* renamed from: o0, reason: collision with root package name */
    private String f16070o0;

    /* renamed from: p, reason: collision with root package name */
    private String f16071p;

    /* renamed from: p0, reason: collision with root package name */
    private String f16072p0;

    /* renamed from: q, reason: collision with root package name */
    private String f16073q;

    /* renamed from: q0, reason: collision with root package name */
    private String f16074q0;

    /* renamed from: r, reason: collision with root package name */
    private String f16075r;

    /* renamed from: r0, reason: collision with root package name */
    private String f16076r0;

    /* renamed from: s, reason: collision with root package name */
    private p7 f16077s;

    /* renamed from: s0, reason: collision with root package name */
    private d4 f16078s0;

    /* renamed from: t0, reason: collision with root package name */
    private List f16080t0;

    /* renamed from: u, reason: collision with root package name */
    private long f16081u;

    /* renamed from: u0, reason: collision with root package name */
    private int f16082u0;

    /* renamed from: v, reason: collision with root package name */
    private boolean f16083v;

    /* renamed from: v0, reason: collision with root package name */
    private int f16084v0;

    /* renamed from: w, reason: collision with root package name */
    private boolean f16085w;

    /* renamed from: w0, reason: collision with root package name */
    private int f16086w0;

    /* renamed from: x, reason: collision with root package name */
    private boolean f16087x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f16089y;

    /* renamed from: y0, reason: collision with root package name */
    private nj f16090y0;

    /* renamed from: z, reason: collision with root package name */
    private boolean f16091z;

    /* renamed from: z0, reason: collision with root package name */
    private nj f16092z0;

    /* renamed from: b, reason: collision with root package name */
    private int f16043b = 0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16045c = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f16047d = false;

    /* renamed from: e, reason: collision with root package name */
    private int f16049e = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f16051f = 0;

    /* renamed from: g, reason: collision with root package name */
    private boolean f16053g = false;

    /* renamed from: h, reason: collision with root package name */
    private int f16055h = 0;

    /* renamed from: i, reason: collision with root package name */
    private e f16057i = new e();

    /* renamed from: j, reason: collision with root package name */
    private e f16059j = new e();

    /* renamed from: k, reason: collision with root package name */
    private boolean f16061k = true;

    /* renamed from: m, reason: collision with root package name */
    private boolean f16065m = false;

    /* renamed from: n, reason: collision with root package name */
    private y1.e f16067n = new y1.e();

    /* renamed from: t, reason: collision with root package name */
    private int f16079t = 0;

    /* renamed from: S, reason: collision with root package name */
    private int f16033S = -1;

    /* renamed from: Z, reason: collision with root package name */
    private List f16040Z = new LinkedList();

    /* renamed from: d0, reason: collision with root package name */
    private boolean f16048d0 = false;

    /* renamed from: x0, reason: collision with root package name */
    private boolean f16088x0 = true;

    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(y1.d dVar, y1.d dVar2) {
            try {
                int i2 = Integer.parseInt(dVar.s()) - Integer.parseInt(dVar2.s());
                if (i2 > 0) {
                    return -1;
                }
                return i2 < 0 ? 1 : 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                return -1;
            }
        }
    }

    public class b implements m1 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f16094a;

        public b(Context context) {
            this.f16094a = context;
        }

        @Override // com.beizi.fusion.m1
        public void a() {
            try {
                if (rn.this.f16003B != null) {
                    List listK = rn.this.f16003B.k();
                    rn.this.f16003B.q(null);
                    em.a(listK);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.beizi.fusion.m1
        public void b() {
            try {
                if (rn.this.f16088x0) {
                    if (rn.this.f16003B != null) {
                        List listJ = rn.this.f16003B.j();
                        rn.this.f16003B.p(null);
                        em.a(listJ);
                    }
                    rn.this.e(this.f16094a);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class c implements Comparator {
        public c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(y1.d dVar, y1.d dVar2) {
            try {
                int i2 = Integer.parseInt(dVar.s()) - Integer.parseInt(dVar2.s());
                if (i2 > 0) {
                    return -1;
                }
                return i2 < 0 ? 1 : 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                return -1;
            }
        }
    }

    public class d implements m1 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f16097a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f16098b;

        public d(int i2, Context context) {
            this.f16097a = i2;
            this.f16098b = context;
        }

        @Override // com.beizi.fusion.m1
        public void a() {
        }

        @Override // com.beizi.fusion.m1
        public void b() {
            try {
                if (this.f16097a == 0) {
                    rn.this.f16088x0 = true;
                    rn.this.c(this.f16098b);
                }
            } catch (Exception unused) {
                rn.this.f16088x0 = false;
                if (rn.this.f16003B != null) {
                    List listC = rn.this.f16003B.c();
                    rn.this.f16003B.e(null);
                    em.a(listC);
                }
                rn.this.a(this.f16098b);
            }
        }
    }

    public static class e {

        /* renamed from: c, reason: collision with root package name */
        public static int f16100c = 0;

        /* renamed from: d, reason: collision with root package name */
        public static int f16101d = 1;

        /* renamed from: a, reason: collision with root package name */
        String f16102a;

        /* renamed from: b, reason: collision with root package name */
        int f16103b = 0;

        public int b() {
            return this.f16103b;
        }

        public String a() {
            return this.f16102a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            this.f16102a = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i2) {
            this.f16103b = i2;
        }
    }

    public rn(String str, Map map, wh whVar) {
        if (str == null) {
            return;
        }
        this.f16039Y = whVar;
        this.f16066m0 = str;
        try {
            f(y1.i.a(str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        r0();
    }

    private void d(Context context) throws URISyntaxException {
        if (context == null) {
            return;
        }
        b4.j().a(new b(context));
        if (b(context)) {
            return;
        }
        c(context);
    }

    private boolean e(y1.i iVar) {
        if (iVar.b() > 0) {
            y1.j jVar = (y1.j) iVar.a().get(0);
            this.f16041a = jVar.c();
            this.f16043b = jVar.r();
            this.f16045c = jVar.n();
            this.f16047d = jVar.e();
            this.f16049e = jVar.m();
            this.f16051f = jVar.l();
            this.f16053g = jVar.f();
            List listB = jVar.b();
            this.f16080t0 = listB;
            if (listB != null && listB.size() > 0) {
                this.f16063l = ((y1.d) this.f16080t0.get(0)).s();
                this.f16071p = ((y1.d) this.f16080t0.get(0)).v();
                this.f16038X = ((y1.d) this.f16080t0.get(0)).b();
                this.f16079t = ((y1.d) this.f16080t0.get(0)).l();
                this.f16081u = (iVar.d() / com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND) + (this.f16079t * 1000);
                this.f16070o0 = ((y1.d) this.f16080t0.get(0)).t();
                this.f16074q0 = ((y1.d) this.f16080t0.get(0)).r();
                this.f16076r0 = ((y1.d) this.f16080t0.get(0)).e();
            }
            this.f16069o = jVar.d();
            this.f16016H0 = jVar.g();
            this.f16022K0 = jVar.h();
            this.f16026M0 = jVar.t();
            if (jVar.a() > 0) {
                int i2 = 0;
                for (y1.d dVar : jVar.b()) {
                    if (i2 == 0) {
                        this.f16038X = dVar.b();
                        nh.a("BeiZisAd", "mAdid = " + this.f16038X);
                    }
                    if (dVar.d() <= 0 || dVar.c().get(0) == null) {
                        y1.c cVarA = dVar.a();
                        if (cVarA != null) {
                            if (cVarA.b() != null) {
                                this.f16057i.a(cVarA.b());
                                this.f16057i.a(e.f16100c);
                            } else {
                                this.f16057i.a(cVarA.a());
                                this.f16057i.a(e.f16101d);
                            }
                            if (cVarA.d() != null) {
                                this.f16059j.a(cVarA.d());
                                this.f16059j.a(e.f16100c);
                            } else {
                                this.f16059j.a(cVarA.c());
                                this.f16059j.a(e.f16101d);
                            }
                        }
                        if (dVar.j() > 0) {
                            for (y1.a aVar : dVar.k()) {
                                this.f16077s = aVar.c();
                                this.f16072p0 = aVar.d();
                                b(aVar.d());
                                a(aVar);
                            }
                        }
                        if (dVar.m() != null) {
                            y1.b bVarM = dVar.m();
                            a(bVarM);
                            this.f16042a0 = bVarM.p();
                            this.f16046c0 = bVarM.u();
                            if (this.f16039Y == wh.REWARDEDVIDEO) {
                                this.f16044b0 = bVarM.k();
                            } else {
                                this.f16044b0 = Uri.decode(bVarM.k());
                            }
                        }
                        y1.e eVarW = dVar.w();
                        if (eVarW != null) {
                            this.f16067n.a(eVarW.c());
                            this.f16067n.b(eVarW.b());
                            this.f16067n.a(eVarW.a());
                        }
                        this.f16035U = dVar.i();
                        this.f16090y0 = dVar.o();
                        this.f16002A0 = dVar.q();
                        this.f16004B0 = dVar.n();
                        this.f16020J0 = dVar.p();
                        this.f16028N0 = dVar.g();
                    }
                    i2++;
                    if (!TextUtils.isEmpty(this.f16058i0) || !TextUtils.isEmpty(this.f16054g0) || !TextUtils.isEmpty(this.f16064l0) || n0()) {
                        break;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(this.f16058i0) && TextUtils.isEmpty(this.f16054g0) && TextUtils.isEmpty(this.f16064l0) && !n0()) {
            return false;
        }
        this.f16048d0 = true;
        return true;
    }

    private void f(y1.i iVar) {
        if (a(iVar)) {
            wh whVar = this.f16039Y;
            if (whVar == wh.NEW_SPLASH) {
                c(iVar);
                return;
            }
            if (whVar == wh.REWARDEDVIDEO) {
                d(iVar);
            } else if (whVar != wh.NATIVE) {
                e(iVar);
            } else {
                b(iVar);
            }
        }
    }

    private boolean g0() {
        rh rhVarE;
        try {
            g5 g5Var = this.f16022K0;
            if (g5Var == null || (rhVarE = g5Var.e()) == null) {
                return false;
            }
            int iE = rhVarE.e();
            return iE == 1 || iE == 2;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean k0() {
        int i2 = this.f16005C;
        return i2 == 2 ? !TextUtils.isEmpty(this.f16013G) && this.f16013G.startsWith("http") : i2 == 5 && !TextUtils.isEmpty(this.f16013G);
    }

    private boolean l0() {
        if (TextUtils.isEmpty(this.f16007D) || TextUtils.isEmpty(this.f16017I) || TextUtils.isEmpty(this.f16015H) || TextUtils.isEmpty(this.f16023L) || TextUtils.isEmpty(this.f16027N)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f16021K) && TextUtils.isEmpty(this.f16019J)) {
            return false;
        }
        int i2 = this.f16005C;
        return i2 == 2 || i2 == 5;
    }

    private boolean n0() {
        return this.f16077s == p7.RENDER_UNIFIED || !TextUtils.isEmpty(this.f16072p0);
    }

    private void r0() {
    }

    public String A() {
        return this.f16044b0;
    }

    public String B() {
        return this.f16013G;
    }

    public nj C() {
        return this.f16092z0;
    }

    public int D() {
        return this.f16079t;
    }

    public String E() {
        return this.f16058i0;
    }

    public int F() {
        return this.f16005C;
    }

    public String G() {
        return this.f16042a0;
    }

    public String H() {
        return this.f16060j0;
    }

    public e I() {
        return this.f16059j;
    }

    public String J() {
        return this.f16075r;
    }

    public p7 K() {
        return this.f16077s;
    }

    public int L() {
        return this.f16051f;
    }

    public int M() {
        return this.f16049e;
    }

    public String N() {
        y1.b bVar = this.f16036V;
        if (bVar == null) {
            return null;
        }
        return bVar.r();
    }

    public String O() {
        y1.b bVar = this.f16036V;
        if (bVar == null) {
            return null;
        }
        return bVar.s();
    }

    public pi P() {
        return this.f16078s0;
    }

    public qp Q() {
        return this.f16018I0;
    }

    public nj R() {
        try {
            nj njVar = this.f16090y0;
            if (njVar != null) {
                String strG = njVar.g();
                if (TextUtils.isEmpty(strG)) {
                    wh whVar = this.f16039Y;
                    if (whVar == wh.NEW_SPLASH || whVar == wh.NATIVE) {
                        strG = J();
                    } else if (whVar == wh.INTERSTITIAL) {
                        strG = E();
                    } else if (whVar == wh.REWARDEDVIDEO) {
                        strG = H();
                    } else if (whVar == wh.SPLASHUNIFIED) {
                        strG = d0();
                    }
                }
                this.f16090y0.c(strG);
            }
            return this.f16090y0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public zk S() {
        return this.f16002A0;
    }

    public String T() {
        return this.f16074q0;
    }

    public String U() {
        return this.f16009E;
    }

    public String V() {
        int i2 = this.f16082u0;
        return i2 > 0 ? String.valueOf(i2) : this.f16063l;
    }

    public String W() {
        return this.f16070o0;
    }

    public lm X() {
        return this.f16068n0;
    }

    public Map Y() {
        if (this.f16067n == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("forceUnreal", Boolean.valueOf(this.f16067n.c()));
        if (this.f16067n.b() > 0.0d) {
            map.put("maxAcc", Double.valueOf(this.f16067n.b()));
        }
        if (this.f16067n.a() > 0.0d) {
            map.put("angle", Double.valueOf(this.f16067n.a()));
        }
        return map;
    }

    public String Z() {
        return this.f16052f0;
    }

    public void a(Map map) {
    }

    public int a0() {
        return this.f16026M0;
    }

    public String b0() {
        return this.f16072p0;
    }

    public void c(boolean z2) {
    }

    public String c0() {
        return this.f16050e0;
    }

    public String d0() {
        return this.f16064l0;
    }

    public int e0() {
        return this.f16056h0;
    }

    public String f0() {
        return this.f16054g0;
    }

    public k7 g() {
        return this.f16041a;
    }

    public e h() {
        return this.f16057i;
    }

    public boolean h0() {
        return this.f16047d;
    }

    public String i() {
        return this.f16076r0;
    }

    public boolean i0() {
        return this.f16031Q;
    }

    public String j() {
        return this.f16007D;
    }

    public boolean j0() {
        return TextUtils.isEmpty(this.f16044b0) && l0() && k0();
    }

    public String k() {
        return this.f16017I;
    }

    public String l() {
        return this.f16013G;
    }

    public String m() {
        return this.f16062k0;
    }

    public boolean m0() {
        return this.f16045c;
    }

    public String n() {
        return this.f16019J;
    }

    public String o() {
        return this.f16021K;
    }

    public boolean o0() {
        return System.currentTimeMillis() < this.f16081u;
    }

    public String p() {
        return this.f16023L;
    }

    public boolean p0() {
        return !TextUtils.isEmpty(this.f16054g0);
    }

    public String q() {
        return this.f16015H;
    }

    public boolean q0() {
        return this.f16034T == 1;
    }

    public String r() {
        return this.f16027N;
    }

    public String s() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            y1.g gVar = this.f16069o;
            if (gVar != null) {
                jSONObject.put("raiseSortPrice", gVar.e());
                jSONObject.put("effectRate", this.f16069o.c());
                jSONObject.put("auctionType", this.f16069o.a());
                jSONObject.put("isLastLook", this.f16069o.d());
                jSONObject.put("winPriceMin", this.f16069o.g());
                jSONObject.put("winPriceMax", this.f16069o.f());
                jSONObject.put("customData", this.f16069o.b());
            } else {
                jSONObject.put("raiseSortPrice", -1);
                jSONObject.put("effectRate", -1);
                jSONObject.put("auctionType", -1);
                jSONObject.put("isLastLook", -1);
                jSONObject.put("winPriceMin", "");
                jSONObject.put("winPriceMax", "");
                jSONObject.put("customData", "");
            }
            try {
                int i2 = this.f16084v0;
                if (i2 > 0) {
                    jSONObject.put("secondPrice", i2);
                } else if (!TextUtils.isEmpty(this.f16071p)) {
                    jSONObject.put("secondPrice", Integer.parseInt(this.f16071p));
                }
            } catch (NumberFormatException | JSONException unused) {
            }
            return i2.b(ug.a(), w8.a(jSONObject.toString()));
        } catch (Exception unused2) {
            return null;
        }
    }

    public y4 t() {
        return this.f16016H0;
    }

    public int u() {
        return this.f16024L0;
    }

    public List v() {
        return this.f16010E0;
    }

    public g5 w() {
        rh rhVarE;
        try {
            g5 g5Var = this.f16022K0;
            if (g5Var != null && (rhVarE = g5Var.e()) != null) {
                int iB = rhVarE.b();
                int iD = rhVarE.d();
                if (iB == 0 && iD == 0) {
                    rhVarE.b(2);
                    this.f16022K0.a(rhVarE);
                }
            }
            return this.f16022K0;
        } catch (Exception unused) {
            return null;
        }
    }

    public int x() {
        return this.f16028N0;
    }

    public fl y() {
        return this.f16008D0;
    }

    public Map z() {
        if (this.f16035U == null) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            if (this.f16035U.d() > 0.0d) {
                map.put("maxAcc", Double.valueOf(this.f16035U.d()));
            }
            if (this.f16035U.a() > 0.0d) {
                map.put("angle", Double.valueOf(this.f16035U.a()));
            }
            if (this.f16035U.c() > 0.0d) {
                map.put("duration", Double.valueOf(this.f16035U.c()));
            }
            if (!TextUtils.isEmpty(this.f16035U.b())) {
                map.put("direction", this.f16035U.b());
            }
            return map;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean c(y1.i iVar) {
        if (iVar.b() > 0) {
            y1.j jVar = (y1.j) iVar.a().get(0);
            this.f16041a = jVar.c();
            this.f16043b = jVar.r();
            this.f16045c = jVar.n();
            this.f16047d = jVar.e();
            this.f16049e = jVar.m();
            this.f16051f = jVar.l();
            this.f16053g = jVar.f();
            List listB = jVar.b();
            this.f16080t0 = listB;
            if (listB != null && listB.size() > 0) {
                this.f16063l = ((y1.d) this.f16080t0.get(0)).s();
                this.f16071p = ((y1.d) this.f16080t0.get(0)).v();
                this.f16038X = ((y1.d) this.f16080t0.get(0)).b();
                this.f16079t = ((y1.d) this.f16080t0.get(0)).l();
                this.f16081u = (iVar.d() / com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND) + (this.f16079t * 1000);
                this.f16070o0 = ((y1.d) this.f16080t0.get(0)).t();
                this.f16074q0 = ((y1.d) this.f16080t0.get(0)).r();
                this.f16076r0 = ((y1.d) this.f16080t0.get(0)).e();
            }
            this.f16069o = jVar.d();
            this.f16016H0 = jVar.g();
            this.f16022K0 = jVar.h();
            this.f16026M0 = jVar.t();
            if (jVar.a() > 0) {
                int i2 = 0;
                for (y1.d dVar : jVar.b()) {
                    if (i2 == 0) {
                        this.f16038X = dVar.b();
                        nh.a("BeiZisAd", "mAdid = " + this.f16038X);
                    }
                    if (dVar.d() <= 0 || dVar.c().get(0) == null) {
                        y1.c cVarA = dVar.a();
                        if (cVarA != null) {
                            if (cVarA.b() != null) {
                                this.f16057i.a(cVarA.b());
                                this.f16057i.a(e.f16100c);
                            } else {
                                this.f16057i.a(cVarA.a());
                                this.f16057i.a(e.f16101d);
                            }
                            if (cVarA.d() != null) {
                                this.f16059j.a(cVarA.d());
                                this.f16059j.a(e.f16100c);
                            } else {
                                this.f16059j.a(cVarA.c());
                                this.f16059j.a(e.f16101d);
                            }
                        }
                        if (dVar.j() > 0) {
                            for (y1.a aVar : dVar.k()) {
                                this.f16077s = aVar.c();
                                this.f16072p0 = aVar.d();
                                b(aVar.d());
                                if (aVar.b() > 0) {
                                    if (this.f16077s == p7.RENDER_VIDEO) {
                                        this.f16054g0 = ((y1.f) aVar.a().get(0)).a();
                                    } else {
                                        this.f16075r = ((y1.f) aVar.a().get(0)).a();
                                    }
                                }
                            }
                        }
                        if (dVar.m() != null) {
                            y1.b bVarM = dVar.m();
                            a(bVarM);
                            this.f16042a0 = bVarM.p();
                            this.f16046c0 = bVarM.u();
                            if (this.f16039Y == wh.REWARDEDVIDEO) {
                                this.f16044b0 = bVarM.k();
                            } else {
                                this.f16044b0 = Uri.decode(bVarM.k());
                            }
                        }
                        y1.e eVarW = dVar.w();
                        if (eVarW != null) {
                            this.f16067n.a(eVarW.c());
                            this.f16067n.b(eVarW.b());
                            this.f16067n.a(eVarW.a());
                        }
                        this.f16035U = dVar.i();
                        this.f16090y0 = dVar.o();
                        this.f16002A0 = dVar.q();
                        this.f16004B0 = dVar.n();
                        this.f16008D0 = dVar.h();
                        this.f16010E0 = dVar.f();
                        this.f16020J0 = dVar.p();
                        this.f16028N0 = dVar.g();
                    }
                    i2++;
                    if (!TextUtils.isEmpty(this.f16075r) || !TextUtils.isEmpty(this.f16054g0) || n0()) {
                        break;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(this.f16075r) && TextUtils.isEmpty(this.f16054g0) && !n0()) {
            return false;
        }
        this.f16048d0 = true;
        return true;
    }

    public void b(boolean z2) {
        this.f16065m = z2;
    }

    private boolean b(y1.i iVar) {
        if (iVar.b() > 0) {
            y1.j jVar = (y1.j) iVar.a().get(0);
            this.f16041a = jVar.c();
            this.f16043b = jVar.r();
            this.f16080t0 = jVar.b();
            this.f16045c = jVar.n();
            this.f16047d = jVar.e();
            this.f16049e = jVar.m();
            this.f16051f = jVar.l();
            this.f16053g = jVar.f();
            this.f16082u0 = jVar.u();
            this.f16084v0 = jVar.v();
            this.f16090y0 = jVar.p();
            this.f16002A0 = jVar.q();
            this.f16006C0 = jVar.w();
            this.f16069o = jVar.d();
            this.f16016H0 = jVar.g();
            this.f16018I0 = jVar.o();
            this.f16022K0 = jVar.h();
            this.f16026M0 = jVar.t();
            List list = this.f16080t0;
            if (list != null && list.size() > 0) {
                Collections.sort(this.f16080t0, new a());
                Iterator it = this.f16080t0.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    y1.d dVar = (y1.d) it.next();
                    int iY = dVar.y();
                    if (iY == 0) {
                        this.f16086w0 = iY;
                        this.f16063l = dVar.s();
                        this.f16071p = dVar.v();
                        this.f16038X = dVar.b();
                        this.f16079t = dVar.l();
                        this.f16081u = (iVar.d() / com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND) + (this.f16079t * 1000);
                        this.f16070o0 = dVar.t();
                        this.f16074q0 = dVar.r();
                        this.f16076r0 = dVar.e();
                        if (dVar.j() >= 0) {
                            for (y1.a aVar : dVar.k()) {
                                if (aVar.c() == p7.RENDER_JSON || aVar.c() == p7.RENDER_UNIFIED) {
                                    try {
                                        y1.c cVarA = dVar.a();
                                        if (cVarA != null) {
                                            if (cVarA.b() != null) {
                                                this.f16057i.a(cVarA.b());
                                                this.f16057i.a(e.f16100c);
                                            } else {
                                                this.f16057i.a(cVarA.a());
                                                this.f16057i.a(e.f16101d);
                                            }
                                            if (cVarA.d() != null) {
                                                this.f16059j.a(cVarA.d());
                                                this.f16059j.a(e.f16100c);
                                            } else {
                                                this.f16059j.a(cVarA.c());
                                                this.f16059j.a(e.f16101d);
                                            }
                                        }
                                        this.f16077s = aVar.c();
                                        this.f16072p0 = aVar.d();
                                        d4 d4VarA = d4.a(new JSONObject(aVar.d()));
                                        this.f16078s0 = d4VarA;
                                        d4VarA.a(I());
                                        this.f16078s0.b(h());
                                        this.f16075r = this.f16078s0.getImageUrl();
                                        if (dVar.m() != null) {
                                            a(dVar.m());
                                            y1.b bVarM = dVar.m();
                                            this.f16042a0 = bVarM.p();
                                            this.f16044b0 = bVarM.k();
                                            this.f16046c0 = bVarM.u();
                                            this.f16078s0.c(!so.b(this.f16042a0) ? this.f16042a0 : this.f16046c0);
                                            this.f16078s0.d(this.f16044b0);
                                            this.f16078s0.a(dVar.m());
                                            List listV = bVarM.v();
                                            if (listV != null && listV.size() > 0) {
                                                for (int i2 = 0; i2 < listV.size(); i2++) {
                                                    String strA = ((y1.h) listV.get(i2)).a();
                                                    if (!TextUtils.isEmpty(strA)) {
                                                        this.f16078s0.a(strA);
                                                    }
                                                    String strG = ((y1.h) listV.get(i2)).g();
                                                    if (!TextUtils.isEmpty(strG)) {
                                                        this.f16078s0.b(strG);
                                                    }
                                                }
                                            }
                                        }
                                        y1.e eVarW = dVar.w();
                                        if (eVarW != null) {
                                            this.f16067n.a(eVarW.c());
                                            this.f16067n.b(eVarW.b());
                                            this.f16067n.a(eVarW.a());
                                        }
                                        if (this.f16035U == null) {
                                            this.f16035U = dVar.i();
                                        }
                                        if (this.f16090y0 == null) {
                                            this.f16090y0 = dVar.o();
                                        }
                                        if (this.f16002A0 == null) {
                                            this.f16002A0 = dVar.q();
                                        }
                                        if (this.f16004B0 == null) {
                                            this.f16004B0 = dVar.n();
                                        }
                                        this.f16020J0 = dVar.p();
                                        d4 d4Var = this.f16078s0;
                                        if (d4Var != null) {
                                            d4Var.a(R());
                                            this.f16078s0.a(this.f16004B0);
                                            this.f16078s0.a(this.f16080t0);
                                            this.f16078s0.a(this.f16006C0);
                                            this.f16078s0.b(this.f16045c);
                                            this.f16078s0.a(this.f16020J0);
                                            this.f16078s0.a(this.f16022K0);
                                        }
                                        this.f16028N0 = dVar.g();
                                    } catch (JSONException unused) {
                                    }
                                    if (this.f16078s0 != null || n0()) {
                                        this.f16048d0 = true;
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public String d() {
        return this.f16066m0;
    }

    private void a(y1.b bVar) {
        this.f16036V = bVar;
        this.f16037W = bVar.v();
        this.f16003B = bVar.m();
        this.f16005C = bVar.n();
        this.f16007D = bVar.a();
        this.f16009E = bVar.t();
        this.f16011F = bVar.b();
        this.f16013G = bVar.d();
        if (TextUtils.isEmpty(this.f16009E)) {
            this.f16009E = "lance";
        }
        if (TextUtils.isEmpty(this.f16007D)) {
            this.f16007D = "BeiZi";
        }
        if (TextUtils.isEmpty(this.f16011F)) {
            this.f16011F = "Ad Download";
        }
        this.f16015H = bVar.i();
        this.f16017I = bVar.c();
        this.f16019J = bVar.f();
        this.f16021K = bVar.g();
        this.f16023L = bVar.h();
        this.f16025M = bVar.e();
        this.f16027N = bVar.j();
        y1.b.a aVarL = bVar.l();
        this.f16030P = aVarL;
        if (aVarL != null) {
            if (aVarL.a() == 1) {
                this.f16031Q = true;
            }
            if (this.f16030P.b() == 1) {
                this.f16032R = true;
            }
            this.f16034T = this.f16030P.c();
        }
    }

    public void d(boolean z2) {
        this.f16083v = z2;
    }

    private boolean d(y1.i iVar) {
        if (iVar.b() > 0) {
            y1.j jVar = (y1.j) iVar.a().get(0);
            this.f16041a = jVar.c();
            this.f16043b = jVar.r();
            this.f16045c = jVar.n();
            this.f16047d = jVar.e();
            this.f16049e = jVar.m();
            this.f16051f = jVar.l();
            this.f16053g = jVar.f();
            this.f16080t0 = jVar.b();
            this.f16082u0 = jVar.u();
            this.f16084v0 = jVar.v();
            if (jVar.s() != null) {
                this.f16068n0 = jVar.s();
                this.f16035U = jVar.i();
                this.f16090y0 = jVar.p();
                this.f16092z0 = jVar.j();
                this.f16002A0 = jVar.q();
                this.f16004B0 = jVar.k();
            }
            List list = this.f16080t0;
            if (list != null && list.size() > 0) {
                Collections.sort(this.f16080t0, new c());
                for (y1.d dVar : this.f16080t0) {
                    int iY = dVar.y();
                    if (iY == 0 || iY == 1) {
                        this.f16086w0 = iY;
                        this.f16063l = dVar.s();
                        this.f16071p = dVar.v();
                        this.f16038X = dVar.b();
                        this.f16079t = dVar.l();
                        this.f16081u = (iVar.d() / com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND) + (this.f16079t * 1000);
                        this.f16070o0 = dVar.t();
                        this.f16074q0 = dVar.r();
                        this.f16076r0 = dVar.e();
                        if (dVar.d() <= 0 || dVar.c().get(0) == null) {
                            y1.c cVarA = dVar.a();
                            if (cVarA != null) {
                                if (cVarA.b() != null) {
                                    this.f16057i.a(cVarA.b());
                                    this.f16057i.a(e.f16100c);
                                } else {
                                    this.f16057i.a(cVarA.a());
                                    this.f16057i.a(e.f16101d);
                                }
                                if (cVarA.d() != null) {
                                    this.f16059j.a(cVarA.d());
                                    this.f16059j.a(e.f16100c);
                                } else {
                                    this.f16059j.a(cVarA.c());
                                    this.f16059j.a(e.f16101d);
                                }
                            }
                            if (dVar.j() > 0) {
                                for (y1.a aVar : dVar.k()) {
                                    this.f16077s = aVar.c();
                                    this.f16072p0 = aVar.d();
                                    a(aVar.d());
                                }
                            }
                            if (dVar.m() != null) {
                                y1.b bVarM = dVar.m();
                                a(bVarM);
                                this.f16042a0 = bVarM.p();
                                this.f16046c0 = bVarM.u();
                                if (this.f16039Y == wh.REWARDEDVIDEO) {
                                    this.f16044b0 = bVarM.k();
                                } else {
                                    this.f16044b0 = Uri.decode(bVarM.k());
                                }
                            }
                            y1.e eVarW = dVar.w();
                            if (eVarW != null) {
                                this.f16067n.a(eVarW.c());
                                this.f16067n.b(eVarW.b());
                                this.f16067n.a(eVarW.a());
                            }
                            if (this.f16035U == null) {
                                this.f16035U = dVar.i();
                            }
                            if (this.f16068n0 == null) {
                                this.f16068n0 = dVar.u();
                            }
                            if (this.f16090y0 == null) {
                                this.f16090y0 = dVar.o();
                            }
                            if (this.f16002A0 == null) {
                                this.f16002A0 = dVar.q();
                            }
                            if (this.f16004B0 == null) {
                                this.f16004B0 = dVar.n();
                            }
                            this.f16020J0 = dVar.p();
                            this.f16028N0 = dVar.g();
                        }
                    }
                }
            }
            this.f16069o = jVar.d();
            this.f16016H0 = jVar.g();
            this.f16022K0 = jVar.h();
            this.f16026M0 = jVar.t();
        }
        if (TextUtils.isEmpty(this.f16054g0) && TextUtils.isEmpty(this.f16060j0) && !n0()) {
            return false;
        }
        this.f16048d0 = true;
        return true;
    }

    public void f(View view, String str) {
        List listV;
        String strG;
        int i2 = this.f16055h;
        if (i2 <= 0) {
            this.f16055h = i2 + 1;
            y1.b bVar = this.f16036V;
            if (bVar == null || (listV = bVar.v()) == null) {
                return;
            }
            for (int i3 = 0; i3 < listV.size(); i3++) {
                y1.h hVar = (y1.h) listV.get(i3);
                if (hVar != null && !TextUtils.isEmpty(hVar.g()) && view != null) {
                    if (!TextUtils.isEmpty(str)) {
                        strG = hVar.g().replace("__REQUESTUUID__", str);
                    } else {
                        strG = hVar.g();
                    }
                    if (!TextUtils.isEmpty(this.f16073q)) {
                        strG = strG.replace(xo.f17472a, this.f16073q);
                    }
                    if (this.f16083v) {
                        strG = strG.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(0, view, strG)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
            }
        }
    }

    private boolean f(Context context) {
        y1.b bVar = this.f16036V;
        if (bVar == null) {
            return false;
        }
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (bVar.o() == 0) {
            return false;
        }
        String strR = this.f16036V.r();
        String strS = this.f16036V.s();
        String strQ = this.f16036V.q();
        if (!TextUtils.isEmpty(strR) && !TextUtils.isEmpty(strS)) {
            return kq.a(context, strR, strS, strQ);
        }
        String strW = this.f16036V.w();
        if (!TextUtils.isEmpty(strW)) {
            return kq.a(context, strW);
        }
        return false;
    }

    private boolean a(y1.i iVar) {
        return iVar.c() == 0;
    }

    public void a(View view, String str, String str2, String str3, String str4, String str5, String str6, boolean z2, String str7) {
        Context context;
        y1.b.C0179b c0179b;
        y1.b.C0179b c0179b2;
        View rootView;
        String strA;
        nh.a("BeiZisAd", "handleClick========" + z2);
        if (!z2 && this.f16036V != null && this.f16037W != null) {
            for (int i2 = 0; i2 < this.f16037W.size(); i2++) {
                y1.h hVar = (y1.h) this.f16037W.get(i2);
                if (hVar != null && !TextUtils.isEmpty(hVar.a())) {
                    if (!TextUtils.isEmpty(str7)) {
                        strA = sp.a(hVar.a(), str, str2, str3, str4, str5, str6, "").replace("__REQUESTUUID__", str7);
                    } else {
                        strA = sp.a(hVar.a(), str, str2, str3, str4, str5, str6, "");
                    }
                    if (this.f16083v) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
            }
            this.f16037W = null;
        }
        if (g0()) {
            return;
        }
        nh.a("BeiZisAd", "mDeepLinkUrl:" + this.f16044b0 + ",appDownloadURL = " + this.f16013G + ",mLandingPageUrl = " + this.f16042a0);
        if (view != null) {
            try {
                context = view.getContext();
            } catch (Exception unused) {
                context = null;
            }
        } else {
            context = null;
        }
        try {
            if (!(context instanceof Activity) && view != null && view.getRootView() != null && (rootView = view.getRootView()) != null) {
                context = rootView.getContext();
            }
        } catch (Exception unused2) {
        }
        if (context == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f16044b0)) {
            try {
                boolean z3 = sg.a(context, this.f16044b0) || c8.a(context, this.f16009E) || this.f16044b0.startsWith("hwpps://landingpage") || this.f16044b0.startsWith("intent") || this.f16044b0.startsWith("hap://");
                if (z3 && (c0179b2 = this.f16003B) != null) {
                    List listF = c0179b2.f();
                    this.f16003B.h(null);
                    em.a(listF);
                }
                this.f16088x0 = true;
                d(context);
                if (!z3 && (c0179b = this.f16003B) != null) {
                    List listG = c0179b.g();
                    this.f16003B.i(null);
                    em.a(listG);
                }
                y1.b.C0179b c0179b3 = this.f16003B;
                if (c0179b3 != null) {
                    List listD = c0179b3.d();
                    this.f16003B.f(null);
                    em.a(listD);
                    return;
                }
                return;
            } catch (Exception unused3) {
                this.f16088x0 = false;
                y1.b.C0179b c0179b4 = this.f16003B;
                if (c0179b4 != null) {
                    List listC = c0179b4.c();
                    this.f16003B.e(null);
                    em.a(listC);
                }
                a(context);
                return;
            }
        }
        a(context);
    }

    public int f() {
        return this.f16086w0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        if (context == null) {
            return;
        }
        if (f(context)) {
            y1.b.C0179b c0179b = this.f16003B;
            if (c0179b != null) {
                List listH = c0179b.h();
                this.f16003B.k(null);
                em.a(listH);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.f16042a0) || !this.f16042a0.startsWith("http")) {
            return;
        }
        try {
            if (this.f16061k) {
                Intent intent = new Intent(context, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.f16031Q);
                bundle.putBoolean("isDownload", l0());
                if (!TextUtils.isEmpty(this.f16044b0)) {
                    boolean z2 = true;
                    if (this.f16034T != 1) {
                        z2 = false;
                    }
                    bundle.putBoolean("webDeepLink", z2);
                    bundle.putString("deeplinkUrl", this.f16044b0);
                }
                if (!TextUtils.isEmpty(this.f16042a0)) {
                    bundle.putString("landingPageUrl", this.f16042a0);
                }
                y1.b.C0179b c0179b2 = this.f16003B;
                if (c0179b2 != null) {
                    bundle.putSerializable("followTrackExt", c0179b2);
                }
                qh qhVar = this.f16004B0;
                if (qhVar != null) {
                    bundle.putSerializable("lpOptimizeModule", qhVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(this.f16042a0)));
            intent2.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent2);
        } catch (Exception unused) {
        }
    }

    public String c() {
        return this.f16038X;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) throws URISyntaxException {
        Intent uri;
        if (context == null) {
            return;
        }
        Uri uri2 = Uri.parse(this.f16044b0);
        if (uri2.getScheme() != null && uri2.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri2.getHost()) && uri2.getPathSegments().size() > 0) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            intent.addCategory("android.intent.category.LAUNCHER");
            String queryParameter = uri2.getQueryParameter("flags");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    if (!queryParameter.startsWith("0x") && !queryParameter.startsWith("0X")) {
                        intent.setFlags(Integer.parseInt(queryParameter));
                    } else {
                        intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                    }
                } catch (Exception unused) {
                }
            }
            intent.setComponent(new ComponentName(uri2.getHost(), uri2.getPathSegments().get(0)));
            String queryParameter2 = uri2.getQueryParameter("rect");
            if (!TextUtils.isEmpty(queryParameter2)) {
                try {
                    String[] strArrSplit = queryParameter2.split(":");
                    if (strArrSplit.length == 4) {
                        Rect rect = new Rect();
                        rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                        intent.setSourceBounds(rect);
                    }
                } catch (Exception unused2) {
                }
            }
            context.startActivity(intent);
            return;
        }
        if (this.f16044b0.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri2);
            intent2.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent2);
            return;
        }
        if (this.f16044b0.startsWith("intent")) {
            try {
                uri = Intent.parseUri(this.f16044b0, 1);
                try {
                    uri.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                } catch (Exception unused3) {
                }
            } catch (Exception unused4) {
                uri = null;
            }
            context.startActivity(uri);
            return;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW", uri2);
        intent3.addFlags(805339136);
        context.startActivity(intent3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            if (l0() && k0()) {
                int i2 = this.f16005C;
                if (i2 == 2) {
                    if (c8.a(context, this.f16009E)) {
                        c8.b(context, this.f16009E);
                        y1.b.C0179b c0179b = this.f16003B;
                        if (c0179b != null) {
                            List listI = c0179b.i();
                            this.f16003B.l(null);
                            em.a(listI);
                            return;
                        }
                        return;
                    }
                    a(context, 1);
                    return;
                }
                if (i2 == 5) {
                    if (sg.a(context, this.f16013G)) {
                        if (!this.f16032R && this.f16033S != 0) {
                            a(context, 2);
                            return;
                        }
                        a(this.f16013G, context);
                        y1.b.C0179b c0179b2 = this.f16003B;
                        if (c0179b2 != null) {
                            List listI2 = c0179b2.i();
                            this.f16003B.l(null);
                            em.a(listI2);
                            return;
                        }
                        return;
                    }
                    e(context);
                    return;
                }
                return;
            }
            e(context);
        } catch (Exception unused) {
        }
    }

    public void d(View view, String str) {
        y1.d dVarA;
        y1.b bVarM;
        List listV;
        String strF;
        if (this.f16091z || this.f16036V == null || (dVarA = a(0)) == null || (bVarM = dVarA.m()) == null || (listV = bVarM.v()) == null) {
            return;
        }
        this.f16091z = true;
        for (int i2 = 0; i2 < listV.size(); i2++) {
            y1.h hVar = (y1.h) listV.get(i2);
            if (hVar != null && !TextUtils.isEmpty(hVar.f()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strF = hVar.f().replace("__REQUESTUUID__", str);
                } else {
                    strF = hVar.f();
                }
                if (this.f16083v) {
                    strF = strF.replace(xo.f17473b, "1");
                }
                new i5(so.a(0, view, strF)).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }

    public void e(View view, String str) {
        y1.d dVarA;
        y1.b bVarM;
        List listV;
        String strC;
        if (this.f16085w || this.f16036V == null || (dVarA = a(0)) == null || (bVarM = dVarA.m()) == null || (listV = bVarM.v()) == null) {
            return;
        }
        this.f16085w = true;
        for (int i2 = 0; i2 < listV.size(); i2++) {
            y1.h hVar = (y1.h) listV.get(i2);
            if (hVar != null && !TextUtils.isEmpty(hVar.c()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strC = hVar.c().replace("__REQUESTUUID__", str);
                } else {
                    strC = hVar.c();
                }
                if (this.f16083v) {
                    strC = strC.replace(xo.f17473b, "1");
                }
                new i5(so.a(0, view, strC)).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }

    private void a(Context context, int i2) {
        try {
            File fileF = c8.f(context);
            String absolutePath = "";
            if (fileF != null) {
                absolutePath = fileF.getAbsolutePath();
            }
            ApkBean apkBean = new ApkBean(this.f16013G, this.f16009E + ".apk", this.f16009E, absolutePath, this.f16007D, this.f16011F, context.getPackageName() + ".bz.fileprovider", this.f16003B, this.f16015H, this.f16017I, this.f16019J, this.f16021K, this.f16023L, this.f16025M, this.f16027N);
            apkBean.setFileMD5(this.f16029O);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i2);
            bundle.putBoolean("isCanJump", this.f16031Q);
            bundle.putBoolean("isDownload", l0());
            if (i2 == 2) {
                y1.b.C0179b c0179b = this.f16003B;
                if (c0179b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0179b.i());
                }
                bundle.putString("landingPageUrl", this.f16042a0);
            }
            if (!TextUtils.isEmpty(this.f16044b0)) {
                bundle.putString("deeplinkUrl", this.f16044b0);
                bundle.putInt("webDeepLink", this.f16034T);
            }
            Serializable serializable = this.f16004B0;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public boolean b() {
        return this.f16048d0;
    }

    private void b(String str) {
        JSONArray jSONArrayA;
        JSONArray jSONArrayA2;
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                this.f16050e0 = qg.e(jSONObject, "Headline");
                this.f16052f0 = qg.e(jSONObject, "Body");
                this.f16062k0 = qg.e(jSONObject, "AppIcon");
                this.f16058i0 = qg.e(jSONObject, "Image");
                this.f16054g0 = qg.e(jSONObject, "videoUrl");
                this.f16060j0 = qg.e(jSONObject, "lauchImageUrl");
                if (TextUtils.isEmpty(this.f16058i0) && (jSONArrayA2 = qg.a(jSONObject, "Images")) != null && jSONArrayA2.length() > 0) {
                    this.f16058i0 = (String) jSONArrayA2.get(0);
                }
                if (TextUtils.isEmpty(this.f16054g0) && (jSONArrayA = qg.a(jSONObject, "Videos")) != null && jSONArrayA.length() > 0) {
                    this.f16054g0 = (String) jSONArrayA.get(0);
                }
                if (jSONObject.has("apkFileMD5")) {
                    this.f16029O = qg.e(jSONObject, "apkFileMD5");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List e() {
        return this.f16080t0;
    }

    public void e(boolean z2) {
        this.f16012F0 = z2;
    }

    public void c(View view, String str) {
        y1.d dVarA;
        y1.b bVarM;
        List listV;
        String strE;
        if (this.f16089y || this.f16036V == null || (dVarA = a(0)) == null || (bVarM = dVarA.m()) == null || (listV = bVarM.v()) == null) {
            return;
        }
        this.f16089y = true;
        for (int i2 = 0; i2 < listV.size(); i2++) {
            y1.h hVar = (y1.h) listV.get(i2);
            if (hVar != null && !TextUtils.isEmpty(hVar.e()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strE = hVar.e().replace("__REQUESTUUID__", str);
                } else {
                    strE = hVar.e();
                }
                if (this.f16083v) {
                    strE = strE.replace(xo.f17473b, "1");
                }
                new i5(so.a(0, view, strE)).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }

    public void b(Map map) {
        Object obj;
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null) {
                if (obj instanceof String) {
                    this.f16073q = (String) obj;
                }
                if (TextUtils.isEmpty(this.f16073q)) {
                    return;
                }
                String strB = i2.b(ug.a(), this.f16073q);
                this.f16073q = strB;
                this.f16073q = Uri.encode(strB);
            }
        } catch (Exception unused) {
        }
    }

    private void a(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    public void a(View view, h5 h5Var, String str, String str2, boolean z2, String str3, int i2) {
        Context context;
        y1.b.C0179b c0179b;
        y1.b.C0179b c0179b2;
        String strA;
        nh.a("BeiZisAd", "handleClick========" + z2);
        int i3 = i2;
        this.f16033S = i3;
        if (!z2 && this.f16036V != null && this.f16037W != null) {
            int i4 = 0;
            while (i4 < this.f16037W.size()) {
                y1.h hVar = (y1.h) this.f16037W.get(i4);
                if (hVar != null && !TextUtils.isEmpty(hVar.a())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i3).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2);
                    }
                    if (this.f16083v) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                i4++;
                i3 = i2;
            }
            this.f16037W = null;
        }
        if (g0()) {
            return;
        }
        nh.a("BeiZisAd", "mDeepLinkUrl:" + this.f16044b0 + ",appDownloadURL = " + this.f16013G + ",mLandingPageUrl = " + this.f16042a0);
        if (view != null) {
            try {
                context = view.getContext();
            } catch (Exception unused) {
                context = null;
            }
        } else {
            context = null;
        }
        try {
            nh.a("BeiZisAd", "context:" + context + "; flag =" + (context instanceof Activity));
            if (!(context instanceof Activity) && view != null && view.getRootView() != null) {
                View rootView = view.getRootView();
                if (rootView != null) {
                    context = rootView.getContext();
                }
                nh.a("BeiZisAd", " rootView context:" + context + "; flag =" + (context instanceof Activity));
            }
        } catch (Exception unused2) {
        }
        if (context == null) {
            return;
        }
        if (this.f16077s == p7.RENDER_UNIFIED && this.f16012F0) {
            try {
                if (TextUtils.isEmpty(this.f16014G0)) {
                    this.f16014G0 = so.a();
                }
                h8.a().a(this.f16003B, this.f16014G0);
                Intent intent = new Intent(context, (Class<?>) BeiZiLandingActivity.class);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                Bundle bundle = new Bundle();
                bundle.putString("requestUUID", this.f16014G0);
                bundle.putBoolean("isRedirectionCanJump", this.f16031Q);
                bundle.putBoolean("isDownload", l0());
                if (!TextUtils.isEmpty(this.f16044b0)) {
                    bundle.putBoolean("webDeepLink", this.f16034T == 1);
                    bundle.putString("deeplinkUrl", this.f16044b0);
                }
                if (!TextUtils.isEmpty(this.f16042a0)) {
                    bundle.putString("landingPageUrl", this.f16042a0);
                }
                y1.b.C0179b c0179b3 = this.f16003B;
                if (c0179b3 != null) {
                    bundle.putSerializable("followTrackExt", c0179b3);
                }
                qh qhVar = this.f16004B0;
                if (qhVar != null) {
                    bundle.putSerializable("lpOptimizeModule", qhVar);
                }
                bundle.putString("apkName", this.f16007D);
                bundle.putString("appDeveloper", this.f16017I);
                bundle.putString("appVersion", this.f16015H);
                bundle.putString("appPrivacyUrl", this.f16023L);
                bundle.putString("appintro", this.f16027N);
                bundle.putString("appPermissionsUrl", this.f16021K);
                bundle.putString("appPermissionsDesc", this.f16019J);
                bundle.putInt("interactType", this.f16005C);
                bundle.putString("appDownloadURL", this.f16013G);
                bundle.putString("packageName", this.f16009E);
                bundle.putString("appDesc", this.f16011F);
                bundle.putString("appIconURL", this.f16025M);
                bundle.putBoolean("isCloseConfirmDialog", this.f16032R);
                y1.b bVar = this.f16036V;
                if (bVar != null && bVar.o() == 1) {
                    bundle.putInt("isMiniProgram", this.f16036V.o());
                    bundle.putString("miniProgramId", this.f16036V.r());
                    bundle.putString("miniProgramPath", this.f16036V.s());
                    bundle.putString("miniProgramExt", this.f16036V.q());
                    bundle.putString("wechat_canvas", this.f16036V.w());
                }
                xk xkVar = this.f16020J0;
                if (xkVar != null) {
                    bundle.putString("tokenInfo", xkVar.c());
                    bundle.putString("oppoReqId", this.f16020J0.b());
                }
                intent.putExtra("data", bundle);
                context.startActivity(intent);
                return;
            } catch (Exception unused3) {
                return;
            }
        }
        if (!TextUtils.isEmpty(this.f16044b0)) {
            try {
                boolean z3 = sg.a(context, this.f16044b0) || c8.a(context, this.f16009E) || this.f16044b0.startsWith("hwpps://landingpage") || this.f16044b0.startsWith("intent") || this.f16044b0.startsWith("hap://");
                this.f16088x0 = true;
                d(context);
                if (z3 && (c0179b2 = this.f16003B) != null) {
                    List listF = c0179b2.f();
                    this.f16003B.h(null);
                    em.a(listF);
                }
                if (!z3 && (c0179b = this.f16003B) != null) {
                    List listG = c0179b.g();
                    this.f16003B.i(null);
                    em.a(listG);
                }
                y1.b.C0179b c0179b4 = this.f16003B;
                if (c0179b4 != null) {
                    List listD = c0179b4.d();
                    this.f16003B.f(null);
                    em.a(listD);
                    return;
                }
                return;
            } catch (Exception unused4) {
                this.f16088x0 = false;
                y1.b.C0179b c0179b5 = this.f16003B;
                if (c0179b5 != null) {
                    List listC = c0179b5.c();
                    this.f16003B.e(null);
                    em.a(listC);
                }
                a(context);
                return;
            }
        }
        a(context);
    }

    public void b(View view, String str) {
        y1.d dVarA;
        y1.b bVarM;
        List listV;
        String strD;
        if (this.f16087x || this.f16036V == null || (dVarA = a(0)) == null || (bVarM = dVarA.m()) == null || (listV = bVarM.v()) == null) {
            return;
        }
        this.f16087x = true;
        for (int i2 = 0; i2 < listV.size(); i2++) {
            y1.h hVar = (y1.h) listV.get(i2);
            if (hVar != null && !TextUtils.isEmpty(hVar.d()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strD = hVar.d().replace("__REQUESTUUID__", str);
                } else {
                    strD = hVar.d();
                }
                if (this.f16083v) {
                    strD = strD.replace(xo.f17473b, "1");
                }
                new i5(so.a(0, view, strD)).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }

    private boolean b(Context context) {
        try {
            xk xkVar = this.f16020J0;
            if (xkVar == null) {
                return false;
            }
            String strC = xkVar.c();
            String strB = this.f16020J0.b();
            int iA = this.f16020J0.a();
            if (TextUtils.isEmpty(strC) || TextUtils.isEmpty(strB) || !b4.j().p()) {
                return false;
            }
            String strA = i3.a(strC);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            new ci().a(this.f16044b0, strA, strB, new d(iA, context));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void b(int i2) {
        this.f16024L0 = i2;
    }

    private void a(y1.a aVar) {
        List listA;
        y1.f fVar;
        if (aVar == null) {
            return;
        }
        try {
            if (aVar.c() == p7.RENDER_PIC && (listA = aVar.a()) != null && listA.size() != 0 && (fVar = (y1.f) listA.get(0)) != null) {
                this.f16064l0 = fVar.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(g.a.f3271h)) {
                    this.f16050e0 = qg.e(jSONObject, g.a.f3271h);
                }
                if (jSONObject.has("desc")) {
                    this.f16052f0 = qg.e(jSONObject, "desc");
                }
                if (jSONObject.has("appIcon")) {
                    this.f16062k0 = qg.e(jSONObject, "appIcon");
                }
                if (jSONObject.has("lauchImageUrl")) {
                    this.f16060j0 = qg.e(jSONObject, "lauchImageUrl");
                }
                if (jSONObject.has("videoUrl")) {
                    this.f16054g0 = qg.e(jSONObject, "videoUrl");
                }
                if (jSONObject.has("videoTime")) {
                    this.f16056h0 = qg.c(jSONObject, "videoTime");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(View view, String str) {
        y1.d dVarA;
        y1.b bVarM;
        List listV;
        String strB;
        if (this.f16001A || this.f16036V == null || (dVarA = a(0)) == null || (bVarM = dVarA.m()) == null || (listV = bVarM.v()) == null) {
            return;
        }
        this.f16001A = true;
        for (int i2 = 0; i2 < listV.size(); i2++) {
            y1.h hVar = (y1.h) listV.get(i2);
            if (hVar != null && !TextUtils.isEmpty(hVar.b()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strB = hVar.b().replace("__REQUESTUUID__", str);
                } else {
                    strB = hVar.b();
                }
                if (this.f16083v) {
                    strB = strB.replace(xo.f17473b, "1");
                }
                new i5(so.a(0, view, strB)).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }

    public void a(boolean z2) {
        try {
            this.f16088x0 = z2;
            d4 d4Var = this.f16078s0;
            if (d4Var != null) {
                d4Var.a(z2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(View view, h5 h5Var, String str, String str2, String str3, int i2) {
        String strA;
        int i3 = i2;
        try {
            this.f16033S = i3;
            if (this.f16036V == null || this.f16037W == null) {
                return;
            }
            int i4 = 0;
            while (i4 < this.f16037W.size()) {
                y1.h hVar = (y1.h) this.f16037W.get(i4);
                if (hVar != null && !TextUtils.isEmpty(hVar.a())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i3).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2);
                    }
                    if (this.f16083v) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                i4++;
                i3 = i2;
            }
            this.f16037W = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(y1.d dVar, View view, String str) {
        y1.b bVarM;
        String strG;
        if (dVar == null || (bVarM = dVar.m()) == null) {
            return;
        }
        dVar.b(true);
        List listV = bVarM.v();
        if (listV != null) {
            for (int i2 = 0; i2 < listV.size(); i2++) {
                y1.h hVar = (y1.h) listV.get(i2);
                if (hVar != null && !TextUtils.isEmpty(hVar.g()) && view != null) {
                    if (!TextUtils.isEmpty(str)) {
                        strG = hVar.g().replace("__REQUESTUUID__", str);
                    } else {
                        strG = hVar.g();
                    }
                    if (!TextUtils.isEmpty(this.f16073q)) {
                        strG = strG.replace(xo.f17472a, this.f16073q);
                    }
                    if (this.f16083v) {
                        strG = strG.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(0, view, strG)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                hVar.j(null);
            }
        }
    }

    public void a(y1.d dVar, View view, h5 h5Var, String str, String str2, boolean z2, String str3, int i2) {
        String strA;
        a(dVar);
        y1.b bVarM = dVar.m();
        if (bVarM == null) {
            return;
        }
        dVar.a(true);
        List listV = bVarM.v();
        if (listV != null) {
            for (int i3 = 0; i3 < listV.size(); i3++) {
                y1.h hVar = (y1.h) listV.get(i3);
                if (hVar != null && !TextUtils.isEmpty(hVar.a())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2);
                    }
                    if (this.f16083v) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                hVar.a(null);
            }
        }
        a(view, h5Var, str, str2, z2, str3, i2);
    }

    private void a(y1.d dVar) {
        if (dVar == null) {
            return;
        }
        y1.b bVarM = dVar.m();
        if (bVarM != null) {
            a(bVarM);
            this.f16042a0 = bVarM.p();
            this.f16046c0 = bVarM.u();
            if (this.f16039Y == wh.REWARDEDVIDEO) {
                this.f16044b0 = bVarM.k();
            } else {
                this.f16044b0 = Uri.decode(bVarM.k());
            }
        }
        this.f16020J0 = null;
        this.f16020J0 = dVar.p();
    }

    public y1.d a(int i2) {
        List list = this.f16080t0;
        if (list != null && !list.isEmpty()) {
            for (y1.d dVar : this.f16080t0) {
                if (dVar.y() == i2) {
                    return dVar;
                }
            }
        }
        return null;
    }

    public void a(String str, String str2, String str3) {
        try {
            lm lmVar = this.f16068n0;
            if (lmVar == null) {
                return;
            }
            String strL = lmVar.l();
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            this.f16068n0.a((String) null);
            if (!TextUtils.isEmpty(str)) {
                strL = strL.replace("__REQUESTUUID__", str);
            }
            if (strL.contains(".UTC_TS.")) {
                strL = strL.replaceAll(".UTC_TS.", String.valueOf(System.currentTimeMillis()));
            }
            if (strL.contains("__USER_ID__") && !TextUtils.isEmpty(str2)) {
                strL = strL.replace("__USER_ID__", str2);
            }
            if (strL.contains("__USER_CUSTOM_DATA__") && !TextUtils.isEmpty(str3)) {
                strL = strL.replace("__USER_CUSTOM_DATA__", Uri.encode(str3));
            }
            new i5(strL).executeOnExecutor(x3.c().g(), new Void[0]);
        } catch (Exception unused) {
        }
    }

    public void a() {
        h8.a().a(this.f16014G0);
    }
}

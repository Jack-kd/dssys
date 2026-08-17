package com.anythink.core.common.u;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdMixBidInfo;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATWaterfallFilter;
import com.anythink.core.api.AdError;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.c.d.c;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.af;
import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.au;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.ba;
import com.anythink.core.common.h.be;
import com.anythink.core.common.h.bk;
import com.anythink.core.common.h.bl;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.ce;
import com.anythink.core.common.h.cg;
import com.anythink.core.common.h.h;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.r;
import com.anythink.core.common.h.u;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.v;
import com.anythink.core.common.v.ag;
import com.anythink.core.common.v.p;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.anythink.core.mg.api.MgAdInfo;
import com.anythink.core.mg.api.MgComparedResult;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static final int f7848a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f7849b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f7850c = 7;

    /* renamed from: d, reason: collision with root package name */
    public static final int f7851d = 8;

    /* renamed from: e, reason: collision with root package name */
    public static final int f7852e = 9;

    /* renamed from: f, reason: collision with root package name */
    public static final int f7853f = 10;

    /* renamed from: g, reason: collision with root package name */
    public static final int f7854g = 3;

    /* renamed from: h, reason: collision with root package name */
    public static final int f7855h = 11;

    /* renamed from: i, reason: collision with root package name */
    public static final int f7856i = 12;

    /* renamed from: j, reason: collision with root package name */
    public static final int f7857j = 4;

    /* renamed from: k, reason: collision with root package name */
    public static final int f7858k = 5;

    /* renamed from: l, reason: collision with root package name */
    public static final int f7859l = 5;

    /* renamed from: m, reason: collision with root package name */
    public static final int f7860m = 0;

    /* renamed from: n, reason: collision with root package name */
    public static final int f7861n = 1;

    /* renamed from: o, reason: collision with root package name */
    public static final int f7862o = 1;

    /* renamed from: p, reason: collision with root package name */
    public static final int f7863p = 2;

    /* renamed from: q, reason: collision with root package name */
    public static final int f7864q = 3;

    /* renamed from: r, reason: collision with root package name */
    public static final int f7865r = 1;

    /* renamed from: s, reason: collision with root package name */
    public static final int f7866s = 2;

    /* renamed from: t, reason: collision with root package name */
    public static final int f7867t = 3;

    /* renamed from: u, reason: collision with root package name */
    public static final int f7868u = 4;

    /* renamed from: v, reason: collision with root package name */
    public static final int f7869v = 5;

    /* renamed from: w, reason: collision with root package name */
    public static final int f7870w = 0;

    /* renamed from: x, reason: collision with root package name */
    private static final String f7871x = "f";

    public static void a(n nVar, AdError adError) {
        a(nVar, adError, (by) null);
    }

    private static void b() {
    }

    private static void c(n nVar, String str) {
        try {
            u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
            uVar.f4395c = "1004639";
            uVar.a(nVar);
            uVar.f4408p = String.valueOf(nVar.Z());
            uVar.f4409q = nVar.N();
            uVar.f4410r = String.valueOf(nVar.P());
            uVar.f4411s = str;
            uVar.f4387S = nVar.aS();
            uVar.f4389U = nVar.aJ();
            uVar.f4390V = nVar.aK();
            uVar.ab = nVar.aF();
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(n nVar, AdError adError, by byVar) {
        try {
            u uVar = new u(nVar.aS(), null);
            uVar.f4395c = "1004630";
            uVar.a(nVar);
            m mVarA = o.a(s.b().g()).a(nVar.aQ());
            uVar.f4403k = mVarA != null ? mVarA.am() : "";
            if (adError != null) {
                uVar.f4408p = adError.printStackTrace();
                uVar.f4409q = adError.getCode();
            }
            if (byVar != null) {
                uVar.f4410r = byVar.G();
                uVar.f4411s = String.valueOf(com.anythink.core.common.v.o.a(byVar));
            }
            uVar.f4389U = nVar.aJ();
            uVar.f4390V = nVar.aK();
            uVar.ab = nVar.aF();
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    public static void b(String str, String str2, String str3) {
        b(str, str2, str3, "");
    }

    public static void b(String str, String str2, String str3, String str4) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004647";
        uVar.f4398f = str3;
        uVar.f4408p = str2;
        uVar.f4409q = str;
        uVar.f4410r = str4;
        a(uVar);
    }

    private static void b(x xVar, w wVar, int i2, long j2, long j3, long j4, long j5) {
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004708";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(xVar.f4490j);
        uVar.f4409q = xVar.f4485e;
        uVar.f4410r = String.valueOf(xVar.f4482b);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4411s = rVar.Q();
            uVar.f4412t = rVar.i();
        }
        uVar.f4413u = String.valueOf(i2);
        uVar.f4414v = String.valueOf(j2);
        uVar.f4415w = String.format("%.2f", Double.valueOf((j3 / 1024.0d) / 1024.0d));
        uVar.f4416x = String.valueOf(j4);
        uVar.f4417y = String.format("%.2f", Double.valueOf((j5 / 1024.0d) / 1024.0d));
        y yVar = xVar.f4500t;
        if (yVar != null && yVar.N() > 0) {
            uVar.f4418z = String.valueOf(xVar.f4500t.N());
        }
        a(uVar);
    }

    public static void c(n nVar, String str, String str2) {
        if (nVar == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004750";
        uVar.a(nVar);
        uVar.f4396d = nVar.aR();
        uVar.f4397e = nVar.aQ();
        uVar.f4403k = nVar.aP();
        uVar.f4400h = String.valueOf(nVar.aa());
        uVar.f4407o = String.valueOf(nVar.aO());
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.aS());
        uVar.f4411s = str;
        if (!TextUtils.isEmpty(str2)) {
            uVar.f4412t = str2;
        }
        a(uVar);
    }

    public static void a(n nVar, String str, int i2, String str2, String str3, int i3, int i4, AdError adError, int i5, double d2, long j2, int i6, int i7, String str4, String str5, JSONObject jSONObject, int i8, String str6) {
        String platformMSG;
        u uVar = new u(str3, String.valueOf(i2));
        uVar.f4395c = "1004631";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = str2;
        uVar.f4410r = String.valueOf(i3);
        if (!TextUtils.isEmpty(str6)) {
            uVar.f4411s = "15";
        } else {
            uVar.f4411s = String.valueOf(i4);
        }
        String strAm = "";
        uVar.f4412t = adError != null ? adError.getPlatformCode() : "";
        if (adError == null) {
            platformMSG = "";
        } else {
            platformMSG = adError.getPlatformMSG();
        }
        uVar.f4413u = platformMSG;
        uVar.f4414v = String.valueOf(i5);
        uVar.f4415w = String.valueOf(d2);
        if (i4 == 0) {
            uVar.f4416x = String.valueOf(j2);
        }
        uVar.f4417y = String.valueOf(i6);
        uVar.f4418z = String.valueOf(i7);
        if (i8 >= -1) {
            uVar.f4369A = String.valueOf(i8);
        }
        m mVarA = o.a(s.b().g()).a(str);
        if (mVarA != null) {
            strAm = mVarA.am();
        }
        uVar.f4403k = strAm;
        uVar.f4389U = str4;
        uVar.f4390V = str5;
        if (jSONObject != null) {
            uVar.ab = jSONObject;
        }
        if (nVar.aC() > 0.0d) {
            uVar.f4371C = String.valueOf(nVar.aC());
        }
        if (!TextUtils.isEmpty(nVar.aD())) {
            uVar.f4372D = nVar.aD();
        }
        if (nVar.aE() > 0.0d) {
            uVar.f4373E = String.valueOf(nVar.aE());
        }
        a(uVar);
    }

    private static void b(w wVar, x xVar, int i2) {
        int iK = wVar.g() != null ? wVar.g().K() : 1;
        u uVar = new u(null, null);
        uVar.f4395c = "1004719";
        uVar.a(xVar);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4408p = rVar.Q();
            uVar.f4409q = rVar.i();
        }
        uVar.f4410r = "1";
        uVar.f4411s = "1";
        uVar.f4414v = String.valueOf(xVar.f4482b);
        if (wVar.g() != null) {
            uVar.f4415w = wVar.g().u();
        }
        uVar.f4416x = String.valueOf(i2);
        uVar.f4417y = String.valueOf(iK);
        a(uVar);
    }

    private static void c(w wVar, x xVar, int i2) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004768";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4409q = rVar.Q();
            uVar.f4410r = String.valueOf(rVar.P());
        }
        uVar.f4411s = String.valueOf(i2);
        a(uVar);
    }

    private static void c(u uVar) {
        m mVarB = o.a(s.b().g()).b(uVar.f4397e);
        if (mVarB != null) {
            uVar.f4391W = mVarB.aN();
        }
    }

    public static void b(n nVar, String str, String str2) {
        if (nVar == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004745";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.aS());
        uVar.f4411s = str;
        if (!TextUtils.isEmpty(str2)) {
            uVar.f4412t = str2;
        }
        a(uVar);
    }

    public static void a(final n nVar, final int i2, final AdError adError) {
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8095D, new Runnable() { // from class: com.anythink.core.common.u.f.1

            /* renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f7875d = -1;

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ long f7876e = 0;

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    String strA = f.a(adError, nVar.Z(), nVar.aQ(), i2);
                    n nVar2 = nVar;
                    String strAQ = nVar2.aQ();
                    int iZ = nVar.Z();
                    String strN = nVar.N();
                    String strAS = nVar.aS();
                    int i3 = this.f7875d;
                    int i4 = i2;
                    AdError adError2 = adError;
                    int iK = nVar.K();
                    double dM = nVar.M();
                    long j2 = this.f7876e;
                    int iAd = nVar.ad();
                    n nVar3 = nVar;
                    f.a(nVar2, strAQ, iZ, strN, strAS, i3, i4, adError2, iK, dM, j2, iAd, nVar3.f4342t, nVar3.aJ(), nVar.aK(), nVar.aF(), nVar.aq(), strA);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public static void a(final n nVar, final int i2, final AdError adError, final long j2) {
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8096E, new Runnable() { // from class: com.anythink.core.common.u.f.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    String strA = f.a(adError, nVar.Z(), nVar.aQ(), i2);
                    n nVar2 = nVar;
                    String strAQ = nVar2.aQ();
                    int iZ = nVar.Z();
                    String strN = nVar.N();
                    String strAS = nVar.aS();
                    int iP = nVar.P();
                    int i3 = i2;
                    AdError adError2 = adError;
                    int iK = nVar.K();
                    double dM = nVar.M();
                    long j3 = j2;
                    int iAd = nVar.ad();
                    n nVar3 = nVar;
                    f.a(nVar2, strAQ, iZ, strN, strAS, iP, i3, adError2, iK, dM, j3, iAd, nVar3.f4342t, nVar3.aJ(), nVar.aK(), nVar.aF(), nVar.aq(), strA);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public static void a(String str, String str2, m mVar, int i2, af afVar, Map<String, Object> map, ae aeVar) {
        a(str, str2, mVar, i2, afVar.toString(), map, aeVar);
    }

    public static void a(String str, String str2, m mVar, int i2, String str3, Map<String, Object> map, ae aeVar) {
        Object objValueOf;
        String strAm;
        try {
            String strB = "";
            u uVar = new u(mVar != null ? String.valueOf(mVar.ap()) : "", "");
            uVar.f4395c = "1004633";
            uVar.a(mVar);
            uVar.a(aeVar);
            uVar.f4396d = str;
            uVar.f4397e = str2;
            uVar.f4400h = String.valueOf(mVar != null ? mVar.ax() : 0);
            uVar.f4404l = "0";
            if (mVar == null) {
                objValueOf = "";
            } else {
                objValueOf = Integer.valueOf(mVar.ah());
            }
            uVar.f4407o = String.valueOf(objValueOf);
            uVar.f4408p = String.valueOf(i2);
            uVar.f4409q = str3;
            uVar.f4412t = str;
            uVar.f4413u = "0";
            if (mVar == null) {
                strAm = "";
            } else {
                strAm = mVar.am();
            }
            uVar.f4403k = strAm;
            if (mVar != null) {
                strB = mVar.B();
            }
            uVar.f4389U = strB;
            if (map != null) {
                Object obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID);
                if (obj != null) {
                    uVar.f4390V = obj.toString();
                }
                JSONObject jSONObjectA = ag.a(map);
                if (jSONObjectA != null) {
                    uVar.ab = jSONObjectA;
                }
            }
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    private static void b(w wVar, x xVar, int i2, int i3) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004747";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = String.valueOf(i2);
        if (i3 > 0) {
            uVar.f4411s = String.valueOf(i3);
        }
        uVar.f4412t = String.valueOf(wVar.v());
        uVar.f4413u = wVar.r();
        uVar.f4414v = wVar.s();
        a(uVar);
    }

    public static void b(n nVar) {
        com.anythink.core.common.h.d dVarG = nVar.g();
        int iV = nVar.V();
        if (dVarG == null || !v.a().a(nVar.aQ())) {
            return;
        }
        u uVar = new u(nVar.aS(), null);
        uVar.f4395c = "1004754";
        uVar.a(nVar);
        uVar.f4396d = nVar.aR();
        uVar.f4397e = nVar.aQ();
        uVar.f4400h = String.valueOf(nVar.aa());
        uVar.f4407o = String.valueOf(nVar.aO());
        uVar.f4408p = String.valueOf(iV);
        uVar.f4409q = dVarG.a();
        uVar.f4410r = dVarG.d();
        uVar.f4411s = String.valueOf(dVarG.e());
        uVar.f4412t = String.valueOf(dVarG.i());
        uVar.f4413u = String.valueOf(dVarG.g());
        uVar.f4414v = String.valueOf(dVarG.f());
        uVar.f4415w = String.valueOf(dVarG.h());
        a(uVar);
    }

    public static void a(n nVar, by byVar, ATWaterfallFilter.PriceInterval priceInterval) {
        if (s.b().g() == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004777";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(byVar.n());
        uVar.f4410r = String.valueOf(byVar.G());
        if (priceInterval != null) {
            try {
                uVar.f4411s = String.valueOf(priceInterval.getLessPrice());
                uVar.f4412t = priceInterval.getScurrency().name();
            } catch (Exception unused) {
            }
        }
        a(uVar);
    }

    public static void a(n nVar, boolean z2) {
        if (s.b().g() == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004634";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.Q());
        uVar.f4411s = z2 ? "1" : "0";
        uVar.f4412t = String.valueOf(nVar.f4321E);
        if (nVar.Z() == 66) {
            int iAk = nVar.ak();
            if (iAk != 0) {
                uVar.f4413u = String.valueOf(iAk);
            }
            int iAm = nVar.am();
            if (iAm != 0) {
                uVar.f4415w = String.valueOf(iAm);
            }
            int iAn = nVar.an();
            if (iAn != 0) {
                uVar.f4416x = String.valueOf(iAn);
            }
        }
        uVar.f4414v = nVar.aS();
        uVar.f4417y = String.valueOf(nVar.ax());
        uVar.f4418z = String.valueOf(nVar.aw());
        uVar.f4369A = String.valueOf(nVar.ay());
        uVar.f4370B = nVar.ai() == 2 ? "2" : "1";
        m mVarA = o.a(s.b().g()).a(nVar.aQ());
        uVar.f4403k = mVarA != null ? mVarA.am() : "";
        uVar.f4387S = nVar.aS();
        uVar.f4389U = nVar.aJ();
        uVar.f4390V = nVar.aK();
        uVar.ab = nVar.aF();
        a(uVar);
        d.a().a(uVar, nVar);
    }

    public static void b(String str, String str2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004755";
        uVar.f4408p = str;
        if (!TextUtils.isEmpty(str2)) {
            uVar.f4409q = str2;
        }
        a(uVar);
    }

    private static void b(x xVar, w wVar, String str, String str2, String str3, String str4) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), "66");
        uVar.f4395c = "1004743";
        uVar.f4396d = xVar.f4486f;
        uVar.f4397e = xVar.f4481a;
        uVar.a(xVar);
        uVar.f4408p = str;
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4409q = String.valueOf(rVar.Q());
            uVar.f4410r = String.valueOf(rVar.i());
        }
        uVar.f4411s = String.valueOf(xVar.f4482b);
        uVar.f4412t = str2;
        uVar.f4413u = "1";
        uVar.f4414v = str3;
        uVar.f4415w = str4;
        a(uVar);
    }

    public static void b(n nVar, int i2) {
        ATAdRequest aTAdRequestB;
        if (nVar == null || (aTAdRequestB = nVar.b()) == null || aTAdRequestB.getPreLoadInfo() == null || aTAdRequestB.getPreLoadInfo().getPreLoadCallbackRegister() == null || aTAdRequestB.getPreLoadInfo().getPreLoadCallbackRegister().getMgAdInfo() == null) {
            return;
        }
        MgPreLoadAdRequest preLoadInfo = aTAdRequestB.getPreLoadInfo();
        MgAdInfo mgAdInfo = preLoadInfo.getPreLoadCallbackRegister().getMgAdInfo();
        int cpEcpmReceiveTime = preLoadInfo.getCpEcpmReceiveTime();
        if (!MgAdInfo.isMgAdInfoValid(mgAdInfo) || cpEcpmReceiveTime > 0) {
            return;
        }
        preLoadInfo.setCpEcpmReceiveTime(i2);
        u uVar = new u(null, null);
        uVar.f4395c = "1004760";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(i2);
        MgComparedResult mgComparedResult = aTAdRequestB.getPreLoadInfo().getMgComparedResult();
        uVar.f4409q = String.valueOf(mgComparedResult != null ? mgComparedResult.getCpCostTime() : 0L);
        double cpPrice = mgComparedResult != null ? mgComparedResult.getCpPrice() : 0.0d;
        if (cpPrice > 0.0d) {
            uVar.f4410r = String.valueOf(cpPrice);
        }
        a(uVar);
    }

    public static void a(String str, String str2, boolean z2, int i2, m mVar, com.anythink.core.common.h.c cVar, af afVar, String str3, Map<String, Object> map, com.anythink.core.common.h.d dVar, ae aeVar) {
        a(str, str2, z2, i2, mVar, cVar, afVar, str3, map, dVar, 0L, aeVar);
    }

    public static void a(final String str, final String str2, final boolean z2, final int i2, final m mVar, final com.anythink.core.common.h.c cVar, final af afVar, final String str3, final Map<String, Object> map, final com.anythink.core.common.h.d dVar, final long j2, final ae aeVar) {
        try {
            a(new Runnable() { // from class: com.anythink.core.common.u.f.3
                @Override // java.lang.Runnable
                public final void run() {
                    Object obj;
                    JSONObject jSONObjectA;
                    try {
                        com.anythink.core.common.h.c cVar2 = cVar;
                        n nVarI = cVar2 != null ? cVar2.i() : null;
                        m mVar2 = mVar;
                        u uVar = new u(mVar2 != null ? String.valueOf(mVar2.ap()) : "", nVarI != null ? String.valueOf(nVarI.Z()) : "");
                        uVar.f4395c = "1004632";
                        uVar.f4396d = str;
                        uVar.f4397e = str2;
                        uVar.a(nVarI);
                        if (nVarI == null) {
                            uVar.a(aeVar);
                            m mVar3 = mVar;
                            if (mVar3 != null) {
                                uVar.f4403k = mVar3.am();
                                uVar.f4400h = String.valueOf(mVar.ax());
                                uVar.f4407o = String.valueOf(mVar.ah());
                            }
                        }
                        if (TextUtils.isEmpty(uVar.f4400h)) {
                            m mVar4 = mVar;
                            if (mVar4 != null) {
                                uVar.f4400h = String.valueOf(mVar4.ax());
                            } else {
                                uVar.f4400h = "0";
                            }
                        }
                        uVar.f4408p = z2 ? "1" : "0";
                        uVar.f4409q = String.valueOf(i2);
                        uVar.f4410r = nVarI != null ? String.valueOf(nVarI.Q()) : "-1";
                        uVar.f4411s = nVarI != null ? nVarI.N() : "";
                        uVar.f4412t = nVarI != null ? String.valueOf(nVarI.Z()) : "";
                        uVar.f4413u = nVarI != null ? nVarI.f4347y : "";
                        af afVar2 = afVar;
                        uVar.f4414v = afVar2 != null ? afVar2.toString() : "";
                        uVar.f4415w = nVarI != null ? nVarI.aR() : str;
                        if (nVarI == null || TextUtils.equals(str, nVarI.aR())) {
                            uVar.f4416x = "0";
                        } else {
                            uVar.f4416x = "1";
                        }
                        if (nVarI != null) {
                            uVar.f4417y = nVarI.f4342t == 3 ? "1" : "0";
                        } else {
                            uVar.f4417y = "0";
                        }
                        uVar.f4418z = str3;
                        com.anythink.core.common.h.c cVar3 = cVar;
                        if (cVar3 != null && cVar3.l() == "3") {
                            uVar.f4370B = "1";
                        }
                        long j3 = j2;
                        if (j3 > 0) {
                            uVar.f4369A = String.valueOf(j3);
                        }
                        m mVar5 = mVar;
                        uVar.f4403k = mVar5 != null ? mVar5.am() : "";
                        m mVar6 = mVar;
                        uVar.f4387S = mVar6 != null ? String.valueOf(mVar6.ap()) : "";
                        if (nVarI != null) {
                            uVar.f4389U = nVarI.aJ();
                        } else {
                            m mVar7 = mVar;
                            if (mVar7 != null) {
                                uVar.f4389U = mVar7.B();
                            }
                        }
                        if (nVarI != null) {
                            uVar.f4390V = nVarI.aK();
                        } else {
                            Map map2 = map;
                            if (map2 != null && (obj = map2.get(ATAdConst.KEY.CP_PLACEMENT_ID)) != null) {
                                uVar.f4390V = obj.toString();
                            }
                        }
                        com.anythink.core.common.h.d dVar2 = dVar;
                        if (dVar2 != null) {
                            uVar.f4392X = dVar2.a();
                            uVar.f4393Y = dVar.b();
                            uVar.f4394Z = dVar.c();
                        }
                        if (nVarI != null) {
                            uVar.ab = nVarI.aF();
                        } else {
                            Map map3 = map;
                            if (map3 != null && (jSONObjectA = ag.a(map3)) != null) {
                                uVar.ab = jSONObjectA;
                            }
                        }
                        f.a(uVar);
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public static void a(n nVar, AdError adError, Map<String, Object> map) {
        if (s.b().g() == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004636";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.Q());
        if (adError != null) {
            uVar.f4411s = adError.getCode();
            uVar.f4412t = adError.getPlatformCode();
            uVar.f4413u = adError.getPlatformMSG();
        }
        m mVarA = o.a(s.b().g()).a(nVar.aQ());
        uVar.f4403k = mVarA != null ? mVarA.am() : "";
        uVar.f4387S = nVar.aS();
        if (map != null) {
            try {
                if (map.containsKey("offer_id")) {
                    uVar.f4414v = map.get("offer_id").toString();
                }
                if (map.containsKey("rv_anim_type") && nVar.aS().equals("1")) {
                    uVar.f4415w = map.get("rv_anim_type").toString();
                }
            } catch (Throwable unused) {
            }
        }
        uVar.f4389U = nVar.aJ();
        uVar.f4390V = nVar.aK();
        uVar.ab = nVar.aF();
        a(uVar);
    }

    private static void b(w wVar, x xVar, long j2, long j3) {
        String string;
        String string2;
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004761";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = "1";
        uVar.f4411s = String.valueOf(j2);
        uVar.f4412t = wVar.L();
        String string3 = "";
        if (wVar.g() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(wVar.g().Z());
            string = sb.toString();
        } else {
            string = "";
        }
        uVar.f4413u = string;
        if (wVar.g() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(wVar.g().X());
            string2 = sb2.toString();
        } else {
            string2 = "";
        }
        uVar.f4414v = string2;
        if (wVar.g() != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(wVar.g().Y());
            string3 = sb3.toString();
        }
        uVar.f4415w = string3;
        if (j3 > 0) {
            uVar.f4418z = String.valueOf(j3);
        }
        a(uVar);
    }

    public static void b(n nVar, String str) {
        u uVar = new u("", "");
        uVar.a(nVar);
        uVar.f4395c = "1004767";
        uVar.f4408p = str;
        a(uVar);
    }

    private static void b(u uVar) {
        if (uVar != null) {
            a(uVar);
        }
    }

    private static String b(AdError adError, int i2, String str, int i3) {
        com.anythink.core.common.w.a.b.c cVar;
        aj ajVarA;
        if (i3 == 0 && (cVar = (com.anythink.core.common.w.a.b.c) com.anythink.core.common.w.a.a.d.a(str, com.anythink.core.common.w.a.b.c.class)) != null && adError != null && (ajVarA = cVar.a()) != null && ajVarA.e() != null) {
            return com.anythink.core.common.w.a.d.a.a(adError.getPlatformCode() + "," + adError.getPlatformMSG(), ajVarA.e().get(Integer.valueOf(i2)));
        }
        return "";
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, ATAdRequest aTAdRequest) {
        a(str, str2, str3, str4, str5, str6, str7, aTAdRequest, "", 0);
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, ATAdRequest aTAdRequest, String str8, int i2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004616";
        uVar.a(aTAdRequest);
        uVar.f4397e = str5;
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = str4;
        uVar.f4412t = str6;
        uVar.f4413u = str7;
        uVar.f4414v = String.valueOf(p.a(s.b().g()) ? 1 : 0);
        uVar.f4415w = String.valueOf(com.anythink.core.e.d.a().aA());
        uVar.f4416x = str8;
        if (i2 > 0) {
            uVar.f4417y = String.valueOf(i2);
        }
        a(uVar);
    }

    public static void a(String str, String str2, long j2, long j3, long j4, ATAdRequest aTAdRequest) {
        a(str, str2, j2, j3, j4, aTAdRequest, "");
    }

    public static void a(String str, String str2, long j2, long j3, long j4, ATAdRequest aTAdRequest, String str3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004635";
        uVar.a(aTAdRequest);
        if (!TextUtils.isEmpty(str2)) {
            uVar.f4397e = str2;
        }
        uVar.f4408p = str;
        uVar.f4409q = String.valueOf(j2);
        uVar.f4410r = String.valueOf(j3);
        uVar.f4411s = String.valueOf(j4);
        uVar.f4412t = String.valueOf(com.anythink.core.e.d.a().aA());
        uVar.f4413u = str3;
        a(uVar);
    }

    public static void a(String str, String str2, String str3, String str4) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004637";
        uVar.f4397e = str;
        uVar.f4408p = str2;
        uVar.f4409q = str3;
        uVar.f4410r = str4;
        a(uVar);
    }

    public static void a(String str, String str2, String str3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004772";
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        a(uVar);
    }

    private static void a(w wVar, x xVar, String str) {
        a(wVar, xVar, false, str, 0.0d, 0.0d, 0L);
    }

    private static void a(w wVar, x xVar, double d2, double d3, long j2) {
        a(wVar, xVar, true, "", d2, d3, j2);
    }

    private static void a(w wVar, x xVar, boolean z2, String str, double d2, double d3, long j2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004764";
        uVar.a(xVar);
        if (wVar != null) {
            uVar.f4408p = String.valueOf(wVar.a());
            if (wVar instanceof r) {
                uVar.f4410r = ((r) wVar).Q();
                uVar.f4411s = wVar.i();
            }
            uVar.f4412t = wVar.q();
        }
        if (xVar != null) {
            uVar.f4409q = String.valueOf(xVar.f4482b);
            y yVar = xVar.f4500t;
            if (yVar != null) {
                uVar.f4417y = String.valueOf(yVar.y());
            }
        }
        uVar.f4413u = z2 ? "1" : "2";
        if (!TextUtils.isEmpty(str)) {
            uVar.f4414v = str;
        }
        if (d2 > 0.0d) {
            uVar.f4415w = String.valueOf(Math.round(d2 / 1024.0d));
        }
        if (d3 > 0.0d) {
            uVar.f4416x = String.valueOf(Math.round(d3 / 1024.0d));
        }
        if (j2 > 0) {
            uVar.f4418z = String.valueOf(j2);
        }
        a(uVar);
    }

    public static void a(n nVar) {
        try {
            u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
            uVar.f4395c = "1004640";
            uVar.a(nVar);
            uVar.f4408p = String.valueOf(nVar.Z());
            uVar.f4409q = nVar.N();
            uVar.f4410r = String.valueOf(nVar.P());
            uVar.f4411s = String.valueOf(nVar.ab());
            uVar.f4412t = String.valueOf(nVar.ac());
            uVar.f4389U = nVar.aJ();
            uVar.f4390V = nVar.aK();
            uVar.ab = nVar.aF();
            uVar.f4387S = nVar.aS();
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(int i2, int i3, int i4, int i5) {
        u uVar = new u(null, String.valueOf(i5));
        uVar.f4395c = "1004641";
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = String.valueOf(i3);
        uVar.f4410r = String.valueOf(i4);
        uVar.f4411s = String.valueOf(i5);
        a(uVar);
    }

    public static void a(String str, String str2, String str3, int i2, String str4, String str5, String str6) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004642";
        uVar.f4396d = str;
        uVar.ac = str5;
        uVar.ad = str6;
        uVar.f4408p = str2;
        uVar.f4409q = str3;
        uVar.f4410r = String.valueOf(i2);
        if (i2 == 3 || i2 == 10) {
            uVar.f4411s = str4;
        } else if (i2 == 2) {
            uVar.f4412t = "0";
            uVar.f4413u = "0.0";
        }
        a(uVar);
    }

    private static void a(String str, String str2, long j2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, String str9, String str10, int i3, long j3, long j4, String str11, String str12) {
        u uVar = new u(null, str3);
        uVar.f4395c = "1004711";
        uVar.f4396d = str;
        uVar.ac = str11;
        uVar.ad = str12;
        uVar.f4397e = str2;
        uVar.f4402j = String.valueOf(j2);
        uVar.f4408p = str3;
        uVar.f4409q = str4;
        uVar.f4410r = str5;
        uVar.f4411s = str6;
        if (!TextUtils.isEmpty(str7)) {
            uVar.f4412t = String.valueOf(str7.contains("data/data") ? 1 : 2);
        }
        uVar.f4413u = str8;
        uVar.f4414v = String.valueOf(i2);
        uVar.f4415w = str9;
        if (!"1".equals(str9)) {
            uVar.f4416x = str10;
        }
        uVar.f4417y = String.valueOf(i3);
        uVar.f4418z = String.valueOf(j3 / 1024.0f);
        uVar.f4369A = String.valueOf(j4);
        a(uVar);
    }

    private static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, String str9) {
        u uVar = new u(null, str3);
        uVar.f4395c = "1004712";
        uVar.f4396d = str;
        uVar.ac = str8;
        uVar.ad = str9;
        uVar.f4397e = str2;
        uVar.f4402j = String.valueOf(System.currentTimeMillis());
        uVar.f4408p = str3;
        uVar.f4409q = str4;
        uVar.f4410r = str5;
        uVar.f4411s = str6;
        uVar.f4412t = str7;
        uVar.f4413u = String.valueOf(i2);
        a(uVar);
    }

    public static void a(int i2, long j2, long j3, String str) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004644";
        uVar.f4398f = str;
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = String.valueOf(j2);
        uVar.f4410r = String.valueOf(j3);
        uVar.f4411s = String.valueOf(j3 - j2);
        a(uVar);
    }

    private static void a(int i2, long j2, long j3, String str, String str2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004651";
        uVar.f4398f = str;
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = String.valueOf(j3 - j2);
        uVar.f4410r = str2;
        a(uVar);
    }

    public static void a(n nVar, boolean z2, long j2, long j3, long j4) {
        try {
            if (s.b().g() == null) {
                return;
            }
            u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
            uVar.f4395c = "1004643";
            uVar.a(nVar);
            uVar.f4408p = nVar.aS();
            uVar.f4409q = String.valueOf(j2);
            uVar.f4410r = String.valueOf(j3);
            uVar.f4411s = String.valueOf(j4);
            uVar.f4412t = String.valueOf(nVar.Z());
            uVar.f4413u = nVar.N();
            uVar.f4414v = String.valueOf(nVar.Q());
            uVar.f4415w = String.valueOf(nVar.f4321E);
            uVar.f4416x = z2 ? "1" : "0";
            m mVarA = o.a(s.b().g()).a(nVar.aQ());
            uVar.f4403k = mVarA != null ? mVarA.am() : "";
            uVar.f4387S = nVar.aS();
            uVar.f4389U = nVar.aJ();
            uVar.f4390V = nVar.aK();
            uVar.ab = nVar.aF();
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, String str2, String str3, n nVar, m mVar, String str4, String str5) {
        try {
            u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
            uVar.f4395c = str;
            uVar.a(nVar);
            uVar.f4396d = nVar.aR();
            uVar.f4397e = str2;
            uVar.f4403k = mVar != null ? mVar.am() : "";
            uVar.f4408p = String.valueOf(nVar.Z());
            uVar.f4409q = nVar.N();
            uVar.f4410r = nVar.A();
            uVar.f4411s = nVar.p();
            uVar.f4412t = nVar.f4324H;
            uVar.f4413u = str4;
            uVar.f4414v = str5;
            uVar.f4415w = str3;
            uVar.f4389U = nVar.aJ();
            uVar.f4390V = nVar.aK();
            uVar.ab = nVar.aF();
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(x xVar, w wVar, int i2) {
        try {
            u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
            uVar.f4395c = "1004679";
            uVar.a(xVar);
            if (wVar instanceof r) {
                uVar.f4408p = ((r) wVar).Q();
            }
            uVar.f4409q = xVar.f4485e;
            uVar.f4410r = wVar.i();
            uVar.f4411s = String.valueOf(wVar.a());
            uVar.f4412t = wVar.c();
            uVar.f4413u = wVar.d();
            uVar.f4414v = String.valueOf(i2);
            a(uVar);
        } catch (Throwable unused) {
        }
    }

    private static void a(String str, String str2, m mVar, String str3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004646";
        uVar.f4396d = str;
        uVar.f4397e = str2;
        uVar.f4400h = String.valueOf(mVar.ax());
        uVar.f4407o = String.valueOf(mVar.ah());
        uVar.f4403k = mVar.am();
        uVar.f4415w = String.valueOf(str3);
        a(uVar);
    }

    private static void a(x xVar, w wVar, String str, String str2, String str3, String str4) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(null, null);
        uVar.f4395c = "1004648";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = String.valueOf(wVar.a());
        uVar.f4410r = str;
        uVar.f4411s = str2;
        uVar.f4412t = str3;
        uVar.f4413u = str4;
        a(uVar);
    }

    private static void a(x xVar, w wVar, String str, String str2, int i2, int i3, String str3) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004650";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = String.valueOf(wVar.a());
        uVar.f4410r = str;
        uVar.f4411s = str2;
        uVar.f4412t = String.valueOf(i2);
        if (wVar instanceof r) {
            uVar.f4414v = String.valueOf(((r) wVar).Q());
        }
        uVar.f4415w = String.valueOf(xVar.f4482b);
        if (i3 > 0) {
            uVar.f4416x = String.valueOf(i3);
        }
        uVar.f4417y = str3;
        a(uVar);
    }

    private static void a(x xVar, w wVar, String str, String str2, int i2) {
        if (xVar == null || wVar == null) {
            return;
        }
        boolean z2 = i2 == 0;
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004728";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = String.valueOf(xVar.f4500t.O());
        uVar.f4410r = String.valueOf(z2 ? 1 : 2);
        uVar.f4411s = str;
        uVar.f4412t = str2;
        if (!z2) {
            uVar.f4413u = String.valueOf(i2);
        }
        a(uVar);
    }

    private static void a(w wVar, x xVar, String str, String str2) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004652";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(xVar.f4490j);
        uVar.f4409q = xVar.f4485e;
        if (wVar instanceof ba) {
            uVar.f4410r = "1";
        } else if (wVar instanceof r) {
            uVar.f4410r = "2";
        } else if (wVar instanceof bk) {
            uVar.f4410r = "3";
        }
        uVar.f4411s = str;
        uVar.f4412t = str2;
        uVar.f4413u = wVar.i();
        uVar.f4414v = wVar.j();
        uVar.f4415w = wVar.t();
        uVar.f4416x = wVar.k();
        uVar.f4417y = wVar.l();
        uVar.f4418z = wVar.m();
        uVar.f4369A = wVar.n();
        uVar.f4370B = wVar.q();
        try {
            if (wVar instanceof bl) {
                StringBuilder sb = new StringBuilder();
                String strS = ((bl) wVar).S();
                if (!TextUtils.isEmpty(strS)) {
                    JSONArray jSONArray = new JSONArray(strS);
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        sb.append(jSONArray.optString(i2));
                        sb.append(",");
                    }
                    if (sb.length() > 1) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    uVar.f4371C = sb.toString();
                }
            }
        } catch (Throwable unused) {
        }
        a(uVar);
    }

    public static void a() {
        u uVar = new u(null, null);
        uVar.f4395c = "1004657";
        a(uVar);
    }

    public static void a(ay ayVar, double d2, String str, double d3, double d4, double d5, double d6, String str2, String str3, boolean z2) {
        a(ayVar, d2, str, d3, d4, d5, d6, str2, str3, z2, 0.0d);
    }

    public static void a(ay ayVar, double d2, String str, double d3, double d4, double d5, double d6, String str2, String str3, boolean z2, double d7) {
        u uVar = new u(String.valueOf(ayVar.p()), String.valueOf(ayVar.m()));
        n nVarB = ayVar.B();
        uVar.f4395c = "1004659";
        uVar.a(nVarB);
        uVar.f4403k = ayVar.o();
        uVar.f4408p = String.valueOf(ayVar.m());
        uVar.f4409q = ayVar.n();
        uVar.f4410r = String.valueOf(d2);
        uVar.f4411s = str;
        uVar.f4389U = ayVar.q();
        uVar.f4390V = ayVar.r();
        uVar.f4412t = String.valueOf(d3);
        uVar.f4413u = String.valueOf(d4);
        uVar.f4414v = ayVar.u();
        uVar.f4415w = String.valueOf(ayVar.v());
        uVar.f4416x = String.valueOf(ayVar.j());
        uVar.f4417y = String.valueOf(d5);
        if (ayVar.e() != null) {
            uVar.f4418z = ayVar.e();
        }
        Double dX = ayVar.x();
        if (dX != null) {
            uVar.f4369A = String.valueOf(dX);
        }
        if (ayVar.m() == 66 && d6 > 0.0d) {
            uVar.f4370B = String.valueOf(d4 / d6);
        }
        uVar.f4371C = ayVar.D();
        uVar.f4372D = z2 ? "1" : null;
        uVar.f4373E = str2;
        if (!TextUtils.isEmpty(str3)) {
            uVar.f4374F = str3;
        }
        ATAdMixBidInfo.BidEntity bidEntityB = ayVar.b();
        if (bidEntityB != null) {
            if (!TextUtils.isEmpty(bidEntityB.getAdUserName())) {
                uVar.f4375G = bidEntityB.getAdUserName();
            }
            if (!TextUtils.isEmpty(bidEntityB.getAdTittle())) {
                uVar.f4376H = bidEntityB.getAdTittle();
            }
            if (!TextUtils.isEmpty(bidEntityB.getAdPackageName())) {
                uVar.f4380L = bidEntityB.getAdPackageName();
            }
        }
        uVar.f4377I = String.valueOf(ayVar.G());
        MgComparedResult mgComparedResultH = ayVar.H();
        if (mgComparedResultH != null && c.b.a(ayVar.y())) {
            uVar.f4378J = mgComparedResultH.isMgWin() ? "1" : "2";
            uVar.f4379K = String.valueOf(mgComparedResultH.getCpCostTime());
        }
        uVar.f4381M = String.valueOf(ayVar.I());
        uVar.f4382N = String.valueOf(ayVar.J());
        if (ayVar.m() == 8 && d7 > 0.0d) {
            uVar.f4383O = String.valueOf(com.anythink.core.c.d.a.a(8, String.valueOf(d7)));
        }
        if (ayVar.K() > 0.0d) {
            uVar.f4384P = String.valueOf(ayVar.K());
        }
        if (!TextUtils.isEmpty(ayVar.L())) {
            uVar.f4385Q = ayVar.L();
        }
        if (nVarB != null) {
            String strAg = nVarB.ag();
            if (!TextUtils.isEmpty(strAg)) {
                uVar.f4386R = strAg;
            }
        }
        uVar.ab = ayVar.s();
        a(uVar);
    }

    public static void a(by byVar, com.anythink.core.common.h.a aVar, long j2, boolean z2, boolean z3, boolean z4) {
        Object objValueOf;
        String strAm;
        u uVar = new u(String.valueOf(aVar.f3572f), String.valueOf(byVar.n()));
        uVar.f4395c = "1004660";
        uVar.a(byVar);
        ce ceVar = aVar.f3580n;
        m mVarA = ceVar != null ? ceVar.a() : null;
        uVar.f4396d = aVar.f3570d;
        uVar.f4397e = aVar.f3571e;
        String strB = "";
        uVar.f4400h = String.valueOf(mVarA != null ? Integer.valueOf(mVarA.ax()) : "");
        if (mVarA == null) {
            objValueOf = "";
        } else {
            objValueOf = Integer.valueOf(mVarA.ah());
        }
        uVar.f4407o = String.valueOf(objValueOf);
        if (mVarA == null) {
            strAm = "";
        } else {
            strAm = mVarA.am();
        }
        uVar.f4403k = strAm;
        uVar.f4408p = String.valueOf(byVar.n());
        uVar.f4409q = byVar.G();
        uVar.f4410r = z2 ? "1" : "2";
        uVar.f4411s = String.valueOf(j2);
        uVar.f4412t = z3 ? "1" : "2";
        uVar.f4413u = z4 ? "1" : "2";
        if (mVarA != null) {
            try {
                strB = mVarA.B();
            } catch (Throwable unused) {
            }
        }
        uVar.f4389U = strB;
        Map<String, Object> map = aVar.f3569c.f3815g;
        if (map != null) {
            try {
                Object obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID);
                if (obj != null) {
                    uVar.f4390V = obj.toString();
                }
            } catch (Throwable unused2) {
            }
            try {
                JSONObject jSONObjectA = ag.a(aVar.f3569c.f3815g);
                if (jSONObjectA != null) {
                    uVar.ab = jSONObjectA;
                }
            } catch (Throwable unused3) {
            }
        }
        a(uVar);
    }

    public static void a(String str, by byVar, boolean z2, long j2, com.anythink.core.common.h.a aVar) {
        m mVarA = aVar != null ? aVar.f3580n.a() : null;
        u uVar = new u(String.valueOf(aVar.f3572f), String.valueOf(byVar.n()));
        uVar.f4395c = "1004665";
        uVar.a(byVar);
        uVar.f4397e = str;
        String strB = "";
        uVar.f4403k = mVarA != null ? mVarA.am() : "";
        uVar.f4408p = String.valueOf(byVar.n());
        uVar.f4409q = byVar.G();
        uVar.f4410r = String.valueOf(z2 ? 1 : 2);
        uVar.f4411s = String.valueOf(j2);
        if (mVarA != null) {
            try {
                strB = mVarA.B();
            } catch (Throwable unused) {
            }
        }
        uVar.f4389U = strB;
        Map<String, Object> map = aVar.f3569c.f3815g;
        if (map != null) {
            try {
                Object obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID);
                if (obj != null) {
                    uVar.f4390V = obj.toString();
                }
            } catch (Throwable unused2) {
            }
            try {
                JSONObject jSONObjectA = ag.a(aVar.f3569c.f3815g);
                if (jSONObjectA != null) {
                    uVar.ab = jSONObjectA;
                }
            } catch (Throwable unused3) {
            }
        }
        a(uVar);
    }

    public static void a(cg cgVar) {
        if (cgVar == null) {
            return;
        }
        u uVar = new u(cgVar.m(), String.valueOf(cgVar.k()));
        uVar.f4395c = "1004667";
        n nVarY = cgVar.y();
        uVar.a(nVarY);
        uVar.f4408p = String.valueOf(cgVar.k());
        uVar.f4409q = cgVar.l();
        uVar.f4410r = cgVar.g();
        uVar.f4411s = cgVar.h();
        uVar.f4412t = cgVar.f();
        uVar.f4413u = cgVar.e();
        uVar.f4414v = cgVar.j();
        uVar.f4415w = cgVar.i();
        uVar.f4416x = String.valueOf(cgVar.o());
        uVar.f4417y = String.valueOf(cgVar.p());
        uVar.f4418z = String.valueOf(cgVar.r());
        uVar.f4369A = String.valueOf(cgVar.t());
        uVar.f4370B = String.valueOf(cgVar.u());
        if (cgVar.b() != null) {
            uVar.f4371C = cgVar.b();
        }
        Double dC = cgVar.c();
        if (dC != null) {
            uVar.f4372D = String.valueOf(dC);
        }
        uVar.ab = cgVar.n();
        if (cgVar.k() == 66 && cgVar.w().doubleValue() > 0.0d) {
            uVar.f4373E = String.valueOf(cgVar.t() / cgVar.w().doubleValue());
        }
        uVar.f4374F = cgVar.B();
        if (nVarY != null) {
            String strAz = nVarY.az();
            if (!TextUtils.isEmpty(strAz)) {
                uVar.f4375G = strAz;
            }
        }
        MgComparedResult mgComparedResultC = cgVar.C();
        if (mgComparedResultC != null && c.b.a(cgVar.x())) {
            MgAdInfo mgAdInfo = mgComparedResultC.getMgAdInfo();
            uVar.f4376H = mgAdInfo != null ? String.valueOf(mgAdInfo.getUSDEcpm()) : "0";
            uVar.f4377I = String.valueOf(mgComparedResultC.getCpCostTime());
        }
        uVar.f4378J = String.valueOf(cgVar.q());
        if (nVarY != null) {
            String strAg = nVarY.ag();
            if (!TextUtils.isEmpty(strAg)) {
                uVar.f4379K = strAg;
            }
        }
        a(uVar);
    }

    public static void a(n nVar, int i2, String str, double d2, double d3, String str2, String str3, String str4, String str5) {
        u uVar = new u(nVar.aS(), String.valueOf(i2));
        uVar.f4395c = "1004668";
        uVar.a(nVar);
        uVar.f4397e = nVar.aQ();
        uVar.ac = str4;
        uVar.ad = str5;
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = str;
        uVar.f4410r = String.valueOf(d2);
        uVar.f4411s = str2;
        uVar.f4412t = str3;
        uVar.f4413u = String.valueOf(d3);
        uVar.f4403k = nVar.aP();
        uVar.f4400h = String.valueOf(nVar.aa());
        uVar.f4407o = String.valueOf(nVar.aO());
        uVar.f4389U = nVar.aJ();
        uVar.f4390V = nVar.aK();
        uVar.ab = nVar.aF();
        a(uVar);
    }

    public static void a(n nVar, String str, String str2) {
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004669";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = str;
        uVar.f4410r = str2;
        a(uVar);
    }

    public static void a(x xVar, int i2, String str, Map<String, JSONArray> map, int i3, int i4, int i5, String str2, int i6, int i7, long j2, String str3, int i8, boolean z2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004675";
        uVar.a(xVar);
        uVar.f4408p = str;
        uVar.f4409q = String.valueOf(i2);
        uVar.f4411s = String.valueOf(i3);
        uVar.f4412t = String.valueOf(i4);
        uVar.f4413u = String.valueOf(i5);
        uVar.f4414v = str2;
        uVar.f4415w = String.valueOf(i6);
        if (i7 >= 0) {
            uVar.f4416x = String.valueOf(i7);
        }
        if (j2 > 0) {
            uVar.f4417y = String.valueOf(j2);
        }
        if (!TextUtils.isEmpty(str3)) {
            uVar.f4418z = str3;
        }
        if (i8 > 0) {
            uVar.f4369A = String.valueOf(i8);
        }
        if (map != null && map.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, JSONArray> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                uVar.f4370B = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        if (z2) {
            uVar.f4371C = "1";
        }
        a(uVar);
    }

    private static void a(final String str, final String str2, final String str3, final String str4, final String str5, final int i2, final boolean z2, final String str6, final String str7) {
        a(new Runnable() { // from class: com.anythink.core.common.u.f.4
            @Override // java.lang.Runnable
            public final void run() {
                boolean zIsScreenOn;
                u uVar = new u(str4, str5);
                uVar.f4395c = "1004680";
                uVar.f4396d = str;
                uVar.f4397e = str2;
                uVar.f4408p = str3;
                uVar.f4409q = String.valueOf(i2);
                uVar.f4410r = z2 ? "1" : "0";
                try {
                    zIsScreenOn = ((PowerManager) s.b().g().getSystemService("power")).isScreenOn();
                } catch (Throwable unused) {
                    zIsScreenOn = true;
                }
                uVar.f4411s = zIsScreenOn ? "1" : "0";
                uVar.f4412t = p.a(s.b().g()) ? "1" : "0";
                uVar.f4413u = str7;
                uVar.f4414v = str6;
                f.a(uVar);
            }
        });
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i2, String str12, String str13) {
        u uVar = new u("", "");
        if (TextUtils.isEmpty(uVar.f4395c)) {
            uVar.f4395c = "1004685";
        }
        if (!TextUtils.isEmpty(str)) {
            uVar.f4408p = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            uVar.f4409q = str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            uVar.f4410r = str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            uVar.f4411s = str4;
        }
        if (!TextUtils.isEmpty(str5)) {
            uVar.f4412t = str5;
        }
        if (!TextUtils.isEmpty(str6)) {
            uVar.f4413u = str6;
        }
        if (!TextUtils.isEmpty(str7)) {
            uVar.f4414v = str7;
        }
        if (!TextUtils.isEmpty(str8)) {
            uVar.f4415w = str8;
        }
        if (!TextUtils.isEmpty(str9)) {
            uVar.f4416x = str9;
        }
        if (!TextUtils.isEmpty(str10)) {
            uVar.f4417y = str10;
        }
        if (!TextUtils.isEmpty(str11)) {
            uVar.f4418z = str11;
        }
        if (i2 > 0) {
            uVar.f4370B = String.valueOf(i2);
        }
        uVar.f4369A = "0";
        if (!TextUtils.isEmpty(str12)) {
            uVar.f4371C = str12;
        }
        if (!TextUtils.isEmpty(str13)) {
            uVar.f4372D = str13;
        }
        a(uVar);
    }

    public static void a(String str, String str2, m mVar, String str3, com.anythink.core.common.h.c cVar, long j2, ATAdRequest aTAdRequest) {
        String string;
        if (cVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(cVar.i().Z());
            string = sb.toString();
        } else {
            string = null;
        }
        u uVar = new u("4", string);
        uVar.f4395c = "1004690";
        uVar.a(aTAdRequest);
        uVar.a(mVar);
        uVar.f4396d = str2;
        uVar.f4397e = str;
        if (mVar != null) {
            uVar.f4407o = String.valueOf(mVar.ah());
            uVar.f4400h = String.valueOf(mVar.ax());
            uVar.f4403k = mVar.am();
        }
        if (cVar != null) {
            uVar.a(cVar.i());
        }
        uVar.f4408p = str3;
        if (cVar != null) {
            uVar.f4409q = cVar.l();
            uVar.f4410r = uVar.f4388T;
            uVar.f4411s = cVar.i() != null ? cVar.i().N() : "";
        }
        uVar.f4412t = "1";
        uVar.f4413u = String.valueOf(j2);
        a(uVar);
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004688";
        if (!TextUtils.isEmpty(str)) {
            uVar.f4397e = str;
        }
        uVar.f4408p = str2;
        uVar.f4409q = str3;
        uVar.f4410r = str4;
        uVar.f4411s = str5;
        a(uVar);
    }

    public static void a(final String str, final n nVar, final String str2, final String str3, final String str4, final int i2, final int i3, final long j2) {
        if (s.b().g() == null) {
            return;
        }
        a(new Runnable() { // from class: com.anythink.core.common.u.f.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    u uVar = new u(String.valueOf(i3), "");
                    uVar.f4395c = "1004691";
                    uVar.a(nVar);
                    com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
                    if (bVarB != null && !bVarB.J() && bVarB.h() && !com.anythink.core.common.u.c.a.a(bVarB, uVar)) {
                        uVar.f4396d = str2;
                        uVar.f4397e = str3;
                        uVar.a(nVar);
                        uVar.f4408p = str;
                        uVar.f4409q = str4;
                        long j3 = j2;
                        if (j3 >= 0) {
                            uVar.f4410r = String.valueOf(j3);
                        }
                        int i4 = i2;
                        if (i4 > 0) {
                            uVar.f4411s = String.valueOf(i4);
                        }
                        com.anythink.core.common.o.d dVarB = com.anythink.core.common.o.e.a().b();
                        if (dVarB != null) {
                            uVar.f4412t = String.valueOf(dVarB.a());
                            uVar.f4413u = String.valueOf(dVarB.e());
                            uVar.f4414v = String.valueOf(dVarB.f());
                            uVar.f4415w = String.valueOf(dVarB.b());
                            uVar.f4416x = String.valueOf(dVarB.g());
                            uVar.f4417y = String.valueOf(dVarB.h());
                            uVar.f4418z = String.valueOf(dVarB.c());
                            uVar.f4369A = String.valueOf(dVarB.d());
                        }
                        uVar.f4370B = String.valueOf(com.anythink.core.common.o.e.a().e());
                        f.a(uVar);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static void a(x xVar, w wVar) {
        if (wVar == null || xVar == null || !(wVar instanceof bl)) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004697";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = wVar.j();
        uVar.f4410r = ((bl) wVar).Q();
        a(uVar);
    }

    public static void a(String str, String str2, n nVar, String str3, String str4, m mVar, boolean z2, String str5, String str6, String str7) {
        u uVar = new u(str3, "");
        uVar.f4395c = "1004693";
        uVar.a(nVar);
        uVar.f4396d = str4;
        uVar.f4397e = str;
        if (mVar != null) {
            uVar.f4400h = String.valueOf(mVar.ax());
            uVar.f4407o = String.valueOf(mVar.ah());
            uVar.f4403k = mVar.am();
        }
        uVar.f4408p = z2 ? "1" : "2";
        uVar.f4409q = str5;
        uVar.f4410r = str6;
        if (mVar != null) {
            uVar.f4411s = mVar.z() == 1 ? "1" : "2";
        }
        uVar.f4412t = str2;
        uVar.f4413u = str7;
        a(uVar);
    }

    public static void a(String str, String str2, m mVar, n nVar, boolean z2, boolean z3, boolean z4, String str3, String str4, String str5) {
        u uVar = new u(null, "");
        uVar.f4395c = "1004694";
        uVar.a(nVar);
        uVar.a(mVar);
        uVar.f4396d = str3;
        uVar.f4397e = str;
        if (mVar != null) {
            uVar.f4400h = String.valueOf(mVar.ax());
            uVar.f4407o = String.valueOf(mVar.ah());
            uVar.f4403k = mVar.am();
        }
        uVar.f4404l = str5;
        uVar.f4408p = z2 ? "1" : "0";
        uVar.f4409q = z4 ? "1" : "0";
        uVar.f4410r = z3 ? "1" : "0";
        uVar.f4411s = str2;
        uVar.f4412t = str4;
        a(uVar);
    }

    public static void a(n nVar, m mVar, String str, String str2, String str3, String str4, String str5) {
        u uVar = new u(null, str);
        uVar.f4395c = "1004695";
        uVar.a(nVar);
        if (mVar != null) {
            uVar.f4403k = mVar.am();
        }
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = str4;
        uVar.f4412t = str5;
        a(uVar);
    }

    public static void a(n nVar, m mVar, String str, String str2, String str3, int i2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004696";
        uVar.a(nVar);
        if (mVar != null) {
            uVar.f4403k = mVar.am();
        }
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = String.valueOf(i2);
        a(uVar);
    }

    private static void a(x xVar, w wVar, int i2, boolean z2) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(null, null);
        uVar.f4395c = "1004698";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = wVar.j();
        uVar.f4410r = wVar instanceof r ? ((r) wVar).Q() : "";
        uVar.f4411s = String.valueOf(xVar.f4482b);
        uVar.f4412t = String.valueOf(xVar.f4489i);
        uVar.f4413u = String.valueOf(i2);
        uVar.f4414v = String.valueOf(xVar.f4492l);
        if (i2 != 5) {
            uVar.f4415w = z2 ? "1" : "2";
        }
        a(uVar);
    }

    private static void a(x xVar, w wVar, boolean z2, int i2, int i3, long j2, long j3) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(null, null);
        uVar.f4395c = "1004699";
        uVar.a(xVar);
        uVar.f4408p = z2 ? "2" : "1";
        uVar.f4409q = String.valueOf(i2);
        uVar.f4410r = String.valueOf(j2);
        uVar.f4411s = String.valueOf(j3);
        uVar.f4412t = String.valueOf(xVar.f4482b);
        uVar.f4413u = String.valueOf(i3);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4414v = String.valueOf(rVar.Q());
            uVar.f4415w = String.valueOf(rVar.i());
        }
        a(uVar);
    }

    public static void a(x xVar, int i2, String str, JSONArray jSONArray, String str2, int i3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004700";
        uVar.a(xVar);
        uVar.f4408p = str;
        uVar.f4409q = String.valueOf(i2);
        uVar.f4410r = jSONArray != null ? jSONArray.toString() : "";
        uVar.f4411s = str2;
        uVar.f4412t = String.valueOf(i3);
        a(uVar);
    }

    public static void a(String str, n nVar, String str2, Object obj, String str3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004701";
        uVar.a(nVar);
        uVar.f4397e = str;
        uVar.f4400h = String.valueOf(nVar.aa());
        uVar.f4407o = String.valueOf(nVar.aO());
        uVar.f4408p = nVar.aS();
        uVar.f4409q = String.valueOf(nVar.Z());
        uVar.f4410r = nVar.N();
        uVar.f4411s = String.valueOf(nVar.ad());
        uVar.f4412t = str2;
        uVar.f4413u = obj != null ? obj.toString() : "";
        if (!TextUtils.isEmpty(str3)) {
            uVar.f4414v = str3;
        }
        a(uVar);
    }

    public static void a(n nVar, com.anythink.core.e.g gVar, String str, double d2, String str2, double d3, String str3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004702";
        uVar.a(nVar);
        uVar.f4408p = nVar.aS();
        uVar.f4409q = gVar.a() == 1 ? "1" : "2";
        uVar.f4410r = String.valueOf(gVar.b());
        uVar.f4411s = String.valueOf(gVar.c());
        uVar.f4412t = String.valueOf(gVar.d());
        uVar.f4413u = String.valueOf(gVar.f());
        uVar.f4414v = String.valueOf(gVar.e());
        uVar.f4415w = str;
        uVar.f4416x = String.valueOf(d2);
        uVar.f4417y = str2;
        uVar.f4418z = String.valueOf(d3);
        if (!TextUtils.isEmpty(str3)) {
            uVar.f4369A = str3;
        }
        a(uVar);
    }

    public static void a(n nVar, String str, String str2, String str3, String str4, String str5) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004705";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = str4;
        uVar.f4411s = str5;
        uVar.f4412t = str;
        uVar.f4413u = str2;
        uVar.f4414v = str3;
        a(uVar);
    }

    private static void a(x xVar, w wVar, int i2, String str) {
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004706";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(xVar.f4490j);
        uVar.f4409q = xVar.f4485e;
        uVar.f4410r = String.valueOf(xVar.f4482b);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4411s = rVar.Q();
            uVar.f4412t = rVar.i();
        }
        uVar.f4413u = String.valueOf(i2);
        uVar.f4414v = str;
        a(uVar);
    }

    private static void a(x xVar, w wVar, int i2, long j2, long j3, long j4, long j5) {
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004707";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(xVar.f4490j);
        uVar.f4409q = xVar.f4485e;
        uVar.f4410r = String.valueOf(xVar.f4482b);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4411s = rVar.Q();
            uVar.f4412t = rVar.i();
        }
        uVar.f4413u = String.valueOf(i2);
        uVar.f4414v = String.valueOf(j2);
        uVar.f4415w = String.format("%.2f", Double.valueOf((j3 / 1024.0d) / 1024.0d));
        uVar.f4416x = String.valueOf(j4);
        uVar.f4417y = String.format("%.2f", Double.valueOf((j5 / 1024.0d) / 1024.0d));
        a(uVar);
    }

    private static void a(n nVar, String str, String str2, int i2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004709";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = nVar.aS();
        uVar.f4411s = str;
        uVar.f4412t = str2;
        uVar.f4413u = String.valueOf(i2);
        uVar.f4414v = "1";
        a(uVar);
    }

    private static void a(n nVar, String str, String str2, boolean z2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004710";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = str;
        uVar.f4411s = str2;
        uVar.f4412t = z2 ? "1" : "2";
        a(uVar);
    }

    private static void a(String str, x xVar, String str2, String str3, String str4, String str5, String str6, String str7, long j2, int i2, int i3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004713";
        uVar.f4396d = str;
        uVar.f4397e = str2;
        uVar.a(xVar);
        uVar.f4408p = str3;
        uVar.f4409q = str4;
        uVar.f4410r = str5;
        uVar.f4411s = str6;
        uVar.f4412t = str7;
        uVar.f4413u = String.valueOf(j2);
        uVar.f4414v = String.valueOf(i2);
        uVar.f4415w = String.valueOf(i3);
        a(uVar);
    }

    public static void a(String str, String str2, by byVar, Double d2, Double d3, com.anythink.core.c.c.b bVar) {
        String strValueOf;
        u uVar = new u(null, null);
        uVar.f4395c = "1004716";
        uVar.a(byVar);
        uVar.f4396d = str;
        uVar.f4397e = str2;
        uVar.f4408p = String.valueOf(byVar.n());
        uVar.f4409q = byVar.G();
        String strA = "";
        uVar.f4410r = d2 != null ? String.valueOf(d2) : "";
        if (d3 == null) {
            strValueOf = "";
        } else {
            strValueOf = String.valueOf(d3);
        }
        uVar.f4411s = strValueOf;
        if (bVar != null) {
            strA = bVar.a();
        }
        uVar.f4412t = strA;
        a(uVar);
    }

    private static void a(x xVar, String str, String str2, String str3, String str4, long j2, String str5, String str6, String str7, String str8, String str9, String str10) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004715";
        uVar.a(xVar);
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = str4;
        uVar.f4412t = String.valueOf(j2);
        uVar.f4413u = str5;
        uVar.f4414v = str6;
        uVar.f4415w = str7;
        uVar.f4416x = str8;
        uVar.f4417y = str9;
        uVar.f4418z = str10;
        a(uVar);
    }

    private static void a(String str, int i2, int i3, int i4) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004717";
        uVar.f4408p = str;
        uVar.f4409q = String.valueOf(i2);
        uVar.f4410r = String.valueOf(i3);
        uVar.f4411s = String.valueOf(i4);
        a(uVar);
    }

    public static void a(n nVar, String str, String str2, String str3) {
        u uVar = new u(null, str);
        uVar.f4395c = "1004718";
        uVar.a(nVar);
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        a(uVar);
    }

    private static void a(w wVar, x xVar, int i2, int i3) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004719";
        uVar.a(xVar);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4408p = rVar.Q();
            uVar.f4409q = rVar.i();
        }
        uVar.f4410r = "1";
        uVar.f4411s = "1";
        uVar.f4414v = String.valueOf(xVar.f4482b);
        if (wVar != null && wVar.g() != null) {
            uVar.f4415w = wVar.g().u();
        }
        uVar.f4416x = String.valueOf(i2);
        uVar.f4417y = String.valueOf(i3);
        a(uVar);
    }

    private static void a(x xVar, int i2, w wVar, long j2, long j3) {
        u uVar = new u(String.valueOf(i2), null);
        uVar.f4395c = "1004721";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(j2);
        uVar.f4409q = String.valueOf(j3);
        if (wVar != null) {
            if (!TextUtils.isEmpty(wVar.B())) {
                uVar.f4410r = wVar.B();
            }
            uVar.f4411s = wVar.r();
            uVar.f4412t = wVar.i();
            if (wVar instanceof r) {
                uVar.f4413u = ((r) wVar).Q();
            }
        }
        uVar.f4414v = String.valueOf(i2);
        a(uVar);
    }

    public static void a(String str, m mVar, int i2, int i3, int i4, ATAdRequest aTAdRequest) {
        u uVar = new u("4", null);
        uVar.f4395c = "1004722";
        uVar.f4397e = str;
        uVar.a(aTAdRequest);
        uVar.a(mVar);
        if (mVar != null) {
            uVar.f4403k = mVar.am();
            uVar.f4400h = String.valueOf(mVar.ax());
            uVar.f4407o = String.valueOf(mVar.ah());
        }
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = String.valueOf(i4);
        uVar.f4410r = String.valueOf(i3);
        a(uVar);
    }

    public static void a(String str, String str2, String str3, double d2, String str4, String str5, String str6) {
        u uVar = new u(str3, null);
        uVar.f4395c = "1004724";
        uVar.f4397e = str;
        uVar.f4396d = str2;
        uVar.f4408p = String.valueOf(System.currentTimeMillis());
        uVar.f4409q = str3;
        uVar.f4410r = String.valueOf(d2);
        uVar.f4411s = str4;
        uVar.f4412t = str5;
        uVar.f4413u = str6;
        a(uVar);
    }

    public static void a(String str, String str2, String str3, int i2, long j2, long j3, long j4, long j5, long j6) {
        u uVar = new u(null, "2");
        uVar.f4395c = "1004725";
        uVar.f4408p = str;
        uVar.f4409q = str3;
        uVar.f4410r = str2;
        uVar.f4411s = String.valueOf(i2);
        uVar.f4412t = String.valueOf(j4);
        uVar.f4413u = String.valueOf(j5);
        uVar.f4414v = String.valueOf(j2);
        uVar.f4415w = String.valueOf(j3);
        uVar.f4416x = String.valueOf(j6);
        a(uVar);
    }

    private static void a(x xVar, String str, String str2, String str3, String str4, int i2) {
        u uVar = new u(null, "66");
        uVar.f4395c = "1004735";
        uVar.a(xVar);
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = str4;
        uVar.f4412t = String.valueOf(i2);
        a(uVar);
    }

    public static void a(String str, String str2) {
        boolean zIsEmpty = str.isEmpty();
        u uVar = new u(null, null);
        uVar.f4395c = "1004729";
        uVar.f4408p = Build.MANUFACTURER;
        uVar.f4409q = !zIsEmpty ? "1" : "2";
        if (!zIsEmpty) {
            uVar.f4410r = str;
        } else {
            uVar.f4411s = str2;
        }
        a(uVar);
    }

    public static void a(final com.anythink.core.common.k.e eVar, final boolean z2, final n nVar, final long j2, final boolean z3, final String str, final ATBaseAdAdapter aTBaseAdAdapter) {
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8097F, new Runnable() { // from class: com.anythink.core.common.u.f.6

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f7911b = 1;

            @Override // java.lang.Runnable
            public final void run() {
                String string;
                Map<String, Object> networkInfoMap;
                u uVar = new u(nVar.aS(), "2");
                uVar.f4395c = "1004730";
                uVar.a(nVar);
                uVar.f4408p = nVar.N();
                uVar.f4409q = String.valueOf(nVar.ae());
                uVar.f4410r = String.valueOf(nVar.Z());
                uVar.f4411s = String.valueOf(this.f7911b);
                uVar.f4412t = String.valueOf(j2);
                uVar.f4413u = z3 ? "1" : "2";
                uVar.f4414v = str;
                ATBaseAdAdapter aTBaseAdAdapter2 = aTBaseAdAdapter;
                if (aTBaseAdAdapter2 == null || (networkInfoMap = aTBaseAdAdapter2.getNetworkInfoMap()) == null) {
                    string = "";
                } else {
                    try {
                        string = new JSONObject(networkInfoMap).toString();
                    } catch (Throwable unused) {
                    }
                }
                uVar.f4415w = string;
                uVar.f4416x = z2 ? "1" : "2";
                com.anythink.core.common.k.e eVar2 = eVar;
                if (eVar2 instanceof com.anythink.core.common.q.e) {
                    com.anythink.core.common.q.e eVar3 = (com.anythink.core.common.q.e) eVar2;
                    uVar.f4417y = String.valueOf(eVar3.a());
                    String strB = eVar3.b();
                    if (!TextUtils.isEmpty(strB)) {
                        uVar.f4418z = strB;
                    }
                }
                be beVarAu = nVar.au();
                if (beVarAu != null) {
                    if (!TextUtils.isEmpty(beVarAu.b())) {
                        uVar.f4369A = beVarAu.b();
                    }
                    if (!TextUtils.isEmpty(beVarAu.c())) {
                        uVar.f4370B = beVarAu.c();
                    }
                }
                f.a(uVar);
            }
        }));
    }

    private static void a(String str, String str2, x xVar, String str3, String str4, int i2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, boolean z2, boolean z3, String str18, String str19, String str20) {
        u uVar = new u(null, "66");
        uVar.f4395c = "1004731";
        uVar.f4396d = str;
        uVar.f4397e = str2;
        uVar.a(xVar);
        uVar.f4408p = str3;
        uVar.f4409q = str4;
        uVar.f4410r = str6;
        uVar.f4411s = str7;
        uVar.f4412t = str8;
        uVar.f4413u = str9;
        uVar.f4414v = str10;
        uVar.f4415w = str11;
        uVar.f4416x = str12;
        uVar.f4417y = str5;
        uVar.f4418z = String.valueOf(i2);
        uVar.f4369A = str13;
        uVar.f4370B = str14;
        uVar.f4371C = str15;
        uVar.f4372D = str16;
        uVar.f4373E = str17;
        uVar.f4374F = z2 ? "2" : "1";
        uVar.f4375G = z3 ? "1" : "2";
        uVar.f4376H = str18;
        uVar.f4377I = str19;
        uVar.f4378J = str20;
        a(uVar);
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004738";
        uVar.f4408p = str;
        uVar.f4409q = str2;
        uVar.f4410r = str3;
        uVar.f4411s = str4;
        uVar.f4412t = str5;
        uVar.f4413u = str6;
        uVar.f4414v = String.valueOf(SystemClock.elapsedRealtime() - j2);
        a(uVar);
    }

    private static void a(x xVar, w wVar, long j2, boolean z2, long j3, int i2) {
        u uVar = new u(String.valueOf(xVar.f4482b), "66");
        uVar.f4395c = "1004733";
        uVar.a(xVar);
        y yVar = xVar.f4500t;
        if (yVar != null) {
            uVar.f4408p = yVar.P() == 2 ? "1" : "2";
            uVar.f4413u = String.valueOf(xVar.f4500t.Q());
            uVar.f4414v = String.valueOf(xVar.f4500t.R());
            uVar.f4416x = String.valueOf(xVar.f4500t.S());
            uVar.f4417y = String.valueOf(xVar.f4500t.h());
        }
        uVar.f4409q = String.valueOf(j2);
        uVar.f4410r = String.valueOf(System.currentTimeMillis() - j2);
        if (wVar instanceof r) {
            uVar.f4411s = ((r) wVar).Q();
            uVar.f4412t = wVar.i();
        }
        uVar.f4415w = z2 ? "1" : "2";
        uVar.f4418z = String.valueOf(j3);
        uVar.f4369A = String.valueOf(i2);
        a(uVar);
    }

    private static void a(x xVar, w wVar, int i2, int i3, int i4, boolean z2, boolean z3) {
        u uVar = new u(String.valueOf(xVar.f4482b), "66");
        uVar.f4395c = "1004736";
        uVar.a(xVar);
        uVar.f4408p = String.valueOf(xVar.f4482b);
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
            uVar.f4410r = wVar.i();
        }
        uVar.f4411s = 1 == ((bl) wVar).R() ? "2" : "1";
        y yVar = xVar.f4500t;
        if (yVar != null) {
            uVar.f4412t = yVar.v() == 1 ? "1" : "2";
        }
        uVar.f4413u = i2 == 1 ? "2" : "1";
        uVar.f4414v = i3 == 1 ? "2" : "1";
        uVar.f4415w = String.valueOf(i4);
        uVar.f4416x = z2 ? "1" : "2";
        uVar.f4417y = z3 ? "1" : "2";
        a(uVar);
    }

    private static void a(x xVar, w wVar, String str) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), "66");
        uVar.f4395c = "1004737";
        uVar.a(xVar);
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4408p = String.valueOf(rVar.Q());
            uVar.f4409q = String.valueOf(rVar.i());
        }
        uVar.f4410r = wVar.I();
        uVar.f4411s = wVar.J();
        uVar.f4412t = wVar.K();
        uVar.f4413u = str;
        uVar.f4414v = String.valueOf(xVar.f4482b);
        a(uVar);
    }

    public static void a(long j2, long j3, long j4) {
        u uVar = new u("", "");
        uVar.f4395c = "1004742";
        uVar.f4408p = String.valueOf(j2);
        uVar.f4409q = String.valueOf(j3);
        uVar.f4410r = String.valueOf(j4);
        a(uVar);
    }

    public static void a(n nVar, String str, boolean z2) {
        if (nVar == null) {
            return;
        }
        u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
        uVar.f4395c = "1004744";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(nVar.Z());
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.aS());
        uVar.f4411s = z2 ? "1" : "2";
        uVar.f4412t = str;
        uVar.f4413u = s.b().W() ? "1" : "2";
        uVar.f4414v = com.anythink.core.common.d.b.c().a();
        a(uVar);
    }

    public static void a(int i2) {
        u uVar = new u("", "");
        uVar.f4395c = "1004739";
        uVar.f4408p = String.valueOf(i2);
        a(uVar);
    }

    public static void a(String str, n nVar, boolean z2, String str2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004740";
        uVar.a(nVar);
        uVar.f4408p = str;
        uVar.f4410r = z2 ? "1" : "2";
        if (nVar != null) {
            uVar.f4409q = String.valueOf(nVar.Z());
            uVar.f4411s = String.valueOf(nVar.ae());
            uVar.f4412t = nVar.N();
        }
        uVar.f4413u = str2;
        a(uVar);
    }

    public static void a(n nVar, String str) {
        if (nVar != null) {
            u uVar = new u(nVar.aS(), String.valueOf(nVar.Z()));
            uVar.f4395c = "1004741";
            uVar.a(nVar);
            uVar.f4408p = nVar.N();
            uVar.f4409q = "2";
            uVar.f4410r = String.valueOf(nVar.Z());
            uVar.f4411s = nVar.aS();
            uVar.f4412t = String.valueOf(nVar.ae());
            uVar.f4413u = str;
            a(uVar);
        }
    }

    public static void a(w wVar, x xVar, int i2, boolean z2, int i3, String str) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004748";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        if (TextUtils.isEmpty(str)) {
            uVar.f4410r = wVar.r();
        } else {
            uVar.f4410r = str;
        }
        uVar.f4411s = wVar.s();
        uVar.f4412t = String.valueOf(i2);
        if (i2 != 1 && z2) {
            uVar.f4413u = z2 ? "1" : "2";
        }
        if (i2 == 3 && i3 > 0) {
            uVar.f4414v = String.valueOf(i3);
        }
        a(uVar);
    }

    public static void a(w wVar, x xVar, int i2) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004749";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = wVar.r();
        uVar.f4411s = String.valueOf(i2);
        a(uVar);
    }

    public static void a(h hVar, n nVar) {
        if (hVar == null || nVar == null) {
            return;
        }
        u uVar = new u(nVar.aS(), null);
        uVar.f4395c = "1004753";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(hVar.i());
        uVar.f4409q = String.valueOf(hVar.a());
        uVar.f4410r = String.valueOf(hVar.b());
        uVar.f4411s = String.valueOf(hVar.c());
        uVar.f4412t = String.valueOf(hVar.d());
        uVar.f4413u = String.valueOf(hVar.e());
        uVar.f4414v = String.valueOf(hVar.f());
        uVar.f4415w = String.valueOf(hVar.g());
        uVar.f4416x = String.valueOf(hVar.h());
        uVar.f4417y = String.valueOf(nVar.ar());
        a(uVar);
    }

    private static void a(w wVar, x xVar, boolean z2, boolean z3) {
        String string;
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004751";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        y yVar = xVar.f4500t;
        if (yVar != null) {
            uVar.f4410r = String.valueOf(yVar.T());
            uVar.f4413u = String.valueOf(xVar.f4500t.F());
            if (xVar.f4500t.F() == 2) {
                string = String.valueOf(xVar.f4500t.I());
            } else if (xVar.f4500t.H() != null) {
                string = xVar.f4500t.H().toString();
            } else {
                string = "";
            }
            uVar.f4414v = string;
            uVar.f4415w = String.valueOf(xVar.f4500t.U());
        }
        uVar.f4411s = z2 ? "1" : "2";
        uVar.f4412t = z3 ? "1" : "2";
        a(uVar);
    }

    private static void a(w wVar, x xVar, String str, String str2, List<Boolean> list, int i2, boolean z2) {
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004756";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = str;
        uVar.f4411s = str2;
        uVar.f4412t = String.valueOf(xVar.f4482b);
        uVar.f4414v = String.valueOf(i2);
        if (list != null && list.size() == 5) {
            Boolean bool = list.get(0);
            Boolean bool2 = list.get(1);
            Boolean bool3 = list.get(2);
            Boolean bool4 = list.get(3);
            Boolean bool5 = list.get(4);
            if (bool != null) {
                uVar.f4415w = bool.booleanValue() ? "1" : "2";
            }
            if (bool2 != null) {
                uVar.f4416x = bool2.booleanValue() ? "1" : "2";
            }
            if (bool3 != null) {
                uVar.f4417y = bool3.booleanValue() ? "1" : "2";
            }
            if (bool4 != null) {
                uVar.f4418z = bool4.booleanValue() ? "1" : "2";
            }
            if (bool5 != null) {
                uVar.f4369A = bool5.booleanValue() ? "1" : "2";
            }
        }
        uVar.f4370B = z2 ? "1" : "2";
        a(uVar);
    }

    private static void a(int i2, int i3, int i4, long j2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004758";
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = String.valueOf(i3);
        uVar.f4410r = String.valueOf(i4);
        uVar.f4411s = String.valueOf(j2);
        a(uVar);
    }

    public static void a(n nVar, int i2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004759";
        uVar.a(nVar);
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = nVar.N();
        uVar.f4410r = String.valueOf(nVar.Z());
        a(uVar);
    }

    private static void a(x xVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        u uVarA = u.a(str);
        uVarA.a(xVar);
        a(uVarA);
    }

    private static void a(w wVar, x xVar, int i2, long j2, String str, long j3, long j4, long j5, long j6, long j7) {
        String string;
        String string2;
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004762";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = String.valueOf(i2);
        uVar.f4411s = String.valueOf(j2);
        uVar.f4412t = wVar.L();
        String string3 = "";
        if (wVar.g() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(wVar.g().Z());
            string = sb.toString();
        } else {
            string = "";
        }
        uVar.f4413u = string;
        if (wVar.g() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(wVar.g().X());
            string2 = sb2.toString();
        } else {
            string2 = "";
        }
        uVar.f4414v = string2;
        if (wVar.g() != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(wVar.g().Y());
            string3 = sb3.toString();
        }
        uVar.f4415w = string3;
        uVar.f4416x = str;
        uVar.f4417y = String.valueOf(j3);
        uVar.f4418z = String.valueOf(j4);
        uVar.f4369A = String.valueOf(j5);
        uVar.f4370B = String.valueOf(j6);
        uVar.f4371C = String.valueOf(j7);
        a(uVar);
    }

    private static void a(int i2, String str, String str2) {
        u uVar = new u("", "");
        uVar.f4395c = "1004765";
        uVar.f4408p = String.valueOf(i2);
        uVar.f4409q = str;
        uVar.f4410r = str2;
        a(uVar);
    }

    public static void a(com.anythink.core.common.m.b.a aVar) {
        if (aVar == null) {
            return;
        }
        u uVar = new u("", "");
        uVar.f4395c = "1004766";
        uVar.f4408p = aVar.a();
        uVar.f4409q = String.valueOf(aVar.b());
        uVar.f4410r = String.valueOf(aVar.c());
        uVar.f4411s = String.valueOf(aVar.f());
        uVar.f4412t = String.valueOf(aVar.g());
        uVar.f4413u = String.valueOf(aVar.d());
        uVar.f4414v = String.valueOf(aVar.e());
        uVar.f4415w = aVar.i();
        uVar.f4416x = String.valueOf(aVar.j());
        uVar.f4417y = aVar.l();
        uVar.f4418z = aVar.m();
        uVar.f4369A = aVar.n();
        uVar.f4371C = String.valueOf(aVar.q());
        Context contextG = s.b().g();
        if (contextG != null) {
            uVar.f4370B = p.a(contextG) ? "1" : "0";
        }
        a(uVar);
    }

    public static void a(int i2, int i3, String str, long j2) {
        u uVar = new u(null, null);
        uVar.f4395c = "1004769";
        try {
            uVar.f4408p = Build.MANUFACTURER;
        } catch (Throwable unused) {
        }
        uVar.f4409q = String.valueOf(i2);
        uVar.f4410r = String.valueOf(i3);
        if (!TextUtils.isEmpty(str)) {
            uVar.f4411s = str;
        }
        uVar.f4412t = String.valueOf(j2);
        a(uVar);
    }

    public static void a(com.anythink.core.common.e.b bVar) {
        if (bVar != null) {
            u uVar = new u("", "");
            uVar.f4395c = "1004773";
            uVar.f4408p = String.valueOf(bVar.a());
            uVar.f4409q = bVar.c();
            a(uVar);
        }
    }

    public static void a(String str, int i2, String str2, int i3, boolean z2, boolean z3, boolean z4, String str3) {
        u uVar = new u("", "");
        uVar.f4395c = "1004774";
        uVar.f4408p = str;
        uVar.f4409q = String.valueOf(i2);
        uVar.f4410r = str2;
        uVar.f4411s = String.valueOf(i3);
        uVar.f4412t = z2 ? "1" : "2";
        uVar.f4413u = z3 ? "1" : "2";
        uVar.f4414v = z4 ? "1" : "2";
        uVar.f4415w = str3;
        a(uVar);
    }

    public static void a(au auVar) {
        if (auVar == null) {
            return;
        }
        u uVar = new u("", "");
        uVar.f4395c = "1004775";
        uVar.f4408p = String.valueOf(auVar.d());
        uVar.f4409q = auVar.c();
        List<String> listE = auVar.e();
        if (listE != null) {
            uVar.f4410r = new JSONArray((Collection) listE).toString();
        }
        Set<String> setF = auVar.f();
        if (setF != null) {
            uVar.f4411s = new JSONArray((Collection) setF).toString();
        }
        uVar.f4412t = String.valueOf(auVar.g());
        a(uVar);
    }

    public static void a(n nVar, int i2, int i3, int i4, String str, String str2, int[] iArr, int[] iArr2) {
        String str3;
        String str4 = "";
        u uVar = new u("", "");
        uVar.a(nVar);
        uVar.f4395c = "1004776";
        uVar.f4408p = (i2 == 1 || i2 == 2 || i2 == 3) ? "2" : "1";
        uVar.f4409q = s.b().af();
        uVar.f4410r = String.valueOf(i3);
        uVar.f4411s = String.valueOf(i4);
        uVar.f4412t = String.valueOf(i2);
        uVar.f4413u = str;
        uVar.f4414v = str2;
        if (iArr == null || iArr.length < 2) {
            str3 = "";
        } else {
            str3 = iArr[0] + "-" + iArr[1];
        }
        uVar.f4415w = str3;
        if (iArr2 != null && iArr2.length >= 2) {
            str4 = iArr2[0] + "-" + iArr2[1];
        }
        uVar.f4416x = str4;
        a(uVar);
    }

    public static void a(u uVar) {
        if (uVar == null || s.b().g() == null) {
            return;
        }
        if (TextUtils.isEmpty(uVar.f4398f)) {
            uVar.f4398f = s.b().r();
        }
        if (!TextUtils.isEmpty(uVar.f4397e)) {
            uVar.f4399g = s.b().g(uVar.f4397e);
            c(uVar);
            if (ATAdxSetting.getInstance().isAdxNetworkMode(uVar.f4397e)) {
                uVar.aa = 1;
            }
        }
        uVar.f4402j = String.valueOf(System.currentTimeMillis());
        com.anythink.core.common.u.a.a.a().a(uVar);
    }

    public static void a(final String str) {
        a(new Runnable() { // from class: com.anythink.core.common.u.f.7
            @Override // java.lang.Runnable
            public final void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                u uVarA = u.a(str);
                if (TextUtils.isEmpty(uVarA.f4395c)) {
                    return;
                }
                f.a(uVarA);
            }
        });
    }

    private static void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8098G, runnable));
    }

    private static void a(x xVar, w wVar, String str, String str2, int i2, int i3) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004650";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        uVar.f4409q = String.valueOf(wVar.a());
        uVar.f4410r = str;
        uVar.f4411s = str2;
        uVar.f4412t = String.valueOf(i2);
        if (wVar instanceof r) {
            uVar.f4414v = String.valueOf(((r) wVar).Q());
        }
        uVar.f4415w = String.valueOf(xVar.f4482b);
        if (i3 > 0) {
            uVar.f4416x = String.valueOf(i3);
        }
        uVar.f4417y = "";
        a(uVar);
    }

    private static void a(x xVar, w wVar, String str, String str2) {
        if (xVar == null || wVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), "66");
        uVar.f4395c = "1004743";
        uVar.f4396d = xVar.f4486f;
        uVar.f4397e = xVar.f4481a;
        uVar.a(xVar);
        uVar.f4408p = str;
        if (wVar instanceof r) {
            r rVar = (r) wVar;
            uVar.f4409q = String.valueOf(rVar.Q());
            uVar.f4410r = String.valueOf(rVar.i());
        }
        uVar.f4411s = String.valueOf(xVar.f4482b);
        uVar.f4412t = str2;
        uVar.f4413u = "1";
        uVar.f4414v = "";
        uVar.f4415w = "";
        a(uVar);
    }

    private static void a(w wVar, x xVar, long j2, long j3) {
        String string;
        String string2;
        if (wVar == null || xVar == null) {
            return;
        }
        u uVar = new u(String.valueOf(xVar.f4482b), String.valueOf(xVar.f4490j));
        uVar.f4395c = "1004761";
        uVar.a(xVar);
        uVar.f4408p = wVar.i();
        if (wVar instanceof r) {
            uVar.f4409q = ((r) wVar).Q();
        }
        uVar.f4410r = "1";
        uVar.f4411s = String.valueOf(j2);
        uVar.f4412t = wVar.L();
        String string3 = "";
        if (wVar.g() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(wVar.g().Z());
            string = sb.toString();
        } else {
            string = "";
        }
        uVar.f4413u = string;
        if (wVar.g() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(wVar.g().X());
            string2 = sb2.toString();
        } else {
            string2 = "";
        }
        uVar.f4414v = string2;
        if (wVar.g() != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(wVar.g().Y());
            string3 = sb3.toString();
        }
        uVar.f4415w = string3;
        if (j3 > 0) {
            uVar.f4418z = String.valueOf(j3);
        }
        a(uVar);
    }

    public static /* synthetic */ String a(AdError adError, int i2, String str, int i3) {
        com.anythink.core.common.w.a.b.c cVar;
        aj ajVarA;
        if (i3 == 0 && (cVar = (com.anythink.core.common.w.a.b.c) com.anythink.core.common.w.a.a.d.a(str, com.anythink.core.common.w.a.b.c.class)) != null && adError != null && (ajVarA = cVar.a()) != null && ajVarA.e() != null) {
            return com.anythink.core.common.w.a.d.a.a(adError.getPlatformCode() + "," + adError.getPlatformMSG(), ajVarA.e().get(Integer.valueOf(i2)));
        }
        return "";
    }
}

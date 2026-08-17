package com.anythink.core.c;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.z;
import com.anythink.core.common.v.ac;
import com.anythink.core.e.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: f, reason: collision with root package name */
    protected com.anythink.core.common.h.a f1998f;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f1999g;

    /* renamed from: j, reason: collision with root package name */
    protected long f2002j;

    /* renamed from: a, reason: collision with root package name */
    private final String f1997a = getClass().getSimpleName() + ":";

    /* renamed from: h, reason: collision with root package name */
    protected AtomicBoolean f2000h = new AtomicBoolean(false);

    /* renamed from: i, reason: collision with root package name */
    protected AtomicBoolean f2001i = new AtomicBoolean(false);

    public d(com.anythink.core.common.h.a aVar) {
        this.f1998f = aVar;
    }

    public static JSONArray b(List<com.anythink.core.c.c.a> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<com.anythink.core.c.c.a> it = list.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = it.next().a();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("network_firm_id", 67);
                if (jSONObjectA.has(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_AD_SOURCEIDS)) {
                    jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_AD_SOURCEIDS, jSONObjectA.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_AD_SOURCEIDS));
                }
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    public abstract void a();

    public abstract void a(com.anythink.core.c.b.b bVar);

    public abstract void a(by byVar, z zVar, long j2);

    public void a(boolean z2) {
        this.f1999g = z2;
    }

    public final f c() {
        com.anythink.core.common.f fVar;
        com.anythink.core.common.h.a aVar = this.f1998f;
        if (aVar == null || (fVar = aVar.f3566J) == null) {
            return null;
        }
        return fVar.f();
    }

    public final boolean d() {
        return this.f2000h.get();
    }

    public static JSONArray a(List<by> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        try {
            for (by byVar : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("network_firm_id", byVar.n());
                jSONObject.put("ad_source_id", byVar.G());
                jSONObject.put("content", byVar.r());
                if (!TextUtils.isEmpty(byVar.M())) {
                    jSONObject.put("error", byVar.M());
                }
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    private void b(ad adVar, by byVar) throws Throwable {
        ay ayVar = new ay(9, byVar, this.f1998f.f3585s, adVar.getSortPrice());
        a(ayVar, byVar);
        com.anythink.core.c.d.c.a(adVar, ayVar, true, 33);
    }

    public static void a(by byVar, String str, long j2, int i2) {
        byVar.e(j2);
        byVar.b(0.0d);
        byVar.e(0.0d);
        byVar.k(i2);
        byVar.m();
        if (TextUtils.isEmpty(str)) {
            byVar.i("bid error");
        } else {
            byVar.i(str);
        }
    }

    public static boolean a(boolean z2, by byVar, z zVar) {
        double dAz = byVar.az();
        boolean z3 = false;
        if (z2 && dAz > 0.0d && zVar.getPrice() < dAz) {
            z3 = true;
        }
        if (z3) {
            byVar.ag(1);
        }
        return z3;
    }

    private void a(ad adVar, by byVar) throws Throwable {
        ay ayVar = new ay(6, byVar, this.f1998f.f3585s, adVar.getSortPrice());
        a(ayVar, byVar);
        com.anythink.core.c.d.c.a(adVar, ayVar, true, 23);
    }

    private static void a(ay ayVar, by byVar) {
        if (byVar != null) {
            int iBE = byVar.bE();
            if (iBE == 1) {
                ayVar.d(byVar.az());
            } else if (iBE == 2) {
                ayVar.b(byVar.bG());
                ayVar.d(byVar.bF());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.anythink.core.common.h.by r13, com.anythink.core.common.h.ad r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.a(com.anythink.core.common.h.by, com.anythink.core.common.h.ad):void");
    }

    public final boolean a(by byVar, String str, int i2) {
        return a(byVar, str, i2, 0);
    }

    public final boolean a(by byVar, String str, int i2, int i3) {
        ad adVarA = c() != null ? c().a(this.f1998f.f3571e, byVar) : null;
        if (adVarA != null && !adVarA.a()) {
            if (ac.a(0, this.f1998f.f3585s, byVar, adVarA) != null) {
                return false;
            }
            byVar.a(adVarA, 0, i2, i3);
            byVar.i(str);
            return true;
        }
        if (adVarA != null) {
            try {
                n nVarAh = this.f1998f.f3585s.ah();
                nVarAh.J(adVarA.c());
                nVarAh.D(adVarA.w());
                nVarAh.L(adVarA.getOriginRequestId());
                com.anythink.core.c.d.c.a(adVarA, new ay(1, byVar, nVarAh), true, 25);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r7, com.anythink.core.common.h.z r8, double r9, boolean r11) {
        /*
            r6 = this;
            r0 = 28
            if (r7 == r0) goto L5
            goto L71
        L5:
            com.anythink.core.common.h.a r0 = r6.f1998f
            com.anythink.core.common.h.ce r0 = r0.f3580n
            com.anythink.core.e.m r0 = r0.a()
            org.json.JSONObject r0 = r0.D()
            if (r0 == 0) goto L28
            java.lang.String r7 = java.lang.String.valueOf(r7)
            double r0 = r0.optDouble(r7)
            r2 = 0
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 <= 0) goto L28
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 > 0) goto L28
            goto L2d
        L28:
            r0 = 4606732058837280358(0x3fee666666666666, double:0.95)
        L2d:
            double r2 = r8.originPrice
            double r2 = r2 * r0
            com.anythink.core.common.h.a r7 = r6.f1998f
            com.anythink.core.common.w.i r7 = r7.f3591y
            if (r7 == 0) goto L3b
            java.util.List r7 = r7.a()
            goto L3c
        L3b:
            r7 = 0
        L3c:
            if (r7 == 0) goto L5c
            java.util.Iterator r7 = r7.iterator()
        L42:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L5c
            java.lang.Object r0 = r7.next()
            com.anythink.core.common.h.by r0 = (com.anythink.core.common.h.by) r0
            double r0 = com.anythink.core.common.v.o.a(r0)
            double r4 = r8.originPrice
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L42
            double r2 = java.lang.Math.max(r2, r0)
        L5c:
            double r9 = java.lang.Math.max(r2, r9)
            double r0 = r8.originPrice
            double r0 = r0 - r9
            double r2 = java.lang.Math.random()
            double r2 = r2 * r0
            double r9 = r9 + r2
            r8.setPrice(r9)
            if (r11 == 0) goto L71
            r8.setSortPrice(r9)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.a(int, com.anythink.core.common.h.z, double, boolean):void");
    }

    public final double a(by byVar) {
        if (byVar.ax() == null) {
            return 1.0d;
        }
        return a(this.f1998f.f3580n.a(), byVar.ax());
    }

    private double a(double d2, ATAdConst.CURRENCY currency) {
        return currency == null ? d2 : d2 * a(this.f1998f.f3580n.a(), currency);
    }

    private static double a(m mVar, ATAdConst.CURRENCY currency) {
        if (mVar == null) {
            return 1.0d;
        }
        if (currency == ATAdConst.CURRENCY.RMB_CENT) {
            return (1.0d / mVar.M()) * 100.0d;
        }
        if (currency == ATAdConst.CURRENCY.RMB) {
            return 1.0d / mVar.M();
        }
        return 1.0d;
    }

    public final double a(double d2, by byVar) {
        double dM;
        if (byVar.ax() != null) {
            m mVarA = this.f1998f.f3580n.a();
            if (byVar.ax() == ATAdConst.CURRENCY.RMB) {
                dM = mVarA.M();
            } else if (byVar.ax() == ATAdConst.CURRENCY.RMB_CENT) {
                d2 /= 100.0d;
                dM = mVarA.M();
            }
            return d2 * dM;
        }
        return d2;
    }

    public final void a(long j2) {
        this.f2002j = j2;
    }
}

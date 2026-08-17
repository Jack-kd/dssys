package com.anythink.core.d.b;

import android.text.TextUtils;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cg;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.ad;
import com.anythink.core.e.g;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.umeng.analytics.pro.be;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d implements b {

    /* renamed from: b, reason: collision with root package name */
    private static final String f8587b = "PlacementStatisticRecord";

    /* renamed from: a, reason: collision with root package name */
    a f8588a;

    /* renamed from: c, reason: collision with root package name */
    private final o f8589c = o.a(s.b().g());

    /* renamed from: d, reason: collision with root package name */
    private final e f8590d;

    /* renamed from: e, reason: collision with root package name */
    private final f f8591e;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, com.anythink.core.d.a.b> f8592f;

    /* renamed from: g, reason: collision with root package name */
    private final ConcurrentHashMap<String, Boolean> f8593g;

    public d() {
        e eVarA = e.a();
        this.f8590d = eVarA;
        this.f8591e = new f(eVarA);
        this.f8592f = new ConcurrentHashMap<>();
        this.f8593g = new ConcurrentHashMap<>();
        this.f8588a = new a(eVarA);
    }

    private com.anythink.core.d.a.b c(String str) {
        m mVarB = this.f8589c.b(str);
        com.anythink.core.d.a.b bVar = this.f8592f.get(str);
        if (bVar == null) {
            bVar = new com.anythink.core.d.a.b();
            String strC = ad.c(s.b().g(), t.b.f3060c, str, "");
            if (!TextUtils.isEmpty(strC)) {
                try {
                    bVar.a(Double.parseDouble(strC));
                } catch (Exception unused) {
                }
            }
            this.f8592f.put(str, bVar);
        }
        if (mVarB != null) {
            bVar.a(mVarB.aS());
            bVar.a(mVarB.aV());
            bVar.b(mVarB.aU());
            bVar.c(mVarB.aX());
            bVar.d(mVarB.j() != null ? 1 : 2);
        }
        return bVar;
    }

    private void d(final String str) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bW, new Runnable() { // from class: com.anythink.core.d.b.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.this.f8592f.remove(str);
                d.this.f8590d.a(str);
            }
        }));
    }

    @Override // com.anythink.core.d.b.b
    public final void a(String str, String str2, int i2, ATAdRequest aTAdRequest, by byVar) throws JSONException {
        com.anythink.core.d.a.c cVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if ((byVar == null || !byVar.bz()) && b(str, 10)) {
            com.anythink.core.d.a.a aVar = new com.anythink.core.d.a.a();
            if (byVar != null) {
                aVar.b(byVar.G());
                com.anythink.core.common.h.ad adVarY = byVar.Y();
                if (adVarY != null) {
                    cg cgVar = adVarY.f3689v;
                    aVar.c(cgVar != null ? cgVar.f() : "");
                }
                aVar.a(byVar.K());
                aVar.b(byVar.n());
            }
            aVar.a(str2);
            aVar.d(s.b().r());
            aVar.a(System.currentTimeMillis());
            aVar.e(str);
            aVar.c(10);
            aVar.a(i2);
            if (byVar != null && (cVar = this.f8588a.f8573a.get(str)) != null) {
                cVar.a(aVar);
            }
            a(aVar, aTAdRequest);
        }
    }

    @Override // com.anythink.core.d.b.b
    public final void b(String str) throws JSONException {
        a(str, c(str));
    }

    private boolean b(String str, int i2) {
        com.anythink.core.d.a.b bVarC = c(str);
        boolean z2 = bVarC.c() || bVarC.h();
        Boolean bool = this.f8593g.get(str);
        if (bool != null) {
            boolean zEquals = Boolean.TRUE.equals(bool);
            if (!z2 && zEquals) {
                d(str);
            }
        } else if (!z2) {
            d(str);
        }
        this.f8593g.put(str, Boolean.valueOf(z2));
        return i2 == 4 ? bVarC.c() : z2;
    }

    private JSONArray b(int i2, String str, int i3) {
        List<com.anythink.core.d.a.a> listA = a(i2, str, i3);
        if (listA == null || listA.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<com.anythink.core.d.a.a> it = listA.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().i());
        }
        return jSONArray;
    }

    private static com.anythink.core.d.a.a b(bx bxVar, by byVar) {
        com.anythink.core.d.a.a aVar = new com.anythink.core.d.a.a();
        if (bxVar != null) {
            aVar.a(bxVar.aR());
            aVar.e(bxVar.aQ());
            if (bxVar instanceof n) {
                aVar.a(((n) bxVar).aa());
            }
        }
        if (byVar != null) {
            aVar.b(byVar.G());
            com.anythink.core.common.h.ad adVarY = byVar.Y();
            if (adVarY != null) {
                cg cgVar = adVarY.f3689v;
                aVar.c(cgVar != null ? cgVar.f() : "");
            }
            aVar.a(byVar.aK() > 0.0d ? byVar.aK() : byVar.K());
            aVar.b(byVar.n());
        }
        aVar.d(s.b().r());
        aVar.a(System.currentTimeMillis());
        aVar.c(4);
        return aVar;
    }

    @Override // com.anythink.core.d.b.b
    public final void a(bx bxVar, by byVar) throws JSONException {
        ATAdRequest aTAdRequestB;
        if (bxVar == null || byVar == null || byVar.bz()) {
            return;
        }
        String strAQ = bxVar.aQ();
        if (!TextUtils.isEmpty(strAQ) && b(strAQ, 4)) {
            try {
                aTAdRequestB = ((n) bxVar).b();
            } catch (Exception unused) {
                aTAdRequestB = null;
            }
            com.anythink.core.d.a.a aVar = new com.anythink.core.d.a.a();
            aVar.a(bxVar.aR());
            aVar.e(bxVar.aQ());
            if (bxVar instanceof n) {
                aVar.a(((n) bxVar).aa());
            }
            aVar.b(byVar.G());
            com.anythink.core.common.h.ad adVarY = byVar.Y();
            if (adVarY != null) {
                cg cgVar = adVarY.f3689v;
                aVar.c(cgVar != null ? cgVar.f() : "");
            }
            aVar.a(byVar.aK() > 0.0d ? byVar.aK() : byVar.K());
            aVar.b(byVar.n());
            aVar.d(s.b().r());
            aVar.a(System.currentTimeMillis());
            aVar.c(4);
            a(aVar, aTAdRequestB);
        }
    }

    @Override // com.anythink.core.d.b.b
    public final List<com.anythink.core.d.a.a> a(int i2, String str, int i3) {
        e eVar = this.f8590d;
        if (eVar != null) {
            return eVar.a(i2, str, i3);
        }
        return null;
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str) {
        return a(str, 0);
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.anythink.core.d.a.b bVarC = c(str);
        if (bVarC.b()) {
            return a(str, i2, bVarC.a());
        }
        return null;
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str, int i2, int i3) throws JSONException {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            jSONObject = new JSONObject();
            if (i2 == 4) {
                JSONArray jSONArrayB = b(4, str, i3);
                if (jSONArrayB != null) {
                    jSONObject.put(be.f48800c, jSONArrayB);
                }
            } else if (i2 == 10) {
                JSONArray jSONArrayB2 = b(10, str, i3);
                if (jSONArrayB2 != null) {
                    jSONObject.put("fill", jSONArrayB2);
                }
            } else {
                JSONArray jSONArrayB3 = b(10, str, i3);
                if (jSONArrayB3 != null) {
                    jSONObject.put("fill", jSONArrayB3);
                }
                JSONArray jSONArrayB4 = b(4, str, i3);
                if (jSONArrayB4 != null) {
                    jSONObject.put(be.f48800c, jSONArrayB4);
                }
                jSONObject.put("def_ecpm", String.valueOf(a(str, jSONArrayB4)));
            }
        } catch (Exception unused) {
        }
        if (jSONObject.length() > 0) {
            return jSONObject;
        }
        return null;
    }

    @Override // com.anythink.core.d.b.b
    public final com.anythink.core.d.a.d a(String str, int i2, g gVar) {
        a aVar = this.f8588a;
        com.anythink.core.d.a.c cVar = aVar.f8573a.get(str);
        int i3 = gVar.a() == 1 ? i2 : -1;
        if (cVar != null && cVar.b(gVar) && cVar.a(i3) != null) {
            cVar.c(i2);
        } else {
            cVar = new com.anythink.core.d.a.c();
            cVar.a(gVar);
            int iC = gVar.c();
            long jCurrentTimeMillis = System.currentTimeMillis() - ((gVar.b() * 86400) * 1000);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            cVar.a(i3, aVar.f8574b.a(str, i3, calendar.getTimeInMillis(), iC));
            aVar.f8573a.put(str, cVar);
        }
        return cVar.b(i3);
    }

    private void a(com.anythink.core.d.a.a aVar, ATAdRequest aTAdRequest) throws JSONException {
        String strJ = aVar.j();
        com.anythink.core.d.a.b bVarC = c(strJ);
        e eVar = this.f8590d;
        if (eVar != null) {
            eVar.a(aVar);
        }
        if (aVar.k() == 4) {
            a(strJ, bVarC, aTAdRequest);
        }
    }

    private double a(String str, JSONArray jSONArray) {
        com.anythink.core.d.a.b bVarC = c(str);
        if (!bVarC.e()) {
            return bVarC.g();
        }
        if (jSONArray == null) {
            return -1.0d;
        }
        try {
            if (jSONArray.length() > 0) {
                return jSONArray.getJSONObject(0).getDouble("ecpm");
            }
            return -1.0d;
        } catch (Exception unused) {
            return -1.0d;
        }
    }

    private void a(String str, com.anythink.core.d.a.b bVar, ATAdRequest aTAdRequest) throws JSONException {
        double[][] dArrF;
        if (bVar == null || (dArrF = bVar.f()) == null) {
            return;
        }
        if (bVar.e()) {
            a(str, aTAdRequest);
            return;
        }
        double[] dArrA = a(str, bVar);
        double d2 = dArrA[0];
        double d3 = dArrA[1];
        if (d2 == d3) {
            return;
        }
        double[] dArrA2 = d2 > 0.0d ? a(dArrF, d2) : null;
        double[] dArrA3 = d3 > 0.0d ? a(dArrF, d3) : null;
        if (dArrA2 == null) {
            if (dArrA3 == null) {
                return;
            }
        } else if (dArrA3 != null && dArrA2[0] == dArrA3[0] && dArrA2[1] == dArrA3[1]) {
            return;
        }
        a(str, aTAdRequest);
    }

    private static com.anythink.core.d.a.a a(String str, String str2, int i2, by byVar) {
        com.anythink.core.d.a.a aVar = new com.anythink.core.d.a.a();
        if (byVar != null) {
            aVar.b(byVar.G());
            com.anythink.core.common.h.ad adVarY = byVar.Y();
            if (adVarY != null) {
                cg cgVar = adVarY.f3689v;
                aVar.c(cgVar != null ? cgVar.f() : "");
            }
            aVar.a(byVar.K());
            aVar.b(byVar.n());
        }
        aVar.a(str);
        aVar.d(s.b().r());
        aVar.a(System.currentTimeMillis());
        aVar.e(str2);
        aVar.c(10);
        aVar.a(i2);
        return aVar;
    }

    private double[] a(String str, com.anythink.core.d.a.b bVar) throws JSONException {
        if (bVar != null && !bVar.e()) {
            double dA = this.f8591e.a(bVar.d(), str);
            double dG = bVar.g();
            if (dG != dA) {
                bVar.a(dA);
                this.f8592f.put(str, bVar);
                ad.b(s.b().g(), t.b.f3060c, str, String.valueOf(dA));
            }
            return new double[]{dA, dG};
        }
        return new double[]{-1.0d, -1.0d};
    }

    private static double[] a(double[][] dArr, double d2) {
        for (double[] dArr2 : dArr) {
            if (dArr2.length == 2) {
                double d3 = dArr2[0];
                double d4 = dArr2[1];
                if (d2 >= d3 && d2 <= d4) {
                    return dArr2;
                }
            }
        }
        return null;
    }

    private void a(String str, ATAdRequest aTAdRequest) {
        s sVarB = s.b();
        this.f8589c.a(this.f8589c.f(str), sVarB.p(), sVarB.q(), str, null, null, 2, true, aTAdRequest, true, i.ac.f2552g);
    }
}

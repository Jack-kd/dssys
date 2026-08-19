package com.anythink.core.c;

import android.os.SystemClock;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cc;
import com.anythink.core.common.h.z;
import com.anythink.core.common.k;
import com.anythink.core.common.m.s;
import com.anythink.core.common.u;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.o;
import com.anythink.core.common.w.i;
import com.anythink.core.e.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c extends e {

    /* renamed from: a, reason: collision with root package name */
    String f1982a;

    /* renamed from: b, reason: collision with root package name */
    List<by> f1983b;

    /* renamed from: c, reason: collision with root package name */
    List<by> f1984c;

    /* renamed from: d, reason: collision with root package name */
    boolean f1985d;

    /* renamed from: e, reason: collision with root package name */
    boolean f1986e;

    public c(com.anythink.core.common.h.a aVar, List<by> list) {
        super(aVar);
        this.f1982a = o.a(aVar.f3568b, this.f2098p, this.f2099q, aVar.f3572f, 0).toString();
        i iVar = aVar.f3591y;
        this.f1983b = iVar != null ? iVar.a() : null;
        this.f1984c = list != null ? new ArrayList(list) : null;
    }

    private String g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("refresh", this.f1998f.f3585s.V());
            com.anythink.core.common.j.a.a().a(jSONObject);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.c.e
    public final synchronized void a(List<JSONObject> list, Map<String, by> map, Map<String, JSONObject> map2) {
        super.a(list, map, map2);
        u.a(this.f1998f.f3568b).a(this.f1998f.f3571e);
        this.f1985d = false;
        this.f1986e = false;
        try {
            Iterator<Map.Entry<String, by>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    by value = it.next().getValue();
                    if (value.n() == 66) {
                        this.f1985d = true;
                    } else if (value.n() == 6) {
                        this.f1986e = true;
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // com.anythink.core.c.e
    public final String b() {
        return this.f1998f.f3578l;
    }

    private void b(JSONArray jSONArray) {
        i iVar = this.f1998f.f3591y;
        List<by> listA = iVar != null ? iVar.a() : null;
        if (listA != null) {
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                by byVar = listA.get(i2);
                if (!byVar.av()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("ad_source_id", byVar.G());
                        jSONObject.put("price", byVar.K());
                        ad adVarY = byVar.Y();
                        if (adVarY != null) {
                            jSONObject.put("tp_bid_id", adVarY.f3674g);
                        }
                        jSONObject.put(k.aq, byVar.aB());
                        jSONArray.put(jSONObject);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        }
    }

    @Override // com.anythink.core.c.e
    public final void a(List<JSONObject> list, s sVar) {
        long j2;
        long j3;
        as asVar;
        as asVar2;
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        b(jSONArray2);
        a(jSONArray);
        com.anythink.core.c.a.b bVar = new com.anythink.core.c.a.b();
        bVar.f1916a = this.f1982a;
        bVar.f1917b = jSONArray2.toString();
        bVar.f1921f = this.f1998f.f3580n.a().aK();
        String string = jSONArray.length() > 0 ? jSONArray.toString() : "";
        cc ccVar = this.f1998f.f3588v;
        if (ccVar != null) {
            bVar.f1919d = ccVar.a().toString();
        }
        bVar.f1920e = string;
        bVar.f1922g = this.f1998f.f3580n.a().C();
        bVar.f1923h = g();
        ac acVar = this.f1998f.f3590x;
        bVar.f1924i = acVar != null ? acVar.i() : "";
        com.anythink.core.common.h.a aVar = this.f1998f;
        String str = aVar.f3558B;
        bVar.f1925j = str != null ? str : "";
        bVar.f1926k = aVar.f3585s.aF();
        com.anythink.core.common.h.a aVar2 = this.f1998f;
        if (aVar2 == null || (asVar2 = aVar2.f3569c) == null) {
            j2 = 0;
            j3 = 0;
        } else {
            j2 = asVar2.f3819k;
            j3 = asVar2.f3816h;
        }
        if (j2 > 0) {
            bVar.f1927l = this.f2102t - aVar2.f3569c.f3819k;
            bVar.f1928m = SystemClock.elapsedRealtime() - this.f1998f.f3569c.f3819k;
        }
        bVar.f1929n = this.f2002j;
        bVar.f1932q = j3;
        bVar.f1931p = this.f1998f.f3580n.i();
        m mVarA = this.f1998f.f3580n.a();
        if (mVarA != null) {
            bVar.f1930o = mVarA.aa();
        }
        bVar.f1933r = com.anythink.core.e.o.a(this.f1998f.f3568b).k(this.f2099q);
        bVar.f1934s = (System.currentTimeMillis() - com.anythink.core.common.d.s.b().Y()) - bVar.f1928m;
        com.anythink.core.common.h.a aVar3 = this.f1998f;
        bVar.f1935t = (aVar3 == null || (asVar = aVar3.f3569c) == null) ? null : asVar.b();
        com.anythink.core.c.a.a aVar4 = new com.anythink.core.c.a.a(this.f2100r, this.f2099q, this.f2098p, list, 0, mVarA);
        aVar4.a(bVar);
        aVar4.a(0, sVar);
    }

    @Override // com.anythink.core.c.e, com.anythink.core.c.d
    public final void a(by byVar, z zVar, long j2) throws Throwable {
        super.a(byVar, zVar, j2);
    }

    private void a(JSONArray jSONArray) {
        List<by> list = this.f1984c;
        if (list != null) {
            Iterator<by> it = list.iterator();
            while (it.hasNext()) {
                List<cc.a> listA = ai.a(this.f2099q, it.next(), this.f1998f);
                if (listA != null && listA.size() > 0) {
                    Iterator<cc.a> it2 = listA.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put(it2.next().a());
                    }
                }
            }
        }
        List<by> list2 = this.f1983b;
        if (list2 != null) {
            Iterator<by> it3 = list2.iterator();
            while (it3.hasNext()) {
                List<cc.a> listA2 = ai.a(this.f2099q, it3.next(), this.f1998f);
                if (listA2 != null && listA2.size() > 0) {
                    Iterator<cc.a> it4 = listA2.iterator();
                    while (it4.hasNext()) {
                        jSONArray.put(it4.next().a());
                    }
                }
            }
        }
    }
}

package com.smartdigimkt.a5;

import androidx.work.PeriodicWorkRequest;
import com.anythink.core.e.m;
import com.smartdigimkt.c5.n;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class e extends b {

    /* renamed from: A, reason: collision with root package name */
    public int f39407A;

    /* renamed from: C, reason: collision with root package name */
    public String f39409C;

    /* renamed from: D, reason: collision with root package name */
    public List f39410D;

    /* renamed from: E, reason: collision with root package name */
    public com.smartdigimkt.p3.b f39411E;

    /* renamed from: F, reason: collision with root package name */
    public JSONArray f39412F;

    /* renamed from: G, reason: collision with root package name */
    public Boolean f39413G;

    /* renamed from: H, reason: collision with root package name */
    public List f39414H;

    /* renamed from: e, reason: collision with root package name */
    public final String f39415e;

    /* renamed from: f, reason: collision with root package name */
    public long f39416f;

    /* renamed from: g, reason: collision with root package name */
    public long f39417g;

    /* renamed from: h, reason: collision with root package name */
    public long f39418h;

    /* renamed from: i, reason: collision with root package name */
    public int f39419i;

    /* renamed from: j, reason: collision with root package name */
    public int f39420j;

    /* renamed from: k, reason: collision with root package name */
    public long f39421k;

    /* renamed from: l, reason: collision with root package name */
    public int f39422l;

    /* renamed from: m, reason: collision with root package name */
    public int f39423m;

    /* renamed from: n, reason: collision with root package name */
    public int f39424n;

    /* renamed from: o, reason: collision with root package name */
    public long f39425o;

    /* renamed from: p, reason: collision with root package name */
    public long f39426p;

    /* renamed from: q, reason: collision with root package name */
    public JSONArray f39427q;

    /* renamed from: r, reason: collision with root package name */
    public JSONArray f39428r;

    /* renamed from: s, reason: collision with root package name */
    public double f39429s;

    /* renamed from: t, reason: collision with root package name */
    public int f39430t;

    /* renamed from: u, reason: collision with root package name */
    public int f39431u;

    /* renamed from: v, reason: collision with root package name */
    public long f39432v;

    /* renamed from: x, reason: collision with root package name */
    public JSONObject f39434x;

    /* renamed from: y, reason: collision with root package name */
    public c f39435y;

    /* renamed from: z, reason: collision with root package name */
    public JSONObject f39436z;

    /* renamed from: w, reason: collision with root package name */
    public int f39433w = 0;

    /* renamed from: B, reason: collision with root package name */
    public String f39408B = "";

    public e(String str) {
        this.f39415e = str;
    }

    public static e b(String str, JSONObject jSONObject) {
        long jOptLong;
        e eVar = new e(str);
        System.currentTimeMillis();
        try {
            eVar.f39396a = jSONObject;
            eVar.b(jSONObject);
            eVar.a(jSONObject);
            if (jSONObject.isNull(m.a.ac)) {
                eVar.f39432v = 0L;
                jOptLong = 0;
            } else {
                jOptLong = jSONObject.optLong(m.a.ac);
                eVar.f39432v = jOptLong;
            }
            eVar.f39416f = jSONObject.optLong("ps_ct", 0L);
            eVar.f39417g = jSONObject.optLong(m.a.ay, 604800000L);
            eVar.f39418h = jSONObject.optLong("ps_ct_out", 0L);
            eVar.f39419i = jSONObject.optInt("pucs", 1);
            eVar.f39420j = jSONObject.optInt("ad_delivery_sw", 1);
            jSONObject.optString("session_id");
            eVar.f39421k = jSONObject.optLong("s_t", PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
            eVar.f39422l = jSONObject.optInt("is_test", 2);
            eVar.f39423m = jSONObject.optInt("format", 0);
            eVar.f39424n = jSONObject.optInt("auto_refresh", 0);
            eVar.f39425o = jSONObject.optInt("auto_refresh_time", 0);
            eVar.f39426p = jSONObject.optLong(m.a.f8925a, 10000L);
            jSONObject.optString(m.a.f8926b);
            jSONObject.optLong("s_ts");
            eVar.f39433w = jSONObject.optInt(m.a.av, 0);
            eVar.f39434x = jSONObject.optJSONObject(m.a.aa);
            jSONObject.optInt("p_m_o", 0);
            jSONObject.optInt("u_n_f_sw", 0);
            eVar.f39411E = com.smartdigimkt.p3.b.t(jSONObject.optString("m_o_s", ""));
            if (!jSONObject.isNull("m_o")) {
                eVar.f39410D = com.smartdigimkt.p3.a.a(jSONObject.optString("m_o"), jSONObject.optString("m_o_ks"), jOptLong, eVar.f39411E);
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(m.a.aB);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                c cVar = new c();
                cVar.f39400a = jSONObject.optString("unique_id");
                cVar.f39402c = jSONObjectOptJSONObject.optString(m.a.aC);
                cVar.f39403d = jSONObjectOptJSONObject.optInt(m.a.aD);
                cVar.f39404e = jSONObjectOptJSONObject.optInt("c_id");
                eVar.f39435y = cVar;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(m.a.aR);
            if (jSONObjectOptJSONObject2 != null) {
                eVar.f39436z = jSONObjectOptJSONObject2;
            }
            eVar.f39407A = jSONObject.optInt(m.a.f8909K, 0);
            eVar.f39408B = jSONObject.optString(m.a.f8917S);
            eVar.f39432v = jSONObject.optLong(m.a.ac, 0L);
            eVar.f39427q = jSONObject.optJSONArray(m.a.f8931g);
            eVar.f39428r = jSONObject.optJSONArray(m.a.f8947w);
            eVar.f39429s = jSONObject.optDouble("bid_floor", 0.0d);
            eVar.f39430t = jSONObject.optInt(d.f39406a, 0);
            eVar.f39431u = jSONObject.optInt(m.a.f8911M, 0);
            double dOptDouble = jSONObject.optDouble(m.a.f8946v, 0.1614d);
            n.f39793a = dOptDouble;
            if (dOptDouble > 0.0d) {
                n.f39794b = 1.0d / dOptDouble;
            }
            eVar.f39409C = jSONObject.optString("asid");
            if (jSONObject.isNull("ug_list")) {
                eVar.f39412F = new JSONArray();
            } else {
                eVar.f39412F = jSONObject.optJSONArray("ug_list");
            }
        } catch (Throwable unused) {
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = eVar.f39427q;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObjectOptJSONObject3 = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject3 != null) {
                    f fVarA = com.smartdigimkt.b5.a.a(4, 3, jSONObjectOptJSONObject3, eVar);
                    concurrentHashMap.put(fVarA.f39450k, fVarA);
                    if (fVarA.f39441b == 35) {
                        arrayList.add(fVarA);
                    }
                    if (fVarA.f39457r <= 0.0d) {
                        double d2 = eVar.f39429s;
                        if (d2 > 0.0d) {
                            fVarA.f39457r = d2;
                        }
                    }
                    if (eVar.f39413G == null && fVarA.f39446g == 1 && fVarA.f39463x == 1) {
                        eVar.f39413G = Boolean.TRUE;
                    }
                }
            } catch (Throwable unused2) {
            }
        }
        ArrayList arrayListA = com.smartdigimkt.b5.a.a(eVar, eVar.f39412F, 0, 1);
        arrayList.clear();
        if (!arrayListA.isEmpty()) {
            for (int i3 = 0; i3 < arrayListA.size(); i3++) {
                if (((f) arrayListA.get(i3)).f39441b == 35) {
                    arrayList.add((f) arrayListA.get(i3));
                }
            }
        }
        eVar.f39414H = arrayList;
        return eVar;
    }

    public final boolean c() {
        int i2 = this.f39433w;
        if (i2 != 0) {
            if (i2 == 1) {
                return false;
            }
            if (i2 != 2) {
                return true;
            }
        }
        return System.currentTimeMillis() - this.f39432v > this.f39417g;
    }

    public final f b() {
        ArrayList arrayListA = com.smartdigimkt.b5.a.a(this, this.f39427q, 3, 4);
        if (arrayListA.isEmpty()) {
            return null;
        }
        return (f) arrayListA.get(0);
    }
}

package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class x extends AbstractC1114b {

    /* renamed from: A, reason: collision with root package name */
    public static final int f5893A = 21;

    /* renamed from: B, reason: collision with root package name */
    public static final int f5894B = 22;

    /* renamed from: C, reason: collision with root package name */
    public static final int f5895C = 23;

    /* renamed from: D, reason: collision with root package name */
    public static final int f5896D = 24;

    /* renamed from: E, reason: collision with root package name */
    public static final int f5897E = 25;

    /* renamed from: F, reason: collision with root package name */
    public static final int f5898F = 26;

    /* renamed from: G, reason: collision with root package name */
    public static final int f5899G = 27;

    /* renamed from: H, reason: collision with root package name */
    public static final int f5900H = 28;

    /* renamed from: J, reason: collision with root package name */
    private static final String f5901J = "x";

    /* renamed from: a, reason: collision with root package name */
    public static final int f5902a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f5903b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f5904c = 3;

    /* renamed from: l, reason: collision with root package name */
    public static final int f5905l = 4;

    /* renamed from: m, reason: collision with root package name */
    public static final int f5906m = 5;

    /* renamed from: n, reason: collision with root package name */
    public static final int f5907n = 6;

    /* renamed from: o, reason: collision with root package name */
    public static final int f5908o = 7;

    /* renamed from: p, reason: collision with root package name */
    public static final int f5909p = 8;

    /* renamed from: q, reason: collision with root package name */
    public static final int f5910q = 9;

    /* renamed from: r, reason: collision with root package name */
    public static final int f5911r = 10;

    /* renamed from: s, reason: collision with root package name */
    public static final int f5912s = 11;

    /* renamed from: t, reason: collision with root package name */
    public static final int f5913t = 12;

    /* renamed from: u, reason: collision with root package name */
    public static final int f5914u = 13;

    /* renamed from: v, reason: collision with root package name */
    public static final int f5915v = 15;

    /* renamed from: w, reason: collision with root package name */
    public static final int f5916w = 16;

    /* renamed from: x, reason: collision with root package name */
    public static final int f5917x = 18;

    /* renamed from: y, reason: collision with root package name */
    public static final int f5918y = 19;

    /* renamed from: z, reason: collision with root package name */
    public static final int f5919z = 20;

    /* renamed from: K, reason: collision with root package name */
    private Context f5921K;

    /* renamed from: N, reason: collision with root package name */
    private List<com.anythink.core.common.h.o> f5924N;

    /* renamed from: O, reason: collision with root package name */
    private com.anythink.core.common.h.o f5925O;

    /* renamed from: P, reason: collision with root package name */
    private int f5926P;

    /* renamed from: I, reason: collision with root package name */
    boolean f5920I = false;

    /* renamed from: L, reason: collision with root package name */
    private String f5922L = com.anythink.core.common.d.s.b().p();

    /* renamed from: M, reason: collision with root package name */
    private String f5923M = com.anythink.core.common.d.s.b().q();

    private x(Context context, int i2, List<com.anythink.core.common.h.o> list) {
        this.f5921K = context;
        this.f5926P = i2;
        this.f5924N = list;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.h.o oVar = this.f5925O;
        if (oVar != null) {
            return oVar.f4350b.bb;
        }
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.d();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return AbstractC1114b.a(k());
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return this.f5922L;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5921K;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5923M;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObjectI = super.i();
        JSONObject jSONObjectJ = super.j();
        try {
            jSONObjectI.put("app_id", this.f5922L);
            jSONObjectI.put(f.f5769S, this.f5926P);
            Iterator<String> itKeys = jSONObjectJ.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectI.put(next, jSONObjectJ.opt(next));
            }
            Map<String, Object> mapM = com.anythink.core.common.d.s.b().m();
            if (mapM != null && mapM.size() > 0) {
                JSONObject jSONObject = new JSONObject();
                for (String str : mapM.keySet()) {
                    Object obj = mapM.get(str);
                    if (obj != null) {
                        jSONObject.put(str, obj.toString());
                    }
                }
                jSONObjectI.put("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObject = new JSONObject();
        String strA = com.anythink.core.common.v.j.a(i().toString());
        JSONArray jSONArray = new JSONArray();
        List<com.anythink.core.common.h.o> list = this.f5924N;
        if (list != null) {
            Iterator<com.anythink.core.common.h.o> it = list.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = it.next().a();
                a(jSONObjectA);
                jSONArray.put(jSONObjectA);
            }
        } else {
            com.anythink.core.common.h.o oVar = this.f5925O;
            if (oVar != null) {
                JSONObject jSONObjectA2 = oVar.a();
                a(jSONObjectA2);
                jSONArray.put(jSONObjectA2);
            }
        }
        String strA2 = com.anythink.core.common.v.j.a(jSONArray.toString());
        String strC = com.anythink.core.common.v.n.c(this.f5923M + "api_ver=1.0&common=" + strA + "&data=" + strA2);
        try {
            jSONObject.put(f.f5776Z, strA);
            jSONObject.put("data", strA2);
            jSONObject.put(f.f5766P, "1.0");
            jSONObject.put(f.f5775Y, strC);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int n() {
        return 6;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean p() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        List<com.anythink.core.common.h.o> list = this.f5924N;
        com.anythink.core.common.u.f.a("tk", adError.getPlatformCode(), adError.getPlatformMSG(), b(), (String) null, String.valueOf(list != null ? list.size() : 1), "0", (ATAdRequest) null);
    }

    private void a(JSONObject jSONObject) throws JSONException {
        if (!this.f5920I || jSONObject == null) {
            return;
        }
        try {
            jSONObject.put(f.f5770T, 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}

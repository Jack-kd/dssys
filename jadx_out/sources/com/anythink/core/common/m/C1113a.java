package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.anythink.core.common.m.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1113a extends AbstractC1114b {

    /* renamed from: b, reason: collision with root package name */
    private static final String f5506b = "a";

    /* renamed from: c, reason: collision with root package name */
    private Context f5508c;

    /* renamed from: n, reason: collision with root package name */
    private List<String> f5511n;

    /* renamed from: o, reason: collision with root package name */
    private int f5512o;

    /* renamed from: p, reason: collision with root package name */
    private long f5513p;

    /* renamed from: a, reason: collision with root package name */
    boolean f5507a = false;

    /* renamed from: l, reason: collision with root package name */
    private String f5509l = com.anythink.core.common.d.s.b().p();

    /* renamed from: m, reason: collision with root package name */
    private String f5510m = com.anythink.core.common.d.s.b().q();

    public C1113a(Context context, int i2, List<String> list, long j2) {
        this.f5508c = context;
        this.f5512o = i2;
        this.f5511n = list;
        this.f5513p = j2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(com.anythink.core.common.i.h() ? i.e.f2605H : i.e.f2627l, "tracking");
        if (bVarB != null) {
            String strAN = bVarB.aN();
            if (!TextUtils.isEmpty(strAN)) {
                if (!strAN.startsWith("http")) {
                    return com.anythink.core.common.v.p.a(strA, strAN);
                }
                return strAN + "/v2/open/anr";
            }
        }
        return strA;
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
        return this.f5509l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5508c;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5510m;
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
            jSONObjectI.put("app_id", this.f5509l);
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
    public final String k() {
        JSONObject jSONObject = new JSONObject();
        try {
            String strA = com.anythink.core.common.v.j.a(i().toString());
            JSONArray jSONArray = new JSONArray();
            List<String> list = this.f5511n;
            if (list != null && !list.isEmpty()) {
                for (String str : this.f5511n) {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(f.bx, com.anythink.core.common.v.l.r());
                    jSONObject3.put(f.by, com.anythink.core.common.o.e.a().g());
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(f.bz, com.anythink.core.common.o.e.a().f());
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(f.bw, str);
                    jSONObject2.put(f.br, this.f5513p);
                    jSONObject2.put(f.bs, com.anythink.core.common.d.s.b().ag());
                    jSONObject2.put(f.bt, jSONObject3.toString());
                    jSONObject2.put(f.bu, jSONObject4.toString());
                    jSONObject2.put(f.bv, jSONObject5.toString());
                    jSONArray.put(jSONObject2);
                }
            }
            String strA2 = com.anythink.core.common.v.j.a(jSONArray.toString());
            String strC = com.anythink.core.common.v.n.c(this.f5510m + "api_ver=1.0&common=" + strA + "&data=" + strA2);
            jSONObject.put(f.f5776Z, strA);
            jSONObject.put("data", strA2);
            jSONObject.put(f.f5766P, "1.0");
            jSONObject.put(f.f5775Y, strC);
        } catch (Throwable th) {
            th.printStackTrace();
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
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean a(int i2) {
        return false;
    }

    private static void a(JSONObject jSONObject, int i2) throws JSONException {
        if (jSONObject != null) {
            try {
                jSONObject.put(f.f5770T, i2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}

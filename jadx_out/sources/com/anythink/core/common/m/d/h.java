package com.anythink.core.common.m.d;

import com.anythink.core.common.d.s;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.n;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h extends f {

    /* renamed from: a, reason: collision with root package name */
    List<com.anythink.core.common.u.a.b.a.a.c> f5740a;

    /* renamed from: b, reason: collision with root package name */
    boolean f5741b;

    /* renamed from: c, reason: collision with root package name */
    private final String f5742c = h.class.getSimpleName();

    /* renamed from: n, reason: collision with root package name */
    private int f5743n;

    public h(List<com.anythink.core.common.u.a.b.a.a.c> list) {
        this.f5740a = list;
    }

    private String j() throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectH = super.h();
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectH.put("app_id", s.b().p());
            jSONObjectH.put(com.anythink.core.common.m.f.f5769S, this.f5732l);
            jSONObjectH.put(com.anythink.core.common.m.f.f5771U, this.f5733m);
            Iterator<String> itKeys = jSONObjectI.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectH.put(next, jSONObjectI.opt(next));
            }
            Map<String, Object> mapM = s.b().m();
            if (mapM != null) {
                try {
                    if (mapM.size() > 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (String str : mapM.keySet()) {
                            Object obj = mapM.get(str);
                            if (obj != null) {
                                jSONObject2.put(str, obj.toString());
                            }
                        }
                        jSONObjectH.put("custom", jSONObject2);
                    }
                } catch (Throwable unused) {
                }
            }
            com.anythink.core.common.m.f.b(jSONObjectH);
        } catch (JSONException unused2) {
        }
        String strA = j.a(jSONObjectH.toString());
        JSONArray jSONArray = new JSONArray();
        List<com.anythink.core.common.u.a.b.a.a.c> list = this.f5740a;
        if (list != null) {
            for (com.anythink.core.common.u.a.b.a.a.c cVar : list) {
                JSONObject jSONObjectA = cVar.a();
                if (jSONObjectA != null) {
                    try {
                        jSONObjectA.put(com.anythink.core.common.m.f.f5770T, cVar.b());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    jSONArray.put(jSONObjectA);
                }
            }
        }
        String strA2 = j.a(jSONArray.toString());
        String strC = n.c(s.b().q() + "api_ver=1.0&common=" + strA + "&data=" + strA2);
        try {
            jSONObject.put(com.anythink.core.common.m.f.f5776Z, strA);
            jSONObject.put("data", strA2);
            jSONObject.put(com.anythink.core.common.m.f.f5766P, "1.0");
            jSONObject.put(com.anythink.core.common.m.f.f5775Y, strC);
        } catch (Exception unused3) {
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.d.f
    public final int b() {
        return 3;
    }

    @Override // com.anythink.core.common.m.d.f
    public final byte[] c() {
        List<com.anythink.core.common.u.a.b.a.a.c> list = this.f5740a;
        return (list == null || list.size() <= 0) ? new byte[0] : f.a(j());
    }

    @Override // com.anythink.core.common.m.d.f
    public final boolean d() {
        return this.f5741b;
    }

    @Override // com.anythink.core.common.m.d.f
    public final void e() {
    }

    @Override // com.anythink.core.common.m.d.f
    public final int f() {
        return 6;
    }
}

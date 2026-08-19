package com.anythink.core.common.m.d;

import com.anythink.core.common.d.s;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.n;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a extends f {

    /* renamed from: a, reason: collision with root package name */
    List<String> f5692a;

    /* renamed from: b, reason: collision with root package name */
    int f5693b;

    /* renamed from: c, reason: collision with root package name */
    long f5694c;

    /* renamed from: n, reason: collision with root package name */
    private final String f5695n = a.class.getSimpleName();

    public a(List<String> list, long j2) {
        this.f5692a = list;
        this.f5693b = list.size();
        this.f5694c = j2;
    }

    private int j() {
        return this.f5693b;
    }

    private String k() throws JSONException {
        JSONObject jSONObjectH = super.h();
        JSONObject jSONObjectI = super.i();
        if (jSONObjectH != null) {
            try {
                jSONObjectH.put("app_id", s.b().p());
                jSONObjectH.put("nw_ver", l.h().toString());
                Iterator<String> itKeys = jSONObjectI.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectH.put(next, jSONObjectI.opt(next));
                }
                Map<String, Object> mapM = s.b().m();
                if (mapM != null) {
                    try {
                        if (mapM.size() > 0) {
                            JSONObject jSONObject = new JSONObject();
                            for (String str : mapM.keySet()) {
                                Object obj = mapM.get(str);
                                if (obj != null) {
                                    jSONObject.put(str, obj.toString());
                                }
                            }
                            jSONObjectH.put("custom", jSONObject);
                        }
                    } catch (Throwable unused) {
                    }
                }
                jSONObjectH.put(com.anythink.core.common.m.f.f5769S, this.f5732l);
                jSONObjectH.put(com.anythink.core.common.m.f.f5771U, this.f5733m);
                jSONObjectH.put(com.anythink.core.common.m.f.f5772V, this.f5733m);
            } catch (Exception unused2) {
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        String strA = j.a(jSONObjectH.toString());
        try {
            JSONArray jSONArray = new JSONArray();
            List<String> list = this.f5692a;
            if (list != null && !list.isEmpty()) {
                for (String str2 : this.f5692a) {
                    JSONObject jSONObject3 = new JSONObject();
                    System.currentTimeMillis();
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(com.anythink.core.common.m.f.bx, l.r());
                    jSONObject4.put(com.anythink.core.common.m.f.by, com.anythink.core.common.o.e.a().g());
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(com.anythink.core.common.m.f.bz, com.anythink.core.common.o.e.a().f());
                    JSONObject jSONObject6 = new JSONObject();
                    jSONObject6.put(com.anythink.core.common.m.f.bw, str2);
                    jSONObject3.put(com.anythink.core.common.m.f.br, this.f5694c);
                    jSONObject3.put(com.anythink.core.common.m.f.bs, s.b().ag());
                    jSONObject3.put(com.anythink.core.common.m.f.bt, jSONObject4.toString());
                    jSONObject3.put(com.anythink.core.common.m.f.bu, jSONObject5.toString());
                    jSONObject3.put(com.anythink.core.common.m.f.bv, jSONObject6.toString());
                    jSONArray.put(jSONObject3);
                }
            }
            String strA2 = j.a(jSONArray.toString());
            String strC = n.c(s.b().q() + "api_ver=1.0&common=" + strA + "&data=" + strA2);
            jSONObject2.put(com.anythink.core.common.m.f.f5776Z, strA);
            jSONObject2.put("data", strA2);
            jSONObject2.put(com.anythink.core.common.m.f.f5766P, "1.0");
            jSONObject2.put(com.anythink.core.common.m.f.f5775Y, strC);
        } catch (Exception unused3) {
        }
        return jSONObject2.toString();
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return 10;
    }

    @Override // com.anythink.core.common.m.d.f
    public final int b() {
        return 3;
    }

    @Override // com.anythink.core.common.m.d.f
    public final byte[] c() {
        return f.a(k());
    }

    @Override // com.anythink.core.common.m.d.f
    public final boolean d() {
        return false;
    }

    @Override // com.anythink.core.common.m.d.f
    public final void e() {
    }

    @Override // com.anythink.core.common.m.d.f
    public final int f() {
        return 4;
    }
}

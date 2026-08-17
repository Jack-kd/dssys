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
public class y extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5927a = "y";

    /* renamed from: b, reason: collision with root package name */
    private Context f5928b;

    /* renamed from: c, reason: collision with root package name */
    private String f5929c = com.anythink.core.common.d.s.b().p();

    /* renamed from: l, reason: collision with root package name */
    private String f5930l = com.anythink.core.common.d.s.b().q();

    /* renamed from: m, reason: collision with root package name */
    private List<com.anythink.core.common.u.a.b.a.a.c> f5931m;

    /* renamed from: n, reason: collision with root package name */
    private com.anythink.core.common.u.a.b.a.a.c f5932n;

    /* renamed from: o, reason: collision with root package name */
    private int f5933o;

    public y(Context context, int i2, List<com.anythink.core.common.u.a.b.a.a.c> list) {
        this.f5928b = context;
        this.f5933o = i2;
        this.f5931m = list;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
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
        return this.f5929c;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5928b;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5930l;
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
            jSONObjectI.put("app_id", this.f5929c);
            jSONObjectI.put(f.f5769S, this.f5933o);
            Iterator<String> itKeys = jSONObjectJ.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectI.put(next, jSONObjectJ.opt(next));
            }
            Map<String, Object> mapM = com.anythink.core.common.d.s.b().m();
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
                        jSONObjectI.put("custom", jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
            f.b(jSONObjectI);
        } catch (JSONException unused2) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObjectA;
        JSONObject jSONObject = new JSONObject();
        String strA = com.anythink.core.common.v.j.a(i().toString());
        JSONArray jSONArray = new JSONArray();
        List<com.anythink.core.common.u.a.b.a.a.c> list = this.f5931m;
        if (list != null) {
            for (com.anythink.core.common.u.a.b.a.a.c cVar : list) {
                JSONObject jSONObjectA2 = cVar.a();
                if (jSONObjectA2 != null) {
                    a(jSONObjectA2, cVar.b());
                    jSONArray.put(jSONObjectA2);
                }
            }
        } else {
            com.anythink.core.common.u.a.b.a.a.c cVar2 = this.f5932n;
            if (cVar2 != null && (jSONObjectA = cVar2.a()) != null) {
                a(jSONObjectA, this.f5932n.b());
                jSONArray.put(jSONObjectA);
            }
        }
        String strA2 = com.anythink.core.common.v.j.a(jSONArray.toString());
        String strC = com.anythink.core.common.v.n.c(this.f5930l + "api_ver=1.0&common=" + strA + "&data=" + strA2);
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
    public final boolean a(int i2) {
        return false;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        List<com.anythink.core.common.u.a.b.a.a.c> list = this.f5931m;
        int size = list != null ? list.size() : 1;
        String platformCode = adError.getPlatformCode();
        String platformMSG = adError.getPlatformMSG();
        com.anythink.core.common.i.a();
        com.anythink.core.common.u.f.a("tk", platformCode, platformMSG, com.anythink.core.common.i.d(), (String) null, String.valueOf(size), "0", (ATAdRequest) null);
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

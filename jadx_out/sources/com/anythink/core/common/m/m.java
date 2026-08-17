package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.a;
import com.anythink.core.common.h.ao;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class m extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5825a = "m";

    /* renamed from: b, reason: collision with root package name */
    private final ao f5826b;

    public m(ao aoVar) {
        this.f5826b = aoVar;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.i();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Accept-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        try {
            return k().getBytes("utf-8");
        } catch (Exception unused) {
            return k().getBytes();
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        ao aoVar = this.f5826b;
        return aoVar != null ? aoVar.b() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        ao aoVar = this.f5826b;
        if (aoVar != null) {
            return aoVar.a();
        }
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        ao aoVar = this.f5826b;
        return aoVar != null ? aoVar.c() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() {
        JSONObject jSONObjectI = super.i();
        try {
            ao aoVar = this.f5826b;
            if (aoVar != null) {
                jSONObjectI.put("app_id", aoVar.b());
                jSONObjectI.put(f.bn, this.f5826b.c());
                jSONObjectI.put("t_g_id", this.f5826b.f());
                jSONObjectI.put("gro_id", this.f5826b.g());
            }
        } catch (Throwable unused) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() throws JSONException {
        String string = i().toString();
        String string2 = j().toString();
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.v.j.a(string);
        String strA2 = com.anythink.core.common.v.j.a(string2);
        map.put("p", strA);
        map.put(f.f5774X, strA2);
        ao aoVar = this.f5826b;
        if (aoVar != null) {
            JSONArray jSONArrayD = aoVar.d();
            if (jSONArrayD != null) {
                map.put(f.bq, com.anythink.core.common.v.j.a(jSONArrayD.toString()));
            }
            map.put(a.C0051a.f3218o, this.f5826b.e());
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : setKeySet) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }
}

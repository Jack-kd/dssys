package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class e extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    Context f5744a;

    /* renamed from: b, reason: collision with root package name */
    int f5745b;

    /* renamed from: m, reason: collision with root package name */
    List<String> f5748m;

    /* renamed from: n, reason: collision with root package name */
    int f5749n;

    /* renamed from: o, reason: collision with root package name */
    boolean f5750o = false;

    /* renamed from: c, reason: collision with root package name */
    String f5746c = com.anythink.core.common.d.s.b().p();

    /* renamed from: l, reason: collision with root package name */
    String f5747l = com.anythink.core.common.d.s.b().q();

    public e(Context context, int i2, List<String> list) {
        this.f5744a = context;
        this.f5748m = list;
        this.f5745b = list.size();
        this.f5749n = i2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.e();
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
        return this.f5746c;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5744a;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5747l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObjectI = super.i();
        if (jSONObjectI != null) {
            try {
                jSONObjectI.put("app_id", this.f5746c);
                jSONObjectI.put("nw_ver", com.anythink.core.common.v.l.h());
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
                JSONArray jSONArray = new JSONArray();
                List<String> list = this.f5748m;
                if (list != null && list.size() > 0) {
                    for (String str2 : this.f5748m) {
                        if (!TextUtils.isEmpty(str2)) {
                            jSONArray.put(new JSONObject(str2));
                        }
                    }
                }
                jSONObjectI.put("data", jSONArray);
            } catch (Exception unused2) {
            }
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject j() throws JSONException {
        JSONObject jSONObjectJ = super.j();
        if (jSONObjectJ != null) {
            try {
                jSONObjectJ.put(f.f5769S, this.f5749n);
            } catch (Exception unused) {
            }
        }
        return jSONObjectJ;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int n() {
        return 4;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean p() {
        return true;
    }

    public final void t() {
        this.f5750o = true;
    }

    private static String b(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return Integer.valueOf(this.f5745b);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, s sVar) {
        com.anythink.core.common.i.a();
        if (!TextUtils.isEmpty(com.anythink.core.common.i.e())) {
            super.a(i2, sVar);
        } else if (sVar != null) {
            sVar.onLoadFinish(i2, Integer.valueOf(this.f5745b));
        }
    }
}

package com.anythink.core.common.m;

import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.au;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class n extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    List<au> f5827a;

    /* renamed from: b, reason: collision with root package name */
    long f5828b;

    /* renamed from: c, reason: collision with root package name */
    long f5829c;

    public n(List<au> list) {
        this.f5827a = list;
    }

    private String t() {
        try {
            JSONObject jSONObject = new JSONObject();
            f.a(com.anythink.core.common.d.s.b().g(), jSONObject);
            List<au> list = this.f5827a;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (au auVar : this.f5827a) {
                    if (auVar != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        auVar.b(jSONObject2);
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("t_items", jSONArray);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.n();
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
        return t().getBytes();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return com.anythink.core.common.d.s.b().p();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a(com.anythink.core.common.m.b.g.f5652n);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, s sVar) {
        this.f5828b = System.currentTimeMillis();
        this.f5829c = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        String platformCode = adError.getPlatformCode();
        String platformMSG = adError.getPlatformMSG();
        com.anythink.core.common.i.a();
        com.anythink.core.common.u.f.a("ht_bt", platformCode, platformMSG, com.anythink.core.common.i.n(), "", "", "", (ATAdRequest) null);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        com.anythink.core.common.u.f.a("ht_bt", "", this.f5828b, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f5829c, (ATAdRequest) null);
        return obj;
    }
}

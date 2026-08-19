package com.byazt.ym;

import com.anythink.core.common.f.f;
import com.byazt.lf.k;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1529, 45})
/* loaded from: classes3.dex */
public class e implements q {
    public static final e hp = new e();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Object> f28045l = new ConcurrentHashMap(1);

    @Override // com.byazt.ym.q
    public void hp(String str, Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f.a.f3242b, str);
            jSONObject.put("msg", "sv cr failed");
        } catch (JSONException unused) {
        }
        k.hp().hp("ats_b", jSONObject, th);
    }

    @Override // com.byazt.ym.q
    public void hp(gu guVar, int i2, String str, Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f.a.f3242b, guVar.f28046a);
            jSONObject.put("msg", str);
            jSONObject.put("type", i2);
        } catch (JSONException unused) {
        }
        k.hp().hp("ats_b_proxy", jSONObject, th);
    }

    @Override // com.byazt.ym.q
    public void hp(gu guVar, Object obj, Object obj2, boolean z2, JSONObject jSONObject, Throwable th) {
        Map<String, Object> map;
        if (guVar == null || obj2 == null || (map = this.f28045l) == null) {
            return;
        }
        map.put(guVar.f28046a, obj2);
    }

    @Override // com.byazt.ym.q
    public void hp(int i2, String str, Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("msg", str);
            jSONObject.put("code", i2);
        } catch (JSONException unused) {
        }
        k.hp().hp("ats_b_e", jSONObject, th);
    }

    public Map<String, Object> hp() {
        return this.f28045l;
    }
}

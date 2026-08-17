package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 45})
/* loaded from: classes.dex */
public class e extends hp {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public long f21621l;

    public e(String str, long j2) {
        this.hp = str;
        this.f21621l = j2;
    }

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.hp);
            jSONObject.put("preload_size", this.f21621l);
            hp(jSONObject);
        } catch (Throwable unused) {
        }
    }
}

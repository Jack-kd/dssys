package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 19})
/* loaded from: classes.dex */
public class jl extends hp {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public long f21627l;

    public jl(String str, long j2) {
        this.hp = str;
        this.f21627l = j2;
    }

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.hp);
            jSONObject.put("preload_size", this.f21627l);
            com.byazt.tw.a aVarHp = hp();
            if (aVarHp != null) {
                jSONObject.put("run_task_mills", aVarHp.getPassThroughJson().optLong("run_task_mills"));
            }
            hp(jSONObject);
        } catch (Throwable unused) {
        }
    }
}

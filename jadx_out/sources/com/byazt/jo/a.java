package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 54})
/* loaded from: classes.dex */
public class a implements j {
    public long hp;

    /* renamed from: l, reason: collision with root package name */
    public long f21620l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.hp);
            jSONObject.put("total_duration", this.f21620l);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.f21620l = j2;
    }
}

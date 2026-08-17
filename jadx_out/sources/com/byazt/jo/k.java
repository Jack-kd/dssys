package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 42})
/* loaded from: classes.dex */
public class k implements j {
    public long hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21632l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.hp);
            jSONObject.put("buffers_count", this.f21632l);
            jSONObject.put("total_duration", this.jx);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.jx = j2;
    }

    public void hp(int i2) {
        this.f21632l = i2;
    }
}

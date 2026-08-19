package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 94})
/* loaded from: classes.dex */
public class eb implements j {
    public long hp;
    public int jx = 0;

    /* renamed from: l, reason: collision with root package name */
    public long f21622l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.hp);
            jSONObject.put("buffers_time", this.f21622l);
            jSONObject.put("video_backup", this.jx);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.f21622l = j2;
    }

    public void hp(int i2) {
        this.jx = i2;
    }
}

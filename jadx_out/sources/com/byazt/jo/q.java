package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 150})
/* loaded from: classes.dex */
public class q implements j {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21636j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21637l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_start_duration", this.hp);
            jSONObject.put("video_cache_size", this.f21637l);
            jSONObject.put("is_auto_play", this.jx);
            jSONObject.put("is_supplement_replay", this.f21636j);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.f21637l = j2;
    }

    public void hp(int i2) {
        this.f21636j = i2;
    }

    public void l(int i2) {
        this.jx = i2;
    }
}

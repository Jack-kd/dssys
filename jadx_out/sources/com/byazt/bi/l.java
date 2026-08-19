package com.byazt.bi;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 322, 34})
/* loaded from: classes2.dex */
public class l {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public float f18553j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18554l;

    /* renamed from: w, reason: collision with root package name */
    public float f18555w;

    public l(JSONObject jSONObject) {
        this.hp = 0;
        this.f18554l = 0;
        this.jx = 0L;
        this.f18553j = 0.1f;
        this.f18555w = 0.1f;
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optInt("time");
        this.f18554l = jSONObject.optInt("type");
        this.jx = jSONObject.optLong("duration");
        this.f18553j = (float) jSONObject.optDouble("intensity");
        this.f18555w = (float) jSONObject.optDouble("density");
        if (this.f18554l == 1 || this.jx < 100) {
            hp(100L);
        }
    }

    public int getType() {
        return this.f18554l;
    }

    public int hp() {
        return this.hp;
    }

    public float j() {
        return this.f18555w;
    }

    public float jx() {
        return this.f18553j;
    }

    public long l() {
        return this.jx;
    }

    public void hp(long j2) {
        this.jx = j2;
    }
}

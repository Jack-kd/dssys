package com.byazt.jo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 30})
/* loaded from: classes.dex */
public class jx implements j {

    /* renamed from: a, reason: collision with root package name */
    public long f21628a;
    public int eb;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21629j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21630l;

    /* renamed from: w, reason: collision with root package name */
    public long f21631w;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.hp);
            jSONObject.put("total_duration", this.f21630l);
            jSONObject.put("vbtt_skip_type", this.jx);
            jSONObject.put("skip_reason", this.f21629j);
            jSONObject.put("video_cache_size", this.f21631w);
            jSONObject.put("current", this.f21628a);
            jSONObject.put("percent", this.eb);
        } catch (Throwable unused) {
        }
    }

    public void hp(long j2) {
        this.f21628a = j2;
    }

    public void j(long j2) {
        this.f21630l = j2;
    }

    public void jx(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.f21631w = j2;
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public void jx(int i2) {
        this.f21629j = i2;
    }

    public void l(int i2) {
        this.jx = i2;
    }
}

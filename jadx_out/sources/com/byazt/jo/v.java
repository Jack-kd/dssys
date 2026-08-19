package com.byazt.jo;

import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes.dex */
public class v implements j {

    /* renamed from: a, reason: collision with root package name */
    public JSONArray f21641a;

    /* renamed from: e, reason: collision with root package name */
    public int f21642e;
    public int eb;
    public boolean gu;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21643j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21644l;

    /* renamed from: q, reason: collision with root package name */
    public long f21645q;

    /* renamed from: s, reason: collision with root package name */
    public long f21646s;

    /* renamed from: w, reason: collision with root package name */
    public String f21647w;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.hp);
            jSONObject.put("total_duration", this.f21644l);
            jSONObject.put("error_code", this.jx);
            jSONObject.put("extra_error_code", this.f21643j);
            jSONObject.put("error_message", this.f21647w);
            jSONObject.put("event_list", this.f21641a);
            jSONObject.put("vbtt_skip_type", this.eb);
            jSONObject.put("video_cache_size", this.f21646s);
            jSONObject.put("current", this.f21645q);
            jSONObject.put("percent", this.f21642e);
            jSONObject.put("has_endcard_skip", this.gu);
        } catch (Throwable unused) {
        }
    }

    public void hp(boolean z2) {
        this.gu = z2;
    }

    public void j(long j2) {
        this.f21644l = j2;
    }

    public void jx(long j2) {
        this.hp = j2;
    }

    public void l(long j2) {
        this.f21646s = j2;
    }

    public void hp(long j2) {
        this.f21645q = j2;
    }

    public void j(int i2) {
        this.f21643j = i2;
    }

    public void jx(int i2) {
        this.jx = i2;
    }

    public void l(int i2) {
        this.eb = i2;
    }

    public void hp(int i2) {
        this.f21642e = i2;
    }

    public void hp(JSONArray jSONArray) {
        this.f21641a = jSONArray;
    }

    public void hp(String str) {
        this.f21647w = str;
    }
}

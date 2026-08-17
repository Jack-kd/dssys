package com.byazt.jo;

import com.baidu.mobads.sdk.internal.d;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 302})
/* loaded from: classes.dex */
public class zy extends hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public long f21663j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21664l;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.hp);
            jSONObject.put("preload_size", this.f21664l);
            jSONObject.put(d.f11443b, this.jx);
            jSONObject.put("local_cache", this.f21663j);
            hp(jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(long j2) {
        this.f21663j = j2;
    }

    public void l(long j2) {
        this.jx = j2;
    }

    public void hp(long j2) {
        this.f21664l = j2;
    }
}

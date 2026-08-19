package com.byazt.jo;

import com.baidu.mobads.sdk.internal.d;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public class gu extends hp {

    /* renamed from: a, reason: collision with root package name */
    public String f21623a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21624j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21625l;

    /* renamed from: w, reason: collision with root package name */
    public String f21626w;

    @Override // com.byazt.jo.j
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.hp);
            jSONObject.put("preload_size", this.f21625l);
            jSONObject.put(d.f11443b, this.jx);
            jSONObject.put("error_code", this.f21624j);
            jSONObject.put("error_message", this.f21626w);
            jSONObject.put("error_message_server", this.f21623a);
            hp(jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.f21623a = str;
    }

    public void l(long j2) {
        this.jx = j2;
    }

    public void hp(long j2) {
        this.f21625l = j2;
    }

    public void l(String str) {
        this.f21626w = str;
    }

    public void hp(int i2) {
        this.f21624j = i2;
    }
}

package com.byazt.jj;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2228, 28})
/* loaded from: classes.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f21502a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f21503j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21504l;

    /* renamed from: w, reason: collision with root package name */
    public final JSONObject f21505w = new JSONObject();

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.f21503j = str;
    }

    public void l(String str) {
        this.jx = str;
    }

    public String toString() {
        return "FingerInfo{name='" + this.hp + "', duration=" + this.f21504l + ", data='" + this.jx + "', error='" + this.f21503j + "'}";
    }

    public String hp() {
        return this.hp;
    }

    public void jx() throws JSONException {
        try {
            this.f21505w.putOpt("duration", Long.valueOf(this.f21504l));
            if ("d_i0".equals(this.hp) || "d_a0".equals(this.hp)) {
                this.f21505w.putOpt("data", new JSONObject(this.jx));
            } else {
                this.f21505w.putOpt("data", this.jx);
            }
            this.f21505w.putOpt(MediationConstant.KEY_ERROR_MSG, this.f21503j);
        } catch (JSONException e2) {
            com.byazt.fg.hp.hp("__kite json error " + e2.getMessage());
        }
    }

    public JSONObject l() {
        return this.f21505w;
    }

    public void hp(long j2) {
        this.f21504l = j2;
    }

    public void hp(int i2) {
        this.f21502a = i2;
    }
}

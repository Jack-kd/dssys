package com.byazt.gp;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 583, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f20536a;
    public int eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f20537j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f20538l;

    /* renamed from: w, reason: collision with root package name */
    public int f20539w;

    public String hp() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.KEY_REASON, this.hp);
            jSONObject.put("fill_error_code", this.f20538l);
            jSONObject.put("fill_error_msg", this.jx);
            jSONObject.put("mediation_rit", this.f20537j);
            jSONObject.put("load_sort", this.f20539w);
            jSONObject.put("show_sort", this.f20536a);
            jSONObject.put("has_shown", this.eb);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "{\"name\": \"json err\"}";
        }
    }

    public void j(int i2) {
        this.f20539w = i2;
    }

    public void jx(int i2) {
        this.f20538l = i2;
    }

    public void l(int i2) {
        this.hp = i2;
    }

    public void w(int i2) {
        this.f20536a = i2;
    }

    public void l(String str) {
        this.f20537j = str;
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public void hp(String str) {
        this.jx = str;
    }
}

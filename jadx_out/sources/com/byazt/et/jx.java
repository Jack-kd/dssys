package com.byazt.et;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 315, 30})
/* loaded from: classes2.dex */
public class jx {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f19501l;

    public jx(String str, JSONObject jSONObject) {
        this.hp = str;
        this.f19501l = jSONObject;
    }

    public String hp() {
        return this.hp;
    }

    public JSONObject l() {
        return this.f19501l;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void hp(JSONObject jSONObject) {
        this.f19501l = jSONObject;
    }
}

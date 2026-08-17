package com.byazt.eo;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1298, 30})
/* loaded from: classes2.dex */
public class jx {
    public JSONObject hp;

    /* renamed from: l, reason: collision with root package name */
    public int f19433l;

    public jx() {
    }

    public JSONObject hp() {
        return this.hp;
    }

    public int l() {
        return this.f19433l;
    }

    public jx(JSONObject jSONObject, int i2) {
        this.hp = jSONObject;
        this.f19433l = i2;
    }

    public void hp(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public void hp(int i2) {
        this.f19433l = i2;
    }
}

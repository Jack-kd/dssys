package com.byazt.qb;

import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 159, 28})
/* loaded from: classes3.dex */
public class hp {
    public JSONArray hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f24546j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f24547l;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f24548w;

    public JSONArray hp() {
        return this.hp;
    }

    public JSONObject j() {
        return this.f24546j;
    }

    public JSONObject jx() {
        return this.jx;
    }

    public JSONObject l() {
        return this.f24547l;
    }

    public JSONObject w() {
        return this.f24548w;
    }

    public void hp(JSONArray jSONArray) {
        this.hp = jSONArray;
    }

    public void j(JSONObject jSONObject) {
        this.f24548w = jSONObject;
    }

    public void jx(JSONObject jSONObject) {
        this.f24546j = jSONObject;
    }

    public void l(JSONObject jSONObject) {
        this.jx = jSONObject;
    }

    public void hp(JSONObject jSONObject) {
        this.f24547l = jSONObject;
    }
}

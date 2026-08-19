package com.byazt.ic;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 777, 34})
/* loaded from: classes.dex */
public class l {
    public byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21049j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, String> f21050l;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f21051w;

    public JSONObject hp() {
        return this.f21051w;
    }

    public JSONObject j() {
        return this.jx;
    }

    public byte[] jx() {
        return this.hp;
    }

    public int l() {
        return this.f21049j;
    }

    public Map<String, String> w() {
        return this.f21050l;
    }

    public void hp(JSONObject jSONObject) {
        this.f21051w = jSONObject;
    }

    public void l(JSONObject jSONObject) {
        this.jx = jSONObject;
    }

    public void hp(int i2) {
        this.f21049j = i2;
    }

    public void hp(byte[] bArr) {
        this.hp = bArr;
    }

    public void hp(Map<String, String> map) {
        this.f21050l = map;
    }
}

package com.byazt.rw;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1658, 30})
/* loaded from: classes3.dex */
public class jx {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25389j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f25390l;

    public String hp() {
        return this.hp;
    }

    public boolean jx() {
        return this.f25389j;
    }

    public JSONObject l() {
        return this.f25390l;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void l(String str) {
        this.jx = str;
    }

    public void hp(JSONObject jSONObject) {
        this.f25390l = jSONObject;
    }

    public void hp(boolean z2) {
        this.f25389j = z2;
    }
}

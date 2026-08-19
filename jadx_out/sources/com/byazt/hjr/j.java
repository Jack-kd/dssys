package com.byazt.hjr;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1246, 38})
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public int f20701a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20702j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20703l;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f20704w;

    public j(String str, String str2, boolean z2, int i2, JSONObject jSONObject, int i3) {
        this.hp = str;
        this.f20703l = str2;
        this.jx = z2;
        this.f20702j = i2;
        this.f20704w = jSONObject;
        this.f20701a = i3;
    }

    public JSONObject hp() {
        if (this.f20704w == null) {
            this.f20704w = new JSONObject();
        }
        return this.f20704w;
    }

    public boolean j() {
        return this.jx;
    }

    public String jx() {
        return this.f20703l;
    }

    public String l() {
        return this.hp;
    }

    public int w() {
        return this.f20702j;
    }

    public void hp(int i2) {
        this.f20702j = i2;
    }
}

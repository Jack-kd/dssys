package com.byazt.ms;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 679, 54})
/* loaded from: classes3.dex */
public class a {
    public final int hp;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23274l;

    public a(int i2) {
        this.hp = i2;
    }

    public boolean hp() {
        return this.hp == 0;
    }

    public a(int i2, Throwable th) {
        this.hp = i2;
        if (th != null) {
            this.f23274l = th.getMessage();
        }
    }

    public a(int i2, String str) {
        this.hp = i2;
        this.f23274l = str;
    }

    public a(int i2, JSONObject jSONObject) {
        this.hp = i2;
        this.jx = jSONObject;
    }
}

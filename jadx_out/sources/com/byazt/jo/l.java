package com.byazt.jo;

import com.byazt.jo.j;
import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1888, 34})
/* loaded from: classes.dex */
public class l<T extends j> {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public T f21633j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21634l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21635w = false;

    public l(mp mpVar, String str, JSONObject jSONObject, T t2) {
        this.hp = mpVar;
        this.f21634l = str;
        this.jx = jSONObject;
        this.f21633j = t2;
    }

    public mp hp() {
        return this.hp;
    }

    public T j() {
        return this.f21633j;
    }

    public JSONObject jx() {
        if (this.jx == null) {
            this.jx = new JSONObject();
        }
        return this.jx;
    }

    public String l() {
        return this.f21634l;
    }

    public boolean w() {
        return this.f21635w;
    }

    public void hp(boolean z2) {
        this.f21635w = z2;
    }
}

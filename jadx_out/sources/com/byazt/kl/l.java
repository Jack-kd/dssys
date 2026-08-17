package com.byazt.kl;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 597, 34})
/* loaded from: classes.dex */
public class l {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f22098j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f22099l;

    public int hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f22098j;
    }

    public int jx() {
        return this.jx;
    }

    public int l() {
        return this.f22099l;
    }

    public String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("expire_days", l());
            jSONObject.put("log_level", hp());
            jSONObject.put("max_size", jx());
            jSONObject.put("is_open", j());
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void jx(int i2) {
        this.jx = i2;
    }

    public void l(int i2) {
        this.f22099l = i2;
    }

    public static l hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static l hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        l lVar = new l();
        lVar.l(jSONObject.optInt("expire_days"));
        lVar.hp(jSONObject.optInt("log_level"));
        lVar.jx(jSONObject.optInt("max_size"));
        lVar.hp(jSONObject.optBoolean("is_open"));
        return lVar;
    }

    public void hp(boolean z2) {
        this.f22098j = z2;
    }
}

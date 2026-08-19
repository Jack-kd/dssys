package com.byazt.xci;

import com.anythink.core.common.f.f;
import com.anythink.core.common.f.o;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 42})
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public int f27322a;

    /* renamed from: e, reason: collision with root package name */
    public long f27323e;
    public int eb;
    public long gu;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public long f27324j;
    public int jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public String f27325k;

    /* renamed from: l, reason: collision with root package name */
    public String f27326l;

    /* renamed from: q, reason: collision with root package name */
    public String f27327q;

    /* renamed from: s, reason: collision with root package name */
    public long f27328s;

    /* renamed from: u, reason: collision with root package name */
    public String f27329u;

    /* renamed from: v, reason: collision with root package name */
    public String f27330v;
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27331w;
    public String xs;
    public long zy;

    public static k hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        k kVar = new k();
        kVar.hp = jSONObject.optLong("user_id");
        kVar.f27326l = jSONObject.optString("coupon_meta_id");
        kVar.jx = jSONObject.optString("unique_id");
        kVar.f27324j = jSONObject.optLong("device_id");
        kVar.f27331w = jSONObject.optBoolean("has_coupon");
        kVar.f27322a = jSONObject.optInt("coupon_scene");
        kVar.eb = jSONObject.optInt("type");
        kVar.f27328s = jSONObject.optLong("threshold");
        kVar.f27327q = jSONObject.optString("scene_key");
        kVar.f27323e = jSONObject.optLong("activity_id");
        kVar.gu = jSONObject.optLong("amount");
        kVar.jl = jSONObject.optInt(com.umeng.ccg.a.f49772z);
        kVar.zy = jSONObject.optLong("style");
        kVar.f27325k = jSONObject.optString("start_time");
        kVar.f27330v = jSONObject.optString(o.a.f3369g);
        kVar.f27329u = jSONObject.optString("button_text");
        kVar.xs = jSONObject.optString("extra");
        kVar.vv = jSONObject.optString("toast");
        return kVar;
    }

    public int getType() {
        return this.eb;
    }

    public String j() {
        return this.vv;
    }

    public int jx() {
        return this.f27322a;
    }

    public JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("user_id", this.hp);
            jSONObject.put("coupon_meta_id", this.f27326l);
            jSONObject.put("unique_id", this.jx);
            jSONObject.put("device_id", this.f27324j);
            jSONObject.put("type", this.eb);
            jSONObject.put("scene_key", this.f27327q);
            jSONObject.put("activity_id", this.f27323e);
            jSONObject.put(f.a.f3244d, this.gu);
            jSONObject.put("threshold", this.f27328s);
            jSONObject.put("extra", this.xs);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public boolean l(boolean z2) {
        int i2;
        boolean z3 = this.f27331w && this.gu > 0;
        return z2 ? z3 && ((i2 = this.f27322a) == 0 || i2 == 5) : z3 && this.f27322a == 5;
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("user_id", this.hp);
            jSONObject.put("coupon_meta_id", this.f27326l);
            jSONObject.put("unique_id", this.jx);
            jSONObject.put("device_id", this.f27324j);
            jSONObject.put("has_coupon", this.f27331w);
            jSONObject.put("coupon_scene", this.f27322a);
            jSONObject.put("type", this.eb);
            jSONObject.put("threshold", this.f27328s);
            jSONObject.put("scene_key", this.f27327q);
            jSONObject.put("activity_id", this.f27323e);
            jSONObject.put("amount", this.gu);
            jSONObject.put(com.umeng.ccg.a.f49772z, this.jl);
            jSONObject.put("style", this.zy);
            jSONObject.put("start_time", this.f27325k);
            jSONObject.put(o.a.f3369g, this.f27330v);
            jSONObject.put("button_text", this.f27329u);
            jSONObject.put("extra", this.xs);
            jSONObject.put("toast", this.vv);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void hp(String str) {
        this.vv = str;
    }

    public void hp(boolean z2) {
        this.f27331w = z2;
    }

    public void hp(int i2) {
        this.f27322a = i2;
    }

    public void hp(long j2) {
        this.gu = j2;
    }
}

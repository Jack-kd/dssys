package com.byazt.jkd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 34})
/* loaded from: classes.dex */
public final class l {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f21587j;

    /* renamed from: l, reason: collision with root package name */
    public String f21588l;
    public long jx = 0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21589w = j.f21573l;

    public static l hp(JSONObject jSONObject) {
        l lVar = new l();
        if (jSONObject != null) {
            lVar.hp(jSONObject.optString("ec_mall_back_url"));
            lVar.hp = jSONObject.optBoolean("sub_process", false);
            lVar.jx = jSONObject.optLong("init_delay", j.hp);
            lVar.f21587j = jSONObject.optJSONObject("live_tob_init_extra");
            lVar.hp(jSONObject.optString("ec_mall_back_url"));
            lVar.f21589w = jSONObject.optBoolean("init_after_click", j.f21573l);
        }
        return lVar;
    }

    public String j() {
        return this.f21588l;
    }

    public JSONObject jx() {
        return this.f21587j;
    }

    public long l() {
        return this.jx;
    }

    public String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ec_mall_back_url", this.f21588l);
            jSONObject.put("sub_process", this.hp);
            jSONObject.put("init_delay", this.jx);
            jSONObject.put("live_tob_init_extra", this.f21587j);
            jSONObject.put("init_after_click", this.f21589w);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    public boolean w() {
        return this.f21589w;
    }

    public boolean hp() {
        return this.hp;
    }

    public void hp(String str) {
        this.f21588l = str;
    }
}

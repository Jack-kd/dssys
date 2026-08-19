package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME})
/* loaded from: classes3.dex */
public class kg {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27332j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27333l;

    public static kg hp(String str) {
        try {
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            return new kg();
        }
    }

    public String j() {
        return this.f27332j;
    }

    public String jx() {
        return this.jx;
    }

    public int l() {
        return this.f27333l;
    }

    public String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ad_live_status", hp());
            jSONObject.put("app_id", l());
            jSONObject.put("partner", jx());
            jSONObject.put("secure_key", j());
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public boolean w() {
        return this.hp == 1;
    }

    public void jx(String str) {
        this.f27332j = str;
    }

    public void l(int i2) {
        this.f27333l = i2;
    }

    public static kg hp(JSONObject jSONObject) {
        kg kgVar = new kg();
        kgVar.hp(jSONObject.optInt("ad_live_status"));
        kgVar.l(jSONObject.optInt("app_id"));
        kgVar.l(jSONObject.optString("partner"));
        kgVar.jx(jSONObject.optString("secure_key"));
        return kgVar;
    }

    public void l(String str) {
        this.jx = str;
    }

    public int hp() {
        return this.hp;
    }

    public void hp(int i2) {
        this.hp = i2;
    }
}

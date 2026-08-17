package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1663})
/* loaded from: classes3.dex */
public class an {
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public int f27184l;

    public an(JSONObject jSONObject) {
        this.hp = jSONObject.optBoolean("enable_reward_callback");
        this.f27184l = jSONObject.optInt("browse_duration_limit", 10);
    }

    public boolean hp() {
        return this.hp;
    }

    public int l() {
        return this.f27184l;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("enable_reward_callback", hp());
            jSONObject2.put("browse_duration_limit", l());
            jSONObject.put("self_reward_callback", jSONObject2);
        } catch (JSONException unused) {
        }
    }
}

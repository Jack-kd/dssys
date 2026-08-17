package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n {
    public int hp = 1;

    /* renamed from: l, reason: collision with root package name */
    public int f27396l = 1;

    public void hp(int i2) {
        this.hp = i2;
    }

    public JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ah", this.hp);
            jSONObject.put("am", this.f27396l);
            return jSONObject;
        } catch (Exception e2) {
            com.byazt.ymw.u.hp(e2.toString());
            return jSONObject;
        }
    }

    public void l(int i2) {
        this.f27396l = i2;
    }

    public boolean hp() {
        return this.hp == 1;
    }

    public boolean l() {
        return this.f27396l == 1;
    }
}

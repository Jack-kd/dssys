package com.byazt.ff;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 30})
/* loaded from: classes2.dex */
public class jx {
    public JSONObject hp;

    public jx(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public int a() {
        JSONObject jSONObject = this.hp;
        if (jSONObject == null) {
            return 1;
        }
        return jSONObject.optInt("max_notification", 1);
    }

    public int eb() {
        JSONObject jSONObject = this.hp;
        if (jSONObject == null) {
            return 1;
        }
        return jSONObject.optInt("max_interface", 1);
    }

    public boolean hp() {
        JSONObject jSONObject = this.hp;
        return jSONObject == null || jSONObject.optInt("enable_install_notification", 1) == 1;
    }

    public long j() {
        JSONObject jSONObject = this.hp;
        if (jSONObject == null) {
            return 300L;
        }
        return jSONObject.optLong("uninstall_delay", 300L);
    }

    public boolean jx() {
        JSONObject jSONObject = this.hp;
        return jSONObject != null && jSONObject.optInt("enable_install_interface", 0) == 1;
    }

    public boolean l() {
        JSONObject jSONObject = this.hp;
        return jSONObject == null || jSONObject.optInt("enable_active_notification", 1) == 1;
    }

    public long w() {
        JSONObject jSONObject = this.hp;
        if (jSONObject == null) {
            return 1800L;
        }
        return jSONObject.optLong("notification_internal", 1800L);
    }
}

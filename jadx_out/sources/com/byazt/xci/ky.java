package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 574})
/* loaded from: classes3.dex */
public class ky {
    public JSONObject hp;

    public String hp() {
        JSONObject jSONObject = this.hp;
        JSONObject jSONObjectOptJSONObject = jSONObject == null ? null : jSONObject.optJSONObject("performance_js");
        return jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("url") : "";
    }

    public String toString() {
        JSONObject jSONObject = this.hp;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public static ky hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static ky hp(JSONObject jSONObject) {
        ky kyVar = new ky();
        kyVar.hp = jSONObject;
        return kyVar;
    }
}

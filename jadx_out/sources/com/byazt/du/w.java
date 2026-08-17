package com.byazt.du;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final com.byazt.oa.xs hp;

    public w(com.byazt.oa.xs xsVar) {
        this.hp = xsVar;
    }

    public static void hp(com.byazt.oa.xs xsVar) {
        xsVar.hp("canIUse", (com.byazt.oa.w<?, ?>) new w(xsVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject != null) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("names");
                if (jSONArrayOptJSONArray != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i2, "");
                        if (!TextUtils.isEmpty(strOptString)) {
                            if (TextUtils.equals(strOptString, "isShow7Factors")) {
                                jSONObject3.put(strOptString, 1);
                            } else {
                                jSONObject3.put(strOptString, this.hp.hp(strOptString) ? 1 : 0);
                            }
                        }
                    }
                    jSONObject2.put("code", 0);
                    jSONObject2.put("data", jSONObject3);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                jSONObject2.put("msg", "names is not JsonArray or null");
                return jSONObject2;
            }
            jSONObject2.put("code", 1);
            jSONObject2.put("msg", "params is null");
            return jSONObject2;
        } catch (Throwable th) {
            jSONObject2.put("code", 1);
            jSONObject2.put("msg", "exception: " + th.getMessage());
            return jSONObject2;
        }
    }
}

package com.byazt.du;

import android.text.TextUtils;
import com.byazt.pm.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u extends com.byazt.oa.w<JSONObject, JSONObject> {
    public static void hp(com.byazt.oa.xs xsVar) {
        xsVar.hp("getDownloadStatus", (com.byazt.oa.w<?, ?>) new u());
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        return hp(jSONObject);
    }

    public static JSONObject hp(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            hp(jSONObject2, 1, "params is null", 1, 1);
            return jSONObject2;
        }
        try {
            String strOptString = jSONObject.optString("ad_down_load_id");
            if (TextUtils.isEmpty(strOptString)) {
                hp(jSONObject2, 1, "ad_down_load_id is null", 1, 1);
                return jSONObject2;
            }
            return l.hp.hp(strOptString);
        } catch (Throwable unused) {
            return jSONObject2;
        }
    }

    private static void hp(JSONObject jSONObject, int i2, String str, int i3, int i4) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("code", i2);
            jSONObject.put("codeMsg", str);
            jSONObject.put("downloadStatus", i3);
            jSONObject.put("downloadProcessRate", i4);
        } catch (Exception unused) {
        }
    }
}

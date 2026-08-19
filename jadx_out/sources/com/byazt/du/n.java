package com.byazt.du;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes2.dex */
public class n extends com.byazt.oa.w<JSONObject, JSONObject> {
    public static void hp(com.byazt.oa.xs xsVar) {
        xsVar.hp("getSettingInfo", (com.byazt.oa.w<?, ?>) new n());
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        String[] strArrSplit;
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject != null) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("keys");
                JSONObject jSONObjectV = com.byazt.jz.sz.l().v();
                if (jSONObjectV == null) {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "settingsJson is null");
                    return jSONObject2;
                }
                if (jSONArrayOptJSONArray != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i2, "");
                        if (!TextUtils.isEmpty(strOptString) && (strArrSplit = strOptString.split("\\.")) != null) {
                            Object objOpt = null;
                            JSONObject jSONObjectOptJSONObject = jSONObjectV;
                            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                                String str = strArrSplit[i3];
                                if (str != null && jSONObjectOptJSONObject != null) {
                                    if (i3 != strArrSplit.length - 1) {
                                        jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject(str);
                                    } else {
                                        objOpt = jSONObjectOptJSONObject.opt(str);
                                    }
                                }
                            }
                            jSONObject3.putOpt(strOptString, objOpt);
                        }
                    }
                    jSONObject2.put("code", 0);
                    jSONObject2.put("data", jSONObject3);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                jSONObject2.put("msg", "keys is not JsonArray or null");
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

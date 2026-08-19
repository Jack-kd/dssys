package com.byazt.yek;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 669, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, JSONObject> f27903l;

    public boolean hp() {
        int i2 = this.hp;
        return i2 > 20000 && i2 < 100000;
    }

    public static w hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("code");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("result");
        HashMap map = new HashMap();
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("id", "");
                    String strOptString2 = jSONObjectOptJSONObject.optString("req_id", "");
                    if (!TextUtils.isEmpty(hp(strOptString, strOptString2))) {
                        map.put(hp(strOptString, strOptString2), jSONObjectOptJSONObject);
                    }
                }
            }
        }
        w wVar = new w();
        wVar.f27903l = map;
        wVar.hp = iOptInt;
        return wVar;
    }

    public static String hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str2 + "_" + str;
    }
}

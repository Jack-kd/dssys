package com.byazt.hz;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs implements gu {
    @Override // com.byazt.hz.gu
    public Object hp(JSONObject jSONObject, Object[] objArr) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (objArr == null || objArr.length != 0) {
            return null;
        }
        String strValueOf = String.valueOf(objArr[2]);
        String strValueOf2 = String.valueOf(objArr[1]);
        String strValueOf3 = String.valueOf(objArr[0]);
        if (!TextUtils.isEmpty(strValueOf3) && jSONObject != null && (jSONObjectOptJSONObject = jSONObject.optJSONObject("i18n")) != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(strValueOf2)) != null) {
            String strOptString = jSONObjectOptJSONObject2.optString(strValueOf3);
            if (!TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
        }
        return strValueOf;
    }
}

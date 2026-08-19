package com.byazt.hz;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements gu {
    @Override // com.byazt.hz.gu
    public Object hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            for (Object obj : objArr) {
                String strValueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(strValueOf) && !TextUtils.equals(strValueOf, "null")) {
                    return strValueOf;
                }
            }
        }
        return null;
    }
}

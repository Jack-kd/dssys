package com.byazt.hz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s implements gu {
    @Override // com.byazt.hz.gu
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Boolean hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length >= 2) {
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            if (obj2 == null) {
                return Boolean.FALSE;
            }
            if (obj instanceof String) {
                return Boolean.valueOf(((String) obj).contains(String.valueOf(obj2)));
            }
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() > 0) {
                    return Boolean.valueOf(hp(jSONArray, obj2));
                }
            }
        }
        return Boolean.FALSE;
    }

    private boolean hp(JSONArray jSONArray, Object obj) {
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                if (jSONArray.get(i2).equals(obj)) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}

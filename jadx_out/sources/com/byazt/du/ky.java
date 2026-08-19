package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 574})
/* loaded from: classes2.dex */
public class ky extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final String hp;

    public ky(String str) {
        this.hp = str;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("sendAction", (com.byazt.oa.w<?, ?>) new ky(mpVar.di()));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        Object objJ = com.byazt.rk.l.j(this.hp, 1);
        if (objJ instanceof JSONArray) {
            ((JSONArray) objJ).put(jSONObject);
        } else {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            com.byazt.rk.l.hp(this.hp, 1, jSONArray);
        }
        jSONObject2.put("code", 0);
        return jSONObject2;
    }
}

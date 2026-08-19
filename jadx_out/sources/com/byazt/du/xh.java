package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT})
/* loaded from: classes2.dex */
public class xh extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final String hp;

    public xh(String str) {
        this.hp = str;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("sendElement", (com.byazt.oa.w<?, ?>) new xh(mpVar.di()));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.rk.l.hp(this.hp, 0, jSONObject);
        jSONObject2.put("code", 0);
        return jSONObject2;
    }
}

package com.byazt.du;

import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes2.dex */
public class wv extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final com.byazt.jz.ud hp;

    public wv(com.byazt.jz.ud udVar) {
        this.hp = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("pageFinished", (com.byazt.oa.w<?, ?>) new wv(udVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.jz.ud udVar = this.hp;
        if (udVar != null) {
            udVar.k();
        }
        return jSONObject2;
    }
}

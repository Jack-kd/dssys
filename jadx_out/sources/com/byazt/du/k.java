package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 42})
/* loaded from: classes2.dex */
public class k extends com.byazt.oa.w<JSONObject, JSONObject> {
    public JSONObject hp;

    public k(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public static void hp(com.byazt.oa.xs xsVar, JSONObject jSONObject) {
        xsVar.hp("getData", (com.byazt.oa.w<?, ?>) new k(jSONObject));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        return com.byazt.yp.l.hp(this.hp, jSONObject);
    }
}

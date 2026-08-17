package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 1360})
/* loaded from: classes2.dex */
public class f extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.jz.ud hp;

    public f(com.byazt.jz.ud udVar) {
        this.hp = udVar;
    }

    public JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        com.byazt.jz.ud udVar = this.hp;
        if (udVar != null) {
            return udVar.jl();
        }
        try {
            jSONObject.put("code", -1);
            jSONObject.put("codeMsg", "JsObject is null");
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("ShowUgenDownloadDialog", (com.byazt.oa.w<?, ?>) new f(udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        return jx();
    }
}

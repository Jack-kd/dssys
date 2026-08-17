package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
/* loaded from: classes2.dex */
public class lv extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.la.l hp;

    public lv(com.byazt.la.l lVar) {
        this.hp = lVar;
    }

    public JSONObject jx() {
        return new JSONObject();
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.la.l lVar) {
        xsVar.hp("RendUgenDownloadDialogState", (com.byazt.oa.w<?, ?>) new lv(lVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        hp(jSONObject);
        return jx();
    }

    private void hp(JSONObject jSONObject) {
        if (jSONObject == null || this.hp == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("code");
        if (iOptInt == 200) {
            this.hp.hp();
        } else {
            this.hp.hp(iOptInt, jSONObject.optString(MediationConstant.KEY_ERROR_MSG));
        }
    }
}

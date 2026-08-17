package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 678})
/* loaded from: classes2.dex */
public class mp extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public mp(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("sendPlayableReward", (com.byazt.oa.w<?, ?>) new mp(udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.ud udVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.byazt.jz.ud> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null && (udVar = this.hp.get()) != null) {
            udVar.dy();
        }
        return jSONObject2;
    }
}

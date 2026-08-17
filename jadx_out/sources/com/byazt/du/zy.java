package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 302})
/* loaded from: classes2.dex */
public class zy extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public zy(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    public JSONObject jx() {
        com.byazt.jz.ud udVar;
        JSONObject jSONObject = new JSONObject();
        try {
            WeakReference<com.byazt.jz.ud> weakReference = this.hp;
            if (weakReference != null && (udVar = weakReference.get()) != null) {
                return udVar.d();
            }
            return jSONObject;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("getAppManage", (com.byazt.oa.w<?, ?>) new zy(udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        return jx();
    }
}

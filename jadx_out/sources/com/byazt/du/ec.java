package com.byazt.du;

import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes2.dex */
public class ec extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;

    public ec(com.byazt.xci.mp mpVar) {
        this.hp = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("getRestMetas", (com.byazt.oa.w<?, ?>) new ec(mpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            if (this.hp != null) {
                jSONArray = new JSONArray(this.hp.wi());
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("creatives", jSONArray);
            jSONObject2.put("data", jSONObject3);
            jSONObject2.put("code", 0);
            jSONObject2.put("msg", cb.f11292o);
            return jSONObject2;
        } catch (Exception e2) {
            com.byazt.ymw.u.l("GetRestMetasMethod", "getRestMetas error: " + e2.getMessage());
            jSONObject2.put("code", -1);
            jSONObject2.put("msg", e2.getMessage());
            return jSONObject2;
        }
    }
}

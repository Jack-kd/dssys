package com.byazt.du;

import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 679})
/* loaded from: classes2.dex */
public class ms extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;

    public ms(com.byazt.xci.mp mpVar) {
        this.hp = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("sendEventCode", (com.byazt.oa.w<?, ?>) new ms(mpVar));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.gu.l lVar;
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.xci.mp mpVar = this.hp;
        if (mpVar != null && (lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(mpVar.n(), com.byazt.gu.l.class)) != null) {
            HashMap map = new HashMap();
            int iOptInt = jSONObject.optInt("event_code", -1);
            if (iOptInt >= 200) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("info");
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        map.put(next, jSONObjectOptJSONObject.opt(next));
                    }
                }
                lVar.hp(iOptInt, map);
            }
        }
        return jSONObject2;
    }
}

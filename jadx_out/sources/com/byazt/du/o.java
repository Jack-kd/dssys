package com.byazt.du;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes2.dex */
public class o extends com.byazt.oa.w<JSONObject, JSONObject> {
    public String hp;
    public com.byazt.xci.mp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jz.ud f19328l;

    public o(String str, com.byazt.jz.ud udVar, com.byazt.xci.mp mpVar) {
        this.hp = str;
        this.f19328l = udVar;
        this.jx = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("openNewAdPage", (com.byazt.oa.w<?, ?>) new o("openNewAdPage", udVar, mpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.hp;
        str.getClass();
        if (!str.equals("openNewAdPage")) {
            return jSONObject2;
        }
        if (this.f19328l != null) {
            int iOptInt = jSONObject.optInt("second_page_type", 0);
            this.f19328l.w(iOptInt);
            jSONObject2.put("code", 0);
            com.byazt.vv.jx.hp(this.jx, true, iOptInt);
            return jSONObject2;
        }
        jSONObject2.put("code", 1);
        jSONObject2.put("msg", "jsObject is null");
        com.byazt.vv.jx.hp(this.jx, false, 0);
        return jSONObject2;
    }
}

package com.byazt.du;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 150})
/* loaded from: classes2.dex */
public class q extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public q(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar) {
        xsVar.hp("newClickEvent", new j.l() { // from class: com.byazt.du.q.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new q(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.ud udVar = this.hp.get();
        if (udVar == null) {
            jx();
        } else {
            udVar.s(jSONObject);
        }
    }
}

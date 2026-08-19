package com.byazt.du;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 1097})
/* loaded from: classes2.dex */
public class m extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public m(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar) {
        xsVar.hp("showAppDetailOrPrivacyDialog", new j.l() { // from class: com.byazt.du.m.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new m(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.s.u().f();
        WeakReference<com.byazt.jz.ud> weakReference = this.hp;
        if (weakReference == null) {
            return;
        }
        com.byazt.jz.ud udVar = weakReference.get();
        if (udVar == null) {
            jx();
            return;
        }
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("show_dialog_style");
        if (iOptInt == 1) {
            udVar.o();
        } else if (iOptInt == 2) {
            udVar.di();
        }
    }
}

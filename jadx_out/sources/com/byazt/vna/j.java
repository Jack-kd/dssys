package com.byazt.vna;

import com.byazt.jz.s;
import com.byazt.jz.ud;
import com.byazt.oa.j;
import com.byazt.oa.xs;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<ud> hp;

    public j(ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(xs xsVar, final ud udVar) {
        xsVar.hp("adInfoDialog", new j.l() { // from class: com.byazt.vna.j.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new j(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        mp mpVarS;
        s.u().f();
        ud udVar = this.hp.get();
        if (udVar == null || (mpVarS = udVar.s()) == null) {
            return;
        }
        com.byazt.zn.w.hp(aVar.getContext(), mpVarS.hb());
    }
}

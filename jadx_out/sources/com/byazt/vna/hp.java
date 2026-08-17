package com.byazt.vna;

import com.byazt.jz.s;
import com.byazt.jz.ud;
import com.byazt.oa.j;
import com.byazt.oa.xs;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<ud> hp;

    public hp(ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(xs xsVar, final ud udVar) {
        xsVar.hp("interstitial_webview_close", new j.l() { // from class: com.byazt.vna.hp.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new hp(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        s.u().f();
        u.l("DoInterstitialWebViewCloseMethod", "DoInterstitialWebViewCloseMethod invoke ");
        ud udVar = this.hp.get();
        if (udVar == null) {
            u.l("DoInterstitialWebViewCloseMethod", "invoke error");
            jx();
        } else {
            udVar.xs();
        }
    }
}

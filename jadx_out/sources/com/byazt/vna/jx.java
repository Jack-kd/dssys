package com.byazt.vna;

import com.byazt.jz.ud;
import com.byazt.oa.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<ud> hp;

    public jx(ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    public static void hp(xs xsVar, ud udVar) {
        xsVar.hp("rewardPlayAgain", (com.byazt.oa.w<?, ?>) new jx(udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        ud udVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<ud> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null && (udVar = this.hp.get()) != null) {
            udVar.sz();
        }
        return jSONObject2;
    }
}

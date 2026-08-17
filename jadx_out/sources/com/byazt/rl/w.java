package com.byazt.rl;

import com.byazt.jz.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 578, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.es.jx {
    public ud hp;

    public w(ud udVar) {
        this.hp = udVar;
    }

    @Override // com.byazt.es.jx
    public void hp(String str, JSONObject jSONObject) throws JSONException {
        ud udVar = this.hp;
        if (udVar != null) {
            udVar.l(str, jSONObject);
        }
    }
}

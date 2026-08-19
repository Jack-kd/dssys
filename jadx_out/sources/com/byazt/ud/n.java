package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n implements com.byazt.ii.hp {
    public com.byazt.ki.j hp;

    public n(com.byazt.ki.j jVar) {
        this.hp = jVar;
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        throw new UnsupportedOperationException();
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return this.hp.hp();
    }

    public String toString() {
        return l();
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return this.hp;
    }
}

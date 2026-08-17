package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz implements com.byazt.ii.hp {
    public final String hp;

    public sz(String str) {
        this.hp = str;
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        return this.hp;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return "'" + this.hp + "'";
    }

    public String toString() {
        return l();
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.STRING;
    }
}

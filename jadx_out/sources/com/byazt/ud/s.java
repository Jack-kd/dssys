package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends xs {
    public s() {
        super(com.byazt.ki.jx.LT_EQ);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        if (this.hp.hp(map) == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        return Boolean.valueOf(!((Boolean) com.byazt.ax.jx.hp(r0, (Number) objHp)).booleanValue());
    }
}

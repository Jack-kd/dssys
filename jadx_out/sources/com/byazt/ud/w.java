package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends xs {
    public w() {
        super(com.byazt.ki.jx.GT_EQ);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        if (this.hp.hp(map) == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        return Boolean.valueOf(!((Boolean) com.byazt.ax.j.hp(r0, (Number) objHp)).booleanValue());
    }
}

package com.byazt.mpn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class xs implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "reward_dialog_callback")
    public com.byazt.jwq.e hp;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.jwq.e eVar = this.hp;
        if (eVar == null) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        eVar.l();
        hpVar.hp(map2);
        return true;
    }
}

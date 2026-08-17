package com.byazt.fjh;

import com.byazt.nke.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 19})
/* loaded from: classes2.dex */
public class jl extends hp {
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        byte[] bArrHp = jxVar.zy().l(jxVar.k()).hp((dy) jxVar.getRawCacheKey());
        if (bArrHp != null) {
            jxVar.hp(new l(bArrHp, null));
        } else if (jxVar.q()) {
            jxVar.hp(new zy());
        } else {
            jxVar.hp(new a());
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "raw_cache";
    }
}

package com.byazt.fjh;

import android.text.TextUtils;
import com.byazt.nke.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 30})
/* loaded from: classes2.dex */
public class jx extends hp {
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        if (TextUtils.isEmpty(jxVar.getMemoryCacheKey())) {
            vv vvVarW = jxVar.zy().w();
            jxVar.l(vvVarW.hp(jxVar));
            jxVar.hp(vvVarW.l(jxVar));
        }
        jxVar.hp(new eb());
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "generate_key";
    }
}

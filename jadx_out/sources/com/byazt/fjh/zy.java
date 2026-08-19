package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 302})
/* loaded from: classes2.dex */
public class zy extends hp {
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) throws IOException {
        String rawCacheKey = jxVar.getRawCacheKey();
        com.byazt.nke.l lVarK = jxVar.k();
        byte[] bArrHp = com.byazt.os.hp.hp(jxVar);
        if (bArrHp == null) {
            jxVar.hp(new s(1006, "not image cache", null));
            return;
        }
        jxVar.hp(new l(bArrHp, null));
        if (lVarK.isRawMemoryCache()) {
            jxVar.zy().l(lVarK).hp(rawCacheKey, bArrHp);
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "spec_file_cache";
    }
}

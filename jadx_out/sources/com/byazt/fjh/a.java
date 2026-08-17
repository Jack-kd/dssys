package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collection;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 54})
/* loaded from: classes2.dex */
public class a extends hp {
    private byte[] l(com.byazt.kz.jx jxVar, String str) {
        com.byazt.nke.j jVarJx = jxVar.zy().jx(jxVar.k());
        if (jVarJx == null) {
            return null;
        }
        return jVarJx.hp((com.byazt.nke.j) str);
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        String rawCacheKey = jxVar.getRawCacheKey();
        com.byazt.nke.l lVarK = jxVar.k();
        byte[] bArrHp = (jxVar.v() || lVarK.isQueryAll()) ? hp(jxVar, rawCacheKey) : l(jxVar, rawCacheKey);
        if (bArrHp == null) {
            jxVar.hp(new gu());
            return;
        }
        jxVar.hp(new l(bArrHp, null));
        if (lVarK.isRawMemoryCache()) {
            jxVar.zy().l(lVarK).hp(rawCacheKey, bArrHp);
        }
    }

    private byte[] hp(com.byazt.kz.jx jxVar, String str) {
        jxVar.zy().jx(jxVar.k());
        Collection<com.byazt.nke.j> collectionJx = jxVar.zy().jx();
        if (collectionJx == null) {
            return null;
        }
        Iterator<com.byazt.nke.j> it = collectionJx.iterator();
        while (it.hasNext()) {
            byte[] bArrHp = it.next().hp((com.byazt.nke.j) str);
            if (bArrHp != null) {
                return bArrHp;
            }
        }
        return null;
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "disk_cache";
    }
}

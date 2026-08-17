package com.byazt.fjh;

import android.graphics.Bitmap;
import com.byazt.nke.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collection;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 45})
/* loaded from: classes2.dex */
public class e extends hp {
    private Bitmap jx(com.byazt.kz.jx jxVar) {
        return jxVar.zy().hp(jxVar.k()).hp((nu) jxVar.getMemoryCacheKey());
    }

    private Bitmap l(com.byazt.kz.jx jxVar) {
        Collection<nu> collectionHp = jxVar.zy().hp();
        Bitmap bitmapHp = null;
        if (collectionHp == null) {
            return null;
        }
        Iterator<nu> it = collectionHp.iterator();
        while (it.hasNext() && (bitmapHp = it.next().hp((nu) jxVar.getMemoryCacheKey())) == null) {
        }
        return bitmapHp;
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        int iW = jxVar.w();
        Bitmap bitmapL = (iW == 2 || iW == 1) ? (jxVar.v() || jxVar.k().isQueryAll()) ? l(jxVar) : jx(jxVar) : null;
        if (bitmapL != null) {
            jxVar.hp(new k(bitmapL, null, null, false));
            return;
        }
        com.byazt.nke.l lVarK = jxVar.k();
        if (jxVar.q()) {
            if (lVarK.isRawMemoryCache()) {
                jxVar.hp(new jl());
                return;
            } else {
                jxVar.hp(new zy());
                return;
            }
        }
        if (lVarK.isRawMemoryCache()) {
            jxVar.hp(new jl());
        } else {
            jxVar.hp(new a());
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "memory_cache";
    }
}

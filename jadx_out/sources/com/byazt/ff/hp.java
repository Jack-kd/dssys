package com.byazt.ff;

import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final LruCache<String, com.byazt.xci.j> hp = new LruCache<>(10);

    public static void hp(String str, com.byazt.xci.j jVar) {
        if (TextUtils.isEmpty(str) || jVar == null || !jVar.eb()) {
            return;
        }
        hp.put(str, jVar);
    }

    public static boolean j(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        if (!TextUtils.isEmpty(mpVar.v() != null ? mpVar.v().l() : "") && mpVar.q() == 4 && TextUtils.isEmpty(mpVar.b())) {
            return (mpVar.u_() == null || mpVar.u_().l() == 0) && !ky.l(ky.wv(mpVar));
        }
        return false;
    }

    public static boolean jx(mp mpVar) {
        return j(mpVar) && com.byazt.fy.s.hp(mpVar) == 2;
    }

    public static void l(final mp mpVar) {
        if (jx(mpVar) && com.byazt.fy.s.w(mpVar)) {
            final String strL = mpVar.v() != null ? mpVar.v().l() : "";
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("preloadAppInfo") { // from class: com.byazt.ff.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    sz.hp().hp(mpVar, strL);
                }
            });
        }
    }

    public static com.byazt.xci.j hp(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        String strAi = mpVar.ai();
        String strWv = ky.wv(mpVar);
        com.byazt.xci.w wVarV = mpVar.v();
        return hp(strAi + "_" + strWv + "_" + (wVarV != null ? wVarV.l() : null));
    }

    public static com.byazt.xci.j hp(String str) {
        com.byazt.xci.j jVar = hp.get(str);
        if (jVar == null || !jVar.eb()) {
            return null;
        }
        return jVar;
    }

    public static void hp(com.byazt.xci.hp hpVar) {
        List<mp> listL;
        if (hpVar == null || (listL = hpVar.l()) == null || listL.isEmpty()) {
            return;
        }
        Iterator<mp> it = listL.iterator();
        while (it.hasNext()) {
            l(it.next());
        }
    }
}

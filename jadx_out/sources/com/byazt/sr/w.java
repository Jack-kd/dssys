package com.byazt.sr;

import android.text.TextUtils;
import com.byazt.jz.b;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 21, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static boolean hp(com.byazt.jt.l lVar, mp mpVar, boolean z2) {
        if (!sz.l().l(lVar.j())) {
            return true;
        }
        if (mpVar == null) {
            k.hp().l(3);
            return false;
        }
        String strN = lVar.n();
        long jSu = mpVar.su();
        String strRu = mpVar.ru();
        try {
            if (TextUtils.isEmpty(strN)) {
                k.hp().l(1);
                return false;
            }
            JSONObject jSONObjectHp = com.byazt.lca.a.hp(new JSONObject(strN), false, true);
            if (jSONObjectHp == null) {
                k.hp().l(1);
                return false;
            }
            b.hp hpVarHp = b.hp.hp(jSONObjectHp, lVar, null);
            com.byazt.xci.hp hpVar = hpVarHp.f21849s;
            if (hpVar == null) {
                k.hp().l(1);
                return false;
            }
            hpVar.hp(jSONObjectHp);
            List<mp> listL = hpVarHp.f21849s.l();
            if (listL == null) {
                k.hp().l(1);
                return false;
            }
            for (mp mpVar2 : listL) {
                if (TextUtils.isEmpty(mpVar2.ru())) {
                    k.hp().l(2);
                    return false;
                }
                if (!mpVar2.rk()) {
                    k.hp().l(5);
                    return false;
                }
                if (TextUtils.equals(mpVar2.ru(), strRu)) {
                    mpVar.nu(mpVar2.gs());
                    if (mpVar.tw() + jSu >= System.currentTimeMillis()) {
                        return true;
                    }
                    com.byazt.fe.w.hp(z2 ? 7 : 8).hp(lVar.j());
                    k.hp().l(4);
                    return false;
                }
            }
            k.hp().l(3);
            return false;
        } catch (Exception unused) {
            k.hp().l(1000);
            return false;
        }
    }
}

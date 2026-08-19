package com.byazt.zg;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes3.dex */
public class wv {
    public static void hp(com.byazt.rt.jx jxVar, com.byazt.tgw.e eVar, com.byazt.iqm.l lVar, boolean z2) {
        if (jxVar == null || !jxVar.isMultiBiddingAd()) {
            return;
        }
        if (eVar == null) {
            jxVar.setCpm(0.0d);
        }
        String levelTag = jxVar.getLevelTag();
        Map<String, String> mapNu = eVar.nu();
        if (TextUtils.isEmpty(levelTag)) {
            if (z2) {
                com.byazt.lsx.a.hp(eVar, lVar, jxVar, 40061, com.byazt.dq.hp.hp(40061));
            }
            jxVar.setErrorMsg(com.byazt.dq.hp.hp(40061));
            jxVar.setCpm(0.0d);
            return;
        }
        if (mapNu == null) {
            if (z2) {
                com.byazt.lsx.a.hp(eVar, lVar, jxVar, 40062, com.byazt.dq.hp.hp(40062));
            }
            jxVar.setErrorMsg(com.byazt.dq.hp.hp(40062));
            jxVar.setCpm(0.0d);
            return;
        }
        String str = mapNu.get(levelTag);
        if (TextUtils.isEmpty(str)) {
            if (z2) {
                com.byazt.lsx.a.hp(eVar, lVar, jxVar, 40062, com.byazt.dq.hp.hp(40062));
            }
            jxVar.setCpm(0.0d);
        } else {
            try {
                jxVar.setCpm(Double.valueOf(str).doubleValue());
            } catch (Exception unused) {
                jxVar.setCpm(0.0d);
            }
        }
    }
}

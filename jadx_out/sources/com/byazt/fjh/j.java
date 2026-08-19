package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 38})
/* loaded from: classes2.dex */
public class j extends hp {
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        com.byazt.nke.l lVarK = jxVar.k();
        if (jxVar.q()) {
            if (lVarK.isMemoryCache()) {
                jxVar.hp(new e());
                return;
            } else if (lVarK.isRawMemoryCache()) {
                jxVar.hp(new jl());
                return;
            } else {
                jxVar.hp(new zy());
                return;
            }
        }
        if (lVarK != null) {
            if (lVarK.isMemoryCache()) {
                jxVar.hp(new e());
                return;
            } else if (lVarK.isDiskCache()) {
                jxVar.hp(new a());
                return;
            }
        }
        jxVar.hp(new gu());
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "cache_policy";
    }
}

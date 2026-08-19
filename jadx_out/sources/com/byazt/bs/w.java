package com.byazt.bs;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends a {
    public w(Context context, com.byazt.yc.hp hpVar, com.byazt.jw.w wVar) {
        super(context, hpVar, wVar);
    }

    @Override // com.byazt.bs.a, com.byazt.bs.l
    public String hp() {
        com.byazt.jw.a aVarL = ((a) this).f18658l.l();
        if (aVarL != null) {
            return aVarL.jx();
        }
        return null;
    }

    @Override // com.byazt.bs.a
    public byte jx() {
        return (byte) 3;
    }

    @Override // com.byazt.bs.a
    public byte l() {
        return (byte) 2;
    }

    @Override // com.byazt.bs.a, com.byazt.cmm.hp
    public boolean hp(com.byazt.jw.l lVar) {
        return com.byazt.giz.hp.j(lVar);
    }
}

package com.byazt.bs;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends eb {
    public s(Context context, com.byazt.yc.hp hpVar, com.byazt.jw.w wVar) {
        super(context, hpVar, wVar);
    }

    @Override // com.byazt.bs.eb, com.byazt.cmm.hp
    public boolean hp(com.byazt.jw.l lVar) {
        return com.byazt.giz.hp.s(lVar);
    }

    @Override // com.byazt.bs.eb
    public byte jx() {
        return (byte) 3;
    }

    @Override // com.byazt.bs.eb
    public byte l() {
        return (byte) 2;
    }

    @Override // com.byazt.bs.eb, com.byazt.bs.l
    public String hp() {
        return ((eb) this).f18661l.l().a();
    }
}

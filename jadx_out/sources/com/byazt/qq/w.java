package com.byazt.qq;

import com.byazt.fib.eb;
import com.byazt.yrp.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.zp.jx {
    public final a hp = new a();

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.rj.jx.hp(this.hp, hpVar.jx(), hpVar.l(), map2);
        eb ebVar = new eb(this.hp.v(), this.hp.getContext(), this.hp, map2);
        ebVar.hp(this.hp.q());
        if (!hp(ebVar, map2, hpVar).hp(map2)) {
            hpVar.l(map2, null);
            return true;
        }
        com.byazt.rj.jx.hp(map2, com.byazt.ex.w.jx);
        hpVar.l(map2);
        return true;
    }

    private com.byazt.fib.jx hp(eb ebVar, Map<String, Object> map, com.byazt.rsz.hp hpVar) {
        a aVar = this.hp;
        com.byazt.fib.jx jxVar = new com.byazt.fib.jx(ebVar, aVar, aVar.q(), this.hp.k(), this.hp.getContext(), map, true);
        jxVar.l(this.hp.gu());
        jxVar.hp(this.hp.e());
        jxVar.hp(this.hp.jl());
        jxVar.hp(this.hp.u());
        jxVar.jx(this.hp.eb());
        return jxVar;
    }
}

package com.byazt.qq;

import com.byazt.ex.a;
import com.byazt.fib.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.zp.jx {
    public final com.byazt.yrp.j hp = new com.byazt.yrp.j();

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.rj.jx.hp(this.hp, hpVar.jx(), hpVar.l(), map2);
        if (!hp(map2)) {
            com.byazt.rj.jx.hp(map2, a.f19537j);
            hpVar.l(map2, null);
            return true;
        }
        if (hp(map2, hpVar).hp(new HashMap())) {
            com.byazt.rj.jx.hp(map2, a.jx);
            hpVar.l(map2);
        } else {
            hpVar.l(map2, null);
        }
        return true;
    }

    private s hp(Map<String, Object> map, com.byazt.rsz.hp hpVar) {
        com.byazt.yrp.j jVar = this.hp;
        return new s(jVar, jVar.getContext(), this.hp.l(), this.hp.jx(), map, hpVar, this.hp.j(), true);
    }

    private boolean hp(Map<String, Object> map) {
        return (com.byazt.rj.jx.hp(this.hp, map) == null || this.hp.getContext() == null || this.hp.A_() == null) ? false : true;
    }
}

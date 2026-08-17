package com.byazt.qq;

import com.byazt.fib.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.zp.jx {
    public final com.byazt.yrp.w hp = new com.byazt.yrp.w();

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        int iJx;
        com.byazt.rj.jx.hp(this.hp, hpVar.jx(), map, map2);
        if (!hp(map2)) {
            hpVar.l(map2, null);
            return true;
        }
        if (this.hp.cx() != -1001) {
            iJx = this.hp.cx();
        } else {
            iJx = com.byazt.yx.l.hp().jx();
            this.hp.hp(iJx);
            com.byazt.rj.jx.hp(this.hp, map2).gd(iJx);
        }
        map2.put("saas_status_while_click", Integer.valueOf(iJx));
        com.byazt.yrp.w wVar = this.hp;
        a aVar = new a(wVar, wVar.getContext(), this.hp.l(), this.hp.jx(), map2);
        if (this.hp.eb() != -1) {
            aVar.l(this.hp.eb());
        }
        aVar.hp(this.hp.s());
        aVar.l(this.hp.q());
        if (!new com.byazt.fib.l(new com.byazt.fib.w(aVar, com.byazt.rj.jx.hp(this.hp, map2), hpVar, map2, this.hp.l()), this.hp.getContext(), com.byazt.rj.jx.hp(this.hp, map2), this.hp.l(), map2, hpVar).hp(new HashMap())) {
            hpVar.l(map2, null);
            return false;
        }
        com.byazt.rj.jx.hp(map2, com.byazt.ex.j.jx);
        hpVar.l(map2);
        return false;
    }

    private boolean hp(Map<String, Object> map) {
        return (com.byazt.rj.jx.hp(this.hp, map) == null || this.hp.getContext() == null) ? false : true;
    }
}

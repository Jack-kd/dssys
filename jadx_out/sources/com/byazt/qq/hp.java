package com.byazt.qq;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.zp.jx {
    public final com.byazt.yrp.l hp = new com.byazt.yrp.l();

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.rj.jx.hp(this.hp, hpVar.jx(), map, map2);
        if (!hp(map2)) {
            hpVar.l(map2, null);
            return true;
        }
        if (new com.byazt.qn.l(hp(map2, com.byazt.fib.hp.j(map2)), this.hp.xs()).hp(map2)) {
            com.byazt.rj.jx.hp(map2, com.byazt.ex.l.jx);
            hpVar.l(map2);
        } else {
            hpVar.l(map2, null);
        }
        return true;
    }

    private com.byazt.fib.hp hp(Map<String, Object> map, int i2) {
        com.byazt.yrp.l lVar = this.hp;
        com.byazt.fib.j jVar = new com.byazt.fib.j(lVar, lVar.getContext(), this.hp.s(), this.hp.e(), this.hp.k(), this.hp.sz(), map, true);
        jVar.l(this.hp.zy());
        jVar.hp(this.hp.jl(), i2);
        jVar.hp(this.hp.q());
        jVar.hp(this.hp.eb());
        jVar.hp(this.hp.gu());
        jVar.hp(this.hp.u());
        jVar.hp(this.hp.u_());
        return jVar;
    }

    private boolean hp(Map<String, Object> map) {
        if (com.byazt.rj.jx.hp(this.hp, map) == null || this.hp.getContext() == null) {
            return false;
        }
        if (TextUtils.isEmpty(this.hp.k())) {
            com.byazt.xci.w wVarV = this.hp.v();
            if (wVarV != null) {
                this.hp.hp(wVarV.l());
            }
            if (TextUtils.isEmpty(this.hp.k())) {
                return false;
            }
        }
        return (TextUtils.isEmpty(this.hp.s()) || this.hp.e() == null) ? false : true;
    }
}

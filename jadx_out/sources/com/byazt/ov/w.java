package com.byazt.ov;

import android.view.View;
import com.byazt.gg.a;
import com.byazt.gg.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 707, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {
    public w(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() {
        Object obj;
        Map<String, Object> map = this.f24188a;
        String strValueOf = (map == null || map.size() <= 0 || (obj = this.f24188a.get("name")) == null) ? "" : String.valueOf(obj);
        com.byazt.xs.jx jxVar = this.jx;
        com.byazt.xs.jx jxVarL = jxVar.l(jxVar);
        if (jxVarL == null) {
            return;
        }
        hp(jxVarL, strValueOf);
    }

    @Override // com.byazt.ov.hp
    public void l() {
    }

    private void hp(com.byazt.xs.jx jxVar, String str) {
        List<com.byazt.xs.jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        q qVarEa = jxVar.ea();
        if (qVarEa != null) {
            qVarEa.hp(str);
        }
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next(), str);
        }
    }
}

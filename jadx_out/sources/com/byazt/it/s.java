package com.byazt.it;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.gg.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 836, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s extends l implements eb {
    public String gu;
    public String jl;

    public s(Context context) {
        super(context);
    }

    private void l(com.byazt.xs.jx jxVar) {
        List<com.byazt.xs.jx<View>> listEb;
        List<l> listL;
        if (jxVar == null) {
            return;
        }
        com.byazt.gg.q qVarEa = jxVar.ea();
        if (qVarEa != null && (listL = qVarEa.l("timer")) != null && !listL.isEmpty()) {
            for (l lVar : listL) {
                if (lVar instanceof a) {
                    a aVar = (a) lVar;
                    if (TextUtils.isEmpty(this.gu) || TextUtils.equals(this.gu, aVar.l())) {
                        aVar.hp(this);
                    }
                }
            }
        }
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            l(it.next());
        }
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        Map<String, Object> map = this.f21226w;
        if (map != null && !map.isEmpty()) {
            Object obj = this.f21226w.get("name");
            if (obj != null) {
                this.gu = String.valueOf(obj);
            }
            Object obj2 = this.f21226w.get("state");
            if (obj2 != null) {
                this.jl = String.valueOf(obj2);
            }
        }
        com.byazt.xs.jx jxVar = this.f21223l;
        com.byazt.xs.jx jxVarL = jxVar.l(jxVar);
        if (jxVarL == null) {
            return false;
        }
        l(jxVarL);
        return false;
    }

    @Override // com.byazt.it.eb
    public void hp(String str) {
        gu guVar;
        if (TextUtils.equals(this.jl, "start") || TextUtils.isEmpty(this.jl)) {
            if ((TextUtils.isEmpty(this.gu) || TextUtils.equals(this.gu, str)) && (guVar = this.hp) != null) {
                guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
            }
        }
    }

    @Override // com.byazt.it.eb
    public void l(String str) {
        gu guVar;
        if (TextUtils.equals(this.jl, "complete") || TextUtils.isEmpty(this.jl)) {
            if ((TextUtils.isEmpty(this.gu) || TextUtils.equals(this.gu, str)) && (guVar = this.hp) != null) {
                guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
            }
        }
    }
}

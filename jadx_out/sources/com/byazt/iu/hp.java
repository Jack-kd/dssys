package com.byazt.iu;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_COST, 28})
/* loaded from: classes.dex */
public class hp {
    public List<jx> hp = new ArrayList();

    public List<jx> hp() {
        return this.hp;
    }

    public void hp(Set<String> set) {
        ArrayList arrayList = new ArrayList();
        for (jx jxVar : this.hp) {
            if (!set.contains(jxVar.jl())) {
                arrayList.add(jxVar);
            }
        }
        this.hp = arrayList;
    }

    public void hp(List<jx> list) {
        this.hp = list;
    }
}

package com.byazt.tb;

import com.byazt.gy.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.gj.l {
    public List<com.byazt.hwo.l> hp = new CopyOnWriteArrayList();

    @Override // com.byazt.gj.l
    public void j(com.byazt.kf.l lVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.l lVar2 = new com.byazt.hwo.l("ad_load", "loaded", sVar != null ? sVar.hp() : System.currentTimeMillis(), lVar.jx ? 1 : 2);
        this.hp.add(lVar2);
        com.byazt.hwo.jx.hp(lVar2, lVar.f20629q, lVar);
        Iterator<String> it = lVar.f22026w.iterator();
        while (it.hasNext()) {
            ((com.byazt.kt.jx) com.byazt.gy.w.hp(1)).hp(it.next(), new j.hp() { // from class: com.byazt.tb.jx.1
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar3) {
                    if (lVar3 instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar3).f22020a.addAll(0, jx.this.hp);
                    }
                }
            });
        }
    }

    @Override // com.byazt.gj.l
    public void jx(com.byazt.kf.l lVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.l lVar2 = new com.byazt.hwo.l("ad_load", "received", sVar != null ? sVar.hp() : System.currentTimeMillis(), lVar.f22025l ? 1 : 2);
        this.hp.add(lVar2);
        com.byazt.hwo.jx.hp(lVar2, lVar.f20629q, lVar);
    }

    @Override // com.byazt.gj.l
    public void l(com.byazt.kf.l lVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar2 = new com.byazt.hwo.l("ad_load", "reqed", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.hp.add(lVar2);
        com.byazt.hwo.jx.hp(lVar2, lVar.f20629q, lVar);
    }

    @Override // com.byazt.gj.l
    public void hp(com.byazt.kf.l lVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar2 = new com.byazt.hwo.l("ad_load", "started", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.hp.add(lVar2);
        com.byazt.hwo.jx.hp(lVar2, lVar.f20629q, lVar);
    }
}

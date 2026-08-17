package com.byazt.qfg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 28})
/* loaded from: classes3.dex */
public class hp {
    public com.byazt.mu.l hp;

    public void hp(com.byazt.mu.l lVar) {
        this.hp = lVar;
    }

    public boolean jx() {
        return this.hp == null;
    }

    public void l() {
        com.byazt.mu.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp();
        }
    }

    public void hp() {
        com.byazt.mu.l lVar = this.hp;
        if (lVar != null) {
            lVar.l();
            this.hp = null;
        }
    }

    public void hp(com.byazt.qt.l lVar) {
        com.byazt.mu.l lVar2 = this.hp;
        if (lVar2 != null) {
            lVar2.hp(lVar);
        }
    }
}

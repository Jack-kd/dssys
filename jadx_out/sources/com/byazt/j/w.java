package com.byazt.j;

import com.byazt.ei.hp;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 38, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements hp.InterfaceC0218hp {
    public long hp;

    @com.byazt.kj.hp(hp = {0, 1, 38, 8})
    public static class hp {
        public static w hp = new w();
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void jx() {
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void l() {
        this.hp = System.currentTimeMillis();
    }

    private w() {
        this.hp = 0L;
        com.byazt.ei.hp.hp().hp(this);
    }

    public static w hp() {
        return hp.hp;
    }

    public void l(j jVar) {
        if (jVar == null) {
            return;
        }
        hp(jVar, jl.q().optInt("check_an_result_delay", 1200) > 0 ? r0 : 1200);
    }

    public void hp(final j jVar, final long j2) {
        if (jVar == null) {
            return;
        }
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.j.w.1
            @Override // java.lang.Runnable
            public void run() {
                if (!com.byazt.ei.hp.hp().jx() || System.currentTimeMillis() - w.this.hp <= j2) {
                    jVar.hp(true);
                } else {
                    jVar.hp(false);
                }
            }
        }, j2);
    }

    public void hp(j jVar) {
        hp(jVar, 5000L);
    }
}
